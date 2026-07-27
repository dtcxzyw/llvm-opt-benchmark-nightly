inline.NumInlined: 4066
inline.NumDeleted: 1630
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_125GetSortKeyLengthRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE:bb.a
  br i1 %exitcond42.not.i601, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597, !llvm.loop !669

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590: ; preds = %.lr.ph.split.split.us.i589, %bb.bq
  %.017.us18.i591 = phi i64 [ %i.asy, %bb.bq ], [ %.sroa.0818.0.copyload, %.lr.ph.split.split.us.i589 ] ; 4 uses
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.017.us18.i591 ; 3 uses
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !14 ; 2 uses
  %i.asq = add i64 %i.asp, 1
  store i64 %i.asq, ptr %i.aso, align 8, !tbaa !14
  %i.asr = lshr i64 %.017.us18.i591, 6
  %i.ass = and i64 %.017.us18.i591, 63
  %i.ast = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.asr
  %i.asu = load i64, ptr %i.ast, align 8, !tbaa !14
  %i.asv = shl nuw i64 1, %i.ass
  %i.asw = and i64 %i.asu, %i.asv
  %.not.us.i592 = icmp eq i64 %i.asw, 0
  br i1 %.not.us.i592, label %bb.bq, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i593

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i593: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590
  %i.asx = add i64 %i.asp, 17
  store i64 %i.asx, ptr %i.aso, align 8, !tbaa !14
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i593, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590
  %i.asy = add nuw i64 %.017.us18.i591, 1         ; 2 uses
  %exitcond41.not.i594 = icmp eq i64 %i.asy, %.sroa.2819.0.copyload
  br i1 %exitcond41.not.i594, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590, !llvm.loop !669

.lr.ph.split.split.i576:                          ; preds = %.lr.ph.split.i575
  br i1 %i.aqz, label %.lr.ph.split.split.split.us.i582, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577

.lr.ph.split.split.split.us.i582:                 ; preds = %.lr.ph.split.split.i576
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.sroa.3820.0.copyload ; 3 uses
  %.promoted.i583 = load i64, ptr %i.asz, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584: ; preds = %bb.br, %.lr.ph.split.split.split.us.i582
  %i.ata = phi i64 [ %.promoted.i583, %.lr.ph.split.split.split.us.i582 ], [ %i.atm, %bb.br ] ; 2 uses
  %.017.us22.i585 = phi i64 [ %.sroa.0818.0.copyload, %.lr.ph.split.split.split.us.i582 ], [ %i.atn, %bb.br ] ; 2 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.aqy, i64 %.017.us22.i585
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !3
  %i.atd = zext i32 %i.atc to i64                 ; 2 uses
  %i.ate = add i64 %i.ata, 1                      ; 2 uses
  store i64 %i.ate, ptr %i.asz, align 8, !tbaa !14
  %i.atf = lshr i64 %i.atd, 6
  %i.atg = and i64 %i.atd, 63
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.atf
  %i.ati = load i64, ptr %i.ath, align 8, !tbaa !14
  %i.atj = shl nuw i64 1, %i.atg
  %i.atk = and i64 %i.atj, %i.ati
  %.not.us24.i586 = icmp eq i64 %i.atk, 0
  br i1 %.not.us24.i586, label %bb.br, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584
  %i.atl = add i64 %i.ata, 17                     ; 2 uses
  store i64 %i.atl, ptr %i.asz, align 8, !tbaa !14
  br label %bb.br

bb.br:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584
  %i.atm = phi i64 [ %i.ate, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584 ], [ %i.atl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587 ]
  %i.atn = add nuw i64 %.017.us22.i585, 1         ; 2 uses
  %exitcond40.not.i588 = icmp eq i64 %i.atn, %.sroa.2819.0.copyload
  br i1 %exitcond40.not.i588, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584, !llvm.loop !669

