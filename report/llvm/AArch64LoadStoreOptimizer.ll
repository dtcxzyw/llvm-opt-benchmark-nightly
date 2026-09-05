Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64LoadStoreOptimizer?download=true
inline.NumInlined: 2993
inline.NumDeleted: 1301
begin_hunk_0_@_ZN12_GLOBAL__N_119AArch64LoadStoreOpt13optimizeBlockERN4llvm17MachineBasicBlockEb:bb.a
  %.pre612 = load ptr, ptr %i.g, align 8, !tbaa !389
  br label %._crit_edge499

._crit_edge499:                                   ; preds = %._crit_edge499.loopexit, %._crit_edge491
  %i.azr = phi ptr [ %i.ys, %._crit_edge491 ], [ %.pre612, %._crit_edge499.loopexit ] ; 3 uses
  %.7.lcssa = phi i1 [ %.5.lcssa, %._crit_edge491 ], [ %.8, %._crit_edge499.loopexit ] ; 2 uses
  %.not365501 = icmp eq ptr %i.azr, %i.i
  br i1 %.not365501, label %._crit_edge506, label %.lr.ph505

.lr.ph505:                                        ; preds = %._crit_edge499
  %i.azs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.azu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.azx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.azz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bab = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bac = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bae = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.baf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.baj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bal = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.gd

bb.et:                                            ; preds = %.lr.ph498, %bb.gc
  %.7496 = phi i1 [ %.5.lcssa, %.lr.ph498 ], [ %.8, %bb.gc ]
  %.sroa.0316.0495 = phi ptr [ %i.ys, %.lr.ph498 ], [ %.sroa.0316.2, %bb.gc ] ; 31 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %.sroa.0316.0495, i64 52 ; 5 uses
  %i.ban = load i32, ptr %i.bam, align 4, !tbaa !398
  switch i32 %i.ban, label %_ZL21isMergeableLdStUpdateRN4llvm12MachineInstrERNS_19AArch64FunctionInfoE.exit.thread [
    i32 7659, label %bb.eu
    i32 7674, label %bb.eu
    i32 7684, label %bb.eu
    i32 7664, label %bb.eu
    i32 7679, label %bb.eu
    i32 7694, label %bb.eu
    i32 7689, label %bb.eu
    i32 7669, label %bb.eu
    i32 7654, label %bb.eu
    i32 5103, label %bb.eu
    i32 5119, label %bb.eu
    i32 5157, label %bb.eu
    i32 5109, label %bb.eu
    i32 5125, label %bb.eu
    i32 5169, label %bb.eu
    i32 5163, label %bb.eu
    i32 5114, label %bb.eu
    i32 5098, label %bb.eu
    i32 7547, label %bb.eu
    i32 7734, label %bb.eu
    i32 7405, label %bb.eu
    i32 7730, label %bb.eu
    i32 7542, label %bb.eu
    i32 7719, label %bb.eu
    i32 7715, label %bb.eu
    i32 7718, label %bb.eu
    i32 7720, label %bb.eu
    i32 7721, label %bb.eu
    i32 5312, label %bb.eu
    i32 5303, label %bb.eu
    i32 5306, label %bb.eu
    i32 5313, label %bb.eu
    i32 5314, label %bb.eu
    i32 5081, label %bb.eu
    i32 5078, label %bb.eu
    i32 5072, label %bb.eu
    i32 5075, label %bb.eu
    i32 5084, label %bb.eu
    i32 5087, label %bb.eu
    i32 7641, label %bb.eu
    i32 7635, label %bb.eu
    i32 7638, label %bb.eu
    i32 7644, label %bb.eu
    i32 7647, label %bb.eu
  ]

bb.eu:                                            ; preds = %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et, %bb.et
  %i.bao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm16AArch64InstrInfo15getLdStOffsetOpERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20
  %i.bap = load i32, ptr %i.bao, align 8
  %i.baq = and i32 %i.bap, 255
  %i.bar = icmp eq i32 %i.baq, 1
  br i1 %i.bar, label %bb.ev, label %_ZL21isMergeableLdStUpdateRN4llvm12MachineInstrERNS_19AArch64FunctionInfoE.exit.thread

bb.ev:                                            ; preds = %bb.eu
  %i.bas = load i8, ptr %i.yt, align 8, !tbaa !792, !range !27, !noundef !28
  %i.bat = trunc nuw i8 %i.bas to i1
  br i1 %i.bat, label %bb.ew, label %_ZL21isMergeableLdStUpdateRN4llvm12MachineInstrERNS_19AArch64FunctionInfoE.exit

