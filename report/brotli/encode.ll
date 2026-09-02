Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/encode?download=true
inline.NumInlined: 177
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 28
begin_hunk_0_@EncodeData:bb.a
  %.1101.i = phi i64 [ %.0100.i467, %bb.dy ], [ %i.axu, %bb.dz ] ; 2 uses
  %.197.i = phi i64 [ %i.axh, %bb.dy ], [ %.096.i468, %bb.dz ]
  %.195.i = phi i64 [ %.094.i469, %bb.dy ], [ %i.axh, %bb.dz ]
  %.1109.in.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.avk, i64 %.pn.i
  %.1109.in.i = load i32, ptr %.1109.in.in.i, align 4, !tbaa !52 ; 2 uses
  %i.axy = add nsw i64 %.093.i470, -1
  %.0108.i = zext i32 %.1109.in.i to i64          ; 2 uses
  %i.axz = icmp eq i64 %.0.i269478, %.0108.i
  br i1 %i.axz, label %._crit_edge, label %.lr.ph472

StoreAndFindMatchesH10.exit:                      ; preds = %._crit_edge, %bb.dw
  %.0100.i.lcssa.sink = phi i64 [ %.0100.i.lcssa, %._crit_edge ], [ %.0100.i467, %bb.dw ]
  %.sink = phi i32 [ %i.awe, %._crit_edge ], [ %i.axn, %bb.dw ]
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.avk, i64 %.0100.i.lcssa.sink
  store i32 %.sink, ptr %i.aya, align 4, !tbaa !52
  %i.ayb = add nuw nsw i64 %.0.i269478, 1         ; 2 uses
  %i.ayc = icmp ult i64 %i.ayb, %i.avf
  br i1 %i.ayc, label %bb.dr, label %InitOrStitchToPreviousBlock.exit, !llvm.loop !402

InitOrStitchToPreviousBlock.exit:                 ; preds = %StoreAndFindMatchesH10.exit, %bb.dq, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %HasherSetup.exit, %StitchToPreviousBlockHROLLING_FAST.exit301, %StitchToPreviousBlockHROLLING_FAST.exit, %StitchToPreviousBlockH65.exit
  %i.ayd = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 4 uses
  %i.aye = load i64, ptr %i.ayd, align 8, !tbaa !79 ; 3 uses
  %i.ayf = trunc i64 %i.aye to i32                ; 3 uses
  %i.ayg = icmp ugt i64 %i.aye, 3221225471
  br i1 %i.ayg, label %bb.eb, label %WrapPosition.exit381

bb.eb:                                            ; preds = %InitOrStitchToPreviousBlock.exit
  %i.ayh = and i32 %i.ayf, 1073741823
  %i.ayi = shl i32 %i.ayf, 1
  %i.ayj = ashr exact i32 %i.ayi, 1
  %i.ayk = and i32 %i.ayj, -1073741824
  %i.ayl = or disjoint i32 %i.ayk, %i.ayh
  %i.aym = xor i32 %i.ayl, -2147483648
  br label %WrapPosition.exit381

WrapPosition.exit381:                             ; preds = %InitOrStitchToPreviousBlock.exit, %bb.eb
  %.0.i380 = phi i32 [ %i.aym, %bb.eb ], [ %i.ayf, %InitOrStitchToPreviousBlock.exit ]
  %.val361 = load i32, ptr %i.u, align 4, !tbaa !50
  %i.ayn = icmp sgt i32 %.val361, 9
  br i1 %i.ayn, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %WrapPosition.exit381
  %i.ayo = load i64, ptr %i.h, align 8, !tbaa !53
  %i.ayp = sub i64 %i.ayo, %i.aye
  %i.ayq = zext i32 %.0.i380 to i64
  %i.ayr = tail call i32 @BrotliIsMostlyUTF8(ptr noundef %i.x, i64 noundef range(i64 0, 4294967296) %i.ayq, i64 noundef range(i64 0, 4294967296) %i.eh, i64 noundef %i.ayp, double noundef 7.500000e-01) #19
  %.not.i383 = icmp eq i32 %i.ayr, 0
  br i1 %.not.i383, label %ChooseContextMode.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %WrapPosition.exit381
  br label %ChooseContextMode.exit

ChooseContextMode.exit:                           ; preds = %bb.ec, %bb.ed
  %.0.i382 = phi i32 [ 2, %bb.ed ], [ 3, %bb.ec ] ; 3 uses
  %i.ays = shl nuw nsw i32 %.0.i382, 9
  %i.ayt = zext nneg i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr @_kBrotliContextLookupTable, i64 %i.ayt ; 4 uses
  %i.ayv = load i64, ptr %i.dl, align 8, !tbaa !84
  %.not248 = icmp eq i64 %i.ayv, 0
  br i1 %.not248, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %ChooseContextMode.exit
  %i.ayw = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.ayx = load i64, ptr %i.ayw, align 8, !tbaa !584
  %i.ayy = icmp eq i64 %i.ayx, 0
  br i1 %i.ayy, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  call fastcc void @ExtendLastCommand(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.e)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %ChooseContextMode.exit
  %i.ayz = load i32, ptr %i.u, align 4, !tbaa !42
  %i.aza = load i32, ptr %i.d, align 4, !tbaa !52
  %i.azb = zext i32 %i.aza to i64                 ; 3 uses
  %i.azc = load i32, ptr %i.e, align 4, !tbaa !52
  %i.azd = zext i32 %i.azc to i64                 ; 3 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 3 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 3 uses
  %i.azg = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !59
  %i.azi = load i64, ptr %i.dl, align 8, !tbaa !84
  %i.azj = getelementptr inbounds nuw [16 x i8], ptr %i.azh, i64 %i.azi ; 3 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 3 uses
  switch i32 %i.ayz, label %bb.ej [
    i32 10, label %bb.eh
    i32 11, label %bb.ei
  ]