._crit_edge.sink.split.i607:                      ; preds = %.lr.ph.split.us.split.i603, %.lr.ph.split.us.split.us.i610
  %i.ato = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.sroa.3820.0.copyload ; 2 uses
  %.promoted30.i608 = load i64, ptr %i.ato, align 8, !tbaa !14
  %reass.add = sub i64 %.sroa.2819.0.copyload, %.sroa.0818.0.copyload
  %reass.mul = mul i64 %reass.add, 17
  %i.atp = add i64 %.promoted30.i608, %reass.mul
  store i64 %i.atp, ptr %i.ato, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577: ; preds = %.lr.ph.split.split.i576, %bb.bs
  %.017.i578 = phi i64 [ %i.aud, %bb.bs ], [ %.sroa.0818.0.copyload, %.lr.ph.split.split.i576 ] ; 3 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.aqy, i64 %.017.i578
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !3
  %i.ats = zext i32 %i.atr to i64                 ; 2 uses
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.017.i578 ; 3 uses
  %i.atu = load i64, ptr %i.att, align 8, !tbaa !14 ; 2 uses
  %i.atv = add i64 %i.atu, 1
  store i64 %i.atv, ptr %i.att, align 8, !tbaa !14
  %i.atw = lshr i64 %i.ats, 6
  %i.atx = and i64 %i.ats, 63
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.atw
  %i.atz = load i64, ptr %i.aty, align 8, !tbaa !14
  %i.aua = shl nuw i64 1, %i.atx
  %i.aub = and i64 %i.atz, %i.aua
  %.not.i579 = icmp eq i64 %i.aub, 0
  br i1 %.not.i579, label %bb.bs, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i580

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i580: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577
  %i.auc = add i64 %i.atu, 17
  store i64 %i.auc, ptr %i.att, align 8, !tbaa !14
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i580, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577
  %i.aud = add nuw i64 %.017.i578, 1              ; 2 uses
  %exitcond.not.i581 = icmp eq i64 %i.aud, %.sroa.2819.0.copyload
  br i1 %exitcond.not.i581, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577, !llvm.loop !669

bb.bt:                                            ; preds = %bb.a
  %i.aue = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.auf = load i8, ptr %i.aue, align 8, !tbaa !80
  %i.aug = icmp eq i8 %i.auf, 25
  %.sroa.0828.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 32 uses
  %.sroa.2829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2829.0.copyload = load i64, ptr %.sroa.2829.0..sroa_idx, align 8, !tbaa !14 ; 27 uses
  %.sroa.3830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3830.0.copyload = load i64, ptr %.sroa.3830.0..sroa_idx, align 8, !tbaa !14 ; 8 uses
  %.sroa.4831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4831.0.copyload = load i8, ptr %.sroa.4831.0..sroa_idx, align 8, !tbaa !189 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.auh)
  %i.aui = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !333 ; 27 uses
  %i.auk = icmp ult i64 %.sroa.0828.0.copyload, %.sroa.2829.0.copyload ; 2 uses
  br i1 %i.aug, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.auk, label %.lr.ph.i614, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i614:                                      ; preds = %bb.bu
  %i.aul = load ptr, ptr %i.auh, align 8, !tbaa !157
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !158 ; 9 uses
  %.not.i.i615 = icmp eq ptr %i.aum, null         ; 2 uses
  %i.aun = trunc nuw i8 %.sroa.4831.0.copyload to i1 ; 4 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !39 ; 16 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i618 = icmp eq ptr %i.aur, null
  br i1 %.not.i15.i618, label %.lr.ph.split.us.i640, label %.lr.ph.split.i619

.lr.ph.split.us.i640:                             ; preds = %.lr.ph.i614
  br i1 %.not.i.i615, label %.lr.ph.split.us.split.us.i644, label %.lr.ph.split.us.split.i641

