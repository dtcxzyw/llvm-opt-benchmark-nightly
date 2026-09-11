Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9block?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 54
begin_hunk_0_@ff_vp9_decode_block:bb.a
  %i.eme = getelementptr inbounds nuw i8, ptr %i.emd, i64 864
  %i.emf = getelementptr inbounds nuw [432 x i8], ptr %i.eme, i64 %i.emb ; 4 uses
  %i.emg = getelementptr inbounds nuw [1152 x i8], ptr %i.dwb, i64 %i.elx
  %i.emh = getelementptr inbounds nuw i8, ptr %i.emg, i64 576
  %i.emi = getelementptr inbounds nuw [288 x i8], ptr %i.emh, i64 %i.emb ; 4 uses
  %i.emj = getelementptr inbounds nuw i8, ptr %i.dvl, i64 3924 ; 2 uses
  %i.emk = load i8, ptr %i.emj, align 4, !tbaa !237
  %i.eml = zext i8 %i.emk to i32                  ; 2 uses
  %i.emm = lshr i32 %i.dwk, %i.eml
  %i.emn = lshr i32 %..i.i, %i.eml                ; 15 uses
  %i.emo = getelementptr inbounds nuw i8, ptr %i.dvl, i64 3925 ; 2 uses
  %i.emp = load i8, ptr %i.emo, align 1, !tbaa !238
  %i.emq = zext i8 %i.emp to i32                  ; 2 uses
  %i.emr = lshr i32 %i.dwo, %i.emq
  %i.ems = lshr i32 %i.dwx, %i.emq                ; 15 uses
  %i.emt = getelementptr inbounds nuw i8, ptr %i.dvl, i64 19056
  %i.emu = getelementptr inbounds nuw i8, ptr %0, i64 52352
  %.not257.i = icmp eq i32 %i.ems, 0              ; 11 uses
  %.not258.i = icmp eq i32 %i.emn, 0              ; 11 uses
  %i.emv = getelementptr inbounds nuw i8, ptr %0, i64 77072 ; 4 uses
  %i.emw = getelementptr inbounds nuw i8, ptr %i.dxa, i64 74 ; 4 uses
  %i.emx = getelementptr i8, ptr %0, i64 16       ; 4 uses
  %i.emy = getelementptr inbounds nuw i8, ptr %0, i64 77120 ; 4 uses
  %i.emz = icmp eq i32 %i.emn, %i.emm             ; 2 uses
  %i.ena = icmp eq i32 %i.ems, %i.emr             ; 2 uses
  %i.enb = icmp samesign ugt i32 %i.emn, 1
  %i.enc = icmp samesign ugt i32 %i.ems, 1
  %i.end = zext nneg i32 %i.ems to i64            ; 6 uses
  %i.ene = zext nneg i32 %i.emn to i64            ; 6 uses
  %i.enf = add nsw i64 %i.end, -1                 ; 5 uses
  %i.eng = lshr i64 %i.enf, 3                     ; 2 uses
  %i.enh = add nuw nsw i64 %i.eng, 1              ; 6 uses
  %i.eni = add nsw i64 %i.ene, -1                 ; 5 uses
  %i.enj = lshr i64 %i.eni, 3                     ; 2 uses
  %i.enk = add nuw nsw i64 %i.enj, 1              ; 6 uses
  %i.enl = lshr i64 %i.enf, 2                     ; 2 uses
  %i.enm = add nuw nsw i64 %i.enl, 1              ; 6 uses
  %i.enn = lshr i64 %i.eni, 2                     ; 2 uses
  %i.eno = add nuw nsw i64 %i.enn, 1              ; 6 uses
  %i.enp = lshr i64 %i.enf, 1
  %i.enq = add nuw i64 %i.enp, 1                  ; 2 uses
  %i.enr = lshr i64 %i.eni, 1
  %i.ens = add nuw i64 %i.enr, 1                  ; 2 uses
  %i.ent = add nsw i64 %i.ene, -2                 ; 2 uses
  %i.enu = lshr i64 %i.ent, 1
  %i.env = add nuw i64 %i.enu, 1                  ; 2 uses
  %i.enw = add nsw i64 %i.end, -2                 ; 2 uses
  %i.enx = lshr i64 %i.enw, 1
  %i.eny = add nuw i64 %i.enx, 1                  ; 2 uses
  %xtraiter1611 = and i64 %i.enh, 3               ; 3 uses
  %i.enz = icmp samesign ult i32 %i.ems, 25
  %unroll_iter1615 = and i64 %i.enh, 4611686018427387900
  %lcmp.mod1613.not = icmp eq i64 %xtraiter1611, 0
  %lcmp.mod1614 = icmp ne i64 %xtraiter1611, 0
  %xtraiter1617 = and i64 %i.enk, 3               ; 3 uses
  %i.eoa = icmp samesign ult i32 %i.emn, 25
  %unroll_iter1621 = and i64 %i.enk, 4611686018427387900
  %lcmp.mod1619.not = icmp eq i64 %xtraiter1617, 0
  %lcmp.mod1620 = icmp ne i64 %xtraiter1617, 0
  %i.eob = icmp eq i64 %i.enj, 0
  %unroll_iter1627 = and i64 %i.enk, 4611686018427387902
  %i.eoc = and i64 %i.eni, 8
  %lcmp.mod1625.not.not = icmp eq i64 %i.eoc, 0
  %lcmp.mod1626 = trunc i64 %i.enk to i1
  %xtraiter1629 = and i64 %i.enk, 3               ; 3 uses
  %i.eod = icmp samesign ult i32 %i.emn, 25
  %unroll_iter1633 = and i64 %i.enk, 4611686018427387900
  %lcmp.mod1631.not = icmp eq i64 %xtraiter1629, 0
  %lcmp.mod1632 = icmp ne i64 %xtraiter1629, 0
  %i.eoe = icmp eq i64 %i.eng, 0
  %unroll_iter1639 = and i64 %i.enh, 4611686018427387902
  %i.eof = and i64 %i.enf, 8
  %lcmp.mod1637.not.not = icmp eq i64 %i.eof, 0
  %lcmp.mod1638 = trunc i64 %i.enh to i1
  %xtraiter1641 = and i64 %i.enh, 3               ; 3 uses
  %i.eog = icmp samesign ult i32 %i.ems, 25
  %unroll_iter1645 = and i64 %i.enh, 4611686018427387900
  %lcmp.mod1643.not = icmp eq i64 %xtraiter1641, 0
  %lcmp.mod1644 = icmp ne i64 %xtraiter1641, 0
  %xtraiter1647 = and i64 %i.enm, 3               ; 3 uses
  %i.eoh = icmp samesign ult i32 %i.ems, 13
  %unroll_iter1651 = and i64 %i.enm, 9223372036854775804
  %lcmp.mod1649.not = icmp eq i64 %xtraiter1647, 0
  %lcmp.mod1650 = icmp ne i64 %xtraiter1647, 0
  %xtraiter1653 = and i64 %i.eno, 3               ; 3 uses
  %i.eoi = icmp samesign ult i32 %i.emn, 13
  %unroll_iter1657 = and i64 %i.eno, 9223372036854775804
  %lcmp.mod1655.not = icmp eq i64 %xtraiter1653, 0
  %lcmp.mod1656 = icmp ne i64 %xtraiter1653, 0
  %i.eoj = icmp eq i64 %i.enn, 0
  %unroll_iter1663 = and i64 %i.eno, 9223372036854775806
  %i.eok = and i64 %i.eni, 4
  %lcmp.mod1661.not.not = icmp eq i64 %i.eok, 0
  %lcmp.mod1662 = trunc i64 %i.eno to i1
  %xtraiter1665 = and i64 %i.eno, 3               ; 3 uses
  %i.eol = icmp samesign ult i32 %i.emn, 13
  %unroll_iter1669 = and i64 %i.eno, 9223372036854775804
  %lcmp.mod1667.not = icmp eq i64 %xtraiter1665, 0
  %lcmp.mod1668 = icmp ne i64 %xtraiter1665, 0
  %i.eom = icmp eq i64 %i.enl, 0
  %unroll_iter1675 = and i64 %i.enm, 9223372036854775806
  %i.eon = and i64 %i.enf, 4
  %lcmp.mod1673.not.not = icmp eq i64 %i.eon, 0
  %lcmp.mod1674 = trunc i64 %i.enm to i1
  %xtraiter1677 = and i64 %i.enm, 3               ; 3 uses
  %i.eoo = icmp samesign ult i32 %i.ems, 13
  %unroll_iter1681 = and i64 %i.enm, 9223372036854775804
  %lcmp.mod1679.not = icmp eq i64 %xtraiter1677, 0
  %lcmp.mod1680 = icmp ne i64 %xtraiter1677, 0
  %xtraiter1683 = and i64 %i.enq, 3               ; 3 uses
  %i.eop = icmp samesign ult i32 %i.ems, 7
  %unroll_iter1687 = and i64 %i.enq, -4
  %lcmp.mod1685.not = icmp eq i64 %xtraiter1683, 0
  %lcmp.mod1686 = icmp ne i64 %xtraiter1683, 0
  %xtraiter1689 = and i64 %i.ens, 3               ; 3 uses
  %i.eoq = icmp samesign ult i32 %i.emn, 7
  %unroll_iter1693 = and i64 %i.ens, -4
  %lcmp.mod1691.not = icmp eq i64 %xtraiter1689, 0
  %lcmp.mod1692 = icmp ne i64 %xtraiter1689, 0
  %xtraiter1695 = and i64 %i.env, 3               ; 3 uses
  %i.eor = icmp ult i64 %i.ent, 6
  %unroll_iter1699 = and i64 %i.env, -4
  %lcmp.mod1697.not = icmp eq i64 %xtraiter1695, 0
  %lcmp.mod1698 = icmp ne i64 %xtraiter1695, 0
  %xtraiter1701 = and i64 %i.eny, 3               ; 3 uses
  %i.eos = icmp ult i64 %i.enw, 6
  %unroll_iter1705 = and i64 %i.eny, -4
  %lcmp.mod1703.not = icmp eq i64 %xtraiter1701, 0
  %lcmp.mod1704 = icmp ne i64 %xtraiter1701, 0
  br label %bb.oj

bb.oj:                                            ; preds = %.loopexit.i510, %.loopexit45.i
  %i.eot = phi i1 [ true, %.loopexit45.i ], [ false, %.loopexit.i510 ]
  %indvars.iv492.i = phi i64 [ 0, %.loopexit45.i ], [ 1, %.loopexit.i510 ] ; 10 uses
  %.9.i232.i = phi i32 [ %.8.i.i, %.loopexit45.i ], [ %.18.i.i, %.loopexit.i510 ] ; 9 uses
  %i.eou = getelementptr inbounds nuw [8 x i8], ptr %i.emt, i64 %indvars.iv492.i
  %i.eov = load ptr, ptr %i.eou, align 8, !tbaa !19
  %i.eow = load i8, ptr %i.emj, align 4, !tbaa !237
  %.not699.i.i = icmp eq i8 %i.eow, 0
  %i.eox = zext i1 %.not699.i.i to i32
  %i.eoy = shl i32 %i.dvo, %i.eox
  %i.eoz = sext i32 %i.eoy to i64
  %i.epa = getelementptr inbounds i8, ptr %i.eov, i64 %i.eoz ; 40 uses
  %i.epb = getelementptr inbounds nuw [16 x i8], ptr %i.emu, i64 %indvars.iv492.i
  %i.epc = load i8, ptr %i.emo, align 1, !tbaa !238
  %.not700.i.i = icmp eq i8 %i.epc, 0
  %i.epd = zext i1 %.not700.i.i to i32
  %i.epe = shl nuw nsw i32 %i.dxx, %i.epd
  %i.epf = zext nneg i32 %i.epe to i64
  %i.epg = getelementptr inbounds nuw i8, ptr %i.epb, i64 %i.epf ; 40 uses
  %i.eph = load i32, ptr %i.dxk, align 4, !tbaa !239
  switch i32 %i.eph, label %.loopexit.i510 [
    i32 0, label %.preheader14.i
    i32 1, label %.preheader20.i
    i32 2, label %.preheader31.i
    i32 3, label %.preheader42.i
  ]

.preheader42.i:                                   ; preds = %bb.oj
  br i1 %.not257.i, label %.preheader41.i, label %.lr.ph156.i.preheader

.lr.ph156.i.preheader:                            ; preds = %.preheader42.i
  br i1 %i.enz, label %.lr.ph156.i.epil.preheader, label %.lr.ph156.i

.preheader31.i:                                   ; preds = %bb.oj
  br i1 %.not257.i, label %.preheader30.i, label %.lr.ph178.i.preheader

.lr.ph178.i.preheader:                            ; preds = %.preheader31.i
  br i1 %i.eoh, label %.lr.ph178.i.epil.preheader, label %.lr.ph178.i

.preheader20.i:                                   ; preds = %bb.oj
  br i1 %.not257.i, label %.preheader19.i, label %.lr.ph202.i.preheader

.lr.ph202.i.preheader:                            ; preds = %.preheader20.i
  br i1 %i.eop, label %.lr.ph202.i.epil.preheader, label %.lr.ph202.i

.preheader14.i:                                   ; preds = %bb.oj
  br i1 %.not257.i, label %.loopexit.i510, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader14.i
  %i.epi = getelementptr inbounds nuw [8 x i8], ptr %i.emv, i64 %indvars.iv492.i
  %i.epj = getelementptr inbounds nuw [8 x i8], ptr %i.emy, i64 %indvars.iv492.i
  br label %.preheader.i511

.preheader.i511:                                  ; preds = %._crit_edge224.i, %.preheader.lr.ph.i
  %indvars.iv487.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next488.i, %._crit_edge224.i ] ; 2 uses
  %.10.i229.i = phi i32 [ %.9.i232.i, %.preheader.lr.ph.i ], [ %.11.i.lcssa.i, %._crit_edge224.i ] ; 2 uses
  %.24.i227.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.25.i.lcssa.i, %._crit_edge224.i ] ; 2 uses
  br i1 %.not258.i, label %._crit_edge224.i, label %.lr.ph223.i

.lr.ph223.i:                                      ; preds = %.preheader.i511
  %i.epk = getelementptr inbounds nuw i8, ptr %i.epg, i64 %indvars.iv487.i ; 2 uses
  %i.epl = sext i32 %.24.i227.i to i64
  br label %bb.ok

bb.ok:                                            ; preds = %bb.ok, %.lr.ph223.i
  %indvars.iv480.i = phi i64 [ %i.epl, %.lr.ph223.i ], [ %indvars.iv.next481.i, %bb.ok ] ; 3 uses
  %indvars.iv478.i = phi i64 [ 0, %.lr.ph223.i ], [ %indvars.iv.next479.i, %bb.ok ] ; 2 uses
  %.11.i222.i = phi i32 [ %.10.i229.i, %.lr.ph223.i ], [ %i.epx, %bb.ok ]
  %i.epm = load ptr, ptr %i.epi, align 8, !tbaa !243
  %8 = trunc nsw i64 %indvars.iv480.i to i32
  %9 = shl i32 %8, 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x i8], ptr %i.epm, i64 %10
  %i.epn = getelementptr inbounds nuw i8, ptr %i.epa, i64 %indvars.iv478.i ; 2 uses
  %i.epo = load i8, ptr %i.epn, align 1, !tbaa !13
  %i.epp = zext i8 %i.epo to i32
  %i.epq = load i8, ptr %i.epk, align 1, !tbaa !13
  %i.epr = zext i8 %i.epq to i32
  %i.eps = add nuw nsw i32 %i.epr, %i.epp
  %.val3.i = load ptr, ptr %i.emx, align 16, !tbaa !203
  %i.ept = tail call fastcc i32 @decode_coeffs_b_8bpp(ptr %.val3.i, ptr noundef %11, i32 noundef 16, ptr noundef nonnull %i.emf, ptr noundef nonnull %i.emi, ptr noundef nonnull %i.emc, i32 noundef %i.eps, ptr noundef %i.dxo, ptr noundef %i.dxq, ptr noundef nonnull %i.dyc, ptr noundef nonnull %i.emw) #8 ; 2 uses
  %i.epu = icmp ne i32 %i.ept, 0                  ; 2 uses
  %i.epv = zext i1 %i.epu to i32
  %i.epw = zext i1 %i.epu to i8                   ; 2 uses
  store i8 %i.epw, ptr %i.epk, align 1, !tbaa !13
  store i8 %i.epw, ptr %i.epn, align 1, !tbaa !13
  %i.epx = or i32 %.11.i222.i, %i.epv             ; 2 uses
  %i.epy = trunc i32 %i.ept to i8
  %i.epz = load ptr, ptr %i.epj, align 8, !tbaa !19
  %i.eqa = getelementptr inbounds i8, ptr %i.epz, i64 %indvars.iv480.i
  store i8 %i.epy, ptr %i.eqa, align 1, !tbaa !13
  %indvars.iv.next479.i = add nuw nsw i64 %indvars.iv478.i, 1 ; 2 uses
  %indvars.iv.next481.i = add nsw i64 %indvars.iv480.i, 1 ; 2 uses
  %exitcond486.not.i = icmp eq i64 %indvars.iv.next479.i, %i.ene
  br i1 %exitcond486.not.i, label %._crit_edge224.loopexit.i, label %bb.ok, !llvm.loop !74

._crit_edge224.loopexit.i:                        ; preds = %bb.ok
  %i.eqb = trunc nsw i64 %indvars.iv.next481.i to i32
  br label %._crit_edge224.i

._crit_edge224.i:                                 ; preds = %._crit_edge224.loopexit.i, %.preheader.i511
  %.25.i.lcssa.i = phi i32 [ %.24.i227.i, %.preheader.i511 ], [ %i.eqb, %._crit_edge224.loopexit.i ]
  %.11.i.lcssa.i = phi i32 [ %.10.i229.i, %.preheader.i511 ], [ %i.epx, %._crit_edge224.loopexit.i ] ; 2 uses
  %indvars.iv.next488.i = add nuw nsw i64 %indvars.iv487.i, 1 ; 2 uses
  %exitcond491.not.i = icmp eq i64 %indvars.iv.next488.i, %i.end
  br i1 %exitcond491.not.i, label %.loopexit.i510, label %.preheader.i511, !llvm.loop !75

.preheader19.i.loopexit.unr-lcssa:                ; preds = %.lr.ph202.i
  br i1 %lcmp.mod1685.not, label %.preheader19.i, label %.lr.ph202.i.epil.preheader

.lr.ph202.i.epil.preheader:                       ; preds = %.preheader19.i.loopexit.unr-lcssa, %.lr.ph202.i.preheader
  %indvars.iv456.i.epil.init = phi i64 [ 0, %.lr.ph202.i.preheader ], [ %indvars.iv.next457.i.3, %.preheader19.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1686)
  br label %.lr.ph202.i.epil

.lr.ph202.i.epil:                                 ; preds = %.lr.ph202.i.epil, %.lr.ph202.i.epil.preheader
  %indvars.iv456.i.epil = phi i64 [ %indvars.iv.next457.i.epil, %.lr.ph202.i.epil ], [ %indvars.iv456.i.epil.init, %.lr.ph202.i.epil.preheader ] ; 2 uses
  %epil.iter1684 = phi i64 [ %epil.iter1684.next, %.lr.ph202.i.epil ], [ 0, %.lr.ph202.i.epil.preheader ]
  %i.eqc = getelementptr inbounds nuw i8, ptr %i.epg, i64 %indvars.iv456.i.epil ; 2 uses
  %i.eqd = load i16, ptr %i.eqc, align 2, !tbaa !13
  %i.eqe = icmp ne i16 %i.eqd, 0
  %i.eqf = zext i1 %i.eqe to i8
  store i8 %i.eqf, ptr %i.eqc, align 2, !tbaa !13
  %indvars.iv.next457.i.epil = add nuw nsw i64 %indvars.iv456.i.epil, 2
  %epil.iter1684.next = add i64 %epil.iter1684, 1 ; 2 uses
  %epil.iter1684.cmp.not = icmp eq i64 %epil.iter1684.next, %xtraiter1683
  br i1 %epil.iter1684.cmp.not, label %.preheader19.i, label %.lr.ph202.i.epil, !llvm.loop !76

.preheader19.i:                                   ; preds = %.preheader19.i.loopexit.unr-lcssa, %.lr.ph202.i.epil, %.preheader20.i
  br i1 %.not258.i, label %.preheader18.i, label %.lr.ph204.i.preheader

.lr.ph204.i.preheader:                            ; preds = %.preheader19.i
  br i1 %i.eoq, label %.lr.ph204.i.epil.preheader, label %.lr.ph204.i

.lr.ph202.i:                                      ; preds = %.lr.ph202.i.preheader, %.lr.ph202.i
  %indvars.iv456.i = phi i64 [ %indvars.iv.next457.i.3, %.lr.ph202.i ], [ 0, %.lr.ph202.i.preheader ] ; 5 uses
  %niter1688 = phi i64 [ %niter1688.next.3, %.lr.ph202.i ], [ 0, %.lr.ph202.i.preheader ]
  %i.eqg = getelementptr inbounds nuw i8, ptr %i.epg, i64 %indvars.iv456.i ; 2 uses
  %i.eqh = load i16, ptr %i.eqg, align 2, !tbaa !13
  %i.eqi = icmp ne i16 %i.eqh, 0
  %i.eqj = zext i1 %i.eqi to i8
  store i8 %i.eqj, ptr %i.eqg, align 2, !tbaa !13
  %i.eqk = getelementptr inbounds nuw i8, ptr %i.epg, i64 %indvars.iv456.i
  %i.eql = getelementptr inbounds nuw i8, ptr %i.eqk, i64 2 ; 2 uses
  %i.eqm = load i16, ptr %i.eql, align 2, !tbaa !13
  %i.eqn = icmp ne i16 %i.eqm, 0
  %i.eqo = zext i1 %i.eqn to i8
  store i8 %i.eqo, ptr %i.eql, align 2, !tbaa !13
  %i.eqp = getelementptr inbounds nuw i8, ptr %i.epg, i64 %indvars.iv456.i
  %i.eqq = getelementptr inbounds nuw i8, ptr %i.eqp, i64 4 ; 2 uses
  %i.eqr = load i16, ptr %i.eqq, align 2, !tbaa !13
  %i.eqs = icmp ne i16 %i.eqr, 0
  %i.eqt = zext i1 %i.eqs to i8
  store i8 %i.eqt, ptr %i.eqq, align 2, !tbaa !13
  %i.equ = getelementptr inbounds nuw i8, ptr %i.epg, i64 %indvars.iv456.i
  %i.eqv = getelementptr inbounds nuw i8, ptr %i.equ, i64 6 ; 2 uses
  %i.eqw = load i16, ptr %i.eqv, align 2, !tbaa !13
  %i.eqx = icmp ne i16 %i.eqw, 0
  %i.eqy = zext i1 %i.eqx to i8
  store i8 %i.eqy, ptr %i.eqv, align 2, !tbaa !13
  %indvars.iv.next457.i.3 = add nuw nsw i64 %indvars.iv456.i, 8 ; 2 uses
  %niter1688.next.3 = add i64 %niter1688, 4       ; 2 uses
  %niter1688.ncmp.3.not = icmp eq i64 %niter1688.next.3, %unroll_iter1687
  br i1 %niter1688.ncmp.3.not, label %.preheader19.i.loopexit.unr-lcssa, label %.lr.ph202.i, !llvm.loop !77

.preheader18.i.loopexit.unr-lcssa:                ; preds = %.lr.ph204.i
  br i1 %lcmp.mod1691.not, label %.preheader18.i, label %.lr.ph204.i.epil.preheader

.lr.ph204.i.epil.preheader:                       ; preds = %.preheader18.i.loopexit.unr-lcssa, %.lr.ph204.i.preheader
  %indvars.iv459.i.epil.init = phi i64 [ 0, %.lr.ph204.i.preheader ], [ %indvars.iv.next460.i.3, %.preheader18.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1692)
  br label %.lr.ph204.i.epil

.lr.ph204.i.epil:                                 ; preds = %.lr.ph204.i.epil, %.lr.ph204.i.epil.preheader
  %indvars.iv459.i.epil = phi i64 [ %indvars.iv.next460.i.epil, %.lr.ph204.i.epil ], [ %indvars.iv459.i.epil.init, %.lr.ph204.i.epil.preheader ] ; 2 uses
  %epil.iter1690 = phi i64 [ %epil.iter1690.next, %.lr.ph204.i.epil ], [ 0, %.lr.ph204.i.epil.preheader ]
  %i.eqz = getelementptr inbounds nuw i8, ptr %i.epa, i64 %indvars.iv459.i.epil ; 2 uses
  %i.era = load i16, ptr %i.eqz, align 2, !tbaa !13
  %i.erb = icmp ne i16 %i.era, 0
  %i.erc = zext i1 %i.erb to i8
  store i8 %i.erc, ptr %i.eqz, align 2, !tbaa !13
  %indvars.iv.next460.i.epil = add nuw nsw i64 %indvars.iv459.i.epil, 2
  %epil.iter1690.next = add i64 %epil.iter1690, 1 ; 2 uses
  %epil.iter1690.cmp.not = icmp eq i64 %epil.iter1690.next, %xtraiter1689
  br i1 %epil.iter1690.cmp.not, label %.preheader18.i, label %.lr.ph204.i.epil, !llvm.loop !78

.preheader18.i:                                   ; preds = %.preheader18.i.loopexit.unr-lcssa, %.lr.ph204.i.epil, %.preheader19.i
  br i1 %.not257.i, label %.preheader17.i, label %.preheader11.lr.ph.i

.preheader11.lr.ph.i:                             ; preds = %.preheader18.i
  %i.erd = getelementptr inbounds nuw [8 x i8], ptr %i.emv, i64 %indvars.iv492.i
  %i.ere = getelementptr inbounds nuw [8 x i8], ptr %i.emy, i64 %indvars.iv492.i
  br label %.preheader11.i

.lr.ph204.i:                                      ; preds = %.lr.ph204.i.preheader, %.lr.ph204.i
  %indvars.iv459.i = phi i64 [ %indvars.iv.next460.i.3, %.lr.ph204.i ], [ 0, %.lr.ph204.i.preheader ] ; 5 uses
  %niter1694 = phi i64 [ %niter1694.next.3, %.lr.ph204.i ], [ 0, %.lr.ph204.i.preheader ]
  %i.erf = getelementptr inbounds nuw i8, ptr %i.epa, i64 %indvars.iv459.i ; 2 uses
  %i.erg = load i16, ptr %i.erf, align 2, !tbaa !13
  %i.erh = icmp ne i16 %i.erg, 0
  %i.eri = zext i1 %i.erh to i8
  store i8 %i.eri, ptr %i.erf, align 2, !tbaa !13
  %i.erj = getelementptr inbounds nuw i8, ptr %i.epa, i64 %indvars.iv459.i
  %i.erk = getelementptr inbounds nuw i8, ptr %i.erj, i64 2 ; 2 uses
  %i.erl = load i16, ptr %i.erk, align 2, !tbaa !13
  %i.erm = icmp ne i16 %i.erl, 0
  %i.ern = zext i1 %i.erm to i8
  store i8 %i.ern, ptr %i.erk, align 2, !tbaa !13
  %i.ero = getelementptr inbounds nuw i8, ptr %i.epa, i64 %indvars.iv459.i
  %i.erp = getelementptr inbounds nuw i8, ptr %i.ero, i64 4 ; 2 uses
  %i.erq = load i16, ptr %i.erp, align 2, !tbaa !13
  %i.err = icmp ne i16 %i.erq, 0
  %i.ers = zext i1 %i.err to i8
  store i8 %i.ers, ptr %i.erp, align 2, !tbaa !13
  %i.ert = getelementptr inbounds nuw i8, ptr %i.epa, i64 %indvars.iv459.i
  %i.eru = getelementptr inbounds nuw i8, ptr %i.ert, i64 6 ; 2 uses
  %i.erv = load i16, ptr %i.eru, align 2, !tbaa !13
  %i.erw = icmp ne i16 %i.erv, 0
  %i.erx = zext i1 %i.erw to i8
  store i8 %i.erx, ptr %i.eru, align 2, !tbaa !13
  %indvars.iv.next460.i.3 = add nuw nsw i64 %indvars.iv459.i, 8 ; 2 uses
  %niter1694.next.3 = add i64 %niter1694, 4       ; 2 uses
  %niter1694.ncmp.3.not = icmp eq i64 %niter1694.next.3, %unroll_iter1693
  br i1 %niter1694.ncmp.3.not, label %.preheader18.i.loopexit.unr-lcssa, label %.lr.ph204.i, !llvm.loop !79