bb.ew:                                            ; preds = %bb.ev
  %i.bau = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm16AArch64InstrInfo13getLdStBaseOpERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 4
  %i.baw = load i32, ptr %i.bav, align 4, !tbaa !433
  %i.bax = icmp eq i32 %i.baw, 8
  br i1 %i.bax, label %_ZL21isMergeableLdStUpdateRN4llvm12MachineInstrERNS_19AArch64FunctionInfoE.exit.thread, label %_ZL21isMergeableLdStUpdateRN4llvm12MachineInstrERNS_19AArch64FunctionInfoE.exit

_ZL21isMergeableLdStUpdateRN4llvm12MachineInstrERNS_19AArch64FunctionInfoE.exit: ; preds = %bb.ew, %bb.ev
  %i.bay = getelementptr inbounds nuw i8, ptr %.sroa.0316.0495, i64 24 ; 2 uses
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !432
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 48 ; 3 uses
  %i.bbb = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasOrderedMemoryRefEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20
  br i1 %i.bbb, label %bb.ex, label %.critedge.i110

bb.ex:                                            ; preds = %_ZL21isMergeableLdStUpdateRN4llvm12MachineInstrERNS_19AArch64FunctionInfoE.exit
  %i.bbc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm16AArch64InstrInfo13getLdStBaseOpERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 4
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !433
  %.not.i162 = icmp eq i32 %i.bbe, 8
  br i1 %.not.i162, label %.critedge.i110, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %.val.i163 = load i32, ptr %i.bam, align 4, !tbaa !398
  switch i32 %.val.i163, label %_ZL21isMergeableLdStUpdateRN4llvm12MachineInstrERNS_19AArch64FunctionInfoE.exit.thread [
    i32 7547, label %.critedge.i110
    i32 7734, label %.critedge.i110
    i32 7405, label %.critedge.i110
    i32 7730, label %.critedge.i110
    i32 7542, label %.critedge.i110
  ]

.critedge.i110:                                   ; preds = %bb.ey, %bb.ey, %bb.ey, %bb.ey, %bb.ey, %bb.ex, %_ZL21isMergeableLdStUpdateRN4llvm12MachineInstrERNS_19AArch64FunctionInfoE.exit
  %i.bbf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL11UpdateLimit, i64 120), align 8, !tbaa !431
  %i.bbg = call fastcc ptr @_ZN12_GLOBAL__N_119AArch64LoadStoreOpt29findMatchingUpdateInsnForwardEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEij(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr %.sroa.0316.0495, i32 noundef 0, i32 noundef %i.bbf) ; 2 uses
  %.not59.i = icmp eq ptr %i.bbg, %i.bba
  br i1 %.not59.i, label %.critedge40.i, label %bb.ez