bb.eh:                                            ; preds = %bb.eg
  tail call void @BrotliCreateZopfliBackwardReferences(ptr noundef nonnull %i.t, i64 noundef %i.azb, i64 noundef %i.azd, ptr noundef %i.x, i64 noundef %i.eh, ptr noundef nonnull %i.ayu, ptr noundef nonnull %0, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.aze, ptr noundef nonnull %i.azf, ptr noundef %i.azj, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.azk) #19
  br label %bb.ek

bb.ei:                                            ; preds = %bb.eg
  tail call void @BrotliCreateHqZopfliBackwardReferences(ptr noundef nonnull %i.t, i64 noundef %i.azb, i64 noundef %i.azd, ptr noundef %i.x, i64 noundef %i.eh, ptr noundef nonnull %i.ayu, ptr noundef nonnull %0, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.aze, ptr noundef nonnull %i.azf, ptr noundef %i.azj, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.azk) #19
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eg
  tail call void @BrotliCreateBackwardReferences(i64 noundef %i.azb, i64 noundef %i.azd, ptr noundef %i.x, i64 noundef %i.eh, ptr noundef nonnull %i.ayu, ptr noundef nonnull %0, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.aze, ptr noundef nonnull %i.azf, ptr noundef %i.azj, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.azk) #19
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ei, %bb.ej, %bb.eh
  %i.azl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.azm = load i32, ptr %i.azl, align 8, !tbaa !51
  %i.azn = load i32, ptr %i.av, align 4, !tbaa !74 ; 2 uses
  %i.azo = tail call i32 @llvm.smax.i32(i32 %i.azm, i32 %i.azn)
  %i.azp = tail call i32 @llvm.smin.i32(i32 %i.azo, i32 23)
  %i.azq = add nsw i32 %i.azp, 1
  %i.azr = zext nneg i32 %i.azq to i64
  %i.azs = shl nuw i64 1, %i.azr                  ; 2 uses
  %i.azt = lshr i64 %i.azs, 3                     ; 2 uses
  %i.azu = load i64, ptr %i.h, align 8, !tbaa !53 ; 2 uses
  %i.azv = load i64, ptr %i.ayd, align 8, !tbaa !79 ; 2 uses
  %i.azw = sub i64 %i.azu, %i.azv                 ; 3 uses
  %i.azx = zext nneg i32 %i.azn to i64
  %i.azy = shl nuw i64 1, %i.azx
  %i.azz = add i64 %i.azw, %i.azy
  %i.baa = icmp ugt i64 %i.azz, %i.azs
  %i.bab = load i32, ptr %i.u, align 4, !tbaa !42
  %i.bac = icmp slt i32 %i.bab, 4
  br i1 %i.bac, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.bae = load i64, ptr %i.bad, align 8, !tbaa !585
  %i.baf = load i64, ptr %i.dl, align 8, !tbaa !84
  %i.bag = add i64 %i.baf, %i.bae
  %i.bah = icmp ugt i64 %i.bag, 12286
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.bai = phi i1 [ false, %bb.ek ], [ %i.bah, %bb.el ]
  %i.baj = or i32 %2, %1
  %or.cond3 = icmp ne i32 %i.baj, 0
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.bai
  %or.cond7.not = select i1 %or.cond5, i1 true, i1 %i.baa
  br i1 %or.cond7.not, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.bak = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.bal = load i64, ptr %i.bak, align 8, !tbaa !585
  %i.bam = icmp ult i64 %i.bal, %i.azt
  br i1 %i.bam, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %i.ban = load i64, ptr %i.dl, align 8, !tbaa !84
  %i.bao = icmp ult i64 %i.ban, %i.azt
  br i1 %i.bao, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.bap = tail call fastcc i32 @UpdateLastProcessedPos(ptr noundef nonnull %0)
  %.not251 = icmp eq i32 %i.bap, 0
  br i1 %.not251, label %.critedge, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  store i32 0, ptr %i.ok, align 8, !tbaa !449
  br label %.critedge

.critedge:                                        ; preds = %bb.eq, %bb.ep
  store i64 0, ptr %3, align 8, !tbaa !67
  br label %bb.gd

bb.er:                                            ; preds = %bb.eo, %bb.en, %bb.em
  %i.baq = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.bar = load i64, ptr %i.baq, align 8, !tbaa !584 ; 10 uses
  %.not252 = icmp eq i64 %i.bar, 0
  br i1 %.not252, label %bb.fa, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.bas = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.bat = load ptr, ptr %i.bas, align 8, !tbaa !59
  %i.bau = load i64, ptr %i.dl, align 8, !tbaa !84 ; 2 uses
  %i.bav = add i64 %i.bau, 1
  store i64 %i.bav, ptr %i.dl, align 8, !tbaa !84
  %i.baw = getelementptr inbounds nuw [16 x i8], ptr %i.bat, i64 %i.bau ; 5 uses
  %i.bax = trunc i64 %i.bar to i32                ; 2 uses
  store i32 %i.bax, ptr %i.baw, align 4, !tbaa !131
  %i.bay = getelementptr inbounds nuw i8, ptr %i.baw, i64 4
  store i32 134217728, ptr %i.bay, align 4, !tbaa !132
  %i.baz = getelementptr inbounds nuw i8, ptr %i.baw, i64 8
  store i32 0, ptr %i.baz, align 4, !tbaa !133
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baw, i64 14
  store i16 16, ptr %i.bba, align 2, !tbaa !134
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baw, i64 12
  %i.bbc = icmp ult i64 %i.bar, 6
  br i1 %i.bbc, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.bbd = trunc nuw nsw i64 %i.bar to i16
  br label %GetInsertLengthCode.exit