.preheader17.i:                                   ; preds = %._crit_edge209.i, %.preheader18.i
  %.12.i.lcssa.i = phi i32 [ %.9.i232.i, %.preheader18.i ], [ %.13.i.lcssa.i, %._crit_edge209.i ] ; 3 uses
  br i1 %i.enb, label %.lr.ph217.i.preheader, label %.preheader15.i

.lr.ph217.i.preheader:                            ; preds = %.preheader17.i
  br i1 %i.eor, label %.lr.ph217.i.epil.preheader, label %.lr.ph217.i

.preheader11.i:                                   ; preds = %._crit_edge209.i, %.preheader11.lr.ph.i
  %indvars.iv469.i = phi i64 [ 0, %.preheader11.lr.ph.i ], [ %indvars.iv.next470.i, %._crit_edge209.i ] ; 2 uses
  %.12.i214.i = phi i32 [ %.9.i232.i, %.preheader11.lr.ph.i ], [ %.13.i.lcssa.i, %._crit_edge209.i ] ; 2 uses
  %.28.i212.i = phi i32 [ 0, %.preheader11.lr.ph.i ], [ %.29.i.lcssa.i, %._crit_edge209.i ] ; 2 uses
  br i1 %.not258.i, label %._crit_edge209.i, label %.lr.ph208.i

.lr.ph208.i:                                      ; preds = %.preheader11.i
  %i.ery = getelementptr inbounds nuw i8, ptr %i.epg, i64 %indvars.iv469.i ; 2 uses
  %i.erz = sext i32 %.28.i212.i to i64
  br label %bb.ol

bb.ol:                                            ; preds = %bb.ol, %.lr.ph208.i
  %indvars.iv464.i = phi i64 [ %i.erz, %.lr.ph208.i ], [ %indvars.iv.next465.i, %bb.ol ] ; 3 uses
  %indvars.iv462.i = phi i64 [ 0, %.lr.ph208.i ], [ %indvars.iv.next463.i, %bb.ol ] ; 2 uses
  %.13.i207.i = phi i32 [ %.12.i214.i, %.lr.ph208.i ], [ %i.esm, %bb.ol ]
  %i.esa = load ptr, ptr %i.erd, align 8, !tbaa !243
  %.idx508.i = shl nsw i64 %indvars.iv464.i, 5
  %i.esb = getelementptr inbounds i8, ptr %i.esa, i64 %.idx508.i
  %i.esc = getelementptr inbounds nuw i8, ptr %i.epa, i64 %indvars.iv462.i ; 2 uses
  %i.esd = load i8, ptr %i.esc, align 1, !tbaa !13
  %i.ese = zext i8 %i.esd to i32
  %i.esf = load i8, ptr %i.ery, align 1, !tbaa !13
  %i.esg = zext i8 %i.esf to i32
  %i.esh = add nuw nsw i32 %i.esg, %i.ese
  %.val4.i = load ptr, ptr %i.emx, align 16, !tbaa !203
  %i.esi = tail call fastcc i32 @decode_coeffs_b_8bpp(ptr %.val4.i, ptr noundef %i.esb, i32 noundef 64, ptr noundef nonnull %i.emf, ptr noundef nonnull %i.emi, ptr noundef nonnull %i.emc, i32 noundef %i.esh, ptr noundef %i.dxo, ptr noundef %i.dxq, ptr noundef nonnull %i.dyc, ptr noundef nonnull %i.emw) #8 ; 2 uses
  %i.esj = icmp ne i32 %i.esi, 0                  ; 2 uses
  %i.esk = zext i1 %i.esj to i32
  %i.esl = zext i1 %i.esj to i8                   ; 2 uses
  store i8 %i.esl, ptr %i.ery, align 1, !tbaa !13
  store i8 %i.esl, ptr %i.esc, align 1, !tbaa !13
  %i.esm = or i32 %.13.i207.i, %i.esk             ; 2 uses
  %i.esn = trunc i32 %i.esi to i8
  %i.eso = load ptr, ptr %i.ere, align 8, !tbaa !19
  %i.esp = getelementptr inbounds i8, ptr %i.eso, i64 %indvars.iv464.i
  store i8 %i.esn, ptr %i.esp, align 1, !tbaa !13
  %indvars.iv.next463.i = add nuw nsw i64 %indvars.iv462.i, 2 ; 2 uses
  %indvars.iv.next465.i = add nsw i64 %indvars.iv464.i, 4 ; 2 uses
  %i.esq = icmp samesign ult i64 %indvars.iv.next463.i, %i.ene
  br i1 %i.esq, label %bb.ol, label %._crit_edge209.loopexit.i, !llvm.loop !80

._crit_edge209.loopexit.i:                        ; preds = %bb.ol
  %i.esr = trunc nsw i64 %indvars.iv.next465.i to i32
  br label %._crit_edge209.i

._crit_edge209.i:                                 ; preds = %._crit_edge209.loopexit.i, %.preheader11.i
  %.29.i.lcssa.i = phi i32 [ %.28.i212.i, %.preheader11.i ], [ %i.esr, %._crit_edge209.loopexit.i ]
  %.13.i.lcssa.i = phi i32 [ %.12.i214.i, %.preheader11.i ], [ %i.esm, %._crit_edge209.loopexit.i ] ; 2 uses
  %indvars.iv.next470.i = add nuw nsw i64 %indvars.iv469.i, 2 ; 2 uses
end_hunk_0
begin_hunk_1_@ff_vp9_decode_block:bb.a
  %i.ffw = add nsw i32 %i.ems, %i.ffv
  %i.ffx = tail call i32 @llvm.smin.i32(i32 %i.ffw, i32 7)
  %i.ffy = sext i32 %i.ffx to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ffs, i8 %i.fft, i64 %i.ffy, i1 false)
  %indvars.iv.next423.i.1 = add nuw nsw i64 %indvars.iv422.i, 16 ; 2 uses
  %niter1640.next.1 = add i64 %niter1640, 2       ; 2 uses
  %niter1640.ncmp.1.not = icmp eq i64 %niter1640.next.1, %unroll_iter1639
  br i1 %niter1640.ncmp.1.not, label %.loopexit.i510.loopexit1355.unr-lcssa, label %.lr.ph174.i, !llvm.loop !106

.loopexit.i510.loopexit1350.unr-lcssa.a:          ; preds = %.lr.ph219.i
  br i1 %lcmp.mod1703.not, label %.loopexit.i510, label %.lr.ph219.i.epil.preheader

.lr.ph219.i.epil.preheader:                       ; preds = %.loopexit.i510.loopexit1350.unr-lcssa.a, %.lr.ph219.i.preheader
  %indvars.iv475.i.epil.init = phi i64 [ 1, %.lr.ph219.i.preheader ], [ %indvars.iv.next476.i.3, %.loopexit.i510.loopexit1350.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod1704)
  br label %.lr.ph219.i.epil

.lr.ph219.i.epil:                                 ; preds = %.lr.ph219.i.epil, %.lr.ph219.i.epil.preheader
  %indvars.iv475.i.epil = phi i64 [ %indvars.iv.next476.i.epil, %.lr.ph219.i.epil ], [ %indvars.iv475.i.epil.init, %.lr.ph219.i.epil.preheader ] ; 2 uses
  %epil.iter1702 = phi i64 [ %epil.iter1702.next, %.lr.ph219.i.epil ], [ 0, %.lr.ph219.i.epil.preheader ]
  %i.ffz = getelementptr i8, ptr %i.epg, i64 %indvars.iv475.i.epil ; 2 uses
  %i.fga = getelementptr i8, ptr %i.ffz, i64 -1
  %i.fgb = load i8, ptr %i.fga, align 1, !tbaa !13
  store i8 %i.fgb, ptr %i.ffz, align 1, !tbaa !13
  %indvars.iv.next476.i.epil = add nuw nsw i64 %indvars.iv475.i.epil, 2
  %epil.iter1702.next = add i64 %epil.iter1702, 1 ; 2 uses
  %epil.iter1702.cmp.not = icmp eq i64 %epil.iter1702.next, %xtraiter1701
  br i1 %epil.iter1702.cmp.not, label %.loopexit.i510, label %.lr.ph219.i.epil, !llvm.loop !107

.loopexit.i510.loopexit1351.unr-lcssa.a:          ; preds = %.lr.ph200.i
  br i1 %lcmp.mod1679.not, label %.loopexit.i510, label %.lr.ph200.i.epil.preheader

.lr.ph200.i.epil.preheader:                       ; preds = %.loopexit.i510.loopexit1351.unr-lcssa.a, %.lr.ph200.i.preheader
  %indvars.iv453.i.epil.init = phi i64 [ 0, %.lr.ph200.i.preheader ], [ %indvars.iv.next454.i.3, %.loopexit.i510.loopexit1351.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod1680)
  br label %.lr.ph200.i.epil

.lr.ph200.i.epil:                                 ; preds = %.lr.ph200.i.epil, %.lr.ph200.i.epil.preheader
  %indvars.iv453.i.epil = phi i64 [ %indvars.iv.next454.i.epil, %.lr.ph200.i.epil ], [ %indvars.iv453.i.epil.init, %.lr.ph200.i.epil.preheader ] ; 2 uses
  %epil.iter1678 = phi i64 [ %epil.iter1678.next, %.lr.ph200.i.epil ], [ 0, %.lr.ph200.i.epil.preheader ]
  %i.fgc = getelementptr inbounds nuw i8, ptr %i.epg, i64 %indvars.iv453.i.epil ; 2 uses
  %i.fgd = load i8, ptr %i.fgc, align 1, !tbaa !13
  %i.fge = zext i8 %i.fgd to i32
  %i.fgf = mul nuw nsw i32 %i.fge, 16843009
  store i32 %i.fgf, ptr %i.fgc, align 4, !tbaa !13
  %indvars.iv.next454.i.epil = add nuw nsw i64 %indvars.iv453.i.epil, 4
  %epil.iter1678.next = add i64 %epil.iter1678, 1 ; 2 uses
  %epil.iter1678.cmp.not = icmp eq i64 %epil.iter1678.next, %xtraiter1677
  br i1 %epil.iter1678.cmp.not, label %.loopexit.i510, label %.lr.ph200.i.epil, !llvm.loop !108

.loopexit.i510.loopexit1352.unr-lcssa:            ; preds = %.lr.ph198.i
  br i1 %lcmp.mod1673.not.not, label %.lr.ph198.i.epil.preheader, label %.loopexit.i510

.lr.ph198.i.epil.preheader:                       ; preds = %.loopexit.i510.loopexit1352.unr-lcssa, %.lr.ph198.i.preheader
  %indvars.iv450.i.epil.init = phi i64 [ 0, %.lr.ph198.i.preheader ], [ %indvars.iv.next451.i.1, %.loopexit.i510.loopexit1352.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1674)
  %i.fgg = getelementptr inbounds nuw i8, ptr %i.epg, i64 %indvars.iv450.i.epil.init ; 2 uses
  %i.fgh = getelementptr inbounds nuw i8, ptr %i.fgg, i64 1
  %i.fgi = load i8, ptr %i.fgg, align 1, !tbaa !13
  %i.fgj = trunc nuw nsw i64 %indvars.iv450.i.epil.init to i32
  %i.fgk = xor i32 %i.fgj, -1
  %i.fgl = add nsw i32 %i.ems, %i.fgk
  %i.fgm = tail call i32 @llvm.smin.i32(i32 %i.fgl, i32 3)
  %i.fgn = sext i32 %i.fgm to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fgh, i8 %i.fgi, i64 %i.fgn, i1 false)
  br label %.loopexit.i510

.loopexit.i510.loopexit1354.unr-lcssa.a:          ; preds = %.lr.ph176.i
  br i1 %lcmp.mod1643.not, label %.loopexit.i510, label %.lr.ph176.i.epil.preheader

.lr.ph176.i.epil.preheader:                       ; preds = %.loopexit.i510.loopexit1354.unr-lcssa.a, %.lr.ph176.i.preheader
  %indvars.iv425.i.epil.init = phi i64 [ 0, %.lr.ph176.i.preheader ], [ %indvars.iv.next426.i.3, %.loopexit.i510.loopexit1354.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod1644)
  br label %.lr.ph176.i.epil

.lr.ph176.i.epil:                                 ; preds = %.lr.ph176.i.epil, %.lr.ph176.i.epil.preheader
  %indvars.iv425.i.epil = phi i64 [ %indvars.iv.next426.i.epil, %.lr.ph176.i.epil ], [ %indvars.iv425.i.epil.init, %.lr.ph176.i.epil.preheader ] ; 2 uses
  %epil.iter1642 = phi i64 [ %epil.iter1642.next, %.lr.ph176.i.epil ], [ 0, %.lr.ph176.i.epil.preheader ]
  %i.fgo = getelementptr inbounds nuw i8, ptr %i.epg, i64 %indvars.iv425.i.epil ; 3 uses
  %i.fgp = load i8, ptr %i.fgo, align 1, !tbaa !13
  %i.fgq = zext i8 %i.fgp to i32
  %i.fgr = mul nuw nsw i32 %i.fgq, 16843009       ; 2 uses
  store i32 %i.fgr, ptr %i.fgo, align 4, !tbaa !13
  %i.fgs = getelementptr inbounds nuw i8, ptr %i.fgo, i64 4
  store i32 %i.fgr, ptr %i.fgs, align 4, !tbaa !13
  %indvars.iv.next426.i.epil = add nuw nsw i64 %indvars.iv425.i.epil, 8
  %epil.iter1642.next = add i64 %epil.iter1642, 1 ; 2 uses
  %epil.iter1642.cmp.not = icmp eq i64 %epil.iter1642.next, %xtraiter1641
  br i1 %epil.iter1642.cmp.not, label %.loopexit.i510, label %.lr.ph176.i.epil, !llvm.loop !109

.loopexit.i510.loopexit1355.unr-lcssa:            ; preds = %.lr.ph174.i
  br i1 %lcmp.mod1637.not.not, label %.lr.ph174.i.epil.preheader, label %.loopexit.i510

.lr.ph174.i.epil.preheader:                       ; preds = %.loopexit.i510.loopexit1355.unr-lcssa, %.lr.ph174.i.preheader
  %indvars.iv422.i.epil.init = phi i64 [ 0, %.lr.ph174.i.preheader ], [ %indvars.iv.next423.i.1, %.loopexit.i510.loopexit1355.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1638)
  %i.fgt = getelementptr inbounds nuw i8, ptr %i.epg, i64 %indvars.iv422.i.epil.init ; 2 uses
  %i.fgu = getelementptr inbounds nuw i8, ptr %i.fgt, i64 1
  %i.fgv = load i8, ptr %i.fgt, align 1, !tbaa !13
  %i.fgw = trunc nuw nsw i64 %indvars.iv422.i.epil.init to i32
  %i.fgx = xor i32 %i.fgw, -1
  %i.fgy = add nsw i32 %i.ems, %i.fgx
  %i.fgz = tail call i32 @llvm.smin.i32(i32 %i.fgy, i32 7)
  %i.fha = sext i32 %i.fgz to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fgu, i8 %i.fgv, i64 %i.fha, i1 false)
  br label %.loopexit.i510

.loopexit.i510:                                   ; preds = %.lr.ph174.i.epil.preheader, %.loopexit.i510.loopexit1355.unr-lcssa, %.loopexit.i510.loopexit1354.unr-lcssa.a, %.lr.ph176.i.epil, %.lr.ph198.i.epil.preheader, %.loopexit.i510.loopexit1352.unr-lcssa, %.loopexit.i510.loopexit1351.unr-lcssa.a, %.lr.ph200.i.epil, %.loopexit.i510.loopexit1350.unr-lcssa.a, %.lr.ph219.i.epil, %._crit_edge224.i, %.preheader32.i, %.preheader34.i, %.preheader21.i, %.preheader23.i, %.preheader15.i, %.preheader14.i, %bb.oj
  %.18.i.i = phi i32 [ %.9.i232.i, %bb.oj ], [ %.14.i.lcssa.i, %.preheader23.i ], [ %.16.i.lcssa.i, %.preheader32.i ], [ %.16.i.lcssa.i, %.preheader34.i ], [ %.12.i.lcssa.i, %.preheader15.i ], [ %.14.i.lcssa.i, %.preheader21.i ], [ %.9.i232.i, %.preheader14.i ], [ %.14.i.lcssa.i, %.loopexit.i510.loopexit1351.unr-lcssa.a ], [ %.14.i.lcssa.i, %.lr.ph198.i.epil.preheader ], [ %.16.i.lcssa.i, %.loopexit.i510.loopexit1354.unr-lcssa.a ], [ %.11.i.lcssa.i, %._crit_edge224.i ], [ %.12.i.lcssa.i, %.loopexit.i510.loopexit1350.unr-lcssa.a ], [ %.12.i.lcssa.i, %.lr.ph219.i.epil ], [ %.14.i.lcssa.i, %.lr.ph200.i.epil ], [ %.14.i.lcssa.i, %.loopexit.i510.loopexit1352.unr-lcssa ], [ %.16.i.lcssa.i, %.lr.ph176.i.epil ], [ %.16.i.lcssa.i, %.loopexit.i510.loopexit1355.unr-lcssa ], [ %.16.i.lcssa.i, %.lr.ph174.i.epil.preheader ] ; 2 uses
  br i1 %i.eot, label %bb.oj, label %decode_coeffs_8bpp.exit, !llvm.loop !110

bb.oo:                                            ; preds = %bb.od
  switch i32 %i.dvr, label %.loopexit53.i [
    i32 0, label %.preheader52.i619
    i32 1, label %.preheader60.i
    i32 2, label %.preheader72.i
    i32 3, label %.preheader84.i
  ]

.preheader84.i:                                   ; preds = %bb.oo
  %.not241.i516 = icmp eq i32 %i.dwx, 0           ; 3 uses
  br i1 %.not241.i516, label %.preheader83.i, label %.lr.ph.preheader.i517

.lr.ph.preheader.i517:                            ; preds = %.preheader84.i
  %i.fhb = zext nneg i32 %i.dwx to i64
  %i.fhc = add nsw i64 %i.fhb, -2                 ; 2 uses
  %i.fhd = lshr i64 %i.fhc, 3
  %i.fhe = add nuw nsw i64 %i.fhd, 1              ; 2 uses
  %xtraiter1455 = and i64 %i.fhe, 3               ; 3 uses
  %i.fhf = icmp ult i64 %i.fhc, 24
  br i1 %i.fhf, label %.lr.ph.i518.epil.preheader, label %.lr.ph.preheader.i517.new

.lr.ph.preheader.i517.new:                        ; preds = %.lr.ph.preheader.i517
  %unroll_iter1459 = and i64 %i.fhe, 4611686018427387900
  br label %.lr.ph.i518

.preheader72.i:                                   ; preds = %bb.oo
  %.not249.i592 = icmp eq i32 %i.dwx, 0           ; 3 uses
  br i1 %.not249.i592, label %.preheader71.i607, label %.lr.ph107.preheader.i

.lr.ph107.preheader.i:                            ; preds = %.preheader72.i
  %i.fhg = zext nneg i32 %i.dwx to i64
  %i.fhh = add nsw i64 %i.fhg, -2                 ; 2 uses
  %i.fhi = lshr i64 %i.fhh, 2
  %i.fhj = add nuw nsw i64 %i.fhi, 1              ; 2 uses
  %xtraiter1467 = and i64 %i.fhj, 3               ; 3 uses
  %i.fhk = icmp ult i64 %i.fhh, 12
  br i1 %i.fhk, label %.lr.ph107.i.epil.preheader, label %.lr.ph107.preheader.i.new

.lr.ph107.preheader.i.new:                        ; preds = %.lr.ph107.preheader.i
  %unroll_iter1471 = and i64 %i.fhj, 9223372036854775804
  br label %.lr.ph107.i

.preheader60.i:                                   ; preds = %bb.oo
  %.not257.i609 = icmp eq i32 %i.dwx, 0           ; 3 uses
  br i1 %.not257.i609, label %.preheader59.i617, label %.lr.ph132.preheader.i

.lr.ph132.preheader.i:                            ; preds = %.preheader60.i
  %i.fhl = zext nneg i32 %i.dwx to i64            ; 2 uses
  %i.fhm = add nsw i64 %i.fhl, -2                 ; 2 uses
  %i.fhn = lshr exact i64 %i.fhm, 1
  %i.fho = add nuw i64 %i.fhn, 1                  ; 2 uses
  %xtraiter1479 = and i64 %i.fho, 3               ; 3 uses
  %i.fhp = icmp ult i64 %i.fhm, 6
  br i1 %i.fhp, label %.lr.ph132.i.epil.preheader, label %.lr.ph132.preheader.i.new

.lr.ph132.preheader.i.new:                        ; preds = %.lr.ph132.preheader.i
  %unroll_iter1483 = and i64 %i.fho, -4
  br label %.lr.ph132.i

.preheader52.i619:                                ; preds = %bb.oo
  %.not263.i = icmp eq i32 %i.dwx, 0
  br i1 %.not263.i, label %.loopexit53.i, label %.preheader51.lr.ph.i

.preheader51.lr.ph.i:                             ; preds = %.preheader52.i619
  %.not264.i = icmp eq i32 %..i.i, 0
  %i.fhq = getelementptr inbounds nuw i8, ptr %i.dvm, i64 5
  %i.fhr = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.fhs = getelementptr i8, ptr %0, i64 16
  %i.fht = getelementptr inbounds nuw i8, ptr %0, i64 77112
  br i1 %.not264.i, label %.loopexit53.i, label %.preheader51.us.preheader.i

.preheader51.us.preheader.i:                      ; preds = %.preheader51.lr.ph.i
  %wide.trip.count406.i = zext nneg i32 %i.dwx to i64
  %wide.trip.count.i620 = zext nneg i32 %..i.i to i64
  br label %.preheader51.us.i

.preheader51.us.i:                                ; preds = %._crit_edge.us160.i, %.preheader51.us.preheader.i
  %indvars.iv403.i621 = phi i64 [ 0, %.preheader51.us.preheader.i ], [ %indvars.iv.next404.i625, %._crit_edge.us160.i ] ; 2 uses
  %.0.i158.us.i = phi i32 [ 0, %.preheader51.us.preheader.i ], [ %i.fiw, %._crit_edge.us160.i ]
  %.0662.i156.us.i = phi i64 [ 0, %.preheader51.us.preheader.i ], [ %indvars.iv.next399.i, %._crit_edge.us160.i ]
  %i.fhu = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv403.i621 ; 2 uses
  br label %bb.op

bb.op:                                            ; preds = %bb.op, %.preheader51.us.i
  %indvars.iv398.i = phi i64 [ %.0662.i156.us.i, %.preheader51.us.i ], [ %indvars.iv.next399.i, %bb.op ] ; 4 uses
  %indvars.iv396.i = phi i64 [ 0, %.preheader51.us.i ], [ %indvars.iv.next397.i, %bb.op ] ; 2 uses
  %.1.i153.us.i = phi i32 [ %.0.i158.us.i, %.preheader51.us.i ], [ %i.fiw, %bb.op ]
  %i.fhv = load i32, ptr %i.dwe, align 4, !tbaa !194
  %i.fhw = icmp ugt i32 %i.fhv, 9
  %12 = trunc nsw i64 %indvars.iv398.i to i32
  %i.fhx = shl i64 %indvars.iv398.i, 32
  %i.fhy = ashr exact i64 %i.fhx, 32
  %i.fhz = select i1 %i.fhw, i64 %i.fhy, i64 0
  %i.fia = getelementptr inbounds i8, ptr %i.fhq, i64 %i.fhz
  %i.fib = load i8, ptr %i.fia, align 1, !tbaa !13
  %i.fic = zext i8 %i.fib to i64
  %i.fid = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.fic
  %i.fie = load i32, ptr %i.fid, align 4, !tbaa !22
  %i.fif = load ptr, ptr %i.fhr, align 8, !tbaa !245
  %13 = shl i32 %12, 5
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x i8], ptr %i.fif, i64 %14
  %i.fig = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv396.i ; 2 uses
  %i.fih = load i8, ptr %i.fig, align 1, !tbaa !13
  %i.fii = zext i8 %i.fih to i32
  %i.fij = load i8, ptr %i.fhu, align 1, !tbaa !13
  %i.fik = zext i8 %i.fij to i32
  %i.fil = add nuw nsw i32 %i.fik, %i.fii
  %i.fim = zext i32 %i.fie to i64                 ; 2 uses
  %i.fin = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.fim
  %i.fio = load ptr, ptr %i.fin, align 8, !tbaa !243
  %i.fip = getelementptr inbounds nuw [8 x i8], ptr %i.dxj, i64 %i.fim
  %i.fiq = load ptr, ptr %i.fip, align 8, !tbaa !243
  %.val.us.i622 = load ptr, ptr %0, align 16, !tbaa !150
  %.val1.us.i623 = load ptr, ptr %i.fhs, align 16, !tbaa !203
  %i.fir = getelementptr i8, ptr %.val.us.i622, i64 1
  %.val.val.us.i = load i8, ptr %i.fir, align 1, !tbaa !247
  %i.fis = tail call fastcc i32 @decode_coeffs_b_16bpp(i8 %.val.val.us.i, ptr %.val1.us.i623, ptr noundef %15, i32 noundef 16, ptr noundef nonnull %i.dwa, ptr noundef nonnull %i.dwd, ptr noundef nonnull %i.dvx, i32 noundef %i.fil, ptr noundef %i.fio, ptr noundef %i.fiq, ptr noundef nonnull %i.dyb, ptr noundef nonnull %i.dxb) #8 ; 2 uses
  %i.fit = icmp ne i32 %i.fis, 0                  ; 2 uses
  %i.fiu = zext i1 %i.fit to i32
  %i.fiv = zext i1 %i.fit to i8                   ; 2 uses
  store i8 %i.fiv, ptr %i.fhu, align 1, !tbaa !13
  store i8 %i.fiv, ptr %i.fig, align 1, !tbaa !13
  %i.fiw = or i32 %.1.i153.us.i, %i.fiu           ; 3 uses
  %i.fix = trunc i32 %i.fis to i8
  %i.fiy = load ptr, ptr %i.fht, align 8, !tbaa !246
  %i.fiz = getelementptr inbounds i8, ptr %i.fiy, i64 %indvars.iv398.i
  store i8 %i.fix, ptr %i.fiz, align 1, !tbaa !13
  %indvars.iv.next397.i = add nuw nsw i64 %indvars.iv396.i, 1 ; 2 uses
  %indvars.iv.next399.i = add nsw i64 %indvars.iv398.i, 1 ; 2 uses
  %exitcond.not.i624 = icmp eq i64 %indvars.iv.next397.i, %wide.trip.count.i620
  br i1 %exitcond.not.i624, label %._crit_edge.us160.i, label %bb.op, !llvm.loop !45