bb.ez:                                            ; preds = %.critedge.i110
  %i.bbh = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_119AArch64LoadStoreOpt15mergeUpdateInsnEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEES4_bbb(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nonnull %.sroa.0316.0495, ptr %i.bbg, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  %i.bbi = extractvalue { ptr, i8 } %i.bbh, 1
  %i.bbj = trunc nuw i8 %i.bbi to i1
  br i1 %i.bbj, label %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt20tryToMergeLdStUpdateERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit, label %.critedge40.i

.critedge40.i:                                    ; preds = %bb.ez, %.critedge.i110
  %i.bbk = load i32, ptr %i.bam, align 4, !tbaa !398
  %i.bbl = call noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo21hasUnscaledLdStOffsetEj(i32 noundef %i.bbk) #20
  br i1 %i.bbl, label %_ZL21isMergeableLdStUpdateRN4llvm12MachineInstrERNS_19AArch64FunctionInfoE.exit.thread, label %bb.fa

bb.fa:                                            ; preds = %.critedge40.i
  %i.bbm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL11UpdateLimit, i64 120), align 8, !tbaa !431
  %i.bbn = load ptr, ptr %i.bay, align 8, !tbaa !432 ; 2 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 56
  %i.bbp = load ptr, ptr %i.bbo, align 8, !tbaa !389 ; 4 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbn, i64 48 ; 10 uses
  %i.bbr = call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20
  %i.bbs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm16AArch64InstrInfo13getLdStBaseOpERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 4
  %i.bbu = load i32, ptr %i.bbt, align 4, !tbaa !433 ; 5 uses
  %i.bbv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm16AArch64InstrInfo15getLdStOffsetOpERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbv, i64 16
  %i.bbx = load i64, ptr %i.bbw, align 8, !tbaa !433
  %i.bby = call noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo12isPairedLdStERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.bbz = call noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo9isPreLdStERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20
  %i.bca = call noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo12isPairedLdStERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20 ; 0 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %.sroa.0316.0495, i64 32 ; 2 uses
  %i.bcc = load ptr, ptr %i.bcb, align 8, !tbaa !437
  %i.bcd = zext i1 %i.bbz to i64
  %i.bce = getelementptr inbounds nuw [32 x i8], ptr %i.bcc, i64 %i.bcd
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 4
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !433 ; 3 uses
  store i32 %i.bcg, ptr %9, align 4
  br i1 %i.bby, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.bch = call noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo9isPreLdStERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20
  %i.bci = call noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo12isPairedLdStERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20
  %i.bcj = load ptr, ptr %i.bcb, align 8, !tbaa !437
  %i.bck = zext i1 %i.bci to i64
  %i.bcl = select i1 %i.bch, i64 2, i64 %i.bck
  %i.bcm = getelementptr inbounds nuw [32 x i8], ptr %i.bcj, i64 %i.bcl
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 4
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !433
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.bcp = phi i32 [ %i.bco, %bb.fb ], [ 0, %bb.fa ] ; 3 uses
  store i32 %i.bcp, ptr %i.yu, align 4
  %i.bcq = icmp eq ptr %.sroa.0316.0495, %i.bbp
  %i.bcr = and i64 %i.bbx, 4294967295
  %i.bcs = icmp ne i64 %i.bcr, 0
  %or.cond.i.i112 = or i1 %i.bcq, %i.bcs
  br i1 %or.cond.i.i112, label %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt30findMatchingUpdateInsnBackwardEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjRb.exit.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %.val.i.i113 = load i32, ptr %i.bam, align 4, !tbaa !398
  switch i32 %.val.i.i113, label %_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.i.i [
    i32 7547, label %_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.thread.i.i
    i32 7734, label %_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.thread.i.i
    i32 7405, label %_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.thread.i.i
    i32 7730, label %_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.thread.i.i
  ]

_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.i.i:  ; preds = %bb.fd
  %43 = select i1 %i.bby, i32 2, i32 1
  br label %bb.fe

bb.fe:                                            ; preds = %.loopexit166.i.i, %_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.i.i
  %indvars.iv.i.i = phi i64 [ 0, %_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.i.i ], [ %indvars.iv.next.i.i, %.loopexit166.i.i ] ; 2 uses
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.i.i
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !531 ; 3 uses
  %i.bcv = icmp eq i32 %i.bcu, %i.bbu
  br i1 %i.bcv, label %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt30findMatchingUpdateInsnBackwardEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjRb.exit.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.bcw = load ptr, ptr %i.yv, align 8, !tbaa !180 ; 2 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcw, i64 56
  %i.bcy = load ptr, ptr %i.bcx, align 8, !tbaa !438, !noalias !793
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcw, i64 8
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !439, !noalias !793
  %i.bdb = zext i32 %i.bcu to i64
  %i.bdc = getelementptr inbounds nuw [24 x i8], ptr %i.bda, i64 %i.bdb
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 8
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !532, !noalias !793
  %i.bdf = zext i32 %i.bde to i64
  %i.bdg = getelementptr inbounds nuw [2 x i8], ptr %i.bcy, i64 %i.bdf ; 2 uses
  %i.bdh = load i16, ptr %i.bdg, align 2, !tbaa !442, !noalias !793 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.bdh, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit166.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %bb.ff
  %i.bdi = zext i16 %i.bdh to i32
  %i.bdj = add i32 %i.bcu, %i.bdi
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %.pn.i.i.i.i = phi ptr [ %i.bdn, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i ], [ %i.bdg, %.lr.ph.i.i.i.i.preheader.i.i.i.i ]
  %i.bdk = phi i32 [ %i.bdq, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i ], [ %i.bdj, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.bdl = and i32 %i.bdk, 65535
  %i.bdm = icmp eq i32 %i.bbu, %i.bdl
  br i1 %i.bdm, label %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt30findMatchingUpdateInsnBackwardEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjRb.exit.i, label %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i

_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bdn = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 2 ; 2 uses
  %i.bdo = load i16, ptr %i.bdn, align 2, !tbaa !442, !noalias !794 ; 2 uses
  %i.bdp = zext i16 %i.bdo to i32
  %i.bdq = add i32 %i.bdk, %i.bdp
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bdo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit166.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !5

.loopexit166.i.i:                                 ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i.i, %bb.ff
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond = icmp eq i32 %43, %lftr.wideiv
  br i1 %exitcond, label %_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.thread.i.i, label %bb.fe, !llvm.loop !667

_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.thread.i.i: ; preds = %.loopexit166.i.i, %bb.fd, %bb.fd, %bb.fd, %bb.fd
  %i.bdr = icmp eq i32 %i.bbu, 8                  ; 2 uses
  br i1 %i.bdr, label %bb.fg, label %_ZL11needsWinCFIPKN4llvm15MachineFunctionE.exit.thread138.i.i

bb.fg:                                            ; preds = %_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.thread.i.i
  %i.bds = call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495) #20 ; 2 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 8
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !399, !nonnull !28, !align !170
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 1072
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !401 ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 296
  %i.bdy = load i32, ptr %i.bdx, align 8, !tbaa !419
  %i.bdz = icmp eq i32 %i.bdy, 4
  br i1 %i.bdz, label %_ZNK4llvm9MCAsmInfo14usesWindowsCFIEv.exit.i.i.i, label %_ZL11needsWinCFIPKN4llvm15MachineFunctionE.exit.thread138.i.i