.lr.ph.split.us.split.us.i644:                    ; preds = %.lr.ph.split.us.i640
  br i1 %i.aun, label %.lr.ph.split.us.split.us.split.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader: ; preds = %.lr.ph.split.us.split.us.i644
  %i.aus = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload ; 3 uses
  %min.iters.check1484 = icmp ult i64 %i.aus, 9
  br i1 %min.iters.check1484, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996, label %vector.memcheck

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996: ; preds = %vector.body1488, %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader
  %.017.us.us.i646.ph = phi i64 [ %.sroa.0828.0.copyload, %vector.memcheck ], [ %.sroa.0828.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader ], [ %i.avi, %vector.body1488 ] ; 6 uses
  %i.aut = sub i64 %.sroa.2829.0.copyload, %.017.us.us.i646.ph
  %.neg2035 = add i64 %.017.us.us.i646.ph, 1
  %xtraiter2026 = and i64 %i.aut, 1
  %lcmp.mod2027.not = icmp eq i64 %xtraiter2026, 0
  br i1 %lcmp.mod2027.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.017.us.us.i646.ph ; 3 uses
  %i.auv = load i64, ptr %i.auu, align 8, !tbaa !14 ; 2 uses
  %i.auw = add i64 %i.auv, 1
  store i64 %i.auw, ptr %i.auu, align 8, !tbaa !14
  %i.aux = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.i646.ph
  %.sroa.0.0.copyload.us.us.i.prol = load i64, ptr %i.aux, align 8
  %i.auy = and i64 %.sroa.0.0.copyload.us.us.i.prol, 4294967295
  %i.auz = add i64 %i.auv, 2
  %i.ava = add i64 %i.auz, %i.auy
  store i64 %i.ava, ptr %i.auu, align 8, !tbaa !14
  %i.avb = add nuw i64 %.017.us.us.i646.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996
  %.017.us.us.i646.unr = phi i64 [ %.017.us.us.i646.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996 ], [ %i.avb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol ]
  %i.avc = icmp eq i64 %.sroa.2829.0.copyload, %.neg2035
  br i1 %i.avc, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader
  %i.avd = shl i64 %.sroa.0828.0.copyload, 3
  %scevgep = getelementptr i8, ptr %i.aup, i64 %i.avd
  %i.ave = shl i64 %.sroa.2829.0.copyload, 3
  %scevgep1480 = getelementptr i8, ptr %i.aup, i64 %i.ave
  %i.avf = shl i64 %.sroa.0828.0.copyload, 4
  %scevgep1481 = getelementptr i8, ptr %i.auj, i64 %i.avf
  %i.avg = shl i64 %.sroa.2829.0.copyload, 4
  %i.avh = getelementptr i8, ptr %i.auj, i64 %i.avg
  %scevgep1482 = getelementptr i8, ptr %i.avh, i64 -8
  %bound0 = icmp ult ptr %scevgep, %scevgep1482
  %bound1 = icmp ult ptr %scevgep1481, %scevgep1480
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996, label %vector.ph1485

vector.ph1485:                                    ; preds = %vector.memcheck
  %.neg = or i64 %i.aus, -2                       ; 2 uses
  %n.vec1487 = add i64 %.neg, %i.aus
  %i.avi = add i64 %.neg, %.sroa.2829.0.copyload
  br label %vector.body1488

vector.body1488:                                  ; preds = %vector.body1488, %vector.ph1485
  %index1489 = phi i64 [ 0, %vector.ph1485 ], [ %index.next1491, %vector.body1488 ] ; 2 uses
  %i.avj = add nuw i64 %.sroa.0828.0.copyload, %index1489 ; 2 uses
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %i.avj ; 3 uses
  %wide.load1490 = load <2 x i64>, ptr %i.avk, align 8, !tbaa !14, !alias.scope !670, !noalias !673 ; 2 uses
  %i.avl = add <2 x i64> %wide.load1490, splat (i64 1)
  store <2 x i64> %i.avl, ptr %i.avk, align 8, !tbaa !14, !alias.scope !670, !noalias !673
  %i.avm = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.avj
  %9 = load <3 x i64>, ptr %i.avm, align 8, !alias.scope !673
  %strided.vec = shufflevector <3 x i64> %9, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.avn = and <2 x i64> %strided.vec, splat (i64 4294967295)
  %i.avo = add <2 x i64> %wide.load1490, splat (i64 2)
  %i.avp = add <2 x i64> %i.avo, %i.avn
  store <2 x i64> %i.avp, ptr %i.avk, align 8, !tbaa !14, !alias.scope !670, !noalias !673
  %index.next1491 = add nuw i64 %index1489, 2     ; 2 uses
  %i.avq = icmp eq i64 %index.next1491, %n.vec1487
  br i1 %i.avq, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996, label %vector.body1488, !llvm.loop !675