._crit_edge.us160.i:                              ; preds = %bb.op
  %indvars.iv.next404.i625 = add nuw nsw i64 %indvars.iv403.i621, 1 ; 2 uses
  %exitcond407.not.i = icmp eq i64 %indvars.iv.next404.i625, %wide.trip.count406.i
  br i1 %exitcond407.not.i, label %.loopexit53.i, label %.preheader51.us.i, !llvm.loop !46

.preheader59.i617:                                ; preds = %.preheader60.i
  %.not258.i618 = icmp eq i32 %..i.i, 0
  br i1 %.not258.i618, label %.loopexit53.i, label %.lr.ph134.preheader.i

.preheader59.thread.i.unr-lcssa:                  ; preds = %.lr.ph132.i
  %lcmp.mod1481.not = icmp eq i64 %xtraiter1479, 0
  br i1 %lcmp.mod1481.not, label %.preheader59.thread.i, label %.lr.ph132.i.epil.preheader

.lr.ph132.i.epil.preheader:                       ; preds = %.preheader59.thread.i.unr-lcssa, %.lr.ph132.preheader.i
  %indvars.iv374.i610.epil.init = phi i64 [ 0, %.lr.ph132.preheader.i ], [ %indvars.iv.next375.i611.3, %.preheader59.thread.i.unr-lcssa ]
  %lcmp.mod1482 = icmp ne i64 %xtraiter1479, 0
  tail call void @llvm.assume(i1 %lcmp.mod1482)
  br label %.lr.ph132.i.epil

.lr.ph132.i.epil:                                 ; preds = %.lr.ph132.i.epil, %.lr.ph132.i.epil.preheader
  %indvars.iv374.i610.epil = phi i64 [ %indvars.iv374.i610.epil.init, %.lr.ph132.i.epil.preheader ], [ %indvars.iv.next375.i611.epil, %.lr.ph132.i.epil ] ; 2 uses
  %epil.iter1480 = phi i64 [ 0, %.lr.ph132.i.epil.preheader ], [ %epil.iter1480.next, %.lr.ph132.i.epil ]
  %i.fja = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv374.i610.epil ; 2 uses
  %i.fjb = load i16, ptr %i.fja, align 2, !tbaa !13
  %i.fjc = icmp ne i16 %i.fjb, 0
  %i.fjd = zext i1 %i.fjc to i8
  store i8 %i.fjd, ptr %i.fja, align 2, !tbaa !13
  %indvars.iv.next375.i611.epil = add nuw nsw i64 %indvars.iv374.i610.epil, 2
  %epil.iter1480.next = add i64 %epil.iter1480, 1 ; 2 uses
  %epil.iter1480.cmp.not = icmp eq i64 %epil.iter1480.next, %xtraiter1479
  br i1 %epil.iter1480.cmp.not, label %.preheader59.thread.i, label %.lr.ph132.i.epil, !llvm.loop !111

.preheader59.thread.i:                            ; preds = %.lr.ph132.i.epil, %.preheader59.thread.i.unr-lcssa
  %.not258528.i = icmp eq i32 %..i.i, 0
  br i1 %.not258528.i, label %.lr.ph150.preheader.i, label %.lr.ph134.preheader.i

.lr.ph134.preheader.i:                            ; preds = %.preheader59.thread.i, %.preheader59.i617
  %i.fje = zext nneg i32 %..i.i to i64            ; 3 uses
  br label %.lr.ph134.i

.lr.ph132.i:                                      ; preds = %.lr.ph132.i, %.lr.ph132.preheader.i.new
  %indvars.iv374.i610 = phi i64 [ 0, %.lr.ph132.preheader.i.new ], [ %indvars.iv.next375.i611.3, %.lr.ph132.i ] ; 5 uses
  %niter1484 = phi i64 [ 0, %.lr.ph132.preheader.i.new ], [ %niter1484.next.3, %.lr.ph132.i ]
  %i.fjf = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv374.i610 ; 2 uses
  %i.fjg = load i16, ptr %i.fjf, align 2, !tbaa !13
  %i.fjh = icmp ne i16 %i.fjg, 0
  %i.fji = zext i1 %i.fjh to i8
  store i8 %i.fji, ptr %i.fjf, align 2, !tbaa !13
  %i.fjj = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv374.i610
  %i.fjk = getelementptr inbounds nuw i8, ptr %i.fjj, i64 2 ; 2 uses
  %i.fjl = load i16, ptr %i.fjk, align 2, !tbaa !13
  %i.fjm = icmp ne i16 %i.fjl, 0
  %i.fjn = zext i1 %i.fjm to i8
  store i8 %i.fjn, ptr %i.fjk, align 2, !tbaa !13
  %i.fjo = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv374.i610
  %i.fjp = getelementptr inbounds nuw i8, ptr %i.fjo, i64 4 ; 2 uses
  %i.fjq = load i16, ptr %i.fjp, align 2, !tbaa !13
  %i.fjr = icmp ne i16 %i.fjq, 0
  %i.fjs = zext i1 %i.fjr to i8
  store i8 %i.fjs, ptr %i.fjp, align 2, !tbaa !13
  %i.fjt = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv374.i610
  %i.fju = getelementptr inbounds nuw i8, ptr %i.fjt, i64 6 ; 2 uses
  %i.fjv = load i16, ptr %i.fju, align 2, !tbaa !13
  %i.fjw = icmp ne i16 %i.fjv, 0
  %i.fjx = zext i1 %i.fjw to i8
  store i8 %i.fjx, ptr %i.fju, align 2, !tbaa !13
  %indvars.iv.next375.i611.3 = add nuw nsw i64 %indvars.iv374.i610, 8 ; 2 uses
  %niter1484.next.3 = add i64 %niter1484, 4       ; 2 uses
  %niter1484.ncmp.3.not = icmp eq i64 %niter1484.next.3, %unroll_iter1483
  br i1 %niter1484.ncmp.3.not, label %.preheader59.thread.i.unr-lcssa, label %.lr.ph132.i, !llvm.loop !48

.preheader58.thread.i:                            ; preds = %.lr.ph134.i
  br i1 %.not257.i609, label %.lr.ph148.preheader.i, label %.preheader57.us.preheader.i

.preheader57.us.preheader.i:                      ; preds = %.preheader58.thread.i
  %i.fjy = getelementptr inbounds nuw i8, ptr %i.dvm, i64 5
  %i.fjz = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.fka = getelementptr i8, ptr %0, i64 16
  %i.fkb = getelementptr inbounds nuw i8, ptr %0, i64 77112
  %i.fkc = zext nneg i32 %i.dwx to i64
  br label %.preheader57.us.i

.preheader57.us.i:                                ; preds = %._crit_edge.us144.i, %.preheader57.us.preheader.i
  %indvars.iv387.i = phi i64 [ 0, %.preheader57.us.preheader.i ], [ %indvars.iv.next388.i, %._crit_edge.us144.i ] ; 2 uses
  %.2.i142.us.i = phi i32 [ 0, %.preheader57.us.preheader.i ], [ %i.fkz, %._crit_edge.us144.i ]
  %.4666.i140.us.i = phi i64 [ 0, %.preheader57.us.preheader.i ], [ %indvars.iv.next383.i614, %._crit_edge.us144.i ]
  %i.fkd = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv387.i ; 2 uses
  br label %bb.oq

bb.oq:                                            ; preds = %bb.oq, %.preheader57.us.i
  %indvars.iv382.i612 = phi i64 [ %.4666.i140.us.i, %.preheader57.us.i ], [ %indvars.iv.next383.i614, %bb.oq ] ; 3 uses
  %indvars.iv380.i = phi i64 [ 0, %.preheader57.us.i ], [ %indvars.iv.next381.i, %bb.oq ] ; 2 uses
  %.3.i137.us.i = phi i32 [ %.2.i142.us.i, %.preheader57.us.i ], [ %i.fkz, %bb.oq ]
  %i.fke = load i8, ptr %i.fjy, align 1, !tbaa !13
  %i.fkf = zext i8 %i.fke to i64
  %i.fkg = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.fkf
  %i.fkh = load i32, ptr %i.fkg, align 4, !tbaa !22
  %i.fki = load ptr, ptr %i.fjz, align 8, !tbaa !245
  %16 = trunc nsw i64 %indvars.iv382.i612 to i32
  %17 = shl i32 %16, 5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x i8], ptr %i.fki, i64 %18
  %i.fkj = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv380.i ; 2 uses
  %i.fkk = load i8, ptr %i.fkj, align 1, !tbaa !13
  %i.fkl = zext i8 %i.fkk to i32
  %i.fkm = load i8, ptr %i.fkd, align 1, !tbaa !13
  %i.fkn = zext i8 %i.fkm to i32
  %i.fko = add nuw nsw i32 %i.fkn, %i.fkl
  %i.fkp = zext i32 %i.fkh to i64                 ; 2 uses
  %i.fkq = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.fkp
  %i.fkr = load ptr, ptr %i.fkq, align 8, !tbaa !243
  %i.fks = getelementptr inbounds nuw [8 x i8], ptr %i.dxj, i64 %i.fkp
  %i.fkt = load ptr, ptr %i.fks, align 8, !tbaa !243
  %.val2.us.i613 = load ptr, ptr %0, align 16, !tbaa !150
  %.val3.us.i = load ptr, ptr %i.fka, align 16, !tbaa !203
  %i.fku = getelementptr i8, ptr %.val2.us.i613, i64 1
  %.val2.val.us.i = load i8, ptr %i.fku, align 1, !tbaa !247
  %i.fkv = tail call fastcc i32 @decode_coeffs_b_16bpp(i8 %.val2.val.us.i, ptr %.val3.us.i, ptr noundef %19, i32 noundef 64, ptr noundef nonnull %i.dwa, ptr noundef nonnull %i.dwd, ptr noundef nonnull %i.dvx, i32 noundef %i.fko, ptr noundef %i.fkr, ptr noundef %i.fkt, ptr noundef nonnull %i.dyb, ptr noundef nonnull %i.dxb) #8 ; 2 uses
  %i.fkw = icmp ne i32 %i.fkv, 0                  ; 2 uses
  %i.fkx = zext i1 %i.fkw to i32
  %i.fky = zext i1 %i.fkw to i8                   ; 2 uses
  store i8 %i.fky, ptr %i.fkd, align 1, !tbaa !13
  store i8 %i.fky, ptr %i.fkj, align 1, !tbaa !13
  %i.fkz = or i32 %.3.i137.us.i, %i.fkx           ; 3 uses
  %i.fla = trunc i32 %i.fkv to i8
  %i.flb = load ptr, ptr %i.fkb, align 8, !tbaa !246
  %i.flc = getelementptr inbounds i8, ptr %i.flb, i64 %indvars.iv382.i612
  store i8 %i.fla, ptr %i.flc, align 1, !tbaa !13
  %indvars.iv.next381.i = add nuw nsw i64 %indvars.iv380.i, 2 ; 2 uses
  %indvars.iv.next383.i614 = add nsw i64 %indvars.iv382.i612, 4 ; 2 uses
  %i.fld = icmp samesign ult i64 %indvars.iv.next381.i, %i.fje
  br i1 %i.fld, label %bb.oq, label %._crit_edge.us144.i, !llvm.loop !49

._crit_edge.us144.i:                              ; preds = %bb.oq
  %indvars.iv.next388.i = add nuw nsw i64 %indvars.iv387.i, 2 ; 2 uses
  %i.fle = icmp samesign ult i64 %indvars.iv.next388.i, %i.fkc
  br i1 %i.fle, label %.preheader57.us.i, label %.lr.ph148.preheader.i, !llvm.loop !50

.lr.ph134.i:                                      ; preds = %.lr.ph134.i, %.lr.ph134.preheader.i
  %indvars.iv377.i = phi i64 [ 0, %.lr.ph134.preheader.i ], [ %indvars.iv.next378.i, %.lr.ph134.i ] ; 2 uses
  %i.flf = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv377.i ; 2 uses
  %i.flg = load i16, ptr %i.flf, align 2, !tbaa !13
  %i.flh = icmp ne i16 %i.flg, 0
  %i.fli = zext i1 %i.flh to i8
  store i8 %i.fli, ptr %i.flf, align 2, !tbaa !13
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 2 ; 2 uses
  %i.flj = icmp samesign ult i64 %indvars.iv.next378.i, %i.fje
  br i1 %i.flj, label %.lr.ph134.i, label %.preheader58.thread.i, !llvm.loop !51

.lr.ph148.preheader.i:                            ; preds = %._crit_edge.us144.i, %.preheader58.thread.i
  %.2.i.lcssa512.i = phi i32 [ 0, %.preheader58.thread.i ], [ %i.fkz, %._crit_edge.us144.i ] ; 2 uses
  br label %.lr.ph148.i

.preheader54.i:                                   ; preds = %.lr.ph148.i
  br i1 %.not257.i609, label %.loopexit53.i, label %.preheader54.i..lr.ph150.preheader.i_crit_edge

.preheader54.i..lr.ph150.preheader.i_crit_edge:   ; preds = %.preheader54.i
  %.pre927 = zext nneg i32 %i.dwx to i64
  br label %.lr.ph150.preheader.i

.lr.ph150.preheader.i:                            ; preds = %.preheader54.i..lr.ph150.preheader.i_crit_edge, %.preheader59.thread.i
  %.pre-phi928 = phi i64 [ %.pre927, %.preheader54.i..lr.ph150.preheader.i_crit_edge ], [ %i.fhl, %.preheader59.thread.i ]
  %.2.i.lcssa513553.i = phi i32 [ %.2.i.lcssa512.i, %.preheader54.i..lr.ph150.preheader.i_crit_edge ], [ 0, %.preheader59.thread.i ]
  br label %.lr.ph150.i

.lr.ph148.i:                                      ; preds = %.lr.ph148.i, %.lr.ph148.preheader.i
  %indvars.iv390.i615 = phi i64 [ 1, %.lr.ph148.preheader.i ], [ %indvars.iv.next391.i616, %.lr.ph148.i ] ; 2 uses
  %i.flk = getelementptr i8, ptr %i.dxv, i64 %indvars.iv390.i615 ; 2 uses
  %i.fll = getelementptr i8, ptr %i.flk, i64 -1
  %i.flm = load i8, ptr %i.fll, align 1, !tbaa !13
  store i8 %i.flm, ptr %i.flk, align 1, !tbaa !13
  %indvars.iv.next391.i616 = add nuw nsw i64 %indvars.iv390.i615, 2 ; 2 uses
  %i.fln = icmp samesign ult i64 %indvars.iv.next391.i616, %i.fje
  br i1 %i.fln, label %.lr.ph148.i, label %.preheader54.i, !llvm.loop !52

.lr.ph150.i:                                      ; preds = %.lr.ph150.i, %.lr.ph150.preheader.i
  %indvars.iv393.i = phi i64 [ 1, %.lr.ph150.preheader.i ], [ %indvars.iv.next394.i, %.lr.ph150.i ] ; 2 uses
  %i.flo = getelementptr i8, ptr %i.dya, i64 %indvars.iv393.i ; 2 uses
  %i.flp = getelementptr i8, ptr %i.flo, i64 -1
  %i.flq = load i8, ptr %i.flp, align 1, !tbaa !13
  store i8 %i.flq, ptr %i.flo, align 1, !tbaa !13
  %indvars.iv.next394.i = add nuw nsw i64 %indvars.iv393.i, 2 ; 2 uses
  %i.flr = icmp samesign ult i64 %indvars.iv.next394.i, %.pre-phi928
  br i1 %i.flr, label %.lr.ph150.i, label %.loopexit53.i, !llvm.loop !53

.preheader71.i607:                                ; preds = %.preheader72.i
  %.not250.i608 = icmp eq i32 %..i.i, 0
  br i1 %.not250.i608, label %._crit_edge118.i, label %.lr.ph109.preheader.i

.preheader71.thread.i.unr-lcssa:                  ; preds = %.lr.ph107.i
  %lcmp.mod1469.not = icmp eq i64 %xtraiter1467, 0
  br i1 %lcmp.mod1469.not, label %.preheader71.thread.i, label %.lr.ph107.i.epil.preheader

.lr.ph107.i.epil.preheader:                       ; preds = %.preheader71.thread.i.unr-lcssa, %.lr.ph107.preheader.i
  %indvars.iv346.i593.epil.init = phi i64 [ 0, %.lr.ph107.preheader.i ], [ %indvars.iv.next347.i594.3, %.preheader71.thread.i.unr-lcssa ]
  %lcmp.mod1470 = icmp ne i64 %xtraiter1467, 0
  tail call void @llvm.assume(i1 %lcmp.mod1470)
  br label %.lr.ph107.i.epil

.lr.ph107.i.epil:                                 ; preds = %.lr.ph107.i.epil, %.lr.ph107.i.epil.preheader
  %indvars.iv346.i593.epil = phi i64 [ %indvars.iv346.i593.epil.init, %.lr.ph107.i.epil.preheader ], [ %indvars.iv.next347.i594.epil, %.lr.ph107.i.epil ] ; 2 uses
  %epil.iter1468 = phi i64 [ 0, %.lr.ph107.i.epil.preheader ], [ %epil.iter1468.next, %.lr.ph107.i.epil ]
  %i.fls = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv346.i593.epil ; 2 uses
  %i.flt = load i32, ptr %i.fls, align 4, !tbaa !13
  %i.flu = icmp ne i32 %i.flt, 0
  %i.flv = zext i1 %i.flu to i8
  store i8 %i.flv, ptr %i.fls, align 4, !tbaa !13
  %indvars.iv.next347.i594.epil = add nuw nsw i64 %indvars.iv346.i593.epil, 4
  %epil.iter1468.next = add i64 %epil.iter1468, 1 ; 2 uses
  %epil.iter1468.cmp.not = icmp eq i64 %epil.iter1468.next, %xtraiter1467
  br i1 %epil.iter1468.cmp.not, label %.preheader71.thread.i, label %.lr.ph107.i.epil, !llvm.loop !112

.preheader71.thread.i:                            ; preds = %.lr.ph107.i.epil, %.preheader71.thread.i.unr-lcssa
  %.not250538.i = icmp eq i32 %..i.i, 0
  br i1 %.not250538.i, label %._crit_edge118.i, label %.lr.ph109.preheader.i

.lr.ph109.preheader.i:                            ; preds = %.preheader71.thread.i, %.preheader71.i607
  %i.flw = zext nneg i32 %..i.i to i64            ; 3 uses
  br label %.lr.ph109.i

.lr.ph107.i:                                      ; preds = %.lr.ph107.i, %.lr.ph107.preheader.i.new
  %indvars.iv346.i593 = phi i64 [ 0, %.lr.ph107.preheader.i.new ], [ %indvars.iv.next347.i594.3, %.lr.ph107.i ] ; 5 uses
  %niter1472 = phi i64 [ 0, %.lr.ph107.preheader.i.new ], [ %niter1472.next.3, %.lr.ph107.i ]
  %i.flx = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv346.i593 ; 2 uses
  %i.fly = load i32, ptr %i.flx, align 4, !tbaa !13
  %i.flz = icmp ne i32 %i.fly, 0
  %i.fma = zext i1 %i.flz to i8
  store i8 %i.fma, ptr %i.flx, align 4, !tbaa !13
  %i.fmb = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv346.i593
  %i.fmc = getelementptr inbounds nuw i8, ptr %i.fmb, i64 4 ; 2 uses
  %i.fmd = load i32, ptr %i.fmc, align 4, !tbaa !13
  %i.fme = icmp ne i32 %i.fmd, 0
  %i.fmf = zext i1 %i.fme to i8
  store i8 %i.fmf, ptr %i.fmc, align 4, !tbaa !13
  %i.fmg = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv346.i593
  %i.fmh = getelementptr inbounds nuw i8, ptr %i.fmg, i64 8 ; 2 uses
  %i.fmi = load i32, ptr %i.fmh, align 4, !tbaa !13
  %i.fmj = icmp ne i32 %i.fmi, 0
  %i.fmk = zext i1 %i.fmj to i8
  store i8 %i.fmk, ptr %i.fmh, align 4, !tbaa !13
  %i.fml = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv346.i593
  %i.fmm = getelementptr inbounds nuw i8, ptr %i.fml, i64 12 ; 2 uses
  %i.fmn = load i32, ptr %i.fmm, align 4, !tbaa !13
  %i.fmo = icmp ne i32 %i.fmn, 0
  %i.fmp = zext i1 %i.fmo to i8
  store i8 %i.fmp, ptr %i.fmm, align 4, !tbaa !13
  %indvars.iv.next347.i594.3 = add nuw nsw i64 %indvars.iv346.i593, 16 ; 2 uses
  %niter1472.next.3 = add nuw nsw i64 %niter1472, 4 ; 2 uses
  %niter1472.ncmp.3.not = icmp eq i64 %niter1472.next.3, %unroll_iter1471
  br i1 %niter1472.ncmp.3.not, label %.preheader71.thread.i.unr-lcssa, label %.lr.ph107.i, !llvm.loop !55

.preheader70.thread.i:                            ; preds = %.lr.ph109.i
  br i1 %.not249.i592, label %._crit_edge118.thread.i, label %.preheader69.us.preheader.i

.preheader69.us.preheader.i:                      ; preds = %.preheader70.thread.i
  %i.fmq = getelementptr inbounds nuw i8, ptr %i.dvm, i64 5
  %i.fmr = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.fms = getelementptr i8, ptr %0, i64 16
  %i.fmt = getelementptr inbounds nuw i8, ptr %0, i64 77112
  %i.fmu = zext nneg i32 %i.dwx to i64
  br label %.preheader69.us.i

.preheader69.us.i:                                ; preds = %._crit_edge.us120.i, %.preheader69.us.preheader.i
  %indvars.iv359.i = phi i64 [ 0, %.preheader69.us.preheader.i ], [ %indvars.iv.next360.i, %._crit_edge.us120.i ] ; 2 uses
  %.4.i117.us.i = phi i32 [ 0, %.preheader69.us.preheader.i ], [ %i.fnr, %._crit_edge.us120.i ]
  %.10672.i115.us.i = phi i64 [ 0, %.preheader69.us.preheader.i ], [ %indvars.iv.next355.i596, %._crit_edge.us120.i ]
  %i.fmv = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv359.i ; 2 uses
  br label %bb.or

bb.or:                                            ; preds = %bb.or, %.preheader69.us.i
  %indvars.iv354.i595 = phi i64 [ %.10672.i115.us.i, %.preheader69.us.i ], [ %indvars.iv.next355.i596, %bb.or ] ; 3 uses
  %indvars.iv352.i = phi i64 [ 0, %.preheader69.us.i ], [ %indvars.iv.next353.i, %bb.or ] ; 2 uses
  %.5.i112.us.i = phi i32 [ %.4.i117.us.i, %.preheader69.us.i ], [ %i.fnr, %bb.or ]
  %i.fmw = load i8, ptr %i.fmq, align 1, !tbaa !13
  %i.fmx = zext i8 %i.fmw to i64
  %i.fmy = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.fmx
  %i.fmz = load i32, ptr %i.fmy, align 4, !tbaa !22
  %i.fna = load ptr, ptr %i.fmr, align 8, !tbaa !245
  %20 = trunc nsw i64 %indvars.iv354.i595 to i32
  %21 = shl i32 %20, 5
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x i8], ptr %i.fna, i64 %22
  %i.fnb = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv352.i ; 2 uses
  %i.fnc = load i8, ptr %i.fnb, align 1, !tbaa !13
  %i.fnd = zext i8 %i.fnc to i32
  %i.fne = load i8, ptr %i.fmv, align 1, !tbaa !13
  %i.fnf = zext i8 %i.fne to i32
  %i.fng = add nuw nsw i32 %i.fnf, %i.fnd
  %i.fnh = zext i32 %i.fmz to i64                 ; 2 uses
  %i.fni = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.fnh
  %i.fnj = load ptr, ptr %i.fni, align 8, !tbaa !243
  %i.fnk = getelementptr inbounds nuw [8 x i8], ptr %i.dxj, i64 %i.fnh
  %i.fnl = load ptr, ptr %i.fnk, align 8, !tbaa !243
  %.val4.us.i = load ptr, ptr %0, align 16, !tbaa !150
  %.val5.us.i = load ptr, ptr %i.fms, align 16, !tbaa !203
  %i.fnm = getelementptr i8, ptr %.val4.us.i, i64 1
  %.val4.val.us.i = load i8, ptr %i.fnm, align 1, !tbaa !247
  %i.fnn = tail call fastcc i32 @decode_coeffs_b_16bpp(i8 %.val4.val.us.i, ptr %.val5.us.i, ptr noundef %23, i32 noundef 256, ptr noundef nonnull %i.dwa, ptr noundef nonnull %i.dwd, ptr noundef nonnull %i.dvx, i32 noundef %i.fng, ptr noundef %i.fnj, ptr noundef %i.fnl, ptr noundef nonnull %i.dyb, ptr noundef nonnull %i.dxb) #8 ; 2 uses
  %i.fno = icmp ne i32 %i.fnn, 0                  ; 2 uses
  %i.fnp = zext i1 %i.fno to i32
  %i.fnq = zext i1 %i.fno to i8                   ; 2 uses
  store i8 %i.fnq, ptr %i.fmv, align 1, !tbaa !13
  store i8 %i.fnq, ptr %i.fnb, align 1, !tbaa !13
  %i.fnr = or i32 %.5.i112.us.i, %i.fnp           ; 4 uses
  %i.fns = trunc i32 %i.fnn to i16
  %i.fnt = load ptr, ptr %i.fmt, align 8, !tbaa !246
  %i.fnu = getelementptr inbounds i8, ptr %i.fnt, i64 %indvars.iv354.i595
  store i16 %i.fns, ptr %i.fnu, align 2, !tbaa !13
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 4 ; 2 uses
  %indvars.iv.next355.i596 = add nsw i64 %indvars.iv354.i595, 16 ; 2 uses
  %i.fnv = icmp samesign ult i64 %indvars.iv.next353.i, %i.flw
  br i1 %i.fnv, label %bb.or, label %._crit_edge.us120.i, !llvm.loop !56

._crit_edge.us120.i:                              ; preds = %bb.or
  %indvars.iv.next360.i = add nuw nsw i64 %indvars.iv359.i, 4 ; 2 uses
  %i.fnw = icmp samesign ult i64 %indvars.iv.next360.i, %i.fmu
  br i1 %i.fnw, label %.preheader69.us.i, label %._crit_edge118.i.thread, !llvm.loop !57