bb.eu:                                            ; preds = %bb.es
  %i.bbe = icmp ult i64 %i.bar, 130
  br i1 %i.bbe, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.bbf = add nsw i64 %i.bar, -2                 ; 2 uses
  %i.bbg = trunc nuw nsw i64 %i.bbf to i32
  %i.bbh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbg, i1 true)
  %i.bbi = sub nuw nsw i32 30, %i.bbh             ; 2 uses
  %.tr.i = trunc nuw nsw i32 %i.bbi to i16
  %7 = shl nuw nsw i16 %.tr.i, 1
  %i.bbj = zext nneg i32 %i.bbi to i64
  %i.bbk = lshr i64 %i.bbf, %i.bbj
  %8 = trunc nuw nsw i64 %i.bbk to i16
  %9 = add nuw nsw i16 %7, 2
  %i.bbl = add nuw nsw i16 %9, %8
  br label %GetInsertLengthCode.exit

bb.ew:                                            ; preds = %bb.eu
  %i.bbm = icmp ult i64 %i.bar, 2114
  br i1 %i.bbm, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.bbn = add nsw i32 %i.bax, -66
  %i.bbo = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbn, i1 true)
  %i.bbp = trunc nuw nsw i32 %i.bbo to i16
  %i.bbq = sub nuw nsw i16 41, %i.bbp
  br label %GetInsertLengthCode.exit

bb.ey:                                            ; preds = %bb.ew
  %i.bbr = icmp ult i64 %i.bar, 6210
  br i1 %i.bbr, label %GetInsertLengthCode.exit, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.bbs = icmp ult i64 %i.bar, 22594
  %..i = select i1 %i.bbs, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.et, %bb.ev, %bb.ex, %bb.ey, %bb.ez
  %.0.i308 = phi i16 [ %i.bbd, %bb.et ], [ %i.bbl, %bb.ev ], [ %i.bbq, %bb.ex ], [ 21, %bb.ey ], [ %..i, %bb.ez ] ; 2 uses
  %i.bbt = lshr i16 %.0.i308, 3                   ; 2 uses
  %narrow.i = mul nuw nsw i16 %i.bbt, 6
  %i.bbu = zext nneg i16 %narrow.i to i32
  %10 = mul nuw nsw i16 %i.bbt, 192
  %i.bbv = lshr i32 5377344, %i.bbu
  %11 = trunc i32 %i.bbv to i16
  %12 = and i16 %11, 192
  %13 = shl nuw nsw i16 %.0.i308, 3
  %14 = and i16 %13, 56
  %15 = add nuw nsw i16 %10, 66
  %i.bbw = or disjoint i16 %15, %14
  %.0.i312 = add nuw nsw i16 %i.bbw, %12
  store i16 %.0.i312, ptr %i.bbb, align 4, !tbaa !75
  %i.bbx = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.bby = load i64, ptr %i.bbx, align 8, !tbaa !585
  %i.bbz = add i64 %i.bby, %i.bar
  store i64 %i.bbz, ptr %i.bbx, align 8, !tbaa !585
  store i64 0, ptr %i.baq, align 8, !tbaa !584
  br label %bb.fa

bb.fa:                                            ; preds = %GetInsertLengthCode.exit, %bb.er
  %i.bca = icmp eq i64 %i.azu, %i.azv
  %or.cond439 = select i1 %.not249, i1 %i.bca, i1 false
  br i1 %or.cond439, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i64 0, ptr %3, align 8, !tbaa !67
  br label %bb.gd

bb.fc:                                            ; preds = %bb.fa
  %i.bcb = shl i64 %i.azw, 1
  %i.bcc = add i64 %i.bcb, 503
  %i.bcd = and i64 %i.bcc, 4294967295             ; 3 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.bcf = load i64, ptr %i.bce, align 8, !tbaa !80
  %i.bcg = icmp ult i64 %i.bcf, %i.bcd
  %i.bch = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 3 uses
  %i.bci = load ptr, ptr %i.bch, align 8, !tbaa !58 ; 2 uses
  br i1 %i.bcg, label %bb.fd, label %GetBrotliStorage.exit387

bb.fd:                                            ; preds = %bb.fc
  tail call void @BrotliFree(ptr noundef nonnull %i.t, ptr noundef %i.bci) #19
  store ptr null, ptr %i.bch, align 8, !tbaa !58
  %i.bcj = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.t, i64 noundef %i.bcd) #19 ; 2 uses
  store ptr %i.bcj, ptr %i.bch, align 8, !tbaa !58
  store i64 %i.bcd, ptr %i.bce, align 8, !tbaa !80
  br label %GetBrotliStorage.exit387

