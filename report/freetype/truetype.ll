Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@TT_RunIns:bb.a
  %i.arf = load i64, ptr %i.are, align 8, !tbaa !257
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  %i.arh = load i64, ptr %i.arg, align 8, !tbaa !257
  %i.ari = sub i64 %i.arf, %i.arh
  %i.arj = call i64 %i.aqx(ptr noundef nonnull %0, i64 noundef %i.ard, i64 noundef %i.ari) #21, !inline_history !575 ; 2 uses
  %i.ark = load i64, ptr %i.ar, align 8, !tbaa !248
  %i.arl = mul i64 %i.ark, %i.arj                 ; 2 uses
  %i.arm = ashr i64 %i.arl, 63
  %i.arn = add i64 %i.arl, 32768
  %i.aro = add i64 %i.arn, %i.arm
  %i.arp = ashr i64 %i.aro, 16
  %i.arq = load i64, ptr %i.as, align 8, !tbaa !249
  %i.arr = mul i64 %i.arq, %i.arj                 ; 2 uses
  %i.ars = ashr i64 %i.arr, 63
  %i.art = add i64 %i.arr, 32768
  %i.aru = add i64 %i.art, %i.ars
  %i.arv = ashr i64 %i.aru, 16
  %i.arw = icmp eq i32 %i.aqr, 0
  br i1 %i.arw, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.arx = load ptr, ptr %i.ct, align 8, !tbaa !634
  %i.ary = and i64 %.val320, 65535
  %i.arz = getelementptr [2 x i8], ptr %i.arx, i64 %i.ary
  %i.asa = getelementptr i8, ptr %i.arz, i64 -2
  %i.asb = load i16, ptr %i.asa, align 2, !tbaa !128
  %i.asc = add i16 %i.asb, 1
  %i.asd = load i16, ptr %i.cu, align 8, !tbaa !635
  %i.ase = sub i16 %i.asc, %i.asd
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %.025.i = phi i16 [ %i.ase, %bb.io ], [ 0, %bb.in ] ; 2 uses
  %i.asf = load i16, ptr %i.cd, align 2, !tbaa !622
  %i.asg = icmp eq i16 %i.asf, 0
  br i1 %i.asg, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.ash = load i16, ptr %i.ae, align 8, !tbaa !617
  br label %bb.is

bb.ir:                                            ; preds = %bb.ip
  %i.asi = load ptr, ptr %i.ct, align 8, !tbaa !634
  %i.asj = and i64 %.val320, 65535
  %i.ask = getelementptr inbounds nuw [2 x i8], ptr %i.asi, i64 %i.asj
  %i.asl = load i16, ptr %i.ask, align 2, !tbaa !128
  %i.asm = add i16 %i.asl, 1
  %i.asn = load i16, ptr %i.cu, align 8, !tbaa !635
  %i.aso = sub i16 %i.asm, %i.asn
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.024.i = phi i16 [ %i.ash, %bb.iq ], [ %i.aso, %bb.ir ] ; 2 uses
  %i.asp = icmp ult i16 %.025.i, %.024.i
  br i1 %i.asp, label %.lr.ph.i451, label %Ins_SPVTL.exitthread-pre-split

.lr.ph.i451:                                      ; preds = %bb.is
  %i.asq = zext i16 %.025.i to i64
  %wide.trip.count.i = zext i16 %.024.i to i64
  br label %bb.it

bb.it:                                            ; preds = %Move_Zp2_Point.exit.i458, %.lr.ph.i451
  %indvars.iv.i452 = phi i64 [ %i.asq, %.lr.ph.i451 ], [ %indvars.iv.next.i459, %Move_Zp2_Point.exit.i458 ] ; 6 uses
  %i.asr = load ptr, ptr %i.al, align 8, !tbaa !618 ; 2 uses
  %.not29.i453 = icmp eq ptr %.sroa.8.0.copyload19.i.i444, %i.asr
  %.not30.i = icmp eq i64 %indvars.iv.i452, %i.aqy
  %or.cond.i454 = and i1 %.not30.i, %.not29.i453
  br i1 %or.cond.i454, label %Move_Zp2_Point.exit.i458, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.ass = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not.i32.i = icmp eq i16 %i.ass, 0
  br i1 %.not.i32.i, label %bb.iy, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ast = load i32, ptr %i.u, align 4, !tbaa !215
  %.not19.i.i455 = icmp eq i32 %i.ast, 0
  br i1 %.not19.i.i455, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.asu = getelementptr inbounds nuw [16 x i8], ptr %i.asr, i64 %indvars.iv.i452 ; 2 uses
  %i.asv = load i64, ptr %i.asu, align 8, !tbaa !230
  %i.asw = add i64 %i.asv, %i.arp
  store i64 %i.asw, ptr %i.asu, align 8, !tbaa !230
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %i.asx = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 %indvars.iv.i452 ; 2 uses
  %i.asz = load i8, ptr %i.asy, align 1, !tbaa !186
  %i.ata = or i8 %i.asz, 8
  store i8 %i.ata, ptr %i.asy, align 1, !tbaa !186
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iu
  %i.atb = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not21.i.i456 = icmp eq i16 %i.atb, 0
  br i1 %.not21.i.i456, label %Move_Zp2_Point.exit.i458, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.atc = load i32, ptr %i.u, align 4, !tbaa !215
  %.not22.i.i457 = icmp eq i32 %i.atc, 7
  br i1 %.not22.i.i457, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.atd = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.ate = getelementptr inbounds nuw [16 x i8], ptr %i.atd, i64 %indvars.iv.i452
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 8 ; 2 uses
  %i.atg = load i64, ptr %i.atf, align 8, !tbaa !257
  %i.ath = add i64 %i.atg, %i.arv
  store i64 %i.ath, ptr %i.atf, align 8, !tbaa !257
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.ati = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 %indvars.iv.i452 ; 2 uses
  %i.atk = load i8, ptr %i.atj, align 1, !tbaa !186
  %i.atl = or i8 %i.atk, 16
  store i8 %i.atl, ptr %i.atj, align 1, !tbaa !186
  br label %Move_Zp2_Point.exit.i458