.lr.ph109.i:                                      ; preds = %.lr.ph109.i, %.lr.ph109.preheader.i
  %indvars.iv349.i = phi i64 [ 0, %.lr.ph109.preheader.i ], [ %indvars.iv.next350.i, %.lr.ph109.i ] ; 2 uses
  %i.fnx = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv349.i ; 2 uses
  %i.fny = load i32, ptr %i.fnx, align 4, !tbaa !13
  %i.fnz = icmp ne i32 %i.fny, 0
  %i.foa = zext i1 %i.fnz to i8
  store i8 %i.foa, ptr %i.fnx, align 4, !tbaa !13
  %indvars.iv.next350.i = add nuw nsw i64 %indvars.iv349.i, 4 ; 2 uses
  %i.fob = icmp samesign ult i64 %indvars.iv.next350.i, %i.flw
  br i1 %i.fob, label %.lr.ph109.i, label %.preheader70.thread.i, !llvm.loop !58

._crit_edge118.i:                                 ; preds = %.preheader71.thread.i, %.preheader71.i607
  %.not17.i = icmp ugt i32 %i.dwk, %i.dws
  br i1 %.not17.i, label %.preheader65.i604, label %.loopexit66.i

._crit_edge118.i.thread:                          ; preds = %._crit_edge.us120.i
  %.not17.i644 = icmp ugt i32 %i.dwk, %i.dws
  br i1 %.not17.i644, label %.preheader65.i604, label %.lr.ph124.preheader.i599

._crit_edge118.thread.i:                          ; preds = %.preheader70.thread.i
  %.not17515.i = icmp ugt i32 %i.dwk, %i.dws
  br i1 %.not17515.i, label %.preheader65.i604, label %.lr.ph124.preheader.i599

.lr.ph124.preheader.i599:                         ; preds = %._crit_edge118.i.thread, %._crit_edge118.thread.i
  %.4.i.lcssa517520.i = phi i32 [ 0, %._crit_edge118.thread.i ], [ %i.fnr, %._crit_edge118.i.thread ]
  br label %.lr.ph124.i600

.preheader65.i604:                                ; preds = %._crit_edge118.i.thread, %._crit_edge118.thread.i, %._crit_edge118.i
  %.4.i.lcssa518.i = phi i32 [ 0, %._crit_edge118.thread.i ], [ 0, %._crit_edge118.i ], [ %i.fnr, %._crit_edge118.i.thread ] ; 2 uses
  %.not254.i = icmp eq i32 %i.dws, 0
  br i1 %.not254.i, label %.loopexit66.i, label %.lr.ph126.preheader.i605

.lr.ph126.preheader.i605:                         ; preds = %.preheader65.i604
  %i.foc = zext nneg i32 %..i.i to i64
  br label %.lr.ph126.i606

.lr.ph124.i600:                                   ; preds = %.lr.ph124.i600, %.lr.ph124.preheader.i599
  %indvars.iv362.i = phi i64 [ 0, %.lr.ph124.preheader.i599 ], [ %indvars.iv.next363.i, %.lr.ph124.i600 ] ; 2 uses
  %i.fod = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv362.i ; 2 uses
  %i.foe = load i8, ptr %i.fod, align 1, !tbaa !13
  %i.fof = zext i8 %i.foe to i32
  %i.fog = mul nuw nsw i32 %i.fof, 16843009
  store i32 %i.fog, ptr %i.fod, align 4, !tbaa !13
  %indvars.iv.next363.i = add nuw nsw i64 %indvars.iv362.i, 4 ; 2 uses
  %i.foh = icmp samesign ult i64 %indvars.iv.next363.i, %i.flw
  br i1 %i.foh, label %.lr.ph124.i600, label %.loopexit66.i, !llvm.loop !59

.lr.ph126.i606:                                   ; preds = %.lr.ph126.i606, %.lr.ph126.preheader.i605
  %indvars.iv365.i = phi i64 [ 0, %.lr.ph126.preheader.i605 ], [ %indvars.iv.next366.i, %.lr.ph126.i606 ] ; 3 uses
  %i.foi = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv365.i ; 2 uses
  %i.foj = getelementptr inbounds nuw i8, ptr %i.foi, i64 1
  %i.fok = load i8, ptr %i.foi, align 1, !tbaa !13
  %i.fol = trunc nuw nsw i64 %indvars.iv365.i to i32
  %i.fom = xor i32 %i.fol, -1
  %i.fon = add nsw i32 %..i.i, %i.fom
  %i.foo = tail call i32 @llvm.smin.i32(i32 %i.fon, i32 3)
  %i.fop = sext i32 %i.foo to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.foj, i8 %i.fok, i64 %i.fop, i1 false)
  %indvars.iv.next366.i = add nuw nsw i64 %indvars.iv365.i, 4 ; 2 uses
  %i.foq = icmp samesign ult i64 %indvars.iv.next366.i, %i.foc
  br i1 %i.foq, label %.lr.ph126.i606, label %.loopexit66.i, !llvm.loop !60

.loopexit66.i:                                    ; preds = %.lr.ph124.i600, %.lr.ph126.i606, %._crit_edge118.i, %.preheader65.i604
  %.4.i.lcssa516.i601 = phi i32 [ 0, %._crit_edge118.i ], [ %.4.i.lcssa518.i, %.preheader65.i604 ], [ %.4.i.lcssa518.i, %.lr.ph126.i606 ], [ %.4.i.lcssa517520.i, %.lr.ph124.i600 ] ; 5 uses
  %.not18.i = icmp ugt i32 %i.dwo, %i.dww
  br i1 %.not18.i, label %.preheader61.i, label %.preheader63.i602

.preheader63.i602:                                ; preds = %.loopexit66.i
  br i1 %.not249.i592, label %.loopexit53.i, label %.lr.ph128.preheader.i

.lr.ph128.preheader.i:                            ; preds = %.preheader63.i602
  %i.for = zext nneg i32 %i.dwx to i64
  %i.fos = add nsw i64 %i.for, -2                 ; 2 uses
  %i.fot = lshr i64 %i.fos, 2
  %i.fou = add nuw nsw i64 %i.fot, 1              ; 2 uses
  %xtraiter1473 = and i64 %i.fou, 3               ; 3 uses
  %i.fov = icmp ult i64 %i.fos, 12
  br i1 %i.fov, label %.lr.ph128.i.epil.preheader, label %.lr.ph128.preheader.i.new

.lr.ph128.preheader.i.new:                        ; preds = %.lr.ph128.preheader.i
  %unroll_iter1477 = and i64 %i.fou, 9223372036854775804
  br label %.lr.ph128.i

.preheader61.i:                                   ; preds = %.loopexit66.i
  %.not256.i603 = icmp eq i32 %i.dww, 0
  br i1 %.not256.i603, label %.loopexit53.i, label %.lr.ph130.preheader.i

.lr.ph130.preheader.i:                            ; preds = %.preheader61.i
  %i.fow = zext nneg i32 %i.dwx to i64
  br label %.lr.ph130.i

.lr.ph128.i:                                      ; preds = %.lr.ph128.i, %.lr.ph128.preheader.i.new
  %indvars.iv368.i = phi i64 [ 0, %.lr.ph128.preheader.i.new ], [ %indvars.iv.next369.i.3, %.lr.ph128.i ] ; 5 uses
  %niter1478 = phi i64 [ 0, %.lr.ph128.preheader.i.new ], [ %niter1478.next.3, %.lr.ph128.i ]
  %i.fox = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv368.i ; 2 uses
  %i.foy = load i8, ptr %i.fox, align 1, !tbaa !13
  %i.foz = zext i8 %i.foy to i32
  %i.fpa = mul nuw nsw i32 %i.foz, 16843009
  store i32 %i.fpa, ptr %i.fox, align 4, !tbaa !13
  %i.fpb = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv368.i
  %i.fpc = getelementptr inbounds nuw i8, ptr %i.fpb, i64 4 ; 2 uses
  %i.fpd = load i8, ptr %i.fpc, align 1, !tbaa !13
  %i.fpe = zext i8 %i.fpd to i32
  %i.fpf = mul nuw nsw i32 %i.fpe, 16843009
  store i32 %i.fpf, ptr %i.fpc, align 4, !tbaa !13
  %i.fpg = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv368.i
  %i.fph = getelementptr inbounds nuw i8, ptr %i.fpg, i64 8 ; 2 uses
  %i.fpi = load i8, ptr %i.fph, align 1, !tbaa !13
  %i.fpj = zext i8 %i.fpi to i32
  %i.fpk = mul nuw nsw i32 %i.fpj, 16843009
  store i32 %i.fpk, ptr %i.fph, align 4, !tbaa !13
  %i.fpl = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv368.i
  %i.fpm = getelementptr inbounds nuw i8, ptr %i.fpl, i64 12 ; 2 uses
  %i.fpn = load i8, ptr %i.fpm, align 1, !tbaa !13
  %i.fpo = zext i8 %i.fpn to i32
  %i.fpp = mul nuw nsw i32 %i.fpo, 16843009
  store i32 %i.fpp, ptr %i.fpm, align 4, !tbaa !13
  %indvars.iv.next369.i.3 = add nuw nsw i64 %indvars.iv368.i, 16 ; 2 uses
  %niter1478.next.3 = add nuw nsw i64 %niter1478, 4 ; 2 uses
  %niter1478.ncmp.3.not = icmp eq i64 %niter1478.next.3, %unroll_iter1477
  br i1 %niter1478.ncmp.3.not, label %.loopexit53.i.loopexit1387.unr-lcssa, label %.lr.ph128.i, !llvm.loop !61

.lr.ph130.i:                                      ; preds = %.lr.ph130.i, %.lr.ph130.preheader.i
  %indvars.iv371.i = phi i64 [ 0, %.lr.ph130.preheader.i ], [ %indvars.iv.next372.i, %.lr.ph130.i ] ; 3 uses
  %i.fpq = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv371.i ; 2 uses
  %i.fpr = getelementptr inbounds nuw i8, ptr %i.fpq, i64 1
  %i.fps = load i8, ptr %i.fpq, align 1, !tbaa !13
  %i.fpt = trunc nuw nsw i64 %indvars.iv371.i to i32
  %i.fpu = xor i32 %i.fpt, -1
  %i.fpv = add nsw i32 %i.dwx, %i.fpu
  %i.fpw = tail call i32 @llvm.smin.i32(i32 %i.fpv, i32 3)
  %i.fpx = sext i32 %i.fpw to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fpr, i8 %i.fps, i64 %i.fpx, i1 false)
  %indvars.iv.next372.i = add nuw nsw i64 %indvars.iv371.i, 4 ; 2 uses
  %i.fpy = icmp samesign ult i64 %indvars.iv.next372.i, %i.fow
  br i1 %i.fpy, label %.lr.ph130.i, label %.loopexit53.i, !llvm.loop !62

.preheader83.i:                                   ; preds = %.preheader84.i
  %.not242.i591 = icmp eq i32 %..i.i, 0
  br i1 %.not242.i591, label %._crit_edge96.i, label %.lr.ph87.preheader.i

.preheader83.thread.i.unr-lcssa:                  ; preds = %.lr.ph.i518
  %lcmp.mod1457.not = icmp eq i64 %xtraiter1455, 0
  br i1 %lcmp.mod1457.not, label %.preheader83.thread.i, label %.lr.ph.i518.epil.preheader

.lr.ph.i518.epil.preheader:                       ; preds = %.preheader83.thread.i.unr-lcssa, %.lr.ph.preheader.i517
  %indvars.iv.i519.epil.init = phi i64 [ 0, %.lr.ph.preheader.i517 ], [ %indvars.iv.next.i520.3, %.preheader83.thread.i.unr-lcssa ]
  %lcmp.mod1458 = icmp ne i64 %xtraiter1455, 0
  tail call void @llvm.assume(i1 %lcmp.mod1458)
  br label %.lr.ph.i518.epil

.lr.ph.i518.epil:                                 ; preds = %.lr.ph.i518.epil, %.lr.ph.i518.epil.preheader
  %indvars.iv.i519.epil = phi i64 [ %indvars.iv.i519.epil.init, %.lr.ph.i518.epil.preheader ], [ %indvars.iv.next.i520.epil, %.lr.ph.i518.epil ] ; 2 uses
  %epil.iter1456 = phi i64 [ 0, %.lr.ph.i518.epil.preheader ], [ %epil.iter1456.next, %.lr.ph.i518.epil ]
  %i.fpz = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv.i519.epil ; 2 uses
  %i.fqa = load i64, ptr %i.fpz, align 8, !tbaa !13
  %i.fqb = icmp ne i64 %i.fqa, 0
  %i.fqc = zext i1 %i.fqb to i8
  store i8 %i.fqc, ptr %i.fpz, align 8, !tbaa !13
  %indvars.iv.next.i520.epil = add nuw nsw i64 %indvars.iv.i519.epil, 8
  %epil.iter1456.next = add i64 %epil.iter1456, 1 ; 2 uses
  %epil.iter1456.cmp.not = icmp eq i64 %epil.iter1456.next, %xtraiter1455
  br i1 %epil.iter1456.cmp.not, label %.preheader83.thread.i, label %.lr.ph.i518.epil, !llvm.loop !113

.preheader83.thread.i:                            ; preds = %.lr.ph.i518.epil, %.preheader83.thread.i.unr-lcssa
  %.not242545.i = icmp eq i32 %..i.i, 0
  br i1 %.not242545.i, label %._crit_edge96.i, label %.lr.ph87.preheader.i

.lr.ph87.preheader.i:                             ; preds = %.preheader83.thread.i, %.preheader83.i
  %i.fqd = zext nneg i32 %..i.i to i64            ; 3 uses
  br label %.lr.ph87.i

.lr.ph.i518:                                      ; preds = %.lr.ph.i518, %.lr.ph.preheader.i517.new
  %indvars.iv.i519 = phi i64 [ 0, %.lr.ph.preheader.i517.new ], [ %indvars.iv.next.i520.3, %.lr.ph.i518 ] ; 5 uses
  %niter1460 = phi i64 [ 0, %.lr.ph.preheader.i517.new ], [ %niter1460.next.3, %.lr.ph.i518 ]
  %i.fqe = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv.i519 ; 2 uses
  %i.fqf = load i64, ptr %i.fqe, align 8, !tbaa !13
  %i.fqg = icmp ne i64 %i.fqf, 0
  %i.fqh = zext i1 %i.fqg to i8
  store i8 %i.fqh, ptr %i.fqe, align 8, !tbaa !13
  %i.fqi = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv.i519
  %i.fqj = getelementptr inbounds nuw i8, ptr %i.fqi, i64 8 ; 2 uses
  %i.fqk = load i64, ptr %i.fqj, align 8, !tbaa !13
  %i.fql = icmp ne i64 %i.fqk, 0
  %i.fqm = zext i1 %i.fql to i8
  store i8 %i.fqm, ptr %i.fqj, align 8, !tbaa !13
  %i.fqn = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv.i519
  %i.fqo = getelementptr inbounds nuw i8, ptr %i.fqn, i64 16 ; 2 uses
  %i.fqp = load i64, ptr %i.fqo, align 8, !tbaa !13
  %i.fqq = icmp ne i64 %i.fqp, 0
  %i.fqr = zext i1 %i.fqq to i8
  store i8 %i.fqr, ptr %i.fqo, align 8, !tbaa !13
  %i.fqs = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv.i519
  %i.fqt = getelementptr inbounds nuw i8, ptr %i.fqs, i64 24 ; 2 uses
  %i.fqu = load i64, ptr %i.fqt, align 8, !tbaa !13
  %i.fqv = icmp ne i64 %i.fqu, 0
  %i.fqw = zext i1 %i.fqv to i8
  store i8 %i.fqw, ptr %i.fqt, align 8, !tbaa !13
  %indvars.iv.next.i520.3 = add nuw nsw i64 %indvars.iv.i519, 32 ; 2 uses
  %niter1460.next.3 = add i64 %niter1460, 4       ; 2 uses
  %niter1460.ncmp.3.not = icmp eq i64 %niter1460.next.3, %unroll_iter1459
  br i1 %niter1460.ncmp.3.not, label %.preheader83.thread.i.unr-lcssa, label %.lr.ph.i518, !llvm.loop !64

.preheader82.thread.i:                            ; preds = %.lr.ph87.i
  br i1 %.not241.i516, label %._crit_edge96.thread.i, label %.preheader81.us.preheader.i

.preheader81.us.preheader.i:                      ; preds = %.preheader82.thread.i
  %i.fqx = getelementptr inbounds nuw i8, ptr %i.dvm, i64 5
  %i.fqy = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.fqz = getelementptr i8, ptr %0, i64 16
  %i.fra = getelementptr inbounds nuw i8, ptr %0, i64 77112
  %i.frb = zext nneg i32 %i.dwx to i64
  br label %.preheader81.us.i

.preheader81.us.i:                                ; preds = %._crit_edge.us.i523, %.preheader81.us.preheader.i
  %indvars.iv331.i = phi i64 [ 0, %.preheader81.us.preheader.i ], [ %indvars.iv.next332.i, %._crit_edge.us.i523 ] ; 2 uses
  %.6.i95.us.i = phi i32 [ 0, %.preheader81.us.preheader.i ], [ %i.fry, %._crit_edge.us.i523 ]
  %.18680.i93.us.i = phi i64 [ 0, %.preheader81.us.preheader.i ], [ %indvars.iv.next327.i522, %._crit_edge.us.i523 ]
  %i.frc = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv331.i ; 2 uses
  br label %bb.os

bb.os:                                            ; preds = %bb.os, %.preheader81.us.i
  %indvars.iv326.i521 = phi i64 [ %.18680.i93.us.i, %.preheader81.us.i ], [ %indvars.iv.next327.i522, %bb.os ] ; 3 uses
  %indvars.iv324.i = phi i64 [ 0, %.preheader81.us.i ], [ %indvars.iv.next325.i, %bb.os ] ; 2 uses
  %.7.i90.us.i = phi i32 [ %.6.i95.us.i, %.preheader81.us.i ], [ %i.fry, %bb.os ]
  %i.frd = load i8, ptr %i.fqx, align 1, !tbaa !13
  %i.fre = zext i8 %i.frd to i64
  %i.frf = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.fre
  %i.frg = load i32, ptr %i.frf, align 4, !tbaa !22
  %i.frh = load ptr, ptr %i.fqy, align 8, !tbaa !245
  %24 = trunc nsw i64 %indvars.iv326.i521 to i32
  %25 = shl i32 %24, 5
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i8], ptr %i.frh, i64 %26
  %i.fri = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv324.i ; 2 uses
  %i.frj = load i8, ptr %i.fri, align 1, !tbaa !13
  %i.frk = zext i8 %i.frj to i32
  %i.frl = load i8, ptr %i.frc, align 1, !tbaa !13
  %i.frm = zext i8 %i.frl to i32
  %i.frn = add nuw nsw i32 %i.frm, %i.frk
  %i.fro = zext i32 %i.frg to i64                 ; 2 uses
  %i.frp = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.fro
  %i.frq = load ptr, ptr %i.frp, align 8, !tbaa !243
  %i.frr = getelementptr inbounds nuw [8 x i8], ptr %i.dxj, i64 %i.fro
  %i.frs = load ptr, ptr %i.frr, align 8, !tbaa !243
  %.val12.us.i = load ptr, ptr %0, align 16, !tbaa !150
  %.val13.us.i = load ptr, ptr %i.fqz, align 16, !tbaa !203
  %i.frt = getelementptr i8, ptr %.val12.us.i, i64 1
  %.val12.val.us.i = load i8, ptr %i.frt, align 1, !tbaa !247
  %i.fru = tail call fastcc i32 @decode_coeffs_b32_16bpp(i8 %.val12.val.us.i, ptr %.val13.us.i, ptr noundef %27, i32 noundef 1024, ptr noundef nonnull %i.dwa, ptr noundef nonnull %i.dwd, ptr noundef nonnull %i.dvx, i32 noundef %i.frn, ptr noundef %i.frq, ptr noundef %i.frs, ptr noundef nonnull %i.dyb, ptr noundef nonnull %i.dxb) #8 ; 2 uses
  %i.frv = icmp ne i32 %i.fru, 0                  ; 2 uses
  %i.frw = zext i1 %i.frv to i32
  %i.frx = zext i1 %i.frv to i8                   ; 2 uses
  store i8 %i.frx, ptr %i.frc, align 1, !tbaa !13
  store i8 %i.frx, ptr %i.fri, align 1, !tbaa !13
  %i.fry = or i32 %.7.i90.us.i, %i.frw            ; 4 uses
  %i.frz = trunc i32 %i.fru to i16
  %i.fsa = load ptr, ptr %i.fra, align 8, !tbaa !246
  %i.fsb = getelementptr inbounds i8, ptr %i.fsa, i64 %indvars.iv326.i521
  store i16 %i.frz, ptr %i.fsb, align 2, !tbaa !13
  %indvars.iv.next325.i = add nuw nsw i64 %indvars.iv324.i, 8 ; 2 uses
  %indvars.iv.next327.i522 = add nsw i64 %indvars.iv326.i521, 64 ; 2 uses
  %i.fsc = icmp samesign ult i64 %indvars.iv.next325.i, %i.fqd
  br i1 %i.fsc, label %bb.os, label %._crit_edge.us.i523, !llvm.loop !65

._crit_edge.us.i523:                              ; preds = %bb.os
  %indvars.iv.next332.i = add nuw nsw i64 %indvars.iv331.i, 8 ; 2 uses
  %i.fsd = icmp samesign ult i64 %indvars.iv.next332.i, %i.frb
  br i1 %i.fsd, label %.preheader81.us.i, label %._crit_edge96.i.thread, !llvm.loop !66

.lr.ph87.i:                                       ; preds = %.lr.ph87.i, %.lr.ph87.preheader.i
  %indvars.iv321.i = phi i64 [ 0, %.lr.ph87.preheader.i ], [ %indvars.iv.next322.i, %.lr.ph87.i ] ; 2 uses
  %i.fse = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv321.i ; 2 uses
  %i.fsf = load i64, ptr %i.fse, align 8, !tbaa !13
  %i.fsg = icmp ne i64 %i.fsf, 0
  %i.fsh = zext i1 %i.fsg to i8
  store i8 %i.fsh, ptr %i.fse, align 8, !tbaa !13
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 8 ; 2 uses
  %i.fsi = icmp samesign ult i64 %indvars.iv.next322.i, %i.fqd
  br i1 %i.fsi, label %.lr.ph87.i, label %.preheader82.thread.i, !llvm.loop !67

._crit_edge96.i:                                  ; preds = %.preheader83.thread.i, %.preheader83.i
  %.not.i525 = icmp ugt i32 %i.dwk, %i.dws
  br i1 %.not.i525, label %.preheader77.i, label %.loopexit78.i

._crit_edge96.i.thread:                           ; preds = %._crit_edge.us.i523
  %.not.i525651 = icmp ugt i32 %i.dwk, %i.dws
  br i1 %.not.i525651, label %.preheader77.i, label %.lr.ph99.preheader.i526

._crit_edge96.thread.i:                           ; preds = %.preheader82.thread.i
  %.not522.i = icmp ugt i32 %i.dwk, %i.dws
  br i1 %.not522.i, label %.preheader77.i, label %.lr.ph99.preheader.i526

.lr.ph99.preheader.i526:                          ; preds = %._crit_edge96.i.thread, %._crit_edge96.thread.i
  %.6.i.lcssa524527.i = phi i32 [ 0, %._crit_edge96.thread.i ], [ %i.fry, %._crit_edge96.i.thread ]
  br label %.lr.ph99.i527

.preheader77.i:                                   ; preds = %._crit_edge96.i.thread, %._crit_edge96.thread.i, %._crit_edge96.i
  %.6.i.lcssa525.i = phi i32 [ 0, %._crit_edge96.thread.i ], [ 0, %._crit_edge96.i ], [ %i.fry, %._crit_edge96.i.thread ] ; 2 uses
  %.not246.i588 = icmp eq i32 %i.dws, 0
  br i1 %.not246.i588, label %.loopexit78.i, label %.lr.ph101.preheader.i589

.lr.ph101.preheader.i589:                         ; preds = %.preheader77.i
  %i.fsj = zext nneg i32 %..i.i to i64
  br label %.lr.ph101.i590

.lr.ph99.i527:                                    ; preds = %.lr.ph99.i527, %.lr.ph99.preheader.i526
  %indvars.iv334.i = phi i64 [ 0, %.lr.ph99.preheader.i526 ], [ %indvars.iv.next335.i, %.lr.ph99.i527 ] ; 2 uses
  %i.fsk = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv334.i ; 3 uses
  %i.fsl = load i8, ptr %i.fsk, align 1, !tbaa !13
  %i.fsm = zext i8 %i.fsl to i32
  %i.fsn = mul nuw nsw i32 %i.fsm, 16843009       ; 2 uses
  store i32 %i.fsn, ptr %i.fsk, align 4, !tbaa !13
  %i.fso = getelementptr inbounds nuw i8, ptr %i.fsk, i64 4
  store i32 %i.fsn, ptr %i.fso, align 4, !tbaa !13
  %indvars.iv.next335.i = add nuw nsw i64 %indvars.iv334.i, 8 ; 2 uses
  %i.fsp = icmp samesign ult i64 %indvars.iv.next335.i, %i.fqd
  br i1 %i.fsp, label %.lr.ph99.i527, label %.loopexit78.i, !llvm.loop !68

.lr.ph101.i590:                                   ; preds = %.lr.ph101.i590, %.lr.ph101.preheader.i589
  %indvars.iv337.i = phi i64 [ 0, %.lr.ph101.preheader.i589 ], [ %indvars.iv.next338.i, %.lr.ph101.i590 ] ; 3 uses
  %i.fsq = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv337.i ; 2 uses
  %i.fsr = getelementptr inbounds nuw i8, ptr %i.fsq, i64 1
  %i.fss = load i8, ptr %i.fsq, align 1, !tbaa !13
  %i.fst = trunc nuw nsw i64 %indvars.iv337.i to i32
  %i.fsu = xor i32 %i.fst, -1
  %i.fsv = add nsw i32 %..i.i, %i.fsu
  %i.fsw = tail call i32 @llvm.smin.i32(i32 %i.fsv, i32 7)
  %i.fsx = sext i32 %i.fsw to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fsr, i8 %i.fss, i64 %i.fsx, i1 false)
  %indvars.iv.next338.i = add nuw nsw i64 %indvars.iv337.i, 8 ; 2 uses
  %i.fsy = icmp samesign ult i64 %indvars.iv.next338.i, %i.fsj
  br i1 %i.fsy, label %.lr.ph101.i590, label %.loopexit78.i, !llvm.loop !69

.loopexit78.i:                                    ; preds = %.lr.ph99.i527, %.lr.ph101.i590, %._crit_edge96.i, %.preheader77.i
  %.6.i.lcssa523.i528 = phi i32 [ 0, %._crit_edge96.i ], [ %.6.i.lcssa525.i, %.preheader77.i ], [ %.6.i.lcssa525.i, %.lr.ph101.i590 ], [ %.6.i.lcssa524527.i, %.lr.ph99.i527 ] ; 5 uses
  %.not16.i = icmp ugt i32 %i.dwo, %i.dww
  br i1 %.not16.i, label %.preheader73.i, label %.preheader75.i529

.preheader75.i529:                                ; preds = %.loopexit78.i
  br i1 %.not241.i516, label %.loopexit53.i, label %.lr.ph103.preheader.i

.lr.ph103.preheader.i:                            ; preds = %.preheader75.i529
  %i.fsz = zext nneg i32 %i.dwx to i64
  %i.fta = add nsw i64 %i.fsz, -2                 ; 2 uses
  %i.ftb = lshr i64 %i.fta, 3
  %i.ftc = add nuw nsw i64 %i.ftb, 1              ; 2 uses
  %xtraiter1461 = and i64 %i.ftc, 3               ; 3 uses
  %i.ftd = icmp ult i64 %i.fta, 24
  br i1 %i.ftd, label %.lr.ph103.i.epil.preheader, label %.lr.ph103.preheader.i.new