GetBrotliStorage.exit387:                         ; preds = %bb.fc, %bb.fd
  %i.bck = phi ptr [ %i.bcj, %bb.fd ], [ %i.bci, %bb.fc ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.bcl = getelementptr inbounds nuw i8, ptr %0, i64 1610 ; 2 uses
  %i.bcm = load i8, ptr %i.bcl, align 2, !tbaa !72
  %i.bcn = zext i8 %i.bcm to i64
  store i64 %i.bcn, ptr %i.g, align 8, !tbaa !67
  %i.bco = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  %i.bcp = load i16, ptr %i.bco, align 8, !tbaa !73
  %i.bcq = trunc i16 %i.bcp to i8                 ; 3 uses
  store i8 %i.bcq, ptr %i.bck, align 1, !tbaa !68
  %i.bcr = load i16, ptr %i.bco, align 8, !tbaa !73
  %i.bcs = lshr i16 %i.bcr, 8
  %i.bct = trunc nuw i16 %i.bcs to i8             ; 3 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bck, i64 1 ; 3 uses
  store i8 %i.bct, ptr %i.bcu, align 1, !tbaa !68
  %i.bcv = load i64, ptr %i.ayd, align 8, !tbaa !79 ; 2 uses
  %i.bcw = and i64 %i.azw, 4294967295             ; 13 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %0, i64 1612 ; 2 uses
  %i.bcy = load i8, ptr %i.bcx, align 4, !tbaa !54 ; 3 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %0, i64 1613 ; 2 uses
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !55 ; 3 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.bdc = load i64, ptr %i.bdb, align 8, !tbaa !585
  %i.bdd = load i64, ptr %i.dl, align 8, !tbaa !84 ; 6 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !59 ; 5 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 3 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 3 uses
  %i.bdi = trunc i64 %i.bcv to i32                ; 5 uses
  %i.bdj = icmp ugt i64 %i.bcv, 3221225471
  br i1 %i.bdj, label %bb.fe, label %WrapPosition.exit.i388

bb.fe:                                            ; preds = %GetBrotliStorage.exit387
  %i.bdk = and i32 %i.bdi, 1073741823
  %i.bdl = shl i32 %i.bdi, 1
  %i.bdm = ashr exact i32 %i.bdl, 1
  %i.bdn = and i32 %i.bdm, -1073741824
  %i.bdo = or disjoint i32 %i.bdn, %i.bdk
  %i.bdp = xor i32 %i.bdo, -2147483648
  br label %WrapPosition.exit.i388

WrapPosition.exit.i388:                           ; preds = %bb.fe, %GetBrotliStorage.exit387
  %.0.i.i389 = phi i32 [ %i.bdp, %bb.fe ], [ %i.bdi, %GetBrotliStorage.exit387 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %5, ptr noundef nonnull align 8 dereferenceable(1400) %0, i64 1400, i1 false), !tbaa.struct !586
  %i.bdq = icmp eq i64 %i.bcw, 0
  br i1 %i.bdq, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %WrapPosition.exit.i388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.bdr = load i64, ptr %i.g, align 8, !tbaa !67, !alias.scope !587, !noalias !588 ; 3 uses
  %i.bds = lshr i64 %i.bdr, 3
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bck, i64 %i.bds ; 2 uses
  %i.bdu = load i8, ptr %i.bdt, align 1, !tbaa !68, !alias.scope !588, !noalias !587
  %i.bdv = zext i8 %i.bdu to i64
  %i.bdw = and i64 %i.bdr, 7
  %i.bdx = shl nuw nsw i64 3, %i.bdw
  %i.bdy = or i64 %i.bdx, %i.bdv
  store i64 %i.bdy, ptr %i.bdt, align 1, !noalias !587
  %i.bdz = add i64 %i.bdr, 9
  %i.bea = and i64 %i.bdz, 4294967288
  store i64 %i.bea, ptr %i.g, align 8, !tbaa !67
  br label %WriteMetaBlockInternal.exit

bb.fg:                                            ; preds = %WrapPosition.exit.i388
  %i.beb = icmp samesign ult i64 %i.bcw, 3
  br i1 %i.beb, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bec = lshr i64 %i.bcw, 8
  %i.bed = add nuw nsw i64 %i.bec, 2
  %i.bee = icmp ult i64 %i.bdd, %i.bed
  br i1 %i.bee, label %bb.fi, label %ShouldCompress.exit.i

bb.fi:                                            ; preds = %bb.fh
  %i.bef = uitofp i64 %i.bdc to double
  %i.beg = uitofp nneg i64 %i.bcw to double       ; 2 uses
  %i.beh = fmul nnan double %i.beg, f0x3FEFAE147AE147AE
  %i.bei = fcmp olt double %i.beh, %i.bef
  br i1 %i.bei, label %.lr.ph.preheader.i.i, label %ShouldCompress.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.bej = add nuw nsw i64 %i.bcw, 12
  %i.bek = udiv i64 %i.bej, 13                    ; 3 uses
  %xtraiter581 = and i64 %i.bek, 1
  %i.bel = icmp samesign ult i64 %i.bcw, 14
  br i1 %i.bel, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter585 = and i64 %i.bek, 1073741822
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.01821.i.i = phi i32 [ %i.bdi, %.lr.ph.preheader.i.i.new ], [ %i.bfd, %.lr.ph.i.i ] ; 3 uses
  %niter586 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter586.next.1, %.lr.ph.i.i ]
  %i.bem = and i32 %.01821.i.i, %i.z
  %i.ben = zext i32 %i.bem to i64
  %i.beo = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ben
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !68
  %i.beq = zext i8 %i.bep to i64
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.beq ; 2 uses
  %i.bes = load i32, ptr %i.ber, align 4, !tbaa !52
  %i.bet = add i32 %i.bes, 1
  store i32 %i.bet, ptr %i.ber, align 4, !tbaa !52
  %i.beu = add i32 %.01821.i.i, 13
  %i.bev = and i32 %i.beu, %i.z
  %i.bew = zext i32 %i.bev to i64
  %i.bex = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bew
  %i.bey = load i8, ptr %i.bex, align 1, !tbaa !68
  %i.bez = zext i8 %i.bey to i64
  %i.bfa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bez ; 2 uses
  %i.bfb = load i32, ptr %i.bfa, align 4, !tbaa !52
  %i.bfc = add i32 %i.bfb, 1
  store i32 %i.bfc, ptr %i.bfa, align 4, !tbaa !52
  %i.bfd = add i32 %.01821.i.i, 26                ; 2 uses
  %niter586.next.1 = add i64 %niter586, 2         ; 2 uses
  %niter586.ncmp.1 = icmp eq i64 %niter586.next.1, %unroll_iter585
  br i1 %niter586.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !406

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i
  %lcmp.mod583.not = icmp eq i64 %xtraiter581, 0
  br i1 %lcmp.mod583.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.01821.i.i.epil.init = phi i32 [ %i.bdi, %.lr.ph.preheader.i.i ], [ %i.bfd, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod584 = trunc i64 %i.bek to i1
  tail call void @llvm.assume(i1 %lcmp.mod584)
  %i.bfe = and i32 %.01821.i.i.epil.init, %i.z
  %i.bff = zext i32 %i.bfe to i64
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bff
  %i.bfh = load i8, ptr %i.bfg, align 1, !tbaa !68
  %i.bfi = zext i8 %i.bfh to i64
  %i.bfj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bfi ; 2 uses
  %i.bfk = load i32, ptr %i.bfj, align 4, !tbaa !52
  %i.bfl = add i32 %i.bfk, 1
  store i32 %i.bfl, ptr %i.bfj, align 4, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %i.bfm = fmul nnan double %i.beg, 7.920000e+00
  %i.bfn = fmul nnan double %i.bfm, f0x3FB3B13B13B13B14
  %i.bfo = call double @BrotliBitsEntropy(ptr noundef nonnull %i.a, i64 noundef 256) #19
  %i.bfp = fcmp ule double %i.bfo, %i.bfn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.bfp, label %._crit_edge.i.i.ShouldCompress.exit.i_crit_edge, label %bb.fj

._crit_edge.i.i.ShouldCompress.exit.i_crit_edge:  ; preds = %._crit_edge.i.i
  %.pre496 = load i8, ptr %i.bcu, align 1, !tbaa !68
  %.pre497 = load i8, ptr %i.bck, align 1, !tbaa !68
  br label %ShouldCompress.exit.i

bb.fj:                                            ; preds = %._crit_edge.i.i, %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bdg, i64 16, i1 false)
  %i.bfq = zext i32 %.0.i.i389 to i64
  call void @BrotliStoreUncompressedMetaBlock(i32 noundef range(i32 0, 2) %1, ptr noundef %i.x, i64 noundef %i.bfq, i64 noundef range(i64 0, 4294967296) %i.eh, i64 noundef range(i64 0, 4294967296) %i.bcw, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bck) #19
  br label %WriteMetaBlockInternal.exit

