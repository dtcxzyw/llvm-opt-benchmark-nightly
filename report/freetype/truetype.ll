inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@TT_RunIns:bb.a
bb.iv:                                            ; preds = %bb.iu
  %i.asr = load i32, ptr %i.u, align 4, !tbaa !264
  %.not19.i.i455 = icmp eq i32 %i.asr, 0
  br i1 %.not19.i.i455, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.ass = getelementptr inbounds nuw [16 x i8], ptr %i.asp, i64 %indvars.iv.i452 ; 2 uses
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !293
  %i.asu = add i64 %i.ast, %i.arn
  store i64 %i.asu, ptr %i.ass, align 8, !tbaa !293
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %i.asv = load ptr, ptr %i.cr, align 8, !tbaa !342
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 %indvars.iv.i452 ; 2 uses
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !227
  %i.asy = or i8 %i.asx, 8
  store i8 %i.asy, ptr %i.asw, align 1, !tbaa !227
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iu
  %i.asz = load i16, ptr %i.aq, align 2, !tbaa !325
  %.not21.i.i456 = icmp eq i16 %i.asz, 0
  br i1 %.not21.i.i456, label %Move_Zp2_Point.exit.i458, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ata = load i32, ptr %i.u, align 4, !tbaa !264
  %.not22.i.i457 = icmp eq i32 %i.ata, 7
  br i1 %.not22.i.i457, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.atb = load ptr, ptr %i.al, align 8, !tbaa !336
  %i.atc = getelementptr inbounds nuw [16 x i8], ptr %i.atb, i64 %indvars.iv.i452
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 8 ; 2 uses
  %i.ate = load i64, ptr %i.atd, align 8, !tbaa !337
  %i.atf = add i64 %i.ate, %i.art
  store i64 %i.atf, ptr %i.atd, align 8, !tbaa !337
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.atg = load ptr, ptr %i.cr, align 8, !tbaa !342
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 %indvars.iv.i452 ; 2 uses
  %i.ati = load i8, ptr %i.ath, align 1, !tbaa !227
  %i.atj = or i8 %i.ati, 16
  store i8 %i.atj, ptr %i.ath, align 1, !tbaa !227
  br label %Move_Zp2_Point.exit.i458

Move_Zp2_Point.exit.i458:                         ; preds = %bb.jb, %bb.iy, %bb.it
  %indvars.iv.next.i459 = add nuw nsw i64 %indvars.iv.i452, 1 ; 2 uses
  %exitcond.not.i460 = icmp eq i64 %indvars.iv.next.i459, %wide.trip.count.i
  br i1 %exitcond.not.i460, label %Ins_SPVTL.exitthread-pre-split, label %bb.it, !llvm.loop !409

bb.jc:                                            ; preds = %bb.f, %bb.f
  %.val321 = load i64, ptr %i.eu, align 8, !tbaa !226
  %i.atk = and i64 %.val321, 4294967294
  %.not.i461 = icmp eq i64 %i.atk, 0
  br i1 %.not.i461, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.atl = load i8, ptr %i.i, align 2, !tbaa !198
  %.not24.i462 = icmp eq i8 %i.atl, 0
  br i1 %.not24.i462, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.je:                                            ; preds = %bb.jc
  %i.atm = and i8 %i.dy, 1
  %.not.i.i464 = icmp eq i8 %i.atm, 0             ; 4 uses
  %..i.i465 = select i1 %.not.i.i464, i64 136, i64 80
  %.53.i.i466 = select i1 %.not.i.i464, i64 152, i64 96
  %.55.i.i467 = select i1 %.not.i.i464, i64 468, i64 466
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 %..i.i465
  %.sroa.0.0.copyload8.i.i468 = load i16, ptr %i.atn, align 8, !tbaa !155
  %.sroa.8.0..sroa_idx18.i.i469 = getelementptr inbounds nuw i8, ptr %0, i64 %.53.i.i466
  %.sroa.8.0.copyload19.i.i470 = load ptr, ptr %.sroa.8.0..sroa_idx18.i.i469, align 8, !tbaa !242 ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %0, i64 %.55.i.i467
  %.0.i.i471 = load i16, ptr %i.ato, align 2, !tbaa !155 ; 2 uses
  %.not43.i.i472 = icmp ult i16 %.0.i.i471, %.sroa.0.0.copyload8.i.i468
  br i1 %.not43.i.i472, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.atp = load i8, ptr %i.i, align 2, !tbaa !198
  %.not44.i.i473 = icmp eq i8 %i.atp, 0
  br i1 %.not44.i.i473, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.jg:                                            ; preds = %bb.je
  %.52.i.i474 = select i1 %.not.i.i464, i64 144, i64 88
  %.sroa.612.0..sroa_idx13.i.i475 = getelementptr inbounds nuw i8, ptr %0, i64 %.52.i.i474
  %.sroa.612.0.copyload14.i.i476 = load ptr, ptr %.sroa.612.0..sroa_idx13.i.i475, align 8, !tbaa !242
  %i.atq = load ptr, ptr %i.av, align 8, !tbaa !330
  %i.atr = zext i16 %.0.i.i471 to i64             ; 3 uses
  %i.ats = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload19.i.i470, i64 %i.atr ; 2 uses
  %i.att = load i64, ptr %i.ats, align 8, !tbaa !293
  %i.atu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.612.0.copyload14.i.i476, i64 %i.atr ; 2 uses
  %i.atv = load i64, ptr %i.atu, align 8, !tbaa !293
  %i.atw = sub i64 %i.att, %i.atv
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ats, i64 8
  %i.aty = load i64, ptr %i.atx, align 8, !tbaa !337
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atu, i64 8
  %i.aua = load i64, ptr %i.atz, align 8, !tbaa !337
  %i.aub = sub i64 %i.aty, %i.aua
  %i.auc = call i64 %i.atq(ptr noundef nonnull %0, i64 noundef %i.atw, i64 noundef %i.aub) #21, !inline_history !410
  %i.aud = load <2 x i64>, ptr %i.ar, align 8, !tbaa !226
  %i.aue = insertelement <2 x i64> poison, i64 %i.auc, i64 0
  %i.auf = shufflevector <2 x i64> %i.aue, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aug = mul <2 x i64> %i.aud, %i.auf           ; 2 uses
  %i.auh = ashr <2 x i64> %i.aug, splat (i64 63)
  %i.aui = add <2 x i64> %i.aug, splat (i64 32768)
  %i.auj = add <2 x i64> %i.aui, %i.auh
  %i.auk = ashr <2 x i64> %i.auj, splat (i64 16)  ; 8 uses
  %i.aul = load i16, ptr %i.cd, align 2, !tbaa !348
  switch i16 %i.aul, label %Ins_SPVTL.exitthread-pre-split [
    i16 0, label %bb.jh
    i16 1, label %bb.ji
  ]

bb.jh:                                            ; preds = %bb.jg
  %i.aum = load i16, ptr %i.ae, align 8, !tbaa !333
  br label %bb.jk

bb.ji:                                            ; preds = %bb.jg
  %i.aun = load i16, ptr %i.cs, align 2, !tbaa !405 ; 2 uses
  %.not21.i477 = icmp eq i16 %i.aun, 0
  br i1 %.not21.i477, label %Ins_SPVTL.exitthread-pre-split, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.auo = zext i16 %i.aun to i64
  %i.aup = load ptr, ptr %i.ct, align 8, !tbaa !407
  %i.auq = add nuw nsw i64 %i.auo, 4294967295
  %i.aur = and i64 %i.auq, 4294967295
  %i.aus = getelementptr inbounds nuw [2 x i8], ptr %i.aup, i64 %i.aur
  %i.aut = load i16, ptr %i.aus, align 2, !tbaa !155
  %i.auu = add i16 %i.aut, 1
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.jh
  %.016.i = phi i16 [ %i.aum, %bb.jh ], [ %i.auu, %bb.jj ] ; 10 uses
  %.not18.i = icmp eq i16 %.016.i, 0
  br i1 %.not18.i, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.i478

.lr.ph.i478:                                      ; preds = %bb.jk
  %i.auv = load ptr, ptr %i.al, align 8, !tbaa !336 ; 21 uses
  %.not22.i479 = icmp eq ptr %.sroa.8.0.copyload19.i.i470, %i.auv
  %.not22.fr.i = freeze i1 %.not22.i479
  br i1 %.not22.fr.i, label %.lr.ph.split.preheader.i, label %.lr.ph.split.us.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i478
  %wide.trip.count48.i = zext i16 %.016.i to i64
  %i.auw = extractelement <2 x i64> %i.auk, i64 0
  %i.aux = extractelement <2 x i64> %i.auk, i64 1
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i478
  %i.auy = load i16, ptr %i.ap, align 4, !tbaa !324
  %.not.i25.us.i = icmp eq i16 %i.auy, 0
  %i.auz = load i16, ptr %i.aq, align 2, !tbaa !325
  %.not21.i.us.i = icmp eq i16 %i.auz, 0          ; 2 uses
  br i1 %.not.i25.us.i, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  br i1 %.not21.i.us.i, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.split.us.split.us.split.i

.lr.ph.split.us.split.us.split.i:                 ; preds = %.lr.ph.split.us.split.us.i
  %i.ava = load i32, ptr %i.u, align 4, !tbaa !264
  %.not22.i.us.us.i = icmp eq i32 %i.ava, 7
  br i1 %.not22.i.us.us.i, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.us.preheader.i

Move_Zp2_Point.exit.us.us.preheader.i:            ; preds = %.lr.ph.split.us.split.us.split.i
  %wide.trip.count43.i = zext i16 %.016.i to i64  ; 2 uses
  %i.avb = extractelement <2 x i64> %i.auk, i64 1 ; 5 uses
  %xtraiter1414 = and i64 %wide.trip.count43.i, 3 ; 3 uses
  %i.avc = icmp ult i16 %.016.i, 4
  br i1 %i.avc, label %Move_Zp2_Point.exit.us.us.i.epil.preheader, label %Move_Zp2_Point.exit.us.us.preheader.i.new

Move_Zp2_Point.exit.us.us.preheader.i.new:        ; preds = %Move_Zp2_Point.exit.us.us.preheader.i
  %unroll_iter1418 = and i64 %wide.trip.count43.i, 65532
  br label %Move_Zp2_Point.exit.us.us.i

Move_Zp2_Point.exit.us.us.i:                      ; preds = %Move_Zp2_Point.exit.us.us.i, %Move_Zp2_Point.exit.us.us.preheader.i.new
  %indvars.iv40.i = phi i64 [ 0, %Move_Zp2_Point.exit.us.us.preheader.i.new ], [ %indvars.iv.next41.i.3, %Move_Zp2_Point.exit.us.us.i ] ; 5 uses
  %niter1419 = phi i64 [ 0, %Move_Zp2_Point.exit.us.us.preheader.i.new ], [ %niter1419.next.3, %Move_Zp2_Point.exit.us.us.i ]
  %i.avd = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv40.i
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 8 ; 2 uses
  %i.avf = load i64, ptr %i.ave, align 8, !tbaa !337
  %i.avg = add i64 %i.avf, %i.avb
  store i64 %i.avg, ptr %i.ave, align 8, !tbaa !337
  %i.avh = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv40.i
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 24 ; 2 uses
  %i.avj = load i64, ptr %i.avi, align 8, !tbaa !337
  %i.avk = add i64 %i.avj, %i.avb
  store i64 %i.avk, ptr %i.avi, align 8, !tbaa !337
  %i.avl = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv40.i
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 40 ; 2 uses
  %i.avn = load i64, ptr %i.avm, align 8, !tbaa !337
  %i.avo = add i64 %i.avn, %i.avb
  store i64 %i.avo, ptr %i.avm, align 8, !tbaa !337
  %i.avp = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv40.i
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 56 ; 2 uses
  %i.avr = load i64, ptr %i.avq, align 8, !tbaa !337
  %i.avs = add i64 %i.avr, %i.avb
  store i64 %i.avs, ptr %i.avq, align 8, !tbaa !337
  %indvars.iv.next41.i.3 = add nuw nsw i64 %indvars.iv40.i, 4 ; 2 uses
  %niter1419.next.3 = add nuw i64 %niter1419, 4   ; 2 uses
  %niter1419.ncmp.3 = icmp eq i64 %niter1419.next.3, %unroll_iter1418
  br i1 %niter1419.ncmp.3, label %Ins_SPVTL.exitthread-pre-split.loopexit1342.unr-lcssa, label %Move_Zp2_Point.exit.us.us.i, !llvm.loop !411

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  %i.avt = load i32, ptr %i.u, align 4, !tbaa !264 ; 2 uses
  %.not19.i.us.i = icmp eq i32 %i.avt, 0          ; 2 uses
  br i1 %.not21.i.us.i, label %.lr.ph.split.us.split.split.us.i, label %.lr.ph.split.us.split.split.i

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.i
  br i1 %.not19.i.us.i, label %Move_Zp2_Point.exit.us.us14.preheader.i, label %Ins_SPVTL.exitthread-pre-split

Move_Zp2_Point.exit.us.us14.preheader.i:          ; preds = %.lr.ph.split.us.split.split.us.i
  %wide.trip.count38.i = zext i16 %.016.i to i64  ; 2 uses
  %i.avu = extractelement <2 x i64> %i.auk, i64 0 ; 5 uses
  %xtraiter1408 = and i64 %wide.trip.count38.i, 3 ; 3 uses
  %i.avv = icmp ult i16 %.016.i, 4
  br i1 %i.avv, label %Move_Zp2_Point.exit.us.us14.i.epil.preheader, label %Move_Zp2_Point.exit.us.us14.preheader.i.new

Move_Zp2_Point.exit.us.us14.preheader.i.new:      ; preds = %Move_Zp2_Point.exit.us.us14.preheader.i
  %unroll_iter1412 = and i64 %wide.trip.count38.i, 65532
  br label %Move_Zp2_Point.exit.us.us14.i

Move_Zp2_Point.exit.us.us14.i:                    ; preds = %Move_Zp2_Point.exit.us.us14.i, %Move_Zp2_Point.exit.us.us14.preheader.i.new
  %indvars.iv35.i = phi i64 [ 0, %Move_Zp2_Point.exit.us.us14.preheader.i.new ], [ %indvars.iv.next36.i.3, %Move_Zp2_Point.exit.us.us14.i ] ; 5 uses
  %niter1413 = phi i64 [ 0, %Move_Zp2_Point.exit.us.us14.preheader.i.new ], [ %niter1413.next.3, %Move_Zp2_Point.exit.us.us14.i ]
  %i.avw = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv35.i ; 2 uses
  %i.avx = load i64, ptr %i.avw, align 8, !tbaa !293
  %i.avy = add i64 %i.avx, %i.avu
  store i64 %i.avy, ptr %i.avw, align 8, !tbaa !293
  %i.avz = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv35.i
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 16 ; 2 uses
  %i.awb = load i64, ptr %i.awa, align 8, !tbaa !293
  %i.awc = add i64 %i.awb, %i.avu
  store i64 %i.awc, ptr %i.awa, align 8, !tbaa !293
  %i.awd = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv35.i
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 32 ; 2 uses
  %i.awf = load i64, ptr %i.awe, align 8, !tbaa !293
  %i.awg = add i64 %i.awf, %i.avu
  store i64 %i.awg, ptr %i.awe, align 8, !tbaa !293
  %i.awh = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv35.i
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 48 ; 2 uses
  %i.awj = load i64, ptr %i.awi, align 8, !tbaa !293
  %i.awk = add i64 %i.awj, %i.avu
  store i64 %i.awk, ptr %i.awi, align 8, !tbaa !293
  %indvars.iv.next36.i.3 = add nuw nsw i64 %indvars.iv35.i, 4 ; 2 uses
  %niter1413.next.3 = add nuw i64 %niter1413, 4   ; 2 uses
  %niter1413.ncmp.3 = icmp eq i64 %niter1413.next.3, %unroll_iter1412
  br i1 %niter1413.ncmp.3, label %Ins_SPVTL.exitthread-pre-split.loopexit1343.unr-lcssa, label %Move_Zp2_Point.exit.us.us14.i, !llvm.loop !411

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
  %i.awl = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %index ; 2 uses
  %i.awm = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %index
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.awl, align 8
  %wide.load1314 = load <2 x i64>, ptr %i.awn, align 8
  %i.awo = add <2 x i64> %wide.load, %i.auk
  %i.awp = add <2 x i64> %wide.load1314, %i.auk
  store <2 x i64> %i.awo, ptr %i.awl, align 8
  store <2 x i64> %i.awp, ptr %i.awn, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.awq = icmp eq i64 %index.next, %n.vec
  br i1 %i.awq, label %middle.block, label %vector.body, !llvm.loop !412

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count28.i
  br i1 %cmp.n, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.us16.i.preheader

Move_Zp2_Point.exit.us.us16.i.preheader:          ; preds = %Move_Zp2_Point.exit.us.us16.preheader.i, %middle.block
  %indvars.iv25.i.ph = phi i64 [ 0, %Move_Zp2_Point.exit.us.us16.preheader.i ], [ %n.vec, %middle.block ]
  br label %Move_Zp2_Point.exit.us.us16.i

Move_Zp2_Point.exit.us.us16.i:                    ; preds = %Move_Zp2_Point.exit.us.us16.i.preheader, %Move_Zp2_Point.exit.us.us16.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %Move_Zp2_Point.exit.us.us16.i ], [ %indvars.iv25.i.ph, %Move_Zp2_Point.exit.us.us16.i.preheader ] ; 2 uses
  %i.awr = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv25.i ; 2 uses
  %i.aws = load <2 x i64>, ptr %i.awr, align 8, !tbaa !226
  %i.awt = add <2 x i64> %i.aws, %i.auk
  store <2 x i64> %i.awt, ptr %i.awr, align 8, !tbaa !226
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.us16.i, !llvm.loop !413

.lr.ph.split.us.split.split.split.i:              ; preds = %.lr.ph.split.us.split.split.i
  %.not22.i.us.i = icmp eq i32 %i.avt, 7
  br i1 %.not22.i.us.i, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.preheader.i

Move_Zp2_Point.exit.us.preheader.i:               ; preds = %.lr.ph.split.us.split.split.split.i
  %wide.trip.count.i480 = zext i16 %.016.i to i64 ; 2 uses
  %i.awu = extractelement <2 x i64> %i.auk, i64 1 ; 5 uses
  %xtraiter1402 = and i64 %wide.trip.count.i480, 3 ; 3 uses
  %i.awv = icmp ult i16 %.016.i, 4
  br i1 %i.awv, label %Move_Zp2_Point.exit.us.i.epil.preheader, label %Move_Zp2_Point.exit.us.preheader.i.new

Move_Zp2_Point.exit.us.preheader.i.new:           ; preds = %Move_Zp2_Point.exit.us.preheader.i
  %unroll_iter1406 = and i64 %wide.trip.count.i480, 65532
  br label %Move_Zp2_Point.exit.us.i

Move_Zp2_Point.exit.us.i:                         ; preds = %Move_Zp2_Point.exit.us.i, %Move_Zp2_Point.exit.us.preheader.i.new
  %indvars.iv.i481 = phi i64 [ 0, %Move_Zp2_Point.exit.us.preheader.i.new ], [ %indvars.iv.next.i482.3, %Move_Zp2_Point.exit.us.i ] ; 5 uses
  %niter1407 = phi i64 [ 0, %Move_Zp2_Point.exit.us.preheader.i.new ], [ %niter1407.next.3, %Move_Zp2_Point.exit.us.i ]
  %i.aww = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv.i481
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 8 ; 2 uses
  %i.awy = load i64, ptr %i.awx, align 8, !tbaa !337
  %i.awz = add i64 %i.awy, %i.awu
  store i64 %i.awz, ptr %i.awx, align 8, !tbaa !337
  %i.axa = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv.i481
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 24 ; 2 uses
  %i.axc = load i64, ptr %i.axb, align 8, !tbaa !337
  %i.axd = add i64 %i.axc, %i.awu
  store i64 %i.axd, ptr %i.axb, align 8, !tbaa !337
  %i.axe = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv.i481
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 40 ; 2 uses
  %i.axg = load i64, ptr %i.axf, align 8, !tbaa !337
  %i.axh = add i64 %i.axg, %i.awu
  store i64 %i.axh, ptr %i.axf, align 8, !tbaa !337
  %i.axi = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv.i481
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 56 ; 2 uses
  %i.axk = load i64, ptr %i.axj, align 8, !tbaa !337
  %i.axl = add i64 %i.axk, %i.awu
  store i64 %i.axl, ptr %i.axj, align 8, !tbaa !337
  %indvars.iv.next.i482.3 = add nuw nsw i64 %indvars.iv.i481, 4 ; 2 uses
  %niter1407.next.3 = add nuw i64 %niter1407, 4   ; 2 uses
  %niter1407.ncmp.3 = icmp eq i64 %niter1407.next.3, %unroll_iter1406
  br i1 %niter1407.ncmp.3, label %Ins_SPVTL.exitthread-pre-split.loopexit1345.unr-lcssa, label %Move_Zp2_Point.exit.us.i, !llvm.loop !411

.lr.ph.split.i:                                   ; preds = %Move_Zp2_Point.exit.i487, %.lr.ph.split.preheader.i
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next46.i, %Move_Zp2_Point.exit.i487 ] ; 4 uses
  %.not23.i = icmp eq i64 %indvars.iv45.i, %i.atr
  br i1 %.not23.i, label %Move_Zp2_Point.exit.i487, label %bb.jl

bb.jl:                                            ; preds = %.lr.ph.split.i
  %i.axm = load i16, ptr %i.ap, align 4, !tbaa !324
  %.not.i25.i = icmp eq i16 %i.axm, 0
  br i1 %.not.i25.i, label %bb.jo, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.axn = load i32, ptr %i.u, align 4, !tbaa !264
  %.not19.i.i484 = icmp eq i32 %i.axn, 0
  br i1 %.not19.i.i484, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.axo = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv45.i ; 2 uses
  %i.axp = load i64, ptr %i.axo, align 8, !tbaa !293
  %i.axq = add i64 %i.axp, %i.auw
  store i64 %i.axq, ptr %i.axo, align 8, !tbaa !293
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm, %bb.jl
  %i.axr = load i16, ptr %i.aq, align 2, !tbaa !325
  %.not21.i.i485 = icmp eq i16 %i.axr, 0
  br i1 %.not21.i.i485, label %Move_Zp2_Point.exit.i487, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.axs = load i32, ptr %i.u, align 4, !tbaa !264
  %.not22.i.i486 = icmp eq i32 %i.axs, 7
  br i1 %.not22.i.i486, label %Move_Zp2_Point.exit.i487, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.axt = getelementptr inbounds nuw [16 x i8], ptr %i.auv, i64 %indvars.iv45.i
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 8 ; 2 uses
  %i.axv = load i64, ptr %i.axu, align 8, !tbaa !337
  %i.axw = add i64 %i.axv, %i.aux
  store i64 %i.axw, ptr %i.axu, align 8, !tbaa !337
  br label %Move_Zp2_Point.exit.i487

Move_Zp2_Point.exit.i487:                         ; preds = %bb.jq, %bb.jp, %bb.jo, %.lr.ph.split.i
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond49.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count48.i
  br i1 %exitcond49.not.i, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.split.i, !llvm.loop !411

bb.jr:                                            ; preds = %bb.f
  %i.axx = load i64, ptr %i.bc, align 8, !tbaa !349 ; 4 uses
  %i.axy = load i16, ptr %i.bw, align 2, !tbaa !346
  %i.axz = icmp eq i16 %i.axy, 0
  br i1 %i.axz, label %bb.ju, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aya = load i16, ptr %i.bx, align 8, !tbaa !347
  %i.ayb = icmp eq i16 %i.aya, 0
  br i1 %i.ayb, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.ayc = load i16, ptr %i.cd, align 2, !tbaa !348
  %i.ayd = icmp ne i16 %i.ayc, 0
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js, %bb.jr
  %.not40.i488 = phi i1 [ false, %bb.js ], [ false, %bb.jr ], [ %i.ayd, %bb.jt ]
  %i.aye = icmp slt i64 %i.ep, %i.axx
  br i1 %i.aye, label %bb.jv, label %bb.jx

bb.jv:                                            ; preds = %bb.ju
  %i.ayf = load i8, ptr %i.i, align 2, !tbaa !198
  %.not46.i505 = icmp eq i8 %i.ayf, 0
  br i1 %.not46.i505, label %.loopexit.i496, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  store i32 129, ptr %i.b, align 8, !tbaa !314
  br label %.loopexit.i496

bb.jx:                                            ; preds = %bb.ju
  %i.ayg = sub nsw i64 %i.ep, %i.axx
  store i64 %i.ayg, ptr %i.k, align 8, !tbaa !319
  %i.ayh = load i64, ptr %i.eu, align 8, !tbaa !226 ; 2 uses
  %i.ayi = load i16, ptr %i.ap, align 4, !tbaa !324
  %i.ayj = sext i16 %i.ayi to i64
  %i.ayk = mul i64 %i.ayh, %i.ayj                 ; 2 uses
  %i.ayl = ashr i64 %i.ayk, 63
  %i.aym = add i64 %i.ayk, 8192
  %i.ayn = add i64 %i.aym, %i.ayl
  %i.ayo = ashr i64 %i.ayn, 14
  %i.ayp = load i16, ptr %i.aq, align 2, !tbaa !325
  %i.ayq = sext i16 %i.ayp to i64
  %i.ayr = mul i64 %i.ayh, %i.ayq                 ; 2 uses
  %i.ays = ashr i64 %i.ayr, 63
  %i.ayt = add i64 %i.ayr, 8192
  %i.ayu = add i64 %i.ayt, %i.ays
  %i.ayv = ashr i64 %i.ayu, 14                    ; 2 uses
  %.not52.i489 = icmp eq i64 %i.axx, 0
  br i1 %.not52.i489, label %.loopexit.i496, label %.lr.ph.i490

.lr.ph.i490:                                      ; preds = %bb.jx, %Move_Zp2_Point.exit.i494
  %.in.i491 = phi i64 [ %i.ayw, %Move_Zp2_Point.exit.i494 ], [ %i.axx, %bb.jx ]
  %.03453.i = phi ptr [ %i.ayx, %Move_Zp2_Point.exit.i494 ], [ %i.eu, %bb.jx ]
  %i.ayw = add nsw i64 %.in.i491, -1              ; 2 uses
  %i.ayx = getelementptr inbounds i8, ptr %.03453.i, i64 -8 ; 2 uses
  %i.ayy = load i64, ptr %i.ayx, align 8, !tbaa !226 ; 8 uses
  %i.ayz = trunc i64 %i.ayy to i32
  %i.aza = and i32 %i.ayz, 65535
  %i.azb = load i16, ptr %i.ae, align 8, !tbaa !333
  %i.azc = zext i16 %i.azb to i32
  %.not38.i492 = icmp samesign ult i32 %i.aza, %i.azc
  br i1 %.not38.i492, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %.lr.ph.i490
  %i.azd = load i8, ptr %i.i, align 2, !tbaa !198
  %.not45.i493 = icmp eq i8 %i.azd, 0
  br i1 %.not45.i493, label %Move_Zp2_Point.exit.i494, label %.loopexit.sink.split

bb.jz:                                            ; preds = %.lr.ph.i490
  %i.aze = load i32, ptr %i.u, align 4, !tbaa !264 ; 2 uses
  %.not39.i = icmp eq i32 %i.aze, 0
  br i1 %.not39.i, label %bb.kk, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  br i1 %.not40.i488, label %bb.kb, label %bb.kf

bb.kb:                                            ; preds = %bb.ka
  %.not41.i = icmp eq i32 %i.aze, 7
  br i1 %.not41.i, label %Move_Zp2_Point.exit.i494, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.azf = load i8, ptr %i.cq, align 1, !tbaa !414
  %.not42.i501 = icmp eq i8 %i.azf, 0
  br i1 %.not42.i501, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.azg = load i16, ptr %i.aq, align 2, !tbaa !325
  %.not43.i502 = icmp eq i16 %i.azg, 0
  br i1 %.not43.i502, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %i.azh = load ptr, ptr %i.cr, align 8, !tbaa !342
  %i.azi = and i64 %i.ayy, 65535
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azh, i64 %i.azi
  %i.azk = load i8, ptr %i.azj, align 1, !tbaa !227
  %i.azl = and i8 %i.azk, 16
  %.not44.i503 = icmp eq i8 %i.azl, 0
  br i1 %.not44.i503, label %Move_Zp2_Point.exit.i494, label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd, %bb.ka
  %i.azm = load i16, ptr %i.ap, align 4, !tbaa !324
  %.not.i.i497 = icmp eq i16 %i.azm, 0
  br i1 %.not.i.i497, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.azn = load ptr, ptr %i.cr, align 8, !tbaa !342
  %i.azo = and i64 %i.ayy, 65535
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azn, i64 %i.azo ; 2 uses
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !227
  %i.azr = or i8 %i.azq, 8
  store i8 %i.azr, ptr %i.azp, align 1, !tbaa !227
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %i.azs = load i16, ptr %i.aq, align 2, !tbaa !325
  %.not21.i.i498 = icmp eq i16 %i.azs, 0
  br i1 %.not21.i.i498, label %Move_Zp2_Point.exit.i494, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.azt = load i32, ptr %i.u, align 4, !tbaa !264
  %.not22.i.i499 = icmp eq i32 %i.azt, 7
  br i1 %.not22.i.i499, label %._crit_edge.i500, label %bb.kj

._crit_edge.i500:                                 ; preds = %bb.ki
  %.pre55.i = and i64 %i.ayy, 65535
  br label %Move_Zp2_Point.exit.sink.split.i

bb.kj:                                            ; preds = %bb.ki
  %i.azu = load ptr, ptr %i.al, align 8, !tbaa !336
  %i.azv = and i64 %i.ayy, 65535                  ; 2 uses
  %i.azw = getelementptr inbounds nuw [16 x i8], ptr %i.azu, i64 %i.azv
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 8 ; 2 uses
  %i.azy = load i64, ptr %i.azx, align 8, !tbaa !337
  %i.azz = add i64 %i.azy, %i.ayv
  store i64 %i.azz, ptr %i.azx, align 8, !tbaa !337
  br label %Move_Zp2_Point.exit.sink.split.i

bb.kk:                                            ; preds = %bb.jz
  %i.baa = load i16, ptr %i.ap, align 4, !tbaa !324
  %.not.i47.i = icmp eq i16 %i.baa, 0
  br i1 %.not.i47.i, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.bab = load ptr, ptr %i.al, align 8, !tbaa !336
  %i.bac = and i64 %i.ayy, 65535                  ; 2 uses
  %i.bad = getelementptr inbounds nuw [16 x i8], ptr %i.bab, i64 %i.bac ; 2 uses
  %i.bae = load i64, ptr %i.bad, align 8, !tbaa !293
  %i.baf = add i64 %i.bae, %i.ayo
  store i64 %i.baf, ptr %i.bad, align 8, !tbaa !293
  %i.bag = load ptr, ptr %i.cr, align 8, !tbaa !342
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 %i.bac ; 2 uses
end_hunk_0
begin_hunk_1_@TT_RunIns:bb.a
  %i.bms = getelementptr inbounds nuw [16 x i8], ptr %i.bmp, i64 %i.bmr ; 2 uses
  %i.bmt = load i64, ptr %i.bms, align 8, !tbaa !293
  %i.bmu = sub i64 %i.bmo, %i.bmt
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmn, i64 8
  %i.bmw = load i64, ptr %i.bmv, align 8, !tbaa !337
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bms, i64 8
  %i.bmy = load i64, ptr %i.bmx, align 8, !tbaa !337
  %i.bmz = sub i64 %i.bmw, %i.bmy
  %i.bna = call i64 %i.bmk(ptr noundef nonnull %0, i64 noundef %i.bmu, i64 noundef %i.bmz) #21, !inline_history !428
  %i.bnb = load ptr, ptr %i.at, align 8, !tbaa !328
  %i.bnc = sub i64 0, %i.bna
  call void %i.bnb(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i16 noundef zeroext %i.bmj, i64 noundef %i.bnc) #21, !inline_history !428
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %.not36.i = icmp eq i64 %i.bmb, 0
  br i1 %.not36.i, label %.loopexit.i527, label %.lr.ph.i528, !llvm.loop !429

.loopexit.sink.split.i525:                        ; preds = %bb.mc, %bb.ma
  %.sink.i526 = phi i32 [ 129, %bb.ma ], [ 134, %bb.mc ]
  store i32 %.sink.i526, ptr %i.b, align 8, !tbaa !314
  br label %.loopexit.i527

.loopexit.i527:                                   ; preds = %bb.mf, %.loopexit.sink.split.i525, %bb.mc, %.preheader.i, %bb.ma
  store i64 1, ptr %i.bc, align 8, !tbaa !349
  br label %Ins_SPVTL.exitthread-pre-split

bb.mg:                                            ; preds = %bb.f
  store i32 2, ptr %i.bd, align 8, !tbaa !350
  store ptr @Round_To_Double_Grid, ptr %i.be, align 8, !tbaa !351
  br label %Ins_SPVTL.exitthread-pre-split

bb.mh:                                            ; preds = %bb.f, %bb.f
  %.val322 = load i64, ptr %i.eu, align 8, !tbaa !226 ; 4 uses
  %i.bnd = getelementptr i8, ptr %i.eu, i64 8
  %.val323 = load i64, ptr %i.bnd, align 8, !tbaa !226 ; 2 uses
  %i.bne = trunc i64 %.val322 to i16              ; 3 uses
  %i.bnf = trunc i64 %.val322 to i32
  %i.bng = and i32 %i.bnf, 65535
  %i.bnh = load i16, ptr %i.bu, align 8, !tbaa !340
  %i.bni = zext i16 %i.bnh to i32
  %.not.i532 = icmp samesign ult i32 %i.bng, %i.bni
  br i1 %.not.i532, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bnj = load i64, ptr %i.bn, align 8, !tbaa !214
  %.not55.i534 = icmp ult i64 %.val323, %i.bnj
  br i1 %.not55.i534, label %bb.ml, label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %bb.mh
  %i.bnk = load i8, ptr %i.i, align 2, !tbaa !198
  %.not57.i533 = icmp eq i8 %i.bnk, 0
  br i1 %.not57.i533, label %Ins_MIAP.exit, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  store i32 134, ptr %i.b, align 8, !tbaa !314
  br label %Ins_MIAP.exit