_ZNK4llvm9MCAsmInfo14usesWindowsCFIEv.exit.i.i.i: ; preds = %bb.fg
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdw, i64 304
  %i.beb = load i32, ptr %i.bea, align 8, !tbaa !420
  switch i32 %i.beb, label %bb.fh [
    i32 6, label %_ZL11needsWinCFIPKN4llvm15MachineFunctionE.exit.thread138.i.i
    i32 0, label %_ZL11needsWinCFIPKN4llvm15MachineFunctionE.exit.thread138.i.i
  ]

bb.fh:                                            ; preds = %_ZNK4llvm9MCAsmInfo14usesWindowsCFIEv.exit.i.i.i
  %i.bec = load ptr, ptr %i.bds, align 8, !tbaa !169, !nonnull !28, !align !170 ; 3 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 128
  %i.bee = call noundef i32 @_ZNK4llvm13AttributeList14getUWTableKindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bed) #20
  %.not.i2.i.i.i = icmp eq i32 %i.bee, 0
  br i1 %.not.i2.i.i.i, label %bb.fi, label %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt30findMatchingUpdateInsnBackwardEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjRb.exit.i

bb.fi:                                            ; preds = %bb.fh
  %i.bef = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.bec, i32 noundef 45) #20
  br i1 %i.bef, label %_ZL11needsWinCFIPKN4llvm15MachineFunctionE.exit.i.i, label %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt30findMatchingUpdateInsnBackwardEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjRb.exit.i

_ZL11needsWinCFIPKN4llvm15MachineFunctionE.exit.i.i: ; preds = %bb.fi
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bec, i64 2
  %i.beh = load i16, ptr %i.beg, align 2, !tbaa !424
  %i.bei = and i16 %i.beh, 8
  %.not152.i.i = icmp eq i16 %i.bei, 0
  br i1 %.not152.i.i, label %_ZL11needsWinCFIPKN4llvm15MachineFunctionE.exit.thread138.i.i, label %_ZN12_GLOBAL__N_119AArch64LoadStoreOpt30findMatchingUpdateInsnBackwardEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjRb.exit.i

_ZL11needsWinCFIPKN4llvm15MachineFunctionE.exit.thread138.i.i: ; preds = %_ZL11needsWinCFIPKN4llvm15MachineFunctionE.exit.i.i, %_ZNK4llvm9MCAsmInfo14usesWindowsCFIEv.exit.i.i.i, %_ZNK4llvm9MCAsmInfo14usesWindowsCFIEv.exit.i.i.i, %bb.fg, %_ZL10isTagStoreRKN4llvm12MachineInstrE.exit.thread.i.i
  %i.bej = load ptr, ptr %i.bbr, align 8, !tbaa !169, !nonnull !28, !align !170
  %i.bek = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.bej, i32 noundef 39) #20
  %i.bel = load i32, ptr %i.yx, align 8, !tbaa !52 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i114 = icmp eq i32 %i.bel, 0
  br i1 %.not5.i.i.i.i.i.i.i.i.i114, label %_ZN4llvm12LiveRegUnits5clearEv.exit.i.i117, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i115