ShouldCompress.exit.i:                            ; preds = %._crit_edge.i.i.ShouldCompress.exit.i_crit_edge, %bb.fi, %bb.fh
  %i.bfr = phi i8 [ %.pre497, %._crit_edge.i.i.ShouldCompress.exit.i_crit_edge ], [ %i.bcq, %bb.fi ], [ %i.bcq, %bb.fh ]
  %i.bfs = phi i8 [ %.pre496, %._crit_edge.i.i.ShouldCompress.exit.i_crit_edge ], [ %i.bct, %bb.fi ], [ %i.bct, %bb.fh ]
end_hunk_0
begin_hunk_1_@ExtendLastCommand:bb.a
  %i.ag = add i32 %i.af, 16                       ; 2 uses
  %i.ah = icmp ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %CommandRestoreDistanceCode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = lshr i32 %i.ac, 10
  %i.ak = getelementptr i8, ptr %i.e, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !133
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !634 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.am
  %i.an = xor i32 %notmask.i, -1
  %i.ao = sub nsw i32 %i.ad, %i.af
  %i.ap = add nsw i32 %i.ao, -16                  ; 2 uses
  %i.aq = lshr i32 %i.ap, %i.am
  %i.ar = and i32 %i.ap, %i.an
  %i.as = and i32 %i.aq, 1
  %i.at = or disjoint i32 %i.as, 2
  %i.au = shl i32 %i.at, %i.aj
  %i.av = add i32 %i.al, -4
  %i.aw = add i32 %i.av, %i.au
  %i.ax = shl i32 %i.aw, %i.am
  %i.ay = add nuw i32 %i.ag, %i.ar
  %i.az = add i32 %i.ay, %i.ax
  br label %CommandRestoreDistanceCode.exit