Move_Zp2_Point.exit.i458:                         ; preds = %bb.jb, %bb.iy, %bb.it
  %indvars.iv.next.i459 = add nuw nsw i64 %indvars.iv.i452, 1 ; 2 uses
  %exitcond.not.i460 = icmp eq i64 %indvars.iv.next.i459, %wide.trip.count.i
  br i1 %exitcond.not.i460, label %Ins_SPVTL.exitthread-pre-split, label %bb.it, !llvm.loop !576

bb.jc:                                            ; preds = %bb.f, %bb.f
  %.val321 = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.atm = and i64 %.val321, 4294967294
  %.not.i461 = icmp eq i64 %i.atm, 0
  br i1 %.not.i461, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.atn = load i8, ptr %i.i, align 2, !tbaa !163
  %.not24.i462 = icmp eq i8 %i.atn, 0
  br i1 %.not24.i462, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.je:                                            ; preds = %bb.jc
  %i.ato = and i8 %i.dy, 1
  %.not.i.i464 = icmp eq i8 %i.ato, 0             ; 4 uses
  %..i.i465 = select i1 %.not.i.i464, i64 136, i64 80
  %.53.i.i466 = select i1 %.not.i.i464, i64 152, i64 96
  %.55.i.i467 = select i1 %.not.i.i464, i64 468, i64 466
  %i.atp = getelementptr inbounds nuw i8, ptr %0, i64 %..i.i465
  %.sroa.0.0.copyload8.i.i468 = load i16, ptr %i.atp, align 8, !tbaa !128
  %.sroa.8.0..sroa_idx18.i.i469 = getelementptr inbounds nuw i8, ptr %0, i64 %.53.i.i466
  %.sroa.8.0.copyload19.i.i470 = load ptr, ptr %.sroa.8.0..sroa_idx18.i.i469, align 8, !tbaa !197 ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %0, i64 %.55.i.i467
  %.0.i.i471 = load i16, ptr %i.atq, align 2, !tbaa !128 ; 2 uses
  %.not43.i.i472 = icmp ult i16 %.0.i.i471, %.sroa.0.0.copyload8.i.i468
  br i1 %.not43.i.i472, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.atr = load i8, ptr %i.i, align 2, !tbaa !163
  %.not44.i.i473 = icmp eq i8 %i.atr, 0
  br i1 %.not44.i.i473, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.jg:                                            ; preds = %bb.je
  %.52.i.i474 = select i1 %.not.i.i464, i64 144, i64 88
  %.sroa.612.0..sroa_idx13.i.i475 = getelementptr inbounds nuw i8, ptr %0, i64 %.52.i.i474
  %.sroa.612.0.copyload14.i.i476 = load ptr, ptr %.sroa.612.0..sroa_idx13.i.i475, align 8, !tbaa !197
  %i.ats = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.att = zext i16 %.0.i.i471 to i64             ; 3 uses
  %i.atu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload19.i.i470, i64 %i.att ; 2 uses
  %i.atv = load i64, ptr %i.atu, align 8, !tbaa !230
  %i.atw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.612.0.copyload14.i.i476, i64 %i.att ; 2 uses
  %i.atx = load i64, ptr %i.atw, align 8, !tbaa !230
  %i.aty = sub i64 %i.atv, %i.atx
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atu, i64 8
  %i.aua = load i64, ptr %i.atz, align 8, !tbaa !257
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atw, i64 8
  %i.auc = load i64, ptr %i.aub, align 8, !tbaa !257
  %i.aud = sub i64 %i.aua, %i.auc
  %i.aue = call i64 %i.ats(ptr noundef nonnull %0, i64 noundef %i.aty, i64 noundef %i.aud) #21, !inline_history !577
  %i.auf = load <2 x i64>, ptr %i.ar, align 8, !tbaa !185
  %i.aug = insertelement <2 x i64> poison, i64 %i.aue, i64 0
  %i.auh = shufflevector <2 x i64> %i.aug, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aui = mul <2 x i64> %i.auf, %i.auh           ; 2 uses
  %i.auj = ashr <2 x i64> %i.aui, splat (i64 63)
  %i.auk = add <2 x i64> %i.aui, splat (i64 32768)
  %i.aul = add <2 x i64> %i.auk, %i.auj
  %i.aum = ashr <2 x i64> %i.aul, splat (i64 16)  ; 8 uses
  %i.aun = load i16, ptr %i.cd, align 2, !tbaa !622
  switch i16 %i.aun, label %Ins_SPVTL.exitthread-pre-split [
    i16 0, label %bb.jh
    i16 1, label %bb.ji
  ]

bb.jh:                                            ; preds = %bb.jg
  %i.auo = load i16, ptr %i.ae, align 8, !tbaa !617
  br label %bb.jk