.lr.ph.i.i.i.i.i.preheader.i.i.i.i115:            ; preds = %_ZL11needsWinCFIPKN4llvm15MachineFunctionE.exit.thread138.i.i
  %i.bem = zext i32 %i.bel to i64
  %.idx.i.i.i.i.i.i116 = shl nuw nsw i64 %i.bem, 3
  %i.ben = load ptr, ptr %i.yy, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr align 8 %i.ben, i8 0, i64 %.idx.i.i.i.i.i.i116, i1 false), !tbaa !35
  br label %_ZN4llvm12LiveRegUnits5clearEv.exit.i.i117

_ZN4llvm12LiveRegUnits5clearEv.exit.i.i117:       ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i115, %_ZL11needsWinCFIPKN4llvm15MachineFunctionE.exit.thread138.i.i
  %i.beo = load i32, ptr %i.za, align 8, !tbaa !52 ; 2 uses
  %.not5.i.i.i.i.i.i.i64.i.i = icmp eq i32 %i.beo, 0
  br i1 %.not5.i.i.i.i.i.i.i64.i.i, label %_ZN4llvm12LiveRegUnits5clearEv.exit67.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i65.i.i

.lr.ph.i.i.i.i.i.preheader.i.i65.i.i:             ; preds = %_ZN4llvm12LiveRegUnits5clearEv.exit.i.i117
  %i.bep = zext i32 %i.beo to i64
  %.idx.i.i.i.i66.i.i = shl nuw nsw i64 %i.bep, 3
  %i.beq = load ptr, ptr %i.zb, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr align 8 %i.beq, i8 0, i64 %.idx.i.i.i.i66.i.i, i1 false), !tbaa !35
  br label %_ZN4llvm12LiveRegUnits5clearEv.exit67.i.i

_ZN4llvm12LiveRegUnits5clearEv.exit67.i.i:        ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i65.i.i, %_ZN4llvm12LiveRegUnits5clearEv.exit.i.i117
  %i.ber = zext i32 %i.bbu to i64                 ; 2 uses
  %.not155.i.i = icmp eq i32 %i.bcg, 0
  %i.bes = zext i32 %i.bcg to i64                 ; 2 uses
  %.not156.i.i = icmp eq i32 %i.bcp, 0
  %i.bet = zext i32 %i.bcp to i64                 ; 2 uses
  br label %bb.fj