CommandRestoreDistanceCode.exit:                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.az, %bb.b ], [ %i.ad, %bb.a ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !635 ; 2 uses
  %i.bd = icmp ult i32 %.0.i, 16
  %i.be = add i32 %.0.i, -15
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp eq i64 %i.bf, %i.z
  %or.cond = select i1 %i.bd, i1 true, i1 %i.bg
  br i1 %or.cond, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %CommandRestoreDistanceCode.exit
  %.not = icmp ult i64 %i.w, %i.z
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.bh = load i32, ptr %1, align 4, !tbaa !52
  %.not101115 = icmp eq i32 %i.bh, 0
  br i1 %.not101115, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bi = zext i32 %i.j to i64
  %.pre = load i32, ptr %2, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %i.bj = phi i32 [ %.pre, %.lr.ph ], [ %i.bz, %bb.e ] ; 2 uses
  %i.bk = and i32 %i.bj, %i.j
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !68
  %i.bo = zext i32 %i.bj to i64
  %i.bp = sub nsw i64 %i.bo, %i.z
  %i.bq = and i64 %i.bp, %i.bi
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !68
  %i.bt = icmp eq i8 %i.bn, %i.bs
  br i1 %i.bt, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bu = load i32, ptr %i.p, align 4, !tbaa !132
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.p, align 4, !tbaa !132
  %i.bw = load i32, ptr %1, align 4, !tbaa !52
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr %1, align 4, !tbaa !52
  %i.by = load i32, ptr %2, align 4, !tbaa !52
  %i.bz = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.bz, ptr %2, align 4, !tbaa !52
  %i.ca = load i32, ptr %1, align 4, !tbaa !52
  %.not101 = icmp eq i32 %i.ca, 0
  br i1 %.not101, label %.critedge, label %bb.d, !llvm.loop !630

bb.f:                                             ; preds = %bb.c
  %i.cb = sub nuw i64 %i.z, %i.w                  ; 3 uses
  %i.cc = add i64 %i.cb, -1
  %i.cd = icmp ult i64 %i.cc, %i.bc
  %i.ce = icmp ugt i64 %i.cb, %i.s
  %or.cond104 = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond104, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.cf = sub nuw i64 %i.bc, %i.cb
  %i.cg = add i64 %i.cf, %i.s                     ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.086 = phi i64 [ 0, %bb.g ], [ %i.ci, %bb.h ]  ; 4 uses
  %i.ci = add i64 %.086, 1                        ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !67 ; 2 uses
  %.not98 = icmp ult i64 %i.cg, %i.ck
  br i1 %.not98, label %bb.i, label %bb.h, !llvm.loop !631

bb.i:                                             ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.cm = load i32, ptr %1, align 4, !tbaa !52
  %.not99117 = icmp eq i32 %i.cm, 0
  br i1 %.not99117, label %.critedge, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.086
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !67 ; 2 uses
  %i.cp = sub i64 %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.086
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !69
  %i.cs = sub i64 %i.cg, %i.co
  %.pre126 = load i32, ptr %2, align 4, !tbaa !52
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %bb.m
  %i.ct = phi i32 [ %i.dg, %bb.m ], [ %.pre126, %.lr.ph122.preheader ]
  %.0121 = phi i64 [ %.1, %bb.m ], [ %i.cp, %.lr.ph122.preheader ] ; 2 uses
  %.082120 = phi ptr [ %.183, %bb.m ], [ %i.cr, %.lr.ph122.preheader ] ; 2 uses
  %.084119 = phi i64 [ %.185, %bb.m ], [ %i.cs, %.lr.ph122.preheader ] ; 2 uses
  %.187118 = phi i64 [ %.2, %bb.m ], [ %.086, %.lr.ph122.preheader ] ; 3 uses
  %i.cu = and i32 %i.ct, %i.j
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %.082120, i64 %.084119
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !68
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph122
  %i.db = load i32, ptr %i.p, align 4, !tbaa !132
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.p, align 4, !tbaa !132
  %i.dd = load i32, ptr %1, align 4, !tbaa !52
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr %1, align 4, !tbaa !52
  %i.df = load i32, ptr %2, align 4, !tbaa !52
  %i.dg = add i32 %i.df, 1                        ; 2 uses
  store i32 %i.dg, ptr %2, align 4, !tbaa !52
  %i.dh = add i64 %.084119, 1                     ; 2 uses
  %i.di = icmp eq i64 %i.dh, %.0121
  br i1 %i.di, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dj = add i64 %.187118, 1                     ; 4 uses
  %i.dk = load i64, ptr %i.ba, align 8, !tbaa !636
  %.not100 = icmp eq i64 %i.dj, %i.dk
  br i1 %.not100, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dj
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !69
  %i.dn = getelementptr [8 x i8], ptr %i.ch, i64 %.187118
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !67
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dj
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !67
  %i.ds = sub i64 %i.dp, %i.dr
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.2 = phi i64 [ %i.dj, %bb.l ], [ %.187118, %bb.j ]
  %.185 = phi i64 [ 0, %bb.l ], [ %i.dh, %bb.j ]
  %.183 = phi ptr [ %i.dm, %bb.l ], [ %.082120, %bb.j ]
  %.1 = phi i64 [ %i.ds, %bb.l ], [ %.0121, %bb.j ]
  %i.dt = load i32, ptr %1, align 4, !tbaa !52
  %.not99 = icmp eq i32 %i.dt, 0
  br i1 %.not99, label %.critedge, label %.lr.ph122, !llvm.loop !632

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.m, %bb.k, %.lr.ph122, %.preheader, %bb.i, %bb.f
  %i.du = load i32, ptr %i.f, align 4, !tbaa !131 ; 8 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = load i32, ptr %i.p, align 4, !tbaa !132 ; 2 uses
  %i.dx = and i32 %i.dw, 33554431
  %i.dy = lshr i32 %i.dw, 25
  %i.dz = add nuw nsw i32 %i.dx, %i.dy            ; 6 uses
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = and i16 %i.ab, 1023
  %i.ec = icmp eq i16 %i.eb, 0
  %i.ed = getelementptr i8, ptr %i.e, i64 -4
  %i.ee = icmp ult i32 %i.du, 6
  br i1 %i.ee, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.ef = trunc nuw nsw i32 %i.du to i16
  br label %GetInsertLengthCode.exit

bb.o:                                             ; preds = %.critedge
  %i.eg = icmp ult i32 %i.du, 130
  br i1 %i.eg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eh = add nsw i64 %i.dv, -2                   ; 2 uses
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ei, i1 true)
  %i.ek = sub nuw nsw i32 30, %i.ej               ; 2 uses
  %.tr.i = trunc nuw nsw i32 %i.ek to i16
  %3 = shl nuw nsw i16 %.tr.i, 1
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = lshr i64 %i.eh, %i.el
  %4 = trunc nuw nsw i64 %i.em to i16
  %5 = add nuw nsw i16 %3, 2
  %i.en = add nuw nsw i16 %5, %4
  br label %GetInsertLengthCode.exit