.lr.ph103.preheader.i.new:                        ; preds = %.lr.ph103.preheader.i
  %unroll_iter1465 = and i64 %i.ftc, 4611686018427387900
  br label %.lr.ph103.i

.preheader73.i:                                   ; preds = %.loopexit78.i
  %.not248.i587 = icmp eq i32 %i.dww, 0
  br i1 %.not248.i587, label %.loopexit53.i, label %.lr.ph105.preheader.i

.lr.ph105.preheader.i:                            ; preds = %.preheader73.i
  %i.fte = zext nneg i32 %i.dwx to i64
  br label %.lr.ph105.i

.lr.ph103.i:                                      ; preds = %.lr.ph103.i, %.lr.ph103.preheader.i.new
  %indvars.iv340.i = phi i64 [ 0, %.lr.ph103.preheader.i.new ], [ %indvars.iv.next341.i.3, %.lr.ph103.i ] ; 5 uses
  %niter1466 = phi i64 [ 0, %.lr.ph103.preheader.i.new ], [ %niter1466.next.3, %.lr.ph103.i ]
  %i.ftf = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv340.i ; 3 uses
  %i.ftg = load i8, ptr %i.ftf, align 1, !tbaa !13
  %i.fth = zext i8 %i.ftg to i32
  %i.fti = mul nuw nsw i32 %i.fth, 16843009       ; 2 uses
  store i32 %i.fti, ptr %i.ftf, align 4, !tbaa !13
  %i.ftj = getelementptr inbounds nuw i8, ptr %i.ftf, i64 4
  store i32 %i.fti, ptr %i.ftj, align 4, !tbaa !13
  %i.ftk = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv340.i ; 2 uses
  %i.ftl = getelementptr inbounds nuw i8, ptr %i.ftk, i64 8 ; 2 uses
  %i.ftm = load i8, ptr %i.ftl, align 1, !tbaa !13
  %i.ftn = zext i8 %i.ftm to i32
  %i.fto = mul nuw nsw i32 %i.ftn, 16843009       ; 2 uses
  store i32 %i.fto, ptr %i.ftl, align 4, !tbaa !13
  %i.ftp = getelementptr inbounds nuw i8, ptr %i.ftk, i64 12
  store i32 %i.fto, ptr %i.ftp, align 4, !tbaa !13
  %i.ftq = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv340.i ; 2 uses
  %i.ftr = getelementptr inbounds nuw i8, ptr %i.ftq, i64 16 ; 2 uses
  %i.fts = load i8, ptr %i.ftr, align 1, !tbaa !13
  %i.ftt = zext i8 %i.fts to i32
  %i.ftu = mul nuw nsw i32 %i.ftt, 16843009       ; 2 uses
  store i32 %i.ftu, ptr %i.ftr, align 4, !tbaa !13
  %i.ftv = getelementptr inbounds nuw i8, ptr %i.ftq, i64 20
  store i32 %i.ftu, ptr %i.ftv, align 4, !tbaa !13
  %i.ftw = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv340.i ; 2 uses
  %i.ftx = getelementptr inbounds nuw i8, ptr %i.ftw, i64 24 ; 2 uses
  %i.fty = load i8, ptr %i.ftx, align 1, !tbaa !13
  %i.ftz = zext i8 %i.fty to i32
  %i.fua = mul nuw nsw i32 %i.ftz, 16843009       ; 2 uses
  store i32 %i.fua, ptr %i.ftx, align 4, !tbaa !13
  %i.fub = getelementptr inbounds nuw i8, ptr %i.ftw, i64 28
  store i32 %i.fua, ptr %i.fub, align 4, !tbaa !13
  %indvars.iv.next341.i.3 = add nuw nsw i64 %indvars.iv340.i, 32 ; 2 uses
  %niter1466.next.3 = add i64 %niter1466, 4       ; 2 uses
  %niter1466.ncmp.3.not = icmp eq i64 %niter1466.next.3, %unroll_iter1465
  br i1 %niter1466.ncmp.3.not, label %.loopexit53.i.loopexit1391.unr-lcssa, label %.lr.ph103.i, !llvm.loop !70

.lr.ph105.i:                                      ; preds = %.lr.ph105.i, %.lr.ph105.preheader.i
  %indvars.iv343.i = phi i64 [ 0, %.lr.ph105.preheader.i ], [ %indvars.iv.next344.i, %.lr.ph105.i ] ; 3 uses
  %i.fuc = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv343.i ; 2 uses
  %i.fud = getelementptr inbounds nuw i8, ptr %i.fuc, i64 1
  %i.fue = load i8, ptr %i.fuc, align 1, !tbaa !13
  %i.fuf = trunc nuw nsw i64 %indvars.iv343.i to i32
  %i.fug = xor i32 %i.fuf, -1
  %i.fuh = add nsw i32 %i.dwx, %i.fug
  %i.fui = tail call i32 @llvm.smin.i32(i32 %i.fuh, i32 7)
  %i.fuj = sext i32 %i.fui to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fud, i8 %i.fue, i64 %i.fuj, i1 false)
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 8 ; 2 uses
  %i.fuk = icmp samesign ult i64 %indvars.iv.next344.i, %i.fte
  br i1 %i.fuk, label %.lr.ph105.i, label %.loopexit53.i, !llvm.loop !71

.loopexit53.i.loopexit1387.unr-lcssa:             ; preds = %.lr.ph128.i
  %lcmp.mod1475.not = icmp eq i64 %xtraiter1473, 0
  br i1 %lcmp.mod1475.not, label %.loopexit53.i, label %.lr.ph128.i.epil.preheader

.lr.ph128.i.epil.preheader:                       ; preds = %.loopexit53.i.loopexit1387.unr-lcssa, %.lr.ph128.preheader.i
  %indvars.iv368.i.epil.init = phi i64 [ 0, %.lr.ph128.preheader.i ], [ %indvars.iv.next369.i.3, %.loopexit53.i.loopexit1387.unr-lcssa ]
  %lcmp.mod1476 = icmp ne i64 %xtraiter1473, 0
  tail call void @llvm.assume(i1 %lcmp.mod1476)
  br label %.lr.ph128.i.epil

.lr.ph128.i.epil:                                 ; preds = %.lr.ph128.i.epil, %.lr.ph128.i.epil.preheader
  %indvars.iv368.i.epil = phi i64 [ %indvars.iv368.i.epil.init, %.lr.ph128.i.epil.preheader ], [ %indvars.iv.next369.i.epil, %.lr.ph128.i.epil ] ; 2 uses
  %epil.iter1474 = phi i64 [ 0, %.lr.ph128.i.epil.preheader ], [ %epil.iter1474.next, %.lr.ph128.i.epil ]
  %i.ful = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv368.i.epil ; 2 uses
  %i.fum = load i8, ptr %i.ful, align 1, !tbaa !13
  %i.fun = zext i8 %i.fum to i32
  %i.fuo = mul nuw nsw i32 %i.fun, 16843009
  store i32 %i.fuo, ptr %i.ful, align 4, !tbaa !13
  %indvars.iv.next369.i.epil = add nuw nsw i64 %indvars.iv368.i.epil, 4
  %epil.iter1474.next = add i64 %epil.iter1474, 1 ; 2 uses
  %epil.iter1474.cmp.not = icmp eq i64 %epil.iter1474.next, %xtraiter1473
  br i1 %epil.iter1474.cmp.not, label %.loopexit53.i, label %.lr.ph128.i.epil, !llvm.loop !114

.loopexit53.i.loopexit1391.unr-lcssa:             ; preds = %.lr.ph103.i
  %lcmp.mod1463.not = icmp eq i64 %xtraiter1461, 0
  br i1 %lcmp.mod1463.not, label %.loopexit53.i, label %.lr.ph103.i.epil.preheader

.lr.ph103.i.epil.preheader:                       ; preds = %.loopexit53.i.loopexit1391.unr-lcssa, %.lr.ph103.preheader.i
  %indvars.iv340.i.epil.init = phi i64 [ 0, %.lr.ph103.preheader.i ], [ %indvars.iv.next341.i.3, %.loopexit53.i.loopexit1391.unr-lcssa ]
  %lcmp.mod1464 = icmp ne i64 %xtraiter1461, 0
  tail call void @llvm.assume(i1 %lcmp.mod1464)
  br label %.lr.ph103.i.epil

end_hunk_1
begin_hunk_2_@ff_vp9_decode_block:bb.a
  %i.fvc = getelementptr inbounds nuw i8, ptr %i.fvb, i64 864
  %i.fvd = getelementptr inbounds nuw [432 x i8], ptr %i.fvc, i64 %i.fuz ; 4 uses
  %i.fve = getelementptr inbounds nuw [1152 x i8], ptr %i.dwb, i64 %i.fuv
  %i.fvf = getelementptr inbounds nuw i8, ptr %i.fve, i64 576
  %i.fvg = getelementptr inbounds nuw [288 x i8], ptr %i.fvf, i64 %i.fuz ; 4 uses
  %i.fvh = getelementptr inbounds nuw i8, ptr %i.dvl, i64 3924 ; 2 uses
  %i.fvi = load i8, ptr %i.fvh, align 4, !tbaa !237
  %i.fvj = zext i8 %i.fvi to i32                  ; 2 uses
  %i.fvk = lshr i32 %i.dwk, %i.fvj
  %i.fvl = lshr i32 %..i.i, %i.fvj                ; 15 uses
  %i.fvm = getelementptr inbounds nuw i8, ptr %i.dvl, i64 3925 ; 2 uses
  %i.fvn = load i8, ptr %i.fvm, align 1, !tbaa !238
  %i.fvo = zext i8 %i.fvn to i32                  ; 2 uses
  %i.fvp = lshr i32 %i.dwo, %i.fvo
  %i.fvq = lshr i32 %i.dwx, %i.fvo                ; 15 uses
  %i.fvr = getelementptr inbounds nuw i8, ptr %i.dvl, i64 19056
  %i.fvs = getelementptr inbounds nuw i8, ptr %0, i64 52352
  %.not265.i = icmp eq i32 %i.fvq, 0              ; 11 uses
  %.not266.i = icmp eq i32 %i.fvl, 0              ; 11 uses
  %i.fvt = getelementptr inbounds nuw i8, ptr %0, i64 77072 ; 4 uses
  %i.fvu = getelementptr inbounds nuw i8, ptr %i.dxa, i64 74 ; 4 uses
  %i.fvv = getelementptr i8, ptr %0, i64 16       ; 4 uses
  %i.fvw = getelementptr inbounds nuw i8, ptr %0, i64 77120 ; 4 uses
  %i.fvx = icmp eq i32 %i.fvl, %i.fvk             ; 2 uses
  %i.fvy = icmp eq i32 %i.fvq, %i.fvp             ; 2 uses
  %i.fvz = icmp samesign ugt i32 %i.fvl, 1
  %i.fwa = icmp samesign ugt i32 %i.fvq, 1
  %i.fwb = zext nneg i32 %i.fvq to i64            ; 6 uses
  %i.fwc = zext nneg i32 %i.fvl to i64            ; 6 uses
  %i.fwd = add nsw i64 %i.fwb, -1                 ; 5 uses
  %i.fwe = lshr i64 %i.fwd, 3                     ; 2 uses
  %i.fwf = add nuw nsw i64 %i.fwe, 1              ; 6 uses
  %i.fwg = add nsw i64 %i.fwc, -1                 ; 5 uses
  %i.fwh = lshr i64 %i.fwg, 3                     ; 2 uses
  %i.fwi = add nuw nsw i64 %i.fwh, 1              ; 6 uses
  %i.fwj = lshr i64 %i.fwd, 2                     ; 2 uses
  %i.fwk = add nuw nsw i64 %i.fwj, 1              ; 6 uses
  %i.fwl = lshr i64 %i.fwg, 2                     ; 2 uses
  %i.fwm = add nuw nsw i64 %i.fwl, 1              ; 6 uses
  %i.fwn = lshr i64 %i.fwd, 1
  %i.fwo = add nuw i64 %i.fwn, 1                  ; 2 uses
  %i.fwp = lshr i64 %i.fwg, 1
  %i.fwq = add nuw i64 %i.fwp, 1                  ; 2 uses
  %i.fwr = add nsw i64 %i.fwc, -2                 ; 2 uses
  %i.fws = lshr i64 %i.fwr, 1
  %i.fwt = add nuw i64 %i.fws, 1                  ; 2 uses
  %i.fwu = add nsw i64 %i.fwb, -2                 ; 2 uses
  %i.fwv = lshr i64 %i.fwu, 1
  %i.fww = add nuw i64 %i.fwv, 1                  ; 2 uses
  %xtraiter1485 = and i64 %i.fwf, 3               ; 3 uses
  %i.fwx = icmp samesign ult i32 %i.fvq, 25
  %unroll_iter1489 = and i64 %i.fwf, 4611686018427387900
  %lcmp.mod1487.not = icmp eq i64 %xtraiter1485, 0
  %lcmp.mod1488 = icmp ne i64 %xtraiter1485, 0
  %xtraiter1491 = and i64 %i.fwi, 3               ; 3 uses
  %i.fwy = icmp samesign ult i32 %i.fvl, 25
  %unroll_iter1495 = and i64 %i.fwi, 4611686018427387900
  %lcmp.mod1493.not = icmp eq i64 %xtraiter1491, 0
  %lcmp.mod1494 = icmp ne i64 %xtraiter1491, 0
  %i.fwz = icmp eq i64 %i.fwh, 0
  %unroll_iter1501 = and i64 %i.fwi, 4611686018427387902
  %i.fxa = and i64 %i.fwg, 8
  %lcmp.mod1499.not.not = icmp eq i64 %i.fxa, 0
  %lcmp.mod1500 = trunc i64 %i.fwi to i1
  %xtraiter1503 = and i64 %i.fwi, 3               ; 3 uses
  %i.fxb = icmp samesign ult i32 %i.fvl, 25
  %unroll_iter1507 = and i64 %i.fwi, 4611686018427387900
  %lcmp.mod1505.not = icmp eq i64 %xtraiter1503, 0
  %lcmp.mod1506 = icmp ne i64 %xtraiter1503, 0
  %i.fxc = icmp eq i64 %i.fwe, 0
  %unroll_iter1513 = and i64 %i.fwf, 4611686018427387902
  %i.fxd = and i64 %i.fwd, 8
  %lcmp.mod1511.not.not = icmp eq i64 %i.fxd, 0
  %lcmp.mod1512 = trunc i64 %i.fwf to i1
  %xtraiter1515 = and i64 %i.fwf, 3               ; 3 uses
  %i.fxe = icmp samesign ult i32 %i.fvq, 25
  %unroll_iter1519 = and i64 %i.fwf, 4611686018427387900
  %lcmp.mod1517.not = icmp eq i64 %xtraiter1515, 0
  %lcmp.mod1518 = icmp ne i64 %xtraiter1515, 0
  %xtraiter1521 = and i64 %i.fwk, 3               ; 3 uses
  %i.fxf = icmp samesign ult i32 %i.fvq, 13
  %unroll_iter1525 = and i64 %i.fwk, 9223372036854775804
  %lcmp.mod1523.not = icmp eq i64 %xtraiter1521, 0
  %lcmp.mod1524 = icmp ne i64 %xtraiter1521, 0
  %xtraiter1527 = and i64 %i.fwm, 3               ; 3 uses
  %i.fxg = icmp samesign ult i32 %i.fvl, 13
  %unroll_iter1531 = and i64 %i.fwm, 9223372036854775804
  %lcmp.mod1529.not = icmp eq i64 %xtraiter1527, 0
  %lcmp.mod1530 = icmp ne i64 %xtraiter1527, 0
  %i.fxh = icmp eq i64 %i.fwl, 0
  %unroll_iter1537 = and i64 %i.fwm, 9223372036854775806
  %i.fxi = and i64 %i.fwg, 4
  %lcmp.mod1535.not.not = icmp eq i64 %i.fxi, 0
  %lcmp.mod1536 = trunc i64 %i.fwm to i1
  %xtraiter1539 = and i64 %i.fwm, 3               ; 3 uses
  %i.fxj = icmp samesign ult i32 %i.fvl, 13
  %unroll_iter1543 = and i64 %i.fwm, 9223372036854775804
  %lcmp.mod1541.not = icmp eq i64 %xtraiter1539, 0
  %lcmp.mod1542 = icmp ne i64 %xtraiter1539, 0
  %i.fxk = icmp eq i64 %i.fwj, 0
  %unroll_iter1549 = and i64 %i.fwk, 9223372036854775806
  %i.fxl = and i64 %i.fwd, 4
  %lcmp.mod1547.not.not = icmp eq i64 %i.fxl, 0
  %lcmp.mod1548 = trunc i64 %i.fwk to i1
  %xtraiter1551 = and i64 %i.fwk, 3               ; 3 uses
  %i.fxm = icmp samesign ult i32 %i.fvq, 13
  %unroll_iter1555 = and i64 %i.fwk, 9223372036854775804
  %lcmp.mod1553.not = icmp eq i64 %xtraiter1551, 0
  %lcmp.mod1554 = icmp ne i64 %xtraiter1551, 0
  %xtraiter1557 = and i64 %i.fwo, 3               ; 3 uses
  %i.fxn = icmp samesign ult i32 %i.fvq, 7
  %unroll_iter1561 = and i64 %i.fwo, -4
  %lcmp.mod1559.not = icmp eq i64 %xtraiter1557, 0
  %lcmp.mod1560 = icmp ne i64 %xtraiter1557, 0
  %xtraiter1563 = and i64 %i.fwq, 3               ; 3 uses
  %i.fxo = icmp samesign ult i32 %i.fvl, 7
  %unroll_iter1567 = and i64 %i.fwq, -4
  %lcmp.mod1565.not = icmp eq i64 %xtraiter1563, 0
  %lcmp.mod1566 = icmp ne i64 %xtraiter1563, 0
  %xtraiter1569 = and i64 %i.fwt, 3               ; 3 uses
  %i.fxp = icmp ult i64 %i.fwr, 6
  %unroll_iter1573 = and i64 %i.fwt, -4
  %lcmp.mod1571.not = icmp eq i64 %xtraiter1569, 0
  %lcmp.mod1572 = icmp ne i64 %xtraiter1569, 0
  %xtraiter1575 = and i64 %i.fww, 3               ; 3 uses
  %i.fxq = icmp ult i64 %i.fwu, 6
  %unroll_iter1579 = and i64 %i.fww, -4
  %lcmp.mod1577.not = icmp eq i64 %xtraiter1575, 0
  %lcmp.mod1578 = icmp ne i64 %xtraiter1575, 0
  br label %bb.ot

bb.ot:                                            ; preds = %.loopexit.i549, %.loopexit53.i
  %i.fxr = phi i1 [ true, %.loopexit53.i ], [ false, %.loopexit.i549 ]
  %indvars.iv500.i = phi i64 [ 0, %.loopexit53.i ], [ 1, %.loopexit.i549 ] ; 10 uses
  %.9.i240.i = phi i32 [ %.8.i.i530, %.loopexit53.i ], [ %.18.i.i550, %.loopexit.i549 ] ; 9 uses
  %i.fxs = getelementptr inbounds nuw [8 x i8], ptr %i.fvr, i64 %indvars.iv500.i
  %i.fxt = load ptr, ptr %i.fxs, align 8, !tbaa !19
  %i.fxu = load i8, ptr %i.fvh, align 4, !tbaa !237
  %.not699.i.i532 = icmp eq i8 %i.fxu, 0
  %i.fxv = zext i1 %.not699.i.i532 to i32
  %i.fxw = shl i32 %i.dvo, %i.fxv
  %i.fxx = sext i32 %i.fxw to i64
  %i.fxy = getelementptr inbounds i8, ptr %i.fxt, i64 %i.fxx ; 40 uses
  %i.fxz = getelementptr inbounds nuw [16 x i8], ptr %i.fvs, i64 %indvars.iv500.i
  %i.fya = load i8, ptr %i.fvm, align 1, !tbaa !238
  %.not700.i.i533 = icmp eq i8 %i.fya, 0
  %i.fyb = zext i1 %.not700.i.i533 to i32
  %i.fyc = shl nuw nsw i32 %i.dxx, %i.fyb
  %i.fyd = zext nneg i32 %i.fyc to i64
  %i.fye = getelementptr inbounds nuw i8, ptr %i.fxz, i64 %i.fyd ; 40 uses
  %i.fyf = load i32, ptr %i.dxk, align 4, !tbaa !239
  switch i32 %i.fyf, label %.loopexit.i549 [
    i32 0, label %.preheader22.i
    i32 1, label %.preheader28.i
    i32 2, label %.preheader39.i
    i32 3, label %.preheader50.i
  ]

.preheader50.i:                                   ; preds = %bb.ot
  br i1 %.not265.i, label %.preheader49.i, label %.lr.ph164.i.preheader

.lr.ph164.i.preheader:                            ; preds = %.preheader50.i
  br i1 %i.fwx, label %.lr.ph164.i.epil.preheader, label %.lr.ph164.i

.preheader39.i:                                   ; preds = %bb.ot
  br i1 %.not265.i, label %.preheader38.i557, label %.lr.ph186.i.preheader

.lr.ph186.i.preheader:                            ; preds = %.preheader39.i
  br i1 %i.fxf, label %.lr.ph186.i.epil.preheader, label %.lr.ph186.i

.preheader28.i:                                   ; preds = %bb.ot
  br i1 %.not265.i, label %.preheader27.i571, label %.lr.ph210.i.preheader

.lr.ph210.i.preheader:                            ; preds = %.preheader28.i
  br i1 %i.fxn, label %.lr.ph210.i.epil.preheader, label %.lr.ph210.i

.preheader22.i:                                   ; preds = %bb.ot
  br i1 %.not265.i, label %.loopexit.i549, label %.preheader.lr.ph.i582

.preheader.lr.ph.i582:                            ; preds = %.preheader22.i
  %i.fyg = getelementptr inbounds nuw [8 x i8], ptr %i.fvt, i64 %indvars.iv500.i
  %i.fyh = getelementptr inbounds nuw [8 x i8], ptr %i.fvw, i64 %indvars.iv500.i
  br label %.preheader.i583

.preheader.i583:                                  ; preds = %._crit_edge232.i, %.preheader.lr.ph.i582
  %indvars.iv495.i = phi i64 [ 0, %.preheader.lr.ph.i582 ], [ %indvars.iv.next496.i, %._crit_edge232.i ] ; 2 uses
  %.10.i237.i = phi i32 [ %.9.i240.i, %.preheader.lr.ph.i582 ], [ %.11.i.lcssa.i586, %._crit_edge232.i ] ; 2 uses
  %.24.i235.i = phi i32 [ 0, %.preheader.lr.ph.i582 ], [ %.25.i.lcssa.i585, %._crit_edge232.i ] ; 2 uses
  br i1 %.not266.i, label %._crit_edge232.i, label %.lr.ph231.i

.lr.ph231.i:                                      ; preds = %.preheader.i583
  %i.fyi = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv495.i ; 2 uses
  %i.fyj = sext i32 %.24.i235.i to i64
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ou, %.lr.ph231.i
  %indvars.iv488.i = phi i64 [ %i.fyj, %.lr.ph231.i ], [ %indvars.iv.next489.i, %bb.ou ] ; 3 uses
  %indvars.iv486.i = phi i64 [ 0, %.lr.ph231.i ], [ %indvars.iv.next487.i, %bb.ou ] ; 2 uses
  %.11.i230.i = phi i32 [ %.10.i237.i, %.lr.ph231.i ], [ %i.fyw, %bb.ou ]
  %i.fyk = load ptr, ptr %i.fyg, align 8, !tbaa !243
  %28 = trunc nsw i64 %indvars.iv488.i to i32
  %29 = shl i32 %28, 5
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [2 x i8], ptr %i.fyk, i64 %30
  %i.fyl = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv486.i ; 2 uses
  %i.fym = load i8, ptr %i.fyl, align 1, !tbaa !13
  %i.fyn = zext i8 %i.fym to i32
  %i.fyo = load i8, ptr %i.fyi, align 1, !tbaa !13
  %i.fyp = zext i8 %i.fyo to i32
  %i.fyq = add nuw nsw i32 %i.fyp, %i.fyn
  %.val6.i = load ptr, ptr %0, align 16, !tbaa !150
  %.val7.i584 = load ptr, ptr %i.fvv, align 16, !tbaa !203
  %i.fyr = getelementptr i8, ptr %.val6.i, i64 1
  %.val6.val.i = load i8, ptr %i.fyr, align 1, !tbaa !247
  %i.fys = tail call fastcc i32 @decode_coeffs_b_16bpp(i8 %.val6.val.i, ptr %.val7.i584, ptr noundef %31, i32 noundef 16, ptr noundef nonnull %i.fvd, ptr noundef nonnull %i.fvg, ptr noundef nonnull %i.fva, i32 noundef %i.fyq, ptr noundef %i.dxo, ptr noundef %i.dxq, ptr noundef nonnull %i.dyc, ptr noundef nonnull %i.fvu) #8 ; 2 uses
  %i.fyt = icmp ne i32 %i.fys, 0                  ; 2 uses
  %i.fyu = zext i1 %i.fyt to i32
  %i.fyv = zext i1 %i.fyt to i8                   ; 2 uses
  store i8 %i.fyv, ptr %i.fyi, align 1, !tbaa !13
  store i8 %i.fyv, ptr %i.fyl, align 1, !tbaa !13
  %i.fyw = or i32 %.11.i230.i, %i.fyu             ; 2 uses
  %i.fyx = trunc i32 %i.fys to i8
  %i.fyy = load ptr, ptr %i.fyh, align 8, !tbaa !19
  %i.fyz = getelementptr inbounds i8, ptr %i.fyy, i64 %indvars.iv488.i
  store i8 %i.fyx, ptr %i.fyz, align 1, !tbaa !13
  %indvars.iv.next487.i = add nuw nsw i64 %indvars.iv486.i, 1 ; 2 uses
  %indvars.iv.next489.i = add nsw i64 %indvars.iv488.i, 1 ; 2 uses
  %exitcond494.not.i = icmp eq i64 %indvars.iv.next487.i, %i.fwc
  br i1 %exitcond494.not.i, label %._crit_edge232.loopexit.i, label %bb.ou, !llvm.loop !74

._crit_edge232.loopexit.i:                        ; preds = %bb.ou
  %i.fza = trunc nsw i64 %indvars.iv.next489.i to i32
  br label %._crit_edge232.i

._crit_edge232.i:                                 ; preds = %._crit_edge232.loopexit.i, %.preheader.i583
  %.25.i.lcssa.i585 = phi i32 [ %.24.i235.i, %.preheader.i583 ], [ %i.fza, %._crit_edge232.loopexit.i ]
  %.11.i.lcssa.i586 = phi i32 [ %.10.i237.i, %.preheader.i583 ], [ %i.fyw, %._crit_edge232.loopexit.i ] ; 2 uses
  %indvars.iv.next496.i = add nuw nsw i64 %indvars.iv495.i, 1 ; 2 uses
  %exitcond499.not.i = icmp eq i64 %indvars.iv.next496.i, %i.fwb
  br i1 %exitcond499.not.i, label %.loopexit.i549, label %.preheader.i583, !llvm.loop !75