bb.fj:                                            ; preds = %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i.i147, %_ZN4llvm12LiveRegUnits5clearEv.exit67.i.i
  %.0.i118 = phi i1 [ true, %_ZN4llvm12LiveRegUnits5clearEv.exit67.i.i ], [ %.1.i146, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i.i147 ] ; 7 uses
  %.sroa.0119.0.i.i = phi ptr [ %.sroa.0316.0495, %_ZN4llvm12LiveRegUnits5clearEv.exit67.i.i ], [ %.sroa.03.0.lcssa.i.i.i.i135, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i.i147 ]
  %.057.i.i = phi i32 [ 0, %_ZN4llvm12LiveRegUnits5clearEv.exit67.i.i ], [ %i.bga, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i.i147 ] ; 2 uses
  %.055.i.i = phi i1 [ false, %_ZN4llvm12LiveRegUnits5clearEv.exit67.i.i ], [ %.2.i.i, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i.i147 ] ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i8.i.i.i.i119 = load i64, ptr %.sroa.0119.0.i.i, align 8
  %i.beu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i8.i.i.i.i119, -8
  %i.bev = inttoptr i64 %i.beu to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bev) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i.i.i120 = load i64, ptr %i.bev, align 8
  %i.bew = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i.i.i120, 4
  %.not.i5.i.i.i.i.i.i121 = icmp eq i64 %i.bew, 0
  br i1 %.not.i5.i.i.i.i.i.i121, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i.i.i.i156, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i.i.i122

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i.i.i.i156: ; preds = %bb.fj
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bev, i64 44
  %i.bey = load i32, ptr %i.bex, align 4, !tbaa !425
  %i.bez = and i32 %i.bey, 4
  %.not45.i.i.i.i.i.i.i157 = icmp eq i32 %i.bez, 0
  br i1 %.not45.i.i.i.i.i.i.i157, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i.i.i122, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i.i.i158

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i.i.i158: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i.i.i.i156, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i.i.i158
  %.sroa.0.06.i.i.i.i.i.i.i159 = phi ptr [ %i.bfb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i.i.i158 ], [ %i.bev, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i.i.i.i156 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i160 = load i64, ptr %.sroa.0.06.i.i.i.i.i.i.i159, align 8
  %i.bfa = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i160, -8
  %i.bfb = inttoptr i64 %i.bfa to ptr             ; 3 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 44
  %i.bfd = load i32, ptr %i.bfc, align 4, !tbaa !425
  %i.bfe = and i32 %i.bfd, 4
  %.not4.i.i.i.i.i.i.i161 = icmp eq i32 %i.bfe, 0
  br i1 %.not4.i.i.i.i.i.i.i161, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i.i.i122, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i.i.i158, !llvm.loop !605

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i.i.i122: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i.i.i158, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i.i.i.i156, %bb.fj
  %.sroa.0.1.i.i.i9.i.i.i.i123 = phi ptr [ %i.bev, %bb.fj ], [ %i.bev, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i.i.i.i156 ], [ %i.bfb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i.i.i.i158 ] ; 3 uses
  %.not7.i.i.i.i124 = icmp eq ptr %.sroa.0.1.i.i.i9.i.i.i.i123, %i.bbp
  br i1 %.not7.i.i.i.i124, label %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134, label %.lr.ph.i6.i.i.i125

.lr.ph.i6.i.i.i125:                               ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i.i.i122, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i9.i.i.i131
  %.sroa.03.08.i.i.i.i126 = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i132, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i9.i.i.i131 ], [ %.sroa.0.1.i.i.i9.i.i.i.i123, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i.i.i122 ] ; 3 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i126, i64 52
  %i.bfg = load i32, ptr %i.bff, align 4, !tbaa !398
  switch i32 %i.bfg, label %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134 [
    i32 25, label %.critedge2.i.i.i.i127
    i32 18, label %.critedge2.i.i.i.i127
    i32 17, label %.critedge2.i.i.i.i127
    i32 16, label %.critedge2.i.i.i.i127
    i32 15, label %.critedge2.i.i.i.i127
    i32 14, label %.critedge2.i.i.i.i127
  ]