bb.q:                                             ; preds = %bb.o
  %i.eo = icmp ult i32 %i.du, 2114
  br i1 %i.eo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ep = add nsw i32 %i.du, -66
  %i.eq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ep, i1 true)
  %i.er = trunc nuw nsw i32 %i.eq to i16
  %i.es = sub nuw nsw i16 41, %i.er
  br label %GetInsertLengthCode.exit

bb.s:                                             ; preds = %bb.q
  %i.et = icmp ult i32 %i.du, 6210
  br i1 %i.et, label %GetInsertLengthCode.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eu = icmp ult i32 %i.du, 22594
  %..i = select i1 %i.eu, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.n, %bb.p, %bb.r, %bb.s, %bb.t
  %.0.i105 = phi i16 [ %i.ef, %bb.n ], [ %i.en, %bb.p ], [ %i.es, %bb.r ], [ 21, %bb.s ], [ %..i, %bb.t ] ; 3 uses
  %i.ev = icmp samesign ult i32 %i.dz, 10
  br i1 %i.ev, label %bb.u, label %bb.v

bb.u:                                             ; preds = %GetInsertLengthCode.exit
  %i.ew = trunc nuw nsw i32 %i.dz to i16
  %i.ex = add nsw i16 %i.ew, -2
  br label %GetCopyLengthCode.exit

bb.v:                                             ; preds = %GetInsertLengthCode.exit
  %i.ey = icmp samesign ult i32 %i.dz, 134
  br i1 %i.ey, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ez = add nsw i64 %i.ea, -6                   ; 2 uses
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  %i.fb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fa, i1 true)
  %i.fc = sub nuw nsw i32 30, %i.fb               ; 2 uses
  %.tr.i107 = trunc nuw nsw i32 %i.fc to i16
  %6 = shl nuw nsw i16 %.tr.i107, 1
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = lshr i64 %i.ez, %i.fd
  %7 = trunc nuw nsw i64 %i.fe to i16
  %8 = add nuw nsw i16 %6, 4
  %i.ff = add nuw nsw i16 %8, %7
  br label %GetCopyLengthCode.exit

bb.x:                                             ; preds = %bb.v
  %i.fg = icmp samesign ult i32 %i.dz, 2118
  br i1 %i.fg, label %bb.y, label %GetCopyLengthCode.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.fh = add nsw i32 %i.dz, -70
  %i.fi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fh, i1 true)
  %i.fj = trunc nuw nsw i32 %i.fi to i16
  %i.fk = sub nuw nsw i16 43, %i.fj
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %bb.u, %bb.w
  %.0.i106 = phi i16 [ %i.ex, %bb.u ], [ %i.ff, %bb.w ] ; 4 uses
  %i.fl = icmp samesign ult i16 %.0.i105, 8
  %or.cond.i = and i1 %i.ec, %i.fl
  %i.fm = icmp ult i16 %.0.i106, 16
  %or.cond5.i = and i1 %or.cond.i, %i.fm
  br i1 %or.cond5.i, label %bb.z, label %GetCopyLengthCode.exit.thread

bb.z:                                             ; preds = %GetCopyLengthCode.exit
  %i.fn = shl nuw nsw i16 %.0.i106, 3
  %i.fo = and i16 %i.fn, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %bb.x, %bb.y, %GetCopyLengthCode.exit
  %.0.i106111 = phi i16 [ %.0.i106, %GetCopyLengthCode.exit ], [ 23, %bb.x ], [ %i.fk, %bb.y ] ; 2 uses
  %i.fp = lshr i16 %.0.i106111, 3
  %i.fq = lshr i16 %.0.i105, 3
  %narrow.i = mul nuw nsw i16 %i.fq, 3
  %narrow21.i = add nuw nsw i16 %i.fp, %narrow.i  ; 2 uses
  %9 = shl nuw nsw i16 %narrow21.i, 1
  %10 = zext nneg i16 %9 to i32
  %11 = shl i16 %narrow21.i, 6
  %12 = add i16 %11, 64
  %i.fr = lshr i32 5377344, %10
  %13 = trunc i32 %i.fr to i16
  %14 = and i16 %13, 192
  %15 = add i16 %12, %14
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.z, %GetCopyLengthCode.exit.thread
  %.0.i106112 = phi i16 [ %.0.i106, %bb.z ], [ %.0.i106111, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.fo, %bb.z ], [ %15, %GetCopyLengthCode.exit.thread ]
  %i.fs = and i16 %.0.i106112, 7
  %i.ft = shl nuw nsw i16 %.0.i105, 3
  %i.fu = and i16 %i.ft, 56
  %i.fv = or disjoint i16 %i.fs, %i.fu
  %.0.i107 = or disjoint i16 %i.fv, %.pn.i
  store i16 %.0.i107, ptr %i.ed, align 4, !tbaa !75
  br label %bb.aa