bb.ml:                                            ; preds = %bb.mi
  %i.bnl = load ptr, ptr %i.ce, align 8, !tbaa !430
  %i.bnm = call i64 %i.bnl(ptr noundef nonnull %0, i64 noundef %.val323) #21, !inline_history !431 ; 5 uses
  %i.bnn = load i16, ptr %i.bw, align 2, !tbaa !346
  %i.bno = icmp eq i16 %i.bnn, 0
  br i1 %i.bno, label %bb.mm, label %._crit_edge.i535

._crit_edge.i535:                                 ; preds = %bb.ml
  %.pre.i536 = and i64 %.val322, 65535
  br label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %i.bnp = load i16, ptr %i.ap, align 4, !tbaa !324
  %i.bnq = sext i16 %i.bnp to i64
  %i.bnr = mul i64 %i.bnm, %i.bnq                 ; 2 uses
  %i.bns = ashr i64 %i.bnr, 63
  %i.bnt = add i64 %i.bnr, 8192
  %i.bnu = add i64 %i.bnt, %i.bns
  %i.bnv = ashr i64 %i.bnu, 14
  %i.bnw = load ptr, ptr %i.cc, align 8, !tbaa !416
  %i.bnx = and i64 %.val322, 65535                ; 3 uses
  %i.bny = getelementptr inbounds nuw [16 x i8], ptr %i.bnw, i64 %i.bnx ; 3 uses
  store i64 %i.bnv, ptr %i.bny, align 8, !tbaa !293
  %i.bnz = load i16, ptr %i.aq, align 2, !tbaa !325
  %i.boa = sext i16 %i.bnz to i64
  %i.bob = mul i64 %i.bnm, %i.boa                 ; 2 uses
  %i.boc = ashr i64 %i.bob, 63
  %i.bod = add i64 %i.bob, 8192
  %i.boe = add i64 %i.bod, %i.boc
  %i.bof = ashr i64 %i.boe, 14
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bny, i64 8
  store i64 %i.bof, ptr %i.bog, align 8, !tbaa !337
  %i.boh = load ptr, ptr %i.bv, align 8, !tbaa !341
  %i.boi = getelementptr inbounds nuw [16 x i8], ptr %i.boh, i64 %i.bnx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.boi, ptr noundef nonnull align 8 dereferenceable(16) %i.bny, i64 16, i1 false), !tbaa.struct !426
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %._crit_edge.i535
  %.pre-phi.i537 = phi i64 [ %.pre.i536, %._crit_edge.i535 ], [ %i.bnx, %bb.mm ]
  %i.boj = load ptr, ptr %i.av, align 8, !tbaa !330
  %i.bok = load ptr, ptr %i.bv, align 8, !tbaa !341
  %i.bol = getelementptr inbounds nuw [16 x i8], ptr %i.bok, i64 %.pre-phi.i537 ; 2 uses
  %i.bom = load i64, ptr %i.bol, align 8, !tbaa !293
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bol, i64 8
  %i.boo = load i64, ptr %i.bon, align 8, !tbaa !337
  %i.bop = call i64 %i.boj(ptr noundef nonnull %0, i64 noundef %i.bom, i64 noundef %i.boo) #21, !inline_history !431 ; 3 uses
  %i.boq = load i8, ptr %i.e, align 8, !tbaa !315
  %i.bor = and i8 %i.boq, 1
  %.not56.i538 = icmp eq i8 %i.bor, 0
  br i1 %.not56.i538, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.bos = load i64, ptr %i.cl, align 8, !tbaa !361
  %i.bot = sub i64 %i.bnm, %i.bop
  %spec.select.i539 = call i64 @llvm.abs.i64(i64 %i.bot, i1 false)
  %i.bou = icmp sgt i64 %spec.select.i539, %i.bos
  %.051.i = select i1 %i.bou, i64 %i.bop, i64 %i.bnm
  %i.bov = load ptr, ptr %i.be, align 8, !tbaa !351
  %i.bow = call i64 %i.bov(ptr noundef nonnull %0, i64 noundef %.051.i, i64 noundef 0) #21, !inline_history !431
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.mn
  %.1.i540 = phi i64 [ %i.bow, %bb.mo ], [ %i.bnm, %bb.mn ]
  %i.box = load ptr, ptr %i.at, align 8, !tbaa !328
  %i.boy = sub i64 %.1.i540, %i.bop
  call void %i.box(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, i16 noundef zeroext %i.bne, i64 noundef %i.boy) #21, !inline_history !431
  br label %Ins_MIAP.exit

Ins_MIAP.exit:                                    ; preds = %bb.mj, %bb.mk, %bb.mp
  store i16 %i.bne, ptr %i.cm, align 8, !tbaa !343
  store i16 %i.bne, ptr %i.cn, align 2, !tbaa !344
  br label %Ins_SPVTL.exitthread-pre-split

bb.mq:                                            ; preds = %bb.f
  %i.boz = load i64, ptr %i.d, align 8, !tbaa !251
  %i.bpa = add nsw i64 %i.boz, 1                  ; 6 uses
  %i.bpb = load i64, ptr %i.s, align 8, !tbaa !250 ; 2 uses
  %.not.i541 = icmp slt i64 %i.bpa, %i.bpb
  br i1 %.not.i541, label %bb.mr, label %.loopexit.sink.split

bb.mr:                                            ; preds = %bb.mq
  %i.bpc = getelementptr inbounds i8, ptr %i.dv, i64 %i.bpa
  %i.bpd = load i8, ptr %i.bpc, align 1, !tbaa !227 ; 4 uses
  %i.bpe = zext i8 %i.bpd to i64                  ; 4 uses
  %i.bpf = add nsw i64 %i.bpa, %i.bpe
  %.not28.i542 = icmp slt i64 %i.bpf, %i.bpb
  br i1 %.not28.i542, label %bb.ms, label %.loopexit.sink.split

bb.ms:                                            ; preds = %bb.mr
  %i.bpg = zext i8 %i.bpd to i32
  %i.bph = add nuw nsw i64 %i.eq, 1
  %i.bpi = load i64, ptr %i.g, align 8, !tbaa !317
  %i.bpj = sub i64 %i.bph, %i.bpi
  %i.bpk = trunc i64 %i.bpj to i32
  %.not29.i543 = icmp ult i32 %i.bpg, %i.bpk
  br i1 %.not29.i543, label %.preheader.i544, label %.loopexit.sink.split

.preheader.i544:                                  ; preds = %bb.ms
  %.not32.i = icmp eq i8 %i.bpd, 0
  br i1 %.not32.i, label %._crit_edge.i550, label %.lr.ph.i546.preheader

.lr.ph.i546.preheader:                            ; preds = %.preheader.i544
  %xtraiter1396 = and i64 %i.bpe, 3               ; 3 uses
  %i.bpl = icmp ult i8 %i.bpd, 4
  br i1 %i.bpl, label %.lr.ph.i546.epil.preheader, label %.lr.ph.i546.preheader.new

.lr.ph.i546.preheader.new:                        ; preds = %.lr.ph.i546.preheader
  %unroll_iter1400 = and i64 %i.bpe, 252
  br label %.lr.ph.i546

.lr.ph.i546:                                      ; preds = %.lr.ph.i546, %.lr.ph.i546.preheader.new
  %indvars.iv.i547 = phi i64 [ 0, %.lr.ph.i546.preheader.new ], [ %indvars.iv.next.i548.3, %.lr.ph.i546 ] ; 5 uses
  %.02430.i = phi i64 [ %i.bpa, %.lr.ph.i546.preheader.new ], [ %i.bqd, %.lr.ph.i546 ] ; 4 uses
  %niter1401 = phi i64 [ 0, %.lr.ph.i546.preheader.new ], [ %niter1401.next.3, %.lr.ph.i546 ]
  %i.bpm = getelementptr i8, ptr %i.dv, i64 %.02430.i
  %i.bpn = getelementptr i8, ptr %i.bpm, i64 1
  %i.bpo = load i8, ptr %i.bpn, align 1, !tbaa !227
  %i.bpp = zext i8 %i.bpo to i64
  %i.bpq = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv.i547
  store i64 %i.bpp, ptr %i.bpq, align 8, !tbaa !226
  %i.bpr = getelementptr i8, ptr %i.dv, i64 %.02430.i
  %i.bps = getelementptr i8, ptr %i.bpr, i64 2
  %i.bpt = load i8, ptr %i.bps, align 1, !tbaa !227
  %i.bpu = zext i8 %i.bpt to i64
  %i.bpv = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv.i547
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpv, i64 8
  store i64 %i.bpu, ptr %i.bpw, align 8, !tbaa !226
  %i.bpx = getelementptr i8, ptr %i.dv, i64 %.02430.i
  %i.bpy = getelementptr i8, ptr %i.bpx, i64 3
  %i.bpz = load i8, ptr %i.bpy, align 1, !tbaa !227
  %i.bqa = zext i8 %i.bpz to i64
  %i.bqb = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv.i547
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 16
  store i64 %i.bqa, ptr %i.bqc, align 8, !tbaa !226
  %i.bqd = add nsw i64 %.02430.i, 4               ; 4 uses
  %i.bqe = getelementptr inbounds i8, ptr %i.dv, i64 %i.bqd
  %i.bqf = load i8, ptr %i.bqe, align 1, !tbaa !227
  %i.bqg = zext i8 %i.bqf to i64
  %i.bqh = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv.i547
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqh, i64 24
  store i64 %i.bqg, ptr %i.bqi, align 8, !tbaa !226
  %indvars.iv.next.i548.3 = add nuw nsw i64 %indvars.iv.i547, 4 ; 2 uses
  %niter1401.next.3 = add nuw i64 %niter1401, 4   ; 2 uses
  %niter1401.ncmp.3 = icmp eq i64 %niter1401.next.3, %unroll_iter1400
  br i1 %niter1401.ncmp.3, label %._crit_edge.i550.loopexit.unr-lcssa, label %.lr.ph.i546, !llvm.loop !432

._crit_edge.i550.loopexit.unr-lcssa:              ; preds = %.lr.ph.i546
  %lcmp.mod1397.not = icmp eq i64 %xtraiter1396, 0
  br i1 %lcmp.mod1397.not, label %._crit_edge.i550.loopexit, label %.lr.ph.i546.epil.preheader

.lr.ph.i546.epil.preheader:                       ; preds = %._crit_edge.i550.loopexit.unr-lcssa, %.lr.ph.i546.preheader
  %indvars.iv.i547.epil.init = phi i64 [ 0, %.lr.ph.i546.preheader ], [ %indvars.iv.next.i548.3, %._crit_edge.i550.loopexit.unr-lcssa ]
  %.02430.i.epil.init = phi i64 [ %i.bpa, %.lr.ph.i546.preheader ], [ %i.bqd, %._crit_edge.i550.loopexit.unr-lcssa ]
  %lcmp.mod1399 = icmp ne i64 %xtraiter1396, 0
  call void @llvm.assume(i1 %lcmp.mod1399)
  br label %.lr.ph.i546.epil

.lr.ph.i546.epil:                                 ; preds = %.lr.ph.i546.epil, %.lr.ph.i546.epil.preheader
  %indvars.iv.i547.epil = phi i64 [ %indvars.iv.next.i548.epil, %.lr.ph.i546.epil ], [ %indvars.iv.i547.epil.init, %.lr.ph.i546.epil.preheader ] ; 2 uses
  %.02430.i.epil = phi i64 [ %i.bqj, %.lr.ph.i546.epil ], [ %.02430.i.epil.init, %.lr.ph.i546.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i546.epil ], [ 0, %.lr.ph.i546.epil.preheader ]
  %i.bqj = add nsw i64 %.02430.i.epil, 1          ; 3 uses
  %i.bqk = getelementptr inbounds i8, ptr %i.dv, i64 %i.bqj
  %i.bql = load i8, ptr %i.bqk, align 1, !tbaa !227
  %i.bqm = zext i8 %i.bql to i64
  %i.bqn = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv.i547.epil
  store i64 %i.bqm, ptr %i.bqn, align 8, !tbaa !226
  %indvars.iv.next.i548.epil = add nuw nsw i64 %indvars.iv.i547.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1396
  br i1 %epil.iter.cmp.not, label %._crit_edge.i550.loopexit, label %.lr.ph.i546.epil, !llvm.loop !433

._crit_edge.i550.loopexit:                        ; preds = %.lr.ph.i546.epil, %._crit_edge.i550.loopexit.unr-lcssa
  %.lcssa1381 = phi i64 [ %i.bqd, %._crit_edge.i550.loopexit.unr-lcssa ], [ %i.bqj, %.lr.ph.i546.epil ]
  %.pre1009 = load i64, ptr %i.k, align 8, !tbaa !319
  br label %._crit_edge.i550

._crit_edge.i550:                                 ; preds = %._crit_edge.i550.loopexit, %.preheader.i544
  %i.bqo = phi i64 [ %i.ep, %.preheader.i544 ], [ %.pre1009, %._crit_edge.i550.loopexit ]
  %.024.lcssa.i = phi i64 [ %i.bpa, %.preheader.i544 ], [ %.lcssa1381, %._crit_edge.i550.loopexit ]
  %i.bqp = add nsw i64 %i.bqo, %i.bpe
  store i64 %i.bqp, ptr %i.k, align 8, !tbaa !319
  store i64 %.024.lcssa.i, ptr %i.d, align 8, !tbaa !251
  br label %Ins_SPVTL.exitthread-pre-split

bb.mt:                                            ; preds = %bb.f
  %i.bqq = load i64, ptr %i.d, align 8, !tbaa !251
  %i.bqr = add nsw i64 %i.bqq, 1                  ; 6 uses
  %i.bqs = load i64, ptr %i.s, align 8, !tbaa !250 ; 2 uses
  %.not.i551 = icmp slt i64 %i.bqr, %i.bqs
  br i1 %.not.i551, label %bb.mu, label %.loopexit.sink.split

bb.mu:                                            ; preds = %bb.mt
  %i.bqt = getelementptr inbounds i8, ptr %i.dv, i64 %i.bqr
  %i.bqu = load i8, ptr %i.bqt, align 1, !tbaa !227 ; 5 uses
  %i.bqv = zext i8 %i.bqu to i32                  ; 2 uses
  %i.bqw = shl nuw nsw i32 %i.bqv, 1
  %i.bqx = zext nneg i32 %i.bqw to i64
  %i.bqy = add nsw i64 %i.bqr, %i.bqx
  %.not31.i552 = icmp slt i64 %i.bqy, %i.bqs
  br i1 %.not31.i552, label %bb.mv, label %.loopexit.sink.split

bb.mv:                                            ; preds = %bb.mu
  %i.bqz = add nuw nsw i64 %i.eq, 1
  %i.bra = load i64, ptr %i.g, align 8, !tbaa !317
  %i.brb = sub i64 %i.bqz, %i.bra
  %i.brc = trunc i64 %i.brb to i32
  %.not32.i553 = icmp ult i32 %i.bqv, %i.brc
  br i1 %.not32.i553, label %.preheader.i554, label %.loopexit.sink.split

.preheader.i554:                                  ; preds = %bb.mv
  %.not35.i = icmp eq i8 %i.bqu, 0
  br i1 %.not35.i, label %._crit_edge.i561, label %.lr.ph.preheader.i555

.lr.ph.preheader.i555:                            ; preds = %.preheader.i554
  %wide.trip.count.i556 = zext i8 %i.bqu to i64   ; 3 uses
  %xtraiter1392 = and i64 %wide.trip.count.i556, 1
  %i.brd = icmp eq i8 %i.bqu, 1
  br i1 %i.brd, label %.lr.ph.i557.epil.preheader, label %.lr.ph.preheader.i555.new

.lr.ph.preheader.i555.new:                        ; preds = %.lr.ph.preheader.i555
  %unroll_iter = and i64 %wide.trip.count.i556, 254
  br label %.lr.ph.i557

.lr.ph.i557:                                      ; preds = %.lr.ph.i557, %.lr.ph.preheader.i555.new
  %indvars.iv.i558 = phi i64 [ 0, %.lr.ph.preheader.i555.new ], [ %indvars.iv.next.i559.1, %.lr.ph.i557 ] ; 3 uses
  %.02733.i = phi i64 [ %i.bqr, %.lr.ph.preheader.i555.new ], [ %i.brw, %.lr.ph.i557 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i555.new ], [ %niter.next.1, %.lr.ph.i557 ]
  %i.bre = getelementptr i8, ptr %i.dv, i64 %.02733.i
  %i.brf = getelementptr i8, ptr %i.bre, i64 1
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !227
  %i.brh = zext i8 %i.brg to i16
  %i.bri = shl nuw i16 %i.brh, 8
  %i.brj = sext i16 %i.bri to i64
  %i.brk = add nsw i64 %.02733.i, 2               ; 2 uses
  %i.brl = getelementptr inbounds i8, ptr %i.dv, i64 %i.brk
  %i.brm = load i8, ptr %i.brl, align 1, !tbaa !227
  %i.brn = zext i8 %i.brm to i64
  %i.bro = or disjoint i64 %i.brj, %i.brn
  %i.brp = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv.i558
  store i64 %i.bro, ptr %i.brp, align 8, !tbaa !226
  %i.brq = getelementptr i8, ptr %i.dv, i64 %i.brk
  %i.brr = getelementptr i8, ptr %i.brq, i64 1
  %i.brs = load i8, ptr %i.brr, align 1, !tbaa !227
  %i.brt = zext i8 %i.brs to i16
  %i.bru = shl nuw i16 %i.brt, 8
  %i.brv = sext i16 %i.bru to i64
  %i.brw = add nsw i64 %.02733.i, 4               ; 4 uses
  %i.brx = getelementptr inbounds i8, ptr %i.dv, i64 %i.brw
  %i.bry = load i8, ptr %i.brx, align 1, !tbaa !227
  %i.brz = zext i8 %i.bry to i64
  %i.bsa = or disjoint i64 %i.brv, %i.brz
  %i.bsb = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv.i558
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bsb, i64 8
  store i64 %i.bsa, ptr %i.bsc, align 8, !tbaa !226
  %indvars.iv.next.i559.1 = add nuw nsw i64 %indvars.iv.i558, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i561.loopexit.unr-lcssa, label %.lr.ph.i557, !llvm.loop !434

._crit_edge.i561.loopexit.unr-lcssa:              ; preds = %.lr.ph.i557
  %lcmp.mod1393.not = icmp eq i64 %xtraiter1392, 0
  br i1 %lcmp.mod1393.not, label %._crit_edge.i561.loopexit, label %.lr.ph.i557.epil.preheader

.lr.ph.i557.epil.preheader:                       ; preds = %._crit_edge.i561.loopexit.unr-lcssa, %.lr.ph.preheader.i555
  %indvars.iv.i558.epil.init = phi i64 [ 0, %.lr.ph.preheader.i555 ], [ %indvars.iv.next.i559.1, %._crit_edge.i561.loopexit.unr-lcssa ]
  %.02733.i.epil.init = phi i64 [ %i.bqr, %.lr.ph.preheader.i555 ], [ %i.brw, %._crit_edge.i561.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1395 = trunc i8 %i.bqu to i1
  call void @llvm.assume(i1 %lcmp.mod1395)
  %i.bsd = getelementptr i8, ptr %i.dv, i64 %.02733.i.epil.init
  %i.bse = getelementptr i8, ptr %i.bsd, i64 1
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !227
  %i.bsg = zext i8 %i.bsf to i16
  %i.bsh = shl nuw i16 %i.bsg, 8
  %i.bsi = sext i16 %i.bsh to i64
  %i.bsj = add nsw i64 %.02733.i.epil.init, 2     ; 2 uses
  %i.bsk = getelementptr inbounds i8, ptr %i.dv, i64 %i.bsj
  %i.bsl = load i8, ptr %i.bsk, align 1, !tbaa !227
  %i.bsm = zext i8 %i.bsl to i64
  %i.bsn = or disjoint i64 %i.bsi, %i.bsm
  %i.bso = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv.i558.epil.init
  store i64 %i.bsn, ptr %i.bso, align 8, !tbaa !226
  br label %._crit_edge.i561.loopexit

._crit_edge.i561.loopexit:                        ; preds = %._crit_edge.i561.loopexit.unr-lcssa, %.lr.ph.i557.epil.preheader
  %.lcssa1380 = phi i64 [ %i.brw, %._crit_edge.i561.loopexit.unr-lcssa ], [ %i.bsj, %.lr.ph.i557.epil.preheader ]
  %.pre1008 = load i64, ptr %i.k, align 8, !tbaa !319
  br label %._crit_edge.i561

._crit_edge.i561:                                 ; preds = %.preheader.i554, %._crit_edge.i561.loopexit
  %.pre-phi = phi i64 [ %wide.trip.count.i556, %._crit_edge.i561.loopexit ], [ 0, %.preheader.i554 ]
  %i.bsp = phi i64 [ %.pre1008, %._crit_edge.i561.loopexit ], [ %i.ep, %.preheader.i554 ]
  %.027.lcssa.i = phi i64 [ %.lcssa1380, %._crit_edge.i561.loopexit ], [ %i.bqr, %.preheader.i554 ]
  %i.bsq = add nsw i64 %i.bsp, %.pre-phi
  store i64 %i.bsq, ptr %i.k, align 8, !tbaa !319
  store i64 %.027.lcssa.i, ptr %i.d, align 8, !tbaa !251
  br label %Ins_SPVTL.exitthread-pre-split

bb.mw:                                            ; preds = %bb.f
  %i.bsr = load i64, ptr %i.eu, align 8, !tbaa !226 ; 2 uses
  %i.bss = load i16, ptr %i.cg, align 8, !tbaa !212
  %i.bst = zext i16 %i.bss to i64                 ; 2 uses
  %.not.i562 = icmp ult i64 %i.bsr, %i.bst
  br i1 %.not.i562, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.bsu = load i8, ptr %i.i, align 2, !tbaa !198
  %.not28.i563 = icmp eq i8 %i.bsu, 0
  br i1 %.not28.i563, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.my:                                            ; preds = %bb.mw
  %i.bsv = load i32, ptr %i.t, align 8, !tbaa !253
  %i.bsw = icmp eq i32 %i.bsv, 3
  %i.bsx = load ptr, ptr %i.ch, align 8, !tbaa !233 ; 3 uses
  br i1 %i.bsw, label %bb.mz, label %._crit_edge.i564

bb.mz:                                            ; preds = %bb.my
  %i.bsy = load ptr, ptr %i.ci, align 8, !tbaa !435 ; 2 uses
  %.not26.i = icmp eq ptr %i.bsx, %i.bsy
  br i1 %.not26.i, label %._crit_edge.i564, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.bsz = load ptr, ptr %i.cj, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bta = load i16, ptr %i.ck, align 8, !tbaa !436
  %i.btb = zext i16 %i.bta to i64
  %i.btc = call ptr @ft_mem_qrealloc(ptr noundef %i.bsz, i64 noundef 8, i64 noundef %i.btb, i64 noundef %i.bst, ptr noundef %i.bsy, ptr noundef nonnull %i.a) #21 ; 2 uses
  store ptr %i.btc, ptr %i.ci, align 8, !tbaa !435
  %i.btd = load i32, ptr %i.a, align 4, !tbaa !187 ; 3 uses
  store i32 %i.btd, ptr %i.b, align 8, !tbaa !314
  %.not27.i = icmp eq i32 %i.btd, 0
  br i1 %.not27.i, label %bb.nb, label %.critedge.i565

bb.nb:                                            ; preds = %bb.na
  %i.bte = load i16, ptr %i.cg, align 8, !tbaa !212 ; 2 uses
  store i16 %i.bte, ptr %i.ck, align 8, !tbaa !436
  %i.btf = load ptr, ptr %i.ch, align 8, !tbaa !233
  %i.btg = zext i16 %i.bte to i64
  %i.bth = shl nuw nsw i64 %i.btg, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.btc, ptr align 8 %i.btf, i64 %i.bth, i1 false)
  %i.bti = load ptr, ptr %i.ci, align 8, !tbaa !435 ; 2 uses
  store ptr %i.bti, ptr %i.ch, align 8, !tbaa !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %._crit_edge.i564

._crit_edge.i564:                                 ; preds = %bb.nb, %bb.mz, %bb.my
  %i.btj = phi ptr [ %i.bsx, %bb.mz ], [ %i.bti, %bb.nb ], [ %i.bsx, %bb.my ]
  %i.btk = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.btl = load i64, ptr %i.btk, align 8, !tbaa !226
  %i.btm = getelementptr inbounds nuw [8 x i8], ptr %i.btj, i64 %i.bsr
  store i64 %i.btl, ptr %i.btm, align 8, !tbaa !226
  br label %Ins_SPVTL.exitthread-pre-split

.critedge.i565:                                   ; preds = %bb.na
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %Ins_SPVTL.exit

bb.nc:                                            ; preds = %bb.f
  %i.btn = load i64, ptr %i.eu, align 8, !tbaa !226 ; 2 uses
  %i.bto = load i16, ptr %i.cg, align 8, !tbaa !212
  %i.btp = zext i16 %i.bto to i64
  %.not.i566 = icmp ult i64 %i.btn, %i.btp
  br i1 %.not.i566, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.btq = load i8, ptr %i.i, align 2, !tbaa !198
  %.not8.i = icmp eq i8 %i.btq, 0
  br i1 %.not8.i, label %bb.nf, label %.loopexit.sink.split

bb.ne:                                            ; preds = %bb.nc
  %i.btr = load ptr, ptr %i.ch, align 8, !tbaa !233
  %i.bts = getelementptr inbounds nuw [8 x i8], ptr %i.btr, i64 %i.btn
  %i.btt = load i64, ptr %i.bts, align 8, !tbaa !226
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %storemerge.i567 = phi i64 [ %i.btt, %bb.ne ], [ 0, %bb.nd ]
  store i64 %storemerge.i567, ptr %i.eu, align 8, !tbaa !226
  br label %Ins_SPVTL.exitthread-pre-split

bb.ng:                                            ; preds = %bb.f
  %i.btu = load i64, ptr %i.eu, align 8, !tbaa !226 ; 2 uses
  %i.btv = load i64, ptr %i.bn, align 8, !tbaa !214
  %.not.i568 = icmp ult i64 %i.btu, %i.btv
  br i1 %.not.i568, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.btw = load i8, ptr %i.i, align 2, !tbaa !198
  %.not8.i569 = icmp eq i8 %i.btw, 0
  br i1 %.not8.i569, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ni:                                            ; preds = %bb.ng
  %i.btx = load ptr, ptr %i.cf, align 8, !tbaa !437
  %i.bty = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.btz = load i64, ptr %i.bty, align 8, !tbaa !226
  call void %i.btx(ptr noundef nonnull %0, i64 noundef %i.btu, i64 noundef %i.btz) #21, !inline_history !438
  br label %Ins_SPVTL.exitthread-pre-split

bb.nj:                                            ; preds = %bb.f
  %i.bua = load i64, ptr %i.eu, align 8, !tbaa !226 ; 2 uses
  %i.bub = load i64, ptr %i.bn, align 8, !tbaa !214
  %.not.i570 = icmp ult i64 %i.bua, %i.bub
  br i1 %.not.i570, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.buc = load i8, ptr %i.i, align 2, !tbaa !198
  %.not9.i = icmp eq i8 %i.buc, 0
  br i1 %.not9.i, label %bb.nm, label %.loopexit.sink.split

bb.nl:                                            ; preds = %bb.nj
  %i.bud = load ptr, ptr %i.ce, align 8, !tbaa !430
  %i.bue = call i64 %i.bud(ptr noundef nonnull %0, i64 noundef %i.bua) #21, !inline_history !439
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  %storemerge.i571 = phi i64 [ %i.bue, %bb.nl ], [ 0, %bb.nk ]
  store i64 %storemerge.i571, ptr %i.eu, align 8, !tbaa !226
  br label %Ins_SPVTL.exitthread-pre-split

bb.nn:                                            ; preds = %bb.f, %bb.f
  %i.buf = load i64, ptr %i.eu, align 8, !tbaa !226 ; 3 uses
  %i.bug = load i16, ptr %i.ae, align 8, !tbaa !333
  %i.buh = zext i16 %i.bug to i64
  %.not.i572 = icmp ult i64 %i.buf, %i.buh
  br i1 %.not.i572, label %bb.nq, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.bui = load i8, ptr %i.i, align 2, !tbaa !198
  %.not21.i573 = icmp eq i8 %i.bui, 0
  br i1 %.not21.i573, label %Ins_GC.exit, label %bb.np

bb.np:                                            ; preds = %bb.no
  store i32 134, ptr %i.b, align 8, !tbaa !314
  br label %Ins_GC.exit

bb.nq:                                            ; preds = %bb.nn
  %i.buj = and i8 %i.dy, 1
  %.not20.i575 = icmp eq i8 %i.buj, 0
  br i1 %.not20.i575, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.buk = load ptr, ptr %i.aw, align 8, !tbaa !331
  %i.bul = load ptr, ptr %i.ag, align 8, !tbaa !424
  %i.bum = getelementptr inbounds nuw [16 x i8], ptr %i.bul, i64 %i.buf ; 2 uses
  %i.bun = load i64, ptr %i.bum, align 8, !tbaa !293
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bum, i64 8
  %i.bup = load i64, ptr %i.buo, align 8, !tbaa !337
  %i.buq = call i64 %i.buk(ptr noundef nonnull %0, i64 noundef %i.bun, i64 noundef %i.bup) #21, !inline_history !440
  br label %Ins_GC.exit

bb.ns:                                            ; preds = %bb.nq
  %i.bur = load ptr, ptr %i.av, align 8, !tbaa !330
  %i.bus = load ptr, ptr %i.al, align 8, !tbaa !336
  %i.but = getelementptr inbounds nuw [16 x i8], ptr %i.bus, i64 %i.buf ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !293
  %i.buv = getelementptr inbounds nuw i8, ptr %i.but, i64 8
  %i.buw = load i64, ptr %i.buv, align 8, !tbaa !337
end_hunk_1
begin_hunk_2_@Ins_MDRP:bb.a
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cu = sub nsw i64 0, %i.cp
  %i.cv = icmp slt i64 %.1, 0
  %spec.select107 = select i1 %i.cv, i64 %i.cu, i64 %i.cp
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.2 = phi i64 [ %.1, %bb.l ], [ %spec.select107, %bb.m ], [ %.1, %bb.k ] ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !315 ; 3 uses
  %i.cz = zext i8 %i.cy to i32                    ; 2 uses
  %i.da = and i32 %i.cz, 3
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !226 ; 3 uses
  %i.de = and i32 %i.cz, 4
  %.not101 = icmp eq i32 %i.de, 0
  br i1 %.not101, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !351
  %i.dh = tail call i64 %i.dg(ptr noundef nonnull %0, i64 noundef %.2, i64 noundef %i.dd) #21
  %.pre = load i8, ptr %i.cx, align 8, !tbaa !315
  br label %Round_None.exit

bb.p:                                             ; preds = %bb.n
  %i.di = icmp sgt i64 %.2, -1
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dj = add i64 %i.dd, %.2
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.dj, i64 0)
  br label %Round_None.exit

bb.r:                                             ; preds = %bb.p
  %i.dk = sub i64 %.2, %i.dd
  %spec.store.select1.i = tail call i64 @llvm.smin.i64(i64 %i.dk, i64 0)
  br label %Round_None.exit

Round_None.exit:                                  ; preds = %bb.r, %bb.q, %bb.o
  %i.dl = phi i8 [ %.pre, %bb.o ], [ %i.cy, %bb.q ], [ %i.cy, %bb.r ]
  %.092 = phi i64 [ %i.dh, %bb.o ], [ %spec.store.select.i, %bb.q ], [ %spec.store.select1.i, %bb.r ] ; 3 uses
  %i.dm = and i8 %i.dl, 8
  %.not102 = icmp eq i8 %i.dm, 0
  br i1 %.not102, label %bb.v, label %bb.s

