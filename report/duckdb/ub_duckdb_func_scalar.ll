Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_scalar?download=true
inline.NumInlined: 4066
inline.NumDeleted: 1630
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_125GetSortKeyLengthRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE:bb.a
  br i1 %cmp.n1539, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader1956

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader1956: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader, %middle.block1538
  %.017.us.us.i612.ph = phi i64 [ %.sroa.0818.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader ], [ %i.arf, %middle.block1538 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader1956, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611
  %.017.us.us.i612 = phi i64 [ %i.arp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611 ], [ %.017.us.us.i612.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader1956 ] ; 2 uses
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.017.us.us.i612 ; 2 uses
  %i.arn = load i64, ptr %i.arm, align 8, !tbaa !31
  %i.aro = add i64 %i.arn, 17
  store i64 %i.aro, ptr %i.arm, align 8, !tbaa !31
  %i.arp = add nuw i64 %.017.us.us.i612, 1        ; 2 uses
  %exitcond44.not.i613 = icmp eq i64 %i.arp, %.sroa.2819.0.copyload
  br i1 %exitcond44.not.i613, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611, !llvm.loop !679

.lr.ph.split.us.split.i603:                       ; preds = %.lr.ph.split.us.i602
  br i1 %i.aqz, label %._crit_edge.sink.split.i607, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader: ; preds = %.lr.ph.split.us.split.i603
  %i.arq = sub i64 %.sroa.2819.0.copyload, %.sroa.0818.0.copyload ; 3 uses
  %min.iters.check1518 = icmp ult i64 %i.arq, 4
  br i1 %min.iters.check1518, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader1958, label %vector.ph1519

vector.ph1519:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader
  %n.vec1520 = and i64 %i.arq, -4                 ; 3 uses
  %i.arr = add i64 %.sroa.0818.0.copyload, %n.vec1520
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.sroa.0818.0.copyload
  br label %vector.body1521

vector.body1521:                                  ; preds = %vector.body1521, %vector.ph1519
  %index1522 = phi i64 [ 0, %vector.ph1519 ], [ %index.next1525, %vector.body1521 ] ; 2 uses
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %i.ars, i64 %index1522 ; 3 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 16 ; 2 uses
  %wide.load1523 = load <2 x i64>, ptr %i.art, align 8, !tbaa !31
  %wide.load1524 = load <2 x i64>, ptr %i.aru, align 8, !tbaa !31
  %i.arv = add <2 x i64> %wide.load1523, splat (i64 17)
  %i.arw = add <2 x i64> %wide.load1524, splat (i64 17)
  store <2 x i64> %i.arv, ptr %i.art, align 8, !tbaa !31
  store <2 x i64> %i.arw, ptr %i.aru, align 8, !tbaa !31
  %index.next1525 = add nuw i64 %index1522, 4     ; 2 uses
  %i.arx = icmp eq i64 %index.next1525, %n.vec1520
  br i1 %i.arx, label %middle.block1526, label %vector.body1521, !llvm.loop !680

middle.block1526:                                 ; preds = %vector.body1521
  %cmp.n1527 = icmp eq i64 %i.arq, %n.vec1520
  br i1 %cmp.n1527, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader1958

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader1958: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader, %middle.block1526
  %.017.us.i605.ph = phi i64 [ %.sroa.0818.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader ], [ %i.arr, %middle.block1526 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader1958, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604
  %.017.us.i605 = phi i64 [ %i.asb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604 ], [ %.017.us.i605.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader1958 ] ; 2 uses
  %i.ary = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.017.us.i605 ; 2 uses
  %i.arz = load i64, ptr %i.ary, align 8, !tbaa !31
  %i.asa = add i64 %i.arz, 17
  store i64 %i.asa, ptr %i.ary, align 8, !tbaa !31
  %i.asb = add nuw i64 %.017.us.i605, 1           ; 2 uses
  %exitcond43.not.i606 = icmp eq i64 %i.asb, %.sroa.2819.0.copyload
  br i1 %exitcond43.not.i606, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604, !llvm.loop !681

.lr.ph.split.i575:                                ; preds = %.lr.ph.i570
  br i1 %.not.i.i571, label %.lr.ph.split.split.us.i589, label %.lr.ph.split.split.i576

.lr.ph.split.split.us.i589:                       ; preds = %.lr.ph.split.i575
  br i1 %i.aqz, label %.lr.ph.split.split.us.split.us.i595, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590

.lr.ph.split.split.us.split.us.i595:              ; preds = %.lr.ph.split.split.us.i589
  %i.asc = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.sroa.3820.0.copyload ; 3 uses
  %.promoted26.i596 = load i64, ptr %i.asc, align 8, !tbaa !31
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597: ; preds = %bb.bp, %.lr.ph.split.split.us.split.us.i595
  %i.asd = phi i64 [ %.promoted26.i596, %.lr.ph.split.split.us.split.us.i595 ], [ %i.asm, %bb.bp ] ; 2 uses
  %.017.us18.us.i598 = phi i64 [ %.sroa.0818.0.copyload, %.lr.ph.split.split.us.split.us.i595 ], [ %i.asn, %bb.bp ] ; 3 uses
  %i.ase = add i64 %i.asd, 1                      ; 2 uses
  store i64 %i.ase, ptr %i.asc, align 8, !tbaa !31
  %i.asf = lshr i64 %.017.us18.us.i598, 6
  %i.asg = and i64 %.017.us18.us.i598, 63
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.asf
  %i.asi = load i64, ptr %i.ash, align 8, !tbaa !31
  %i.asj = shl nuw i64 1, %i.asg
  %i.ask = and i64 %i.asi, %i.asj
  %.not.us.us.i599 = icmp eq i64 %i.ask, 0
  br i1 %.not.us.us.i599, label %bb.bp, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i600

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i600: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597
  %i.asl = add i64 %i.asd, 17                     ; 2 uses
  store i64 %i.asl, ptr %i.asc, align 8, !tbaa !31
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i600, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597
  %i.asm = phi i64 [ %i.ase, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597 ], [ %i.asl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i600 ]
  %i.asn = add nuw i64 %.017.us18.us.i598, 1      ; 2 uses
  %exitcond42.not.i601 = icmp eq i64 %i.asn, %.sroa.2819.0.copyload
  br i1 %exitcond42.not.i601, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597, !llvm.loop !682

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590: ; preds = %.lr.ph.split.split.us.i589, %bb.bq
  %.017.us18.i591 = phi i64 [ %i.asy, %bb.bq ], [ %.sroa.0818.0.copyload, %.lr.ph.split.split.us.i589 ] ; 4 uses
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.017.us18.i591 ; 3 uses
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !31 ; 2 uses
  %i.asq = add i64 %i.asp, 1
  store i64 %i.asq, ptr %i.aso, align 8, !tbaa !31
  %i.asr = lshr i64 %.017.us18.i591, 6
  %i.ass = and i64 %.017.us18.i591, 63
  %i.ast = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.asr
  %i.asu = load i64, ptr %i.ast, align 8, !tbaa !31
  %i.asv = shl nuw i64 1, %i.ass
  %i.asw = and i64 %i.asu, %i.asv
  %.not.us.i592 = icmp eq i64 %i.asw, 0
  br i1 %.not.us.i592, label %bb.bq, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i593

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i593: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590
  %i.asx = add i64 %i.asp, 17
  store i64 %i.asx, ptr %i.aso, align 8, !tbaa !31
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i593, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590
  %i.asy = add nuw i64 %.017.us18.i591, 1         ; 2 uses
  %exitcond41.not.i594 = icmp eq i64 %i.asy, %.sroa.2819.0.copyload
  br i1 %exitcond41.not.i594, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590, !llvm.loop !682

.lr.ph.split.split.i576:                          ; preds = %.lr.ph.split.i575
  br i1 %i.aqz, label %.lr.ph.split.split.split.us.i582, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577

.lr.ph.split.split.split.us.i582:                 ; preds = %.lr.ph.split.split.i576
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.sroa.3820.0.copyload ; 3 uses
  %.promoted.i583 = load i64, ptr %i.asz, align 8, !tbaa !31
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584: ; preds = %bb.br, %.lr.ph.split.split.split.us.i582
  %i.ata = phi i64 [ %.promoted.i583, %.lr.ph.split.split.split.us.i582 ], [ %i.atm, %bb.br ] ; 2 uses
  %.017.us22.i585 = phi i64 [ %.sroa.0818.0.copyload, %.lr.ph.split.split.split.us.i582 ], [ %i.atn, %bb.br ] ; 2 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.aqy, i64 %.017.us22.i585
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !22
  %i.atd = zext i32 %i.atc to i64                 ; 2 uses
  %i.ate = add i64 %i.ata, 1                      ; 2 uses
  store i64 %i.ate, ptr %i.asz, align 8, !tbaa !31
  %i.atf = lshr i64 %i.atd, 6
  %i.atg = and i64 %i.atd, 63
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.atf
  %i.ati = load i64, ptr %i.ath, align 8, !tbaa !31
  %i.atj = shl nuw i64 1, %i.atg
  %i.atk = and i64 %i.atj, %i.ati
  %.not.us24.i586 = icmp eq i64 %i.atk, 0
  br i1 %.not.us24.i586, label %bb.br, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584
  %i.atl = add i64 %i.ata, 17                     ; 2 uses
  store i64 %i.atl, ptr %i.asz, align 8, !tbaa !31
  br label %bb.br

bb.br:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584
  %i.atm = phi i64 [ %i.ate, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584 ], [ %i.atl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587 ]
  %i.atn = add nuw i64 %.017.us22.i585, 1         ; 2 uses
  %exitcond40.not.i588 = icmp eq i64 %i.atn, %.sroa.2819.0.copyload
  br i1 %exitcond40.not.i588, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584, !llvm.loop !682

._crit_edge.sink.split.i607:                      ; preds = %.lr.ph.split.us.split.i603, %.lr.ph.split.us.split.us.i610
  %i.ato = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.sroa.3820.0.copyload ; 2 uses
  %.promoted30.i608 = load i64, ptr %i.ato, align 8, !tbaa !31
  %reass.add = sub i64 %.sroa.2819.0.copyload, %.sroa.0818.0.copyload
  %reass.mul = mul i64 %reass.add, 17
  %i.atp = add i64 %.promoted30.i608, %reass.mul
  store i64 %i.atp, ptr %i.ato, align 8, !tbaa !31
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577: ; preds = %.lr.ph.split.split.i576, %bb.bs
  %.017.i578 = phi i64 [ %i.aud, %bb.bs ], [ %.sroa.0818.0.copyload, %.lr.ph.split.split.i576 ] ; 3 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.aqy, i64 %.017.i578
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !22
  %i.ats = zext i32 %i.atr to i64                 ; 2 uses
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.017.i578 ; 3 uses
  %i.atu = load i64, ptr %i.att, align 8, !tbaa !31 ; 2 uses
  %i.atv = add i64 %i.atu, 1
  store i64 %i.atv, ptr %i.att, align 8, !tbaa !31
  %i.atw = lshr i64 %i.ats, 6
  %i.atx = and i64 %i.ats, 63
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.atw
  %i.atz = load i64, ptr %i.aty, align 8, !tbaa !31
  %i.aua = shl nuw i64 1, %i.atx
  %i.aub = and i64 %i.atz, %i.aua
  %.not.i579 = icmp eq i64 %i.aub, 0
  br i1 %.not.i579, label %bb.bs, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i580

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i580: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577
  %i.auc = add i64 %i.atu, 17
  store i64 %i.auc, ptr %i.att, align 8, !tbaa !31
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i580, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577
  %i.aud = add nuw i64 %.017.i578, 1              ; 2 uses
  %exitcond.not.i581 = icmp eq i64 %i.aud, %.sroa.2819.0.copyload
  br i1 %exitcond.not.i581, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577, !llvm.loop !682

bb.bt:                                            ; preds = %bb.a
  %i.aue = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.auf = load i8, ptr %i.aue, align 8, !tbaa !84
  %i.aug = icmp eq i8 %i.auf, 25
  %.sroa.0828.0.copyload = load i64, ptr %1, align 8, !tbaa !31 ; 33 uses
  %.sroa.2829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2829.0.copyload = load i64, ptr %.sroa.2829.0..sroa_idx, align 8, !tbaa !31 ; 26 uses
  %.sroa.3830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3830.0.copyload = load i64, ptr %.sroa.3830.0..sroa_idx, align 8, !tbaa !31 ; 8 uses
  %.sroa.4831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4831.0.copyload = load i8, ptr %.sroa.4831.0..sroa_idx, align 8, !tbaa !156 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.auh)
  %i.aui = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !216 ; 27 uses
  %i.auk = icmp ult i64 %.sroa.0828.0.copyload, %.sroa.2829.0.copyload ; 2 uses
  br i1 %i.aug, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.auk, label %.lr.ph.i614, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i614:                                      ; preds = %bb.bu
  %i.aul = load ptr, ptr %i.auh, align 8, !tbaa !129
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !130 ; 9 uses
  %.not.i.i615 = icmp eq ptr %i.aum, null         ; 2 uses
  %i.aun = trunc nuw i8 %.sroa.4831.0.copyload to i1 ; 4 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !51 ; 16 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !131 ; 5 uses
  %.not.i15.i618 = icmp eq ptr %i.aur, null
  br i1 %.not.i15.i618, label %.lr.ph.split.us.i640, label %.lr.ph.split.i619

.lr.ph.split.us.i640:                             ; preds = %.lr.ph.i614
  br i1 %.not.i.i615, label %.lr.ph.split.us.split.us.i644, label %.lr.ph.split.us.split.i641

.lr.ph.split.us.split.us.i644:                    ; preds = %.lr.ph.split.us.i640
  br i1 %i.aun, label %.lr.ph.split.us.split.us.split.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader: ; preds = %.lr.ph.split.us.split.us.i644
  %i.aus = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload ; 2 uses
  %min.iters.check1481 = icmp ult i64 %i.aus, 9
  br i1 %min.iters.check1481, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1966, label %vector.memcheck

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1966: ; preds = %vector.body1484, %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader
  %.017.us.us.i646.ph = phi i64 [ %.sroa.0828.0.copyload, %vector.memcheck ], [ %.sroa.0828.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader ], [ %i.avm, %vector.body1484 ] ; 6 uses
  %i.aut = sub i64 %.sroa.2829.0.copyload, %.017.us.us.i646.ph
  %.neg2005.a = add i64 %.017.us.us.i646.ph, 1
  %xtraiter1996 = and i64 %i.aut, 1
  %lcmp.mod1997.not = icmp eq i64 %xtraiter1996, 0
  br i1 %lcmp.mod1997.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1966
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.017.us.us.i646.ph ; 3 uses
  %i.auv = load i64, ptr %i.auu, align 8, !tbaa !31 ; 2 uses
  %i.auw = add i64 %i.auv, 1
  store i64 %i.auw, ptr %i.auu, align 8, !tbaa !31
  %i.aux = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.i646.ph
  %.sroa.0.0.copyload.us.us.i.prol = load i64, ptr %i.aux, align 8
  %i.auy = and i64 %.sroa.0.0.copyload.us.us.i.prol, 4294967295
  %i.auz = add i64 %i.auv, 2
  %i.ava = add i64 %i.auz, %i.auy
  store i64 %i.ava, ptr %i.auu, align 8, !tbaa !31
  %i.avb = add nuw i64 %.017.us.us.i646.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1966
  %.017.us.us.i646.unr = phi i64 [ %.017.us.us.i646.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1966 ], [ %i.avb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol ]
  %i.avc = icmp eq i64 %.sroa.2829.0.copyload, %.neg2005.a
  br i1 %i.avc, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader
  %i.avd = shl i64 %.sroa.0828.0.copyload, 3
  %i.ave = getelementptr i8, ptr %i.aup, i64 %i.avd
  %i.avf = shl i64 %.sroa.2829.0.copyload, 3
  %i.avg = getelementptr i8, ptr %i.aup, i64 %i.avf
  %i.avh = shl i64 %.sroa.0828.0.copyload, 4
  %i.avi = getelementptr i8, ptr %i.auj, i64 %i.avh
  %i.avj = shl i64 %.sroa.2829.0.copyload, 4
  %i.avk = getelementptr i8, ptr %i.auj, i64 %i.avj
  %i.avl = getelementptr i8, ptr %i.avk, i64 -8
  %bound0 = icmp ult ptr %i.ave, %i.avl
  %bound1 = icmp ult ptr %i.avi, %i.avg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1966, label %vector.ph1482

vector.ph1482:                                    ; preds = %vector.memcheck
  %9 = add i64 %i.aus, -1
  %n.vec1483 = and i64 %9, -2                     ; 2 uses
  %i.avm = add i64 %.sroa.0828.0.copyload, %n.vec1483
  br label %vector.body1484

vector.body1484:                                  ; preds = %vector.body1484, %vector.ph1482
  %index1485 = phi i64 [ 0, %vector.ph1482 ], [ %index.next1487, %vector.body1484 ] ; 2 uses
  %i.avn = add nuw i64 %.sroa.0828.0.copyload, %index1485 ; 2 uses
  %i.avo = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %i.avn ; 3 uses
  %wide.load1486 = load <2 x i64>, ptr %i.avo, align 8, !tbaa !31, !alias.scope !710, !noalias !711 ; 2 uses
  %i.avp = add <2 x i64> %wide.load1486, splat (i64 1)
  store <2 x i64> %i.avp, ptr %i.avo, align 8, !tbaa !31, !alias.scope !710, !noalias !711
  %i.avq = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.avn
  %wide.vec = load <4 x i64>, ptr %i.avq, align 8, !alias.scope !711
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.avr = and <2 x i64> %strided.vec, splat (i64 4294967295)
  %i.avs = add <2 x i64> %wide.load1486, splat (i64 2)
  %i.avt = add <2 x i64> %i.avs, %i.avr
  store <2 x i64> %i.avt, ptr %i.avo, align 8, !tbaa !31, !alias.scope !710, !noalias !711
  %index.next1487 = add nuw i64 %index1485, 2     ; 2 uses
  %i.avu = icmp eq i64 %index.next1487, %n.vec1483
  br i1 %i.avu, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1966, label %vector.body1484, !llvm.loop !686

.lr.ph.split.us.split.us.split.us.i:              ; preds = %.lr.ph.split.us.split.us.i644
  %i.avv = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.sroa.3830.0.copyload ; 8 uses
  %.promoted35.i = load i64, ptr %i.avv, align 8, !tbaa !31 ; 3 uses
  %i.avw = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload ; 3 uses
  %min.iters.check1497 = icmp ult i64 %i.avw, 11
  br i1 %min.iters.check1497, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader, label %vector.memcheck1498

vector.memcheck1498:                              ; preds = %.lr.ph.split.us.split.us.split.us.i
  %i.avx = shl i64 %.sroa.3830.0.copyload, 3
  %i.avy = getelementptr i8, ptr %i.aup, i64 %i.avx
  %i.avz = getelementptr i8, ptr %i.avy, i64 8
  %i.awa = shl i64 %.sroa.0828.0.copyload, 4
  %i.awb = getelementptr i8, ptr %i.auj, i64 %i.awa
  %i.awc = shl i64 %.sroa.2829.0.copyload, 4
  %i.awd = getelementptr i8, ptr %i.auj, i64 %i.awc
  %i.awe = getelementptr i8, ptr %i.awd, i64 -8
  %bound01499 = icmp ult ptr %i.avv, %i.awe
  %bound11500 = icmp ult ptr %i.awb, %i.avz
  %found.conflict1501 = and i1 %bound01499, %bound11500
  br i1 %found.conflict1501, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader, label %vector.ph1502

vector.ph1502:                                    ; preds = %vector.memcheck1498
  %i.awf = and i64 %i.avw, 3                      ; 2 uses
  %i.awg = icmp eq i64 %i.awf, 0
  %i.awh = select i1 %i.awg, i64 4, i64 %i.awf
  %n.vec1503 = sub i64 %i.avw, %i.awh             ; 2 uses
  %i.awi = add i64 %.sroa.0828.0.copyload, %n.vec1503
  %i.awj = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted35.i, i64 0
  br label %vector.body1504

vector.body1504:                                  ; preds = %vector.body1504, %vector.ph1502
  %index1505 = phi i64 [ 0, %vector.ph1502 ], [ %index.next1512, %vector.body1504 ] ; 2 uses
  %vec.phi1506 = phi <2 x i64> [ %i.awj, %vector.ph1502 ], [ %i.aws, %vector.body1504 ]
  %vec.phi1507 = phi <2 x i64> [ zeroinitializer, %vector.ph1502 ], [ %i.awt, %vector.body1504 ]
  %i.awk = add nuw i64 %.sroa.0828.0.copyload, %index1505 ; 2 uses
  %i.awl = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.awk
  %i.awm = getelementptr [16 x i8], ptr %i.auj, i64 %i.awk
  %i.awn = getelementptr i8, ptr %i.awm, i64 32
  %wide.vec1508 = load <4 x i64>, ptr %i.awl, align 8, !alias.scope !712
  %strided.vec1509 = shufflevector <4 x i64> %wide.vec1508, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec1510 = load <4 x i64>, ptr %i.awn, align 8, !alias.scope !712
  %strided.vec1511 = shufflevector <4 x i64> %wide.vec1510, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.awo = and <2 x i64> %strided.vec1509, splat (i64 4294967295)
  %i.awp = and <2 x i64> %strided.vec1511, splat (i64 4294967295)
  %i.awq = add <2 x i64> %vec.phi1506, splat (i64 2)
  %i.awr = add <2 x i64> %vec.phi1507, splat (i64 2)
  %i.aws = add <2 x i64> %i.awq, %i.awo           ; 2 uses
  %i.awt = add <2 x i64> %i.awr, %i.awp           ; 2 uses
  %index.next1512 = add nuw i64 %index1505, 4     ; 2 uses
  %i.awu = icmp eq i64 %index.next1512, %n.vec1503
  br i1 %i.awu, label %middle.block1513, label %vector.body1504, !llvm.loop !689

middle.block1513:                                 ; preds = %vector.body1504
  %bin.rdx1514 = add <2 x i64> %i.awt, %i.aws
  %i.awv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1514) ; 2 uses
  store i64 %i.awv, ptr %i.avv, align 8, !tbaa !31, !alias.scope !713, !noalias !712
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader: ; preds = %vector.memcheck1498, %.lr.ph.split.us.split.us.split.us.i, %middle.block1513
  %.ph = phi i64 [ %.promoted35.i, %vector.memcheck1498 ], [ %.promoted35.i, %.lr.ph.split.us.split.us.split.us.i ], [ %i.awv, %middle.block1513 ] ; 3 uses
  %.017.us.us.us.i.ph = phi i64 [ %.sroa.0828.0.copyload, %vector.memcheck1498 ], [ %.sroa.0828.0.copyload, %.lr.ph.split.us.split.us.split.us.i ], [ %i.awi, %middle.block1513 ] ; 5 uses
  %i.aww = sub i64 %.sroa.2829.0.copyload, %.017.us.us.us.i.ph
  %.neg2006 = add i64 %.017.us.us.us.i.ph, 1
  %xtraiter1999 = and i64 %i.aww, 1
  %lcmp.mod2000.not = icmp eq i64 %xtraiter1999, 0
  br i1 %lcmp.mod2000.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader
  %i.awx = add i64 %.ph, 1
  store i64 %i.awx, ptr %i.avv, align 8, !tbaa !31
  %i.awy = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.us.i.ph
  %.sroa.0.0.copyload.us.us.us.i.prol = load i64, ptr %i.awy, align 8
  %i.awz = and i64 %.sroa.0.0.copyload.us.us.us.i.prol, 4294967295
  %i.axa = add i64 %.ph, 2
  %i.axb = add i64 %i.axa, %i.awz                 ; 2 uses
  store i64 %i.axb, ptr %i.avv, align 8, !tbaa !31
  %i.axc = add nuw i64 %.017.us.us.us.i.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader
  %.unr2002 = phi i64 [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader ], [ %i.axb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol ]
  %.017.us.us.us.i.unr = phi i64 [ %.017.us.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader ], [ %i.axc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol ]
  %i.axd = icmp eq i64 %.sroa.2829.0.copyload, %.neg2006
  br i1 %i.axd, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i
  %i.axe = phi i64 [ %i.axp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i ], [ %.unr2002, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit ] ; 2 uses
  %.017.us.us.us.i = phi i64 [ %i.axq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i ], [ %.017.us.us.us.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit ] ; 3 uses
  %i.axf = add i64 %i.axe, 1
  store i64 %i.axf, ptr %i.avv, align 8, !tbaa !31
  %i.axg = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.us.i
  %.sroa.0.0.copyload.us.us.us.i = load i64, ptr %i.axg, align 8
  %i.axh = and i64 %.sroa.0.0.copyload.us.us.us.i, 4294967295
  %i.axi = add i64 %i.axe, 2
  %i.axj = add i64 %i.axi, %i.axh                 ; 2 uses
  %i.axk = add i64 %i.axj, 1
  store i64 %i.axk, ptr %i.avv, align 8, !tbaa !31
  %i.axl = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.us.i
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 16
  %.sroa.0.0.copyload.us.us.us.i.1 = load i64, ptr %i.axm, align 8
  %i.axn = and i64 %.sroa.0.0.copyload.us.us.us.i.1, 4294967295
  %i.axo = add i64 %i.axj, 2
  %i.axp = add i64 %i.axo, %i.axn                 ; 2 uses
  store i64 %i.axp, ptr %i.avv, align 8, !tbaa !31
  %i.axq = add nuw i64 %.017.us.us.us.i, 2        ; 2 uses
  %exitcond49.not.i.1 = icmp eq i64 %i.axq, %.sroa.2829.0.copyload
  br i1 %exitcond49.not.i.1, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i, !llvm.loop !691

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645
  %.017.us.us.i646 = phi i64 [ %i.ayg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645 ], [ %.017.us.us.i646.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit ] ; 4 uses
  %i.axr = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.017.us.us.i646 ; 3 uses
  %i.axs = load i64, ptr %i.axr, align 8, !tbaa !31 ; 2 uses
  %i.axt = add i64 %i.axs, 1
  store i64 %i.axt, ptr %i.axr, align 8, !tbaa !31
  %i.axu = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.i646
  %.sroa.0.0.copyload.us.us.i = load i64, ptr %i.axu, align 8
  %i.axv = and i64 %.sroa.0.0.copyload.us.us.i, 4294967295
  %i.axw = add i64 %i.axs, 2
  %i.axx = add i64 %i.axw, %i.axv
  store i64 %i.axx, ptr %i.axr, align 8, !tbaa !31
  %i.axy = add nuw i64 %.017.us.us.i646, 1        ; 2 uses
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %i.axy ; 3 uses
  %i.aya = load i64, ptr %i.axz, align 8, !tbaa !31 ; 2 uses
  %i.ayb = add i64 %i.aya, 1
  store i64 %i.ayb, ptr %i.axz, align 8, !tbaa !31
  %i.ayc = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.axy
  %.sroa.0.0.copyload.us.us.i.1 = load i64, ptr %i.ayc, align 8
  %i.ayd = and i64 %.sroa.0.0.copyload.us.us.i.1, 4294967295
  %i.aye = add i64 %i.aya, 2
  %i.ayf = add i64 %i.aye, %i.ayd
  store i64 %i.ayf, ptr %i.axz, align 8, !tbaa !31
  %i.ayg = add nuw i64 %.017.us.us.i646, 2        ; 2 uses
  %exitcond48.not.i.1 = icmp eq i64 %i.ayg, %.sroa.2829.0.copyload
  br i1 %exitcond48.not.i.1, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645, !llvm.loop !692