bb.ji:                                            ; preds = %bb.jg
  %i.aup = load i16, ptr %i.cs, align 2, !tbaa !633 ; 2 uses
  %.not21.i477 = icmp eq i16 %i.aup, 0
  br i1 %.not21.i477, label %Ins_SPVTL.exitthread-pre-split, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.auq = zext i16 %i.aup to i64
  %i.aur = load ptr, ptr %i.ct, align 8, !tbaa !634
  %8 = add nuw nsw i64 %i.auq, 4294967295
  %9 = and i64 %8, 4294967295
  %10 = getelementptr inbounds nuw [2 x i8], ptr %i.aur, i64 %9
  %i.aus = load i16, ptr %10, align 2, !tbaa !128
  %i.aut = add i16 %i.aus, 1
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.jh
  %.016.i = phi i16 [ %i.auo, %bb.jh ], [ %i.aut, %bb.jj ] ; 10 uses
  %.not18.i = icmp eq i16 %.016.i, 0
  br i1 %.not18.i, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.i478

.lr.ph.i478:                                      ; preds = %bb.jk
  %i.auu = load ptr, ptr %i.al, align 8, !tbaa !618 ; 21 uses
  %.not22.i479 = icmp eq ptr %.sroa.8.0.copyload19.i.i470, %i.auu
  %.not22.fr.i = freeze i1 %.not22.i479
  br i1 %.not22.fr.i, label %.lr.ph.split.preheader.i, label %.lr.ph.split.us.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i478
  %wide.trip.count48.i = zext i16 %.016.i to i64
  %i.auv = extractelement <2 x i64> %i.aum, i64 0
  %i.auw = extractelement <2 x i64> %i.aum, i64 1
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i478
  %i.aux = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not.i25.us.i = icmp eq i16 %i.aux, 0
  %i.auy = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not21.i.us.i = icmp eq i16 %i.auy, 0          ; 2 uses
  br i1 %.not.i25.us.i, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  br i1 %.not21.i.us.i, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.split.us.split.us.split.i

.lr.ph.split.us.split.us.split.i:                 ; preds = %.lr.ph.split.us.split.us.i
  %i.auz = load i32, ptr %i.u, align 4, !tbaa !215
  %.not22.i.us.us.i = icmp eq i32 %i.auz, 7
  br i1 %.not22.i.us.us.i, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.us.preheader.i

Move_Zp2_Point.exit.us.us.preheader.i:            ; preds = %.lr.ph.split.us.split.us.split.i
  %wide.trip.count43.i = zext i16 %.016.i to i64  ; 2 uses
  %i.ava = extractelement <2 x i64> %i.aum, i64 1 ; 5 uses
  %xtraiter1414 = and i64 %wide.trip.count43.i, 3 ; 3 uses
  %i.avb = icmp ult i16 %.016.i, 4
  br i1 %i.avb, label %Move_Zp2_Point.exit.us.us.i.epil.preheader, label %Move_Zp2_Point.exit.us.us.preheader.i.new

Move_Zp2_Point.exit.us.us.preheader.i.new:        ; preds = %Move_Zp2_Point.exit.us.us.preheader.i
  %unroll_iter1418 = and i64 %wide.trip.count43.i, 65532
  br label %Move_Zp2_Point.exit.us.us.i

Move_Zp2_Point.exit.us.us.i:                      ; preds = %Move_Zp2_Point.exit.us.us.i, %Move_Zp2_Point.exit.us.us.preheader.i.new
  %indvars.iv40.i = phi i64 [ 0, %Move_Zp2_Point.exit.us.us.preheader.i.new ], [ %indvars.iv.next41.i.3, %Move_Zp2_Point.exit.us.us.i ] ; 5 uses
  %niter1419 = phi i64 [ 0, %Move_Zp2_Point.exit.us.us.preheader.i.new ], [ %niter1419.next.3, %Move_Zp2_Point.exit.us.us.i ]
  %i.avc = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv40.i
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 8 ; 2 uses
  %i.ave = load i64, ptr %i.avd, align 8, !tbaa !257
  %i.avf = add i64 %i.ave, %i.ava
  store i64 %i.avf, ptr %i.avd, align 8, !tbaa !257
  %i.avg = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv40.i
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 24 ; 2 uses
  %i.avi = load i64, ptr %i.avh, align 8, !tbaa !257
  %i.avj = add i64 %i.avi, %i.ava
  store i64 %i.avj, ptr %i.avh, align 8, !tbaa !257
  %i.avk = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv40.i
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 40 ; 2 uses
  %i.avm = load i64, ptr %i.avl, align 8, !tbaa !257
  %i.avn = add i64 %i.avm, %i.ava
  store i64 %i.avn, ptr %i.avl, align 8, !tbaa !257
  %i.avo = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv40.i
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 56 ; 2 uses
  %i.avq = load i64, ptr %i.avp, align 8, !tbaa !257
  %i.avr = add i64 %i.avq, %i.ava
  store i64 %i.avr, ptr %i.avp, align 8, !tbaa !257
  %indvars.iv.next41.i.3 = add nuw nsw i64 %indvars.iv40.i, 4 ; 2 uses
  %niter1419.next.3 = add i64 %niter1419, 4       ; 2 uses
  %niter1419.ncmp.3 = icmp eq i64 %niter1419.next.3, %unroll_iter1418
  br i1 %niter1419.ncmp.3, label %Ins_SPVTL.exitthread-pre-split.loopexit1342.unr-lcssa, label %Move_Zp2_Point.exit.us.us.i, !llvm.loop !578

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  %i.avs = load i32, ptr %i.u, align 4, !tbaa !215 ; 2 uses
  %.not19.i.us.i = icmp eq i32 %i.avs, 0          ; 2 uses
  br i1 %.not21.i.us.i, label %.lr.ph.split.us.split.split.us.i, label %.lr.ph.split.us.split.split.i

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.i
  br i1 %.not19.i.us.i, label %Move_Zp2_Point.exit.us.us14.preheader.i, label %Ins_SPVTL.exitthread-pre-split