.lr.ph.split.us.split.us.split.us.i:              ; preds = %.lr.ph.split.us.split.us.i644
  %i.avr = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.sroa.3830.0.copyload ; 8 uses
  %.promoted35.i = load i64, ptr %i.avr, align 8, !tbaa !14 ; 3 uses
  %i.avs = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload ; 3 uses
  %min.iters.check1502 = icmp ult i64 %i.avs, 11
  br i1 %min.iters.check1502, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader, label %vector.memcheck1494

vector.memcheck1494:                              ; preds = %.lr.ph.split.us.split.us.split.us.i
  %i.avt = shl i64 %.sroa.3830.0.copyload, 3
  %i.avu = getelementptr i8, ptr %i.aup, i64 %i.avt
  %scevgep1495 = getelementptr i8, ptr %i.avu, i64 8
  %i.avv = shl i64 %.sroa.0828.0.copyload, 4
  %scevgep1496 = getelementptr i8, ptr %i.auj, i64 %i.avv
  %i.avw = shl i64 %.sroa.2829.0.copyload, 4
  %i.avx = getelementptr i8, ptr %i.auj, i64 %i.avw
  %scevgep1497 = getelementptr i8, ptr %i.avx, i64 -8
  %bound01498 = icmp ult ptr %i.avr, %scevgep1497
  %bound11499 = icmp ult ptr %scevgep1496, %scevgep1495
  %found.conflict1500 = and i1 %bound01498, %bound11499
  br i1 %found.conflict1500, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader, label %vector.ph1503

vector.ph1503:                                    ; preds = %vector.memcheck1494
  %n.mod.vf1504 = and i64 %i.avs, 3               ; 2 uses
  %i.avy = icmp eq i64 %n.mod.vf1504, 0
  %i.avz = select i1 %i.avy, i64 4, i64 %n.mod.vf1504
  %n.vec1505 = sub i64 %i.avs, %i.avz             ; 2 uses
  %i.awa = add i64 %.sroa.0828.0.copyload, %n.vec1505
  %i.awb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted35.i, i64 0
  br label %vector.body1506

vector.body1506:                                  ; preds = %vector.body1506, %vector.ph1503
  %index1507 = phi i64 [ 0, %vector.ph1503 ], [ %index.next1514, %vector.body1506 ] ; 2 uses
  %vec.phi1508 = phi <2 x i64> [ %i.awb, %vector.ph1503 ], [ %i.awk, %vector.body1506 ]
  %vec.phi1509 = phi <2 x i64> [ zeroinitializer, %vector.ph1503 ], [ %i.awl, %vector.body1506 ]
  %i.awc = add nuw i64 %.sroa.0828.0.copyload, %index1507 ; 2 uses
  %i.awd = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.awc
  %i.awe = getelementptr [16 x i8], ptr %i.auj, i64 %i.awc
  %i.awf = getelementptr i8, ptr %i.awe, i64 32
  %10 = load <3 x i64>, ptr %i.awd, align 8, !alias.scope !676
  %strided.vec1511 = shufflevector <3 x i64> %10, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %11 = load <3 x i64>, ptr %i.awf, align 8, !alias.scope !676
  %strided.vec1513 = shufflevector <3 x i64> %11, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.awg = and <2 x i64> %strided.vec1511, splat (i64 4294967295)
  %i.awh = and <2 x i64> %strided.vec1513, splat (i64 4294967295)
  %i.awi = add <2 x i64> %vec.phi1508, splat (i64 2)
  %i.awj = add <2 x i64> %vec.phi1509, splat (i64 2)
  %i.awk = add <2 x i64> %i.awi, %i.awg           ; 2 uses
  %i.awl = add <2 x i64> %i.awj, %i.awh           ; 2 uses
  %index.next1514 = add nuw i64 %index1507, 4     ; 2 uses
  %i.awm = icmp eq i64 %index.next1514, %n.vec1505
  br i1 %i.awm, label %middle.block1515, label %vector.body1506, !llvm.loop !679