bb.aa:                                            ; preds = %CommandRestoreDistanceCode.exit, %CombineLengthCodes.exit
  ret void
}

declare hidden void @BrotliCreateZopfliBackwardReferences(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliCreateHqZopfliBackwardReferences(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliCreateBackwardReferences(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @InitializeH5(ptr noundef %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 56)) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %0, ptr %i.a, align 8, !tbaa !637
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !146  ; 2 uses
  %i.d = sub nsw i32 32, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.d, ptr %i.e, align 8, !tbaa !112
  %i.f = zext nneg i32 %i.c to i64
  %i.g = shl nuw i64 1, %i.f
  store i64 %i.g, ptr %1, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load <2 x ptr>, ptr %0, align 8, !tbaa !61
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load <2 x i32>, ptr %i.h, align 8, !tbaa !52
  %i.o = load i32, ptr %i.h, align 8, !tbaa !148
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 1, %i.p                      ; 2 uses
  store i64 %i.q, ptr %i.i, align 8, !tbaa !638
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr %i.j, align 4, !tbaa !113
  store <2 x i32> %i.n, ptr %i.m, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @InitializeH6(ptr noundef %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 36), (40, 64)) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %0, ptr %i.a, align 8, !tbaa !149
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 8922571613522624512, ptr %i.b, align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !146
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  store i64 %i.f, ptr %1, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load <2 x i32>, ptr %i.g, align 8, !tbaa !52
  %i.l = load i32, ptr %i.g, align 8, !tbaa !148
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  store i64 %i.n, ptr %i.i, align 8, !tbaa !151
  %i.o = trunc i64 %i.n to i32
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.j, align 8, !tbaa !117
  store <2 x i32> %i.k, ptr %i.h, align 4, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load <2 x ptr>, ptr %0, align 8, !tbaa !61
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @InitializeH58(ptr noundef %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 64)) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %0, ptr %i.a, align 8, !tbaa !639
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !146  ; 2 uses
  %i.d = sub i32 24, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.d, ptr %i.e, align 8, !tbaa !121
  %i.f = zext nneg i32 %i.c to i64
  %i.g = shl nuw i64 1, %i.f
  store i64 %i.g, ptr %1, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load <2 x ptr>, ptr %0, align 8, !tbaa !61
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.n, ptr %i.o, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load <2 x i32>, ptr %i.h, align 8, !tbaa !52
  %i.r = load i32, ptr %i.h, align 8, !tbaa !148
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  store i64 %i.t, ptr %i.i, align 8, !tbaa !640
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !122
  store <2 x i32> %i.q, ptr %i.p, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @InitializeH68(ptr noundef %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 36), (40, 72)) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %0, ptr %i.a, align 8, !tbaa !641
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 8922571613522624512, ptr %i.b, align 8, !tbaa !126
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !146
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  store i64 %i.f, ptr %1, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load <2 x i32>, ptr %i.g, align 8, !tbaa !52
  %i.l = load i32, ptr %i.g, align 8, !tbaa !148
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  store i64 %i.n, ptr %i.i, align 8, !tbaa !642
  %i.o = trunc i64 %i.n to i32
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.j, align 8, !tbaa !127
  store <2 x i32> %i.k, ptr %i.h, align 4, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load <2 x ptr>, ptr %0, align 8, !tbaa !61
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.t, ptr %i.u, align 8, !tbaa !125
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @PrepareH4(ptr nofree writeonly captures(none) %.8.val, i32 noundef range(i32 0, 2) %0, i64 noundef range(i64 0, 4294967296) %1, ptr noalias nofree noundef readonly captures(none) %2) unnamed_addr #11 {
bb.a:
  %.not = icmp ne i32 %0, 0
  %i.a = icmp samesign ult i64 %1, 4097
  %or.cond = select i1 %.not, i1 %i.a, i1 false
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not3 = icmp eq i64 %1, 0
  br i1 %.not3, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0142 = phi i64 [ %i.o, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.0142
  %.val = load i64, ptr %i.b, align 1
  %i.c = mul i64 %.val, 8922571613522624512
  %i.d = lshr i64 %i.c, 47                        ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %i.d
  store i32 0, ptr %i.e, align 4, !tbaa !52
  %i.f = add nuw nsw i64 %i.d, 8
  %i.g = and i64 %i.f, 131071
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %i.g
  store i32 0, ptr %i.h, align 4, !tbaa !52
  %i.i = add nuw nsw i64 %i.d, 16
  %i.j = and i64 %i.i, 131071
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %i.j
  store i32 0, ptr %i.k, align 4, !tbaa !52
  %i.l = add nuw nsw i64 %i.d, 24
  %i.m = and i64 %i.l, 131071
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !52
  %i.o = add nuw nsw i64 %.0142, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !643

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(524288) %.8.val, i8 0, i64 524288, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @PrepareH5(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i64 noundef range(i64 0, 4294967296) %2, ptr noalias nofree noundef readonly captures(none) %3) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_1