Move_Zp2_Point.exit.us.us14.preheader.i:          ; preds = %.lr.ph.split.us.split.split.us.i
  %wide.trip.count38.i = zext i16 %.016.i to i64  ; 2 uses
  %i.avt = extractelement <2 x i64> %i.aum, i64 0 ; 5 uses
  %xtraiter1408 = and i64 %wide.trip.count38.i, 3 ; 3 uses
  %i.avu = icmp ult i16 %.016.i, 4
  br i1 %i.avu, label %Move_Zp2_Point.exit.us.us14.i.epil.preheader, label %Move_Zp2_Point.exit.us.us14.preheader.i.new

Move_Zp2_Point.exit.us.us14.preheader.i.new:      ; preds = %Move_Zp2_Point.exit.us.us14.preheader.i
  %unroll_iter1412 = and i64 %wide.trip.count38.i, 65532
  br label %Move_Zp2_Point.exit.us.us14.i

Move_Zp2_Point.exit.us.us14.i:                    ; preds = %Move_Zp2_Point.exit.us.us14.i, %Move_Zp2_Point.exit.us.us14.preheader.i.new
  %indvars.iv35.i = phi i64 [ 0, %Move_Zp2_Point.exit.us.us14.preheader.i.new ], [ %indvars.iv.next36.i.3, %Move_Zp2_Point.exit.us.us14.i ] ; 5 uses
  %niter1413 = phi i64 [ 0, %Move_Zp2_Point.exit.us.us14.preheader.i.new ], [ %niter1413.next.3, %Move_Zp2_Point.exit.us.us14.i ]
  %i.avv = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv35.i ; 2 uses
  %i.avw = load i64, ptr %i.avv, align 8, !tbaa !230
  %i.avx = add i64 %i.avw, %i.avt
  store i64 %i.avx, ptr %i.avv, align 8, !tbaa !230
  %i.avy = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv35.i
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 16 ; 2 uses
  %i.awa = load i64, ptr %i.avz, align 8, !tbaa !230
  %i.awb = add i64 %i.awa, %i.avt
  store i64 %i.awb, ptr %i.avz, align 8, !tbaa !230
  %i.awc = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv35.i
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 32 ; 2 uses
  %i.awe = load i64, ptr %i.awd, align 8, !tbaa !230
  %i.awf = add i64 %i.awe, %i.avt
  store i64 %i.awf, ptr %i.awd, align 8, !tbaa !230
  %i.awg = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv35.i
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 48 ; 2 uses
  %i.awi = load i64, ptr %i.awh, align 8, !tbaa !230
  %i.awj = add i64 %i.awi, %i.avt
  store i64 %i.awj, ptr %i.awh, align 8, !tbaa !230
  %indvars.iv.next36.i.3 = add nuw nsw i64 %indvars.iv35.i, 4 ; 2 uses
  %niter1413.next.3 = add i64 %niter1413, 4       ; 2 uses
  %niter1413.ncmp.3 = icmp eq i64 %niter1413.next.3, %unroll_iter1412
  br i1 %niter1413.ncmp.3, label %Ins_SPVTL.exitthread-pre-split.loopexit1343.unr-lcssa, label %Move_Zp2_Point.exit.us.us14.i, !llvm.loop !578

.lr.ph.split.us.split.split.i:                    ; preds = %.lr.ph.split.us.split.i
  br i1 %.not19.i.us.i, label %Move_Zp2_Point.exit.us.us16.preheader.i, label %.lr.ph.split.us.split.split.split.i

Move_Zp2_Point.exit.us.us16.preheader.i:          ; preds = %.lr.ph.split.us.split.split.i
  %wide.trip.count28.i = zext i16 %.016.i to i64  ; 3 uses
  %min.iters.check = icmp ult i16 %.016.i, 4
  br i1 %min.iters.check, label %Move_Zp2_Point.exit.us.us16.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %Move_Zp2_Point.exit.us.us16.preheader.i
  %n.vec = and i64 %wide.trip.count28.i, 65534    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.awk = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %index ; 2 uses
  %i.awl = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %index
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.awk, align 8
  %wide.load1314 = load <2 x i64>, ptr %i.awm, align 8
  %i.awn = add <2 x i64> %wide.load, %i.aum
  %i.awo = add <2 x i64> %wide.load1314, %i.aum
  store <2 x i64> %i.awn, ptr %i.awk, align 8
  store <2 x i64> %i.awo, ptr %i.awm, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.awp = icmp eq i64 %index.next, %n.vec
  br i1 %i.awp, label %middle.block, label %vector.body, !llvm.loop !579

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count28.i
  br i1 %cmp.n, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.us16.i.preheader

Move_Zp2_Point.exit.us.us16.i.preheader:          ; preds = %Move_Zp2_Point.exit.us.us16.preheader.i, %middle.block
  %indvars.iv25.i.ph = phi i64 [ 0, %Move_Zp2_Point.exit.us.us16.preheader.i ], [ %n.vec, %middle.block ]
  br label %Move_Zp2_Point.exit.us.us16.i