middle.block1515:                                 ; preds = %vector.body1506
  %bin.rdx1516 = add <2 x i64> %i.awl, %i.awk
  %i.awn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1516) ; 2 uses
  store i64 %i.awn, ptr %i.avr, align 8, !tbaa !14, !alias.scope !680, !noalias !676
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader: ; preds = %vector.memcheck1494, %.lr.ph.split.us.split.us.split.us.i, %middle.block1515
  %.ph = phi i64 [ %.promoted35.i, %vector.memcheck1494 ], [ %.promoted35.i, %.lr.ph.split.us.split.us.split.us.i ], [ %i.awn, %middle.block1515 ] ; 3 uses
  %.017.us.us.us.i.ph = phi i64 [ %.sroa.0828.0.copyload, %vector.memcheck1494 ], [ %.sroa.0828.0.copyload, %.lr.ph.split.us.split.us.split.us.i ], [ %i.awa, %middle.block1515 ] ; 5 uses
  %i.awo = sub i64 %.sroa.2829.0.copyload, %.017.us.us.us.i.ph
  %.neg2036 = add i64 %.017.us.us.us.i.ph, 1
  %xtraiter2029 = and i64 %i.awo, 1
  %lcmp.mod2030.not = icmp eq i64 %xtraiter2029, 0
  br i1 %lcmp.mod2030.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader
  %i.awp = add i64 %.ph, 1
  store i64 %i.awp, ptr %i.avr, align 8, !tbaa !14
  %i.awq = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.us.i.ph
  %.sroa.0.0.copyload.us.us.us.i.prol = load i64, ptr %i.awq, align 8
  %i.awr = and i64 %.sroa.0.0.copyload.us.us.us.i.prol, 4294967295
  %i.aws = add i64 %.ph, 2
  %i.awt = add i64 %i.aws, %i.awr                 ; 2 uses
  store i64 %i.awt, ptr %i.avr, align 8, !tbaa !14
  %i.awu = add nuw i64 %.017.us.us.us.i.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader
  %.unr2032 = phi i64 [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader ], [ %i.awt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol ]
  %.017.us.us.us.i.unr = phi i64 [ %.017.us.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader ], [ %i.awu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol ]
  %i.awv = icmp eq i64 %.sroa.2829.0.copyload, %.neg2036
  br i1 %i.awv, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i
  %i.aww = phi i64 [ %i.axh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i ], [ %.unr2032, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit ] ; 2 uses
  %.017.us.us.us.i = phi i64 [ %i.axi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i ], [ %.017.us.us.us.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit ] ; 3 uses
  %i.awx = add i64 %i.aww, 1
  store i64 %i.awx, ptr %i.avr, align 8, !tbaa !14
  %i.awy = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.us.i
  %.sroa.0.0.copyload.us.us.us.i = load i64, ptr %i.awy, align 8
  %i.awz = and i64 %.sroa.0.0.copyload.us.us.us.i, 4294967295
  %i.axa = add i64 %i.aww, 2
  %i.axb = add i64 %i.axa, %i.awz                 ; 2 uses
  %i.axc = add i64 %i.axb, 1
  store i64 %i.axc, ptr %i.avr, align 8, !tbaa !14
  %i.axd = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.us.i
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 16
  %.sroa.0.0.copyload.us.us.us.i.1 = load i64, ptr %i.axe, align 8
  %i.axf = and i64 %.sroa.0.0.copyload.us.us.us.i.1, 4294967295
  %i.axg = add i64 %i.axb, 2
  %i.axh = add i64 %i.axg, %i.axf                 ; 2 uses
  store i64 %i.axh, ptr %i.avr, align 8, !tbaa !14
  %i.axi = add nuw i64 %.017.us.us.us.i, 2        ; 2 uses
  %exitcond49.not.i.1 = icmp eq i64 %i.axi, %.sroa.2829.0.copyload
  br i1 %exitcond49.not.i.1, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i, !llvm.loop !682

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645
  %.017.us.us.i646 = phi i64 [ %i.axy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645 ], [ %.017.us.us.i646.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit ] ; 4 uses
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.017.us.us.i646 ; 3 uses
  %i.axk = load i64, ptr %i.axj, align 8, !tbaa !14 ; 2 uses
  %i.axl = add i64 %i.axk, 1
  store i64 %i.axl, ptr %i.axj, align 8, !tbaa !14
  %i.axm = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.i646
  %.sroa.0.0.copyload.us.us.i = load i64, ptr %i.axm, align 8
  %i.axn = and i64 %.sroa.0.0.copyload.us.us.i, 4294967295
  %i.axo = add i64 %i.axk, 2
  %i.axp = add i64 %i.axo, %i.axn
  store i64 %i.axp, ptr %i.axj, align 8, !tbaa !14
  %i.axq = add nuw i64 %.017.us.us.i646, 1        ; 2 uses
  %i.axr = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %i.axq ; 3 uses
  %i.axs = load i64, ptr %i.axr, align 8, !tbaa !14 ; 2 uses
  %i.axt = add i64 %i.axs, 1
  store i64 %i.axt, ptr %i.axr, align 8, !tbaa !14
  %i.axu = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.axq
  %.sroa.0.0.copyload.us.us.i.1 = load i64, ptr %i.axu, align 8
  %i.axv = and i64 %.sroa.0.0.copyload.us.us.i.1, 4294967295
  %i.axw = add i64 %i.axs, 2
  %i.axx = add i64 %i.axw, %i.axv
  store i64 %i.axx, ptr %i.axr, align 8, !tbaa !14
  %i.axy = add nuw i64 %.017.us.us.i646, 2        ; 2 uses
  %exitcond48.not.i.1 = icmp eq i64 %i.axy, %.sroa.2829.0.copyload
  br i1 %exitcond48.not.i.1, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645, !llvm.loop !683