.critedge2.i.i.i.i127:                            ; preds = %.lr.ph.i6.i.i.i125, %.lr.ph.i6.i.i.i125, %.lr.ph.i6.i.i.i125, %.lr.ph.i6.i.i.i125, %.lr.ph.i6.i.i.i125, %.lr.ph.i6.i.i.i125
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i128 = load i64, ptr %.sroa.03.08.i.i.i.i126, align 8
  %i.bfh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i128, -8
  %i.bfi = inttoptr i64 %i.bfh to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bfi) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i7.i.i.i129 = load i64, ptr %i.bfi, align 8
  %i.bfj = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i7.i.i.i129, 4
  %.not.i5.i.i.i8.i.i.i130 = icmp eq i64 %i.bfj, 0
  br i1 %.not.i5.i.i.i8.i.i.i130, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i150, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i9.i.i.i131

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i150: ; preds = %.critedge2.i.i.i.i127
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfi, i64 44
  %i.bfl = load i32, ptr %i.bfk, align 4, !tbaa !425
  %i.bfm = and i32 %i.bfl, 4
  %.not45.i.i.i.i11.i.i.i151 = icmp eq i32 %i.bfm, 0
  br i1 %.not45.i.i.i.i11.i.i.i151, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i9.i.i.i131, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i152

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i152: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i150, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i152
  %.sroa.0.06.i.i.i.i12.i.i.i153 = phi ptr [ %i.bfo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i152 ], [ %i.bfi, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i150 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i13.i.i.i154 = load i64, ptr %.sroa.0.06.i.i.i.i12.i.i.i153, align 8
  %i.bfn = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i13.i.i.i154, -8
  %i.bfo = inttoptr i64 %i.bfn to ptr             ; 3 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 44
  %i.bfq = load i32, ptr %i.bfp, align 4, !tbaa !425
  %i.bfr = and i32 %i.bfq, 4
  %.not4.i.i.i.i14.i.i.i155 = icmp eq i32 %i.bfr, 0
  br i1 %.not4.i.i.i.i14.i.i.i155, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i9.i.i.i131, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i152, !llvm.loop !605

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i9.i.i.i131: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i152, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i150, %.critedge2.i.i.i.i127
  %.sroa.0.1.i.i.i.i.i.i.i132 = phi ptr [ %i.bfi, %.critedge2.i.i.i.i127 ], [ %i.bfi, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i150 ], [ %i.bfo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i152 ] ; 3 uses
  %.not.i10.i.i.i133 = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.i132, %i.bbp
  br i1 %.not.i10.i.i.i133, label %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134, label %.lr.ph.i6.i.i.i125, !llvm.loop !606

_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i9.i.i.i131, %.lr.ph.i6.i.i.i125, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i.i.i122
  %.sroa.03.0.lcssa.i.i.i.i135 = phi ptr [ %.sroa.0.1.i.i.i9.i.i.i.i123, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i.i.i122 ], [ %.sroa.03.08.i.i.i.i126, %.lr.ph.i6.i.i.i125 ], [ %.sroa.0.1.i.i.i.i.i.i.i132, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i9.i.i.i131 ] ; 11 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i135, i64 52
  %i.bft = load i32, ptr %i.bfs, align 4, !tbaa !398 ; 2 uses
  switch i32 %i.bft, label %_ZNK4llvm12MachineInstr11isTransientEv.exit.i.i149 [
    i32 0, label %_ZNK4llvm12MachineInstr11isTransientEv.exit.thread.i.i136
    i32 74, label %_ZNK4llvm12MachineInstr11isTransientEv.exit.thread.i.i136
    i32 20, label %_ZNK4llvm12MachineInstr11isTransientEv.exit.thread.i.i136
    i32 21, label %_ZNK4llvm12MachineInstr11isTransientEv.exit.thread.i.i136
    i32 9, label %_ZNK4llvm12MachineInstr11isTransientEv.exit.thread.i.i136
    i32 12, label %_ZNK4llvm12MachineInstr11isTransientEv.exit.thread.i.i136
    i32 19, label %_ZNK4llvm12MachineInstr11isTransientEv.exit.thread.i.i136
  ]

_ZNK4llvm12MachineInstr11isTransientEv.exit.i.i149: ; preds = %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134
  %i.bfu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i135, i64 16
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !434
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 16
  %i.bfx = load i64, ptr %i.bfw, align 8, !tbaa !436
  %.fr153.i.i = freeze i64 %i.bfx
  %i.bfy = and i64 %.fr153.i.i, 16
  %.not154.i.i = icmp eq i64 %i.bfy, 0
  %i.bfz = add i32 %.057.i.i, 1
  br i1 %.not154.i.i, label %bb.fk, label %_ZNK4llvm12MachineInstr11isTransientEv.exit.thread.i.i136

_ZNK4llvm12MachineInstr11isTransientEv.exit.thread.i.i136: ; preds = %_ZNK4llvm12MachineInstr11isTransientEv.exit.i.i149, %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134, %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134, %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134, %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134, %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134, %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134, %_ZN4llvm10prev_nodbgINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i.i134
  br label %bb.fk

bb.fk:                                            ; preds = %_ZNK4llvm12MachineInstr11isTransientEv.exit.thread.i.i136, %_ZNK4llvm12MachineInstr11isTransientEv.exit.i.i149
  %i.bga = phi i32 [ %.057.i.i, %_ZNK4llvm12MachineInstr11isTransientEv.exit.thread.i.i136 ], [ %i.bfz, %_ZNK4llvm12MachineInstr11isTransientEv.exit.i.i149 ] ; 2 uses
  %i.bgb = getelementptr i8, ptr %.sroa.03.0.lcssa.i.i.i.i135, i64 32
  %.val61.i.i = load ptr, ptr %i.bgb, align 8
  %i.bgc = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64LoadStoreOpt20isMatchingUpdateInsnERN4llvm12MachineInstrES3_ji(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0316.0495, ptr %.val61.i.i, i32 %i.bft, i32 noundef %i.bbu, i32 noundef 0)
  br i1 %i.bgc, label %bb.fl, label %bb.fo

bb.fl:                                            ; preds = %bb.fk
  br i1 %.055.i.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.bgd = getelementptr i8, ptr %.sroa.03.0.lcssa.i.i.i.i135, i64 32
end_hunk_0