Move_Zp2_Point.exit.us.us16.i:                    ; preds = %Move_Zp2_Point.exit.us.us16.i.preheader, %Move_Zp2_Point.exit.us.us16.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %Move_Zp2_Point.exit.us.us16.i ], [ %indvars.iv25.i.ph, %Move_Zp2_Point.exit.us.us16.i.preheader ] ; 2 uses
  %i.awq = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv25.i ; 2 uses
  %i.awr = load <2 x i64>, ptr %i.awq, align 8, !tbaa !185
  %i.aws = add <2 x i64> %i.awr, %i.aum
  store <2 x i64> %i.aws, ptr %i.awq, align 8, !tbaa !185
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.us16.i, !llvm.loop !580

.lr.ph.split.us.split.split.split.i:              ; preds = %.lr.ph.split.us.split.split.i
  %.not22.i.us.i = icmp eq i32 %i.avs, 7
  br i1 %.not22.i.us.i, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.preheader.i

Move_Zp2_Point.exit.us.preheader.i:               ; preds = %.lr.ph.split.us.split.split.split.i
  %wide.trip.count.i480 = zext i16 %.016.i to i64 ; 2 uses
  %i.awt = extractelement <2 x i64> %i.aum, i64 1 ; 5 uses
  %xtraiter1402 = and i64 %wide.trip.count.i480, 3 ; 3 uses
  %i.awu = icmp ult i16 %.016.i, 4
  br i1 %i.awu, label %Move_Zp2_Point.exit.us.i.epil.preheader, label %Move_Zp2_Point.exit.us.preheader.i.new

Move_Zp2_Point.exit.us.preheader.i.new:           ; preds = %Move_Zp2_Point.exit.us.preheader.i
  %unroll_iter1406 = and i64 %wide.trip.count.i480, 65532
  br label %Move_Zp2_Point.exit.us.i

Move_Zp2_Point.exit.us.i:                         ; preds = %Move_Zp2_Point.exit.us.i, %Move_Zp2_Point.exit.us.preheader.i.new
  %indvars.iv.i481 = phi i64 [ 0, %Move_Zp2_Point.exit.us.preheader.i.new ], [ %indvars.iv.next.i482.3, %Move_Zp2_Point.exit.us.i ] ; 5 uses
  %niter1407 = phi i64 [ 0, %Move_Zp2_Point.exit.us.preheader.i.new ], [ %niter1407.next.3, %Move_Zp2_Point.exit.us.i ]
  %i.awv = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv.i481
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 8 ; 2 uses
  %i.awx = load i64, ptr %i.aww, align 8, !tbaa !257
  %i.awy = add i64 %i.awx, %i.awt
  store i64 %i.awy, ptr %i.aww, align 8, !tbaa !257
  %i.awz = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv.i481
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 24 ; 2 uses
  %i.axb = load i64, ptr %i.axa, align 8, !tbaa !257
  %i.axc = add i64 %i.axb, %i.awt
  store i64 %i.axc, ptr %i.axa, align 8, !tbaa !257
  %i.axd = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv.i481
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 40 ; 2 uses
  %i.axf = load i64, ptr %i.axe, align 8, !tbaa !257
  %i.axg = add i64 %i.axf, %i.awt
  store i64 %i.axg, ptr %i.axe, align 8, !tbaa !257
  %i.axh = getelementptr inbounds nuw [16 x i8], ptr %i.auu, i64 %indvars.iv.i481
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 56 ; 2 uses
end_hunk_0
begin_hunk_1_@TT_Load_Simple_Glyph:bb.a
  br label %.lr.ph245.preheader

.lr.ph245.preheader:                              ; preds = %._crit_edge238, %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !442 ; 3 uses
  %.idx255 = shl nuw nsw i64 %i.ci, 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx255 ; 2 uses
  br label %.lr.ph245

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %bb.x
  %.0150243 = phi i64 [ %i.ea, %bb.x ], [ 0, %.lr.ph245.preheader ]
  %.0152242 = phi ptr [ %i.eb, %bb.x ], [ %i.de, %.lr.ph245.preheader ] ; 2 uses
  %.3241 = phi ptr [ %i.ec, %bb.x ], [ %.pre.pre, %.lr.ph245.preheader ] ; 2 uses
  %.3161240 = phi ptr [ %.4162, %bb.x ], [ %.2160, %.lr.ph245.preheader ] ; 6 uses
  %i.dg = load i8, ptr %.3241, align 1, !tbaa !186
  %i.dh = zext i8 %i.dg to i32                    ; 3 uses
  %i.di = and i32 %i.dh, 2
  %.not192 = icmp eq i32 %i.di, 0
  br i1 %.not192, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph245
  %i.dj = getelementptr inbounds nuw i8, ptr %.3161240, i64 1 ; 2 uses
  %i.dk = icmp ugt ptr %i.dj, %i.e
  br i1 %i.dk, label %.thread208, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dl = load i8, ptr %.3161240, align 1, !tbaa !186
  %i.dm = zext i8 %i.dl to i64                    ; 2 uses
  %i.dn = and i32 %i.dh, 16
  %.not194 = icmp eq i32 %i.dn, 0
  %i.do = sub nsw i64 0, %i.dm
  %spec.select = select i1 %.not194, i64 %i.do, i64 %i.dm
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph245
  %i.dp = and i32 %i.dh, 16
  %.not193 = icmp eq i32 %i.dp, 0
  br i1 %.not193, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %.3161240, i64 2 ; 2 uses
  %i.dr = icmp ugt ptr %i.dq, %i.e
  br i1 %i.dr, label %.thread208, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = load i8, ptr %.3161240, align 1, !tbaa !186
  %i.dt = zext i8 %i.ds to i16
  %i.du = shl nuw i16 %i.dt, 8
  %i.dv = getelementptr inbounds nuw i8, ptr %.3161240, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !186
  %i.dx = zext i8 %i.dw to i16
  %i.dy = or disjoint i16 %i.du, %i.dx
  %i.dz = sext i16 %i.dy to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.u, %bb.w
  %.4162 = phi ptr [ %i.dj, %bb.t ], [ %i.dq, %bb.w ], [ %.3161240, %bb.u ] ; 2 uses
  %.0144 = phi i64 [ %spec.select, %bb.t ], [ %i.dz, %bb.w ], [ 0, %bb.u ]
  %i.ea = add nsw i64 %.0144, %.0150243           ; 2 uses
  store i64 %i.ea, ptr %.0152242, align 8, !tbaa !230
  %i.eb = getelementptr inbounds nuw i8, ptr %.0152242, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3241, i64 1
  %i.ed = icmp ult ptr %i.eb, %i.df
  br i1 %i.ed, label %.lr.ph245, label %.lr.ph251, !llvm.loop !902