bb.s:                                             ; preds = %Round_None.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !352 ; 2 uses
  %i.dp = icmp sgt i64 %.2, -1
  br i1 %i.dp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %spec.select = tail call i64 @llvm.smax.i64(i64 %.092, i64 %i.do)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dq = sub i64 0, %i.do
  %spec.select106 = tail call i64 @llvm.smin.i64(i64 %.092, i64 %i.dq)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %Round_None.exit
  %.294 = phi i64 [ %.092, %Round_None.exit ], [ %spec.select, %bb.t ], [ %spec.select106, %bb.u ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !330
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !335
  %i.dv = and i64 %.0.val, 65535
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dv ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !293
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !341
  %i.ea = load i16, ptr %i.g, align 8, !tbaa !343
  %i.eb = zext i16 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.eb ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !293
  %i.ee = sub i64 %i.dx, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !337
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !337
  %i.ej = sub i64 %i.eg, %i.ei
  %i.ek = tail call i64 %i.ds(ptr noundef nonnull %0, i64 noundef %i.ee, i64 noundef %i.ej) #21
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !328
  %i.en = sub i64 %.294, %i.ek
  tail call void %i.em(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i16 noundef zeroext %i.a, i64 noundef %i.en) #21
  br label %bb.w

bb.w:                                             ; preds = %bb.c, %bb.d, %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 8, !tbaa !343
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 466
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !344
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i16 %i.a, ptr %i.er, align 4, !tbaa !345
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.et = load i8, ptr %i.es, align 8, !tbaa !315
  %i.eu = and i8 %i.et, 16
  %.not104 = icmp eq i8 %i.eu, 0
  br i1 %.not104, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i16 %i.a, ptr %i.eo, align 8, !tbaa !343
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Ins_PUSHW(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !251  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.d = load i8, ptr %i.c, align 8, !tbaa !315   ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = add nsw i32 %i.e, -183                   ; 5 uses
  %i.g = shl nsw i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.k = load i64, ptr %i.j, align 8, !tbaa !250
  %.not = icmp slt i64 %i.i, %i.k
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 131, ptr %i.l, align 8, !tbaa !314
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !210
  %i.o = add nsw i64 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !317
  %i.r = sub i64 %i.o, %i.q
  %i.s = trunc i64 %i.r to i32
  %.not23 = icmp ult i32 %i.f, %i.s
  br i1 %.not23, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.t = icmp ugt i8 %i.d, -73
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !249  ; 6 uses
  %wide.trip.count = zext i32 %i.f to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %i.f, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 130, ptr %i.x, align 8, !tbaa !314
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %.02124 = phi i64 [ %i.b, %.lr.ph.new ], [ %i.aq, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.y = getelementptr i8, ptr %i.v, i64 %.02124
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !227
  %i.ab = zext i8 %i.aa to i16
  %i.ac = shl nuw i16 %i.ab, 8
  %i.ad = sext i16 %i.ac to i64
  %i.ae = add nsw i64 %.02124, 2                  ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !227
  %i.ah = zext i8 %i.ag to i64
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !226
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.ae
  %i.al = getelementptr i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !227
  %i.an = zext i8 %i.am to i16
  %i.ao = shl nuw i16 %i.an, 8
  %i.ap = sext i16 %i.ao to i64
  %i.aq = add nsw i64 %.02124, 4                  ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.v, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !227
  %i.at = zext i8 %i.as to i64
  %i.au = or disjoint i64 %i.ap, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !226
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !482

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.02124.epil.init = phi i64 [ %i.b, %.lr.ph ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.ax = getelementptr i8, ptr %i.v, i64 %.02124.epil.init
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !227
  %i.ba = zext i8 %i.az to i16
  %i.bb = shl nuw i16 %i.ba, 8
  %i.bc = sext i16 %i.bb to i64
  %i.bd = add nsw i64 %.02124.epil.init, 2        ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.v, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !227
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !226
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.021.lcssa = phi i64 [ %i.b, %.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.bd, %.epil.preheader ]
  store i64 %.021.lcssa, ptr %i.a, align 8, !tbaa !251
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Ins_PUSHB(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !251  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.d = load i8, ptr %i.c, align 8, !tbaa !315   ; 3 uses
  %i.e = zext i8 %i.d to i32
  %i.f = add nsw i32 %i.e, -175                   ; 3 uses
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.b, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.j = load i64, ptr %i.i, align 8, !tbaa !250
  %.not = icmp slt i64 %i.h, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 131, ptr %i.k, align 8, !tbaa !314
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !210
  %i.n = add nsw i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !317
  %i.q = sub i64 %i.n, %i.p
  %i.r = trunc i64 %i.q to i32
  %.not20 = icmp ult i32 %i.f, %i.r
  br i1 %.not20, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.s = icmp ugt i8 %i.d, -81
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !249  ; 5 uses
  %wide.trip.count = zext i32 %i.f to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.v = add nsw i8 %i.d, 80
  %i.w = icmp ult i8 %i.v, 3
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 130, ptr %i.x, align 8, !tbaa !314
  br label %bb.g

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %.01821 = phi i64 [ %i.b, %.lr.ph.new ], [ %i.ap, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.y = getelementptr i8, ptr %i.u, i64 %.01821
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !227
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !226
  %i.ad = getelementptr i8, ptr %i.u, i64 %.01821
  %i.ae = getelementptr i8, ptr %i.ad, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !227
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !226
  %i.aj = getelementptr i8, ptr %i.u, i64 %.01821
  %i.ak = getelementptr i8, ptr %i.aj, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !227
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !226
  %i.ap = add nsw i64 %.01821, 4                  ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !227
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.as, ptr %i.au, align 8, !tbaa !226
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !483

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.01821.epil.init = phi i64 [ %i.b, %.lr.ph ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 2 uses
  %.01821.epil = phi i64 [ %.01821.epil.init, %.epil.preheader ], [ %i.av, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.av = add nsw i64 %.01821.epil, 1             ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.u, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !227
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !226
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !484

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %.preheader
  %.018.lcssa = phi i64 [ %i.b, %.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %bb.f ]
  store i64 %.018.lcssa, ptr %i.a, align 8, !tbaa !251
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  ret void
}

declare hidden ptr @ft_service_list_lookup(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @FT_Get_Module(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @TT_Set_MM_Blend(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) #2 {
bb.a:
  %i.a = tail call fastcc i32 @tt_set_mm_blend(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext 1) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %.not15 = icmp eq i32 %1, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !485

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.d = load i64, ptr %i.c, align 8, !tbaa !226
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.1 = phi i32 [ %i.a, %bb.a ], [ 0, %.preheader ], [ -2, %.lr.ph ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @TT_Get_MM_Blend(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @TT_Get_MM_Var(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  %.not36 = icmp eq i32 %i.d, 0
  br i1 %.not36, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !486
  %.not37 = icmp eq ptr %i.g, null
  br i1 %.not37, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc i32 @tt_set_mm_blend(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1) ; 2 uses
  %.not38 = icmp eq i32 %i.h, 0
  br i1 %.not38, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load i32, ptr %i.e, align 8, !tbaa !466  ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.i) ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1201
  %i.k = load i8, ptr %i.j, align 1, !tbaa !487
  %.not39 = icmp eq i8 %i.k, 0
  %.not50 = icmp eq i32 %spec.select, 0           ; 2 uses
  br i1 %.not39, label %.preheader, label %.preheader41

.preheader41:                                     ; preds = %bb.e
  br i1 %.not50, label %.loopexit40, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader41
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !472  ; 7 uses
  %wide.trip.count = zext i32 %spec.select to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %spec.select, 8
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <2 x i64>, ptr %i.p, align 8, !tbaa !226
  %wide.load65 = load <2 x i64>, ptr %i.q, align 8, !tbaa !226
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x i64> %wide.load, ptr %i.r, align 8, !tbaa !226
  store <2 x i64> %wide.load65, ptr %i.s, align 8, !tbaa !226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !488

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit40, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.prol
  %i.v = load i64, ptr %i.u, align 8, !tbaa !226
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  store i64 %i.v, ptr %i.w, align 8, !tbaa !226
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !489

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.x = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit40, label %scalar.ph

.preheader:                                       ; preds = %bb.e
  br i1 %.not50, label %.loopexit40, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %.preheader
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %1)
  %umin = zext i32 %i.z to i64
  %i.aa = shl nuw nsw i64 %umin, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %i.aa, i1 false), !tbaa !226
  br label %.loopexit40

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !226
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !226
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !226
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !226
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.1
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !226
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !226
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.2
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !226
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  store i64 %i.al, ptr %i.am, align 8, !tbaa !226
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit40, label %scalar.ph, !llvm.loop !490

.loopexit40:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph45.preheader, %.preheader41, %.preheader
  %.2 = phi i32 [ %spec.select, %.lr.ph45.preheader ], [ 0, %.preheader ], [ 0, %.preheader41 ], [ %spec.select, %middle.block ], [ %spec.select, %scalar.ph ], [ %spec.select, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.an = icmp ult i32 %.2, %1
  br i1 %i.an, label %.lr.ph48.preheader, label %.loopexit

.lr.ph48.preheader:                               ; preds = %.loopexit40
  %i.ao = zext i32 %.2 to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %scevgep = getelementptr i8, ptr %2, i64 %i.ap
  %i.aq = xor i32 %.2, -1
  %i.ar = add i32 %1, %i.aq
  %i.as = zext i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.au, i1 false), !tbaa !226
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph48.preheader, %.loopexit40, %bb.d, %bb.b
  %.031 = phi i32 [ %i.h, %bb.d ], [ %i.d, %bb.b ], [ 0, %.loopexit40 ], [ 0, %.lr.ph48.preheader ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define internal i32 @TT_Get_MM_Var(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %2 = alloca %struct.GX_FVar_Head_, align 8      ; 9 uses
  %3 = alloca %struct.fvar_axis_, align 8         ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !491
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = lshr i32 %i.k, 16                        ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 3 uses
  %.not = icmp eq ptr %i.n, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !492
  %i.q = call i32 %i.p(ptr noundef nonnull %0, i64 noundef 1719034226, ptr noundef %i.f, ptr noundef nonnull %i.a) #21 ; 3 uses
  store i32 %i.q, ptr %i.b, align 4, !tbaa !187
  %.not249 = icmp eq i32 %i.q, 0
  br i1 %.not249, label %bb.c, label %.loopexit280

bb.c:                                             ; preds = %bb.b
  %i.r = call i64 @FT_Stream_Pos(ptr noundef %i.f) #21
  %i.s = call i32 @FT_Stream_ReadFields(ptr noundef %i.f, ptr noundef nonnull @TT_Get_MM_Var.fvar_fields, ptr noundef nonnull %2) #21 ; 3 uses
  store i32 %i.s, ptr %i.b, align 4, !tbaa !187
  %.not250 = icmp eq i32 %i.s, 0
  br i1 %.not250, label %bb.d, label %.loopexit280

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.u = load i16, ptr %i.t, align 2, !tbaa !493
  %i.v = zext i16 %i.u to i32
  %i.w = icmp samesign ult i32 %i.l, %i.v
  br i1 %i.w, label %.loopexit280, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i16, ptr %i.x, align 8, !tbaa !495
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !496
  %i.ab = call ptr @ft_mem_alloc(ptr noundef %i.h, i64 noundef 152, ptr noundef nonnull %i.b) #21 ; 3 uses
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !104
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !187 ; 2 uses
  %.not251 = icmp eq i32 %i.ac, 0
  br i1 %.not251, label %bb.f, label %.loopexit280

bb.f:                                             ; preds = %bb.e
  %i.ad = zext i16 %i.aa to i32
  %i.ae = shl nuw nsw i32 %i.ad, 2
  %i.af = add nuw nsw i32 %i.ae, 6
  %i.ag = zext i16 %i.y to i32
  %i.ah = icmp ne i32 %i.af, %i.ag
  %i.ai = load i16, ptr %i.z, align 2, !tbaa !496
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !466
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ak = load i32, ptr %i.n, align 8, !tbaa !466
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = phi ptr [ %i.ab, %bb.f ], [ %i.n, %bb.g ]
  %.0239 = phi i64 [ %i.r, %bb.f ], [ 0, %bb.g ]
  %.0221 = phi i1 [ %i.ah, %bb.f ], [ true, %bb.g ] ; 2 uses
  %.0220 = phi i32 [ %i.aj, %bb.f ], [ %i.ak, %bb.g ] ; 17 uses
  %i.am = zext i32 %.0220 to i64                  ; 16 uses
  %i.an = shl nuw nsw i64 %i.am, 1
  %i.ao = add nuw nsw i64 %i.an, 6
  %i.ap = and i64 %i.ao, 17179869176              ; 3 uses
  %i.aq = mul nuw nsw i64 %i.am, 48               ; 3 uses
  %i.ar = shl nuw nsw i32 %i.l, 4
  %i.as = zext nneg i32 %i.ar to i64              ; 3 uses
  %i.at = mul i32 %.0220, %i.l
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3                ; 3 uses
  br i1 %.not, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  %i.aw = mul i32 %.0220, 5
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.as, 32
  %i.az = add nuw nsw i64 %i.ay, %i.aq
  %i.ba = add nuw nsw i64 %i.az, %i.ax
  %i.bb = add nuw nsw i64 %i.ba, %i.av
  %i.bc = add nuw nsw i64 %i.bb, %i.ap            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !497
  %i.be = call ptr @ft_mem_alloc(ptr noundef %i.h, i64 noundef %i.bc, ptr noundef nonnull %i.b) #21 ; 7 uses
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !187 ; 2 uses
  %.not252 = icmp eq i32 %i.bf, 0
  br i1 %.not252, label %bb.j, label %.loopexit280

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !498
  store i32 %.0220, ptr %i.be, align 8, !tbaa !499
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 -1, ptr %i.bi, align 4, !tbaa !503
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %i.l, ptr %i.bj, align 8, !tbaa !504
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ap ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !505
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.aq ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 3 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !506
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.as ; 3 uses
  %.not322 = icmp eq i32 %i.l, 0
  br i1 %.not322, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bq = icmp ult i32 %i.k, 262144
  br i1 %i.bq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0231283 = phi ptr [ %i.bp, %.lr.ph.preheader.new ], [ %i.cb, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv
  store ptr %.0231283, ptr %i.br, align 8, !tbaa !507
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0231283, i64 %i.am ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !507
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.am ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !507
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.am ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !507
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.am ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !509

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0231283.epil.init = phi ptr [ %i.bp, %.lr.ph.preheader ], [ %i.cb, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod385 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod385)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0231283.epil = phi ptr [ %.0231283.epil.init, %.lr.ph.epil.preheader ], [ %i.cd, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv.epil
  store ptr %.0231283.epil, ptr %i.cc, align 8, !tbaa !507
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0231283.epil, i64 %i.am
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !510

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.j
  %.not323 = icmp eq i32 %.0220, 0                ; 4 uses
  br i1 %.not323, label %._crit_edge288, label %.lr.ph287.preheader

.lr.ph287.preheader:                              ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.av ; 2 uses
  %xtraiter386 = and i64 %i.am, 3                 ; 3 uses
  %i.cf = icmp ult i32 %.0220, 4
  br i1 %i.cf, label %.lr.ph287.epil.preheader, label %.lr.ph287.preheader.new

.lr.ph287.preheader.new:                          ; preds = %.lr.ph287.preheader
  %unroll_iter390 = and i64 %i.am, 4294967292
  br label %.lr.ph287

.lr.ph287:                                        ; preds = %.lr.ph287, %.lr.ph287.preheader.new
  %indvars.iv332 = phi i64 [ 0, %.lr.ph287.preheader.new ], [ %indvars.iv.next333.3, %.lr.ph287 ] ; 5 uses
  %.0228285 = phi ptr [ %i.ce, %.lr.ph287.preheader.new ], [ %i.cq, %.lr.ph287 ] ; 5 uses
  %niter391 = phi i64 [ 0, %.lr.ph287.preheader.new ], [ %niter391.next.3, %.lr.ph287 ]
  %i.cg = getelementptr inbounds nuw [48 x i8], ptr %i.bl, i64 %indvars.iv332
  store ptr %.0228285, ptr %i.cg, align 8, !tbaa !511
  %i.ch = getelementptr inbounds nuw i8, ptr %.0228285, i64 5
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.bl, i64 %indvars.iv332
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !511
  %i.ck = getelementptr inbounds nuw i8, ptr %.0228285, i64 10
  %i.cl = getelementptr inbounds nuw [48 x i8], ptr %i.bl, i64 %indvars.iv332
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !511
  %i.cn = getelementptr inbounds nuw i8, ptr %.0228285, i64 15
  %i.co = getelementptr inbounds nuw [48 x i8], ptr %i.bl, i64 %indvars.iv332
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 144
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !511
  %i.cq = getelementptr inbounds nuw i8, ptr %.0228285, i64 20 ; 2 uses
  %indvars.iv.next333.3 = add nuw nsw i64 %indvars.iv332, 4 ; 2 uses
  %niter391.next.3 = add nuw i64 %niter391, 4     ; 2 uses
  %niter391.ncmp.3 = icmp eq i64 %niter391.next.3, %unroll_iter390
  br i1 %niter391.ncmp.3, label %._crit_edge288.loopexit.unr-lcssa, label %.lr.ph287, !llvm.loop !513

._crit_edge288.loopexit.unr-lcssa:                ; preds = %.lr.ph287
  %lcmp.mod388.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod388.not, label %._crit_edge288, label %.lr.ph287.epil.preheader

.lr.ph287.epil.preheader:                         ; preds = %._crit_edge288.loopexit.unr-lcssa, %.lr.ph287.preheader
  %indvars.iv332.epil.init = phi i64 [ 0, %.lr.ph287.preheader ], [ %indvars.iv.next333.3, %._crit_edge288.loopexit.unr-lcssa ]
  %.0228285.epil.init = phi ptr [ %i.ce, %.lr.ph287.preheader ], [ %i.cq, %._crit_edge288.loopexit.unr-lcssa ]
  %lcmp.mod389 = icmp ne i64 %xtraiter386, 0
  call void @llvm.assume(i1 %lcmp.mod389)
  br label %.lr.ph287.epil

.lr.ph287.epil:                                   ; preds = %.lr.ph287.epil, %.lr.ph287.epil.preheader
  %indvars.iv332.epil = phi i64 [ %indvars.iv332.epil.init, %.lr.ph287.epil.preheader ], [ %indvars.iv.next333.epil, %.lr.ph287.epil ] ; 2 uses
  %.0228285.epil = phi ptr [ %.0228285.epil.init, %.lr.ph287.epil.preheader ], [ %i.cs, %.lr.ph287.epil ] ; 2 uses
  %epil.iter387 = phi i64 [ 0, %.lr.ph287.epil.preheader ], [ %epil.iter387.next, %.lr.ph287.epil ]
  %i.cr = getelementptr inbounds nuw [48 x i8], ptr %i.bl, i64 %indvars.iv332.epil
  store ptr %.0228285.epil, ptr %i.cr, align 8, !tbaa !511
  %i.cs = getelementptr inbounds nuw i8, ptr %.0228285.epil, i64 5
  %indvars.iv.next333.epil = add nuw nsw i64 %indvars.iv332.epil, 1
  %epil.iter387.next = add i64 %epil.iter387, 1   ; 2 uses
  %epil.iter387.cmp.not = icmp eq i64 %epil.iter387.next, %xtraiter386
  br i1 %epil.iter387.cmp.not, label %._crit_edge288, label %.lr.ph287.epil, !llvm.loop !514

._crit_edge288:                                   ; preds = %._crit_edge288.loopexit.unr-lcssa, %.lr.ph287.epil, %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = load i16, ptr %i.ct, align 8, !tbaa !515
  %i.cv = zext i16 %i.cu to i64
  %i.cw = add i64 %.0239, %i.cv
  %i.cx = call i32 @FT_Stream_Seek(ptr noundef %i.f, i64 noundef %i.cw) #21 ; 3 uses
  store i32 %i.cx, ptr %i.b, align 4, !tbaa !187
  %.not253 = icmp eq i32 %i.cx, 0
  br i1 %.not253, label %bb.k, label %.loopexit280

bb.k:                                             ; preds = %._crit_edge288
  br i1 %.not323, label %._crit_edge294, label %.lr.ph293

.lr.ph293:                                        ; preds = %bb.k
  %i.cy = load ptr, ptr %i.bm, align 8, !tbaa !505
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 34
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph293, %bb.q
  %.0218291 = phi ptr [ %i.bk, %.lr.ph293 ], [ %i.eo, %bb.q ] ; 2 uses
  %.0225290 = phi ptr [ %i.cy, %.lr.ph293 ], [ %i.en, %bb.q ] ; 11 uses
  %.2237289 = phi i32 [ 0, %.lr.ph293 ], [ %i.ep, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.dd = call i32 @FT_Stream_ReadFields(ptr noundef %i.f, ptr noundef nonnull @TT_Get_MM_Var.fvaraxis_fields, ptr noundef nonnull %3) #21 ; 3 uses
  store i32 %i.dd, ptr %i.b, align 4, !tbaa !187
  %.not268 = icmp eq i32 %i.dd, 0
  br i1 %.not268, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.de = load i64, ptr %3, align 8, !tbaa !516   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0225290, i64 32 ; 4 uses
  store i64 %i.de, ptr %i.df, align 8, !tbaa !518
  %i.dg = getelementptr inbounds nuw i8, ptr %.0225290, i64 8 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0225290, i64 16
  %i.di = load <2 x i64>, ptr %i.cz, align 8, !tbaa !226
  store <2 x i64> %i.di, ptr %i.dg, align 8, !tbaa !226
  %i.dj = load i64, ptr %i.da, align 8, !tbaa !519
  %i.dk = getelementptr inbounds nuw i8, ptr %.0225290, i64 24 ; 3 uses
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !520
  %i.dl = load i16, ptr %i.db, align 2, !tbaa !521
  %i.dm = zext i16 %i.dl to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %.0225290, i64 40
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !522
  %i.do = lshr i64 %i.de, 24
  %i.dp = trunc i64 %i.do to i8
  %i.dq = load ptr, ptr %.0225290, align 8, !tbaa !511
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !227
  %i.dr = load i64, ptr %i.df, align 8, !tbaa !518
  %i.ds = lshr i64 %i.dr, 16
  %i.dt = trunc i64 %i.ds to i8
  %i.du = load ptr, ptr %.0225290, align 8, !tbaa !511
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !227
  %i.dw = load i64, ptr %i.df, align 8, !tbaa !518
  %i.dx = lshr i64 %i.dw, 8
  %i.dy = trunc i64 %i.dx to i8
  %i.dz = load ptr, ptr %.0225290, align 8, !tbaa !511
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  store i8 %i.dy, ptr %i.ea, align 1, !tbaa !227
  %i.eb = load i64, ptr %i.df, align 8, !tbaa !518
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = load ptr, ptr %.0225290, align 8, !tbaa !511
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 3
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !227
  %i.ef = load ptr, ptr %.0225290, align 8, !tbaa !511
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i8 0, ptr %i.eg, align 1, !tbaa !227
  %i.eh = load i16, ptr %i.dc, align 8, !tbaa !523
  store i16 %i.eh, ptr %.0218291, align 2, !tbaa !155
  %i.ei = load i64, ptr %i.dg, align 8, !tbaa !524
  %i.ej = load i64, ptr %i.dh, align 8, !tbaa !525 ; 4 uses
  %i.ek = icmp sgt i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.el = load i64, ptr %i.dk, align 8, !tbaa !520
  %i.em = icmp sgt i64 %i.ej, %i.el
  br i1 %i.em, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  store i64 %i.ej, ptr %i.dg, align 8, !tbaa !524
  store i64 %i.ej, ptr %i.dk, align 8, !tbaa !520
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.loopexit280

bb.q:                                             ; preds = %bb.n, %bb.o
  %i.en = getelementptr inbounds nuw i8, ptr %.0225290, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %.0218291, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ep = add nuw i32 %.2237289, 1                ; 2 uses
  %exitcond337.not = icmp eq i32 %i.ep, %.0220
  br i1 %exitcond337.not, label %._crit_edge294, label %bb.l, !llvm.loop !526

._crit_edge294:                                   ; preds = %bb.q, %bb.k
  %i.eq = call ptr @ft_mem_realloc(ptr noundef %i.h, i64 noundef 8, i64 noundef 0, i64 noundef %i.au, ptr noundef null, ptr noundef nonnull %i.b) #21
  %i.er = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  store ptr %i.eq, ptr %i.es, align 8, !tbaa !527
  %i.et = load i32, ptr %i.b, align 4, !tbaa !187 ; 2 uses
  %.not254 = icmp eq i32 %i.et, 0
  br i1 %.not254, label %bb.r, label %.loopexit280

bb.r:                                             ; preds = %._crit_edge294
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 4 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !493
  %.not255 = icmp eq i16 %i.ev, 0
  br i1 %.not255, label %._crit_edge305, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !528
  %.not256 = icmp eq i8 %i.ex, 0
  br i1 %.not256, label %bb.t, label %.lr.ph304

bb.t:                                             ; preds = %bb.s
  %i.ey = call i64 @FT_Stream_Pos(ptr noundef %i.f) #21
  call fastcc void @ft_var_load_avar(ptr noundef nonnull %0)
  %i.ez = call i32 @FT_Stream_Seek(ptr noundef %i.f, i64 noundef %i.ey) #21 ; 3 uses
  store i32 %i.ez, ptr %i.b, align 4, !tbaa !187
  %.not257 = icmp eq i32 %i.ez, 0
  br i1 %.not257, label %bb.u, label %.loopexit280

bb.u:                                             ; preds = %bb.t
  %.pre = load i16, ptr %i.eu, align 2, !tbaa !493
  %.not325 = icmp eq i16 %.pre, 0
  br i1 %.not325, label %._crit_edge305, label %.lr.ph304

.lr.ph304:                                        ; preds = %bb.s, %bb.u
  %i.fa = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !527
  %i.fd = load ptr, ptr %i.bo, align 8, !tbaa !506
  %i.fe = select i1 %.0221, i64 4, i64 6
  %i.ff = shl nuw nsw i64 %i.am, 2
  %i.fg = add nuw nsw i64 %i.ff, %i.fe
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph304, %bb.y
  %.0222302 = phi ptr [ %i.fd, %.lr.ph304 ], [ %i.fx, %bb.y ] ; 5 uses
  %.0230301 = phi ptr [ %i.fc, %.lr.ph304 ], [ %i.fv, %bb.y ] ; 2 uses
  %.3238300 = phi i32 [ 0, %.lr.ph304 ], [ %i.fw, %bb.y ]
  %i.fh = call i32 @FT_Stream_EnterFrame(ptr noundef %i.f, i64 noundef %i.fg) #21 ; 3 uses
  store i32 %i.fh, ptr %i.b, align 4, !tbaa !187
  %.not266 = icmp eq i32 %i.fh, 0
  br i1 %.not266, label %bb.w, label %.loopexit280

bb.w:                                             ; preds = %bb.v
  %i.fi = call zeroext i16 @FT_Stream_GetUShort(ptr noundef %i.f) #21
  %i.fj = zext i16 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %.0222302, i64 8
  store i32 %i.fj, ptr %i.fk, align 8, !tbaa !529
  %i.fl = call zeroext i16 @FT_Stream_GetUShort(ptr noundef %i.f) #21 ; 0 uses
  br i1 %.not323, label %._crit_edge299, label %.lr.ph298.preheader

.lr.ph298.preheader:                              ; preds = %bb.w
  %i.fm = load ptr, ptr %.0222302, align 8, !tbaa !507
  br label %.lr.ph298

.lr.ph298:                                        ; preds = %.lr.ph298.preheader, %.lr.ph298
  %.0223296 = phi ptr [ %i.fq, %.lr.ph298 ], [ %i.fm, %.lr.ph298.preheader ] ; 2 uses
  %.0233295 = phi i32 [ %i.fp, %.lr.ph298 ], [ 0, %.lr.ph298.preheader ]
  %i.fn = call i32 @FT_Stream_GetULong(ptr noundef %i.f) #21
  %i.fo = sext i32 %i.fn to i64
  store i64 %i.fo, ptr %.0223296, align 8, !tbaa !226
  %i.fp = add nuw i32 %.0233295, 1                ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0223296, i64 8
  %exitcond338.not = icmp eq i32 %i.fp, %.0220
  br i1 %exitcond338.not, label %._crit_edge299, label %.lr.ph298, !llvm.loop !530
end_hunk_2
begin_hunk_3_@TT_Get_MM_Var:bb.a
  call fastcc void @ft_var_to_normalized(ptr noundef %0, i32 noundef %.0220, ptr noundef %i.fu, ptr noundef %.0230301)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.0230301, i64 %i.am
  call void @FT_Stream_ExitFrame(ptr noundef %i.f) #21
  %i.fw = add nuw nsw i32 %.3238300, 1            ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0222302, i64 16
  %i.fy = load i16, ptr %i.eu, align 2, !tbaa !493
  %i.fz = zext i16 %i.fy to i32                   ; 2 uses
  %i.ga = icmp samesign ult i32 %i.fw, %i.fz
  br i1 %i.ga, label %bb.v, label %._crit_edge305, !llvm.loop !532

._crit_edge305:                                   ; preds = %bb.y, %bb.r, %bb.u
  %.lcssa = phi i32 [ 0, %bb.u ], [ 0, %bb.r ], [ %i.fz, %bb.y ]
  %.not258 = icmp eq i32 %i.l, %.lcssa
  br i1 %.not258, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %._crit_edge305
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 352 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !533
  %i.gf = call zeroext i8 %i.ge(ptr noundef %0, i16 noundef zeroext 17, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #21
  %.not259 = icmp eq i8 %i.gf, 0
  br i1 %.not259, label %bb.aa, label %.thread276

bb.aa:                                            ; preds = %bb.z
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !533
  %i.gh = call zeroext i8 %i.gg(ptr noundef nonnull %0, i16 noundef zeroext 2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #21
  %.not260 = icmp eq i8 %i.gh, 0
  br i1 %.not260, label %.loopexit, label %.thread276

.thread276:                                       ; preds = %bb.z, %bb.aa
  %.0214279 = phi i32 [ 2, %bb.aa ], [ 17, %bb.z ]
  %i.gi = load ptr, ptr %i.gd, align 8, !tbaa !533
  %i.gj = call zeroext i8 %i.gi(ptr noundef nonnull %0, i16 noundef zeroext 6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #21
  %.not262 = icmp eq i8 %i.gj, 0
  br i1 %.not262, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.thread276
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i32 %i.l, ptr %i.gk, align 4, !tbaa !534
  %i.gl = load ptr, ptr %i.bo, align 8, !tbaa !506
  %i.gm = load i16, ptr %i.eu, align 2, !tbaa !493
  %i.gn = zext i16 %i.gm to i64
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.gn ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i32 %.0214279, ptr %i.gp, align 8, !tbaa !529
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store i32 6, ptr %i.gq, align 4, !tbaa !531
  br i1 %.not323, label %.loopexit, label %.lr.ph310.preheader

.lr.ph310.preheader:                              ; preds = %bb.ab
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !507 ; 2 uses
  %i.gs = load ptr, ptr %i.bm, align 8, !tbaa !505 ; 2 uses
  %xtraiter392 = and i32 %.0220, 7                ; 3 uses
  %i.gt = icmp ult i32 %.0220, 8
  br i1 %i.gt, label %.lr.ph310.epil.preheader, label %.lr.ph310.preheader.new

.lr.ph310.preheader.new:                          ; preds = %.lr.ph310.preheader
  %unroll_iter396 = and i32 %.0220, -8
  br label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph310, %.lr.ph310.preheader.new
  %.1224308 = phi ptr [ %i.gr, %.lr.ph310.preheader.new ], [ %i.hs, %.lr.ph310 ] ; 9 uses
  %.2227307 = phi ptr [ %i.gs, %.lr.ph310.preheader.new ], [ %i.hr, %.lr.ph310 ] ; 9 uses
  %niter397 = phi i32 [ 0, %.lr.ph310.preheader.new ], [ %niter397.next.7, %.lr.ph310 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.2227307, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !525
  store i64 %i.gv, ptr %.1224308, align 8, !tbaa !226
  %i.gw = getelementptr inbounds nuw i8, ptr %.1224308, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.2227307, i64 64
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !525
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !226
  %i.gz = getelementptr inbounds nuw i8, ptr %.1224308, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %.2227307, i64 112
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !525
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !226
  %i.hc = getelementptr inbounds nuw i8, ptr %.1224308, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %.2227307, i64 160
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !525
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !226
  %i.hf = getelementptr inbounds nuw i8, ptr %.1224308, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %.2227307, i64 208
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !525
  store i64 %i.hh, ptr %i.hf, align 8, !tbaa !226
  %i.hi = getelementptr inbounds nuw i8, ptr %.1224308, i64 40
  %i.hj = getelementptr inbounds nuw i8, ptr %.2227307, i64 256
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !525
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !226
  %i.hl = getelementptr inbounds nuw i8, ptr %.1224308, i64 48
  %i.hm = getelementptr inbounds nuw i8, ptr %.2227307, i64 304
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !525
  store i64 %i.hn, ptr %i.hl, align 8, !tbaa !226
  %i.ho = getelementptr inbounds nuw i8, ptr %.1224308, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %.2227307, i64 352
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !525
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !226
  %i.hr = getelementptr inbounds nuw i8, ptr %.2227307, i64 384 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.1224308, i64 64 ; 2 uses
  %niter397.next.7 = add nuw i32 %niter397, 8     ; 2 uses
  %niter397.ncmp.7 = icmp eq i32 %niter397.next.7, %unroll_iter396
  br i1 %niter397.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph310, !llvm.loop !535

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph310
  %lcmp.mod394.not = icmp eq i32 %xtraiter392, 0
  br i1 %lcmp.mod394.not, label %.loopexit, label %.lr.ph310.epil.preheader

.lr.ph310.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph310.preheader
  %.1224308.epil.init = phi ptr [ %i.gr, %.lr.ph310.preheader ], [ %i.hs, %.loopexit.loopexit.unr-lcssa ]
  %.2227307.epil.init = phi ptr [ %i.gs, %.lr.ph310.preheader ], [ %i.hr, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod395 = icmp ne i32 %xtraiter392, 0
  call void @llvm.assume(i1 %lcmp.mod395)
  br label %.lr.ph310.epil

.lr.ph310.epil:                                   ; preds = %.lr.ph310.epil, %.lr.ph310.epil.preheader
  %.1224308.epil = phi ptr [ %i.hw, %.lr.ph310.epil ], [ %.1224308.epil.init, %.lr.ph310.epil.preheader ] ; 2 uses
  %.2227307.epil = phi ptr [ %i.hv, %.lr.ph310.epil ], [ %.2227307.epil.init, %.lr.ph310.epil.preheader ] ; 2 uses
  %epil.iter393 = phi i32 [ %epil.iter393.next, %.lr.ph310.epil ], [ 0, %.lr.ph310.epil.preheader ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.2227307.epil, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !525
  store i64 %i.hu, ptr %.1224308.epil, align 8, !tbaa !226
  %i.hv = getelementptr inbounds nuw i8, ptr %.2227307.epil, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %.1224308.epil, i64 8
  %epil.iter393.next = add i32 %epil.iter393, 1   ; 2 uses
  %epil.iter393.cmp.not = icmp eq i32 %epil.iter393.next, %xtraiter392
  br i1 %epil.iter393.cmp.not, label %.loopexit, label %.lr.ph310.epil, !llvm.loop !536

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph310.epil, %bb.ab, %.thread276, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %._crit_edge305
  call fastcc void @ft_var_load_mvar(ptr noundef %0)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.h
  %.not263 = icmp eq ptr %1, null
  br i1 %.not263, label %..loopexit280_crit_edge, label %bb.ae

..loopexit280_crit_edge:                          ; preds = %bb.ad
  %.pre347 = load i32, ptr %i.b, align 4, !tbaa !187
  br label %.loopexit280

bb.ae:                                            ; preds = %bb.ad
  %i.hx = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !498
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !497
  %i.ic = call ptr @ft_mem_dup(ptr noundef %i.h, ptr noundef %i.hz, i64 noundef %i.ib, ptr noundef nonnull %i.b) #21 ; 5 uses
  %i.id = load i32, ptr %i.b, align 4, !tbaa !187 ; 2 uses
  %.not264 = icmp eq i32 %i.id, 0
  br i1 %.not264, label %bb.af, label %.loopexit280

bb.af:                                            ; preds = %bb.ae
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ap ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !505
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.aq ; 7 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !506
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.as ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !504 ; 3 uses
  %.not328 = icmp eq i32 %i.il, 0
  br i1 %.not328, label %._crit_edge315, label %.lr.ph314.preheader

.lr.ph314.preheader:                              ; preds = %bb.af
  %wide.trip.count343 = zext i32 %i.il to i64     ; 2 uses
  %xtraiter398 = and i64 %wide.trip.count343, 3   ; 3 uses
  %i.im = icmp ult i32 %i.il, 4
  br i1 %i.im, label %.lr.ph314.epil.preheader, label %.lr.ph314.preheader.new

.lr.ph314.preheader.new:                          ; preds = %.lr.ph314.preheader
  %unroll_iter402 = and i64 %wide.trip.count343, 4294967292
  br label %.lr.ph314

.lr.ph314:                                        ; preds = %.lr.ph314, %.lr.ph314.preheader.new
  %indvars.iv340 = phi i64 [ 0, %.lr.ph314.preheader.new ], [ %indvars.iv.next341.3, %.lr.ph314 ] ; 5 uses
  %.1232311 = phi ptr [ %i.ij, %.lr.ph314.preheader.new ], [ %i.ix, %.lr.ph314 ] ; 2 uses
  %niter403 = phi i64 [ 0, %.lr.ph314.preheader.new ], [ %niter403.next.3, %.lr.ph314 ]
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %indvars.iv340
  store ptr %.1232311, ptr %i.in, align 8, !tbaa !507
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.1232311, i64 %i.am ; 2 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %indvars.iv340
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store ptr %i.io, ptr %i.iq, align 8, !tbaa !507
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.am ; 2 uses
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %indvars.iv340
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  store ptr %i.ir, ptr %i.it, align 8, !tbaa !507
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.am ; 2 uses
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %indvars.iv340
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  store ptr %i.iu, ptr %i.iw, align 8, !tbaa !507
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.am ; 2 uses
  %indvars.iv.next341.3 = add nuw nsw i64 %indvars.iv340, 4 ; 2 uses
  %niter403.next.3 = add nuw i64 %niter403, 4     ; 2 uses
  %niter403.ncmp.3 = icmp eq i64 %niter403.next.3, %unroll_iter402
  br i1 %niter403.ncmp.3, label %._crit_edge315.loopexit.unr-lcssa, label %.lr.ph314, !llvm.loop !537

._crit_edge315.loopexit.unr-lcssa:                ; preds = %.lr.ph314
  %lcmp.mod400.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod400.not, label %._crit_edge315, label %.lr.ph314.epil.preheader

.lr.ph314.epil.preheader:                         ; preds = %._crit_edge315.loopexit.unr-lcssa, %.lr.ph314.preheader
  %indvars.iv340.epil.init = phi i64 [ 0, %.lr.ph314.preheader ], [ %indvars.iv.next341.3, %._crit_edge315.loopexit.unr-lcssa ]
  %.1232311.epil.init = phi ptr [ %i.ij, %.lr.ph314.preheader ], [ %i.ix, %._crit_edge315.loopexit.unr-lcssa ]
  %lcmp.mod401 = icmp ne i64 %xtraiter398, 0
  call void @llvm.assume(i1 %lcmp.mod401)
  br label %.lr.ph314.epil

.lr.ph314.epil:                                   ; preds = %.lr.ph314.epil, %.lr.ph314.epil.preheader
  %indvars.iv340.epil = phi i64 [ %indvars.iv340.epil.init, %.lr.ph314.epil.preheader ], [ %indvars.iv.next341.epil, %.lr.ph314.epil ] ; 2 uses
  %.1232311.epil = phi ptr [ %.1232311.epil.init, %.lr.ph314.epil.preheader ], [ %i.iz, %.lr.ph314.epil ] ; 2 uses
  %epil.iter399 = phi i64 [ 0, %.lr.ph314.epil.preheader ], [ %epil.iter399.next, %.lr.ph314.epil ]
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %indvars.iv340.epil
  store ptr %.1232311.epil, ptr %i.iy, align 8, !tbaa !507
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.1232311.epil, i64 %i.am
  %indvars.iv.next341.epil = add nuw nsw i64 %indvars.iv340.epil, 1
  %epil.iter399.next = add i64 %epil.iter399, 1   ; 2 uses
  %epil.iter399.cmp.not = icmp eq i64 %epil.iter399.next, %xtraiter398
  br i1 %epil.iter399.cmp.not, label %._crit_edge315, label %.lr.ph314.epil, !llvm.loop !538

._crit_edge315:                                   ; preds = %._crit_edge315.loopexit.unr-lcssa, %.lr.ph314.epil, %bb.af
  %.not329 = icmp eq i32 %.0220, 0
  br i1 %.not329, label %._crit_edge321, label %.lr.ph320.preheader

.lr.ph320.preheader:                              ; preds = %._crit_edge315
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.av ; 2 uses
  %xtraiter404 = and i32 %.0220, 1
  %i.jb = icmp eq i32 %.0220, 1
  br i1 %i.jb, label %.lr.ph320.epil.preheader, label %.lr.ph320.preheader.new

.lr.ph320.preheader.new:                          ; preds = %.lr.ph320.preheader
  %unroll_iter408 = and i32 %.0220, -2
  br label %.lr.ph320

.lr.ph320:                                        ; preds = %bb.ao, %.lr.ph320.preheader.new
  %.3317 = phi ptr [ %i.if, %.lr.ph320.preheader.new ], [ %i.jj, %bb.ao ] ; 6 uses
  %.1229316 = phi ptr [ %i.ja, %.lr.ph320.preheader.new ], [ %i.ji, %bb.ao ] ; 3 uses
  %niter409 = phi i32 [ 0, %.lr.ph320.preheader.new ], [ %niter409.next.1, %bb.ao ]
  store ptr %.1229316, ptr %.3317, align 8, !tbaa !511
  %i.jc = getelementptr inbounds nuw i8, ptr %.3317, i64 32
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !518
  switch i64 %i.jd, label %.lr.ph320.1 [
    i64 2003265652, label %.sink.split
    i64 2003072104, label %bb.ag
    i64 1869640570, label %bb.ah
    i64 1936486004, label %bb.ai
    i64 1769234796, label %bb.aj
  ]

bb.ag:                                            ; preds = %.lr.ph320
  br label %.sink.split

bb.ah:                                            ; preds = %.lr.ph320
  br label %.sink.split

bb.ai:                                            ; preds = %.lr.ph320
  br label %.sink.split

bb.aj:                                            ; preds = %.lr.ph320
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph320, %bb.ah, %bb.aj, %bb.ai, %bb.ag
  %.str.10.sink = phi ptr [ @.str.10, %bb.ag ], [ @.str.12, %bb.ai ], [ @.str.13, %bb.aj ], [ @.str.11, %bb.ah ], [ @.str.9, %.lr.ph320 ]
  store ptr %.str.10.sink, ptr %.3317, align 8, !tbaa !511
  br label %.lr.ph320.1

.lr.ph320.1:                                      ; preds = %.sink.split, %.lr.ph320
  %i.je = getelementptr inbounds nuw i8, ptr %.1229316, i64 5
  %i.jf = getelementptr inbounds nuw i8, ptr %.3317, i64 48 ; 2 uses
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !511
  %i.jg = getelementptr inbounds nuw i8, ptr %.3317, i64 80
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !518
  switch i64 %i.jh, label %bb.ao [
    i64 2003265652, label %.sink.split.1
    i64 2003072104, label %bb.an
    i64 1869640570, label %bb.am
    i64 1936486004, label %bb.al
    i64 1769234796, label %bb.ak
  ]

bb.ak:                                            ; preds = %.lr.ph320.1
  br label %.sink.split.1

bb.al:                                            ; preds = %.lr.ph320.1
  br label %.sink.split.1

bb.am:                                            ; preds = %.lr.ph320.1
  br label %.sink.split.1

bb.an:                                            ; preds = %.lr.ph320.1
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %.lr.ph320.1
  %.str.10.sink.1 = phi ptr [ @.str.10, %bb.an ], [ @.str.12, %bb.al ], [ @.str.13, %bb.ak ], [ @.str.11, %bb.am ], [ @.str.9, %.lr.ph320.1 ]
  store ptr %.str.10.sink.1, ptr %i.jf, align 8, !tbaa !511
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split.1, %.lr.ph320.1
  %i.ji = getelementptr inbounds nuw i8, ptr %.1229316, i64 10 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.3317, i64 96 ; 2 uses
  %niter409.next.1 = add nuw i32 %niter409, 2     ; 2 uses
  %niter409.ncmp.1 = icmp eq i32 %niter409.next.1, %unroll_iter408
  br i1 %niter409.ncmp.1, label %._crit_edge321.loopexit.unr-lcssa, label %.lr.ph320, !llvm.loop !539

._crit_edge321.loopexit.unr-lcssa:                ; preds = %bb.ao
  %lcmp.mod406.not = icmp eq i32 %xtraiter404, 0
  br i1 %lcmp.mod406.not, label %._crit_edge321, label %.lr.ph320.epil.preheader

.lr.ph320.epil.preheader:                         ; preds = %._crit_edge321.loopexit.unr-lcssa, %.lr.ph320.preheader
  %.3317.epil.init = phi ptr [ %i.if, %.lr.ph320.preheader ], [ %i.jj, %._crit_edge321.loopexit.unr-lcssa ] ; 3 uses
  %.1229316.epil.init = phi ptr [ %i.ja, %.lr.ph320.preheader ], [ %i.ji, %._crit_edge321.loopexit.unr-lcssa ]
  %lcmp.mod407 = trunc i32 %.0220 to i1
  call void @llvm.assume(i1 %lcmp.mod407)
  store ptr %.1229316.epil.init, ptr %.3317.epil.init, align 8, !tbaa !511
  %i.jk = getelementptr inbounds nuw i8, ptr %.3317.epil.init, i64 32
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !518
  switch i64 %i.jl, label %._crit_edge321 [
    i64 2003265652, label %.sink.split.epil
    i64 2003072104, label %bb.as
    i64 1869640570, label %bb.ar
    i64 1936486004, label %bb.aq
    i64 1769234796, label %bb.ap
  ]

bb.ap:                                            ; preds = %.lr.ph320.epil.preheader
  br label %.sink.split.epil

bb.aq:                                            ; preds = %.lr.ph320.epil.preheader
  br label %.sink.split.epil

bb.ar:                                            ; preds = %.lr.ph320.epil.preheader
  br label %.sink.split.epil

bb.as:                                            ; preds = %.lr.ph320.epil.preheader
  br label %.sink.split.epil

.sink.split.epil:                                 ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %.lr.ph320.epil.preheader
  %.str.10.sink.epil = phi ptr [ @.str.10, %bb.as ], [ @.str.12, %bb.aq ], [ @.str.13, %bb.ap ], [ @.str.11, %bb.ar ], [ @.str.9, %.lr.ph320.epil.preheader ]
  store ptr %.str.10.sink.epil, ptr %.3317.epil.init, align 8, !tbaa !511
  br label %._crit_edge321

._crit_edge321:                                   ; preds = %._crit_edge321.loopexit.unr-lcssa, %.sink.split.epil, %.lr.ph320.epil.preheader, %._crit_edge315
  store ptr %i.ic, ptr %1, align 8, !tbaa !540
  br label %.loopexit280

.loopexit280:                                     ; preds = %bb.v, %bb.d, %..loopexit280_crit_edge, %bb.p, %bb.t, %._crit_edge321, %bb.ae, %._crit_edge294, %._crit_edge288, %bb.i, %bb.e, %bb.c, %bb.b
  %i.jm = phi i32 [ %.pre347, %..loopexit280_crit_edge ], [ 8, %bb.d ], [ %i.dd, %bb.p ], [ %i.ez, %bb.t ], [ 0, %._crit_edge321 ], [ %i.id, %bb.ae ], [ %i.et, %._crit_edge294 ], [ %i.cx, %._crit_edge288 ], [ %i.bf, %bb.i ], [ %i.ac, %bb.e ], [ %i.s, %bb.c ], [ %i.q, %bb.b ], [ %i.fh, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.jm
}

; Function Attrs: nounwind uwtable
define internal i32 @TT_Set_Var_Design(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !187
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @TT_Get_MM_Var(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !187
  %.not89 = icmp eq i32 %i.f, 0
  br i1 %.not89, label %._crit_edge132, label %.loopexit

._crit_edge132:                                   ; preds = %bb.b
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge132, %bb.a
  %i.g = phi ptr [ %.pre, %._crit_edge132 ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !498  ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !499  ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.j) ; 19 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !486  ; 2 uses
  %.not90 = icmp eq ptr %i.l, null
  br i1 %.not90, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = zext i32 %i.j to i64
  %i.n = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 8, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 2 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !486
  %i.o = load i32, ptr %i.a, align 4, !tbaa !187
  %.not91 = icmp eq i32 %i.o, 0
  br i1 %.not91, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %.not125 = icmp eq i32 %spec.select, 0
  br i1 %.not125, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %xtraiter = and i32 %spec.select, 1
  %i.q = icmp eq i32 %spec.select, 1
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %spec.select, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph.preheader.new
  %.071105 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %bb.h ]
  %.073104 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.x, %bb.h ] ; 3 uses
  %.075103 = phi ptr [ %i.p, %.lr.ph.preheader.new ], [ %i.y, %bb.h ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.r = load i64, ptr %.075103, align 8, !tbaa !226
  %i.s = load i64, ptr %.073104, align 8, !tbaa !226 ; 2 uses
  %.not99 = icmp eq i64 %i.r, %i.s
  br i1 %.not99, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i64 %i.s, ptr %.075103, align 8, !tbaa !226
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.1 = phi i8 [ 1, %bb.f ], [ %.071105, %.lr.ph ]
  %i.t = getelementptr inbounds nuw i8, ptr %.073104, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.075103, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !226
  %i.w = load i64, ptr %i.t, align 8, !tbaa !226  ; 2 uses
  %.not99.1 = icmp eq i64 %i.v, %i.w
  br i1 %.not99.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !226
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.1.1 = phi i8 [ 1, %bb.g ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.073104, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.075103, i64 16 ; 3 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !541

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.071105.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.073104.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %.075103.epil.init = phi ptr [ %i.p, %.lr.ph.preheader ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod149 = trunc i32 %spec.select to i1
  call void @llvm.assume(i1 %lcmp.mod149)
  %i.z = load i64, ptr %.075103.epil.init, align 8, !tbaa !226
  %i.aa = load i64, ptr %.073104.epil.init, align 8, !tbaa !226 ; 2 uses
  %.not99.epil = icmp eq i64 %i.z, %i.aa
  br i1 %.not99.epil, label %._crit_edge.loopexit.epilog-lcssa, label %bb.i

bb.i:                                             ; preds = %.lr.ph.epil.preheader
  store i64 %i.aa, ptr %.075103.epil.init, align 8, !tbaa !226
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.i, %.lr.ph.epil.preheader
  %.1.epil = phi i8 [ 1, %bb.i ], [ %.071105.epil.init, %.lr.ph.epil.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.075103.epil.init, i64 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.e
  %.075.lcssa = phi ptr [ %i.p, %bb.e ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %._crit_edge.loopexit.epilog-lcssa ] ; 8 uses
  %.071.lcssa = phi i8 [ 0, %bb.e ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %._crit_edge.loopexit.epilog-lcssa ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !129 ; 2 uses
  %i.ae = and i64 %i.ad, 2147418112
  %.not92 = icmp eq i64 %i.ae, 0
  %i.af = load i32, ptr %i.i, align 8, !tbaa !499 ; 8 uses
  %i.ag = icmp ult i32 %spec.select, %i.af        ; 2 uses
  br i1 %.not92, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  br i1 %i.ag, label %.lr.ph113.preheader, label %.loopexit100

.lr.ph113.preheader:                              ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !506
  %i.aj = lshr i64 %i.ad, 16
  %i.ak = and i64 %i.aj, 65535
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !507
  %i.ao = zext i32 %spec.select to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = sub nuw i32 %i.af, %spec.select
  %.neg = add i32 %spec.select, 1
  %xtraiter150 = and i32 %i.aq, 1
  %lcmp.mod151.not = icmp eq i32 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.lr.ph113.prol.loopexit, label %.lr.ph113.prol

.lr.ph113.prol:                                   ; preds = %.lr.ph113.preheader
  %i.ar = load i64, ptr %.075.lcssa, align 8, !tbaa !226
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !226 ; 2 uses
  %.not98.prol = icmp eq i64 %i.ar, %i.as
  br i1 %.not98.prol, label %.lr.ph113.prol.loopexit.unr-lcssa, label %bb.k

bb.k:                                             ; preds = %.lr.ph113.prol
  store i64 %i.as, ptr %.075.lcssa, align 8, !tbaa !226
  br label %.lr.ph113.prol.loopexit.unr-lcssa

.lr.ph113.prol.loopexit.unr-lcssa:                ; preds = %bb.k, %.lr.ph113.prol
  %.3.prol = phi i8 [ 1, %bb.k ], [ %.071.lcssa, %.lr.ph113.prol ] ; 2 uses
  %i.at = add nuw i32 %spec.select, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 8
  br label %.lr.ph113.prol.loopexit

.lr.ph113.prol.loopexit:                          ; preds = %.lr.ph113.prol.loopexit.unr-lcssa, %.lr.ph113.preheader
  %.3.lcssa.unr = phi i8 [ poison, %.lr.ph113.preheader ], [ %.3.prol, %.lr.ph113.prol.loopexit.unr-lcssa ]
  %.2111.unr = phi i8 [ %.071.lcssa, %.lr.ph113.preheader ], [ %.3.prol, %.lr.ph113.prol.loopexit.unr-lcssa ]
  %.174110.unr = phi ptr [ %i.ap, %.lr.ph113.preheader ], [ %i.au, %.lr.ph113.prol.loopexit.unr-lcssa ]
  %.176109.unr = phi ptr [ %.075.lcssa, %.lr.ph113.preheader ], [ %i.av, %.lr.ph113.prol.loopexit.unr-lcssa ]
  %.179108.unr = phi i32 [ %spec.select, %.lr.ph113.preheader ], [ %i.at, %.lr.ph113.prol.loopexit.unr-lcssa ]
  %i.aw = icmp eq i32 %i.af, %.neg
  br i1 %i.aw, label %.loopexit100, label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.prol.loopexit, %bb.n
  %.2111 = phi i8 [ %.3.1, %bb.n ], [ %.2111.unr, %.lr.ph113.prol.loopexit ]
  %.174110 = phi ptr [ %i.be, %bb.n ], [ %.174110.unr, %.lr.ph113.prol.loopexit ] ; 3 uses
  %.176109 = phi ptr [ %i.bf, %bb.n ], [ %.176109.unr, %.lr.ph113.prol.loopexit ] ; 4 uses
  %.179108 = phi i32 [ %i.bd, %bb.n ], [ %.179108.unr, %.lr.ph113.prol.loopexit ]
  %i.ax = load i64, ptr %.176109, align 8, !tbaa !226
  %i.ay = load i64, ptr %.174110, align 8, !tbaa !226 ; 2 uses
  %.not98 = icmp eq i64 %i.ax, %i.ay
  br i1 %.not98, label %.lr.ph113.1, label %bb.l

bb.l:                                             ; preds = %.lr.ph113
  store i64 %i.ay, ptr %.176109, align 8, !tbaa !226
  br label %.lr.ph113.1

.lr.ph113.1:                                      ; preds = %.lr.ph113, %bb.l
  %.3 = phi i8 [ 1, %bb.l ], [ %.2111, %.lr.ph113 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.174110, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.176109, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !226
  %i.bc = load i64, ptr %i.az, align 8, !tbaa !226 ; 2 uses
  %.not98.1 = icmp eq i64 %i.bb, %i.bc
  br i1 %.not98.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph113.1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !226
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph113.1
  %.3.1 = phi i8 [ 1, %bb.m ], [ %.3, %.lr.ph113.1 ] ; 2 uses
  %i.bd = add nuw i32 %.179108, 2                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.174110, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.176109, i64 16
  %exitcond128.not.1 = icmp eq i32 %i.bd, %i.af
  br i1 %exitcond128.not.1, label %.loopexit100, label %.lr.ph113, !llvm.loop !542

bb.o:                                             ; preds = %._crit_edge
  br i1 %i.ag, label %.lr.ph120.preheader, label %.loopexit100

.lr.ph120.preheader:                              ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !505
  %i.bi = zext i32 %spec.select to i64
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.bi ; 3 uses
  %i.bk = sub nuw i32 %i.af, %spec.select
  %.neg154 = add i32 %spec.select, 1
  %xtraiter152 = and i32 %i.bk, 1
  %lcmp.mod153.not = icmp eq i32 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol

.lr.ph120.prol:                                   ; preds = %.lr.ph120.preheader
  %i.bl = load i64, ptr %.075.lcssa, align 8, !tbaa !226
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !525 ; 2 uses
  %.not93.prol = icmp eq i64 %i.bl, %i.bn
  br i1 %.not93.prol, label %.lr.ph120.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph120.prol
  store i64 %i.bn, ptr %.075.lcssa, align 8, !tbaa !226
  br label %.lr.ph120.prol.loopexit.unr-lcssa

.lr.ph120.prol.loopexit.unr-lcssa:                ; preds = %bb.p, %.lr.ph120.prol
  %.5.prol = phi i8 [ 1, %bb.p ], [ %.071.lcssa, %.lr.ph120.prol ] ; 2 uses
  %i.bo = add nuw i32 %spec.select, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 8
  br label %.lr.ph120.prol.loopexit

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol.loopexit.unr-lcssa, %.lr.ph120.preheader
  %.5.lcssa.unr = phi i8 [ poison, %.lr.ph120.preheader ], [ %.5.prol, %.lr.ph120.prol.loopexit.unr-lcssa ]
  %.0118.unr = phi ptr [ %i.bj, %.lr.ph120.preheader ], [ %i.bp, %.lr.ph120.prol.loopexit.unr-lcssa ]
  %.4117.unr = phi i8 [ %.071.lcssa, %.lr.ph120.preheader ], [ %.5.prol, %.lr.ph120.prol.loopexit.unr-lcssa ]
  %.277116.unr = phi ptr [ %.075.lcssa, %.lr.ph120.preheader ], [ %i.bq, %.lr.ph120.prol.loopexit.unr-lcssa ]
  %.280115.unr = phi i32 [ %spec.select, %.lr.ph120.preheader ], [ %i.bo, %.lr.ph120.prol.loopexit.unr-lcssa ]
  %i.br = icmp eq i32 %i.af, %.neg154
  br i1 %i.br, label %.loopexit100, label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %bb.s
  %.0118 = phi ptr [ %i.ca, %bb.s ], [ %.0118.unr, %.lr.ph120.prol.loopexit ] ; 3 uses
  %.4117 = phi i8 [ %.5.1, %bb.s ], [ %.4117.unr, %.lr.ph120.prol.loopexit ]
  %.277116 = phi ptr [ %i.cb, %bb.s ], [ %.277116.unr, %.lr.ph120.prol.loopexit ] ; 4 uses
  %.280115 = phi i32 [ %i.bz, %bb.s ], [ %.280115.unr, %.lr.ph120.prol.loopexit ]
  %i.bs = load i64, ptr %.277116, align 8, !tbaa !226
  %i.bt = getelementptr inbounds nuw i8, ptr %.0118, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !525 ; 2 uses
  %.not93 = icmp eq i64 %i.bs, %i.bu
  br i1 %.not93, label %.lr.ph120.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph120
  store i64 %i.bu, ptr %.277116, align 8, !tbaa !226
  br label %.lr.ph120.1

.lr.ph120.1:                                      ; preds = %.lr.ph120, %bb.q
  %.5 = phi i8 [ 1, %bb.q ], [ %.4117, %.lr.ph120 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.277116, i64 8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !226
  %i.bx = getelementptr inbounds nuw i8, ptr %.0118, i64 64
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !525 ; 2 uses
  %.not93.1 = icmp eq i64 %i.bw, %i.by
  br i1 %.not93.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph120.1
  store i64 %i.by, ptr %i.bv, align 8, !tbaa !226
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph120.1
  %.5.1 = phi i8 [ 1, %bb.r ], [ %.5, %.lr.ph120.1 ] ; 2 uses
  %i.bz = add nuw i32 %.280115, 2                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0118, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %.277116, i64 16
  %exitcond129.not.1 = icmp eq i32 %i.bz, %i.af
  br i1 %exitcond129.not.1, label %.loopexit100, label %.lr.ph120, !llvm.loop !543

.loopexit100:                                     ; preds = %.lr.ph113.prol.loopexit, %bb.n, %.lr.ph120.prol.loopexit, %bb.s, %bb.j, %bb.o
  %.6 = phi i8 [ %.5.1, %bb.s ], [ %.071.lcssa, %bb.o ], [ %.071.lcssa, %bb.j ], [ %.5.lcssa.unr, %.lr.ph120.prol.loopexit ], [ %.3.lcssa.unr, %.lr.ph113.prol.loopexit ], [ %.3.1, %bb.n ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !472
  %i.ce = icmp eq ptr %i.cd, null
end_hunk_3
begin_hunk_4_@TT_Set_Var_Design:bb.a
  %exitcond131.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond131.not, label %.loopexit, label %.lr.ph123, !llvm.loop !544

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !226
  %.not97 = icmp eq i64 %i.cr, 0
  br i1 %.not97, label %bb.x, label %bb.y

bb.y:                                             ; preds = %.lr.ph123
  store i32 -2, ptr %i.a, align 4, !tbaa !187
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.b, %bb.d, %bb.t, %bb.w, %bb.y
  %.072 = phi ptr [ %i.ch, %bb.t ], [ %i.ch, %bb.w ], [ %i.ch, %bb.y ], [ null, %bb.b ], [ null, %bb.d ], [ %i.ch, %bb.x ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %.072) #21
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !187
  br label %bb.z

bb.z:                                             ; preds = %.loopexit100, %.loopexit
  %.082 = phi i32 [ %i.cs, %.loopexit ], [ -1, %.loopexit100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.082
}

; Function Attrs: nounwind uwtable
define internal i32 @TT_Get_Var_Design(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @TT_Get_MM_Var(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  %.not47 = icmp eq i32 %i.d, 0
  br i1 %.not47, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !486
  %.not48 = icmp eq ptr %i.g, null
  br i1 %.not48, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc i32 @tt_set_mm_blend(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1) ; 2 uses
  %.not49 = icmp eq i32 %i.h, 0
  br i1 %.not49, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load i32, ptr %i.e, align 8, !tbaa !466
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.i) ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !498
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !505  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1201
  %i.o = load i8, ptr %i.n, align 1, !tbaa !487
  %.not50 = icmp eq i8 %i.o, 0
  %.not66 = icmp eq i32 %spec.select, 0           ; 2 uses
  br i1 %.not50, label %.preheader, label %.preheader52

.preheader52:                                     ; preds = %bb.e
  br i1 %.not66, label %.loopexit51, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader52
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !486  ; 7 uses
  %wide.trip.count = zext i32 %spec.select to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %spec.select, 8
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.a
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 4 uses
  %i.s = mul nuw nsw i64 %n.vec, 48
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x i64>, ptr %i.u, align 8, !tbaa !226
  %wide.load89 = load <2 x i64>, ptr %i.v, align 8, !tbaa !226
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %wide.load, ptr %i.w, align 8, !tbaa !226
  store <2 x i64> %wide.load89, ptr %i.x, align 8, !tbaa !226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit51, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.03854.ph = phi ptr [ %i.m, %.lr.ph ], [ %i.t, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.03854.prol = phi ptr [ %i.ac, %scalar.ph.prol ], [ %.03854.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.prol
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !226
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !226
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03854.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !546

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa93.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.03854.unr = phi ptr [ %.03854.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.loopexit51, label %scalar.ph

.preheader:                                       ; preds = %bb.e
  br i1 %.not66, label %.loopexit51, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %.preheader
  %wide.trip.count75 = zext i32 %spec.select to i64 ; 2 uses
  %xtraiter94 = and i64 %wide.trip.count75, 3     ; 3 uses
  %i.af = icmp ult i32 %spec.select, 4
  br i1 %i.af, label %.lr.ph59.epil.preheader, label %.lr.ph59.preheader.new

.lr.ph59.preheader.new:                           ; preds = %.lr.ph59.preheader
  %unroll_iter = and i64 %wide.trip.count75, 4294967292
  br label %.lr.ph59

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.03854 = phi ptr [ %i.as, %scalar.ph ], [ %.03854.unr, %scalar.ph.prol.loopexit ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !226
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !226
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !226
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !226
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %i.an = load i64, ptr %i.am, align 8, !tbaa !226
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !226
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !226
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !226
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.03854, i64 192 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit51, label %scalar.ph, !llvm.loop !547

.lr.ph59:                                         ; preds = %.lr.ph59, %.lr.ph59.preheader.new
  %indvars.iv72 = phi i64 [ 0, %.lr.ph59.preheader.new ], [ %indvars.iv.next73.3, %.lr.ph59 ] ; 5 uses
  %.13957 = phi ptr [ %i.m, %.lr.ph59.preheader.new ], [ %i.bi, %.lr.ph59 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph59.preheader.new ], [ %niter.next.3, %.lr.ph59 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.13957, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !525
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72
  store i64 %i.au, ptr %i.av, align 8, !tbaa !226
  %i.aw = getelementptr inbounds nuw i8, ptr %.13957, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !525
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !226
  %i.ba = getelementptr inbounds nuw i8, ptr %.13957, i64 112
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !525
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !226
  %i.be = getelementptr inbounds nuw i8, ptr %.13957, i64 160
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !525
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !226
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.13957, i64 192 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit51.loopexit.unr-lcssa, label %.lr.ph59, !llvm.loop !548

.loopexit51.loopexit.unr-lcssa:                   ; preds = %.lr.ph59
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.loopexit51, label %.lr.ph59.epil.preheader

.lr.ph59.epil.preheader:                          ; preds = %.loopexit51.loopexit.unr-lcssa, %.lr.ph59.preheader
  %indvars.iv72.epil.init = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next73.3, %.loopexit51.loopexit.unr-lcssa ]
  %.13957.epil.init = phi ptr [ %i.m, %.lr.ph59.preheader ], [ %i.bi, %.loopexit51.loopexit.unr-lcssa ]
  %lcmp.mod97 = icmp ne i64 %xtraiter94, 0
  tail call void @llvm.assume(i1 %lcmp.mod97)
  br label %.lr.ph59.epil

.lr.ph59.epil:                                    ; preds = %.lr.ph59.epil, %.lr.ph59.epil.preheader
  %indvars.iv72.epil = phi i64 [ %indvars.iv72.epil.init, %.lr.ph59.epil.preheader ], [ %indvars.iv.next73.epil, %.lr.ph59.epil ] ; 2 uses
  %.13957.epil = phi ptr [ %.13957.epil.init, %.lr.ph59.epil.preheader ], [ %i.bm, %.lr.ph59.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph59.epil.preheader ], [ %epil.iter.next, %.lr.ph59.epil ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.13957.epil, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !525
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72.epil
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !226
  %indvars.iv.next73.epil = add nuw nsw i64 %indvars.iv72.epil, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.13957.epil, i64 48 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter94
  br i1 %epil.iter.cmp.not, label %.loopexit51, label %.lr.ph59.epil, !llvm.loop !549

.loopexit51:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.loopexit51.loopexit.unr-lcssa, %.lr.ph59.epil, %middle.block, %.preheader52, %.preheader
  %.240 = phi ptr [ %i.bm, %.lr.ph59.epil ], [ %i.m, %.preheader ], [ %i.m, %.preheader52 ], [ %i.t, %middle.block ], [ %i.bi, %.loopexit51.loopexit.unr-lcssa ], [ %.lcssa93.unr, %scalar.ph.prol.loopexit ], [ %i.as, %scalar.ph ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %.loopexit51.loopexit.unr-lcssa ], [ 0, %.preheader ], [ 0, %.preheader52 ], [ %spec.select, %middle.block ], [ %spec.select, %.lr.ph59.epil ], [ %spec.select, %scalar.ph ], [ %spec.select, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.bn = icmp ult i32 %.2, %1
  br i1 %i.bn, label %.lr.ph64.preheader, label %.loopexit

.lr.ph64.preheader:                               ; preds = %.loopexit51
  %i.bo = zext i32 %.2 to i64                     ; 4 uses
  %wide.trip.count80 = zext i32 %1 to i64         ; 3 uses
  %i.bp = sub nsw i64 %wide.trip.count80, %i.bo
  %xtraiter98 = and i64 %i.bp, 3                  ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol

.lr.ph64.prol:                                    ; preds = %.lr.ph64.preheader, %.lr.ph64.prol
  %indvars.iv77.prol = phi i64 [ %indvars.iv.next78.prol, %.lr.ph64.prol ], [ %i.bo, %.lr.ph64.preheader ] ; 2 uses
  %.34162.prol = phi ptr [ %i.bt, %.lr.ph64.prol ], [ %.240, %.lr.ph64.preheader ] ; 2 uses
  %prol.iter100 = phi i64 [ %prol.iter100.next, %.lr.ph64.prol ], [ 0, %.lr.ph64.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.34162.prol, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !525
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv77.prol
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !226
  %indvars.iv.next78.prol = add nuw nsw i64 %indvars.iv77.prol, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.34162.prol, i64 48 ; 2 uses
  %prol.iter100.next = add i64 %prol.iter100, 1   ; 2 uses
  %prol.iter100.cmp.not = icmp eq i64 %prol.iter100.next, %xtraiter98
  br i1 %prol.iter100.cmp.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol, !llvm.loop !550

.lr.ph64.prol.loopexit:                           ; preds = %.lr.ph64.prol, %.lr.ph64.preheader
  %indvars.iv77.unr = phi i64 [ %i.bo, %.lr.ph64.preheader ], [ %indvars.iv.next78.prol, %.lr.ph64.prol ]
  %.34162.unr = phi ptr [ %.240, %.lr.ph64.preheader ], [ %i.bt, %.lr.ph64.prol ]
  %i.bu = sub nsw i64 %i.bo, %wide.trip.count80
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %.loopexit, label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64
  %indvars.iv77 = phi i64 [ %indvars.iv.next78.3, %.lr.ph64 ], [ %indvars.iv77.unr, %.lr.ph64.prol.loopexit ] ; 5 uses
  %.34162 = phi ptr [ %i.cl, %.lr.ph64 ], [ %.34162.unr, %.lr.ph64.prol.loopexit ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.34162, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !525
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv77
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !226
  %i.bz = getelementptr inbounds nuw i8, ptr %.34162, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !525
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv77
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !226
  %i.cd = getelementptr inbounds nuw i8, ptr %.34162, i64 112
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !525
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv77
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !226
  %i.ch = getelementptr inbounds nuw i8, ptr %.34162, i64 160
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !525
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv77
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !226
  %indvars.iv.next78.3 = add nuw nsw i64 %indvars.iv77, 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.34162, i64 192
  %exitcond81.not.3 = icmp eq i64 %indvars.iv.next78.3, %wide.trip.count80
  br i1 %exitcond81.not.3, label %.loopexit, label %.lr.ph64, !llvm.loop !551

.loopexit:                                        ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64, %.loopexit51, %bb.d, %bb.b
  %.042 = phi i32 [ %i.h, %bb.d ], [ %i.d, %bb.b ], [ 0, %.loopexit51 ], [ 0, %.lr.ph64 ], [ 0, %.lr.ph64.prol.loopexit ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal i32 @TT_Set_Named_Instance(ptr noundef %0, i32 noundef %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @TT_Get_MM_Var(ptr noundef nonnull %0, ptr noundef null) ; 3 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !187
  %.not34 = icmp eq i32 %i.g, 0
  br i1 %.not34, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !498  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !491
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i32 %i.m, 16
  %i.o = icmp ugt i32 %1, %i.n
  br i1 %i.o, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i32 %1, 0
  br i1 %.not35, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !506
  %i.t = zext nneg i32 %1 to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !552
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !529
  %i.z = trunc i32 %i.y to i16
  %i.aa = call i32 %i.w(ptr noundef nonnull %0, i16 noundef zeroext %i.z, ptr noundef nonnull %i.b) #21 ; 2 uses
  %.not37 = icmp eq i32 %i.aa, 0
  br i1 %.not37, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !553
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.ad) #21
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !243
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !553
  %i.af = load i32, ptr %i.j, align 8, !tbaa !499
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !507
  %i.ah = call i32 @TT_Set_Var_Design(ptr noundef nonnull %0, i32 noundef %i.af, ptr noundef %i.ag) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %or.cond = icmp ugt i32 %i.ah, -3
  br i1 %or.cond, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !553
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.aj) #21
  store ptr null, ptr %i.ai, align 8, !tbaa !553
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !554
  %i.am = call ptr @ft_mem_strdup(ptr noundef %i.d, ptr noundef %i.al, ptr noundef nonnull %i.a) #21
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !553
  %i.an = load i32, ptr %i.a, align 4, !tbaa !187 ; 2 uses
  %.not36 = icmp eq i32 %i.an, 0
  br i1 %.not36, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = call i32 @TT_Set_Var_Design(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) ; 2 uses
  %or.cond.old = icmp ugt i32 %i.ao, -3
  br i1 %or.cond.old, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %.thread, %bb.f, %bb.i, %bb.h, %bb.g, %bb.b
  %i.ap = phi i32 [ %i.aa, %.thread ], [ %i.ah, %bb.f ], [ 0, %bb.i ], [ %i.ao, %bb.h ], [ %i.an, %bb.g ], [ %i.g, %bb.b ], [ 6, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.ap
}

; Function Attrs: nounwind uwtable
define internal i32 @TT_Get_Default_Named_Instance(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
end_hunk_4
begin_hunk_5_@tt_var_load_delta_set_index_mapping:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !560
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %exitcond.not = icmp eq i32 %i.s, 0
  %exitcond.not.1 = icmp eq i32 %i.s, 1
  %exitcond.not.2 = icmp eq i32 %i.s, 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.t
  %.06284 = phi ptr [ %i.an, %.preheader.lr.ph ], [ %scevgep, %bb.t ] ; 5 uses
  %.06483 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bu, %bb.t ] ; 4 uses
  %i.ap = load i8, ptr %.06284, align 1, !tbaa !227
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  br i1 %exitcond.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %.06284, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !227
  %i.at = shl nuw nsw i32 %i.aq, 8
  %i.au = zext i8 %i.as to i32
  %i.av = or disjoint i32 %i.at, %i.au            ; 2 uses
  br i1 %exitcond.not.1, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.06284, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !227
  %i.ay = shl nuw nsw i32 %i.av, 8
  %i.az = zext i8 %i.ax to i32
  %i.ba = or disjoint i32 %i.ay, %i.az            ; 2 uses
  br i1 %exitcond.not.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.06284, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !227
  %i.bd = shl nuw i32 %i.ba, 8
  %i.be = zext i8 %i.bc to i32
  %i.bf = or disjoint i32 %i.bd, %i.be
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.preheader
  %.lcssa = phi i32 [ %i.aq, %.preheader ], [ %i.av, %bb.m ], [ %i.ba, %bb.n ], [ %i.bf, %bb.o ] ; 3 uses
  %scevgep = getelementptr i8, ptr %.06284, i64 %i.y
  %i.bg = icmp eq i32 %.lcssa, -1
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !559
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.06483
  store i32 65535, ptr %i.bi, align 4, !tbaa !187
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bj = lshr i32 %.lcssa, %i.v                  ; 3 uses
  %i.bk = load i32, ptr %3, align 8, !tbaa !561
  %.not77 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not77, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !559
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.06483
  store i32 %i.bj, ptr %i.bm, align 4, !tbaa !187
  %i.bn = and i32 %.lcssa, %i.x                   ; 2 uses
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !565
  %i.bp = zext nneg i32 %i.bj to i64
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !566
  %.not78 = icmp ult i32 %i.bn, %i.br
  br i1 %.not78, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sink = phi i32 [ 65535, %bb.q ], [ %i.bn, %bb.s ]
  %i.bs = load ptr, ptr %i.ac, align 8, !tbaa !558
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.06483
  store i32 %.sink, ptr %i.bt, align 4, !tbaa !187
  %i.bu = add nuw i64 %.06483, 1                  ; 2 uses
  %exitcond87.not = icmp eq i64 %i.bu, %i.al
  br i1 %exitcond87.not, label %._crit_edge, label %.preheader, !llvm.loop !568

._crit_edge:                                      ; preds = %bb.t, %bb.l
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.c) #21
  %.pre = load i32, ptr %i.a, align 4, !tbaa !187
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.r, %bb.k, %bb.h, %bb.g, %bb.d, %bb.j, %bb.i, %bb.f, %bb.e, %bb.a, %bb.b, %bb.c, %._crit_edge
  %i.bv = phi i32 [ 8, %bb.d ], [ 8, %bb.k ], [ %i.ah, %bb.j ], [ %i.ad, %bb.i ], [ %i.p, %bb.f ], [ %i.m, %bb.e ], [ %i.f, %bb.a ], [ %i.h, %bb.b ], [ %i.j, %bb.c ], [ %.pre, %._crit_edge ], [ 8, %bb.h ], [ 8, %bb.g ], [ 8, %bb.r ], [ 8, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.bv
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_var_load_item_variation_store(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 48 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104
  %i.h = tail call i32 @FT_Stream_Seek(ptr noundef %i.c, i64 noundef %1) #21 ; 2 uses
  store i32 %i.h, ptr %i.a, align 4, !tbaa !187
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %.thread199

bb.b:                                             ; preds = %bb.a
  %i.i = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #21
  %i.j = load i32, ptr %i.a, align 4, !tbaa !187
  %.not168 = icmp eq i32 %i.j, 0
  br i1 %.not168, label %bb.c, label %.thread199

bb.c:                                             ; preds = %bb.b
  %.not169 = icmp eq i16 %i.i, 1
  br i1 %.not169, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %.thread199

bb.e:                                             ; preds = %bb.c
  %i.k = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #21
  %i.l = zext i32 %i.k to i64
  %i.m = load i32, ptr %i.a, align 4, !tbaa !187
  %.not170 = icmp eq i32 %i.m, 0
  br i1 %.not170, label %bb.f, label %.thread199

bb.f:                                             ; preds = %bb.e
  %i.n = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #21 ; 5 uses
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !187
  %.not171 = icmp eq i32 %i.p, 0
  br i1 %.not171, label %bb.g, label %.thread199

bb.g:                                             ; preds = %bb.f
  %.not172 = icmp eq i16 %i.n, 0
  br i1 %.not172, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %.thread199

bb.i:                                             ; preds = %bb.g
  %i.q = zext i16 %i.n to i64                     ; 2 uses
  %i.r = call ptr @ft_mem_qrealloc(ptr noundef %i.e, i64 noundef 8, i64 noundef 0, i64 noundef %i.q, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 29 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !187
  %.not173 = icmp eq i32 %i.s, 0
  br i1 %.not173, label %bb.j, label %.thread199

bb.j:                                             ; preds = %bb.i
  %i.t = shl nuw nsw i32 %i.o, 2
  %i.u = zext nneg i32 %i.t to i64
  %i.v = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.c, i64 noundef %i.u) #21 ; 2 uses
  store i32 %i.v, ptr %i.a, align 4, !tbaa !187
  %.not174 = icmp eq i32 %i.v, 0
  br i1 %.not174, label %bb.k, label %.thread199

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !560  ; 2 uses
  %wide.trip.count = zext i16 %i.n to i64         ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.y = icmp ult i16 %i.n, 4
  br i1 %i.y, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.l ] ; 5 uses
  %.0154204 = phi ptr [ %i.x, %.new ], [ %i.aq, %bb.l ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0154204, i64 4
  %i.aa = load i32, ptr %.0154204, align 1
  %i.ab = call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !226
  %i.ae = getelementptr inbounds nuw i8, ptr %.0154204, i64 8
  %i.af = load i32, ptr %i.z, align 1
  %i.ag = call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !226
  %i.ak = getelementptr inbounds nuw i8, ptr %.0154204, i64 12
  %i.al = load i32, ptr %i.ae, align 1
  %i.am = call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !226
  %i.aq = getelementptr inbounds nuw i8, ptr %.0154204, i64 16 ; 2 uses
  %i.ar = load i32, ptr %i.ak, align 1
  %i.as = call i32 @llvm.bswap.i32(i32 %i.ar)
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %i.at, ptr %i.av, align 8, !tbaa !226
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.l, !llvm.loop !569

.unr-lcssa:                                       ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.k
  %indvars.iv.epil.init = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.0154204.epil.init = phi ptr [ %i.x, %bb.k ], [ %i.aq, %.unr-lcssa ]
  %lcmp.mod244 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod244)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.m ] ; 2 uses
  %.0154204.epil = phi ptr [ %.0154204.epil.init, %.epil.preheader ], [ %i.aw, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0154204.epil, i64 4
  %i.ax = load i32, ptr %.0154204.epil, align 1
  %i.ay = call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !226
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.m, !llvm.loop !570

.epilog-lcssa:                                    ; preds = %bb.m, %.unr-lcssa
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.c) #21
  %i.bb = add i64 %1, %i.l
  %i.bc = call i32 @FT_Stream_Seek(ptr noundef nonnull %i.c, i64 noundef %i.bb) #21 ; 2 uses
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !187
  %.not175 = icmp eq i32 %i.bc, 0
  br i1 %.not175, label %bb.n, label %.thread199

bb.n:                                             ; preds = %.epilog-lcssa
  %i.bd = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #21 ; 3 uses
  %i.be = load i32, ptr %i.a, align 4, !tbaa !187
  %.not176 = icmp eq i32 %i.be, 0
  br i1 %.not176, label %bb.o, label %.thread199

bb.o:                                             ; preds = %bb.n
  %i.bf = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #21 ; 5 uses
  %i.bg = zext nneg i16 %i.bf to i32
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !187
  %.not177 = icmp eq i32 %i.bh, 0
  br i1 %.not177, label %bb.p, label %.thread199

bb.p:                                             ; preds = %bb.o
  %i.bi = zext i16 %i.bd to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !498
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !499
  %i.bm = zext i16 %i.bd to i32
  %.not178 = icmp eq i32 %i.bl, %i.bm
  br i1 %.not178, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %.thread199

bb.r:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i16 %i.bd, ptr %i.bn, align 8, !tbaa !571
  %i.bo = icmp slt i16 %i.bf, 0
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %.thread199

bb.t:                                             ; preds = %bb.r
  %i.bp = zext nneg i16 %i.bf to i64              ; 2 uses
  %i.bq = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 8, i64 noundef 0, i64 noundef %i.bp, ptr noundef null, ptr noundef nonnull %i.a) #21
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !572
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !187
  %.not179 = icmp eq i32 %i.bs, 0
  br i1 %.not179, label %bb.u, label %.thread199

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  store i32 %i.bg, ptr %i.bt, align 4, !tbaa !573
  %i.bu = mul nuw nsw i64 %i.bi, 6
  %i.bv = mul nuw nsw i64 %i.bu, %i.bp
  %i.bw = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.c, i64 noundef %i.bv) #21 ; 2 uses
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !187
  %.not180 = icmp eq i32 %i.bw, 0
  br i1 %.not180, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %.thread199

bb.w:                                             ; preds = %bb.u
  %.not218 = icmp eq i16 %i.bf, 0
  br i1 %.not218, label %._crit_edge211, label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %bb.w
  %i.bx = load ptr, ptr %i.w, align 8, !tbaa !560
  %wide.trip.count230 = zext nneg i16 %i.bf to i64
  br label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %._crit_edge
  %indvars.iv227 = phi i64 [ 0, %.lr.ph210.preheader ], [ %indvars.iv.next228, %._crit_edge ] ; 2 uses
  %.1155208 = phi ptr [ %i.bx, %.lr.ph210.preheader ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.by = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 24, i64 noundef 0, i64 noundef %i.bi, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !572
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv227
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !574
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !187
  %.not192 = icmp eq i32 %i.cb, 0
  br i1 %.not192, label %.preheader, label %bb.x

.preheader:                                       ; preds = %.lr.ph210
  %i.cc = load i16, ptr %i.bn, align 8, !tbaa !571 ; 2 uses
  %.not219 = icmp eq i16 %i.cc, 0
  br i1 %.not219, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count225 = zext i16 %i.cc to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv222 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next223, %.lr.ph ] ; 2 uses
  %.2206 = phi ptr [ %.1155208, %.lr.ph.preheader ], [ %i.ct, %.lr.ph ] ; 7 uses
  %i.cd = load i8, ptr %.2206, align 1, !tbaa !227
  %i.ce = zext i8 %i.cd to i16
  %i.cf = shl nuw i16 %i.ce, 8                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.2206, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !227
  %i.ci = zext i8 %i.ch to i16
  %i.cj = or disjoint i16 %i.cf, %i.ci            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.2206, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !227
  %i.cm = zext i8 %i.cl to i16
  %i.cn = shl nuw i16 %i.cm, 8
  %i.co = getelementptr inbounds nuw i8, ptr %.2206, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !227
  %i.cq = zext i8 %i.cp to i16
  %i.cr = or disjoint i16 %i.cn, %i.cq            ; 3 uses
  %i.cs = sext i16 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.2206, i64 6 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.2206, i64 4
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !227
  %i.cw = zext i8 %i.cv to i16
  %i.cx = shl nuw i16 %i.cw, 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.2206, i64 5
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !227
  %i.da = zext i8 %i.cz to i16
  %i.db = or disjoint i16 %i.cx, %i.da            ; 3 uses
  %i.dc = icmp slt i16 %i.cf, 0
  %i.dd = icmp sgt i16 %i.db, 0
  %or.cond = select i1 %i.dc, i1 %i.dd, i1 false
  %i.de = icmp sgt i16 %i.cj, %i.cr
  %or.cond193 = select i1 %or.cond, i1 true, i1 %i.de
  %i.df = icmp sgt i16 %i.cr, %i.db
  %or.cond194 = select i1 %or.cond193, i1 true, i1 %i.df
  %i.dg = sext i16 %i.cj to i64
  %i.dh = shl nsw i64 %i.dg, 2
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %indvars.iv222 ; 3 uses
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !577
  %i.dj = shl nsw i64 %i.cs, 2
  %i.dk = select i1 %or.cond194, i64 0, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !579
  %i.dm = sext i16 %i.db to i64
  %i.dn = shl nsw i64 %i.dm, 2
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !580
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next223, %wide.trip.count225
  br i1 %exitcond226.not, label %._crit_edge, label %.lr.ph, !llvm.loop !581

bb.x:                                             ; preds = %.lr.ph210
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.c) #21
  br label %.thread199

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.2.lcssa = phi ptr [ %.1155208, %.preheader ], [ %i.ct, %.lr.ph ]
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %._crit_edge211, label %.lr.ph210, !llvm.loop !582

._crit_edge211:                                   ; preds = %._crit_edge, %bb.w
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.c) #21
  %i.dp = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 32, i64 noundef 0, i64 noundef %i.q, ptr noundef null, ptr noundef nonnull %i.a) #21
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !565
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !187
  %.not181 = icmp eq i32 %i.dr, 0
  br i1 %.not181, label %bb.y, label %.thread199

bb.y:                                             ; preds = %._crit_edge211
  store i32 %i.o, ptr %2, align 8, !tbaa !561
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.aq
end_hunk_5
begin_hunk_6_@tt_set_mm_blend:bb.a
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !612

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !226
  %.not133 = icmp eq i64 %i.j, 0
  br i1 %.not133, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store i8 1, ptr %i.h, align 1, !tbaa !487
  %i.k = tail call i32 @TT_Get_MM_Var(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !187
  %.not135 = icmp eq i32 %i.k, 0
  br i1 %.not135, label %._crit_edge257, label %.loopexit

._crit_edge257:                                   ; preds = %bb.d
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge257, %bb.a
  %i.l = phi ptr [ %.pre, %._crit_edge257 ], [ %i.g, %bb.a ] ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !498  ; 6 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !499
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.o) ; 14 uses
  %.not216 = icmp eq i32 %spec.select, 0          ; 2 uses
  br i1 %.not216, label %._crit_edge187, label %.lr.ph186.preheader

.lr.ph186.preheader:                              ; preds = %bb.e
  %wide.trip.count233 = zext i32 %spec.select to i64
  br label %.lr.ph186

bb.f:                                             ; preds = %.lr.ph186
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %._crit_edge187, label %.lr.ph186, !llvm.loop !613

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %bb.f
  %indvars.iv230 = phi i64 [ 0, %.lr.ph186.preheader ], [ %indvars.iv.next231, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv230
  %i.q = load i64, ptr %i.p, align 8, !tbaa !226
  %i.r = add i64 %i.q, -65537
  %or.cond155 = icmp ult i64 %i.r, -131073
  br i1 %or.cond155, label %.loopexit.sink.split, label %bb.f

._crit_edge187:                                   ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !614
  %.not136 = icmp eq i8 %i.t, 0
  br i1 %.not136, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %._crit_edge187
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 136 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !611
  %.not137 = icmp eq ptr %i.v, null
  br i1 %.not137, label %bb.h, label %bb.ab

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92   ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !98   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !492
  %i.ac = call i32 %i.ab(ptr noundef nonnull %0, i64 noundef 1735811442, ptr noundef %i.x, ptr noundef nonnull %i.b) #21, !inline_history !615 ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.i, label %ft_var_load_gvar.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = call i64 @FT_Stream_Pos(ptr noundef nonnull %i.x) #21 ; 3 uses
  %i.ae = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %i.x, ptr noundef nonnull @ft_var_load_gvar.gvar_fields, ptr noundef nonnull %4) #21 ; 2 uses
  %.not116.i = icmp eq i32 %i.ae, 0
  br i1 %.not116.i, label %bb.j, label %ft_var_load_gvar.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %4, align 8, !tbaa !616
  %.not117.i = icmp eq i64 %i.af, 65536
  br i1 %.not117.i, label %bb.k, label %ft_var_load_gvar.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !618 ; 2 uses
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !498
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !499
  %i.ak = trunc i32 %i.aj to i16
  %.not118.i = icmp eq i16 %i.ah, %i.ak
  br i1 %.not118.i, label %bb.l, label %ft_var_load_gvar.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 6 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !619
  %i.an = zext i16 %i.am to i64
  %i.ao = zext i16 %i.ah to i64
  %i.ap = mul nuw nsw i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !226 ; 3 uses
  %i.ar = lshr i64 %i.aq, 1
  %i.as = icmp samesign ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %ft_var_load_gvar.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.au = load i16, ptr %i.at, align 8, !tbaa !620
  %i.av = zext i16 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !621
  %i.az = and i16 %i.ay, 1
  %.not119.i = icmp eq i16 %i.az, 0
  %i.ba = select i1 %.not119.i, i64 1, i64 2
  %i.bb = shl nuw nsw i64 %i.aw, %i.ba            ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, %i.aq
  br i1 %i.bc, label %ft_var_load_gvar.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  store i64 %i.aq, ptr %i.bd, align 8, !tbaa !622
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !623
  %i.bg = add i64 %i.bf, %i.ad                    ; 6 uses
  %i.bh = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.x, i64 noundef %i.bb) #21 ; 3 uses
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !187
  %.not120.i = icmp eq i32 %i.bh, 0
  br i1 %.not120.i, label %bb.o, label %ft_var_load_gvar.exit

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !560 ; 4 uses
  %i.bk = load i16, ptr %i.at, align 8, !tbaa !620
  %i.bl = zext i16 %i.bk to i64
  %i.bm = add nuw nsw i64 %i.bl, 1
  %i.bn = call ptr @ft_mem_qrealloc(ptr noundef %i.z, i64 noundef 8, i64 noundef 0, i64 noundef %i.bm, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 7 uses
  store ptr %i.bn, ptr %i.u, align 8, !tbaa !611
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !187
  %.not121.i = icmp eq i32 %i.bo, 0
  br i1 %.not121.i, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.bp = load i16, ptr %i.ax, align 2, !tbaa !621
  %i.bq = and i16 %i.bp, 1
  %.not122.i = icmp eq i16 %i.bq, 0
  %i.br = load i64, ptr %i.b, align 8, !tbaa !226
  %i.bs = add i64 %i.br, %i.ad                    ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !624
  %i.bv = load ptr, ptr %i.bi, align 8, !tbaa !560
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 2 uses
  %i.bz = load i16, ptr %i.at, align 8, !tbaa !620 ; 3 uses
  %i.ca = zext i16 %i.bz to i64                   ; 6 uses
  br i1 %.not122.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = icmp slt i64 %i.by, %i.cb
  br i1 %i.cc, label %bb.r, label %.preheader142.i.preheader

.preheader142.i.preheader:                        ; preds = %bb.q
  %i.cd = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %i.ce = icmp eq i16 %i.bz, 0
  br i1 %i.ce, label %.preheader142.i.epil.preheader, label %.preheader142.i.preheader.new

.preheader142.i.preheader.new:                    ; preds = %.preheader142.i.preheader
  %unroll_iter = and i64 %i.cd, 131070
  br label %.preheader142.i

.preheader142.i:                                  ; preds = %.preheader142.i, %.preheader142.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.preheader142.i.preheader.new ], [ %indvars.iv.next.i.1, %.preheader142.i ] ; 3 uses
  %.0100146.i = phi i64 [ 0, %.preheader142.i.preheader.new ], [ %spec.store.select.i.1, %.preheader142.i ]
  %.0102145.i = phi ptr [ %i.bj, %.preheader142.i.preheader.new ], [ %i.cl, %.preheader142.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader142.i.preheader.new ], [ %niter.next.1, %.preheader142.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0102145.i, i64 4
  %i.cg = load i32, ptr %.0102145.i, align 1
  %i.ch = call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add i64 %i.bg, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i
  %spec.store.select.i = call i64 @llvm.umax.i64(i64 %.0100146.i, i64 %i.cj) ; 2 uses
  %spec.store.select138.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select.i)
  store i64 %spec.store.select138.i, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.0102145.i, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cf, align 1
  %i.cn = call i32 @llvm.bswap.i32(i32 %i.cm)
  %i.co = zext i32 %i.cn to i64
  %i.cp = add i64 %i.bg, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %spec.store.select.i.1 = call i64 @llvm.umax.i64(i64 %spec.store.select.i, i64 %i.cp) ; 3 uses
  %spec.store.select138.i.1 = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select.i.1)
  store i64 %spec.store.select138.i.1, ptr %i.cr, align 8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.i.loopexit350.unr-lcssa, label %.preheader142.i, !llvm.loop !625

bb.r:                                             ; preds = %bb.q
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %bb.z

bb.s:                                             ; preds = %bb.p
  %i.cs = shl nuw nsw i64 %i.ca, 1
  %i.ct = icmp slt i64 %i.by, %i.cs
  br i1 %i.ct, label %bb.t, label %.preheader141.i.preheader

.preheader141.i.preheader:                        ; preds = %bb.s
  %i.cu = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %i.cv = icmp eq i16 %i.bz, 0
  br i1 %i.cv, label %.preheader141.i.epil.preheader, label %.preheader141.i.preheader.new

.preheader141.i.preheader.new:                    ; preds = %.preheader141.i.preheader
  %unroll_iter356 = and i64 %i.cu, 131070
  br label %.preheader141.i

.preheader141.i:                                  ; preds = %.preheader141.i, %.preheader141.i.preheader.new
  %indvars.iv160.i = phi i64 [ 0, %.preheader141.i.preheader.new ], [ %indvars.iv.next161.i.1, %.preheader141.i ] ; 3 uses
  %.0149.i = phi i64 [ 0, %.preheader141.i.preheader.new ], [ %spec.store.select136.i.1, %.preheader141.i ]
  %.1103148.i = phi ptr [ %i.bj, %.preheader141.i.preheader.new ], [ %i.dh, %.preheader141.i ] ; 5 uses
  %niter357 = phi i64 [ 0, %.preheader141.i.preheader.new ], [ %niter357.next.1, %.preheader141.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.1103148.i, i64 2
  %i.cx = load i8, ptr %.1103148.i, align 1, !tbaa !227
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.1103148.i, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !227
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.cy, 9
  %i.dd = shl nuw nsw i64 %i.db, 1
  %i.de = or disjoint i64 %i.dd, %i.dc
  %i.df = add i64 %i.de, %i.bg
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv160.i
  %spec.store.select136.i = call i64 @llvm.umax.i64(i64 %.0149.i, i64 %i.df) ; 2 uses
  %spec.store.select139.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select136.i)
  store i64 %spec.store.select139.i, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.1103148.i, i64 4 ; 2 uses
  %i.di = load i8, ptr %i.cw, align 1, !tbaa !227
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.1103148.i, i64 3
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !227
  %i.dm = zext i8 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dj, 9
  %i.do = shl nuw nsw i64 %i.dm, 1
  %i.dp = or disjoint i64 %i.do, %i.dn
  %i.dq = add i64 %i.dp, %i.bg
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv160.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %spec.store.select136.i.1 = call i64 @llvm.umax.i64(i64 %spec.store.select136.i, i64 %i.dq) ; 3 uses
  %spec.store.select139.i.1 = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select136.i.1)
  store i64 %spec.store.select139.i.1, ptr %i.ds, align 8
  %indvars.iv.next161.i.1 = add nuw nsw i64 %indvars.iv160.i, 2 ; 2 uses
  %niter357.next.1 = add nuw i64 %niter357, 2     ; 2 uses
  %niter357.ncmp.1 = icmp eq i64 %niter357.next.1, %unroll_iter356
  br i1 %niter357.ncmp.1, label %.thread.i.loopexit.unr-lcssa, label %.preheader141.i, !llvm.loop !626

bb.t:                                             ; preds = %bb.s
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %bb.z

.thread.i.loopexit.unr-lcssa:                     ; preds = %.preheader141.i
  %i.dt = and i64 %i.ca, 1
  %lcmp.mod354.not.not = icmp eq i64 %i.dt, 0
  br i1 %lcmp.mod354.not.not, label %.preheader141.i.epil.preheader, label %.thread.i

.preheader141.i.epil.preheader:                   ; preds = %.thread.i.loopexit.unr-lcssa, %.preheader141.i.preheader
  %indvars.iv160.i.epil.init = phi i64 [ 0, %.preheader141.i.preheader ], [ %indvars.iv.next161.i.1, %.thread.i.loopexit.unr-lcssa ]
  %.0149.i.epil.init = phi i64 [ 0, %.preheader141.i.preheader ], [ %spec.store.select136.i.1, %.thread.i.loopexit.unr-lcssa ]
  %.1103148.i.epil.init = phi ptr [ %i.bj, %.preheader141.i.preheader ], [ %i.dh, %.thread.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod355 = trunc i64 %i.cu to i1
  call void @llvm.assume(i1 %lcmp.mod355)
  %i.du = load i8, ptr %.1103148.i.epil.init, align 1, !tbaa !227
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %.1103148.i.epil.init, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !227
  %i.dy = zext i8 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dv, 9
  %i.ea = shl nuw nsw i64 %i.dy, 1
  %i.eb = or disjoint i64 %i.ea, %i.dz
  %i.ec = add i64 %i.eb, %i.bg
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv160.i.epil.init
  %spec.store.select136.i.epil = call i64 @llvm.umax.i64(i64 %.0149.i.epil.init, i64 %i.ec)
  %spec.store.select139.i.epil = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select136.i.epil)
  store i64 %spec.store.select139.i.epil, ptr %i.ed, align 8
  br label %.thread.i

.thread.i.loopexit350.unr-lcssa:                  ; preds = %.preheader142.i
  %i.ee = and i64 %i.ca, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ee, 0
  br i1 %lcmp.mod.not.not, label %.preheader142.i.epil.preheader, label %.thread.i

.preheader142.i.epil.preheader:                   ; preds = %.thread.i.loopexit350.unr-lcssa, %.preheader142.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader142.i.preheader ], [ %indvars.iv.next.i.1, %.thread.i.loopexit350.unr-lcssa ]
  %.0100146.i.epil.init = phi i64 [ 0, %.preheader142.i.preheader ], [ %spec.store.select.i.1, %.thread.i.loopexit350.unr-lcssa ]
  %.0102145.i.epil.init = phi ptr [ %i.bj, %.preheader142.i.preheader ], [ %i.cl, %.thread.i.loopexit350.unr-lcssa ]
  %lcmp.mod352 = trunc i64 %i.cd to i1
  call void @llvm.assume(i1 %lcmp.mod352)
  %i.ef = load i32, ptr %.0102145.i.epil.init, align 1
  %i.eg = call i32 @llvm.bswap.i32(i32 %i.ef)
  %i.eh = zext i32 %i.eg to i64
  %i.ei = add i64 %i.bg, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.epil.init
  %spec.store.select.i.epil = call i64 @llvm.umax.i64(i64 %.0100146.i.epil.init, i64 %i.ei)
  %spec.store.select138.i.epil = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select.i.epil)
  store i64 %spec.store.select138.i.epil, ptr %i.ej, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %.preheader142.i.epil.preheader, %.thread.i.loopexit350.unr-lcssa, %.preheader141.i.epil.preheader, %.thread.i.loopexit.unr-lcssa
  %i.ek = load i16, ptr %i.at, align 8, !tbaa !620
  %i.el = zext i16 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i32 %i.el, ptr %i.em, align 8, !tbaa !627
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.x) #21
  %i.en = load i16, ptr %i.al, align 2, !tbaa !619
  %.not127.i = icmp eq i16 %i.en, 0
  br i1 %.not127.i, label %ft_var_load_gvar.exitthread-pre-split, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !628
  %i.eq = add i64 %i.ep, %i.ad
  %i.er = call i32 @FT_Stream_Seek(ptr noundef nonnull %i.x, i64 noundef %i.eq) #21 ; 2 uses
  store i32 %i.er, ptr %i.a, align 4, !tbaa !187
  %.not128.i = icmp eq i32 %i.er, 0
  br i1 %.not128.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.es = load i16, ptr %i.al, align 2, !tbaa !619
  %i.et = zext i16 %i.es to i64
  %i.eu = load i16, ptr %i.ag, align 8, !tbaa !618
  %i.ev = zext i16 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.et, 1
  %i.ex = mul nuw nsw i64 %i.ew, %i.ev
  %i.ey = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.x, i64 noundef %i.ex) #21 ; 2 uses
  store i32 %i.ey, ptr %i.a, align 4, !tbaa !187
  %.not129.i = icmp eq i32 %i.ey, 0
  br i1 %.not129.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ez = load ptr, ptr %i.bi, align 8, !tbaa !560
  %i.fa = load i16, ptr %i.ag, align 8, !tbaa !618
  %i.fb = zext i16 %i.fa to i64
  %i.fc = load i16, ptr %i.al, align 2, !tbaa !619
  %i.fd = zext i16 %i.fc to i64
  %i.fe = mul nuw nsw i64 %i.fd, %i.fb
  %i.ff = call ptr @ft_mem_qrealloc(ptr noundef %i.z, i64 noundef 8, i64 noundef 0, i64 noundef %i.fe, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !610
  %i.fh = load i32, ptr %i.a, align 4, !tbaa !187
  %.not130.i = icmp eq i32 %i.fh, 0
  br i1 %.not130.i, label %.preheader140.i, label %bb.y

.preheader140.i:                                  ; preds = %bb.w
  %i.fi = load i16, ptr %i.al, align 2, !tbaa !619 ; 3 uses
  %.not156.i = icmp eq i16 %i.fi, 0
  br i1 %.not156.i, label %._crit_edge154.split.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader140.i
  %i.fj = load i16, ptr %i.ag, align 8, !tbaa !618 ; 4 uses
  %.not157.i = icmp eq i16 %i.fj, 0
  br i1 %.not157.i, label %._crit_edge154.split.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.fk = zext i16 %i.fj to i64                   ; 3 uses
  %wide.trip.count173.i = zext i16 %i.fi to i64
  %xtraiter358 = and i64 %i.fk, 1
  %i.fl = icmp eq i16 %i.fj, 1
  %unroll_iter362 = and i64 %i.fk, 65534
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  %lcmp.mod361 = trunc i16 %i.fj to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv170.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next171.i, %._crit_edge.i ] ; 2 uses
  %.2153.i = phi ptr [ %i.ez, %.preheader.preheader.i ], [ %.lcssa349, %._crit_edge.i ] ; 2 uses
  %i.fm = mul nuw nsw i64 %indvars.iv170.i, %i.fk
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fm ; 3 uses
  br i1 %i.fl, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 3 uses
  %.3151.i = phi ptr [ %i.fz, %.preheader.i.new ], [ %.2153.i, %.preheader.i ] ; 5 uses
  %niter363 = phi i64 [ %niter363.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.3151.i, i64 2
  %i.fp = load i8, ptr %.3151.i, align 1, !tbaa !227
  %i.fq = zext i8 %i.fp to i16
  %i.fr = shl nuw i16 %i.fq, 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.3151.i, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !227
  %i.fu = zext i8 %i.ft to i16
  %i.fv = or disjoint i16 %i.fr, %i.fu
  %i.fw = sext i16 %i.fv to i64
  %i.fx = shl nsw i64 %i.fw, 2
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv165.i
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !226
  %i.fz = getelementptr inbounds nuw i8, ptr %.3151.i, i64 4 ; 3 uses
  %i.ga = load i8, ptr %i.fo, align 1, !tbaa !227
  %i.gb = zext i8 %i.ga to i16
  %i.gc = shl nuw i16 %i.gb, 8
  %i.gd = getelementptr inbounds nuw i8, ptr %.3151.i, i64 3
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !227
  %i.gf = zext i8 %i.ge to i16
  %i.gg = or disjoint i16 %i.gc, %i.gf
  %i.gh = sext i16 %i.gg to i64
  %i.gi = shl nsw i64 %i.gh, 2
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv165.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i64 %i.gi, ptr %i.gk, align 8, !tbaa !226
  %indvars.iv.next166.i.1 = add nuw nsw i64 %indvars.iv165.i, 2 ; 2 uses
  %niter363.next.1 = add nuw i64 %niter363, 2     ; 2 uses
  %niter363.ncmp.1 = icmp eq i64 %niter363.next.1, %unroll_iter362
  br i1 %niter363.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !629

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod359.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv165.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next166.i.1, %._crit_edge.i.unr-lcssa ]
  %.3151.i.epil.init = phi ptr [ %.2153.i, %.preheader.i ], [ %i.fz, %._crit_edge.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod361)
  %i.gl = getelementptr inbounds nuw i8, ptr %.3151.i.epil.init, i64 2
  %i.gm = load i8, ptr %.3151.i.epil.init, align 1, !tbaa !227
  %i.gn = zext i8 %i.gm to i16
  %i.go = shl nuw i16 %i.gn, 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.3151.i.epil.init, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !227
  %i.gr = zext i8 %i.gq to i16
  %i.gs = or disjoint i16 %i.go, %i.gr
  %i.gt = sext i16 %i.gs to i64
  %i.gu = shl nsw i64 %i.gt, 2
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv165.i.epil.init
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !226
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa349 = phi ptr [ %i.fz, %._crit_edge.i.unr-lcssa ], [ %i.gl, %.epil.preheader ]
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next171.i, %wide.trip.count173.i
  br i1 %exitcond174.not.i, label %._crit_edge154.split.i, label %.preheader.i, !llvm.loop !630

._crit_edge154.split.i:                           ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %.preheader140.i
  %i.gw = zext i16 %i.fi to i64
  %i.gx = call ptr @ft_mem_realloc(ptr noundef %i.z, i64 noundef 8, i64 noundef 0, i64 noundef %i.gw, ptr noundef null, ptr noundef nonnull %i.a) #21
  %i.gy = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !609
  %i.gz = load i32, ptr %i.a, align 4, !tbaa !187
  %.not131.i = icmp eq i32 %i.gz, 0
  br i1 %.not131.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge154.split.i
  %i.ha = load i16, ptr %i.al, align 2, !tbaa !619
  %i.hb = zext i16 %i.ha to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i32 %i.hb, ptr %i.hc, align 8, !tbaa !631
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.x) #21
  br label %ft_var_load_gvar.exitthread-pre-split

bb.y:                                             ; preds = %._crit_edge154.split.i, %bb.w, %bb.o
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.x) #21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v, %bb.u, %bb.t, %bb.r
  %i.hd = load ptr, ptr %i.u, align 8, !tbaa !611
  call void @ft_mem_free(ptr noundef %i.z, ptr noundef %i.hd) #21
  store ptr null, ptr %i.u, align 8, !tbaa !611
  %i.he = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i32 0, ptr %i.he, align 8, !tbaa !627
  br label %ft_var_load_gvar.exitthread-pre-split

ft_var_load_gvar.exitthread-pre-split:            ; preds = %bb.z, %bb.x, %.thread.i
  %.pr166 = load i32, ptr %i.a, align 4, !tbaa !187
  br label %ft_var_load_gvar.exit

ft_var_load_gvar.exit.thread:                     ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit.sink.split

ft_var_load_gvar.exit:                            ; preds = %ft_var_load_gvar.exitthread-pre-split, %bb.h, %bb.i, %bb.n
  %i.hf = phi i32 [ %.pr166, %ft_var_load_gvar.exitthread-pre-split ], [ %i.ac, %bb.h ], [ %i.ae, %bb.i ], [ %i.bh, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store i32 %i.hf, ptr %i.c, align 4, !tbaa !187
  switch i32 %i.hf, label %.loopexit [
    i32 142, label %bb.aa
    i32 0, label %bb.aa
  ]

bb.aa:                                            ; preds = %ft_var_load_gvar.exit, %ft_var_load_gvar.exit
  store i32 0, ptr %i.c, align 4, !tbaa !187
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.g, %._crit_edge187
  %i.hg = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !486
  %.not138.not = icmp eq ptr %i.hh, null          ; 2 uses
  br i1 %.not138.not, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hi = load i32, ptr %i.n, align 8, !tbaa !499
  %i.hj = zext i32 %i.hi to i64
  %i.hk = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 8, i64 noundef 0, i64 noundef %i.hj, ptr noundef null, ptr noundef nonnull %i.c) #21
  store ptr %i.hk, ptr %i.hg, align 8, !tbaa !486
  %i.hl = load i32, ptr %i.c, align 4, !tbaa !187
  %.not139 = icmp eq i32 %i.hl, 0
  br i1 %.not139, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hm = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !472 ; 8 uses
  %.not140 = icmp eq ptr %i.hn, null
  br i1 %.not140, label %bb.ae, label %.preheader173

.preheader173:                                    ; preds = %bb.ad
  br i1 %.not216, label %._crit_edge191, label %.lr.ph190.preheader

.lr.ph190.preheader:                              ; preds = %.preheader173
  %wide.trip.count238 = zext i32 %spec.select to i64
  br label %.lr.ph190

bb.ae:                                            ; preds = %bb.ad
  %i.ho = load i32, ptr %i.n, align 8, !tbaa !499
  %i.hp = zext i32 %i.ho to i64
  %i.hq = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 8, i64 noundef 0, i64 noundef %i.hp, ptr noundef null, ptr noundef nonnull %i.c) #21 ; 2 uses
  store ptr %i.hq, ptr %i.hm, align 8, !tbaa !472
  %i.hr = load i32, ptr %i.c, align 4, !tbaa !187
  %.not141 = icmp eq i32 %i.hr, 0
  br i1 %.not141, label %..loopexit171_crit_edge, label %.loopexit

..loopexit171_crit_edge:                          ; preds = %bb.ae
  %.pre258 = load i32, ptr %i.n, align 8, !tbaa !499
  br label %.loopexit171

.lr.ph190:                                        ; preds = %.lr.ph190.preheader, %bb.af
  %indvars.iv235 = phi i64 [ 0, %.lr.ph190.preheader ], [ %indvars.iv.next236, %bb.af ] ; 4 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv235
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !226
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv235
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !226
  %.not142 = icmp eq i64 %i.ht, %i.hv
  br i1 %.not142, label %bb.af, label %.thread167.thread288

bb.af:                                            ; preds = %.lr.ph190
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge191, label %.lr.ph190, !llvm.loop !632

._crit_edge191:                                   ; preds = %bb.af, %.preheader173
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !129 ; 2 uses
  %i.hy = and i64 %i.hx, 2147418112
  %.not145 = icmp eq i64 %i.hy, 0
  %i.hz = load i32, ptr %i.n, align 8, !tbaa !499 ; 6 uses
  %i.ia = icmp ult i32 %spec.select, %i.hz        ; 2 uses
  br i1 %.not145, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge191
  br i1 %i.ia, label %.lr.ph197.preheader, label %.critedge

.lr.ph197.preheader:                              ; preds = %bb.ag
  %i.ib = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !527
  %i.id = trunc i64 %i.hx to i32
  %i.ie = lshr i32 %i.id, 16
  %i.if = add nsw i32 %i.ie, -1
  %i.ig = mul i32 %i.hz, %i.if
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ih
  %i.ij = zext i32 %spec.select to i64            ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.ij ; 2 uses
  %i.im = sub nuw i32 %i.hz, %spec.select         ; 2 uses
  %xtraiter364 = and i32 %i.im, 3                 ; 3 uses
  %i.in = sub i32 %spec.select, %i.hz
  %i.io = icmp ugt i32 %i.in, -4
  br i1 %i.io, label %.lr.ph197.epil.preheader, label %.lr.ph197.preheader.new

.lr.ph197.preheader.new:                          ; preds = %.lr.ph197.preheader
  %unroll_iter368 = and i32 %i.im, -4
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197, %.lr.ph197.preheader.new
  %.0108195 = phi ptr [ %i.ik, %.lr.ph197.preheader.new ], [ %i.jg, %.lr.ph197 ] ; 5 uses
  %.0109194 = phi ptr [ %i.il, %.lr.ph197.preheader.new ], [ %i.jh, %.lr.ph197 ] ; 5 uses
  %.1113192 = phi i8 [ 0, %.lr.ph197.preheader.new ], [ %spec.select156.3, %.lr.ph197 ]
  %niter369 = phi i32 [ 0, %.lr.ph197.preheader.new ], [ %niter369.next.3, %.lr.ph197 ]
  %i.ip = load i64, ptr %.0109194, align 8, !tbaa !226
  %i.iq = load i64, ptr %.0108195, align 8, !tbaa !226
  %.not147 = icmp eq i64 %i.ip, %i.iq
  %i.ir = getelementptr inbounds nuw i8, ptr %.0108195, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %.0109194, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !226
  %i.iu = load i64, ptr %i.ir, align 8, !tbaa !226
  %.not147.1 = icmp eq i64 %i.it, %i.iu
  %i.iv = getelementptr inbounds nuw i8, ptr %.0108195, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %.0109194, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !226
  %i.iy = load i64, ptr %i.iv, align 8, !tbaa !226
  %.not147.2 = icmp eq i64 %i.ix, %i.iy
  %i.iz = getelementptr inbounds nuw i8, ptr %.0108195, i64 24
  %i.ja = getelementptr inbounds nuw i8, ptr %.0109194, i64 24
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !226
  %i.jc = load i64, ptr %i.iz, align 8, !tbaa !226
  %.not147.3 = icmp eq i64 %i.jb, %i.jc
  %i.jd = select i1 %.not147.3, i1 %.not147.2, i1 false
  %i.je = select i1 %i.jd, i1 %.not147.1, i1 false
  %i.jf = select i1 %i.je, i1 %.not147, i1 false
  %spec.select156.3 = select i1 %i.jf, i8 %.1113192, i8 1 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0108195, i64 32 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.0109194, i64 32 ; 2 uses
  %niter369.next.3 = add nuw i32 %niter369, 4     ; 2 uses
  %niter369.ncmp.3 = icmp eq i32 %niter369.next.3, %unroll_iter368
  br i1 %niter369.ncmp.3, label %.thread167.loopexit347.unr-lcssa, label %.lr.ph197, !llvm.loop !633

bb.ah:                                            ; preds = %._crit_edge191
  br i1 %i.ia, label %.lr.ph203.preheader, label %.critedge

.lr.ph203.preheader:                              ; preds = %bb.ah
  %i.ji = zext i32 %spec.select to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.ji ; 3 uses
  %i.jk = xor i32 %spec.select, -1
  %i.jl = add i32 %i.hz, %i.jk                    ; 2 uses
  %i.jm = zext i32 %i.jl to i64
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.jl, 3
  br i1 %min.iters.check, label %.lr.ph203.preheader344, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph203.preheader
  %n.vec = and i64 %i.jn, 8589934588              ; 4 uses
  %i.jo = shl nuw nsw i64 %n.vec, 3
  %i.jp = getelementptr i8, ptr %i.jj, i64 %i.jo
  %i.jq = trunc i64 %n.vec to i32
  %i.jr = add i32 %spec.select, %i.jq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.jw, %vector.body ]
  %vec.phi314 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.jx, %vector.body ]
  %i.js = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.jj, i64 %i.js ; 2 uses
  %i.jt = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !226
  %wide.load315 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !226
  %i.ju = icmp ne <2 x i64> %wide.load, zeroinitializer
  %i.jv = icmp ne <2 x i64> %wide.load315, zeroinitializer
  %i.jw = or <2 x i1> %vec.phi, %i.ju             ; 2 uses
  %i.jx = or <2 x i1> %vec.phi314, %i.jv          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jy = icmp eq i64 %index.next, %n.vec
  br i1 %i.jy, label %middle.block, label %vector.body, !llvm.loop !634

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.jx, %i.jw
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.jz = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not339 = icmp ne i2 %i.jz, 0
  %rdx.select = zext i1 %.not339 to i8            ; 2 uses
  %cmp.n = icmp eq i64 %i.jn, %n.vec
  br i1 %cmp.n, label %.thread167, label %.lr.ph203.preheader344

.lr.ph203.preheader344:                           ; preds = %.lr.ph203.preheader, %middle.block
  %.1201.ph = phi ptr [ %i.jj, %.lr.ph203.preheader ], [ %i.jp, %middle.block ]
  %.1111200.ph = phi i32 [ %spec.select, %.lr.ph203.preheader ], [ %i.jr, %middle.block ]
  %.3199.ph = phi i8 [ 0, %.lr.ph203.preheader ], [ %rdx.select, %middle.block ]
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader344, %.lr.ph203
  %.1201 = phi ptr [ %i.kc, %.lr.ph203 ], [ %.1201.ph, %.lr.ph203.preheader344 ] ; 2 uses
  %.1111200 = phi i32 [ %i.kb, %.lr.ph203 ], [ %.1111200.ph, %.lr.ph203.preheader344 ]
  %.3199 = phi i8 [ %spec.select157, %.lr.ph203 ], [ %.3199.ph, %.lr.ph203.preheader344 ]
  %i.ka = load i64, ptr %.1201, align 8, !tbaa !226
  %.not146 = icmp eq i64 %i.ka, 0
  %spec.select157 = select i1 %.not146, i8 %.3199, i8 1 ; 2 uses
  %i.kb = add nuw i32 %.1111200, 1                ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.1201, i64 8
  %exitcond241.not = icmp eq i32 %i.kb, %i.hz
  br i1 %exitcond241.not, label %.thread167, label %.lr.ph203, !llvm.loop !635

.thread167.thread288:                             ; preds = %.lr.ph190
  %i.kd = trunc nuw i64 %indvars.iv235 to i32
  br label %.preheader

.thread167.loopexit347.unr-lcssa:                 ; preds = %.lr.ph197
  %lcmp.mod365.not = icmp eq i32 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %.thread167, label %.lr.ph197.epil.preheader

.lr.ph197.epil.preheader:                         ; preds = %.thread167.loopexit347.unr-lcssa, %.lr.ph197.preheader
  %.0108195.epil.init = phi ptr [ %i.ik, %.lr.ph197.preheader ], [ %i.jg, %.thread167.loopexit347.unr-lcssa ]
  %.0109194.epil.init = phi ptr [ %i.il, %.lr.ph197.preheader ], [ %i.jh, %.thread167.loopexit347.unr-lcssa ]
  %.1113192.epil.init = phi i8 [ 0, %.lr.ph197.preheader ], [ %spec.select156.3, %.thread167.loopexit347.unr-lcssa ]
  %lcmp.mod367 = icmp ne i32 %xtraiter364, 0
  call void @llvm.assume(i1 %lcmp.mod367)
  br label %.lr.ph197.epil

.lr.ph197.epil:                                   ; preds = %.lr.ph197.epil, %.lr.ph197.epil.preheader
  %.0108195.epil = phi ptr [ %i.kg, %.lr.ph197.epil ], [ %.0108195.epil.init, %.lr.ph197.epil.preheader ] ; 2 uses
  %.0109194.epil = phi ptr [ %i.kh, %.lr.ph197.epil ], [ %.0109194.epil.init, %.lr.ph197.epil.preheader ] ; 2 uses
  %.1113192.epil = phi i8 [ %spec.select156.epil, %.lr.ph197.epil ], [ %.1113192.epil.init, %.lr.ph197.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph197.epil ], [ 0, %.lr.ph197.epil.preheader ]
  %i.ke = load i64, ptr %.0109194.epil, align 8, !tbaa !226
  %i.kf = load i64, ptr %.0108195.epil, align 8, !tbaa !226
  %.not147.epil = icmp eq i64 %i.ke, %i.kf
  %spec.select156.epil = select i1 %.not147.epil, i8 %.1113192.epil, i8 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0108195.epil, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %.0109194.epil, i64 8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter364
  br i1 %epil.iter.cmp.not, label %.thread167, label %.lr.ph197.epil, !llvm.loop !636

.thread167:                                       ; preds = %.thread167.loopexit347.unr-lcssa, %.lr.ph197.epil, %.lr.ph203, %middle.block
  %.5 = phi i8 [ %spec.select157, %.lr.ph203 ], [ %rdx.select, %middle.block ], [ %spec.select156.3, %.thread167.loopexit347.unr-lcssa ], [ %spec.select156.epil, %.lr.ph197.epil ]
  %.not148.not = icmp eq i8 %.5, 0
  br i1 %.not148.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %.thread167.thread288, %.thread167
  %.0114169294 = phi i32 [ 2, %.thread167.thread288 ], [ 0, %.thread167 ] ; 2 uses
  %.2121181293 = phi i32 [ %i.kd, %.thread167.thread288 ], [ %spec.select, %.thread167 ] ; 2 uses
  %i.ki = load i32, ptr %i.n, align 8, !tbaa !499 ; 5 uses
  %i.kj = icmp ult i32 %.2121181293, %i.ki
  br i1 %i.kj, label %.lr.ph206.preheader, label %.loopexit171

.lr.ph206.preheader:                              ; preds = %.preheader
  %i.kk = zext i32 %.2121181293 to i64
  %wide.trip.count245 = zext i32 %i.ki to i64
  br label %.lr.ph206

bb.ai:                                            ; preds = %.lr.ph206
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count245
  br i1 %exitcond246.not, label %.loopexit171, label %.lr.ph206, !llvm.loop !637

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %bb.ai
  %indvars.iv242 = phi i64 [ %i.kk, %.lr.ph206.preheader ], [ %indvars.iv.next243, %bb.ai ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv242
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !226
  %.not149 = icmp eq i64 %i.km, 0
  br i1 %.not149, label %bb.ai, label %.loopexit171

.loopexit171:                                     ; preds = %bb.ai, %.lr.ph206, %..loopexit171_crit_edge, %.preheader
  %i.kn = phi ptr [ %i.hq, %..loopexit171_crit_edge ], [ %i.hn, %.preheader ], [ %i.hn, %.lr.ph206 ], [ %i.hn, %bb.ai ]
  %i.ko = phi i32 [ %.pre258, %..loopexit171_crit_edge ], [ %i.ki, %.preheader ], [ %i.ki, %.lr.ph206 ], [ %i.ki, %bb.ai ]
  %.3117 = phi i32 [ 1, %..loopexit171_crit_edge ], [ %.0114169294, %.preheader ], [ %.0114169294, %bb.ai ], [ 2, %.lr.ph206 ]
  store i32 %i.ko, ptr %i.l, align 8, !tbaa !466
  %.not150 = icmp eq ptr %2, null
  br i1 %.not150, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.loopexit171
  %i.kp = zext i32 %spec.select to i64
  %i.kq = shl nuw nsw i64 %i.kp, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.kn, ptr nonnull align 8 %2, i64 %i.kq, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit171
  %.not151 = icmp eq i8 %3, 0
  br i1 %.not151, label %ft_var_to_design.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %.not138.not, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kr = load i32, ptr %i.l, align 8, !tbaa !466
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.ks = phi i32 [ %i.kr, %bb.am ], [ %spec.select, %bb.al ] ; 3 uses
  %i.kt = load ptr, ptr %i.hm, align 8, !tbaa !472 ; 7 uses
  %i.ku = load ptr, ptr %i.hg, align 8, !tbaa !486 ; 10 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !104 ; 3 uses
  %i.kv = load i32, ptr %.val, align 8, !tbaa !466 ; 2 uses
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.ks, i32 %i.kv) ; 8 uses
  %.not25.i = icmp eq i32 %spec.select.i, 0       ; 2 uses
  br i1 %.not25.i, label %.preheader3.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.an
  %i.kw = ptrtoaddr ptr %i.ku to i64
  %i.kx = ptrtoaddr ptr %i.kt to i64
  %wide.trip.count.i = zext i32 %spec.select.i to i64 ; 5 uses
  %min.iters.check318 = icmp ult i32 %spec.select.i, 8
  %i.ky = sub i64 %i.kx, %i.kw
  %diff.check = icmp ugt i64 %i.ky, -32
  %or.cond = select i1 %min.iters.check318, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %.lr.ph.preheader.i
  %n.vec320 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next325, %vector.body321 ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %index322 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load323 = load <2 x i64>, ptr %i.kz, align 8, !tbaa !226
  %wide.load324 = load <2 x i64>, ptr %i.la, align 8, !tbaa !226
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %index322 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store <2 x i64> %wide.load323, ptr %i.lb, align 8, !tbaa !226
  store <2 x i64> %wide.load324, ptr %i.lc, align 8, !tbaa !226
  %index.next325 = add nuw i64 %index322, 4       ; 2 uses
  %i.ld = icmp eq i64 %index.next325, %n.vec320
  br i1 %i.ld, label %middle.block326, label %vector.body321, !llvm.loop !638

middle.block326:                                  ; preds = %vector.body321
  %cmp.n327 = icmp eq i64 %n.vec320, %wide.trip.count.i
  br i1 %cmp.n327, label %.preheader3.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block326
  %indvars.iv.i158.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec320, %middle.block326 ] ; 3 uses
  %xtraiter370 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod371.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol
end_hunk_6
begin_hunk_7_@load_truetype_glyph:bb.a
  br i1 %i.ku, label %bb.bg, label %.thread353

bb.bg:                                            ; preds = %bb.bf
  %i.kv = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !174 ; 9 uses
  store i16 -1, ptr %i.ib, align 4, !tbaa !746
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %.011.i = load ptr, ptr %i.kx, align 8, !tbaa !772 ; 3 uses
  %.not12.i = icmp eq ptr %.011.i, null
  %.not1013.i = icmp eq i32 %2, 0
  %or.cond14.i = or i1 %.not1013.i, %.not12.i
  br i1 %or.cond14.i, label %ft_list_get_node_at.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bg, %.lr.ph.i
  %.016.i = phi ptr [ %.0.i331, %.lr.ph.i ], [ %.011.i, %bb.bg ]
  %.0715.i = phi i32 [ %i.ky, %.lr.ph.i ], [ %2, %bb.bg ]
  %i.ky = add i32 %.0715.i, -1                    ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  %.0.i331 = load ptr, ptr %i.kz, align 8, !tbaa !772 ; 3 uses
  %.not.i332 = icmp eq ptr %.0.i331, null
  %.not10.i = icmp eq i32 %i.ky, 0
  %or.cond.i = select i1 %.not.i332, i1 true, i1 %.not10.i
  br i1 %or.cond.i, label %ft_list_get_node_at.exit, label %.lr.ph.i, !llvm.loop !773

ft_list_get_node_at.exit:                         ; preds = %.lr.ph.i, %bb.bg
  %.0.lcssa.i = phi ptr [ %.011.i, %bb.bg ], [ %.0.i331, %.lr.ph.i ] ; 3 uses
  %.not296367 = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not296367, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ft_list_get_node_at.exit, %.lr.ph
  %.0267368 = phi ptr [ %i.lc, %.lr.ph ], [ %.0.lcssa.i, %ft_list_get_node_at.exit ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.0267368, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.la, align 8, !tbaa !673
  %i.lb = getelementptr inbounds nuw i8, ptr %.0267368, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !774 ; 2 uses
  %.not296 = icmp eq ptr %i.lc, null
  br i1 %.not296, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !775

._crit_edge:                                      ; preds = %ft_list_get_node_at.exit
  %i.ld = zext i32 %1 to i64
  %i.le = inttoptr i64 %i.ld to ptr               ; 2 uses
  %i.lf = call ptr @FT_List_Find(ptr noundef nonnull %i.kx, ptr noundef %i.le) #21
  %.not297 = icmp eq ptr %i.lf, null
  br i1 %.not297, label %bb.bj, label %bb.bh

._crit_edge.thread:                               ; preds = %.lr.ph
  %i.lg = zext i32 %1 to i64
  %i.lh = inttoptr i64 %i.lg to ptr               ; 2 uses
  %i.li = call ptr @FT_List_Find(ptr noundef nonnull %i.kx, ptr noundef %i.lh) #21
  %.not297423 = icmp eq ptr %i.li, null
  br i1 %.not297423, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.thread, %._crit_edge
  store i32 21, ptr %i.e, align 4, !tbaa !187
  br label %.thread353

bb.bi:                                            ; preds = %._crit_edge.thread
  %i.lj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  store ptr %i.lh, ptr %i.lj, align 8, !tbaa !673
  br label %bb.bl

bb.bj:                                            ; preds = %._crit_edge
  %i.lk = call ptr @ft_mem_qalloc(ptr noundef %i.kw, i64 noundef 24, ptr noundef nonnull %i.e) #21 ; 2 uses
  %i.ll = load i32, ptr %i.e, align 4, !tbaa !187
  %.not299 = icmp eq i32 %i.ll, 0
  br i1 %.not299, label %bb.bk, label %.thread353

bb.bk:                                            ; preds = %bb.bj
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store ptr %i.le, ptr %i.lm, align 8, !tbaa !673
  call void @FT_List_Add(ptr noundef nonnull %i.kx, ptr noundef %i.lk) #21
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bi, %bb.bk
  %i.ln = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.h, i64 26 ; 3 uses
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !776 ; 2 uses
  %i.lq = zext i16 %i.lp to i32                   ; 2 uses
  %i.lr = load i16, ptr %i.ln, align 8, !tbaa !777
  %i.ls = zext i16 %i.lr to i32
  %i.lt = getelementptr inbounds nuw i8, ptr %i.f, i64 872
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !89
  %i.lv = call i32 %i.lu(ptr noundef nonnull %0) #21 ; 2 uses
  store i32 %i.lv, ptr %i.e, align 4, !tbaa !187
  %.not300 = icmp eq i32 %i.lv, 0
  br i1 %.not300, label %bb.bm, label %.thread353

bb.bm:                                            ; preds = %bb.bl
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !778
  %i.ly = getelementptr inbounds nuw i8, ptr %i.f, i64 848
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !90
  call void %i.lz(ptr noundef nonnull %0) #21
  %i.ma = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !129
  %i.mc = and i64 %i.mb, 2147418112
  %.not301 = icmp eq i64 %i.mc, 0
  br i1 %.not301, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.md = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.me = load i64, ptr %i.md, align 8, !tbaa !74
  %i.mf = and i64 %i.me, 32768
  %.not302 = icmp eq i64 %i.mf, 0
  br i1 %.not302, label %bb.bx, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !779 ; 5 uses
  %i.mi = trunc i32 %i.mh to i16                  ; 2 uses
  %i.mj = and i32 %i.mh, 65535                    ; 5 uses
  %i.mk = add nuw nsw i32 %i.mj, 4
  %i.ml = zext nneg i32 %i.mk to i64              ; 2 uses
  %i.mm = call ptr @ft_mem_qrealloc(ptr noundef %i.kw, i64 noundef 16, i64 noundef 0, i64 noundef %i.ml, ptr noundef null, ptr noundef nonnull %i.e) #21 ; 12 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.mm, ptr %i.mn, align 8, !tbaa !771
  %i.mo = load i32, ptr %i.e, align 4, !tbaa !187
  %.not303 = icmp eq i32 %i.mo, 0
  br i1 %.not303, label %bb.bp, label %.loopexit

bb.bp:                                            ; preds = %bb.bo
  %i.mp = zext nneg i32 %i.mj to i64              ; 6 uses
  %i.mq = call ptr @ft_mem_qrealloc(ptr noundef %i.kw, i64 noundef 1, i64 noundef 0, i64 noundef %i.mp, ptr noundef null, ptr noundef nonnull %i.e) #21 ; 11 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.mq, ptr %i.mr, align 8, !tbaa !780
  %i.ms = load i32, ptr %i.e, align 4, !tbaa !187
  %.not304 = icmp eq i32 %i.ms, 0
  br i1 %.not304, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.mt = call ptr @ft_mem_qrealloc(ptr noundef %i.kw, i64 noundef 2, i64 noundef 0, i64 noundef %i.mp, ptr noundef null, ptr noundef nonnull %i.e) #21 ; 10 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.mt, ptr %i.mu, align 8, !tbaa !781
  %i.mv = load i32, ptr %i.e, align 4, !tbaa !187
  %.not305 = icmp eq i32 %i.mv, 0
  br i1 %.not305, label %bb.br, label %.loopexit

bb.br:                                            ; preds = %bb.bq
  %i.mw = call ptr @ft_mem_qrealloc(ptr noundef %i.kw, i64 noundef 16, i64 noundef 0, i64 noundef %i.ml, ptr noundef null, ptr noundef nonnull %i.e) #21 ; 6 uses
  %i.mx = load i32, ptr %i.e, align 4, !tbaa !187
  %.not306 = icmp eq i32 %i.mx, 0
  br i1 %.not306, label %bb.bs, label %.loopexit

bb.bs:                                            ; preds = %bb.br
  %i.my = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i16 %i.mi, ptr %i.my, align 2, !tbaa !769
  store i16 %i.mi, ptr %10, align 8, !tbaa !770
  %i.mz = getelementptr inbounds nuw i8, ptr %i.h, i64 160 ; 2 uses
  %.not384 = icmp eq i32 %i.mj, 0                 ; 2 uses
  br i1 %.not384, label %._crit_edge373, label %.lr.ph372.preheader

.lr.ph372.preheader:                              ; preds = %bb.bs
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !782 ; 2 uses
  %xtraiter = and i64 %i.mp, 1
  %i.nb = icmp eq i32 %i.mj, 1
  br i1 %i.nb, label %.lr.ph372.epil.preheader, label %.lr.ph372.preheader.new

.lr.ph372.preheader.new:                          ; preds = %.lr.ph372.preheader
  %unroll_iter = and i64 %i.mp, 65534
  br label %.lr.ph372

.lr.ph372:                                        ; preds = %.lr.ph372, %.lr.ph372.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph372.preheader.new ], [ %indvars.iv.next.1, %.lr.ph372 ] ; 6 uses
  %.0263370 = phi ptr [ %i.na, %.lr.ph372.preheader.new ], [ %i.ny, %.lr.ph372 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph372.preheader.new ], [ %niter.next.1, %.lr.ph372 ]
  %i.nc = getelementptr inbounds nuw i8, ptr %.0263370, i64 8
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !783
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %indvars.iv ; 2 uses
  store i64 %i.ne, ptr %i.nf, align 8, !tbaa !293
  %i.ng = getelementptr inbounds nuw i8, ptr %.0263370, i64 12
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !785
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i64 %i.ni, ptr %i.nj, align 8, !tbaa !337
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv
  store i8 1, ptr %i.nk, align 1, !tbaa !227
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %indvars.iv
  %i.nm = trunc nuw i64 %indvars.iv to i16
  store i16 %i.nm, ptr %i.nl, align 2, !tbaa !155
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.0263370, i64 56
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !783
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %indvars.iv.next ; 2 uses
  store i64 %i.np, ptr %i.nq, align 8, !tbaa !293
  %i.nr = getelementptr inbounds nuw i8, ptr %.0263370, i64 60
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !785
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i64 %i.nt, ptr %i.nu, align 8, !tbaa !337
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.next
  store i8 1, ptr %i.nv, align 1, !tbaa !227
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %indvars.iv.next
  %i.nx = trunc nuw i64 %indvars.iv.next to i16
  store i16 %i.nx, ptr %i.nw, align 2, !tbaa !155
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.0263370, i64 96 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge373.loopexit.unr-lcssa, label %.lr.ph372, !llvm.loop !786

._crit_edge373.loopexit.unr-lcssa:                ; preds = %.lr.ph372
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge373.loopexit, label %.lr.ph372.epil.preheader

.lr.ph372.epil.preheader:                         ; preds = %._crit_edge373.loopexit.unr-lcssa, %.lr.ph372.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph372.preheader ], [ %indvars.iv.next.1, %._crit_edge373.loopexit.unr-lcssa ] ; 4 uses
  %.0263370.epil.init = phi ptr [ %i.na, %.lr.ph372.preheader ], [ %i.ny, %._crit_edge373.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod428 = trunc i32 %i.mh to i1
  call void @llvm.assume(i1 %lcmp.mod428)
  %i.nz = getelementptr inbounds nuw i8, ptr %.0263370.epil.init, i64 8
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !783
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %indvars.iv.epil.init ; 2 uses
  store i64 %i.ob, ptr %i.oc, align 8, !tbaa !293
  %i.od = getelementptr inbounds nuw i8, ptr %.0263370.epil.init, i64 12
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !785
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  store i64 %i.of, ptr %i.og, align 8, !tbaa !337
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.epil.init
  store i8 1, ptr %i.oh, align 1, !tbaa !227
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %indvars.iv.epil.init
  %i.oj = trunc nuw i64 %indvars.iv.epil.init to i16
  store i16 %i.oj, ptr %i.oi, align 2, !tbaa !155
  br label %._crit_edge373.loopexit

._crit_edge373.loopexit:                          ; preds = %._crit_edge373.loopexit.unr-lcssa, %.lr.ph372.epil.preheader
  %i.ok = trunc i32 %i.mh to i16
  br label %._crit_edge373

._crit_edge373:                                   ; preds = %._crit_edge373.loopexit, %bb.bs
  %.0265.lcssa = phi i16 [ 0, %bb.bs ], [ %i.ok, %._crit_edge373.loopexit ] ; 4 uses
  %i.ol = add i16 %.0265.lcssa, 1
  %i.om = zext i16 %.0265.lcssa to i64
  %i.on = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.om
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !tbaa.struct !426
  %i.oo = add i16 %.0265.lcssa, 2
  %i.op = zext i16 %i.ol to i64
  %i.oq = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.op
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oq, ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i64 16, i1 false), !tbaa.struct !426
  %i.or = add i16 %.0265.lcssa, 3
  %i.os = zext i16 %i.oo to i64
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.os
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ot, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false), !tbaa.struct !426
  %i.ou = zext i16 %i.or to i64
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.ou
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ov, ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i64 16, i1 false), !tbaa.struct !426
  %i.ow = call fastcc i32 @TT_Vary_Apply_Glyph_Deltas(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %i.mw) ; 2 uses
  store i32 %i.ow, ptr %i.e, align 4, !tbaa !187
  %.not307 = icmp ne i32 %i.ow, 0
  %brmerge = or i1 %.not307, %.not384
  br i1 %brmerge, label %.loopexit, label %.lr.ph377.preheader

.lr.ph377.preheader:                              ; preds = %._crit_edge373
  %i.ox = load ptr, ptr %i.mz, align 8, !tbaa !782 ; 2 uses
  %xtraiter429 = and i64 %i.mp, 1
  %i.oy = icmp eq i32 %i.mj, 1
  br i1 %i.oy, label %.lr.ph377.epil.preheader, label %.lr.ph377.preheader.new

.lr.ph377.preheader.new:                          ; preds = %.lr.ph377.preheader
  %unroll_iter432 = and i64 %i.mp, 65534
  br label %.lr.ph377

.lr.ph377:                                        ; preds = %bb.bv, %.lr.ph377.preheader.new
  %indvars.iv390 = phi i64 [ 0, %.lr.ph377.preheader.new ], [ %indvars.iv.next391.1, %bb.bv ] ; 3 uses
  %.1264375 = phi ptr [ %i.ox, %.lr.ph377.preheader.new ], [ %i.pq, %bb.bv ] ; 5 uses
  %niter433 = phi i64 [ 0, %.lr.ph377.preheader.new ], [ %niter433.next.1, %bb.bv ]
  %i.oz = getelementptr inbounds nuw i8, ptr %.1264375, i64 4
  %i.pa = load i16, ptr %i.oz, align 4, !tbaa !787
  %i.pb = and i16 %i.pa, 2
  %.not308 = icmp eq i16 %i.pb, 0
  br i1 %.not308, label %.lr.ph377.1, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph377
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %indvars.iv390
  %i.pd = getelementptr inbounds nuw i8, ptr %.1264375, i64 8
  %i.pe = load <2 x i64>, ptr %i.pc, align 8, !tbaa !226
  %i.pf = trunc <2 x i64> %i.pe to <2 x i16>
  %i.pg = sext <2 x i16> %i.pf to <2 x i32>
  store <2 x i32> %i.pg, ptr %i.pd, align 8, !tbaa !187
  br label %.lr.ph377.1

.lr.ph377.1:                                      ; preds = %.lr.ph377, %bb.bt
  %i.ph = getelementptr inbounds nuw i8, ptr %.1264375, i64 52
  %i.pi = load i16, ptr %i.ph, align 4, !tbaa !787
  %i.pj = and i16 %i.pi, 2
  %.not308.1 = icmp eq i16 %i.pj, 0
  br i1 %.not308.1, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph377.1
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %indvars.iv390
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pm = getelementptr inbounds nuw i8, ptr %.1264375, i64 56
  %i.pn = load <2 x i64>, ptr %i.pl, align 8, !tbaa !226
  %i.po = trunc <2 x i64> %i.pn to <2 x i16>
  %i.pp = sext <2 x i16> %i.po to <2 x i32>
  store <2 x i32> %i.pp, ptr %i.pm, align 8, !tbaa !187
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph377.1
  %indvars.iv.next391.1 = add nuw nsw i64 %indvars.iv390, 2 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.1264375, i64 96 ; 2 uses
  %niter433.next.1 = add nuw i64 %niter433, 2     ; 2 uses
  %niter433.ncmp.1 = icmp eq i64 %niter433.next.1, %unroll_iter432
  br i1 %niter433.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph377, !llvm.loop !788

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bv
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %.loopexit, label %.lr.ph377.epil.preheader

.lr.ph377.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph377.preheader
  %indvars.iv390.epil.init = phi i64 [ 0, %.lr.ph377.preheader ], [ %indvars.iv.next391.1, %.loopexit.loopexit.unr-lcssa ]
  %.1264375.epil.init = phi ptr [ %i.ox, %.lr.ph377.preheader ], [ %i.pq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod431 = trunc i32 %i.mh to i1
  call void @llvm.assume(i1 %lcmp.mod431)
  %i.pr = getelementptr inbounds nuw i8, ptr %.1264375.epil.init, i64 4
  %i.ps = load i16, ptr %i.pr, align 4, !tbaa !787
  %i.pt = and i16 %i.ps, 2
  %.not308.epil = icmp eq i16 %i.pt, 0
  br i1 %.not308.epil, label %.loopexit, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph377.epil.preheader
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %indvars.iv390.epil.init
  %i.pv = getelementptr inbounds nuw i8, ptr %.1264375.epil.init, i64 8
  %i.pw = load <2 x i64>, ptr %i.pu, align 8, !tbaa !226
  %i.px = trunc <2 x i64> %i.pw to <2 x i16>
  %i.py = sext <2 x i16> %i.px to <2 x i32>
  store <2 x i32> %i.py, ptr %i.pv, align 8, !tbaa !187
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.bw, %.lr.ph377.epil.preheader, %._crit_edge373, %bb.br, %bb.bq, %bb.bp, %bb.bo
  %i.pz = phi ptr [ null, %bb.bo ], [ null, %bb.bp ], [ %i.mt, %bb.bq ], [ %i.mt, %bb.br ], [ %i.mt, %._crit_edge373 ], [ %i.mt, %.lr.ph377.epil.preheader ], [ %i.mt, %bb.bw ], [ %i.mt, %.loopexit.loopexit.unr-lcssa ]
  %i.qa = phi ptr [ null, %bb.bo ], [ %i.mq, %bb.bp ], [ %i.mq, %bb.bq ], [ %i.mq, %bb.br ], [ %i.mq, %._crit_edge373 ], [ %i.mq, %.lr.ph377.epil.preheader ], [ %i.mq, %bb.bw ], [ %i.mq, %.loopexit.loopexit.unr-lcssa ]
  %.0262 = phi ptr [ null, %bb.bo ], [ null, %bb.bp ], [ null, %bb.bq ], [ %i.mw, %bb.br ], [ %i.mw, %._crit_edge373 ], [ %i.mw, %.lr.ph377.epil.preheader ], [ %i.mw, %bb.bw ], [ %i.mw, %.loopexit.loopexit.unr-lcssa ]
  call void @ft_mem_free(ptr noundef %i.kw, ptr noundef %i.mm) #21
  call void @ft_mem_free(ptr noundef %i.kw, ptr noundef %i.qa) #21
  call void @ft_mem_free(ptr noundef %i.kw, ptr noundef %i.pz) #21
  call void @ft_mem_free(ptr noundef %i.kw, ptr noundef %.0262) #21
  %i.qb = load i32, ptr %i.e, align 4, !tbaa !187
  %.not309 = icmp eq i32 %i.qb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br i1 %.not309, label %bb.bx, label %.thread347

bb.bx:                                            ; preds = %.loopexit, %bb.bn
  %i.qc = load i64, ptr %i.p, align 8, !tbaa !166 ; 2 uses
  %i.qd = and i64 %i.qc, 1
  %i.qe = icmp eq i64 %i.qd, 0
  br i1 %i.qe, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.qf = load i64, ptr %i.gy, align 8, !tbaa !288
  %i.qg = mul i64 %i.qf, %.0276                   ; 2 uses
  %i.qh = ashr i64 %i.qg, 63
  %i.qi = add i64 %i.qg, 32768
  %i.qj = add i64 %i.qi, %i.qh
  %i.qk = ashr i64 %i.qj, 16
  store i64 %i.qk, ptr %i.gy, align 8, !tbaa !288
  %i.ql = load i64, ptr %i.hc, align 8, !tbaa !763
  %i.qm = mul i64 %i.ql, %.0276                   ; 2 uses
  %i.qn = ashr i64 %i.qm, 63
  %i.qo = add i64 %i.qm, 32768
  %i.qp = add i64 %i.qo, %i.qn
  %i.qq = ashr i64 %i.qp, 16
  store i64 %i.qq, ptr %i.hc, align 8, !tbaa !763
  %i.qr = load i64, ptr %i.he, align 8, !tbaa !765
  %i.qs = mul i64 %i.qr, %.0276                   ; 2 uses
  %i.qt = ashr i64 %i.qs, 63
  %i.qu = add i64 %i.qs, 32768
  %i.qv = add i64 %i.qu, %i.qt
  %i.qw = ashr i64 %i.qv, 16
  store i64 %i.qw, ptr %i.he, align 8, !tbaa !765
  %i.qx = load i64, ptr %i.hj, align 8, !tbaa !766
  %i.qy = mul i64 %i.qx, %.0275                   ; 2 uses
  %i.qz = ashr i64 %i.qy, 63
  %i.ra = add i64 %i.qy, 32768
  %i.rb = add i64 %i.ra, %i.qz
  %i.rc = ashr i64 %i.rb, 16
  store i64 %i.rc, ptr %i.hj, align 8, !tbaa !766
  %i.rd = load i64, ptr %i.hk, align 8, !tbaa !767
  %i.re = mul i64 %i.rd, %.0276                   ; 2 uses
  %i.rf = ashr i64 %i.re, 63
  %i.rg = add i64 %i.re, 32768
  %i.rh = add i64 %i.rg, %i.rf
  %i.ri = ashr i64 %i.rh, 16
  store i64 %i.ri, ptr %i.hk, align 8, !tbaa !767
  %i.rj = load i64, ptr %i.hn, align 8, !tbaa !768
  %i.rk = mul i64 %i.rj, %.0275                   ; 2 uses
  %i.rl = ashr i64 %i.rk, 63
  %i.rm = add i64 %i.rk, 32768
  %i.rn = add i64 %i.rm, %i.rl
  %i.ro = ashr i64 %i.rn, 16
  store i64 %i.ro, ptr %i.hn, align 8, !tbaa !768
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.rp = and i64 %i.qc, 1024
  %.not310 = icmp eq i64 %i.rp, 0
  br i1 %.not310, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @FT_GlyphLoader_Add(ptr noundef %i.h) #21
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !172
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 144
  store i32 1668246896, ptr %i.rs, align 8, !tbaa !149
  br label %.thread347

bb.cb:                                            ; preds = %bb.bz
  %i.rt = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !779 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !279
  %i.rx = load ptr, ptr %i.dk, align 8, !tbaa !173
  %i.ry = load i32, ptr %i.co, align 8, !tbaa !743
  call void @FT_GlyphLoader_Add(ptr noundef %i.h) #21
  %.not386 = icmp eq i32 %i.ru, 0
  br i1 %.not386, label %bb.ch, label %.lr.ph380

.lr.ph380:                                        ; preds = %bb.cb
  %i.rz = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  %i.sa = zext i32 %i.rw to i64                   ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.sf = add nuw nsw i32 %2, 1
  %wide.trip.count398 = zext i32 %i.ru to i64
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph380, %select.unfold
  %indvars.iv395 = phi i64 [ 0, %.lr.ph380 ], [ %indvars.iv.next396, %select.unfold ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.sg = load ptr, ptr %i.rz, align 8, !tbaa !283
  %i.sh = getelementptr inbounds nuw [48 x i8], ptr %i.sg, i64 %i.sa
  %i.si = getelementptr inbounds nuw [48 x i8], ptr %i.sh, i64 %indvars.iv395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !tbaa.struct !426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.sb, ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i64 16, i1 false), !tbaa.struct !426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.sc, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false), !tbaa.struct !426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.sd, ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i64 16, i1 false), !tbaa.struct !426
  %i.sj = load i32, ptr %i.se, align 8, !tbaa !175
  %i.sk = load i32, ptr %i.fh, align 4, !tbaa !177
  %i.sl = load i16, ptr %i.lo, align 2, !tbaa !776 ; 2 uses
  %i.sm = zext i16 %i.sl to i32
  %i.sn = load i32, ptr %i.si, align 8, !tbaa !789
  %i.so = call fastcc i32 @load_truetype_glyph(ptr noundef %0, i32 noundef %i.sn, i32 noundef %i.sf, i8 noundef zeroext 0) ; 2 uses
  store i32 %i.so, ptr %i.e, align 4, !tbaa !187
  %.not313 = icmp eq i32 %i.so, 0
  br i1 %.not313, label %bb.cd, label %.thread334

bb.cd:                                            ; preds = %bb.cc
  %i.sp = load ptr, ptr %i.rz, align 8, !tbaa !283
  %i.sq = getelementptr inbounds nuw [48 x i8], ptr %i.sp, i64 %i.sa
  %i.sr = getelementptr inbounds nuw [48 x i8], ptr %i.sq, i64 %indvars.iv395 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  %i.st = load i16, ptr %i.ss, align 4, !tbaa !787
  %i.su = and i16 %i.st, 512
  %.not314 = icmp eq i16 %i.su, 0
  br i1 %.not314, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 16 dereferenceable(16) %i.sb, i64 16, i1 false), !tbaa.struct !426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 16 dereferenceable(16) %i.sc, i64 16, i1 false), !tbaa.struct !426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 16 dereferenceable(16) %i.sd, i64 16, i1 false), !tbaa.struct !426
  store i32 %i.sj, ptr %i.se, align 8, !tbaa !175
  store i32 %i.sk, ptr %i.fh, align 4, !tbaa !177
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.sv = load i16, ptr %i.lo, align 2, !tbaa !776 ; 2 uses
  %i.sw = icmp eq i16 %i.sv, %i.sl
  br i1 %i.sw, label %select.unfold, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sx = call fastcc i32 @TT_Process_Composite_Component(ptr noundef %0, ptr noundef nonnull %i.sr, i32 noundef %i.lq, i32 noundef %i.sm) ; 2 uses
  store i32 %i.sx, ptr %i.e, align 4, !tbaa !187
  %.not315 = icmp eq i32 %i.sx, 0
  br i1 %.not315, label %select.unfold, label %.thread334

.thread334:                                       ; preds = %bb.cc, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.thread347

select.unfold:                                    ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %exitcond399.not = icmp eq i64 %indvars.iv.next396, %wide.trip.count398
  br i1 %exitcond399.not, label %._crit_edge381, label %bb.cc, !llvm.loop !790

._crit_edge381:                                   ; preds = %select.unfold
  %i.sy = icmp ugt i16 %i.sv, %i.lp
  br label %bb.ch

bb.ch:                                            ; preds = %._crit_edge381, %bb.cb
  %.0259.lcssa = phi ptr [ %i.sr, %._crit_edge381 ], [ null, %bb.cb ] ; 2 uses
  %.0.lcssa = phi i1 [ %i.sy, %._crit_edge381 ], [ false, %bb.cb ]
  store ptr %i.rx, ptr %i.dk, align 8, !tbaa !173
  store i32 %i.ry, ptr %i.co, align 8, !tbaa !743
  store i64 %i.lx, ptr %i.lw, align 8, !tbaa !778
  %i.sz = load i64, ptr %i.p, align 8, !tbaa !166
  %i.ta = and i64 %i.sz, 2
  %i.tb = icmp eq i64 %i.ta, 0
  %i.tc = icmp ne ptr %.0259.lcssa, null
end_hunk_7
begin_hunk_8_@TT_Vary_Apply_Glyph_Deltas:bb.a
  %bound0578 = icmp ult ptr %i.dm, %scevgep573
  %bound1579 = icmp ult ptr %i.do, %scevgep572
  %found.conflict580 = and i1 %bound0578, %bound1579
  %bound0581 = icmp ult ptr %scevgep574, %scevgep577
  %bound1582 = icmp ult ptr %scevgep576, %scevgep575
  %found.conflict583 = and i1 %bound0581, %bound1582
  %conflict.rdx584 = or i1 %found.conflict580, %found.conflict583
  br i1 %conflict.rdx584, label %scalar.ph585.preheader, label %vector.ph587

vector.ph587:                                     ; preds = %vector.memcheck571
  %n.vec588 = and i64 %wide.trip.count, 131070    ; 3 uses
  br label %vector.body589

vector.body589:                                   ; preds = %vector.body589, %vector.ph587
  %index590 = phi i64 [ 0, %vector.ph587 ], [ %index.next593, %vector.body589 ] ; 4 uses
  %i.dz = or disjoint i64 %index590, 1            ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %index590
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dz
  %wide.load591 = load <2 x i64>, ptr %i.ea, align 8
  %wide.load592 = load <2 x i64>, ptr %i.eb, align 8
  %i.ec = shl <2 x i64> %wide.load591, splat (i64 16)
  %i.ed = shl <2 x i64> %wide.load592, splat (i64 16)
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %index590
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dz
  store <2 x i64> %i.ec, ptr %i.ee, align 8
  store <2 x i64> %i.ed, ptr %i.ef, align 8
  %index.next593 = add nuw i64 %index590, 2       ; 2 uses
  %i.eg = icmp eq i64 %index.next593, %n.vec588
  br i1 %i.eg, label %middle.block594, label %vector.body589, !llvm.loop !811

middle.block594:                                  ; preds = %vector.body589
  %cmp.n595 = icmp eq i64 %n.vec588, %wide.trip.count
  br i1 %cmp.n595, label %.loopexit642, label %scalar.ph585.preheader

scalar.ph585.preheader:                           ; preds = %vector.memcheck571, %bb.m, %middle.block594
  %indvars.iv491.ph = phi i64 [ 0, %vector.memcheck571 ], [ 0, %bb.m ], [ %n.vec588, %middle.block594 ] ; 5 uses
  %i.eh = zext i16 %i.l to i64                    ; 2 uses
  %i.ei = add nuw nsw i64 %i.eh, 3
  %xtraiter647 = and i64 %i.eh, 1
  %lcmp.mod648.not = icmp eq i64 %xtraiter647, 0
  br i1 %lcmp.mod648.not, label %scalar.ph585.prol.loopexit, label %scalar.ph585.prol

scalar.ph585.prol:                                ; preds = %scalar.ph585.preheader
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv491.ph
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %indvars.iv491.ph
  %i.el = load <2 x i64>, ptr %i.ej, align 8, !tbaa !226
  %i.em = shl <2 x i64> %i.el, splat (i64 16)
  store <2 x i64> %i.em, ptr %i.ek, align 8, !tbaa !226
  %indvars.iv.next492.prol = or disjoint i64 %indvars.iv491.ph, 1
  br label %scalar.ph585.prol.loopexit

scalar.ph585.prol.loopexit:                       ; preds = %scalar.ph585.prol, %scalar.ph585.preheader
  %indvars.iv491.unr = phi i64 [ %indvars.iv491.ph, %scalar.ph585.preheader ], [ %indvars.iv.next492.prol, %scalar.ph585.prol ]
  %i.en = icmp eq i64 %i.ei, %indvars.iv491.ph
  br i1 %i.en, label %.loopexit642, label %scalar.ph585

scalar.ph585:                                     ; preds = %scalar.ph585.prol.loopexit, %scalar.ph585
  %indvars.iv491 = phi i64 [ %indvars.iv.next492.1, %scalar.ph585 ], [ %indvars.iv491.unr, %scalar.ph585.prol.loopexit ] ; 4 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv491
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %indvars.iv491
  %i.eq = load <2 x i64>, ptr %i.eo, align 8, !tbaa !226
  %i.er = shl <2 x i64> %i.eq, splat (i64 16)
  store <2 x i64> %i.er, ptr %i.ep, align 8, !tbaa !226
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv.next492
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %indvars.iv.next492
  %i.eu = load <2 x i64>, ptr %i.es, align 8, !tbaa !226
  %i.ev = shl <2 x i64> %i.eu, splat (i64 16)
  store <2 x i64> %i.ev, ptr %i.et, align 8, !tbaa !226
  %indvars.iv.next492.1 = add nuw nsw i64 %indvars.iv491, 2 ; 2 uses
  %exitcond495.not.1 = icmp eq i64 %indvars.iv.next492.1, %wide.trip.count
  br i1 %exitcond495.not.1, label %.loopexit642, label %scalar.ph585, !llvm.loop !812

.loopexit642:                                     ; preds = %scalar.ph585.prol.loopexit, %scalar.ph585, %middle.block594
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dj ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.dj ; 5 uses
  %i.ey = zext i32 %i.dn to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ey ; 5 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ey ; 4 uses
  %i.fb = getelementptr [8 x i8], ptr %i.dl, i64 %wide.trip.count ; 13 uses
  %.not482 = icmp eq i16 %i.bu, 0
  br i1 %.not482, label %._crit_edge480, label %.lr.ph479

.lr.ph479:                                        ; preds = %.loopexit642
  %i.fc = load ptr, ptr %i.bk, align 8, !tbaa !560
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.fg = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.fh = zext i16 %i.l to i64
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %i.fj = add nuw nsw i64 %i.fi, 32               ; 2 uses
  %xtraiter665 = and i64 %wide.trip.count, 1
  %unroll_iter668 = and i64 %wide.trip.count, 131070
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  %lcmp.mod667 = trunc i16 %i.l to i1
  %n.vec630 = and i64 %wide.trip.count, 131070    ; 3 uses
  %cmp.n641 = icmp eq i64 %n.vec630, %wide.trip.count
  %n.vec617 = and i64 %wide.trip.count, 131070    ; 3 uses
  %cmp.n626 = icmp eq i64 %n.vec617, %wide.trip.count
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph479, %bb.aj
  %.0369477 = phi ptr [ null, %.lr.ph479 ], [ %.3, %bb.aj ] ; 2 uses
  %.0377476 = phi ptr [ %i.fc, %.lr.ph479 ], [ %.6, %bb.aj ] ; 6 uses
  %.1392475 = phi i32 [ 0, %.lr.ph479 ], [ %i.qi, %bb.aj ]
  %.1395474 = phi i64 [ %.0394, %.lr.ph479 ], [ %.2396, %bb.aj ] ; 3 uses
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !624
  %i.fl = ptrtoint ptr %i.fk to i64               ; 3 uses
  %i.fm = ptrtoint ptr %.0377476 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = icmp slt i64 %i.fn, 4
  br i1 %i.fo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %.thread433

bb.p:                                             ; preds = %bb.n
  %i.fp = load ptr, ptr %i.fe, align 8, !tbaa !609 ; 2 uses
  %i.fq = load i8, ptr %.0377476, align 1, !tbaa !227
  %i.fr = zext i8 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.0377476, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !227
  %i.fv = zext i8 %i.fu to i64
  %.pn = or disjoint i64 %i.fs, %i.fv
  %i.fw = getelementptr inbounds nuw i8, ptr %.0377476, i64 4 ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0377476, i64 2
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !227
  %i.fz = zext i8 %i.fy to i16
  %i.ga = shl nuw i16 %i.fz, 8                    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0377476, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !227
  %i.gd = zext i8 %i.gc to i16
  %i.ge = or disjoint i16 %i.ga, %i.gd            ; 2 uses
  %i.gf = zext i16 %i.ge to i32                   ; 4 uses
  %i.gg = and i32 %i.gf, 16384
  %.not420 = icmp eq i32 %i.gg, 0                 ; 2 uses
  %spec.select = select i1 %.not420, ptr %i.fp, ptr null ; 2 uses
  %.not421 = icmp sgt i16 %i.ga, -1
  br i1 %.not421, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gh = load i32, ptr %i.p, align 8, !tbaa !466 ; 7 uses
  %i.gi = shl i32 %i.gh, 1
  %i.gj = ptrtoint ptr %i.fw to i64
  %i.gk = sub i64 %i.fl, %i.gj
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = icmp ugt i32 %i.gi, %i.gl
  br i1 %i.gm, label %bb.r, label %.preheader455

.preheader455:                                    ; preds = %bb.q
  %.not483 = icmp eq i32 %i.gh, 0
  br i1 %.not483, label %.loopexit456, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader455
  %wide.trip.count499 = zext i32 %i.gh to i64     ; 2 uses
  %xtraiter649 = and i64 %wide.trip.count499, 1
  %i.gn = icmp eq i32 %i.gh, 1
  br i1 %i.gn, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count499, 4294967294
  br label %.lr.ph

bb.r:                                             ; preds = %bb.q
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %.thread433

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv496 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next497.1, %.lr.ph ] ; 3 uses
  %.1378460 = phi ptr [ %i.fw, %.lr.ph.preheader.new ], [ %i.gz, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.go = getelementptr inbounds nuw i8, ptr %.1378460, i64 2
  %i.gp = load i8, ptr %.1378460, align 1, !tbaa !227
  %i.gq = zext i8 %i.gp to i16
  %i.gr = shl nuw i16 %i.gq, 8
  %i.gs = getelementptr inbounds nuw i8, ptr %.1378460, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !227
  %i.gu = zext i8 %i.gt to i16
  %i.gv = or disjoint i16 %i.gr, %i.gu
  %i.gw = sext i16 %i.gv to i64
  %i.gx = shl nsw i64 %i.gw, 2
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv496
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !226
  %i.gz = getelementptr inbounds nuw i8, ptr %.1378460, i64 4 ; 3 uses
  %i.ha = load i8, ptr %i.go, align 1, !tbaa !227
  %i.hb = zext i8 %i.ha to i16
  %i.hc = shl nuw i16 %i.hb, 8
  %i.hd = getelementptr inbounds nuw i8, ptr %.1378460, i64 3
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !227
  %i.hf = zext i8 %i.he to i16
  %i.hg = or disjoint i16 %i.hc, %i.hf
  %i.hh = sext i16 %i.hg to i64
  %i.hi = shl nsw i64 %i.hh, 2
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv496
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i64 %i.hi, ptr %i.hk, align 8, !tbaa !226
  %indvars.iv.next497.1 = add nuw nsw i64 %indvars.iv496, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit456.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !813

bb.s:                                             ; preds = %bb.p
  %i.hl = and i32 %i.gf, 4095                     ; 3 uses
  %i.hm = load i32, ptr %i.ff, align 8, !tbaa !631
  %i.hn = icmp ult i32 %i.hl, %i.hm
  br i1 %i.hn, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.not422 = icmp eq ptr %spec.select, null
  br i1 %.not422, label %.thread430, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ho = zext nneg i32 %i.hl to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.ho
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !226 ; 2 uses
  %.not423 = icmp eq i64 %i.hq, -131072
  br i1 %.not423, label %.thread430, label %bb.z

.thread430:                                       ; preds = %bb.u, %bb.t
  %i.hr = load ptr, ptr %i.fg, align 8, !tbaa !610
  %i.hs = load i32, ptr %i.p, align 8, !tbaa !466 ; 2 uses
  %i.ht = mul i32 %i.hs, %i.hl
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hu
  br label %.loopexit456

bb.v:                                             ; preds = %bb.s
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %.thread433

.loopexit456.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod650.not = icmp eq i64 %xtraiter649, 0
  br i1 %lcmp.mod650.not, label %.loopexit456, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit456.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv496.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next497.1, %.loopexit456.loopexit.unr-lcssa ]
  %.1378460.epil.init = phi ptr [ %i.fw, %.lr.ph.preheader ], [ %i.gz, %.loopexit456.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod652 = trunc i32 %i.gh to i1
  call void @llvm.assume(i1 %lcmp.mod652)
  %i.hw = getelementptr inbounds nuw i8, ptr %.1378460.epil.init, i64 2
  %i.hx = load i8, ptr %.1378460.epil.init, align 1, !tbaa !227
  %i.hy = zext i8 %i.hx to i16
  %i.hz = shl nuw i16 %i.hy, 8
  %i.ia = getelementptr inbounds nuw i8, ptr %.1378460.epil.init, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !227
  %i.ic = zext i8 %i.ib to i16
  %i.id = or disjoint i16 %i.hz, %i.ic
  %i.ie = sext i16 %i.id to i64
  %i.if = shl nsw i64 %i.ie, 2
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv496.epil.init
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !226
  br label %.loopexit456

.loopexit456:                                     ; preds = %.lr.ph.epil.preheader, %.loopexit456.loopexit.unr-lcssa, %.preheader455, %.thread430
  %i.ih = phi i32 [ %i.hs, %.thread430 ], [ 0, %.preheader455 ], [ %i.gh, %.loopexit456.loopexit.unr-lcssa ], [ %i.gh, %.lr.ph.epil.preheader ] ; 5 uses
  %.2379 = phi ptr [ %i.fw, %.thread430 ], [ %i.fw, %.preheader455 ], [ %i.gz, %.loopexit456.loopexit.unr-lcssa ], [ %i.hw, %.lr.ph.epil.preheader ] ; 5 uses
  %.2375 = phi ptr [ %i.hv, %.thread430 ], [ %i.dg, %.preheader455 ], [ %i.dg, %.loopexit456.loopexit.unr-lcssa ], [ %i.dg, %.lr.ph.epil.preheader ]
  %.1 = phi ptr [ %spec.select, %.thread430 ], [ null, %.preheader455 ], [ null, %.loopexit456.loopexit.unr-lcssa ], [ null, %.lr.ph.epil.preheader ] ; 2 uses
  br i1 %.not420, label %.loopexit453, label %bb.w

bb.w:                                             ; preds = %.loopexit456
  %i.ii = shl i32 %i.ih, 2
  %i.ij = ptrtoint ptr %.2379 to i64
  %i.ik = sub i64 %i.fl, %i.ij
  %i.il = trunc i64 %i.ik to i32
  %i.im = icmp ugt i32 %i.ii, %i.il
  br i1 %i.im, label %bb.x, label %.preheader454

.preheader454:                                    ; preds = %bb.w
  %.not484 = icmp eq i32 %i.ih, 0
  br i1 %.not484, label %.loopexit453, label %.lr.ph463.preheader

.lr.ph463.preheader:                              ; preds = %.preheader454
  %wide.trip.count504 = zext i32 %i.ih to i64     ; 5 uses
  %i.in = add nsw i64 %wide.trip.count504, -1     ; 2 uses
  %xtraiter653 = and i64 %wide.trip.count504, 1
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %.lr.ph463.epil.preheader, label %.lr.ph463.preheader.new

.lr.ph463.preheader.new:                          ; preds = %.lr.ph463.preheader
  %unroll_iter657 = and i64 %wide.trip.count504, 4294967294
  br label %.lr.ph463

bb.x:                                             ; preds = %bb.w
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %.thread433

.lr.ph467.preheader.unr-lcssa:                    ; preds = %.lr.ph463
  %lcmp.mod654.not = icmp eq i64 %xtraiter653, 0
  br i1 %lcmp.mod654.not, label %.lr.ph467.preheader, label %.lr.ph463.epil.preheader

.lr.ph463.epil.preheader:                         ; preds = %.lr.ph467.preheader.unr-lcssa, %.lr.ph463.preheader
  %indvars.iv501.epil.init = phi i64 [ 0, %.lr.ph463.preheader ], [ %indvars.iv.next502.1, %.lr.ph467.preheader.unr-lcssa ]
  %.3380462.epil.init = phi ptr [ %.2379, %.lr.ph463.preheader ], [ %i.jm, %.lr.ph467.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod656 = trunc i32 %i.ih to i1
  call void @llvm.assume(i1 %lcmp.mod656)
  %i.ip = getelementptr inbounds nuw i8, ptr %.3380462.epil.init, i64 2
  %i.iq = load i8, ptr %.3380462.epil.init, align 1, !tbaa !227
  %i.ir = zext i8 %i.iq to i16
  %i.is = shl nuw i16 %i.ir, 8
  %i.it = getelementptr inbounds nuw i8, ptr %.3380462.epil.init, i64 1
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !227
  %i.iv = zext i8 %i.iu to i16
  %i.iw = or disjoint i16 %i.is, %i.iv
  %i.ix = sext i16 %i.iw to i64
  %i.iy = shl nsw i64 %i.ix, 2
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv501.epil.init
  store i64 %i.iy, ptr %i.iz, align 8, !tbaa !226
  br label %.lr.ph467.preheader

.lr.ph467.preheader:                              ; preds = %.lr.ph467.preheader.unr-lcssa, %.lr.ph463.epil.preheader
  %.lcssa645 = phi ptr [ %i.jm, %.lr.ph467.preheader.unr-lcssa ], [ %i.ip, %.lr.ph463.epil.preheader ] ; 2 uses
  %xtraiter659 = and i64 %wide.trip.count504, 1
  %i.ja = icmp eq i64 %i.in, 0
  br i1 %i.ja, label %.lr.ph467.epil.preheader, label %.lr.ph467.preheader.new

.lr.ph467.preheader.new:                          ; preds = %.lr.ph467.preheader
  %unroll_iter663 = and i64 %wide.trip.count504, 4294967294
  br label %.lr.ph467

.lr.ph463:                                        ; preds = %.lr.ph463, %.lr.ph463.preheader.new
  %indvars.iv501 = phi i64 [ 0, %.lr.ph463.preheader.new ], [ %indvars.iv.next502.1, %.lr.ph463 ] ; 3 uses
  %.3380462 = phi ptr [ %.2379, %.lr.ph463.preheader.new ], [ %i.jm, %.lr.ph463 ] ; 5 uses
  %niter658 = phi i64 [ 0, %.lr.ph463.preheader.new ], [ %niter658.next.1, %.lr.ph463 ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.3380462, i64 2
  %i.jc = load i8, ptr %.3380462, align 1, !tbaa !227
  %i.jd = zext i8 %i.jc to i16
  %i.je = shl nuw i16 %i.jd, 8
  %i.jf = getelementptr inbounds nuw i8, ptr %.3380462, i64 1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !227
  %i.jh = zext i8 %i.jg to i16
  %i.ji = or disjoint i16 %i.je, %i.jh
  %i.jj = sext i16 %i.ji to i64
  %i.jk = shl nsw i64 %i.jj, 2
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv501
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !226
  %i.jm = getelementptr inbounds nuw i8, ptr %.3380462, i64 4 ; 3 uses
  %i.jn = load i8, ptr %i.jb, align 1, !tbaa !227
  %i.jo = zext i8 %i.jn to i16
  %i.jp = shl nuw i16 %i.jo, 8
  %i.jq = getelementptr inbounds nuw i8, ptr %.3380462, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !227
  %i.js = zext i8 %i.jr to i16
  %i.jt = or disjoint i16 %i.jp, %i.js
  %i.ju = sext i16 %i.jt to i64
  %i.jv = shl nsw i64 %i.ju, 2
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv501
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i64 %i.jv, ptr %i.jx, align 8, !tbaa !226
  %indvars.iv.next502.1 = add nuw nsw i64 %indvars.iv501, 2 ; 2 uses
  %niter658.next.1 = add nuw i64 %niter658, 2     ; 2 uses
  %niter658.ncmp.1 = icmp eq i64 %niter658.next.1, %unroll_iter657
  br i1 %niter658.ncmp.1, label %.lr.ph467.preheader.unr-lcssa, label %.lr.ph463, !llvm.loop !814

.lr.ph467:                                        ; preds = %.lr.ph467, %.lr.ph467.preheader.new
  %indvars.iv506 = phi i64 [ 0, %.lr.ph467.preheader.new ], [ %indvars.iv.next507.1, %.lr.ph467 ] ; 3 uses
  %.4381466 = phi ptr [ %.lcssa645, %.lr.ph467.preheader.new ], [ %i.kj, %.lr.ph467 ] ; 5 uses
  %niter664 = phi i64 [ 0, %.lr.ph467.preheader.new ], [ %niter664.next.1, %.lr.ph467 ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.4381466, i64 2
  %i.jz = load i8, ptr %.4381466, align 1, !tbaa !227
  %i.ka = zext i8 %i.jz to i16
  %i.kb = shl nuw i16 %i.ka, 8
  %i.kc = getelementptr inbounds nuw i8, ptr %.4381466, i64 1
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !227
  %i.ke = zext i8 %i.kd to i16
  %i.kf = or disjoint i16 %i.kb, %i.ke
  %i.kg = sext i16 %i.kf to i64
  %i.kh = shl nsw i64 %i.kg, 2
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv506
  store i64 %i.kh, ptr %i.ki, align 8, !tbaa !226
  %i.kj = getelementptr inbounds nuw i8, ptr %.4381466, i64 4 ; 3 uses
  %i.kk = load i8, ptr %i.jy, align 1, !tbaa !227
  %i.kl = zext i8 %i.kk to i16
  %i.km = shl nuw i16 %i.kl, 8
  %i.kn = getelementptr inbounds nuw i8, ptr %.4381466, i64 3
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !227
  %i.kp = zext i8 %i.ko to i16
  %i.kq = or disjoint i16 %i.km, %i.kp
  %i.kr = sext i16 %i.kq to i64
  %i.ks = shl nsw i64 %i.kr, 2
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv506
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i64 %i.ks, ptr %i.ku, align 8, !tbaa !226
  %indvars.iv.next507.1 = add nuw nsw i64 %indvars.iv506, 2 ; 2 uses
  %niter664.next.1 = add nuw i64 %niter664, 2     ; 2 uses
  %niter664.ncmp.1 = icmp eq i64 %niter664.next.1, %unroll_iter663
  br i1 %niter664.ncmp.1, label %.loopexit453.loopexit.unr-lcssa, label %.lr.ph467, !llvm.loop !815

.loopexit453.loopexit.unr-lcssa:                  ; preds = %.lr.ph467
  %lcmp.mod660.not = icmp eq i64 %xtraiter659, 0
  br i1 %lcmp.mod660.not, label %.loopexit453, label %.lr.ph467.epil.preheader

.lr.ph467.epil.preheader:                         ; preds = %.loopexit453.loopexit.unr-lcssa, %.lr.ph467.preheader
  %indvars.iv506.epil.init = phi i64 [ 0, %.lr.ph467.preheader ], [ %indvars.iv.next507.1, %.loopexit453.loopexit.unr-lcssa ]
  %.4381466.epil.init = phi ptr [ %.lcssa645, %.lr.ph467.preheader ], [ %i.kj, %.loopexit453.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod662 = trunc i32 %i.ih to i1
  call void @llvm.assume(i1 %lcmp.mod662)
  %i.kv = getelementptr inbounds nuw i8, ptr %.4381466.epil.init, i64 2
  %i.kw = load i8, ptr %.4381466.epil.init, align 1, !tbaa !227
  %i.kx = zext i8 %i.kw to i16
  %i.ky = shl nuw i16 %i.kx, 8
  %i.kz = getelementptr inbounds nuw i8, ptr %.4381466.epil.init, i64 1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !227
  %i.lb = zext i8 %i.la to i16
  %i.lc = or disjoint i16 %i.ky, %i.lb
  %i.ld = sext i16 %i.lc to i64
  %i.le = shl nsw i64 %i.ld, 2
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv506.epil.init
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !226
  br label %.loopexit453

.loopexit453:                                     ; preds = %.lr.ph467.epil.preheader, %.loopexit453.loopexit.unr-lcssa, %.preheader454, %.loopexit456
  %.5 = phi ptr [ %.2379, %.loopexit456 ], [ %.2379, %.preheader454 ], [ %i.kj, %.loopexit453.loopexit.unr-lcssa ], [ %i.kv, %.lr.ph467.epil.preheader ] ; 2 uses
  %i.lg = call fastcc i64 @ft_var_apply_tuple(ptr noundef %i.p, i16 noundef zeroext %i.ge, ptr noundef %.2375, ptr noundef %i.ez, ptr noundef %i.fa) ; 3 uses
  %.not424 = icmp eq ptr %.1, null
  br i1 %.not424, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit453
  %i.lh = and i32 %i.gf, 4095
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.li
  store i64 %i.lg, ptr %i.lj, align 8, !tbaa !226
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %.loopexit453, %bb.y
  %.6 = phi ptr [ %.5, %bb.y ], [ %.5, %.loopexit453 ], [ %i.fw, %bb.u ]
  %.1365 = phi i64 [ %i.lg, %bb.y ], [ %i.lg, %.loopexit453 ], [ %i.hq, %bb.u ] ; 6 uses
  %i.lk = icmp eq i64 %.1365, 0
  br i1 %i.lk, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ll = load ptr, ptr %i.bk, align 8, !tbaa !560
  %i.lm = load ptr, ptr %i.f, align 8, !tbaa !652 ; 2 uses
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64               ; 2 uses
  %i.lp = sub i64 %i.ln, %i.lo                    ; 2 uses
  %i.lq = load ptr, ptr %i.fd, align 8, !tbaa !624 ; 2 uses
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = sub i64 %i.lr, %i.lo
  %i.lt = icmp ult i64 %.1395474, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.1395474
  %i.lv = select i1 %i.lt, ptr %i.lu, ptr %i.lq
  store ptr %i.lv, ptr %i.bk, align 8, !tbaa !560
  %i.lw = and i32 %i.gf, 8192
  %.not425 = icmp eq i32 %i.lw, 0
  br i1 %.not425, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lx = call fastcc ptr @ft_var_readpackedpoints(ptr noundef nonnull %i.f, ptr noundef %i.b) ; 2 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !187
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ly = load i32, ptr %i.c, align 4, !tbaa !187 ; 2 uses
  store i32 %i.ly, ptr %i.b, align 4, !tbaa !187
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.lz = phi i32 [ %.pre, %bb.ab ], [ %i.ly, %bb.ac ] ; 3 uses
  %.1370 = phi ptr [ %i.lx, %bb.ab ], [ %.0369477, %bb.ac ] ; 2 uses
  %.0368 = phi ptr [ %i.lx, %bb.ab ], [ %.0371, %bb.ac ] ; 3 uses
  %i.ma = icmp eq i32 %i.lz, 0                    ; 2 uses
  %i.mb = select i1 %i.ma, i32 %i.n, i32 %i.lz    ; 2 uses
  %i.mc = call fastcc ptr @ft_var_readpackeddeltas(ptr noundef nonnull %i.f, i32 noundef %i.mb) ; 8 uses
  %i.md = call fastcc ptr @ft_var_readpackeddeltas(ptr noundef nonnull %i.f, i32 noundef %i.mb) ; 8 uses
  %i.me = icmp ne ptr %.0368, null
  %i.mf = icmp ne ptr %i.md, null
  %or.cond = select i1 %i.me, i1 %i.mf, i1 false
  %i.mg = icmp ne ptr %i.mc, null
  %or.cond3 = select i1 %or.cond, i1 %i.mg, i1 false
  br i1 %or.cond3, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.mh = icmp eq ptr %.0368, inttoptr (i64 -1 to ptr)
  br i1 %i.mh, label %vector.memcheck597, label %.preheader451

vector.memcheck597:                               ; preds = %bb.ae
  %scevgep598 = getelementptr i8, ptr %i.mc, i64 %i.fj ; 2 uses
  %scevgep599 = getelementptr i8, ptr %i.md, i64 %i.fj ; 2 uses
  %bound0600 = icmp ult ptr %i.fb, %scevgep598
  %bound1601 = icmp ult ptr %i.mc, %i.dm
  %found.conflict602 = and i1 %bound0600, %bound1601
  %bound0603 = icmp ult ptr %i.fb, %scevgep599
  %bound1604 = icmp ult ptr %i.md, %i.dm
  %found.conflict605 = and i1 %bound0603, %bound1604
  %conflict.rdx606 = or i1 %found.conflict602, %found.conflict605
  %bound0607 = icmp ult ptr %i.dl, %scevgep598
  %bound1608 = icmp ult ptr %i.mc, %i.fb
  %found.conflict609 = and i1 %bound0607, %bound1608
  %conflict.rdx610 = or i1 %conflict.rdx606, %found.conflict609
  %bound0611 = icmp ult ptr %i.dl, %scevgep599
  %bound1612 = icmp ult ptr %i.md, %i.fb
  %found.conflict613 = and i1 %bound0611, %bound1612
  %conflict.rdx614 = or i1 %conflict.rdx610, %found.conflict613
  br i1 %conflict.rdx614, label %.preheader.preheader, label %vector.ph616

vector.ph616:                                     ; preds = %vector.memcheck597
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.1365, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body618

vector.body618:                                   ; preds = %vector.body618, %vector.ph616
  %index619 = phi i64 [ 0, %vector.ph616 ], [ %index.next624, %vector.body618 ] ; 5 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %index619 ; 2 uses
  %wide.load620 = load <2 x i64>, ptr %i.mi, align 8, !tbaa !226, !alias.scope !816, !noalias !819
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index619 ; 2 uses
  %wide.load621 = load <2 x i64>, ptr %i.mj, align 8, !tbaa !226, !alias.scope !822, !noalias !819
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %index619
  %wide.load622 = load <2 x i64>, ptr %i.mk, align 8, !tbaa !226, !alias.scope !824
  %i.ml = mul <2 x i64> %wide.load622, %broadcast.splat ; 2 uses
  %i.mm = ashr <2 x i64> %i.ml, splat (i64 63)
  %i.mn = add <2 x i64> %i.ml, splat (i64 32768)
  %i.mo = add <2 x i64> %i.mn, %i.mm
  %i.mp = ashr <2 x i64> %i.mo, splat (i64 16)
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %index619
  %wide.load623 = load <2 x i64>, ptr %i.mq, align 8, !tbaa !226, !alias.scope !825
  %i.mr = mul <2 x i64> %wide.load623, %broadcast.splat ; 2 uses
  %i.ms = ashr <2 x i64> %i.mr, splat (i64 63)
  %i.mt = add <2 x i64> %i.mr, splat (i64 32768)
  %i.mu = add <2 x i64> %i.mt, %i.ms
  %i.mv = ashr <2 x i64> %i.mu, splat (i64 16)
  %i.mw = add nsw <2 x i64> %i.mp, %wide.load620
  store <2 x i64> %i.mw, ptr %i.mi, align 8, !tbaa !226, !alias.scope !816, !noalias !819
  %i.mx = add nsw <2 x i64> %i.mv, %wide.load621
  store <2 x i64> %i.mx, ptr %i.mj, align 8, !tbaa !226, !alias.scope !822, !noalias !819
  %index.next624 = add nuw i64 %index619, 2       ; 2 uses
  %i.my = icmp eq i64 %index.next624, %n.vec617
  br i1 %i.my, label %middle.block625, label %vector.body618, !llvm.loop !826

middle.block625:                                  ; preds = %vector.body618
  br i1 %cmp.n626, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck597, %middle.block625
  %indvars.iv526.ph = phi i64 [ 0, %vector.memcheck597 ], [ %n.vec617, %middle.block625 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv526 = phi i64 [ %indvars.iv.next527, %.preheader ], [ %indvars.iv526.ph, %.preheader.preheader ] ; 5 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv526 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !226
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv526 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !226
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv526
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !226
  %i.nf = mul i64 %i.ne, %.1365                   ; 2 uses
  %i.ng = ashr i64 %i.nf, 63
  %i.nh = add i64 %i.nf, 32768
  %i.ni = add i64 %i.nh, %i.ng
  %i.nj = ashr i64 %i.ni, 16
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv526
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !226
  %i.nm = mul i64 %i.nl, %.1365                   ; 2 uses
  %i.nn = ashr i64 %i.nm, 63
  %i.no = add i64 %i.nm, 32768
  %i.np = add i64 %i.no, %i.nn
  %i.nq = ashr i64 %i.np, 16
  %i.nr = add nsw i64 %i.nj, %i.na
  store i64 %i.nr, ptr %i.mz, align 8, !tbaa !226
  %i.ns = add nsw i64 %i.nq, %i.nc
  store i64 %i.ns, ptr %i.nb, align 8, !tbaa !226
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, 1 ; 2 uses
  %exitcond530.not = icmp eq i64 %indvars.iv.next527, %wide.trip.count
  br i1 %exitcond530.not, label %.loopexit, label %.preheader, !llvm.loop !827

.preheader450.unr-lcssa:                          ; preds = %.preheader451
  br i1 %lcmp.mod666.not, label %.preheader450, label %.preheader451.epil.preheader

.preheader451.epil.preheader:                     ; preds = %.preheader450.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod667)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv.next512.1
  store i8 0, ptr %i.nt, align 1, !tbaa !227
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %indvars.iv.next512.1
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %indvars.iv.next512.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nu, ptr noundef nonnull align 8 dereferenceable(16) %i.nv, i64 16, i1 false), !tbaa.struct !426
  br label %.preheader450

.preheader450:                                    ; preds = %.preheader450.unr-lcssa, %.preheader451.epil.preheader
  br i1 %i.ma, label %._crit_edge, label %.lr.ph471.preheader

.lr.ph471.preheader:                              ; preds = %.preheader450
  %wide.trip.count519 = zext i32 %i.lz to i64
  br label %.lr.ph471

.preheader451:                                    ; preds = %bb.ae, %.preheader451
  %indvars.iv511 = phi i64 [ %indvars.iv.next512.1, %.preheader451 ], [ 0, %bb.ae ] ; 5 uses
end_hunk_8
begin_hunk_9_@tt_check_trickyness:bb.a
  %.not.13.i = icmp eq ptr %i.ay, null
  br i1 %.not.13.i, label %bb.y, label %tt_check_trickyness_family.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.az = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 280)) #22
  %.not.14.i = icmp eq ptr %i.az, null
  br i1 %.not.14.i, label %bb.z, label %tt_check_trickyness_family.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.ba = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 300)) #22
  %.not.15.i = icmp eq ptr %i.ba, null
  br i1 %.not.15.i, label %bb.aa, label %tt_check_trickyness_family.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.bb = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 320)) #22
  %.not.16.i = icmp eq ptr %i.bb, null
  br i1 %.not.16.i, label %bb.ab, label %tt_check_trickyness_family.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bc = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 340)) #22
  %.not.17.i = icmp eq ptr %i.bc, null
  br i1 %.not.17.i, label %bb.ac, label %tt_check_trickyness_family.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 360)) #22
  %.not.18.i = icmp eq ptr %i.bd, null
  br i1 %.not.18.i, label %tt_check_trickyness_family.exit, label %tt_check_trickyness_family.exit.thread

tt_check_trickyness_family.exit:                  ; preds = %bb.ac
  %i.be = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 380)) #22
  %.not.19.i.not = icmp eq ptr %i.be, null
  br i1 %.not.19.i.not, label %bb.ad, label %tt_check_trickyness_family.exit.thread

bb.ad:                                            ; preds = %tt_check_trickyness_family.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(124) %i.a, i8 0, i64 124, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !874 ; 2 uses
  %.not62.i = icmp eq i16 %i.bg, 0
  br i1 %.not62.i, label %.preheader.split.i.preheader, label %.lr.ph.i

.preheader.split.i.preheader:                     ; preds = %.preheader.i, %bb.ad
  br label %.preheader.split.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br label %bb.ae

.preheader.i:                                     ; preds = %.loopexit51.i
  %i.bk = icmp eq i8 %.240.i, 0
  br i1 %i.bk, label %.preheader.split.i.preheader, label %tt_check_trickyness_sfnt_ids.exit

bb.ae:                                            ; preds = %.loopexit51.i, %.lr.ph.i
  %i.bl = phi i16 [ %i.bg, %.lr.ph.i ], [ %i.ew, %.loopexit51.i ]
  %indvars.iv70.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next71.i, %.loopexit51.i ] ; 4 uses
  %.03859.i = phi i8 [ 0, %.lr.ph.i ], [ %.240.i, %.loopexit51.i ] ; 3 uses
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !875
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %indvars.iv70.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !876
  switch i64 %i.bo, label %.loopexit51.i [
    i64 1668707360, label %bb.ah
    i64 1718642541, label %bb.af
    i64 1886545264, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.139.i = phi i8 [ %.03859.i, %bb.ag ], [ %.03859.i, %bb.af ], [ 1, %bb.ae ]
  %.0.i = phi i64 [ 2, %bb.ag ], [ 1, %bb.af ], [ 0, %bb.ae ]
  %invariant.gep.i = getelementptr inbounds nuw [16 x i8], ptr @tt_check_trickyness_sfnt_ids.sfnt_id, i64 %.0.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ap, %bb.ah
  %indvars.iv.i = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next.i, %bb.ap ] ; 3 uses
  %.04157.i = phi i64 [ 0, %bb.ah ], [ %.243.i, %bb.ap ] ; 3 uses
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !875
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %indvars.iv70.i ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !878
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !879
  %i.bv = icmp eq i64 %i.bs, %i.bu
  br i1 %i.bv, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %.not50.i = icmp eq i64 %.04157.i, 0
  br i1 %.not50.i, label %bb.ak, label %tt_get_sfnt_checksum.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !492 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i10, label %tt_get_sfnt_checksum.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bx = load i64, ptr %i.bq, align 8, !tbaa !876
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !47
  %i.bz = tail call i32 %i.bw(ptr noundef nonnull %0, i64 noundef %i.bx, ptr noundef %i.by, ptr noundef null) #21, !inline_history !881
  %.not10.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not10.i.i, label %bb.am, label %tt_get_sfnt_checksum.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ca = load ptr, ptr %i.bj, align 8, !tbaa !47 ; 3 uses
  %i.cb = load ptr, ptr %i.bh, align 8, !tbaa !875
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %indvars.iv70.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !878 ; 6 uses
  %i.cf = tail call i32 @FT_Stream_EnterFrame(ptr noundef %i.ca, i64 noundef %i.ce) #21
  %.not.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i, label %bb.an, label %tt_get_sfnt_checksum.exit.i

bb.an:                                            ; preds = %bb.am
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !560 ; 3 uses
  %i.ci = icmp ugt i64 %i.ce, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.preheader, label %.preheader.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.an
  %i.cj = add i64 %i.ce, -4                       ; 2 uses
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp ult i64 %i.cj, 12
  br i1 %i.cm, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.cl, 9223372036854775804
  br label %.lr.ph.i.i.i

.preheader.i.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.01928.i.i.i.epil.init = phi ptr [ %i.ch, %.lr.ph.i.i.i.preheader ], [ %i.df, %.preheader.i.i.i.loopexit.unr-lcssa ]
  %.02027.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.di, %.preheader.i.i.i.loopexit.unr-lcssa ]
  %.02226.i.i.i.epil.init = phi i64 [ %i.ce, %.lr.ph.i.i.i.preheader ], [ %i.dj, %.preheader.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.01928.i.i.i.epil = phi ptr [ %i.cn, %.lr.ph.i.i.i.epil ], [ %.01928.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.02027.i.i.i.epil = phi i32 [ %i.cq, %.lr.ph.i.i.i.epil ], [ %.02027.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.02226.i.i.i.epil = phi i64 [ %i.cr, %.lr.ph.i.i.i.epil ], [ %.02226.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.01928.i.i.i.epil, i64 4 ; 2 uses
  %i.co = load i32, ptr %.01928.i.i.i.epil, align 1
  %i.cp = tail call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = add i32 %i.cp, %.02027.i.i.i.epil       ; 2 uses
  %i.cr = add i64 %.02226.i.i.i.epil, -4          ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !882

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.an
  %.022.lcssa.i.i.i = phi i64 [ %i.ce, %bb.an ], [ %i.dj, %.preheader.i.i.i.loopexit.unr-lcssa ], [ %i.cr, %.lr.ph.i.i.i.epil ] ; 4 uses
  %.020.lcssa.i.i.i = phi i32 [ 0, %bb.an ], [ %i.di, %.preheader.i.i.i.loopexit.unr-lcssa ], [ %i.cq, %.lr.ph.i.i.i.epil ] ; 3 uses
  %.019.lcssa.i.i.i = phi ptr [ %i.ch, %bb.an ], [ %i.df, %.preheader.i.i.i.loopexit.unr-lcssa ], [ %i.cn, %.lr.ph.i.i.i.epil ] ; 2 uses
  %.not2531.i.i.i = icmp eq i64 %.022.lcssa.i.i.i, 0
  br i1 %.not2531.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph36.i.i.i.preheader

.lr.ph36.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %xtraiter70 = and i64 %.022.lcssa.i.i.i, 3      ; 3 uses
  %i.cs = icmp ult i64 %.022.lcssa.i.i.i, 4
  br i1 %i.cs, label %.lr.ph36.i.i.i.epil.preheader, label %.lr.ph36.i.i.i.preheader.new

.lr.ph36.i.i.i.preheader.new:                     ; preds = %.lr.ph36.i.i.i.preheader
  %unroll_iter75 = and i64 %.022.lcssa.i.i.i, -4
  br label %.lr.ph36.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.01928.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.preheader.new ], [ %i.df, %.lr.ph.i.i.i ] ; 5 uses
  %.02027.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.di, %.lr.ph.i.i.i ]
  %.02226.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i.preheader.new ], [ %i.dj, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.01928.i.i.i, i64 4
  %i.cu = load i32, ptr %.01928.i.i.i, align 1
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %i.cu)
  %i.cw = add i32 %i.cv, %.02027.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.01928.i.i.i, i64 8
  %i.cy = load i32, ptr %i.ct, align 1
  %i.cz = tail call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.da = add i32 %i.cz, %i.cw
  %i.db = getelementptr inbounds nuw i8, ptr %.01928.i.i.i, i64 12
  %i.dc = load i32, ptr %i.cx, align 1
  %i.dd = tail call i32 @llvm.bswap.i32(i32 %i.dc)
  %i.de = add i32 %i.dd, %i.da
  %i.df = getelementptr inbounds nuw i8, ptr %.01928.i.i.i, i64 16 ; 3 uses
  %i.dg = load i32, ptr %i.db, align 1
  %i.dh = tail call i32 @llvm.bswap.i32(i32 %i.dg)
  %i.di = add i32 %i.dh, %i.de                    ; 3 uses
  %i.dj = add i64 %.02226.i.i.i, -16              ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !883

.lr.ph36.i.i.i:                                   ; preds = %.lr.ph36.i.i.i, %.lr.ph36.i.i.i.preheader.new
  %.035.i.i.i = phi i32 [ 24, %.lr.ph36.i.i.i.preheader.new ], [ %i.eh, %.lr.ph36.i.i.i ] ; 5 uses
  %.134.i.i.i = phi ptr [ %.019.lcssa.i.i.i, %.lr.ph36.i.i.i.preheader.new ], [ %i.ec, %.lr.ph36.i.i.i ] ; 5 uses
  %.12133.i.i.i = phi i32 [ %.020.lcssa.i.i.i, %.lr.ph36.i.i.i.preheader.new ], [ %i.eg, %.lr.ph36.i.i.i ]
  %niter76 = phi i64 [ 0, %.lr.ph36.i.i.i.preheader.new ], [ %niter76.next.3, %.lr.ph36.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.134.i.i.i, i64 1
  %i.dl = load i8, ptr %.134.i.i.i, align 1, !tbaa !227
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl i32 %i.dm, %.035.i.i.i
  %i.do = add i32 %i.dn, %.12133.i.i.i
  %i.dp = add nsw i32 %.035.i.i.i, -8
  %i.dq = getelementptr inbounds nuw i8, ptr %.134.i.i.i, i64 2
  %i.dr = load i8, ptr %i.dk, align 1, !tbaa !227
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl i32 %i.ds, %i.dp
  %i.du = add i32 %i.dt, %i.do
  %i.dv = add nsw i32 %.035.i.i.i, -16
  %i.dw = getelementptr inbounds nuw i8, ptr %.134.i.i.i, i64 3
  %i.dx = load i8, ptr %i.dq, align 1, !tbaa !227
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl i32 %i.dy, %i.dv
  %i.ea = add i32 %i.dz, %i.du
  %i.eb = add nsw i32 %.035.i.i.i, -24
  %i.ec = getelementptr inbounds nuw i8, ptr %.134.i.i.i, i64 4 ; 2 uses
  %i.ed = load i8, ptr %i.dw, align 1, !tbaa !227
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl i32 %i.ee, %i.eb
  %i.eg = add i32 %i.ef, %i.ea                    ; 3 uses
  %i.eh = add nsw i32 %.035.i.i.i, -32            ; 2 uses
  %niter76.next.3 = add nuw i64 %niter76, 4       ; 2 uses
  %niter76.ncmp.3 = icmp eq i64 %niter76.next.3, %unroll_iter75
  br i1 %niter76.ncmp.3, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph36.i.i.i, !llvm.loop !884

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph36.i.i.i
  %lcmp.mod72.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod72.not, label %._crit_edge.i.i.i, label %.lr.ph36.i.i.i.epil.preheader

.lr.ph36.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph36.i.i.i.preheader
  %.035.i.i.i.epil.init = phi i32 [ 24, %.lr.ph36.i.i.i.preheader ], [ %i.eh, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.134.i.i.i.epil.init = phi ptr [ %.019.lcssa.i.i.i, %.lr.ph36.i.i.i.preheader ], [ %i.ec, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.12133.i.i.i.epil.init = phi i32 [ %.020.lcssa.i.i.i, %.lr.ph36.i.i.i.preheader ], [ %i.eg, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter70, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph36.i.i.i.epil

.lr.ph36.i.i.i.epil:                              ; preds = %.lr.ph36.i.i.i.epil, %.lr.ph36.i.i.i.epil.preheader
  %.035.i.i.i.epil = phi i32 [ %i.en, %.lr.ph36.i.i.i.epil ], [ %.035.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ] ; 2 uses
  %.134.i.i.i.epil = phi ptr [ %i.ei, %.lr.ph36.i.i.i.epil ], [ %.134.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ] ; 2 uses
  %.12133.i.i.i.epil = phi i32 [ %i.em, %.lr.ph36.i.i.i.epil ], [ %.12133.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ]
  %epil.iter71 = phi i64 [ %epil.iter71.next, %.lr.ph36.i.i.i.epil ], [ 0, %.lr.ph36.i.i.i.epil.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.134.i.i.i.epil, i64 1
  %i.ej = load i8, ptr %.134.i.i.i.epil, align 1, !tbaa !227
  %i.ek = zext i8 %i.ej to i32
  %i.el = shl i32 %i.ek, %.035.i.i.i.epil
  %i.em = add i32 %i.el, %.12133.i.i.i.epil       ; 2 uses
  %i.en = add nsw i32 %.035.i.i.i.epil, -8
  %epil.iter71.next = add i64 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i64 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %._crit_edge.i.i.i, label %.lr.ph36.i.i.i.epil, !llvm.loop !885

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph36.i.i.i.epil, %.preheader.i.i.i
  %.121.lcssa.i.i.i = phi i32 [ %.020.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.eg, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %i.em, %.lr.ph36.i.i.i.epil ]
  tail call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.ca) #21
  %i.eo = zext i32 %.121.lcssa.i.i.i to i64
  br label %tt_get_sfnt_checksum.exit.i

tt_get_sfnt_checksum.exit.i:                      ; preds = %._crit_edge.i.i.i, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.142.i = phi i64 [ %.04157.i, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.eo, %._crit_edge.i.i.i ], [ 0, %bb.am ] ; 2 uses
  %i.ep = load i64, ptr %gep.i, align 16, !tbaa !886
  %i.eq = icmp eq i64 %i.ep, %.142.i
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !187 ; 2 uses
  br i1 %i.eq, label %bb.ao, label %tt_get_sfnt_checksum.exit._crit_edge.i

bb.ao:                                            ; preds = %tt_get_sfnt_checksum.exit.i
  %i.et = add nsw i32 %i.es, 1                    ; 2 uses
  store i32 %i.et, ptr %i.er, align 4, !tbaa !187
  br label %tt_get_sfnt_checksum.exit._crit_edge.i

tt_get_sfnt_checksum.exit._crit_edge.i:           ; preds = %bb.ao, %tt_get_sfnt_checksum.exit.i
  %i.eu = phi i32 [ %i.et, %bb.ao ], [ %i.es, %tt_get_sfnt_checksum.exit.i ]
  %i.ev = icmp eq i32 %i.eu, 3
  br i1 %i.ev, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %tt_get_sfnt_checksum.exit._crit_edge.i, %bb.ai
  %.243.i = phi i64 [ %.142.i, %tt_get_sfnt_checksum.exit._crit_edge.i ], [ %.04157.i, %bb.ai ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 31
  br i1 %exitcond.not.i, label %.loopexit51.loopexit.i, label %bb.ai, !llvm.loop !887

.loopexit51.loopexit.i:                           ; preds = %bb.ap
  %.pre80.i = load i16, ptr %i.bf, align 8, !tbaa !874
  br label %.loopexit51.i

.loopexit51.i:                                    ; preds = %.loopexit51.loopexit.i, %bb.ae
  %i.ew = phi i16 [ %i.bl, %bb.ae ], [ %.pre80.i, %.loopexit51.loopexit.i ] ; 2 uses
  %.240.i = phi i8 [ %.03859.i, %bb.ae ], [ %.139.i, %.loopexit51.loopexit.i ] ; 2 uses
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.ex = zext i16 %i.ew to i64
  %i.ey = icmp samesign ult i64 %indvars.iv.next71.i, %i.ex
  br i1 %i.ey, label %bb.ae, label %.preheader.i, !llvm.loop !888

bb.aq:                                            ; preds = %.preheader.split._crit_edge.i
  %exitcond79.not.i = icmp eq i64 %indvars.iv76.i, 30
  br i1 %exitcond79.not.i, label %tt_check_trickyness_sfnt_ids.exit.thread16, label %.preheader.split.i.1

.preheader.split.i.1:                             ; preds = %bb.aq
  %i.ez = trunc i64 %indvars.iv76.i to i32
  %i.fa = add nsw i32 %i.ez, -16
  %.not45.i.1 = icmp ult i32 %i.fa, 12
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv76.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !187 ; 2 uses
  br i1 %.not45.i.1, label %bb.ar, label %.preheader.split._crit_edge.i.1

bb.ar:                                            ; preds = %.preheader.split.i.1
  %i.fe = add nsw i32 %i.fd, 1                    ; 2 uses
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !187
  br label %.preheader.split._crit_edge.i.1

.preheader.split._crit_edge.i.1:                  ; preds = %bb.ar, %.preheader.split.i.1
  %i.ff = phi i32 [ %i.fe, %bb.ar ], [ %i.fd, %.preheader.split.i.1 ]
  %i.fg = icmp eq i32 %i.ff, 3
  br i1 %i.fg, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.as

bb.as:                                            ; preds = %.preheader.split._crit_edge.i.1
  %indvars.iv.next77.i.1 = add nuw nsw i64 %indvars.iv76.i, 2
  br label %.preheader.split.i

tt_check_trickyness_sfnt_ids.exit.thread16:       ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.au

.preheader.split.i:                               ; preds = %bb.as, %.preheader.split.i.preheader
  %indvars.iv76.i = phi i64 [ 0, %.preheader.split.i.preheader ], [ %indvars.iv.next77.i.1, %bb.as ] ; 6 uses
  %i.fh = trunc i64 %indvars.iv76.i to i32
  %i.fi = add nsw i32 %i.fh, -16
  %.not45.i = icmp ult i32 %i.fi, 12
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv76.i ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !187 ; 2 uses
  br i1 %.not45.i, label %bb.at, label %.preheader.split._crit_edge.i

bb.at:                                            ; preds = %.preheader.split.i
  %i.fl = add nsw i32 %i.fk, 1                    ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 8, !tbaa !187
  br label %.preheader.split._crit_edge.i

.preheader.split._crit_edge.i:                    ; preds = %bb.at, %.preheader.split.i
  %i.fm = phi i32 [ %i.fl, %bb.at ], [ %i.fk, %.preheader.split.i ]
  %i.fn = icmp eq i32 %i.fm, 3
  br i1 %i.fn, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.aq

tt_check_trickyness_sfnt_ids.exit.thread:         ; preds = %tt_get_sfnt_checksum.exit._crit_edge.i, %.preheader.split._crit_edge.i, %.preheader.split._crit_edge.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %tt_check_trickyness_family.exit.thread

tt_check_trickyness_sfnt_ids.exit:                ; preds = %.preheader.i
  %i.fo = load <16 x i32>, ptr %i.a, align 16
  %.fr = freeze <16 x i32> %i.fo
  %i.fp = icmp ne <16 x i32> %.fr, splat (i32 3)  ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.fr = load <8 x i32>, ptr %i.fq, align 16
  %.fr57 = freeze <8 x i32> %i.fr
  %i.fs = icmp ne <8 x i32> %.fr57, splat (i32 3)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.fu = load <4 x i32>, ptr %i.ft, align 16
  %.fr58 = freeze <4 x i32> %i.fu
  %i.fv = icmp ne <4 x i32> %.fr58, splat (i32 3)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.fx = load i32, ptr %i.fw, align 16
  %i.fy = icmp ne i32 %i.fx, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.ga = load i32, ptr %i.fz, align 4
  %.fr59 = freeze i32 %i.ga
  %i.gb = icmp ne i32 %.fr59, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.gd = load i32, ptr %i.gc, align 8
  %.fr61 = freeze i32 %i.gd
  %i.ge = icmp ne i32 %.fr61, 3
  %i.gf = shufflevector <16 x i1> %i.fp, <16 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = and <8 x i1> %i.gf, %i.fs             ; 2 uses
  %i.gg = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <16 x i1> %i.gg, <16 x i1> %i.fp, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gi = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op54 = and <4 x i1> %i.gi, %i.fv
  %i.gj = shufflevector <4 x i1> %rdx.op54, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = shufflevector <16 x i1> %i.gj, <16 x i1> %i.gh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gl = bitcast <16 x i1> %i.gk to i16
  %i.gm = icmp eq i16 %i.gl, -1
  %op.rdx = select i1 %i.gm, i1 %i.fy, i1 false
  %i.gn = freeze i1 %op.rdx
  %i.go = and i1 %i.gn, %i.gb
  %op.rdx56 = and i1 %i.go, %i.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %op.rdx56, label %bb.au, label %tt_check_trickyness_family.exit.thread

bb.au:                                            ; preds = %tt_check_trickyness_sfnt_ids.exit.thread16, %tt_check_trickyness_sfnt_ids.exit
end_hunk_9