.lr.ph.split.us.split.i641:                       ; preds = %.lr.ph.split.us.i640
  br i1 %i.aun, label %.lr.ph.split.us.split.split.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader: ; preds = %.lr.ph.split.us.split.i641
  %i.axz = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload
  %.neg2033 = add i64 %.sroa.0828.0.copyload, 1
  %xtraiter2020 = and i64 %i.axz, 1
  %lcmp.mod2021.not = icmp eq i64 %xtraiter2020, 0
  br i1 %lcmp.mod2021.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.sroa.0828.0.copyload
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !3
  %i.ayc = zext i32 %i.ayb to i64
  %i.ayd = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.sroa.0828.0.copyload ; 3 uses
  %i.aye = load i64, ptr %i.ayd, align 8, !tbaa !14 ; 2 uses
  %i.ayf = add i64 %i.aye, 1
  store i64 %i.ayf, ptr %i.ayd, align 8, !tbaa !14
  %i.ayg = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.ayc
  %.sroa.0.0.copyload.us.i.prol = load i64, ptr %i.ayg, align 8
  %i.ayh = and i64 %.sroa.0.0.copyload.us.i.prol, 4294967295
  %i.ayi = add i64 %i.aye, 2
  %i.ayj = add i64 %i.ayi, %i.ayh
  store i64 %i.ayj, ptr %i.ayd, align 8, !tbaa !14
  %i.ayk = add nuw i64 %.sroa.0828.0.copyload, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader
  %.017.us.i643.unr = phi i64 [ %.sroa.0828.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader ], [ %i.ayk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol ]
  %i.ayl = icmp eq i64 %.sroa.2829.0.copyload, %.neg2033
  br i1 %i.ayl, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.i641
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.sroa.3830.0.copyload ; 7 uses
  %.promoted33.i = load i64, ptr %i.aym, align 8, !tbaa !14 ; 3 uses
  %i.ayn = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload
  %.neg2034 = add i64 %.sroa.0828.0.copyload, 1
  %xtraiter2023 = and i64 %i.ayn, 1
  %lcmp.mod2024.not = icmp eq i64 %xtraiter2023, 0
  br i1 %lcmp.mod2024.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol: ; preds = %.lr.ph.split.us.split.split.us.i
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.sroa.0828.0.copyload
  %i.ayp = load i32, ptr %i.ayo, align 4, !tbaa !3
  %i.ayq = zext i32 %i.ayp to i64
  %i.ayr = add i64 %.promoted33.i, 1
  store i64 %i.ayr, ptr %i.aym, align 8, !tbaa !14
  %i.ays = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.ayq
  %.sroa.0.0.copyload.us.us31.i.prol = load i64, ptr %i.ays, align 8
  %i.ayt = and i64 %.sroa.0.0.copyload.us.us31.i.prol, 4294967295
  %i.ayu = add i64 %.promoted33.i, 2
  %i.ayv = add i64 %i.ayu, %i.ayt                 ; 2 uses
  store i64 %i.ayv, ptr %i.aym, align 8, !tbaa !14
  %i.ayw = add nuw i64 %.sroa.0828.0.copyload, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol, %.lr.ph.split.us.split.split.us.i
  %.unr = phi i64 [ %.promoted33.i, %.lr.ph.split.us.split.split.us.i ], [ %i.ayv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol ]
  %.017.us.us30.i.unr = phi i64 [ %.sroa.0828.0.copyload, %.lr.ph.split.us.split.split.us.i ], [ %i.ayw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol ]
  %i.ayx = icmp eq i64 %.sroa.2829.0.copyload, %.neg2034
  br i1 %i.ayx, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i
  %i.ayy = phi i64 [ %i.azp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i ], [ %.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit ] ; 2 uses
  %.017.us.us30.i = phi i64 [ %i.azq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i ], [ %.017.us.us30.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit ] ; 3 uses
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.017.us.us30.i
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !3
  %i.azb = zext i32 %i.aza to i64
  %i.azc = add i64 %i.ayy, 1
  store i64 %i.azc, ptr %i.aym, align 8, !tbaa !14
  %i.azd = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.azb
  %.sroa.0.0.copyload.us.us31.i = load i64, ptr %i.azd, align 8
  %i.aze = and i64 %.sroa.0.0.copyload.us.us31.i, 4294967295
  %i.azf = add i64 %i.ayy, 2
  %i.azg = add i64 %i.azf, %i.aze                 ; 3 uses
  store i64 %i.azg, ptr %i.aym, align 8, !tbaa !14
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.017.us.us30.i
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 4
  %i.azj = load i32, ptr %i.azi, align 4, !tbaa !3
  %i.azk = zext i32 %i.azj to i64
  %i.azl = add i64 %i.azg, 1
  store i64 %i.azl, ptr %i.aym, align 8, !tbaa !14
  %i.azm = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.azk
  %.sroa.0.0.copyload.us.us31.i.1 = load i64, ptr %i.azm, align 8
  %i.azn = and i64 %.sroa.0.0.copyload.us.us31.i.1, 4294967295
  %i.azo = add i64 %i.azg, 2
  %i.azp = add i64 %i.azo, %i.azn                 ; 2 uses
  store i64 %i.azp, ptr %i.aym, align 8, !tbaa !14
  %i.azq = add nuw i64 %.017.us.us30.i, 2         ; 2 uses
  %exitcond47.not.i.1 = icmp eq i64 %i.azq, %.sroa.2829.0.copyload
  br i1 %exitcond47.not.i.1, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i, !llvm.loop !684

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642
  %.017.us.i643 = phi i64 [ %i.bam, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642 ], [ %.017.us.i643.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit ] ; 4 uses
  %i.azr = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.017.us.i643
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !3
  %i.azt = zext i32 %i.azs to i64
  %i.azu = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.017.us.i643 ; 3 uses
  %i.azv = load i64, ptr %i.azu, align 8, !tbaa !14 ; 2 uses
  %i.azw = add i64 %i.azv, 1
  store i64 %i.azw, ptr %i.azu, align 8, !tbaa !14
  %i.azx = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.azt
  %.sroa.0.0.copyload.us.i = load i64, ptr %i.azx, align 8
  %i.azy = and i64 %.sroa.0.0.copyload.us.i, 4294967295
  %i.azz = add i64 %i.azv, 2
  %i.baa = add i64 %i.azz, %i.azy
  store i64 %i.baa, ptr %i.azu, align 8, !tbaa !14
end_hunk_0