.lr.ph251:                                        ; preds = %bb.x, %bb.ad
  %.0148250 = phi i64 [ %i.ey, %bb.ad ], [ 0, %bb.x ]
  %.1153249 = phi ptr [ %i.fb, %bb.ad ], [ %i.de, %bb.x ] ; 2 uses
  %.4248 = phi ptr [ %i.fc, %bb.ad ], [ %.pre.pre, %bb.x ] ; 3 uses
  %.6247 = phi ptr [ %.7, %bb.ad ], [ %.4162, %bb.x ] ; 6 uses
  %i.ee = load i8, ptr %.4248, align 1, !tbaa !186 ; 2 uses
  %i.ef = zext i8 %i.ee to i32                    ; 3 uses
  %i.eg = and i32 %i.ef, 4
  %.not189 = icmp eq i32 %i.eg, 0
  br i1 %.not189, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph251
  %i.eh = getelementptr inbounds nuw i8, ptr %.6247, i64 1 ; 2 uses
  %i.ei = icmp ugt ptr %i.eh, %i.e
  br i1 %i.ei, label %.thread208, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = load i8, ptr %.6247, align 1, !tbaa !186
  %i.ek = zext i8 %i.ej to i64                    ; 2 uses
  %i.el = and i32 %i.ef, 32
  %.not191 = icmp eq i32 %i.el, 0
  %i.em = sub nsw i64 0, %i.ek
  %spec.select198 = select i1 %.not191, i64 %i.em, i64 %i.ek
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph251
  %i.en = and i32 %i.ef, 32
  %.not190 = icmp eq i32 %i.en, 0
  br i1 %.not190, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %.6247, i64 2 ; 2 uses
  %i.ep = icmp ugt ptr %i.eo, %i.e
  br i1 %i.ep, label %.thread208, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eq = load i8, ptr %.6247, align 1, !tbaa !186
  %i.er = zext i8 %i.eq to i16
  %i.es = shl nuw i16 %i.er, 8
  %i.et = getelementptr inbounds nuw i8, ptr %.6247, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !186
  %i.ev = zext i8 %i.eu to i16
  %i.ew = or disjoint i16 %i.es, %i.ev
  %i.ex = sext i16 %i.ew to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.aa, %bb.ac
  %.7 = phi ptr [ %i.eh, %bb.z ], [ %i.eo, %bb.ac ], [ %.6247, %bb.aa ] ; 2 uses
  %.0 = phi i64 [ %spec.select198, %bb.z ], [ %i.ex, %bb.ac ], [ 0, %bb.aa ]
  %i.ey = add nsw i64 %.0, %.0148250              ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.1153249, i64 8
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !257
  %i.fa = and i8 %i.ee, 1
  store i8 %i.fa, ptr %.4248, align 1, !tbaa !186
  %i.fb = getelementptr inbounds nuw i8, ptr %.1153249, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.4248, i64 1
  %i.fd = icmp ult ptr %i.fb, %i.df
  br i1 %i.fd, label %.lr.ph251, label %._crit_edge252, !llvm.loop !903

._crit_edge252:                                   ; preds = %bb.ad, %.thread204
  %.6.lcssa = phi ptr [ %i.bp, %.thread204 ], [ %.7, %bb.ad ]
  %i.fe = trunc i32 %i.as to i16
  store i16 %i.fe, ptr %i.ax, align 2, !tbaa !440
  store i16 %i.j, ptr %i.h, align 8, !tbaa !441
  store ptr %.6.lcssa, ptr %i.b, align 8, !tbaa !476
  %.pre265 = load i32, ptr %i.a, align 4, !tbaa !152
  br label %.thread208

.thread208:                                       ; preds = %.lr.ph, %.lr.ph237, %bb.p, %bb.q, %bb.s, %bb.v, %bb.y, %bb.ab, %bb.d, %.thread, %bb.h, %._crit_edge252, %bb.c, %bb.g, %bb.m
  %.2165 = phi i32 [ %i.cf, %bb.m ], [ %i.be, %bb.g ], [ %i.v, %bb.c ], [ 22, %bb.h ], [ %.pre265, %._crit_edge252 ], [ 20, %bb.s ], [ 20, %.lr.ph237 ], [ 20, %.thread ], [ 20, %bb.y ], [ 20, %bb.d ], [ 20, %bb.ab ], [ 20, %bb.v ], [ 20, %bb.q ], [ 20, %bb.p ], [ 20, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.2165
}