.preheader27.i571.loopexit.unr-lcssa:             ; preds = %.lr.ph210.i
  br i1 %lcmp.mod1559.not, label %.preheader27.i571, label %.lr.ph210.i.epil.preheader

.lr.ph210.i.epil.preheader:                       ; preds = %.preheader27.i571.loopexit.unr-lcssa, %.lr.ph210.i.preheader
  %indvars.iv464.i569.epil.init = phi i64 [ 0, %.lr.ph210.i.preheader ], [ %indvars.iv.next465.i570.3, %.preheader27.i571.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1560)
  br label %.lr.ph210.i.epil

.lr.ph210.i.epil:                                 ; preds = %.lr.ph210.i.epil, %.lr.ph210.i.epil.preheader
  %indvars.iv464.i569.epil = phi i64 [ %indvars.iv.next465.i570.epil, %.lr.ph210.i.epil ], [ %indvars.iv464.i569.epil.init, %.lr.ph210.i.epil.preheader ] ; 2 uses
  %epil.iter1558 = phi i64 [ %epil.iter1558.next, %.lr.ph210.i.epil ], [ 0, %.lr.ph210.i.epil.preheader ]
  %i.fzb = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv464.i569.epil ; 2 uses
  %i.fzc = load i16, ptr %i.fzb, align 2, !tbaa !13
  %i.fzd = icmp ne i16 %i.fzc, 0
  %i.fze = zext i1 %i.fzd to i8
  store i8 %i.fze, ptr %i.fzb, align 2, !tbaa !13
  %indvars.iv.next465.i570.epil = add nuw nsw i64 %indvars.iv464.i569.epil, 2
  %epil.iter1558.next = add i64 %epil.iter1558, 1 ; 2 uses
  %epil.iter1558.cmp.not = icmp eq i64 %epil.iter1558.next, %xtraiter1557
  br i1 %epil.iter1558.cmp.not, label %.preheader27.i571, label %.lr.ph210.i.epil, !llvm.loop !116

.preheader27.i571:                                ; preds = %.preheader27.i571.loopexit.unr-lcssa, %.lr.ph210.i.epil, %.preheader28.i
  br i1 %.not266.i, label %.preheader26.i, label %.lr.ph212.i.preheader

.lr.ph212.i.preheader:                            ; preds = %.preheader27.i571
  br i1 %i.fxo, label %.lr.ph212.i.epil.preheader, label %.lr.ph212.i

.lr.ph210.i:                                      ; preds = %.lr.ph210.i.preheader, %.lr.ph210.i
  %indvars.iv464.i569 = phi i64 [ %indvars.iv.next465.i570.3, %.lr.ph210.i ], [ 0, %.lr.ph210.i.preheader ] ; 5 uses
  %niter1562 = phi i64 [ %niter1562.next.3, %.lr.ph210.i ], [ 0, %.lr.ph210.i.preheader ]
  %i.fzf = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv464.i569 ; 2 uses
  %i.fzg = load i16, ptr %i.fzf, align 2, !tbaa !13
  %i.fzh = icmp ne i16 %i.fzg, 0
  %i.fzi = zext i1 %i.fzh to i8
  store i8 %i.fzi, ptr %i.fzf, align 2, !tbaa !13
  %i.fzj = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv464.i569
  %i.fzk = getelementptr inbounds nuw i8, ptr %i.fzj, i64 2 ; 2 uses
  %i.fzl = load i16, ptr %i.fzk, align 2, !tbaa !13
  %i.fzm = icmp ne i16 %i.fzl, 0
  %i.fzn = zext i1 %i.fzm to i8
  store i8 %i.fzn, ptr %i.fzk, align 2, !tbaa !13
  %i.fzo = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv464.i569
  %i.fzp = getelementptr inbounds nuw i8, ptr %i.fzo, i64 4 ; 2 uses
  %i.fzq = load i16, ptr %i.fzp, align 2, !tbaa !13
  %i.fzr = icmp ne i16 %i.fzq, 0
  %i.fzs = zext i1 %i.fzr to i8
  store i8 %i.fzs, ptr %i.fzp, align 2, !tbaa !13
  %i.fzt = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv464.i569
  %i.fzu = getelementptr inbounds nuw i8, ptr %i.fzt, i64 6 ; 2 uses
  %i.fzv = load i16, ptr %i.fzu, align 2, !tbaa !13
  %i.fzw = icmp ne i16 %i.fzv, 0
  %i.fzx = zext i1 %i.fzw to i8
  store i8 %i.fzx, ptr %i.fzu, align 2, !tbaa !13
  %indvars.iv.next465.i570.3 = add nuw nsw i64 %indvars.iv464.i569, 8 ; 2 uses
  %niter1562.next.3 = add i64 %niter1562, 4       ; 2 uses
  %niter1562.ncmp.3.not = icmp eq i64 %niter1562.next.3, %unroll_iter1561
  br i1 %niter1562.ncmp.3.not, label %.preheader27.i571.loopexit.unr-lcssa, label %.lr.ph210.i, !llvm.loop !77

.preheader26.i.loopexit.unr-lcssa:                ; preds = %.lr.ph212.i
  br i1 %lcmp.mod1565.not, label %.preheader26.i, label %.lr.ph212.i.epil.preheader

.lr.ph212.i.epil.preheader:                       ; preds = %.preheader26.i.loopexit.unr-lcssa, %.lr.ph212.i.preheader
  %indvars.iv467.i.epil.init = phi i64 [ 0, %.lr.ph212.i.preheader ], [ %indvars.iv.next468.i.3, %.preheader26.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1566)
  br label %.lr.ph212.i.epil

.lr.ph212.i.epil:                                 ; preds = %.lr.ph212.i.epil, %.lr.ph212.i.epil.preheader
  %indvars.iv467.i.epil = phi i64 [ %indvars.iv.next468.i.epil, %.lr.ph212.i.epil ], [ %indvars.iv467.i.epil.init, %.lr.ph212.i.epil.preheader ] ; 2 uses
  %epil.iter1564 = phi i64 [ %epil.iter1564.next, %.lr.ph212.i.epil ], [ 0, %.lr.ph212.i.epil.preheader ]
  %i.fzy = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv467.i.epil ; 2 uses
  %i.fzz = load i16, ptr %i.fzy, align 2, !tbaa !13
  %i.gaa = icmp ne i16 %i.fzz, 0
  %i.gab = zext i1 %i.gaa to i8
  store i8 %i.gab, ptr %i.fzy, align 2, !tbaa !13
  %indvars.iv.next468.i.epil = add nuw nsw i64 %indvars.iv467.i.epil, 2
  %epil.iter1564.next = add i64 %epil.iter1564, 1 ; 2 uses
  %epil.iter1564.cmp.not = icmp eq i64 %epil.iter1564.next, %xtraiter1563
  br i1 %epil.iter1564.cmp.not, label %.preheader26.i, label %.lr.ph212.i.epil, !llvm.loop !117

.preheader26.i:                                   ; preds = %.preheader26.i.loopexit.unr-lcssa, %.lr.ph212.i.epil, %.preheader27.i571
  br i1 %.not265.i, label %.preheader25.i577, label %.preheader19.lr.ph.i

.preheader19.lr.ph.i:                             ; preds = %.preheader26.i
  %i.gac = getelementptr inbounds nuw [8 x i8], ptr %i.fvt, i64 %indvars.iv500.i
  %i.gad = getelementptr inbounds nuw [8 x i8], ptr %i.fvw, i64 %indvars.iv500.i
  br label %.preheader19.i572

.lr.ph212.i:                                      ; preds = %.lr.ph212.i.preheader, %.lr.ph212.i
  %indvars.iv467.i = phi i64 [ %indvars.iv.next468.i.3, %.lr.ph212.i ], [ 0, %.lr.ph212.i.preheader ] ; 5 uses
  %niter1568 = phi i64 [ %niter1568.next.3, %.lr.ph212.i ], [ 0, %.lr.ph212.i.preheader ]
  %i.gae = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv467.i ; 2 uses
  %i.gaf = load i16, ptr %i.gae, align 2, !tbaa !13
  %i.gag = icmp ne i16 %i.gaf, 0
  %i.gah = zext i1 %i.gag to i8
  store i8 %i.gah, ptr %i.gae, align 2, !tbaa !13
  %i.gai = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv467.i
  %i.gaj = getelementptr inbounds nuw i8, ptr %i.gai, i64 2 ; 2 uses
  %i.gak = load i16, ptr %i.gaj, align 2, !tbaa !13
  %i.gal = icmp ne i16 %i.gak, 0
  %i.gam = zext i1 %i.gal to i8
  store i8 %i.gam, ptr %i.gaj, align 2, !tbaa !13
  %i.gan = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv467.i
  %i.gao = getelementptr inbounds nuw i8, ptr %i.gan, i64 4 ; 2 uses
  %i.gap = load i16, ptr %i.gao, align 2, !tbaa !13
  %i.gaq = icmp ne i16 %i.gap, 0
  %i.gar = zext i1 %i.gaq to i8
  store i8 %i.gar, ptr %i.gao, align 2, !tbaa !13
  %i.gas = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv467.i
  %i.gat = getelementptr inbounds nuw i8, ptr %i.gas, i64 6 ; 2 uses
  %i.gau = load i16, ptr %i.gat, align 2, !tbaa !13
  %i.gav = icmp ne i16 %i.gau, 0
  %i.gaw = zext i1 %i.gav to i8
  store i8 %i.gaw, ptr %i.gat, align 2, !tbaa !13
  %indvars.iv.next468.i.3 = add nuw nsw i64 %indvars.iv467.i, 8 ; 2 uses
  %niter1568.next.3 = add i64 %niter1568, 4       ; 2 uses
  %niter1568.ncmp.3.not = icmp eq i64 %niter1568.next.3, %unroll_iter1567
  br i1 %niter1568.ncmp.3.not, label %.preheader26.i.loopexit.unr-lcssa, label %.lr.ph212.i, !llvm.loop !79

.preheader25.i577:                                ; preds = %._crit_edge217.i, %.preheader26.i
  %.12.i.lcssa.i578 = phi i32 [ %.9.i240.i, %.preheader26.i ], [ %.13.i.lcssa.i576, %._crit_edge217.i ] ; 3 uses
  br i1 %i.fvz, label %.lr.ph225.i.preheader, label %.preheader23.i579

.lr.ph225.i.preheader:                            ; preds = %.preheader25.i577
  br i1 %i.fxp, label %.lr.ph225.i.epil.preheader, label %.lr.ph225.i

.preheader19.i572:                                ; preds = %._crit_edge217.i, %.preheader19.lr.ph.i
  %indvars.iv477.i = phi i64 [ 0, %.preheader19.lr.ph.i ], [ %indvars.iv.next478.i, %._crit_edge217.i ] ; 2 uses
  %.12.i222.i = phi i32 [ %.9.i240.i, %.preheader19.lr.ph.i ], [ %.13.i.lcssa.i576, %._crit_edge217.i ] ; 2 uses
  %.28.i220.i = phi i32 [ 0, %.preheader19.lr.ph.i ], [ %.29.i.lcssa.i575, %._crit_edge217.i ] ; 2 uses
  br i1 %.not266.i, label %._crit_edge217.i, label %.lr.ph216.i

.lr.ph216.i:                                      ; preds = %.preheader19.i572
  %i.gax = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv477.i ; 2 uses
  %i.gay = sext i32 %.28.i220.i to i64
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ov, %.lr.ph216.i
  %indvars.iv472.i573 = phi i64 [ %i.gay, %.lr.ph216.i ], [ %indvars.iv.next473.i574, %bb.ov ] ; 3 uses
  %indvars.iv470.i = phi i64 [ 0, %.lr.ph216.i ], [ %indvars.iv.next471.i, %bb.ov ] ; 2 uses
  %.13.i215.i = phi i32 [ %.12.i222.i, %.lr.ph216.i ], [ %i.gbl, %bb.ov ]
  %i.gaz = load ptr, ptr %i.gac, align 8, !tbaa !243
  %32 = trunc nsw i64 %indvars.iv472.i573 to i32
  %33 = shl i32 %32, 5
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i8], ptr %i.gaz, i64 %34
  %i.gba = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv470.i ; 2 uses
  %i.gbb = load i8, ptr %i.gba, align 1, !tbaa !13
  %i.gbc = zext i8 %i.gbb to i32
  %i.gbd = load i8, ptr %i.gax, align 1, !tbaa !13
  %i.gbe = zext i8 %i.gbd to i32
  %i.gbf = add nuw nsw i32 %i.gbe, %i.gbc
  %.val8.i = load ptr, ptr %0, align 16, !tbaa !150
  %.val9.i = load ptr, ptr %i.fvv, align 16, !tbaa !203
  %i.gbg = getelementptr i8, ptr %.val8.i, i64 1
  %.val8.val.i = load i8, ptr %i.gbg, align 1, !tbaa !247
  %i.gbh = tail call fastcc i32 @decode_coeffs_b_16bpp(i8 %.val8.val.i, ptr %.val9.i, ptr noundef %35, i32 noundef 64, ptr noundef nonnull %i.fvd, ptr noundef nonnull %i.fvg, ptr noundef nonnull %i.fva, i32 noundef %i.gbf, ptr noundef %i.dxo, ptr noundef %i.dxq, ptr noundef nonnull %i.dyc, ptr noundef nonnull %i.fvu) #8 ; 2 uses
  %i.gbi = icmp ne i32 %i.gbh, 0                  ; 2 uses
  %i.gbj = zext i1 %i.gbi to i32
  %i.gbk = zext i1 %i.gbi to i8                   ; 2 uses
  store i8 %i.gbk, ptr %i.gax, align 1, !tbaa !13
  store i8 %i.gbk, ptr %i.gba, align 1, !tbaa !13
  %i.gbl = or i32 %.13.i215.i, %i.gbj             ; 2 uses
  %i.gbm = trunc i32 %i.gbh to i8
  %i.gbn = load ptr, ptr %i.gad, align 8, !tbaa !19
  %i.gbo = getelementptr inbounds i8, ptr %i.gbn, i64 %indvars.iv472.i573
  store i8 %i.gbm, ptr %i.gbo, align 1, !tbaa !13
  %indvars.iv.next471.i = add nuw nsw i64 %indvars.iv470.i, 2 ; 2 uses
  %indvars.iv.next473.i574 = add nsw i64 %indvars.iv472.i573, 4 ; 2 uses
  %i.gbp = icmp samesign ult i64 %indvars.iv.next471.i, %i.fwc
  br i1 %i.gbp, label %bb.ov, label %._crit_edge217.loopexit.i, !llvm.loop !80

._crit_edge217.loopexit.i:                        ; preds = %bb.ov
  %i.gbq = trunc nsw i64 %indvars.iv.next473.i574 to i32
  br label %._crit_edge217.i

._crit_edge217.i:                                 ; preds = %._crit_edge217.loopexit.i, %.preheader19.i572
  %.29.i.lcssa.i575 = phi i32 [ %.28.i220.i, %.preheader19.i572 ], [ %i.gbq, %._crit_edge217.loopexit.i ]
  %.13.i.lcssa.i576 = phi i32 [ %.12.i222.i, %.preheader19.i572 ], [ %i.gbl, %._crit_edge217.loopexit.i ] ; 2 uses
  %indvars.iv.next478.i = add nuw nsw i64 %indvars.iv477.i, 2 ; 2 uses
  %i.gbr = icmp samesign ult i64 %indvars.iv.next478.i, %i.fwb
  br i1 %i.gbr, label %.preheader19.i572, label %.preheader25.i577, !llvm.loop !81

.preheader23.i579.loopexit.unr-lcssa:             ; preds = %.lr.ph225.i
  br i1 %lcmp.mod1571.not, label %.preheader23.i579, label %.lr.ph225.i.epil.preheader

.lr.ph225.i.epil.preheader:                       ; preds = %.preheader23.i579.loopexit.unr-lcssa, %.lr.ph225.i.preheader
  %indvars.iv480.i580.epil.init = phi i64 [ 1, %.lr.ph225.i.preheader ], [ %indvars.iv.next481.i581.3, %.preheader23.i579.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1572)
  br label %.lr.ph225.i.epil

.lr.ph225.i.epil:                                 ; preds = %.lr.ph225.i.epil, %.lr.ph225.i.epil.preheader
  %indvars.iv480.i580.epil = phi i64 [ %indvars.iv.next481.i581.epil, %.lr.ph225.i.epil ], [ %indvars.iv480.i580.epil.init, %.lr.ph225.i.epil.preheader ] ; 2 uses
  %epil.iter1570 = phi i64 [ %epil.iter1570.next, %.lr.ph225.i.epil ], [ 0, %.lr.ph225.i.epil.preheader ]
  %i.gbs = getelementptr i8, ptr %i.fxy, i64 %indvars.iv480.i580.epil ; 2 uses
  %i.gbt = getelementptr i8, ptr %i.gbs, i64 -1
  %i.gbu = load i8, ptr %i.gbt, align 1, !tbaa !13
  store i8 %i.gbu, ptr %i.gbs, align 1, !tbaa !13
  %indvars.iv.next481.i581.epil = add nuw nsw i64 %indvars.iv480.i580.epil, 2
  %epil.iter1570.next = add i64 %epil.iter1570, 1 ; 2 uses
  %epil.iter1570.cmp.not = icmp eq i64 %epil.iter1570.next, %xtraiter1569
  br i1 %epil.iter1570.cmp.not, label %.preheader23.i579, label %.lr.ph225.i.epil, !llvm.loop !118

.preheader23.i579:                                ; preds = %.preheader23.i579.loopexit.unr-lcssa, %.lr.ph225.i.epil, %.preheader25.i577
  br i1 %i.fwa, label %.lr.ph227.i.preheader, label %.loopexit.i549

.lr.ph227.i.preheader:                            ; preds = %.preheader23.i579
  br i1 %i.fxq, label %.lr.ph227.i.epil.preheader, label %.lr.ph227.i

.lr.ph225.i:                                      ; preds = %.lr.ph225.i.preheader, %.lr.ph225.i
  %indvars.iv480.i580 = phi i64 [ %indvars.iv.next481.i581.3, %.lr.ph225.i ], [ 1, %.lr.ph225.i.preheader ] ; 5 uses
  %niter1574 = phi i64 [ %niter1574.next.3, %.lr.ph225.i ], [ 0, %.lr.ph225.i.preheader ]
  %i.gbv = getelementptr i8, ptr %i.fxy, i64 %indvars.iv480.i580 ; 2 uses
  %i.gbw = getelementptr i8, ptr %i.gbv, i64 -1
  %i.gbx = load i8, ptr %i.gbw, align 1, !tbaa !13
  store i8 %i.gbx, ptr %i.gbv, align 1, !tbaa !13
  %i.gby = getelementptr i8, ptr %i.fxy, i64 %indvars.iv480.i580 ; 2 uses
  %i.gbz = getelementptr i8, ptr %i.gby, i64 2
  %i.gca = getelementptr i8, ptr %i.gby, i64 1
  %i.gcb = load i8, ptr %i.gca, align 1, !tbaa !13
  store i8 %i.gcb, ptr %i.gbz, align 1, !tbaa !13
  %i.gcc = getelementptr i8, ptr %i.fxy, i64 %indvars.iv480.i580 ; 2 uses
  %i.gcd = getelementptr i8, ptr %i.gcc, i64 4
  %i.gce = getelementptr i8, ptr %i.gcc, i64 3
  %i.gcf = load i8, ptr %i.gce, align 1, !tbaa !13
  store i8 %i.gcf, ptr %i.gcd, align 1, !tbaa !13
  %i.gcg = getelementptr i8, ptr %i.fxy, i64 %indvars.iv480.i580 ; 2 uses
  %i.gch = getelementptr i8, ptr %i.gcg, i64 6
  %i.gci = getelementptr i8, ptr %i.gcg, i64 5
  %i.gcj = load i8, ptr %i.gci, align 1, !tbaa !13
  store i8 %i.gcj, ptr %i.gch, align 1, !tbaa !13
  %indvars.iv.next481.i581.3 = add nuw nsw i64 %indvars.iv480.i580, 8 ; 2 uses
  %niter1574.next.3 = add i64 %niter1574, 4       ; 2 uses
  %niter1574.ncmp.3.not = icmp eq i64 %niter1574.next.3, %unroll_iter1573
  br i1 %niter1574.ncmp.3.not, label %.preheader23.i579.loopexit.unr-lcssa, label %.lr.ph225.i, !llvm.loop !83

.lr.ph227.i:                                      ; preds = %.lr.ph227.i.preheader, %.lr.ph227.i
  %indvars.iv483.i = phi i64 [ %indvars.iv.next484.i.3, %.lr.ph227.i ], [ 1, %.lr.ph227.i.preheader ] ; 5 uses
  %niter1580 = phi i64 [ %niter1580.next.3, %.lr.ph227.i ], [ 0, %.lr.ph227.i.preheader ]
  %i.gck = getelementptr i8, ptr %i.fye, i64 %indvars.iv483.i ; 2 uses
  %i.gcl = getelementptr i8, ptr %i.gck, i64 -1
  %i.gcm = load i8, ptr %i.gcl, align 1, !tbaa !13
  store i8 %i.gcm, ptr %i.gck, align 1, !tbaa !13
  %i.gcn = getelementptr i8, ptr %i.fye, i64 %indvars.iv483.i ; 2 uses
  %i.gco = getelementptr i8, ptr %i.gcn, i64 2
  %i.gcp = getelementptr i8, ptr %i.gcn, i64 1
  %i.gcq = load i8, ptr %i.gcp, align 1, !tbaa !13
  store i8 %i.gcq, ptr %i.gco, align 1, !tbaa !13
  %i.gcr = getelementptr i8, ptr %i.fye, i64 %indvars.iv483.i ; 2 uses
  %i.gcs = getelementptr i8, ptr %i.gcr, i64 4
  %i.gct = getelementptr i8, ptr %i.gcr, i64 3
  %i.gcu = load i8, ptr %i.gct, align 1, !tbaa !13
  store i8 %i.gcu, ptr %i.gcs, align 1, !tbaa !13
  %i.gcv = getelementptr i8, ptr %i.fye, i64 %indvars.iv483.i ; 2 uses
  %i.gcw = getelementptr i8, ptr %i.gcv, i64 6
  %i.gcx = getelementptr i8, ptr %i.gcv, i64 5
  %i.gcy = load i8, ptr %i.gcx, align 1, !tbaa !13
  store i8 %i.gcy, ptr %i.gcw, align 1, !tbaa !13
  %indvars.iv.next484.i.3 = add nuw nsw i64 %indvars.iv483.i, 8 ; 2 uses
  %niter1580.next.3 = add i64 %niter1580, 4       ; 2 uses
  %niter1580.ncmp.3.not = icmp eq i64 %niter1580.next.3, %unroll_iter1579
  br i1 %niter1580.ncmp.3.not, label %.loopexit.i549.loopexit1371.unr-lcssa.a, label %.lr.ph227.i, !llvm.loop !84

.preheader38.i557.loopexit.unr-lcssa:             ; preds = %.lr.ph186.i
  br i1 %lcmp.mod1523.not, label %.preheader38.i557, label %.lr.ph186.i.epil.preheader

.lr.ph186.i.epil.preheader:                       ; preds = %.preheader38.i557.loopexit.unr-lcssa, %.lr.ph186.i.preheader
  %indvars.iv436.i555.epil.init = phi i64 [ 0, %.lr.ph186.i.preheader ], [ %indvars.iv.next437.i556.3, %.preheader38.i557.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1524)
  br label %.lr.ph186.i.epil

.lr.ph186.i.epil:                                 ; preds = %.lr.ph186.i.epil, %.lr.ph186.i.epil.preheader
  %indvars.iv436.i555.epil = phi i64 [ %indvars.iv.next437.i556.epil, %.lr.ph186.i.epil ], [ %indvars.iv436.i555.epil.init, %.lr.ph186.i.epil.preheader ] ; 2 uses
  %epil.iter1522 = phi i64 [ %epil.iter1522.next, %.lr.ph186.i.epil ], [ 0, %.lr.ph186.i.epil.preheader ]
  %i.gcz = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv436.i555.epil ; 2 uses
  %i.gda = load i32, ptr %i.gcz, align 4, !tbaa !13
  %i.gdb = icmp ne i32 %i.gda, 0
  %i.gdc = zext i1 %i.gdb to i8
  store i8 %i.gdc, ptr %i.gcz, align 4, !tbaa !13
  %indvars.iv.next437.i556.epil = add nuw nsw i64 %indvars.iv436.i555.epil, 4
  %epil.iter1522.next = add i64 %epil.iter1522, 1 ; 2 uses
  %epil.iter1522.cmp.not = icmp eq i64 %epil.iter1522.next, %xtraiter1521
  br i1 %epil.iter1522.cmp.not, label %.preheader38.i557, label %.lr.ph186.i.epil, !llvm.loop !119

.preheader38.i557:                                ; preds = %.preheader38.i557.loopexit.unr-lcssa, %.lr.ph186.i.epil, %.preheader39.i
  br i1 %.not266.i, label %.preheader37.i, label %.lr.ph188.i.preheader

.lr.ph188.i.preheader:                            ; preds = %.preheader38.i557
  br i1 %i.fxg, label %.lr.ph188.i.epil.preheader, label %.lr.ph188.i

.lr.ph186.i:                                      ; preds = %.lr.ph186.i.preheader, %.lr.ph186.i
  %indvars.iv436.i555 = phi i64 [ %indvars.iv.next437.i556.3, %.lr.ph186.i ], [ 0, %.lr.ph186.i.preheader ] ; 5 uses
  %niter1526 = phi i64 [ %niter1526.next.3, %.lr.ph186.i ], [ 0, %.lr.ph186.i.preheader ]
  %i.gdd = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv436.i555 ; 2 uses
  %i.gde = load i32, ptr %i.gdd, align 4, !tbaa !13
  %i.gdf = icmp ne i32 %i.gde, 0
  %i.gdg = zext i1 %i.gdf to i8
  store i8 %i.gdg, ptr %i.gdd, align 4, !tbaa !13
  %i.gdh = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv436.i555
  %i.gdi = getelementptr inbounds nuw i8, ptr %i.gdh, i64 4 ; 2 uses
  %i.gdj = load i32, ptr %i.gdi, align 4, !tbaa !13
  %i.gdk = icmp ne i32 %i.gdj, 0
  %i.gdl = zext i1 %i.gdk to i8
  store i8 %i.gdl, ptr %i.gdi, align 4, !tbaa !13
  %i.gdm = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv436.i555
  %i.gdn = getelementptr inbounds nuw i8, ptr %i.gdm, i64 8 ; 2 uses
  %i.gdo = load i32, ptr %i.gdn, align 4, !tbaa !13
  %i.gdp = icmp ne i32 %i.gdo, 0
  %i.gdq = zext i1 %i.gdp to i8
  store i8 %i.gdq, ptr %i.gdn, align 4, !tbaa !13
  %i.gdr = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv436.i555
  %i.gds = getelementptr inbounds nuw i8, ptr %i.gdr, i64 12 ; 2 uses
  %i.gdt = load i32, ptr %i.gds, align 4, !tbaa !13
  %i.gdu = icmp ne i32 %i.gdt, 0
  %i.gdv = zext i1 %i.gdu to i8
  store i8 %i.gdv, ptr %i.gds, align 4, !tbaa !13
  %indvars.iv.next437.i556.3 = add nuw nsw i64 %indvars.iv436.i555, 16 ; 2 uses
  %niter1526.next.3 = add nuw nsw i64 %niter1526, 4 ; 2 uses
  %niter1526.ncmp.3.not = icmp eq i64 %niter1526.next.3, %unroll_iter1525
  br i1 %niter1526.ncmp.3.not, label %.preheader38.i557.loopexit.unr-lcssa, label %.lr.ph186.i, !llvm.loop !86