.lr.ph.split.us.split.i641:                       ; preds = %.lr.ph.split.us.i640
  br i1 %i.aun, label %.lr.ph.split.us.split.split.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader: ; preds = %.lr.ph.split.us.split.i641
  %i.ayh = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload
  %.neg2003.a = add i64 %.sroa.0828.0.copyload, 1
  %xtraiter1990 = and i64 %i.ayh, 1
  %lcmp.mod1991.not = icmp eq i64 %xtraiter1990, 0
  br i1 %lcmp.mod1991.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.sroa.0828.0.copyload
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !22
  %i.ayk = zext i32 %i.ayj to i64
  %i.ayl = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.sroa.0828.0.copyload ; 3 uses
  %i.aym = load i64, ptr %i.ayl, align 8, !tbaa !31 ; 2 uses
  %i.ayn = add i64 %i.aym, 1
  store i64 %i.ayn, ptr %i.ayl, align 8, !tbaa !31
  %i.ayo = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.ayk
  %.sroa.0.0.copyload.us.i.prol = load i64, ptr %i.ayo, align 8
  %i.ayp = and i64 %.sroa.0.0.copyload.us.i.prol, 4294967295
  %i.ayq = add i64 %i.aym, 2
  %i.ayr = add i64 %i.ayq, %i.ayp
  store i64 %i.ayr, ptr %i.ayl, align 8, !tbaa !31
  %i.ays = add nuw i64 %.sroa.0828.0.copyload, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader
  %.017.us.i643.unr = phi i64 [ %.sroa.0828.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader ], [ %i.ays, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol ]
  %i.ayt = icmp eq i64 %.sroa.2829.0.copyload, %.neg2003.a
  br i1 %i.ayt, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.i641
  %i.ayu = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.sroa.3830.0.copyload ; 7 uses
  %.promoted33.i = load i64, ptr %i.ayu, align 8, !tbaa !31 ; 3 uses
  %i.ayv = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload
  %.neg2004 = add i64 %.sroa.0828.0.copyload, 1
  %xtraiter1993 = and i64 %i.ayv, 1
  %lcmp.mod1994.not = icmp eq i64 %xtraiter1993, 0
  br i1 %lcmp.mod1994.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol: ; preds = %.lr.ph.split.us.split.split.us.i
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.sroa.0828.0.copyload
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !22
  %i.ayy = zext i32 %i.ayx to i64
end_hunk_0