; Function Attrs: nounwind uwtable
define internal i32 @TT_Load_Composite_Glyph(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !476
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !477  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !223  ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !140
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !457
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  br label %bb.b

bb.b:                                             ; preds = %bb.x, %bb.a
  %.0117 = phi ptr [ %i.b, %bb.a ], [ %.2, %bb.x ] ; 17 uses
  %.0113 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.x ]  ; 2 uses
  %i.k = add i32 %.0113, 1                        ; 3 uses
  %i.l = tail call i32 @FT_GlyphLoader_CheckSubGlyphs(ptr noundef %i.f, i32 noundef %i.k) #21 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0117, i64 4 ; 6 uses
  %i.n = icmp ugt ptr %i.m, %i.d
  br i1 %i.n, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !449
  %i.p = zext i32 %.0113 to i64
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.p ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !452
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  store i32 0, ptr %i.s, align 8, !tbaa !451
  %i.t = load i8, ptr %.0117, align 1, !tbaa !186
  %i.u = zext i8 %i.t to i16
  %i.v = shl nuw i16 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %.0117, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !186
  %i.y = zext i8 %i.x to i16                      ; 3 uses
  %i.z = or disjoint i16 %i.v, %i.y               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i16 %i.z, ptr %i.aa, align 4, !tbaa !453
  %i.ab = getelementptr inbounds nuw i8, ptr %.0117, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !186
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0117, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !186
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah            ; 2 uses
  store i32 %i.ai, ptr %i.q, align 8, !tbaa !454
  %i.aj = zext nneg i32 %i.ai to i64
  %.not121 = icmp sgt i64 %i.i, %i.aj
  br i1 %.not121, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ak = and i16 %i.y, 1
  %.not122 = icmp eq i16 %i.ak, 0
  %spec.select = select i1 %.not122, i32 2, i32 4 ; 3 uses
  %i.al = zext i16 %i.z to i32                    ; 7 uses
  %i.am = and i32 %i.al, 8
  %.not123 = icmp eq i32 %i.am, 0                 ; 2 uses
  br i1 %.not123, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %1 = add nuw nsw i32 %spec.select, 2
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.an = and i32 %i.al, 64
  %.not124 = icmp eq i32 %i.an, 0
  br i1 %.not124, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %2 = add nuw nsw i32 %spec.select, 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ao = lshr i32 %i.al, 4
  %i.ap = and i32 %i.ao, 8
  %spec.select133 = or disjoint i32 %i.ap, %spec.select
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.1 = phi i32 [ %1, %bb.f ], [ %2, %bb.h ], [ %spec.select133, %bb.i ]
  %3 = zext nneg i32 %.1 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 %3
  %i.ar = icmp ugt ptr %i.aq, %i.d
  br i1 %i.ar, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = and i32 %i.al, 2
  %.not126 = icmp eq i32 %i.as, 0
  %i.at = and i32 %i.al, 1
  %.not127 = icmp eq i32 %i.at, 0                 ; 2 uses
  br i1 %.not126, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not127, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %i.m, align 1, !tbaa !186
  %i.av = zext i8 %i.au to i16
  %i.aw = shl nuw i16 %i.av, 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0117, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !186
  %i.az = zext i8 %i.ay to i16
  %i.ba = or disjoint i16 %i.aw, %i.az
  %i.bb = sext i16 %i.ba to i32
  store i32 %i.bb, ptr %i.s, align 8, !tbaa !451
  %i.bc = getelementptr inbounds nuw i8, ptr %.0117, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0117, i64 6
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !186
  %i.bf = zext i8 %i.be to i16
  %i.bg = shl nuw i16 %i.bf, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.0117, i64 7
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !186
  %i.bj = zext i8 %i.bi to i16
  %i.bk = or disjoint i16 %i.bg, %i.bj
  %i.bl = sext i16 %i.bk to i32
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %.0117, i64 5
  %i.bn = load i8, ptr %i.m, align 1, !tbaa !186
  %i.bo = sext i8 %i.bn to i32
  store i32 %i.bo, ptr %i.s, align 8, !tbaa !451
  %i.bp = getelementptr inbounds nuw i8, ptr %.0117, i64 6
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !186
  %i.br = sext i8 %i.bq to i32
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  br i1 %.not127, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = load i8, ptr %i.m, align 1, !tbaa !186
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.0117, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !186
  %i.bx = zext i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bu, %i.bx
  store i32 %i.by, ptr %i.s, align 8, !tbaa !451
  %i.bz = getelementptr inbounds nuw i8, ptr %.0117, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0117, i64 6
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !186
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.0117, i64 7
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !186
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.cd, %i.cg
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %.0117, i64 5
  %i.cj = load i8, ptr %i.m, align 1, !tbaa !186
  %i.ck = zext i8 %i.cj to i32
  store i32 %i.ck, ptr %i.s, align 8, !tbaa !451
  %i.cl = getelementptr inbounds nuw i8, ptr %.0117, i64 6
  %i.cm = load i8, ptr %i.ci, align 1, !tbaa !186
  %i.cn = zext i8 %i.cm to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.m, %bb.n
  %.sink = phi i32 [ %i.ch, %bb.p ], [ %i.cn, %bb.q ], [ %i.bl, %bb.m ], [ %i.br, %bb.n ]
  %.1118 = phi ptr [ %i.bz, %bb.p ], [ %i.cl, %bb.q ], [ %i.bc, %bb.m ], [ %i.bp, %bb.n ] ; 18 uses
  store i32 %.sink, ptr %i.r, align 4, !tbaa !452
  br i1 %.not123, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %.1118, i64 2
  %i.cp = load i8, ptr %.1118, align 1, !tbaa !186
  %i.cq = zext i8 %i.cp to i16
  %i.cr = shl nuw i16 %i.cq, 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.1118, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !186
  %i.cu = zext i8 %i.ct to i16
  %i.cv = or disjoint i16 %i.cr, %i.cu
  %i.cw = sext i16 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 2                    ; 2 uses
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.cy = and i32 %i.al, 64
  %.not130 = icmp eq i32 %i.cy, 0
  br i1 %.not130, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load i8, ptr %.1118, align 1, !tbaa !186
  %i.da = zext i8 %i.cz to i16
  %i.db = shl nuw i16 %i.da, 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.1118, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !186
  %i.de = zext i8 %i.dd to i16
  %i.df = or disjoint i16 %i.db, %i.de
  %i.dg = sext i16 %i.df to i64
  %i.dh = shl nsw i64 %i.dg, 2
  %i.di = getelementptr inbounds nuw i8, ptr %.1118, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.1118, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !186
  %i.dl = zext i8 %i.dk to i16
  %i.dm = shl nuw i16 %i.dl, 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.1118, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !186
  %i.dp = zext i8 %i.do to i16
  %i.dq = or disjoint i16 %i.dm, %i.dp
  %i.dr = sext i16 %i.dq to i64
  %i.ds = shl nsw i64 %i.dr, 2
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.dt = and i32 %i.al, 128
  %.not131 = icmp eq i32 %i.dt, 0
  br i1 %.not131, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.du = load i8, ptr %.1118, align 1, !tbaa !186
  %i.dv = zext i8 %i.du to i16
  %i.dw = shl nuw i16 %i.dv, 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.1118, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !186
  %i.dz = zext i8 %i.dy to i16
  %i.ea = or disjoint i16 %i.dw, %i.dz
  %i.eb = sext i16 %i.ea to i64
  %i.ec = shl nsw i64 %i.eb, 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.1118, i64 2
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !186
  %i.ef = zext i8 %i.ee to i16
  %i.eg = shl nuw i16 %i.ef, 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.1118, i64 3
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !186
  %i.ej = zext i8 %i.ei to i16
  %i.ek = or disjoint i16 %i.eg, %i.ej
  %i.el = sext i16 %i.ek to i64
  %i.em = shl nsw i64 %i.el, 2
  %i.en = getelementptr inbounds nuw i8, ptr %.1118, i64 4
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !186
  %i.ep = zext i8 %i.eo to i16
  %i.eq = shl nuw i16 %i.ep, 8
  %i.er = getelementptr inbounds nuw i8, ptr %.1118, i64 5
  %i.es = load i8, ptr %i.er, align 1, !tbaa !186
  %i.et = zext i8 %i.es to i16
  %i.eu = or disjoint i16 %i.eq, %i.et
  %i.ev = sext i16 %i.eu to i64
  %i.ew = shl nsw i64 %i.ev, 2
  %i.ex = getelementptr inbounds nuw i8, ptr %.1118, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.1118, i64 6
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !186
  %i.fa = zext i8 %i.ez to i16
  %i.fb = shl nuw i16 %i.fa, 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.1118, i64 7
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !186
  %i.fe = zext i8 %i.fd to i16
  %i.ff = or disjoint i16 %i.fb, %i.fe
  %i.fg = sext i16 %i.ff to i64
  %i.fh = shl nsw i64 %i.fg, 2
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.v, %bb.w, %bb.u
  %.2 = phi ptr [ %i.co, %bb.s ], [ %i.di, %bb.u ], [ %i.ex, %bb.w ], [ %.1118, %bb.v ] ; 3 uses
  %.0112 = phi i64 [ %i.cx, %bb.s ], [ %i.dh, %bb.u ], [ %i.ec, %bb.w ], [ 65536, %bb.v ]
  %.0111 = phi i64 [ 0, %bb.s ], [ 0, %bb.u ], [ %i.ew, %bb.w ], [ 0, %bb.v ]
  %.0110 = phi i64 [ %i.cx, %bb.s ], [ %i.ds, %bb.u ], [ %i.fh, %bb.w ], [ 65536, %bb.v ]
  %.0109 = phi i64 [ 0, %bb.s ], [ 0, %bb.u ], [ %i.em, %bb.w ], [ 0, %bb.v ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.0112, ptr %i.fi, align 8, !tbaa !466
  %i.fj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.0111, ptr %i.fj, align 8, !tbaa !467
  %i.fk = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %.0109, ptr %i.fk, align 8, !tbaa !469
  %i.fl = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %.0110, ptr %i.fl, align 8, !tbaa !468
  %i.fm = and i16 %i.y, 32
  %.not132 = icmp eq i16 %i.fm, 0
  br i1 %.not132, label %bb.y, label %bb.b, !llvm.loop !906

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i32 %i.k, ptr %i.fn, align 8, !tbaa !446
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !143
  %i.fq = tail call i64 @FT_Stream_Pos(ptr noundef %i.fp) #21
  %i.fr = getelementptr inbounds nuw i8, ptr %.2, i64 %i.fq
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.d to i64
end_hunk_1