.preheader37.i.loopexit.unr-lcssa:                ; preds = %.lr.ph188.i
  br i1 %lcmp.mod1529.not, label %.preheader37.i, label %.lr.ph188.i.epil.preheader

.lr.ph188.i.epil.preheader:                       ; preds = %.preheader37.i.loopexit.unr-lcssa, %.lr.ph188.i.preheader
  %indvars.iv439.i.epil.init = phi i64 [ 0, %.lr.ph188.i.preheader ], [ %indvars.iv.next440.i.3, %.preheader37.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1530)
  br label %.lr.ph188.i.epil

.lr.ph188.i.epil:                                 ; preds = %.lr.ph188.i.epil, %.lr.ph188.i.epil.preheader
  %indvars.iv439.i.epil = phi i64 [ %indvars.iv.next440.i.epil, %.lr.ph188.i.epil ], [ %indvars.iv439.i.epil.init, %.lr.ph188.i.epil.preheader ] ; 2 uses
  %epil.iter1528 = phi i64 [ %epil.iter1528.next, %.lr.ph188.i.epil ], [ 0, %.lr.ph188.i.epil.preheader ]
  %i.gdw = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv439.i.epil ; 2 uses
  %i.gdx = load i32, ptr %i.gdw, align 4, !tbaa !13
  %i.gdy = icmp ne i32 %i.gdx, 0
  %i.gdz = zext i1 %i.gdy to i8
  store i8 %i.gdz, ptr %i.gdw, align 4, !tbaa !13
  %indvars.iv.next440.i.epil = add nuw nsw i64 %indvars.iv439.i.epil, 4
  %epil.iter1528.next = add i64 %epil.iter1528, 1 ; 2 uses
  %epil.iter1528.cmp.not = icmp eq i64 %epil.iter1528.next, %xtraiter1527
  br i1 %epil.iter1528.cmp.not, label %.preheader37.i, label %.lr.ph188.i.epil, !llvm.loop !120

.preheader37.i:                                   ; preds = %.preheader37.i.loopexit.unr-lcssa, %.lr.ph188.i.epil, %.preheader38.i557
  br i1 %.not265.i, label %._crit_edge199.i, label %.preheader20.lr.ph.i

.preheader20.lr.ph.i:                             ; preds = %.preheader37.i
  %i.gea = getelementptr inbounds nuw [8 x i8], ptr %i.fvt, i64 %indvars.iv500.i
  %i.geb = getelementptr inbounds nuw [8 x i8], ptr %i.fvw, i64 %indvars.iv500.i
  br label %.preheader20.i558

.lr.ph188.i:                                      ; preds = %.lr.ph188.i.preheader, %.lr.ph188.i
  %indvars.iv439.i = phi i64 [ %indvars.iv.next440.i.3, %.lr.ph188.i ], [ 0, %.lr.ph188.i.preheader ] ; 5 uses
  %niter1532 = phi i64 [ %niter1532.next.3, %.lr.ph188.i ], [ 0, %.lr.ph188.i.preheader ]
  %i.gec = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv439.i ; 2 uses
  %i.ged = load i32, ptr %i.gec, align 4, !tbaa !13
  %i.gee = icmp ne i32 %i.ged, 0
  %i.gef = zext i1 %i.gee to i8
  store i8 %i.gef, ptr %i.gec, align 4, !tbaa !13
  %i.geg = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv439.i
  %i.geh = getelementptr inbounds nuw i8, ptr %i.geg, i64 4 ; 2 uses
  %i.gei = load i32, ptr %i.geh, align 4, !tbaa !13
  %i.gej = icmp ne i32 %i.gei, 0
  %i.gek = zext i1 %i.gej to i8
  store i8 %i.gek, ptr %i.geh, align 4, !tbaa !13
  %i.gel = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv439.i
  %i.gem = getelementptr inbounds nuw i8, ptr %i.gel, i64 8 ; 2 uses
  %i.gen = load i32, ptr %i.gem, align 4, !tbaa !13
  %i.geo = icmp ne i32 %i.gen, 0
  %i.gep = zext i1 %i.geo to i8
  store i8 %i.gep, ptr %i.gem, align 4, !tbaa !13
  %i.geq = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv439.i
  %i.ger = getelementptr inbounds nuw i8, ptr %i.geq, i64 12 ; 2 uses
  %i.ges = load i32, ptr %i.ger, align 4, !tbaa !13
  %i.get = icmp ne i32 %i.ges, 0
  %i.geu = zext i1 %i.get to i8
  store i8 %i.geu, ptr %i.ger, align 4, !tbaa !13
  %indvars.iv.next440.i.3 = add nuw nsw i64 %indvars.iv439.i, 16 ; 2 uses
  %niter1532.next.3 = add nuw nsw i64 %niter1532, 4 ; 2 uses
  %niter1532.ncmp.3.not = icmp eq i64 %niter1532.next.3, %unroll_iter1531
  br i1 %niter1532.ncmp.3.not, label %.preheader37.i.loopexit.unr-lcssa, label %.lr.ph188.i, !llvm.loop !88

.preheader20.i558:                                ; preds = %._crit_edge193.i, %.preheader20.lr.ph.i
  %indvars.iv449.i = phi i64 [ 0, %.preheader20.lr.ph.i ], [ %indvars.iv.next450.i, %._crit_edge193.i ] ; 2 uses
  %.14.i198.i = phi i32 [ %.9.i240.i, %.preheader20.lr.ph.i ], [ %.15.i.lcssa.i562, %._crit_edge193.i ] ; 2 uses
  %.34.i196.i = phi i32 [ 0, %.preheader20.lr.ph.i ], [ %.35.i.lcssa.i561, %._crit_edge193.i ] ; 2 uses
  br i1 %.not266.i, label %._crit_edge193.i, label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.preheader20.i558
  %i.gev = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv449.i ; 2 uses
  %i.gew = sext i32 %.34.i196.i to i64
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ow, %.lr.ph192.i
  %indvars.iv444.i559 = phi i64 [ %i.gew, %.lr.ph192.i ], [ %indvars.iv.next445.i560, %bb.ow ] ; 3 uses
  %indvars.iv442.i = phi i64 [ 0, %.lr.ph192.i ], [ %indvars.iv.next443.i, %bb.ow ] ; 2 uses
  %.15.i191.i = phi i32 [ %.14.i198.i, %.lr.ph192.i ], [ %i.gfj, %bb.ow ]
  %i.gex = load ptr, ptr %i.gea, align 8, !tbaa !243
  %36 = trunc nsw i64 %indvars.iv444.i559 to i32
  %37 = shl i32 %36, 5
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x i8], ptr %i.gex, i64 %38
  %i.gey = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv442.i ; 2 uses
  %i.gez = load i8, ptr %i.gey, align 1, !tbaa !13
  %i.gfa = zext i8 %i.gez to i32
  %i.gfb = load i8, ptr %i.gev, align 1, !tbaa !13
  %i.gfc = zext i8 %i.gfb to i32
  %i.gfd = add nuw nsw i32 %i.gfc, %i.gfa
  %.val10.i = load ptr, ptr %0, align 16, !tbaa !150
  %.val11.i = load ptr, ptr %i.fvv, align 16, !tbaa !203
  %i.gfe = getelementptr i8, ptr %.val10.i, i64 1
  %.val10.val.i = load i8, ptr %i.gfe, align 1, !tbaa !247
  %i.gff = tail call fastcc i32 @decode_coeffs_b_16bpp(i8 %.val10.val.i, ptr %.val11.i, ptr noundef %39, i32 noundef 256, ptr noundef nonnull %i.fvd, ptr noundef nonnull %i.fvg, ptr noundef nonnull %i.fva, i32 noundef %i.gfd, ptr noundef %i.dxo, ptr noundef %i.dxq, ptr noundef nonnull %i.dyc, ptr noundef nonnull %i.fvu) #8 ; 2 uses
  %i.gfg = icmp ne i32 %i.gff, 0                  ; 2 uses
  %i.gfh = zext i1 %i.gfg to i32
  %i.gfi = zext i1 %i.gfg to i8                   ; 2 uses
  store i8 %i.gfi, ptr %i.gev, align 1, !tbaa !13
  store i8 %i.gfi, ptr %i.gey, align 1, !tbaa !13
  %i.gfj = or i32 %.15.i191.i, %i.gfh             ; 2 uses
  %i.gfk = trunc i32 %i.gff to i16
  %i.gfl = load ptr, ptr %i.geb, align 8, !tbaa !19
  %i.gfm = getelementptr inbounds i8, ptr %i.gfl, i64 %indvars.iv444.i559
  store i16 %i.gfk, ptr %i.gfm, align 2, !tbaa !13
  %indvars.iv.next443.i = add nuw nsw i64 %indvars.iv442.i, 4 ; 2 uses
  %indvars.iv.next445.i560 = add nsw i64 %indvars.iv444.i559, 16 ; 2 uses
  %i.gfn = icmp samesign ult i64 %indvars.iv.next443.i, %i.fwc
  br i1 %i.gfn, label %bb.ow, label %._crit_edge193.loopexit.i, !llvm.loop !89

._crit_edge193.loopexit.i:                        ; preds = %bb.ow
  %i.gfo = trunc nsw i64 %indvars.iv.next445.i560 to i32
  br label %._crit_edge193.i

._crit_edge193.i:                                 ; preds = %._crit_edge193.loopexit.i, %.preheader20.i558
  %.35.i.lcssa.i561 = phi i32 [ %.34.i196.i, %.preheader20.i558 ], [ %i.gfo, %._crit_edge193.loopexit.i ]
  %.15.i.lcssa.i562 = phi i32 [ %.14.i198.i, %.preheader20.i558 ], [ %i.gfj, %._crit_edge193.loopexit.i ] ; 2 uses
  %indvars.iv.next450.i = add nuw nsw i64 %indvars.iv449.i, 4 ; 2 uses
  %i.gfp = icmp samesign ult i64 %indvars.iv.next450.i, %i.fwb
  br i1 %i.gfp, label %.preheader20.i558, label %._crit_edge199.i, !llvm.loop !90

._crit_edge199.i:                                 ; preds = %._crit_edge193.i, %.preheader37.i
  %.14.i.lcssa.i563 = phi i32 [ %.9.i240.i, %.preheader37.i ], [ %.15.i.lcssa.i562, %._crit_edge193.i ] ; 6 uses
  br i1 %i.fvx, label %.preheader33.i, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge199.i
  br i1 %.not266.i, label %.loopexit34.i, label %.lr.ph202.i564.preheader

.lr.ph202.i564.preheader:                         ; preds = %.preheader35.i
  br i1 %i.fxh, label %.lr.ph202.i564.epil.preheader, label %.lr.ph202.i564

.preheader33.i:                                   ; preds = %._crit_edge199.i
  br i1 %.not266.i, label %.loopexit34.i, label %.lr.ph204.i568.preheader

.lr.ph204.i568.preheader:                         ; preds = %.preheader33.i
  br i1 %i.fxj, label %.lr.ph204.i568.epil.preheader, label %.lr.ph204.i568

.lr.ph204.i568:                                   ; preds = %.lr.ph204.i568.preheader, %.lr.ph204.i568
  %indvars.iv455.i = phi i64 [ %indvars.iv.next456.i.3, %.lr.ph204.i568 ], [ 0, %.lr.ph204.i568.preheader ] ; 5 uses
  %niter1544 = phi i64 [ %niter1544.next.3, %.lr.ph204.i568 ], [ 0, %.lr.ph204.i568.preheader ]
  %i.gfq = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv455.i ; 2 uses
  %i.gfr = load i8, ptr %i.gfq, align 1, !tbaa !13
  %i.gfs = zext i8 %i.gfr to i32
  %i.gft = mul nuw nsw i32 %i.gfs, 16843009
  store i32 %i.gft, ptr %i.gfq, align 4, !tbaa !13
  %i.gfu = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv455.i
  %i.gfv = getelementptr inbounds nuw i8, ptr %i.gfu, i64 4 ; 2 uses
  %i.gfw = load i8, ptr %i.gfv, align 1, !tbaa !13
  %i.gfx = zext i8 %i.gfw to i32
  %i.gfy = mul nuw nsw i32 %i.gfx, 16843009
  store i32 %i.gfy, ptr %i.gfv, align 4, !tbaa !13
  %i.gfz = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv455.i
  %i.gga = getelementptr inbounds nuw i8, ptr %i.gfz, i64 8 ; 2 uses
  %i.ggb = load i8, ptr %i.gga, align 1, !tbaa !13
  %i.ggc = zext i8 %i.ggb to i32
  %i.ggd = mul nuw nsw i32 %i.ggc, 16843009
  store i32 %i.ggd, ptr %i.gga, align 4, !tbaa !13
  %i.gge = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv455.i
  %i.ggf = getelementptr inbounds nuw i8, ptr %i.gge, i64 12 ; 2 uses
  %i.ggg = load i8, ptr %i.ggf, align 1, !tbaa !13
  %i.ggh = zext i8 %i.ggg to i32
  %i.ggi = mul nuw nsw i32 %i.ggh, 16843009
  store i32 %i.ggi, ptr %i.ggf, align 4, !tbaa !13
  %indvars.iv.next456.i.3 = add nuw nsw i64 %indvars.iv455.i, 16 ; 2 uses
  %niter1544.next.3 = add nuw nsw i64 %niter1544, 4 ; 2 uses
  %niter1544.ncmp.3.not = icmp eq i64 %niter1544.next.3, %unroll_iter1543
  br i1 %niter1544.ncmp.3.not, label %.loopexit34.i.loopexit.unr-lcssa, label %.lr.ph204.i568, !llvm.loop !91

.lr.ph202.i564:                                   ; preds = %.lr.ph202.i564.preheader, %.lr.ph202.i564
  %indvars.iv452.i = phi i64 [ %indvars.iv.next453.i.1, %.lr.ph202.i564 ], [ 0, %.lr.ph202.i564.preheader ] ; 4 uses
  %niter1538 = phi i64 [ %niter1538.next.1, %.lr.ph202.i564 ], [ 0, %.lr.ph202.i564.preheader ]
  %i.ggj = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv452.i ; 2 uses
  %i.ggk = getelementptr inbounds nuw i8, ptr %i.ggj, i64 1
  %i.ggl = load i8, ptr %i.ggj, align 1, !tbaa !13
  %i.ggm = trunc nuw nsw i64 %indvars.iv452.i to i32
  %i.ggn = xor i32 %i.ggm, -1
  %i.ggo = add nsw i32 %i.fvl, %i.ggn
  %i.ggp = tail call i32 @llvm.smin.i32(i32 %i.ggo, i32 3)
  %i.ggq = sext i32 %i.ggp to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ggk, i8 %i.ggl, i64 %i.ggq, i1 false)
  %indvars.iv.next453.i = or disjoint i64 %indvars.iv452.i, 4 ; 2 uses
  %i.ggr = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv.next453.i ; 2 uses
  %i.ggs = getelementptr inbounds nuw i8, ptr %i.ggr, i64 1
  %i.ggt = load i8, ptr %i.ggr, align 1, !tbaa !13
  %i.ggu = trunc nuw nsw i64 %indvars.iv.next453.i to i32
  %i.ggv = xor i32 %i.ggu, -1
  %i.ggw = add nsw i32 %i.fvl, %i.ggv
  %i.ggx = tail call i32 @llvm.smin.i32(i32 %i.ggw, i32 3)
  %i.ggy = sext i32 %i.ggx to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ggs, i8 %i.ggt, i64 %i.ggy, i1 false)
  %indvars.iv.next453.i.1 = add nuw nsw i64 %indvars.iv452.i, 8 ; 2 uses
  %niter1538.next.1 = add i64 %niter1538, 2       ; 2 uses
  %niter1538.ncmp.1.not = icmp eq i64 %niter1538.next.1, %unroll_iter1537
  br i1 %niter1538.ncmp.1.not, label %.loopexit34.i.loopexit1374.unr-lcssa, label %.lr.ph202.i564, !llvm.loop !92

.loopexit34.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph204.i568
  br i1 %lcmp.mod1541.not, label %.loopexit34.i, label %.lr.ph204.i568.epil.preheader

.lr.ph204.i568.epil.preheader:                    ; preds = %.loopexit34.i.loopexit.unr-lcssa, %.lr.ph204.i568.preheader
  %indvars.iv455.i.epil.init = phi i64 [ 0, %.lr.ph204.i568.preheader ], [ %indvars.iv.next456.i.3, %.loopexit34.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1542)
  br label %.lr.ph204.i568.epil

.lr.ph204.i568.epil:                              ; preds = %.lr.ph204.i568.epil, %.lr.ph204.i568.epil.preheader
  %indvars.iv455.i.epil = phi i64 [ %indvars.iv.next456.i.epil, %.lr.ph204.i568.epil ], [ %indvars.iv455.i.epil.init, %.lr.ph204.i568.epil.preheader ] ; 2 uses
  %epil.iter1540 = phi i64 [ %epil.iter1540.next, %.lr.ph204.i568.epil ], [ 0, %.lr.ph204.i568.epil.preheader ]
  %i.ggz = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv455.i.epil ; 2 uses
  %i.gha = load i8, ptr %i.ggz, align 1, !tbaa !13
  %i.ghb = zext i8 %i.gha to i32
  %i.ghc = mul nuw nsw i32 %i.ghb, 16843009
  store i32 %i.ghc, ptr %i.ggz, align 4, !tbaa !13
  %indvars.iv.next456.i.epil = add nuw nsw i64 %indvars.iv455.i.epil, 4
  %epil.iter1540.next = add i64 %epil.iter1540, 1 ; 2 uses
  %epil.iter1540.cmp.not = icmp eq i64 %epil.iter1540.next, %xtraiter1539
  br i1 %epil.iter1540.cmp.not, label %.loopexit34.i, label %.lr.ph204.i568.epil, !llvm.loop !121

.loopexit34.i.loopexit1374.unr-lcssa:             ; preds = %.lr.ph202.i564
  br i1 %lcmp.mod1535.not.not, label %.lr.ph202.i564.epil.preheader, label %.loopexit34.i

.lr.ph202.i564.epil.preheader:                    ; preds = %.loopexit34.i.loopexit1374.unr-lcssa, %.lr.ph202.i564.preheader
  %indvars.iv452.i.epil.init = phi i64 [ 0, %.lr.ph202.i564.preheader ], [ %indvars.iv.next453.i.1, %.loopexit34.i.loopexit1374.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1536)
  %i.ghd = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv452.i.epil.init ; 2 uses
  %i.ghe = getelementptr inbounds nuw i8, ptr %i.ghd, i64 1
  %i.ghf = load i8, ptr %i.ghd, align 1, !tbaa !13
  %i.ghg = trunc nuw nsw i64 %indvars.iv452.i.epil.init to i32
  %i.ghh = xor i32 %i.ghg, -1
  %i.ghi = add nsw i32 %i.fvl, %i.ghh
  %i.ghj = tail call i32 @llvm.smin.i32(i32 %i.ghi, i32 3)
  %i.ghk = sext i32 %i.ghj to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ghe, i8 %i.ghf, i64 %i.ghk, i1 false)
  br label %.loopexit34.i

.loopexit34.i:                                    ; preds = %.lr.ph202.i564.epil.preheader, %.loopexit34.i.loopexit1374.unr-lcssa, %.loopexit34.i.loopexit.unr-lcssa, %.lr.ph204.i568.epil, %.preheader33.i, %.preheader35.i
  br i1 %i.fvy, label %.preheader29.i566, label %.preheader31.i565

.preheader31.i565:                                ; preds = %.loopexit34.i
  br i1 %.not265.i, label %.loopexit.i549, label %.lr.ph206.i.preheader

.lr.ph206.i.preheader:                            ; preds = %.preheader31.i565
  br i1 %i.fxk, label %.lr.ph206.i.epil.preheader, label %.lr.ph206.i

.preheader29.i566:                                ; preds = %.loopexit34.i
  br i1 %.not265.i, label %.loopexit.i549, label %.lr.ph208.i567.preheader

.lr.ph208.i567.preheader:                         ; preds = %.preheader29.i566
  br i1 %i.fxm, label %.lr.ph208.i567.epil.preheader, label %.lr.ph208.i567

.lr.ph208.i567:                                   ; preds = %.lr.ph208.i567.preheader, %.lr.ph208.i567
  %indvars.iv461.i = phi i64 [ %indvars.iv.next462.i.3, %.lr.ph208.i567 ], [ 0, %.lr.ph208.i567.preheader ] ; 5 uses
  %niter1556 = phi i64 [ %niter1556.next.3, %.lr.ph208.i567 ], [ 0, %.lr.ph208.i567.preheader ]
  %i.ghl = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv461.i ; 2 uses
  %i.ghm = load i8, ptr %i.ghl, align 1, !tbaa !13
  %i.ghn = zext i8 %i.ghm to i32
  %i.gho = mul nuw nsw i32 %i.ghn, 16843009
  store i32 %i.gho, ptr %i.ghl, align 4, !tbaa !13
  %i.ghp = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv461.i
  %i.ghq = getelementptr inbounds nuw i8, ptr %i.ghp, i64 4 ; 2 uses
  %i.ghr = load i8, ptr %i.ghq, align 1, !tbaa !13
  %i.ghs = zext i8 %i.ghr to i32
  %i.ght = mul nuw nsw i32 %i.ghs, 16843009
  store i32 %i.ght, ptr %i.ghq, align 4, !tbaa !13
  %i.ghu = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv461.i
  %i.ghv = getelementptr inbounds nuw i8, ptr %i.ghu, i64 8 ; 2 uses
  %i.ghw = load i8, ptr %i.ghv, align 1, !tbaa !13
  %i.ghx = zext i8 %i.ghw to i32
  %i.ghy = mul nuw nsw i32 %i.ghx, 16843009
  store i32 %i.ghy, ptr %i.ghv, align 4, !tbaa !13
  %i.ghz = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv461.i
  %i.gia = getelementptr inbounds nuw i8, ptr %i.ghz, i64 12 ; 2 uses
  %i.gib = load i8, ptr %i.gia, align 1, !tbaa !13
  %i.gic = zext i8 %i.gib to i32
  %i.gid = mul nuw nsw i32 %i.gic, 16843009
  store i32 %i.gid, ptr %i.gia, align 4, !tbaa !13
  %indvars.iv.next462.i.3 = add nuw nsw i64 %indvars.iv461.i, 16 ; 2 uses
  %niter1556.next.3 = add nuw nsw i64 %niter1556, 4 ; 2 uses
  %niter1556.ncmp.3.not = icmp eq i64 %niter1556.next.3, %unroll_iter1555
  br i1 %niter1556.ncmp.3.not, label %.loopexit.i549.loopexit1372.unr-lcssa.a, label %.lr.ph208.i567, !llvm.loop !94

.lr.ph206.i:                                      ; preds = %.lr.ph206.i.preheader, %.lr.ph206.i
  %indvars.iv458.i = phi i64 [ %indvars.iv.next459.i.1, %.lr.ph206.i ], [ 0, %.lr.ph206.i.preheader ] ; 4 uses
  %niter1550 = phi i64 [ %niter1550.next.1, %.lr.ph206.i ], [ 0, %.lr.ph206.i.preheader ]
  %i.gie = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv458.i ; 2 uses
  %i.gif = getelementptr inbounds nuw i8, ptr %i.gie, i64 1
  %i.gig = load i8, ptr %i.gie, align 1, !tbaa !13
  %i.gih = trunc nuw nsw i64 %indvars.iv458.i to i32
  %i.gii = xor i32 %i.gih, -1
  %i.gij = add nsw i32 %i.fvq, %i.gii
  %i.gik = tail call i32 @llvm.smin.i32(i32 %i.gij, i32 3)
  %i.gil = sext i32 %i.gik to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gif, i8 %i.gig, i64 %i.gil, i1 false)
  %indvars.iv.next459.i = or disjoint i64 %indvars.iv458.i, 4 ; 2 uses
  %i.gim = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv.next459.i ; 2 uses
  %i.gin = getelementptr inbounds nuw i8, ptr %i.gim, i64 1
  %i.gio = load i8, ptr %i.gim, align 1, !tbaa !13
  %i.gip = trunc nuw nsw i64 %indvars.iv.next459.i to i32
  %i.giq = xor i32 %i.gip, -1
  %i.gir = add nsw i32 %i.fvq, %i.giq
  %i.gis = tail call i32 @llvm.smin.i32(i32 %i.gir, i32 3)
  %i.git = sext i32 %i.gis to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gin, i8 %i.gio, i64 %i.git, i1 false)
  %indvars.iv.next459.i.1 = add nuw nsw i64 %indvars.iv458.i, 8 ; 2 uses
  %niter1550.next.1 = add i64 %niter1550, 2       ; 2 uses
  %niter1550.ncmp.1.not = icmp eq i64 %niter1550.next.1, %unroll_iter1549
  br i1 %niter1550.ncmp.1.not, label %.loopexit.i549.loopexit1373.unr-lcssa, label %.lr.ph206.i, !llvm.loop !95

.preheader49.i.loopexit.unr-lcssa:                ; preds = %.lr.ph164.i
  br i1 %lcmp.mod1487.not, label %.preheader49.i, label %.lr.ph164.i.epil.preheader

.lr.ph164.i.epil.preheader:                       ; preds = %.preheader49.i.loopexit.unr-lcssa, %.lr.ph164.i.preheader
  %indvars.iv408.i534.epil.init = phi i64 [ 0, %.lr.ph164.i.preheader ], [ %indvars.iv.next409.i535.3, %.preheader49.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1488)
  br label %.lr.ph164.i.epil

.lr.ph164.i.epil:                                 ; preds = %.lr.ph164.i.epil, %.lr.ph164.i.epil.preheader
  %indvars.iv408.i534.epil = phi i64 [ %indvars.iv.next409.i535.epil, %.lr.ph164.i.epil ], [ %indvars.iv408.i534.epil.init, %.lr.ph164.i.epil.preheader ] ; 2 uses
  %epil.iter1486 = phi i64 [ %epil.iter1486.next, %.lr.ph164.i.epil ], [ 0, %.lr.ph164.i.epil.preheader ]
  %i.giu = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv408.i534.epil ; 2 uses
  %i.giv = load i64, ptr %i.giu, align 8, !tbaa !13
  %i.giw = icmp ne i64 %i.giv, 0
  %i.gix = zext i1 %i.giw to i8
  store i8 %i.gix, ptr %i.giu, align 8, !tbaa !13
  %indvars.iv.next409.i535.epil = add nuw nsw i64 %indvars.iv408.i534.epil, 8
  %epil.iter1486.next = add i64 %epil.iter1486, 1 ; 2 uses
  %epil.iter1486.cmp.not = icmp eq i64 %epil.iter1486.next, %xtraiter1485
  br i1 %epil.iter1486.cmp.not, label %.preheader49.i, label %.lr.ph164.i.epil, !llvm.loop !122

.preheader49.i:                                   ; preds = %.preheader49.i.loopexit.unr-lcssa, %.lr.ph164.i.epil, %.preheader50.i
  br i1 %.not266.i, label %.preheader48.i, label %.lr.ph166.i.preheader

.lr.ph166.i.preheader:                            ; preds = %.preheader49.i
  br i1 %i.fwy, label %.lr.ph166.i.epil.preheader, label %.lr.ph166.i

.lr.ph164.i:                                      ; preds = %.lr.ph164.i.preheader, %.lr.ph164.i
  %indvars.iv408.i534 = phi i64 [ %indvars.iv.next409.i535.3, %.lr.ph164.i ], [ 0, %.lr.ph164.i.preheader ] ; 5 uses
  %niter1490 = phi i64 [ %niter1490.next.3, %.lr.ph164.i ], [ 0, %.lr.ph164.i.preheader ]
  %i.giy = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv408.i534 ; 2 uses
  %i.giz = load i64, ptr %i.giy, align 8, !tbaa !13
  %i.gja = icmp ne i64 %i.giz, 0
  %i.gjb = zext i1 %i.gja to i8
  store i8 %i.gjb, ptr %i.giy, align 8, !tbaa !13
  %i.gjc = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv408.i534
  %i.gjd = getelementptr inbounds nuw i8, ptr %i.gjc, i64 8 ; 2 uses
  %i.gje = load i64, ptr %i.gjd, align 8, !tbaa !13
  %i.gjf = icmp ne i64 %i.gje, 0
  %i.gjg = zext i1 %i.gjf to i8
  store i8 %i.gjg, ptr %i.gjd, align 8, !tbaa !13
  %i.gjh = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv408.i534
  %i.gji = getelementptr inbounds nuw i8, ptr %i.gjh, i64 16 ; 2 uses
  %i.gjj = load i64, ptr %i.gji, align 8, !tbaa !13
  %i.gjk = icmp ne i64 %i.gjj, 0
  %i.gjl = zext i1 %i.gjk to i8
  store i8 %i.gjl, ptr %i.gji, align 8, !tbaa !13
  %i.gjm = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv408.i534
  %i.gjn = getelementptr inbounds nuw i8, ptr %i.gjm, i64 24 ; 2 uses
  %i.gjo = load i64, ptr %i.gjn, align 8, !tbaa !13
  %i.gjp = icmp ne i64 %i.gjo, 0
  %i.gjq = zext i1 %i.gjp to i8
  store i8 %i.gjq, ptr %i.gjn, align 8, !tbaa !13
  %indvars.iv.next409.i535.3 = add nuw nsw i64 %indvars.iv408.i534, 32 ; 2 uses
  %niter1490.next.3 = add i64 %niter1490, 4       ; 2 uses
  %niter1490.ncmp.3.not = icmp eq i64 %niter1490.next.3, %unroll_iter1489
  br i1 %niter1490.ncmp.3.not, label %.preheader49.i.loopexit.unr-lcssa, label %.lr.ph164.i, !llvm.loop !97

.preheader48.i.loopexit.unr-lcssa:                ; preds = %.lr.ph166.i
  br i1 %lcmp.mod1493.not, label %.preheader48.i, label %.lr.ph166.i.epil.preheader

.lr.ph166.i.epil.preheader:                       ; preds = %.preheader48.i.loopexit.unr-lcssa, %.lr.ph166.i.preheader
  %indvars.iv411.i.epil.init = phi i64 [ 0, %.lr.ph166.i.preheader ], [ %indvars.iv.next412.i.3, %.preheader48.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1494)
  br label %.lr.ph166.i.epil

.lr.ph166.i.epil:                                 ; preds = %.lr.ph166.i.epil, %.lr.ph166.i.epil.preheader
  %indvars.iv411.i.epil = phi i64 [ %indvars.iv.next412.i.epil, %.lr.ph166.i.epil ], [ %indvars.iv411.i.epil.init, %.lr.ph166.i.epil.preheader ] ; 2 uses
  %epil.iter1492 = phi i64 [ %epil.iter1492.next, %.lr.ph166.i.epil ], [ 0, %.lr.ph166.i.epil.preheader ]
  %i.gjr = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv411.i.epil ; 2 uses
  %i.gjs = load i64, ptr %i.gjr, align 8, !tbaa !13
  %i.gjt = icmp ne i64 %i.gjs, 0
  %i.gju = zext i1 %i.gjt to i8
  store i8 %i.gju, ptr %i.gjr, align 8, !tbaa !13
  %indvars.iv.next412.i.epil = add nuw nsw i64 %indvars.iv411.i.epil, 8
  %epil.iter1492.next = add i64 %epil.iter1492, 1 ; 2 uses
  %epil.iter1492.cmp.not = icmp eq i64 %epil.iter1492.next, %xtraiter1491
  br i1 %epil.iter1492.cmp.not, label %.preheader48.i, label %.lr.ph166.i.epil, !llvm.loop !123

.preheader48.i:                                   ; preds = %.preheader48.i.loopexit.unr-lcssa, %.lr.ph166.i.epil, %.preheader49.i
  br i1 %.not265.i, label %._crit_edge175.i, label %.preheader21.lr.ph.i

.preheader21.lr.ph.i:                             ; preds = %.preheader48.i
  %i.gjv = getelementptr inbounds nuw [8 x i8], ptr %i.fvt, i64 %indvars.iv500.i
  %i.gjw = getelementptr inbounds nuw [8 x i8], ptr %i.fvw, i64 %indvars.iv500.i
  br label %.preheader21.i536

.lr.ph166.i:                                      ; preds = %.lr.ph166.i.preheader, %.lr.ph166.i
  %indvars.iv411.i = phi i64 [ %indvars.iv.next412.i.3, %.lr.ph166.i ], [ 0, %.lr.ph166.i.preheader ] ; 5 uses
  %niter1496 = phi i64 [ %niter1496.next.3, %.lr.ph166.i ], [ 0, %.lr.ph166.i.preheader ]
  %i.gjx = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv411.i ; 2 uses
  %i.gjy = load i64, ptr %i.gjx, align 8, !tbaa !13
  %i.gjz = icmp ne i64 %i.gjy, 0
  %i.gka = zext i1 %i.gjz to i8
  store i8 %i.gka, ptr %i.gjx, align 8, !tbaa !13
  %i.gkb = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv411.i
  %i.gkc = getelementptr inbounds nuw i8, ptr %i.gkb, i64 8 ; 2 uses
  %i.gkd = load i64, ptr %i.gkc, align 8, !tbaa !13
  %i.gke = icmp ne i64 %i.gkd, 0
  %i.gkf = zext i1 %i.gke to i8
  store i8 %i.gkf, ptr %i.gkc, align 8, !tbaa !13
  %i.gkg = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv411.i
  %i.gkh = getelementptr inbounds nuw i8, ptr %i.gkg, i64 16 ; 2 uses
  %i.gki = load i64, ptr %i.gkh, align 8, !tbaa !13
  %i.gkj = icmp ne i64 %i.gki, 0
  %i.gkk = zext i1 %i.gkj to i8
  store i8 %i.gkk, ptr %i.gkh, align 8, !tbaa !13
  %i.gkl = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv411.i
  %i.gkm = getelementptr inbounds nuw i8, ptr %i.gkl, i64 24 ; 2 uses
  %i.gkn = load i64, ptr %i.gkm, align 8, !tbaa !13
  %i.gko = icmp ne i64 %i.gkn, 0
  %i.gkp = zext i1 %i.gko to i8
  store i8 %i.gkp, ptr %i.gkm, align 8, !tbaa !13
  %indvars.iv.next412.i.3 = add nuw nsw i64 %indvars.iv411.i, 32 ; 2 uses
  %niter1496.next.3 = add i64 %niter1496, 4       ; 2 uses
  %niter1496.ncmp.3.not = icmp eq i64 %niter1496.next.3, %unroll_iter1495
  br i1 %niter1496.ncmp.3.not, label %.preheader48.i.loopexit.unr-lcssa, label %.lr.ph166.i, !llvm.loop !99

.preheader21.i536:                                ; preds = %._crit_edge.i541, %.preheader21.lr.ph.i
  %indvars.iv421.i = phi i64 [ 0, %.preheader21.lr.ph.i ], [ %indvars.iv.next422.i, %._crit_edge.i541 ] ; 2 uses
  %.16.i174.i = phi i32 [ %.9.i240.i, %.preheader21.lr.ph.i ], [ %.17.i.lcssa.i543, %._crit_edge.i541 ] ; 2 uses
  %.42.i172.i = phi i32 [ 0, %.preheader21.lr.ph.i ], [ %.43.i.lcssa.i542, %._crit_edge.i541 ] ; 2 uses
  br i1 %.not266.i, label %._crit_edge.i541, label %.lr.ph170.i537

.lr.ph170.i537:                                   ; preds = %.preheader21.i536
  %i.gkq = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv421.i ; 2 uses
  %i.gkr = sext i32 %.42.i172.i to i64
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ox, %.lr.ph170.i537
  %indvars.iv416.i538 = phi i64 [ %i.gkr, %.lr.ph170.i537 ], [ %indvars.iv.next417.i539, %bb.ox ] ; 3 uses
  %indvars.iv414.i = phi i64 [ 0, %.lr.ph170.i537 ], [ %indvars.iv.next415.i, %bb.ox ] ; 2 uses
  %.17.i169.i = phi i32 [ %.16.i174.i, %.lr.ph170.i537 ], [ %i.gle, %bb.ox ]
  %i.gks = load ptr, ptr %i.gjv, align 8, !tbaa !243
  %40 = trunc nsw i64 %indvars.iv416.i538 to i32
  %41 = shl i32 %40, 5
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i8], ptr %i.gks, i64 %42
  %i.gkt = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv414.i ; 2 uses
  %i.gku = load i8, ptr %i.gkt, align 1, !tbaa !13
  %i.gkv = zext i8 %i.gku to i32
  %i.gkw = load i8, ptr %i.gkq, align 1, !tbaa !13
  %i.gkx = zext i8 %i.gkw to i32
  %i.gky = add nuw nsw i32 %i.gkx, %i.gkv
  %.val14.i = load ptr, ptr %0, align 16, !tbaa !150
  %.val15.i = load ptr, ptr %i.fvv, align 16, !tbaa !203
  %i.gkz = getelementptr i8, ptr %.val14.i, i64 1
  %.val14.val.i = load i8, ptr %i.gkz, align 1, !tbaa !247
  %i.gla = tail call fastcc i32 @decode_coeffs_b32_16bpp(i8 %.val14.val.i, ptr %.val15.i, ptr noundef %43, i32 noundef 1024, ptr noundef nonnull %i.fvd, ptr noundef nonnull %i.fvg, ptr noundef nonnull %i.fva, i32 noundef %i.gky, ptr noundef %i.dxo, ptr noundef %i.dxq, ptr noundef nonnull %i.dyc, ptr noundef nonnull %i.fvu) #8 ; 2 uses
  %i.glb = icmp ne i32 %i.gla, 0                  ; 2 uses
  %i.glc = zext i1 %i.glb to i32
  %i.gld = zext i1 %i.glb to i8                   ; 2 uses
  store i8 %i.gld, ptr %i.gkq, align 1, !tbaa !13
  store i8 %i.gld, ptr %i.gkt, align 1, !tbaa !13
  %i.gle = or i32 %.17.i169.i, %i.glc             ; 2 uses
  %i.glf = trunc i32 %i.gla to i16
  %i.glg = load ptr, ptr %i.gjw, align 8, !tbaa !19
  %i.glh = getelementptr inbounds i8, ptr %i.glg, i64 %indvars.iv416.i538
  store i16 %i.glf, ptr %i.glh, align 2, !tbaa !13
  %indvars.iv.next415.i = add nuw nsw i64 %indvars.iv414.i, 8 ; 2 uses
  %indvars.iv.next417.i539 = add nsw i64 %indvars.iv416.i538, 64 ; 2 uses
  %i.gli = icmp samesign ult i64 %indvars.iv.next415.i, %i.fwc
  br i1 %i.gli, label %bb.ox, label %._crit_edge.loopexit.i540, !llvm.loop !100

._crit_edge.loopexit.i540:                        ; preds = %bb.ox
  %i.glj = trunc nsw i64 %indvars.iv.next417.i539 to i32
  br label %._crit_edge.i541

._crit_edge.i541:                                 ; preds = %._crit_edge.loopexit.i540, %.preheader21.i536
  %.43.i.lcssa.i542 = phi i32 [ %.42.i172.i, %.preheader21.i536 ], [ %i.glj, %._crit_edge.loopexit.i540 ]
  %.17.i.lcssa.i543 = phi i32 [ %.16.i174.i, %.preheader21.i536 ], [ %i.gle, %._crit_edge.loopexit.i540 ] ; 2 uses
  %indvars.iv.next422.i = add nuw nsw i64 %indvars.iv421.i, 8 ; 2 uses
  %i.glk = icmp samesign ult i64 %indvars.iv.next422.i, %i.fwb
  br i1 %i.glk, label %.preheader21.i536, label %._crit_edge175.i, !llvm.loop !101

._crit_edge175.i:                                 ; preds = %._crit_edge.i541, %.preheader48.i
  %.16.i.lcssa.i544 = phi i32 [ %.9.i240.i, %.preheader48.i ], [ %.17.i.lcssa.i543, %._crit_edge.i541 ] ; 6 uses
  br i1 %i.fvx, label %.preheader44.i553, label %.preheader46.i545

.preheader46.i545:                                ; preds = %._crit_edge175.i
  br i1 %.not266.i, label %.loopexit45.i547, label %.lr.ph178.i546.preheader

.lr.ph178.i546.preheader:                         ; preds = %.preheader46.i545
  br i1 %i.fwz, label %.lr.ph178.i546.epil.preheader, label %.lr.ph178.i546

.preheader44.i553:                                ; preds = %._crit_edge175.i
  br i1 %.not266.i, label %.loopexit45.i547, label %.lr.ph180.i554.preheader

.lr.ph180.i554.preheader:                         ; preds = %.preheader44.i553
  br i1 %i.fxb, label %.lr.ph180.i554.epil.preheader, label %.lr.ph180.i554

.lr.ph180.i554:                                   ; preds = %.lr.ph180.i554.preheader, %.lr.ph180.i554
  %indvars.iv427.i = phi i64 [ %indvars.iv.next428.i.3, %.lr.ph180.i554 ], [ 0, %.lr.ph180.i554.preheader ] ; 5 uses
  %niter1508 = phi i64 [ %niter1508.next.3, %.lr.ph180.i554 ], [ 0, %.lr.ph180.i554.preheader ]
  %i.gll = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv427.i ; 3 uses
  %i.glm = load i8, ptr %i.gll, align 1, !tbaa !13
  %i.gln = zext i8 %i.glm to i32
  %i.glo = mul nuw nsw i32 %i.gln, 16843009       ; 2 uses
  store i32 %i.glo, ptr %i.gll, align 4, !tbaa !13
  %i.glp = getelementptr inbounds nuw i8, ptr %i.gll, i64 4
  store i32 %i.glo, ptr %i.glp, align 4, !tbaa !13
  %i.glq = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv427.i ; 2 uses
  %i.glr = getelementptr inbounds nuw i8, ptr %i.glq, i64 8 ; 2 uses
  %i.gls = load i8, ptr %i.glr, align 1, !tbaa !13
  %i.glt = zext i8 %i.gls to i32
  %i.glu = mul nuw nsw i32 %i.glt, 16843009       ; 2 uses
  store i32 %i.glu, ptr %i.glr, align 4, !tbaa !13
  %i.glv = getelementptr inbounds nuw i8, ptr %i.glq, i64 12
  store i32 %i.glu, ptr %i.glv, align 4, !tbaa !13
  %i.glw = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv427.i ; 2 uses
  %i.glx = getelementptr inbounds nuw i8, ptr %i.glw, i64 16 ; 2 uses
  %i.gly = load i8, ptr %i.glx, align 1, !tbaa !13
  %i.glz = zext i8 %i.gly to i32
  %i.gma = mul nuw nsw i32 %i.glz, 16843009       ; 2 uses
  store i32 %i.gma, ptr %i.glx, align 4, !tbaa !13
  %i.gmb = getelementptr inbounds nuw i8, ptr %i.glw, i64 20
  store i32 %i.gma, ptr %i.gmb, align 4, !tbaa !13
  %i.gmc = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv427.i ; 2 uses
  %i.gmd = getelementptr inbounds nuw i8, ptr %i.gmc, i64 24 ; 2 uses
  %i.gme = load i8, ptr %i.gmd, align 1, !tbaa !13
  %i.gmf = zext i8 %i.gme to i32
  %i.gmg = mul nuw nsw i32 %i.gmf, 16843009       ; 2 uses
  store i32 %i.gmg, ptr %i.gmd, align 4, !tbaa !13
  %i.gmh = getelementptr inbounds nuw i8, ptr %i.gmc, i64 28
  store i32 %i.gmg, ptr %i.gmh, align 4, !tbaa !13
  %indvars.iv.next428.i.3 = add nuw nsw i64 %indvars.iv427.i, 32 ; 2 uses
  %niter1508.next.3 = add i64 %niter1508, 4       ; 2 uses
  %niter1508.ncmp.3.not = icmp eq i64 %niter1508.next.3, %unroll_iter1507
  br i1 %niter1508.ncmp.3.not, label %.loopexit45.i547.loopexit.unr-lcssa, label %.lr.ph180.i554, !llvm.loop !102

.lr.ph178.i546:                                   ; preds = %.lr.ph178.i546.preheader, %.lr.ph178.i546
  %indvars.iv424.i = phi i64 [ %indvars.iv.next425.i.1, %.lr.ph178.i546 ], [ 0, %.lr.ph178.i546.preheader ] ; 4 uses
  %niter1502 = phi i64 [ %niter1502.next.1, %.lr.ph178.i546 ], [ 0, %.lr.ph178.i546.preheader ]
  %i.gmi = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv424.i ; 2 uses
  %i.gmj = getelementptr inbounds nuw i8, ptr %i.gmi, i64 1
  %i.gmk = load i8, ptr %i.gmi, align 1, !tbaa !13
  %i.gml = trunc nuw nsw i64 %indvars.iv424.i to i32
  %i.gmm = xor i32 %i.gml, -1
  %i.gmn = add nsw i32 %i.fvl, %i.gmm
  %i.gmo = tail call i32 @llvm.smin.i32(i32 %i.gmn, i32 7)
  %i.gmp = sext i32 %i.gmo to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gmj, i8 %i.gmk, i64 %i.gmp, i1 false)
  %indvars.iv.next425.i = or disjoint i64 %indvars.iv424.i, 8 ; 2 uses
  %i.gmq = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv.next425.i ; 2 uses
  %i.gmr = getelementptr inbounds nuw i8, ptr %i.gmq, i64 1
  %i.gms = load i8, ptr %i.gmq, align 1, !tbaa !13
  %i.gmt = trunc nuw nsw i64 %indvars.iv.next425.i to i32
  %i.gmu = xor i32 %i.gmt, -1
  %i.gmv = add nsw i32 %i.fvl, %i.gmu
  %i.gmw = tail call i32 @llvm.smin.i32(i32 %i.gmv, i32 7)
  %i.gmx = sext i32 %i.gmw to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gmr, i8 %i.gms, i64 %i.gmx, i1 false)
  %indvars.iv.next425.i.1 = add nuw nsw i64 %indvars.iv424.i, 16 ; 2 uses
  %niter1502.next.1 = add i64 %niter1502, 2       ; 2 uses
  %niter1502.ncmp.1.not = icmp eq i64 %niter1502.next.1, %unroll_iter1501
  br i1 %niter1502.ncmp.1.not, label %.loopexit45.i547.loopexit1377.unr-lcssa, label %.lr.ph178.i546, !llvm.loop !103

.loopexit45.i547.loopexit.unr-lcssa:              ; preds = %.lr.ph180.i554
  br i1 %lcmp.mod1505.not, label %.loopexit45.i547, label %.lr.ph180.i554.epil.preheader

.lr.ph180.i554.epil.preheader:                    ; preds = %.loopexit45.i547.loopexit.unr-lcssa, %.lr.ph180.i554.preheader
  %indvars.iv427.i.epil.init = phi i64 [ 0, %.lr.ph180.i554.preheader ], [ %indvars.iv.next428.i.3, %.loopexit45.i547.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1506)
  br label %.lr.ph180.i554.epil

.lr.ph180.i554.epil:                              ; preds = %.lr.ph180.i554.epil, %.lr.ph180.i554.epil.preheader
  %indvars.iv427.i.epil = phi i64 [ %indvars.iv.next428.i.epil, %.lr.ph180.i554.epil ], [ %indvars.iv427.i.epil.init, %.lr.ph180.i554.epil.preheader ] ; 2 uses
  %epil.iter1504 = phi i64 [ %epil.iter1504.next, %.lr.ph180.i554.epil ], [ 0, %.lr.ph180.i554.epil.preheader ]
  %i.gmy = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv427.i.epil ; 3 uses
  %i.gmz = load i8, ptr %i.gmy, align 1, !tbaa !13
  %i.gna = zext i8 %i.gmz to i32
  %i.gnb = mul nuw nsw i32 %i.gna, 16843009       ; 2 uses
  store i32 %i.gnb, ptr %i.gmy, align 4, !tbaa !13
  %i.gnc = getelementptr inbounds nuw i8, ptr %i.gmy, i64 4
  store i32 %i.gnb, ptr %i.gnc, align 4, !tbaa !13
  %indvars.iv.next428.i.epil = add nuw nsw i64 %indvars.iv427.i.epil, 8
  %epil.iter1504.next = add i64 %epil.iter1504, 1 ; 2 uses
  %epil.iter1504.cmp.not = icmp eq i64 %epil.iter1504.next, %xtraiter1503
  br i1 %epil.iter1504.cmp.not, label %.loopexit45.i547, label %.lr.ph180.i554.epil, !llvm.loop !124

.loopexit45.i547.loopexit1377.unr-lcssa:          ; preds = %.lr.ph178.i546
  br i1 %lcmp.mod1499.not.not, label %.lr.ph178.i546.epil.preheader, label %.loopexit45.i547

.lr.ph178.i546.epil.preheader:                    ; preds = %.loopexit45.i547.loopexit1377.unr-lcssa, %.lr.ph178.i546.preheader
  %indvars.iv424.i.epil.init = phi i64 [ 0, %.lr.ph178.i546.preheader ], [ %indvars.iv.next425.i.1, %.loopexit45.i547.loopexit1377.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1500)
  %i.gnd = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %indvars.iv424.i.epil.init ; 2 uses
  %i.gne = getelementptr inbounds nuw i8, ptr %i.gnd, i64 1
  %i.gnf = load i8, ptr %i.gnd, align 1, !tbaa !13
  %i.gng = trunc nuw nsw i64 %indvars.iv424.i.epil.init to i32
  %i.gnh = xor i32 %i.gng, -1
  %i.gni = add nsw i32 %i.fvl, %i.gnh
  %i.gnj = tail call i32 @llvm.smin.i32(i32 %i.gni, i32 7)
  %i.gnk = sext i32 %i.gnj to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gne, i8 %i.gnf, i64 %i.gnk, i1 false)
  br label %.loopexit45.i547

.loopexit45.i547:                                 ; preds = %.lr.ph178.i546.epil.preheader, %.loopexit45.i547.loopexit1377.unr-lcssa, %.loopexit45.i547.loopexit.unr-lcssa, %.lr.ph180.i554.epil, %.preheader44.i553, %.preheader46.i545
  br i1 %i.fvy, label %.preheader40.i551, label %.preheader42.i548

.preheader42.i548:                                ; preds = %.loopexit45.i547
  br i1 %.not265.i, label %.loopexit.i549, label %.lr.ph182.i.preheader

.lr.ph182.i.preheader:                            ; preds = %.preheader42.i548
  br i1 %i.fxc, label %.lr.ph182.i.epil.preheader, label %.lr.ph182.i

.preheader40.i551:                                ; preds = %.loopexit45.i547
  br i1 %.not265.i, label %.loopexit.i549, label %.lr.ph184.i552.preheader

.lr.ph184.i552.preheader:                         ; preds = %.preheader40.i551
  br i1 %i.fxe, label %.lr.ph184.i552.epil.preheader, label %.lr.ph184.i552

.lr.ph184.i552:                                   ; preds = %.lr.ph184.i552.preheader, %.lr.ph184.i552
  %indvars.iv433.i = phi i64 [ %indvars.iv.next434.i.3, %.lr.ph184.i552 ], [ 0, %.lr.ph184.i552.preheader ] ; 5 uses
  %niter1520 = phi i64 [ %niter1520.next.3, %.lr.ph184.i552 ], [ 0, %.lr.ph184.i552.preheader ]
  %i.gnl = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv433.i ; 3 uses
  %i.gnm = load i8, ptr %i.gnl, align 1, !tbaa !13
  %i.gnn = zext i8 %i.gnm to i32
  %i.gno = mul nuw nsw i32 %i.gnn, 16843009       ; 2 uses
  store i32 %i.gno, ptr %i.gnl, align 4, !tbaa !13
  %i.gnp = getelementptr inbounds nuw i8, ptr %i.gnl, i64 4
  store i32 %i.gno, ptr %i.gnp, align 4, !tbaa !13
  %i.gnq = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv433.i ; 2 uses
  %i.gnr = getelementptr inbounds nuw i8, ptr %i.gnq, i64 8 ; 2 uses
  %i.gns = load i8, ptr %i.gnr, align 1, !tbaa !13
  %i.gnt = zext i8 %i.gns to i32
  %i.gnu = mul nuw nsw i32 %i.gnt, 16843009       ; 2 uses
  store i32 %i.gnu, ptr %i.gnr, align 4, !tbaa !13
  %i.gnv = getelementptr inbounds nuw i8, ptr %i.gnq, i64 12
  store i32 %i.gnu, ptr %i.gnv, align 4, !tbaa !13
  %i.gnw = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv433.i ; 2 uses
  %i.gnx = getelementptr inbounds nuw i8, ptr %i.gnw, i64 16 ; 2 uses
  %i.gny = load i8, ptr %i.gnx, align 1, !tbaa !13
  %i.gnz = zext i8 %i.gny to i32
  %i.goa = mul nuw nsw i32 %i.gnz, 16843009       ; 2 uses
  store i32 %i.goa, ptr %i.gnx, align 4, !tbaa !13
  %i.gob = getelementptr inbounds nuw i8, ptr %i.gnw, i64 20
  store i32 %i.goa, ptr %i.gob, align 4, !tbaa !13
  %i.goc = getelementptr inbounds nuw i8, ptr %i.fye, i64 %indvars.iv433.i ; 2 uses
  %i.god = getelementptr inbounds nuw i8, ptr %i.goc, i64 24 ; 2 uses
  %i.goe = load i8, ptr %i.god, align 1, !tbaa !13
  %i.gof = zext i8 %i.goe to i32
  %i.gog = mul nuw nsw i32 %i.gof, 16843009       ; 2 uses
  store i32 %i.gog, ptr %i.god, align 4, !tbaa !13
  %i.goh = getelementptr inbounds nuw i8, ptr %i.goc, i64 28
  store i32 %i.gog, ptr %i.goh, align 4, !tbaa !13
  %indvars.iv.next434.i.3 = add nuw nsw i64 %indvars.iv433.i, 32 ; 2 uses
  %niter1520.next.3 = add i64 %niter1520, 4       ; 2 uses
  %niter1520.ncmp.3.not = icmp eq i64 %niter1520.next.3, %unroll_iter1519
end_hunk_2
