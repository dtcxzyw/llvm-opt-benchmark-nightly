inline.NumInlined: 758
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z33expandedEnsembleUpdateLambdaStateP8_IO_FILEPK10t_inputrecPK14gmx_enerdata_tiP12df_history_tl:bb.a
_ZL13UpdateWeightsiP10t_expandedP12df_history_tiPKfS4_l.exit: ; preds = %_ZL24CheckIfDoneEquilibratingiPK10t_expandedPK12df_history_tl.exit.thread.thread.i, %_ZL24CheckIfDoneEquilibratingiPK10t_expandedPK12df_history_tl.exit.thread.i, %.lr.ph.i
  %i.aua = phi i1 [ false, %_ZL24CheckIfDoneEquilibratingiPK10t_expandedPK12df_history_tl.exit.thread.thread.i ], [ false, %_ZL24CheckIfDoneEquilibratingiPK10t_expandedPK12df_history_tl.exit.thread.i ], [ true, %.lr.ph.i ] ; 2 uses
  %.not191 = icmp eq ptr %0, null
  br i1 %.not191, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZL13UpdateWeightsiP10t_expandedP12df_history_tiPKfS4_l.exit
  %i.aub = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !203
  %i.aud = tail call noundef ptr @_Z17enumValueToString32LambdaWeightWillReachEquilibrium(i32 noundef %i.auc)
  %i.aue = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, i64 noundef %5, ptr noundef %i.aud) #19 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %_ZL13UpdateWeightsiP10t_expandedP12df_history_tiPKfS4_l.exit.thread, %bb.bl, %_ZL13UpdateWeightsiP10t_expandedP12df_history_tiPKfS4_l.exit
  %i.auf = phi i1 [ %i.hm, %_ZL13UpdateWeightsiP10t_expandedP12df_history_tiPKfS4_l.exit.thread ], [ %i.aua, %bb.bl ], [ %i.aua, %_ZL13UpdateWeightsiP10t_expandedP12df_history_tiPKfS4_l.exit ] ; 5 uses
  %i.aug = phi i1 [ %i.atz, %_ZL13UpdateWeightsiP10t_expandedP12df_history_tiPKfS4_l.exit.thread ], [ true, %bb.bl ], [ false, %_ZL13UpdateWeightsiP10t_expandedP12df_history_tiPKfS4_l.exit ]
  %i.auh = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 36
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !277
  %i.auk = sext i32 %i.auj to i64                 ; 5 uses
  %i.aul = add nsw i64 %i.auk, 2
  %i.aum = add nsw i64 %i.auk, 5
  %i.aun = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.auo = load i32, ptr %i.aun, align 4, !tbaa !62 ; 3 uses
  %i.aup = and i32 %i.auo, -2
  %switch.i136 = icmp eq i32 %i.aup, 4
  br i1 %switch.i136, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.auq = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !201 ; 3 uses
  %i.aus = icmp sgt i32 %i.aur, 0
  br i1 %i.aus, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.aut = load ptr, ptr %i.u, align 8, !tbaa !52 ; 2 uses
  %i.auu = getelementptr [4 x i8], ptr %i.aut, i64 %i.i
  %i.auv = getelementptr i8, ptr %i.auu, i64 -4
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !54
  %.not.i = icmp sgt i32 %i.auw, %i.aur
  br i1 %.not.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %i.p
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !54
  %i.auz = icmp eq i32 %i.auy, %i.aur
  br i1 %i.auz, label %bb.bq, label %_ZL15ChooseNewLambdaiPK10t_expandedP12df_history_tiPKfPdll.exit

bb.bq:                                            ; preds = %bb.bp
  %i.ava = add nsw i32 %3, 1                      ; 2 uses
  %i.avb = icmp eq i32 %i.ava, %i.h
  %spec.select.i161 = select i1 %i.avb, i32 %3, i32 %i.ava
  br label %_ZL15ChooseNewLambdaiPK10t_expandedP12df_history_tiPKfPdll.exit

bb.br:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.avc = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.25, i32 noundef 878, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8) ; 29 uses
  %i.avd = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.25, i32 noundef 879, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8) ; 26 uses
  %i.ave = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.25, i32 noundef 880, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8) ; 24 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.avg = load i32, ptr %i.avf, align 8, !tbaa !278
  %i.avh = icmp sgt i32 %i.avg, 0
  br i1 %i.avh, label %.lr.ph405.i, label %._crit_edge406.i

.lr.ph405.i:                                      ; preds = %bb.br
  %i.avi = ptrtoaddr ptr %i.ave to i64
  %i.avj = ptrtoaddr ptr %i.avd to i64            ; 2 uses
  %i.avk = ptrtoaddr ptr %i.avc to i64            ; 2 uses
  %i.avl = add i64 %5, %i.auk
  %i.avm = xor i64 %i.auk, 2004413935125305890    ; 4 uses
  %i.avn = add nsw i64 %i.avm, 1
  %i.avo = add nsw i64 %i.avm, 4
  %i.avp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.avq = add nsw i32 %i.h, -1                   ; 3 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.avs = getelementptr inbounds nuw i8, ptr %4, i64 496
  %i.avt = getelementptr inbounds nuw i8, ptr %4, i64 480 ; 6 uses
  %i.avu = zext i32 %i.h to i64                   ; 3 uses
  %i.avv = shl nuw nsw i64 %i.avu, 3              ; 2 uses
  %scevgep734 = getelementptr i8, ptr %i.ave, i64 8
  %i.avw = sub i64 %i.n, %i.avi
  %diff.check762 = icmp ugt i64 %i.avw, -128
  %i.avx = sub i64 %i.avk, %i.avj
  %diff.check = icmp ugt i64 %i.avx, -128
  %i.avy = sub i64 %i.n, %i.avk
  %diff.check695 = icmp ugt i64 %i.avy, -128
  %conflict.rdx696 = or i1 %diff.check, %diff.check695
  %i.avz = sub i64 %i.n, %i.avj
  %diff.check697 = icmp ugt i64 %i.avz, -128
  %conflict.rdx698 = or i1 %conflict.rdx696, %diff.check697
  %xtraiter934 = and i64 %i.avu, 1
  %i.awa = icmp eq i32 %i.h, 1
  %unroll_iter938 = and i64 %i.avu, 4294967294
  %lcmp.mod936.not = icmp eq i64 %xtraiter934, 0
  %lcmp.mod937 = trunc i32 %i.h to i1
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge392.i, %.lr.ph405.i
  %indvars.iv461.i = phi i64 [ 0, %.lr.ph405.i ], [ %indvars.iv.next462.i, %._crit_edge392.i ] ; 2 uses
  %.0200402.i = phi i32 [ %3, %.lr.ph405.i ], [ %.5224.i, %._crit_edge392.i ] ; 17 uses
  %.0204400.i = phi float [ 0.000000e+00, %.lr.ph405.i ], [ %.9.i, %._crit_edge392.i ] ; 6 uses
  %i.awb = add nuw nsw i64 %indvars.iv461.i, 32768 ; 3 uses
  %i.awc = add i64 %i.avl, %i.awb                 ; 2 uses
  %i.awd = tail call i64 @llvm.fshl.i64(i64 %i.awb, i64 %i.awb, i64 16)
  %i.awe = xor i64 %i.awd, %i.awc                 ; 3 uses
  %i.awf = add i64 %i.awe, %i.awc                 ; 2 uses
  %i.awg = tail call i64 @llvm.fshl.i64(i64 %i.awe, i64 %i.awe, i64 42)
  %i.awh = xor i64 %i.awg, %i.awf                 ; 3 uses
  %i.awi = add i64 %i.awh, %i.awf                 ; 2 uses
  %i.awj = tail call i64 @llvm.fshl.i64(i64 %i.awh, i64 %i.awh, i64 12)
  %i.awk = xor i64 %i.awj, %i.awi                 ; 3 uses
  %i.awl = add i64 %i.awk, %i.awi                 ; 2 uses
  %i.awm = tail call i64 @llvm.fshl.i64(i64 %i.awk, i64 %i.awk, i64 31)
  %i.awn = xor i64 %i.awm, %i.awl
  %i.awo = add i64 %i.awl, 32768
  %i.awp = add i64 %i.avn, %i.awn                 ; 3 uses
  %i.awq = add i64 %i.awo, %i.awp                 ; 2 uses
  %i.awr = tail call i64 @llvm.fshl.i64(i64 %i.awp, i64 %i.awp, i64 16)
  %i.aws = xor i64 %i.awr, %i.awq                 ; 3 uses
  %i.awt = add i64 %i.aws, %i.awq                 ; 2 uses
  %i.awu = tail call i64 @llvm.fshl.i64(i64 %i.aws, i64 %i.aws, i64 32)
  %i.awv = xor i64 %i.awu, %i.awt                 ; 3 uses
  %i.aww = add i64 %i.awv, %i.awt                 ; 2 uses
  %i.awx = tail call i64 @llvm.fshl.i64(i64 %i.awv, i64 %i.awv, i64 24)
  %i.awy = xor i64 %i.awx, %i.aww                 ; 3 uses
  %i.awz = add i64 %i.awy, %i.aww                 ; 2 uses
  %i.axa = tail call i64 @llvm.fshl.i64(i64 %i.awy, i64 %i.awy, i64 21)
  %i.axb = xor i64 %i.axa, %i.awz
  %i.axc = add i64 %i.awz, %i.avm
  %i.axd = add i64 %i.aul, %i.axb                 ; 3 uses
  %i.axe = add i64 %i.axc, %i.axd                 ; 2 uses
  %i.axf = tail call i64 @llvm.fshl.i64(i64 %i.axd, i64 %i.axd, i64 16)
  %i.axg = xor i64 %i.axf, %i.axe                 ; 3 uses
  %i.axh = add i64 %i.axg, %i.axe                 ; 2 uses
  %i.axi = tail call i64 @llvm.fshl.i64(i64 %i.axg, i64 %i.axg, i64 42)
  %i.axj = xor i64 %i.axi, %i.axh                 ; 3 uses
  %i.axk = add i64 %i.axj, %i.axh                 ; 2 uses
  %i.axl = tail call i64 @llvm.fshl.i64(i64 %i.axj, i64 %i.axj, i64 12)
  %i.axm = xor i64 %i.axl, %i.axk                 ; 3 uses
  %i.axn = add i64 %i.axm, %i.axk                 ; 2 uses
  %i.axo = tail call i64 @llvm.fshl.i64(i64 %i.axm, i64 %i.axm, i64 31)
  %i.axp = xor i64 %i.axo, %i.axn
  %i.axq = add i64 %i.axn, %i.auk
  %i.axr = add i64 %i.axp, 32771                  ; 3 uses
  %i.axs = add i64 %i.axq, %i.axr                 ; 2 uses
  %i.axt = tail call i64 @llvm.fshl.i64(i64 %i.axr, i64 %i.axr, i64 16)
  %i.axu = xor i64 %i.axt, %i.axs                 ; 3 uses
  %i.axv = add i64 %i.axu, %i.axs                 ; 2 uses
  %i.axw = tail call i64 @llvm.fshl.i64(i64 %i.axu, i64 %i.axu, i64 32)
  %i.axx = xor i64 %i.axw, %i.axv                 ; 3 uses
  %i.axy = add i64 %i.axx, %i.axv                 ; 2 uses
  %i.axz = tail call i64 @llvm.fshl.i64(i64 %i.axx, i64 %i.axx, i64 24)
  %i.aya = xor i64 %i.axz, %i.axy                 ; 3 uses
  %i.ayb = add i64 %i.aya, %i.axy                 ; 2 uses
  %i.ayc = tail call i64 @llvm.fshl.i64(i64 %i.aya, i64 %i.aya, i64 21)
  %i.ayd = xor i64 %i.ayc, %i.ayb
  %i.aye = add i64 %i.ayb, 32768
  %i.ayf = add i64 %i.avo, %i.ayd                 ; 3 uses
  %i.ayg = add i64 %i.aye, %i.ayf                 ; 2 uses
  %i.ayh = tail call i64 @llvm.fshl.i64(i64 %i.ayf, i64 %i.ayf, i64 16)
  %i.ayi = xor i64 %i.ayh, %i.ayg                 ; 3 uses
  %i.ayj = add i64 %i.ayi, %i.ayg                 ; 2 uses
  %i.ayk = tail call i64 @llvm.fshl.i64(i64 %i.ayi, i64 %i.ayi, i64 42)
  %i.ayl = xor i64 %i.ayk, %i.ayj                 ; 3 uses
  %i.aym = add i64 %i.ayl, %i.ayj                 ; 2 uses
  %i.ayn = tail call i64 @llvm.fshl.i64(i64 %i.ayl, i64 %i.ayl, i64 12)
  %i.ayo = xor i64 %i.ayn, %i.aym                 ; 3 uses
  %i.ayp = add i64 %i.ayo, %i.aym                 ; 2 uses
  %i.ayq = tail call i64 @llvm.fshl.i64(i64 %i.ayo, i64 %i.ayo, i64 31)
  %i.ayr = xor i64 %i.ayq, %i.ayp
  %i.ays = add i64 %i.ayp, %i.avm                 ; 3 uses
  %i.ayt = add i64 %i.aum, %i.ayr                 ; 2 uses
  br i1 %i.auf, label %.lr.ph.preheader.i, label %._crit_edge.i138

.lr.ph.preheader.i:                               ; preds = %bb.bs
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.avc, i8 0, i64 %i.avv, i1 false), !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.avd, i8 0, i64 %i.avv, i1 false), !tbaa !70
  br label %._crit_edge.i138

._crit_edge.i138:                                 ; preds = %.lr.ph.preheader.i, %bb.bs
  %i.ayu = load i32, ptr %i.avp, align 8, !tbaa !279 ; 4 uses
  switch i32 %i.ayu, label %bb.db [
    i32 3, label %bb.bt
    i32 4, label %bb.bt
    i32 1, label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit279.i
    i32 2, label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit279.i
  ]

bb.bt:                                            ; preds = %._crit_edge.i138, %._crit_edge.i138
  %i.ayv = load i32, ptr %i.avr, align 8, !tbaa !280 ; 3 uses
  %i.ayw = icmp slt i32 %i.ayv, 0
  br i1 %i.ayw, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ayx = sub nsw i32 %.0200402.i, %i.ayv
  %i.ayy = add nsw i32 %i.ayv, %.0200402.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.ayx, i32 0)
  %spec.select252.i = tail call i32 @llvm.smin.i32(i32 %i.ayy, i32 %i.avq)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0216.i = phi i32 [ %spec.select252.i, %bb.bu ], [ %i.avq, %bb.bt ] ; 13 uses
  %.0212.i = phi i32 [ %spec.store.select.i, %bb.bu ], [ 0, %bb.bt ] ; 8 uses
  %i.ayz = zext nneg i32 %.0212.i to i64          ; 33 uses
  %.not36.i.i139 = icmp sgt i32 %.0212.i, %.0216.i ; 3 uses
  br i1 %.not36.i.i139, label %_ZL26GenerateGibbsProbabilitiesPKfPdS1_ii.exit.i, label %.lr.ph.preheader.i.i140

.lr.ph.preheader.i.i140:                          ; preds = %bb.bv
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ayz
  %i.azb = load float, ptr %i.aza, align 4, !tbaa !53 ; 2 uses
  %i.azc = add nuw i32 %.0216.i, 1                ; 5 uses
  %i.azd = add i32 %.0216.i, 1
  %i.aze = sub i32 %i.azd, %.0212.i
  %i.azf = sub i32 %.0216.i, %.0212.i
  %xtraiter919 = and i32 %i.aze, 7                ; 2 uses
  %lcmp.mod920.not = icmp eq i32 %xtraiter919, 0
  br i1 %lcmp.mod920.not, label %.lr.ph.i.i141.prol.loopexit, label %.lr.ph.i.i141.prol

.lr.ph.i.i141.prol:                               ; preds = %.lr.ph.preheader.i.i140, %.lr.ph.i.i141.prol
  %indvars.iv.i.i142.prol = phi i64 [ %indvars.iv.next.i.i145.prol, %.lr.ph.i.i141.prol ], [ %i.ayz, %.lr.ph.preheader.i.i140 ] ; 2 uses
  %.038.i.i143.prol = phi float [ %.1.i.i144.prol, %.lr.ph.i.i141.prol ], [ %i.azb, %.lr.ph.preheader.i.i140 ] ; 2 uses
  %prol.iter921 = phi i32 [ %prol.iter921.next, %.lr.ph.i.i141.prol ], [ 0, %.lr.ph.preheader.i.i140 ]
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i142.prol
  %i.azh = load float, ptr %i.azg, align 4, !tbaa !53 ; 2 uses
  %i.azi = fcmp ogt float %i.azh, %.038.i.i143.prol
  %.1.i.i144.prol = select i1 %i.azi, float %i.azh, float %.038.i.i143.prol ; 3 uses
  %indvars.iv.next.i.i145.prol = add nuw nsw i64 %indvars.iv.i.i142.prol, 1 ; 2 uses
  %prol.iter921.next = add i32 %prol.iter921, 1   ; 2 uses
  %prol.iter921.cmp.not = icmp eq i32 %prol.iter921.next, %xtraiter919
  br i1 %prol.iter921.cmp.not, label %.lr.ph.i.i141.prol.loopexit, label %.lr.ph.i.i141.prol, !llvm.loop !281

.lr.ph.i.i141.prol.loopexit:                      ; preds = %.lr.ph.i.i141.prol, %.lr.ph.preheader.i.i140
  %.1.i.i144.lcssa.unr = phi float [ poison, %.lr.ph.preheader.i.i140 ], [ %.1.i.i144.prol, %.lr.ph.i.i141.prol ]
  %indvars.iv.i.i142.unr = phi i64 [ %i.ayz, %.lr.ph.preheader.i.i140 ], [ %indvars.iv.next.i.i145.prol, %.lr.ph.i.i141.prol ]
  %.038.i.i143.unr = phi float [ %i.azb, %.lr.ph.preheader.i.i140 ], [ %.1.i.i144.prol, %.lr.ph.i.i141.prol ]
  %i.azj = icmp ult i32 %i.azf, 7
  br i1 %i.azj, label %.lr.ph41.i.i148.preheader, label %.lr.ph.i.i141

.lr.ph.i.i141:                                    ; preds = %.lr.ph.i.i141.prol.loopexit, %.lr.ph.i.i141
  %indvars.iv.i.i142 = phi i64 [ %indvars.iv.next.i.i145.7, %.lr.ph.i.i141 ], [ %indvars.iv.i.i142.unr, %.lr.ph.i.i141.prol.loopexit ] ; 9 uses
  %.038.i.i143 = phi float [ %.1.i.i144.7, %.lr.ph.i.i141 ], [ %.038.i.i143.unr, %.lr.ph.i.i141.prol.loopexit ] ; 2 uses
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i142
  %i.azl = load float, ptr %i.azk, align 4, !tbaa !53 ; 2 uses
  %i.azm = fcmp ogt float %i.azl, %.038.i.i143
  %.1.i.i144 = select i1 %i.azm, float %i.azl, float %.038.i.i143 ; 2 uses
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i142
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 4
  %i.azp = load float, ptr %i.azo, align 4, !tbaa !53 ; 2 uses
  %i.azq = fcmp ogt float %i.azp, %.1.i.i144
  %.1.i.i144.1 = select i1 %i.azq, float %i.azp, float %.1.i.i144 ; 2 uses
  %i.azr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i142
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  %i.azt = load float, ptr %i.azs, align 4, !tbaa !53 ; 2 uses
  %i.azu = fcmp ogt float %i.azt, %.1.i.i144.1
  %.1.i.i144.2 = select i1 %i.azu, float %i.azt, float %.1.i.i144.1 ; 2 uses
  %i.azv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i142
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 12
  %i.azx = load float, ptr %i.azw, align 4, !tbaa !53 ; 2 uses
  %i.azy = fcmp ogt float %i.azx, %.1.i.i144.2
  %.1.i.i144.3 = select i1 %i.azy, float %i.azx, float %.1.i.i144.2 ; 2 uses
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i142
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 16
  %i.bab = load float, ptr %i.baa, align 4, !tbaa !53 ; 2 uses
  %i.bac = fcmp ogt float %i.bab, %.1.i.i144.3
  %.1.i.i144.4 = select i1 %i.bac, float %i.bab, float %.1.i.i144.3 ; 2 uses
  %i.bad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i142
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 20
  %i.baf = load float, ptr %i.bae, align 4, !tbaa !53 ; 2 uses
  %i.bag = fcmp ogt float %i.baf, %.1.i.i144.4
  %.1.i.i144.5 = select i1 %i.bag, float %i.baf, float %.1.i.i144.4 ; 2 uses
  %i.bah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i142
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 24
  %i.baj = load float, ptr %i.bai, align 4, !tbaa !53 ; 2 uses
  %i.bak = fcmp ogt float %i.baj, %.1.i.i144.5
  %.1.i.i144.6 = select i1 %i.bak, float %i.baj, float %.1.i.i144.5 ; 2 uses
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i142
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 28
  %i.ban = load float, ptr %i.bam, align 4, !tbaa !53 ; 2 uses
  %i.bao = fcmp ogt float %i.ban, %.1.i.i144.6
  %.1.i.i144.7 = select i1 %i.bao, float %i.ban, float %.1.i.i144.6 ; 2 uses
  %indvars.iv.next.i.i145.7 = add nuw nsw i64 %indvars.iv.i.i142, 8 ; 2 uses
  %lftr.wideiv.i.i.7 = trunc i64 %indvars.iv.next.i.i145.7 to i32
  %exitcond.not.i.i146.7 = icmp eq i32 %i.azc, %lftr.wideiv.i.i.7
  br i1 %exitcond.not.i.i146.7, label %.lr.ph41.i.i148.preheader, label %.lr.ph.i.i141, !llvm.loop !217

.lr.ph41.i.i148.preheader:                        ; preds = %.lr.ph.i.i141, %.lr.ph.i.i141.prol.loopexit
  %.1.i.i144.lcssa = phi float [ %.1.i.i144.lcssa.unr, %.lr.ph.i.i141.prol.loopexit ], [ %.1.i.i144.7, %.lr.ph.i.i141 ] ; 2 uses
  br label %.lr.ph41.i.i148

.lr.ph41.i.i148:                                  ; preds = %.lr.ph41.i.i148.preheader, %.lr.ph41.i.i148
  %indvars.iv46.i.i149 = phi i64 [ %indvars.iv.next47.i.i150, %.lr.ph41.i.i148 ], [ %i.ayz, %.lr.ph41.i.i148.preheader ] ; 2 uses
  %i.bap = phi double [ %i.bav, %.lr.ph41.i.i148 ], [ 0.000000e+00, %.lr.ph41.i.i148.preheader ]
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv46.i.i149
  %i.bar = load float, ptr %i.baq, align 4, !tbaa !53
  %i.bas = fsub float %i.bar, %.1.i.i144.lcssa
  %i.bat = tail call noundef float @expf(float noundef %i.bas) #19
  %i.bau = fpext float %i.bat to double
  %i.bav = fadd double %i.bap, %i.bau             ; 7 uses
  %indvars.iv.next47.i.i150 = add nuw nsw i64 %indvars.iv46.i.i149, 1 ; 2 uses
  %lftr.wideiv49.i.i = trunc i64 %indvars.iv.next47.i.i150 to i32
  %exitcond50.not.i.i = icmp eq i32 %i.azc, %lftr.wideiv49.i.i
  br i1 %exitcond50.not.i.i, label %.lr.ph44.i.i152, label %.lr.ph41.i.i148, !llvm.loop !219

.lr.ph44.i.i152:                                  ; preds = %.lr.ph41.i.i148, %.lr.ph44.i.i152
  %indvars.iv51.i.i153 = phi i64 [ %indvars.iv.next52.i.i154, %.lr.ph44.i.i152 ], [ %i.ayz, %.lr.ph41.i.i148 ] ; 3 uses
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv51.i.i153
  %i.bax = load float, ptr %i.baw, align 4, !tbaa !53
  %i.bay = fsub float %i.bax, %.1.i.i144.lcssa
  %i.baz = tail call noundef float @expf(float noundef %i.bay) #19
  %i.bba = fpext float %i.baz to double
  %i.bbb = fdiv double %i.bba, %i.bav
  %i.bbc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv51.i.i153
  store double %i.bbb, ptr %i.bbc, align 8, !tbaa !70
  %indvars.iv.next52.i.i154 = add nuw nsw i64 %indvars.iv51.i.i153, 1 ; 2 uses
  %lftr.wideiv54.i.i = trunc i64 %indvars.iv.next52.i.i154 to i32
  %exitcond55.not.i.i = icmp eq i32 %i.azc, %lftr.wideiv54.i.i
  br i1 %exitcond55.not.i.i, label %_ZL26GenerateGibbsProbabilitiesPKfPdS1_ii.exit.thread.i, label %.lr.ph44.i.i152, !llvm.loop !220

_ZL26GenerateGibbsProbabilitiesPKfPdS1_ii.exit.i: ; preds = %bb.bv
  %i.bbd = icmp eq i32 %i.ayu, 3
  br i1 %i.bbd, label %.loopexit.i160, label %._crit_edge364.i

_ZL26GenerateGibbsProbabilitiesPKfPdS1_ii.exit.thread.i: ; preds = %.lr.ph44.i.i152
  %i.bbe = icmp eq i32 %i.ayu, 3
  %wide.trip.count449.i = zext i32 %i.azc to i64  ; 11 uses
  %i.bbf = sub nsw i64 %wide.trip.count449.i, %i.ayz ; 13 uses
  %min.iters.check700 = icmp ult i64 %i.bbf, 4    ; 2 uses
  br i1 %i.bbe, label %iter.check716, label %iter.check780

iter.check780:                                    ; preds = %_ZL26GenerateGibbsProbabilitiesPKfPdS1_ii.exit.thread.i
  %or.cond835 = or i1 %min.iters.check700, %diff.check762
  br i1 %or.cond835, label %.lr.ph363.i.preheader, label %vector.main.loop.iter.check765

vector.main.loop.iter.check765:                   ; preds = %iter.check780
  %min.iters.check766 = icmp ult i64 %i.bbf, 16
  br i1 %min.iters.check766, label %vec.epilog.ph784, label %vector.ph767

vector.ph767:                                     ; preds = %vector.main.loop.iter.check765
  %i.bbg = and i64 %i.bbf, 12
  %n.vec768 = and i64 %i.bbf, -16                 ; 4 uses
  %i.bbh = add nsw i64 %n.vec768, %i.ayz
  br label %vector.body769

vector.body769:                                   ; preds = %vector.body769, %vector.ph767
  %index770 = phi i64 [ 0, %vector.ph767 ], [ %index.next775, %vector.body769 ] ; 2 uses
  %i.bbi = add nuw i64 %index770, %i.ayz          ; 2 uses
  %i.bbj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bbi ; 4 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 32
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbj, i64 64
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbj, i64 96
  %wide.load771 = load <4 x double>, ptr %i.bbj, align 8, !tbaa !70
  %wide.load772 = load <4 x double>, ptr %i.bbk, align 8, !tbaa !70
  %wide.load773 = load <4 x double>, ptr %i.bbl, align 8, !tbaa !70
  %wide.load774 = load <4 x double>, ptr %i.bbm, align 8, !tbaa !70
  %i.bbn = fsub <4 x double> splat (double 1.000000e+00), %wide.load771
  %i.bbo = fsub <4 x double> splat (double 1.000000e+00), %wide.load772
  %i.bbp = fsub <4 x double> splat (double 1.000000e+00), %wide.load773
  %i.bbq = fsub <4 x double> splat (double 1.000000e+00), %wide.load774
  %i.bbr = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %i.bbi ; 4 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 32
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbr, i64 64
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbr, i64 96
  store <4 x double> %i.bbn, ptr %i.bbr, align 8, !tbaa !70
  store <4 x double> %i.bbo, ptr %i.bbs, align 8, !tbaa !70
  store <4 x double> %i.bbp, ptr %i.bbt, align 8, !tbaa !70
  store <4 x double> %i.bbq, ptr %i.bbu, align 8, !tbaa !70
  %index.next775 = add nuw i64 %index770, 16      ; 2 uses
  %i.bbv = icmp eq i64 %index.next775, %n.vec768
  br i1 %i.bbv, label %middle.block776, label %vector.body769, !llvm.loop !282

middle.block776:                                  ; preds = %vector.body769
  %cmp.n777 = icmp eq i64 %i.bbf, %n.vec768
  br i1 %cmp.n777, label %._crit_edge364.thread.i, label %vec.epilog.iter.check782

vec.epilog.iter.check782:                         ; preds = %middle.block776
  %min.epilog.iters.check783 = icmp eq i64 %i.bbg, 0
  br i1 %min.epilog.iters.check783, label %.lr.ph363.i.preheader, label %vec.epilog.ph784, !prof !59

vec.epilog.ph784:                                 ; preds = %vector.main.loop.iter.check765, %vec.epilog.iter.check782
  %vec.epilog.resume.val778 = phi i64 [ %n.vec768, %vec.epilog.iter.check782 ], [ 0, %vector.main.loop.iter.check765 ]
  %n.vec785 = and i64 %i.bbf, -4                  ; 3 uses
  %i.bbw = add nsw i64 %n.vec785, %i.ayz
  br label %vec.epilog.vector.body786

vec.epilog.vector.body786:                        ; preds = %vec.epilog.vector.body786, %vec.epilog.ph784
  %index787 = phi i64 [ %vec.epilog.resume.val778, %vec.epilog.ph784 ], [ %index.next789, %vec.epilog.vector.body786 ] ; 2 uses
  %i.bbx = add nuw i64 %index787, %i.ayz          ; 2 uses
  %i.bby = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bbx
  %wide.load788 = load <4 x double>, ptr %i.bby, align 8, !tbaa !70
  %i.bbz = fsub <4 x double> splat (double 1.000000e+00), %wide.load788
  %i.bca = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %i.bbx
  store <4 x double> %i.bbz, ptr %i.bca, align 8, !tbaa !70
  %index.next789 = add nuw i64 %index787, 4       ; 2 uses
  %i.bcb = icmp eq i64 %index.next789, %n.vec785
  br i1 %i.bcb, label %vec.epilog.middle.block790, label %vec.epilog.vector.body786, !llvm.loop !283

vec.epilog.middle.block790:                       ; preds = %vec.epilog.vector.body786
  %cmp.n791 = icmp eq i64 %i.bbf, %n.vec785
  br i1 %cmp.n791, label %._crit_edge364.thread.i, label %.lr.ph363.i.preheader

.lr.ph363.i.preheader:                            ; preds = %iter.check780, %vec.epilog.iter.check782, %vec.epilog.middle.block790
  %indvars.iv.i155.ph = phi i64 [ %i.ayz, %iter.check780 ], [ %i.bbh, %vec.epilog.iter.check782 ], [ %i.bbw, %vec.epilog.middle.block790 ] ; 4 uses
  %i.bcc = sub nsw i64 %wide.trip.count449.i, %indvars.iv.i155.ph
  %i.bcd = zext i32 %.0216.i to i64
  %i.bce = sub nsw i64 %i.bcd, %indvars.iv.i155.ph
  %xtraiter922 = and i64 %i.bcc, 7                ; 2 uses
  %lcmp.mod923.not = icmp eq i64 %xtraiter922, 0
  br i1 %lcmp.mod923.not, label %.lr.ph363.i.prol.loopexit, label %.lr.ph363.i.prol

.lr.ph363.i.prol:                                 ; preds = %.lr.ph363.i.preheader, %.lr.ph363.i.prol
  %indvars.iv.i155.prol = phi i64 [ %indvars.iv.next.i156.prol, %.lr.ph363.i.prol ], [ %indvars.iv.i155.ph, %.lr.ph363.i.preheader ] ; 3 uses
  %prol.iter924 = phi i64 [ %prol.iter924.next, %.lr.ph363.i.prol ], [ 0, %.lr.ph363.i.preheader ]
  %i.bcf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i155.prol
  %i.bcg = load double, ptr %i.bcf, align 8, !tbaa !70
  %i.bch = fsub double 1.000000e+00, %i.bcg
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %indvars.iv.i155.prol
  store double %i.bch, ptr %i.bci, align 8, !tbaa !70
  %indvars.iv.next.i156.prol = add nuw nsw i64 %indvars.iv.i155.prol, 1 ; 2 uses
  %prol.iter924.next = add i64 %prol.iter924, 1   ; 2 uses
  %prol.iter924.cmp.not = icmp eq i64 %prol.iter924.next, %xtraiter922
  br i1 %prol.iter924.cmp.not, label %.lr.ph363.i.prol.loopexit, label %.lr.ph363.i.prol, !llvm.loop !284

.lr.ph363.i.prol.loopexit:                        ; preds = %.lr.ph363.i.prol, %.lr.ph363.i.preheader
  %indvars.iv.i155.unr = phi i64 [ %indvars.iv.i155.ph, %.lr.ph363.i.preheader ], [ %indvars.iv.next.i156.prol, %.lr.ph363.i.prol ]
  %i.bcj = icmp ult i64 %i.bce, 7
  br i1 %i.bcj, label %._crit_edge364.thread.i, label %.lr.ph363.i

iter.check716:                                    ; preds = %_ZL26GenerateGibbsProbabilitiesPKfPdS1_ii.exit.thread.i
  %brmerge = or i1 %min.iters.check700, %conflict.rdx698
  br i1 %brmerge, label %.lr.ph381.i.preheader, label %vector.main.loop.iter.check701

vector.main.loop.iter.check701:                   ; preds = %iter.check716
  %min.iters.check702 = icmp ult i64 %i.bbf, 16
  br i1 %min.iters.check702, label %vec.epilog.ph720, label %vector.ph703

vector.ph703:                                     ; preds = %vector.main.loop.iter.check701
  %i.bck = and i64 %i.bbf, 12
  %n.vec704 = and i64 %i.bbf, -16                 ; 4 uses
  %i.bcl = add nsw i64 %n.vec704, %i.ayz
  br label %vector.body705

vector.body705:                                   ; preds = %vector.body705, %vector.ph703
  %index706 = phi i64 [ 0, %vector.ph703 ], [ %index.next711, %vector.body705 ] ; 2 uses
  %i.bcm = add nuw i64 %index706, %i.ayz          ; 3 uses
  %i.bcn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bcm ; 4 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 32
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcn, i64 64
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcn, i64 96
  %wide.load707 = load <4 x double>, ptr %i.bcn, align 8, !tbaa !70
  %wide.load708 = load <4 x double>, ptr %i.bco, align 8, !tbaa !70
  %wide.load709 = load <4 x double>, ptr %i.bcp, align 8, !tbaa !70
  %wide.load710 = load <4 x double>, ptr %i.bcq, align 8, !tbaa !70
  %i.bcr = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %i.bcm ; 4 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 32
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcr, i64 64
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcr, i64 96
  store <4 x double> %wide.load707, ptr %i.bcr, align 8, !tbaa !70
  store <4 x double> %wide.load708, ptr %i.bcs, align 8, !tbaa !70
  store <4 x double> %wide.load709, ptr %i.bct, align 8, !tbaa !70
  store <4 x double> %wide.load710, ptr %i.bcu, align 8, !tbaa !70
  %i.bcv = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %i.bcm ; 4 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 32
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcv, i64 64
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcv, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.bcv, align 8, !tbaa !70
  store <4 x double> splat (double 1.000000e+00), ptr %i.bcw, align 8, !tbaa !70
  store <4 x double> splat (double 1.000000e+00), ptr %i.bcx, align 8, !tbaa !70
  store <4 x double> splat (double 1.000000e+00), ptr %i.bcy, align 8, !tbaa !70
  %index.next711 = add nuw i64 %index706, 16      ; 2 uses
  %i.bcz = icmp eq i64 %index.next711, %n.vec704
  br i1 %i.bcz, label %middle.block712, label %vector.body705, !llvm.loop !285

middle.block712:                                  ; preds = %vector.body705
  %cmp.n713 = icmp eq i64 %i.bbf, %n.vec704
  br i1 %cmp.n713, label %.lr.ph385.preheader.i, label %vec.epilog.iter.check718

vec.epilog.iter.check718:                         ; preds = %middle.block712
  %min.epilog.iters.check719 = icmp eq i64 %i.bck, 0
  br i1 %min.epilog.iters.check719, label %.lr.ph381.i.preheader, label %vec.epilog.ph720, !prof !59

vec.epilog.ph720:                                 ; preds = %vector.main.loop.iter.check701, %vec.epilog.iter.check718
  %vec.epilog.resume.val714 = phi i64 [ %n.vec704, %vec.epilog.iter.check718 ], [ 0, %vector.main.loop.iter.check701 ]
  %n.vec721 = and i64 %i.bbf, -4                  ; 3 uses
  %i.bda = add nsw i64 %n.vec721, %i.ayz
  br label %vec.epilog.vector.body722

vec.epilog.vector.body722:                        ; preds = %vec.epilog.vector.body722, %vec.epilog.ph720
  %index723 = phi i64 [ %vec.epilog.resume.val714, %vec.epilog.ph720 ], [ %index.next725, %vec.epilog.vector.body722 ] ; 2 uses
  %i.bdb = add nuw i64 %index723, %i.ayz          ; 3 uses
  %i.bdc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bdb
  %wide.load724 = load <4 x double>, ptr %i.bdc, align 8, !tbaa !70
  %i.bdd = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %i.bdb
  store <4 x double> %wide.load724, ptr %i.bdd, align 8, !tbaa !70
  %i.bde = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %i.bdb
  store <4 x double> splat (double 1.000000e+00), ptr %i.bde, align 8, !tbaa !70
  %index.next725 = add nuw i64 %index723, 4       ; 2 uses
  %i.bdf = icmp eq i64 %index.next725, %n.vec721
  br i1 %i.bdf, label %vec.epilog.middle.block726, label %vec.epilog.vector.body722, !llvm.loop !286

vec.epilog.middle.block726:                       ; preds = %vec.epilog.vector.body722
  %cmp.n727 = icmp eq i64 %i.bbf, %n.vec721
  br i1 %cmp.n727, label %.lr.ph385.preheader.i, label %.lr.ph381.i.preheader

.lr.ph381.i.preheader:                            ; preds = %iter.check716, %vec.epilog.iter.check718, %vec.epilog.middle.block726
  %indvars.iv446.i.ph = phi i64 [ %i.ayz, %iter.check716 ], [ %i.bda, %vec.epilog.middle.block726 ], [ %i.bcl, %vec.epilog.iter.check718 ] ; 4 uses
  %i.bdg = sub nsw i64 %wide.trip.count449.i, %indvars.iv446.i.ph
  %i.bdh = zext i32 %.0216.i to i64
  %i.bdi = sub nsw i64 %i.bdh, %indvars.iv446.i.ph
  %xtraiter928 = and i64 %i.bdg, 7                ; 2 uses
  %lcmp.mod929.not = icmp eq i64 %xtraiter928, 0
  br i1 %lcmp.mod929.not, label %.lr.ph381.i.prol.loopexit, label %.lr.ph381.i.prol

.lr.ph381.i.prol:                                 ; preds = %.lr.ph381.i.preheader, %.lr.ph381.i.prol
  %indvars.iv446.i.prol = phi i64 [ %indvars.iv.next447.i.prol, %.lr.ph381.i.prol ], [ %indvars.iv446.i.ph, %.lr.ph381.i.preheader ] ; 4 uses
  %prol.iter930 = phi i64 [ %prol.iter930.next, %.lr.ph381.i.prol ], [ 0, %.lr.ph381.i.preheader ]
  %i.bdj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv446.i.prol
  %i.bdk = load double, ptr %i.bdj, align 8, !tbaa !70
  %i.bdl = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv446.i.prol
  store double %i.bdk, ptr %i.bdl, align 8, !tbaa !70
  %i.bdm = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %indvars.iv446.i.prol
  store double 1.000000e+00, ptr %i.bdm, align 8, !tbaa !70
  %indvars.iv.next447.i.prol = add nuw nsw i64 %indvars.iv446.i.prol, 1 ; 2 uses
  %prol.iter930.next = add i64 %prol.iter930, 1   ; 2 uses
  %prol.iter930.cmp.not = icmp eq i64 %prol.iter930.next, %xtraiter928
  br i1 %prol.iter930.cmp.not, label %.lr.ph381.i.prol.loopexit, label %.lr.ph381.i.prol, !llvm.loop !287

.lr.ph381.i.prol.loopexit:                        ; preds = %.lr.ph381.i.prol, %.lr.ph381.i.preheader
  %indvars.iv446.i.unr = phi i64 [ %indvars.iv446.i.ph, %.lr.ph381.i.preheader ], [ %indvars.iv.next447.i.prol, %.lr.ph381.i.prol ]
  %i.bdn = icmp ult i64 %i.bdi, 7
  br i1 %i.bdn, label %.lr.ph385.preheader.i, label %.lr.ph381.i

.lr.ph381.i:                                      ; preds = %.lr.ph381.i.prol.loopexit, %.lr.ph381.i
  %indvars.iv446.i = phi i64 [ %indvars.iv.next447.i.7, %.lr.ph381.i ], [ %indvars.iv446.i.unr, %.lr.ph381.i.prol.loopexit ] ; 11 uses
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv446.i
  %i.bdp = load double, ptr %i.bdo, align 8, !tbaa !70
  %i.bdq = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv446.i
  store double %i.bdp, ptr %i.bdq, align 8, !tbaa !70
  %i.bdr = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %indvars.iv446.i
  store double 1.000000e+00, ptr %i.bdr, align 8, !tbaa !70
  %indvars.iv.next447.i = add nuw nsw i64 %indvars.iv446.i, 1 ; 3 uses
  %i.bds = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next447.i
  %i.bdt = load double, ptr %i.bds, align 8, !tbaa !70
  %i.bdu = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv.next447.i
  store double %i.bdt, ptr %i.bdu, align 8, !tbaa !70
  %i.bdv = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %indvars.iv.next447.i
  store double 1.000000e+00, ptr %i.bdv, align 8, !tbaa !70
  %indvars.iv.next447.i.1 = add nuw nsw i64 %indvars.iv446.i, 2 ; 3 uses
  %i.bdw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next447.i.1
  %i.bdx = load double, ptr %i.bdw, align 8, !tbaa !70
  %i.bdy = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv.next447.i.1
  store double %i.bdx, ptr %i.bdy, align 8, !tbaa !70
  %i.bdz = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %indvars.iv.next447.i.1
  store double 1.000000e+00, ptr %i.bdz, align 8, !tbaa !70
  %indvars.iv.next447.i.2 = add nuw nsw i64 %indvars.iv446.i, 3 ; 3 uses
  %i.bea = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next447.i.2
  %i.beb = load double, ptr %i.bea, align 8, !tbaa !70
  %i.bec = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv.next447.i.2
  store double %i.beb, ptr %i.bec, align 8, !tbaa !70
  %i.bed = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %indvars.iv.next447.i.2
  store double 1.000000e+00, ptr %i.bed, align 8, !tbaa !70
  %indvars.iv.next447.i.3 = add nuw nsw i64 %indvars.iv446.i, 4 ; 3 uses
  %i.bee = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next447.i.3
  %i.bef = load double, ptr %i.bee, align 8, !tbaa !70
  %i.beg = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv.next447.i.3
  store double %i.bef, ptr %i.beg, align 8, !tbaa !70
  %i.beh = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %indvars.iv.next447.i.3
  store double 1.000000e+00, ptr %i.beh, align 8, !tbaa !70
  %indvars.iv.next447.i.4 = add nuw nsw i64 %indvars.iv446.i, 5 ; 3 uses
  %i.bei = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next447.i.4
  %i.bej = load double, ptr %i.bei, align 8, !tbaa !70
  %i.bek = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv.next447.i.4
  store double %i.bej, ptr %i.bek, align 8, !tbaa !70
  %i.bel = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %indvars.iv.next447.i.4
  store double 1.000000e+00, ptr %i.bel, align 8, !tbaa !70
  %indvars.iv.next447.i.5 = add nuw nsw i64 %indvars.iv446.i, 6 ; 3 uses
  %i.bem = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next447.i.5
  %i.ben = load double, ptr %i.bem, align 8, !tbaa !70
  %i.beo = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv.next447.i.5
  store double %i.ben, ptr %i.beo, align 8, !tbaa !70
  %i.bep = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %indvars.iv.next447.i.5
  store double 1.000000e+00, ptr %i.bep, align 8, !tbaa !70
  %indvars.iv.next447.i.6 = add nuw nsw i64 %indvars.iv446.i, 7 ; 3 uses
  %i.beq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next447.i.6
  %i.ber = load double, ptr %i.beq, align 8, !tbaa !70
  %i.bes = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv.next447.i.6
  store double %i.ber, ptr %i.bes, align 8, !tbaa !70
  %i.bet = getelementptr inbounds nuw [8 x i8], ptr %i.avd, i64 %indvars.iv.next447.i.6
  store double 1.000000e+00, ptr %i.bet, align 8, !tbaa !70
  %indvars.iv.next447.i.7 = add nuw nsw i64 %indvars.iv446.i, 8 ; 2 uses
  %exitcond450.not.i.7 = icmp eq i64 %indvars.iv.next447.i.7, %wide.trip.count449.i
  br i1 %exitcond450.not.i.7, label %.lr.ph385.preheader.i, label %.lr.ph381.i, !llvm.loop !288

.lr.ph385.preheader.i:                            ; preds = %.lr.ph381.i.prol.loopexit, %.lr.ph381.i, %vec.epilog.middle.block726, %middle.block712
  %i.beu = uitofp i64 %i.ays to float
  %i.bev = fmul nnan float %i.beu, f0x1F800000    ; 2 uses
  %i.bew = fcmp oeq float %i.bev, 1.000000e+00
  %.013.i.i.i.i = select i1 %i.bew, float 0.000000e+00, float %i.bev
  %7 = tail call i32 @llvm.umax.i32(i32 %.0216.i, i32 %.0212.i)
  %i.bex = zext nneg i32 %7 to i64
  br label %.lr.ph385.i

.lr.ph385.i:                                      ; preds = %bb.bw, %.lr.ph385.preheader.i
  %indvars.iv451.i = phi i64 [ %i.ayz, %.lr.ph385.preheader.i ], [ %indvars.iv.next452.i, %bb.bw ] ; 4 uses
  %.0213384.i = phi float [ %.013.i.i.i.i, %.lr.ph385.preheader.i ], [ %i.bfd, %bb.bw ]
  %i.bey = fpext float %.0213384.i to double      ; 2 uses
  %i.bez = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv451.i
  %i.bfa = load double, ptr %i.bez, align 8, !tbaa !70 ; 2 uses
  %i.bfb = fcmp ult double %i.bfa, %i.bey
  br i1 %i.bfb, label %bb.bw, label %.loopexit.loopexit510.i

bb.bw:                                            ; preds = %.lr.ph385.i
  %i.bfc = fsub double %i.bey, %i.bfa
  %i.bfd = fptrunc double %i.bfc to float
  %indvars.iv.next452.i = add nuw nsw i64 %indvars.iv451.i, 1
  %exitcond455.not.i = icmp eq i64 %indvars.iv451.i, %i.bex
  br i1 %exitcond455.not.i, label %.loopexit.thread.i, label %.lr.ph385.i, !llvm.loop !289

.lr.ph363.i:                                      ; preds = %.lr.ph363.i.prol.loopexit, %.lr.ph363.i
  %indvars.iv.i155 = phi i64 [ %indvars.iv.next.i156.7, %.lr.ph363.i ], [ %indvars.iv.i155.unr, %.lr.ph363.i.prol.loopexit ] ; 10 uses
  %i.bfe = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i155
  %i.bff = load double, ptr %i.bfe, align 8, !tbaa !70
  %i.bfg = fsub double 1.000000e+00, %i.bff
  %i.bfh = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %indvars.iv.i155
  store double %i.bfg, ptr %i.bfh, align 8, !tbaa !70
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i155, 1 ; 2 uses
  %i.bfi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i156
  %i.bfj = load double, ptr %i.bfi, align 8, !tbaa !70
  %i.bfk = fsub double 1.000000e+00, %i.bfj
  %i.bfl = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %indvars.iv.next.i156
  store double %i.bfk, ptr %i.bfl, align 8, !tbaa !70
  %indvars.iv.next.i156.1 = add nuw nsw i64 %indvars.iv.i155, 2 ; 2 uses
  %i.bfm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i156.1
  %i.bfn = load double, ptr %i.bfm, align 8, !tbaa !70
  %i.bfo = fsub double 1.000000e+00, %i.bfn
  %i.bfp = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %indvars.iv.next.i156.1
  store double %i.bfo, ptr %i.bfp, align 8, !tbaa !70
  %indvars.iv.next.i156.2 = add nuw nsw i64 %indvars.iv.i155, 3 ; 2 uses
  %i.bfq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i156.2
  %i.bfr = load double, ptr %i.bfq, align 8, !tbaa !70
  %i.bfs = fsub double 1.000000e+00, %i.bfr
  %i.bft = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %indvars.iv.next.i156.2
  store double %i.bfs, ptr %i.bft, align 8, !tbaa !70
  %indvars.iv.next.i156.3 = add nuw nsw i64 %indvars.iv.i155, 4 ; 2 uses
  %i.bfu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i156.3
  %i.bfv = load double, ptr %i.bfu, align 8, !tbaa !70
  %i.bfw = fsub double 1.000000e+00, %i.bfv
  %i.bfx = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %indvars.iv.next.i156.3
  store double %i.bfw, ptr %i.bfx, align 8, !tbaa !70
  %indvars.iv.next.i156.4 = add nuw nsw i64 %indvars.iv.i155, 5 ; 2 uses
  %i.bfy = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i156.4
  %i.bfz = load double, ptr %i.bfy, align 8, !tbaa !70
  %i.bga = fsub double 1.000000e+00, %i.bfz
  %i.bgb = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %indvars.iv.next.i156.4
  store double %i.bga, ptr %i.bgb, align 8, !tbaa !70
  %indvars.iv.next.i156.5 = add nuw nsw i64 %indvars.iv.i155, 6 ; 2 uses
  %i.bgc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i156.5
  %i.bgd = load double, ptr %i.bgc, align 8, !tbaa !70
  %i.bge = fsub double 1.000000e+00, %i.bgd
  %i.bgf = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %indvars.iv.next.i156.5
  store double %i.bge, ptr %i.bgf, align 8, !tbaa !70
  %indvars.iv.next.i156.6 = add nuw nsw i64 %indvars.iv.i155, 7 ; 2 uses
  %i.bgg = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i156.6
  %i.bgh = load double, ptr %i.bgg, align 8, !tbaa !70
  %i.bgi = fsub double 1.000000e+00, %i.bgh
  %i.bgj = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %indvars.iv.next.i156.6
  store double %i.bgi, ptr %i.bgj, align 8, !tbaa !70
  %indvars.iv.next.i156.7 = add nuw nsw i64 %indvars.iv.i155, 8 ; 2 uses
  %exitcond.not.i157.7 = icmp eq i64 %indvars.iv.next.i156.7, %wide.trip.count449.i
  br i1 %exitcond.not.i157.7, label %._crit_edge364.thread.i, label %.lr.ph363.i, !llvm.loop !290

._crit_edge364.i:                                 ; preds = %_ZL26GenerateGibbsProbabilitiesPKfPdS1_ii.exit.i
  %i.bgk = sext i32 %.0200402.i to i64
  %i.bgl = getelementptr inbounds [8 x i8], ptr %i.ave, i64 %i.bgk ; 2 uses
  %i.bgm = load double, ptr %i.bgl, align 8, !tbaa !70 ; 2 uses
  %i.bgn = fcmp oeq double %i.bgm, 0.000000e+00
  br i1 %i.bgn, label %.loopexit.i160, label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit271.i

._crit_edge364.thread.i:                          ; preds = %.lr.ph363.i.prol.loopexit, %.lr.ph363.i, %vec.epilog.middle.block790, %middle.block776
  %i.bgo = sext i32 %.0200402.i to i64            ; 2 uses
  %i.bgp = getelementptr inbounds [8 x i8], ptr %i.ave, i64 %i.bgo ; 12 uses
  %i.bgq = load double, ptr %i.bgp, align 8, !tbaa !70
  %i.bgr = fcmp oeq double %i.bgq, 0.000000e+00
  br i1 %i.bgr, label %.lr.ph377.preheader.i, label %.lr.ph367.preheader.i

.lr.ph367.preheader.i:                            ; preds = %._crit_edge364.thread.i
  %i.bgs = zext i32 %.0200402.i to i64            ; 7 uses
  %i.bgt = sub nsw i64 %wide.trip.count449.i, %i.ayz ; 3 uses
  %min.iters.check744 = icmp ult i64 %i.bgt, 8
  br i1 %min.iters.check744, label %.lr.ph367.i.preheader, label %vector.memcheck729

vector.memcheck729:                               ; preds = %.lr.ph367.preheader.i
  %i.bgu = shl nuw nsw i64 %i.ayz, 3              ; 2 uses
  %scevgep730 = getelementptr i8, ptr %i.avc, i64 %i.bgu ; 2 uses
  %i.bgv = shl nuw nsw i64 %wide.trip.count449.i, 3 ; 2 uses
  %scevgep731 = getelementptr i8, ptr %i.avc, i64 %i.bgv ; 2 uses
  %scevgep732 = getelementptr i8, ptr %i.m, i64 %i.bgu
  %scevgep733 = getelementptr i8, ptr %i.m, i64 %i.bgv
  %i.bgw = shl nsw i64 %i.bgo, 3
  %scevgep735 = getelementptr i8, ptr %scevgep734, i64 %i.bgw
  %bound0736 = icmp ult ptr %scevgep730, %scevgep733
  %bound1737 = icmp ult ptr %scevgep732, %scevgep731
  %found.conflict738 = and i1 %bound0736, %bound1737
  %bound0739 = icmp ult ptr %scevgep730, %scevgep735
  %bound1740 = icmp ult ptr %i.bgp, %scevgep731
  %found.conflict741 = and i1 %bound0739, %bound1740
  %conflict.rdx742 = or i1 %found.conflict738, %found.conflict741
  br i1 %conflict.rdx742, label %.lr.ph367.i.preheader, label %vector.ph745

vector.ph745:                                     ; preds = %vector.memcheck729
  %n.vec746 = and i64 %i.bgt, -4                  ; 3 uses
  %i.bgx = add nsw i64 %n.vec746, %i.ayz
  %broadcast.splatinsert747 = insertelement <4 x i64> poison, i64 %i.bgs, i64 0
  %broadcast.splat748 = shufflevector <4 x i64> %broadcast.splatinsert747, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert749 = insertelement <4 x ptr> poison, ptr %i.bgp, i64 0
  %broadcast.splat750 = shufflevector <4 x ptr> %broadcast.splatinsert749, <4 x ptr> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert751 = insertelement <4 x i64> poison, i64 %i.ayz, i64 0
  %broadcast.splat752 = shufflevector <4 x i64> %broadcast.splatinsert751, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat752, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body753

vector.body753:                                   ; preds = %vector.body753, %vector.ph745
  %index754 = phi i64 [ 0, %vector.ph745 ], [ %index.next757, %vector.body753 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph745 ], [ %vec.ind.next, %vector.body753 ] ; 2 uses
  %i.bgy = add nuw i64 %index754, %i.ayz          ; 2 uses
  %i.bgz = icmp ne <4 x i64> %vec.ind, %broadcast.splat748 ; 3 uses
  %i.bha = getelementptr [8 x i8], ptr %i.m, i64 %i.bgy
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.bha, <4 x i1> %i.bgz, <4 x double> poison), !tbaa !70, !alias.scope !291
  %wide.masked.gather755 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %broadcast.splat750, <4 x i1> %i.bgz, <4 x double> poison), !tbaa !70, !alias.scope !294
  %i.bhb = fdiv <4 x double> %wide.masked.load, %wide.masked.gather755
  %predphi756 = select <4 x i1> %i.bgz, <4 x double> %i.bhb, <4 x double> zeroinitializer
  %i.bhc = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %i.bgy
  store <4 x double> %predphi756, ptr %i.bhc, align 8, !tbaa !70, !alias.scope !296, !noalias !298
  %index.next757 = add nuw i64 %index754, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.bhd = icmp eq i64 %index.next757, %n.vec746
  br i1 %i.bhd, label %middle.block758, label %vector.body753, !llvm.loop !299

middle.block758:                                  ; preds = %vector.body753
  %cmp.n759 = icmp eq i64 %i.bgt, %n.vec746
  br i1 %cmp.n759, label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit263.i, label %.lr.ph367.i.preheader

.lr.ph367.i.preheader:                            ; preds = %vector.memcheck729, %.lr.ph367.preheader.i, %middle.block758
  %indvars.iv432.i.ph = phi i64 [ %i.ayz, %vector.memcheck729 ], [ %i.ayz, %.lr.ph367.preheader.i ], [ %i.bgx, %middle.block758 ] ; 4 uses
  %i.bhe = sub nsw i64 %wide.trip.count449.i, %indvars.iv432.i.ph
  %i.bhf = zext i32 %.0216.i to i64
  %i.bhg = sub nsw i64 %i.bhf, %indvars.iv432.i.ph
  %xtraiter925 = and i64 %i.bhe, 3                ; 2 uses
  %lcmp.mod926.not = icmp eq i64 %xtraiter925, 0
  br i1 %lcmp.mod926.not, label %.lr.ph367.i.prol.loopexit, label %.lr.ph367.i.prol

.lr.ph367.i.prol:                                 ; preds = %.lr.ph367.i.preheader, %bb.by
  %indvars.iv432.i.prol = phi i64 [ %indvars.iv.next433.i.prol, %bb.by ], [ %indvars.iv432.i.ph, %.lr.ph367.i.preheader ] ; 4 uses
  %prol.iter927 = phi i64 [ %prol.iter927.next, %bb.by ], [ 0, %.lr.ph367.i.preheader ]
  %.not247.i.prol = icmp eq i64 %indvars.iv432.i.prol, %i.bgs
  br i1 %.not247.i.prol, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph367.i.prol
  %i.bhh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv432.i.prol
  %i.bhi = load double, ptr %i.bhh, align 8, !tbaa !70
  %i.bhj = load double, ptr %i.bgp, align 8, !tbaa !70
  %i.bhk = fdiv double %i.bhi, %i.bhj
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.lr.ph367.i.prol
  %.sink.i.prol = phi double [ %i.bhk, %bb.bx ], [ 0.000000e+00, %.lr.ph367.i.prol ]
  %i.bhl = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv432.i.prol
  store double %.sink.i.prol, ptr %i.bhl, align 8, !tbaa !70
  %indvars.iv.next433.i.prol = add nuw nsw i64 %indvars.iv432.i.prol, 1 ; 2 uses
  %prol.iter927.next = add i64 %prol.iter927, 1   ; 2 uses
  %prol.iter927.cmp.not = icmp eq i64 %prol.iter927.next, %xtraiter925
  br i1 %prol.iter927.cmp.not, label %.lr.ph367.i.prol.loopexit, label %.lr.ph367.i.prol, !llvm.loop !300

.lr.ph367.i.prol.loopexit:                        ; preds = %bb.by, %.lr.ph367.i.preheader
  %indvars.iv432.i.unr = phi i64 [ %indvars.iv432.i.ph, %.lr.ph367.i.preheader ], [ %indvars.iv.next433.i.prol, %bb.by ]
  %i.bhm = icmp ult i64 %i.bhg, 3
  br i1 %i.bhm, label %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit263.i, label %.lr.ph367.i

.lr.ph367.i:                                      ; preds = %.lr.ph367.i.prol.loopexit, %bb.cd
  %indvars.iv432.i = phi i64 [ %indvars.iv.next433.i.3, %bb.cd ], [ %indvars.iv432.i.unr, %.lr.ph367.i.prol.loopexit ] ; 7 uses
  %.not247.i = icmp eq i64 %indvars.iv432.i, %i.bgs
  br i1 %.not247.i, label %.lr.ph367.i.1, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph367.i
  %i.bhn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv432.i
  %i.bho = load double, ptr %i.bhn, align 8, !tbaa !70
  %i.bhp = load double, ptr %i.bgp, align 8, !tbaa !70
  %i.bhq = fdiv double %i.bho, %i.bhp
  br label %.lr.ph367.i.1

.lr.ph367.i.1:                                    ; preds = %bb.bz, %.lr.ph367.i
  %.sink.i = phi double [ %i.bhq, %bb.bz ], [ 0.000000e+00, %.lr.ph367.i ]
  %i.bhr = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv432.i
  store double %.sink.i, ptr %i.bhr, align 8, !tbaa !70
  %indvars.iv.next433.i = add nuw nsw i64 %indvars.iv432.i, 1 ; 3 uses
  %.not247.i.1 = icmp eq i64 %indvars.iv.next433.i, %i.bgs
  br i1 %.not247.i.1, label %.lr.ph367.i.2, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph367.i.1
  %i.bhs = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next433.i
end_hunk_0
begin_hunk_1_@_Z24ExpandedEnsembleDynamicsP8_IO_FILERK10t_inputrecRK14gmx_enerdata_tP14gmx_ekindata_tP7t_stateP9t_extmassiP12df_history_tlPA3_fiN3gmx8ArrayRefIKtEE:bb.a
  %i.dv = icmp eq i64 %index.next70, %n.vec65
  br i1 %i.dv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !394

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n71, label %._crit_edge84.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv111.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec53, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader74.i:                                   ; preds = %._crit_edge84.i, %.preheader75.lr.ph.i, %.preheader76.i
  %i.dw = load i32, ptr %i.j, align 8, !tbaa !338 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.preheader.lr.ph.i, label %.loopexit.i

.preheader.lr.ph.i:                               ; preds = %.preheader74.i
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 748
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !392 ; 4 uses
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.preheader.lr.ph.split.i, label %.loopexit.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !67
  %wide.trip.count129.i = zext nneg i32 %i.dw to i64
  %wide.trip.count124.i = zext nneg i32 %i.dz to i64 ; 6 uses
  %min.iters.check74 = icmp ult i32 %i.dz, 4
  %min.iters.check76 = icmp ult i32 %i.dz, 16
  %i.ed = and i64 %wide.trip.count124.i, 12
  %n.vec78 = and i64 %wide.trip.count124.i, 2147483632 ; 4 uses
  %cmp.n89 = icmp eq i64 %n.vec78, %wide.trip.count124.i
  %min.epilog.iters.check94 = icmp eq i64 %i.ed, 0
  %n.vec96 = and i64 %wide.trip.count124.i, 2147483644 ; 3 uses
  %cmp.n104 = icmp eq i64 %n.vec96, %wide.trip.count124.i
  br label %iter.check91

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h, %._crit_edge.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i = icmp eq ptr %.sroa.067.0144.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ef = ptrtoint ptr %.sroa.13.0142.i to i64
  %i.eg = ptrtoint ptr %.sroa.067.0144.i to i64
  %i.eh = sub i64 %i.ef, %i.eg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.067.0144.i, i64 noundef %i.eh) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

._crit_edge84.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block63
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 1 ; 2 uses
  %exitcond120.not.i = icmp eq i64 %indvars.iv.next117.i, %wide.trip.count119.i
  br i1 %exitcond120.not.i, label %.preheader74.i, label %iter.check, !llvm.loop !395

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i, %vec.epilog.scalar.ph ], [ %indvars.iv111.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv111.i ; 2 uses
  %i.ei = load double, ptr %gep.i, align 8, !tbaa !70
  %i.ej = fmul double %i.ei, %i.dj
  store double %i.ej, ptr %gep.i, align 8, !tbaa !70
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %exitcond115.not.i = icmp eq i64 %indvars.iv.next112.i, %wide.trip.count114.i
  br i1 %exitcond115.not.i, label %._crit_edge84.i, label %vec.epilog.scalar.ph, !llvm.loop !396

iter.check91:                                     ; preds = %._crit_edge88.i, %.preheader.lr.ph.split.i
  %indvars.iv126.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next127.i, %._crit_edge88.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.067.0144.i, i64 %indvars.iv126.i
  %i.el = load float, ptr %i.ek, align 4, !tbaa !53
  %i.em = fpext float %i.el to double             ; 3 uses
  %invariant.gep147.i = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv126.i ; 3 uses
  br i1 %min.iters.check74, label %vec.epilog.scalar.ph92.preheader, label %vector.main.loop.iter.check75

vector.main.loop.iter.check75:                    ; preds = %iter.check91
  br i1 %min.iters.check76, label %vec.epilog.ph95, label %vector.ph77

vector.ph77:                                      ; preds = %vector.main.loop.iter.check75
  %broadcast.splatinsert79 = insertelement <4 x double> poison, double %i.em, i64 0
  %broadcast.splat80 = shufflevector <4 x double> %broadcast.splatinsert79, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next87, %vector.body81 ] ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep147.i, i64 %index82 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 64 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 96 ; 2 uses
  %wide.load83 = load <4 x double>, ptr %i.en, align 8, !tbaa !70
  %wide.load84 = load <4 x double>, ptr %i.eo, align 8, !tbaa !70
  %wide.load85 = load <4 x double>, ptr %i.ep, align 8, !tbaa !70
  %wide.load86 = load <4 x double>, ptr %i.eq, align 8, !tbaa !70
  %i.er = fmul <4 x double> %wide.load83, %broadcast.splat80
  %i.es = fmul <4 x double> %wide.load84, %broadcast.splat80
  %i.et = fmul <4 x double> %wide.load85, %broadcast.splat80
  %i.eu = fmul <4 x double> %wide.load86, %broadcast.splat80
  store <4 x double> %i.er, ptr %i.en, align 8, !tbaa !70
  store <4 x double> %i.es, ptr %i.eo, align 8, !tbaa !70
  store <4 x double> %i.et, ptr %i.ep, align 8, !tbaa !70
  store <4 x double> %i.eu, ptr %i.eq, align 8, !tbaa !70
  %index.next87 = add nuw i64 %index82, 16        ; 2 uses
  %i.ev = icmp eq i64 %index.next87, %n.vec78
  br i1 %i.ev, label %middle.block88, label %vector.body81, !llvm.loop !397

middle.block88:                                   ; preds = %vector.body81
  br i1 %cmp.n89, label %._crit_edge88.i, label %vec.epilog.iter.check93

vec.epilog.iter.check93:                          ; preds = %middle.block88
  br i1 %min.epilog.iters.check94, label %vec.epilog.scalar.ph92.preheader, label %vec.epilog.ph95, !prof !59

vec.epilog.ph95:                                  ; preds = %vector.main.loop.iter.check75, %vec.epilog.iter.check93
  %vec.epilog.resume.val90 = phi i64 [ %n.vec78, %vec.epilog.iter.check93 ], [ 0, %vector.main.loop.iter.check75 ]
  %broadcast.splatinsert97 = insertelement <4 x double> poison, double %i.em, i64 0
  %broadcast.splat98 = shufflevector <4 x double> %broadcast.splatinsert97, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body99

vec.epilog.vector.body99:                         ; preds = %vec.epilog.vector.body99, %vec.epilog.ph95
  %index100 = phi i64 [ %vec.epilog.resume.val90, %vec.epilog.ph95 ], [ %index.next102, %vec.epilog.vector.body99 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep147.i, i64 %index100 ; 2 uses
  %wide.load101 = load <4 x double>, ptr %i.ew, align 8, !tbaa !70
  %i.ex = fmul <4 x double> %wide.load101, %broadcast.splat98
  store <4 x double> %i.ex, ptr %i.ew, align 8, !tbaa !70
  %index.next102 = add nuw i64 %index100, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next102, %n.vec96
  br i1 %i.ey, label %vec.epilog.middle.block103, label %vec.epilog.vector.body99, !llvm.loop !398

vec.epilog.middle.block103:                       ; preds = %vec.epilog.vector.body99
  br i1 %cmp.n104, label %._crit_edge88.i, label %vec.epilog.scalar.ph92.preheader

vec.epilog.scalar.ph92.preheader:                 ; preds = %iter.check91, %vec.epilog.iter.check93, %vec.epilog.middle.block103
  %indvars.iv121.i.ph = phi i64 [ 0, %iter.check91 ], [ %n.vec78, %vec.epilog.iter.check93 ], [ %n.vec96, %vec.epilog.middle.block103 ]
  br label %vec.epilog.scalar.ph92

._crit_edge88.i:                                  ; preds = %vec.epilog.scalar.ph92, %vec.epilog.middle.block103, %middle.block88
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1 ; 2 uses
  %exitcond130.not.i = icmp eq i64 %indvars.iv.next127.i, %wide.trip.count129.i
  br i1 %exitcond130.not.i, label %.loopexit.thread.i, label %iter.check91, !llvm.loop !399

vec.epilog.scalar.ph92:                           ; preds = %vec.epilog.scalar.ph92.preheader, %vec.epilog.scalar.ph92
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i, %vec.epilog.scalar.ph92 ], [ %indvars.iv121.i.ph, %vec.epilog.scalar.ph92.preheader ] ; 2 uses
  %gep148.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep147.i, i64 %indvars.iv121.i ; 2 uses
  %i.ez = load double, ptr %gep148.i, align 8, !tbaa !70
  %i.fa = fmul double %i.ez, %i.em
  store double %i.fa, ptr %gep148.i, align 8, !tbaa !70
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1 ; 2 uses
  %exitcond125.not.i = icmp eq i64 %indvars.iv.next122.i, %wide.trip.count124.i
  br i1 %exitcond125.not.i, label %._crit_edge88.i, label %vec.epilog.scalar.ph92, !llvm.loop !400

.loopexit.i:                                      ; preds = %.preheader.lr.ph.i, %.preheader74.i, %bb.k
  %.not.i.i.i65.i = icmp eq ptr %.sroa.067.0144.i, null
  br i1 %.not.i.i.i65.i, label %_ZL35simulatedTemperingUpdateTemperatureRK10t_inputrecP14gmx_ekindata_tP7t_stateP9t_extmassPA3_fiN3gmx8ArrayRefIKtEEi.exit, label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %._crit_edge88.i, %.loopexit.i
  %i.fb = ptrtoint ptr %.sroa.13.0142.i to i64
  %i.fc = ptrtoint ptr %.sroa.067.0144.i to i64
  %i.fd = sub i64 %i.fb, %i.fc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.067.0144.i, i64 noundef %i.fd) #22
  br label %_ZL35simulatedTemperingUpdateTemperatureRK10t_inputrecP14gmx_ekindata_tP7t_stateP9t_extmassPA3_fiN3gmx8ArrayRefIKtEEi.exit

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.ee

_ZL35simulatedTemperingUpdateTemperatureRK10t_inputrecP14gmx_ekindata_tP7t_stateP9t_extmassPA3_fiN3gmx8ArrayRefIKtEEi.exit: ; preds = %.loopexit.thread.i, %.loopexit.i, %bb.a
  ret i32 %i.a
}

declare noundef zeroext i1 @_Z18inputrecNptTrotterPK10t_inputrec(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_Z18inputrecNphTrotterPK10t_inputrec(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_Z18inputrecNvtTrotterPK10t_inputrec(ptr noundef) local_unnamed_addr #4

declare void @_Z15init_npt_massesRK10t_inputrecRK14gmx_ekindata_tP7t_stateP9t_extmassb(ptr noundef nonnull align 8 dereferenceable(888), ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS10t_expanded", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8t_lambda", !11, i64 0}
!14 = !{!15, !6, i64 36}
!15 = !{!"_ZTS8t_lambda", !6, i64 0, !16, i64 8, !6, i64 16, !16, i64 24, !17, i64 32, !6, i64 36, !18, i64 40, !6, i64 208, !6, i64 212, !6, i64 216, !19, i64 220, !6, i64 224, !19, i64 228, !19, i64 232, !19, i64 236, !20, i64 240, !21, i64 244, !19, i64 248, !19, i64 252, !19, i64 256, !22, i64 260, !23, i64 268, !24, i64 272, !6, i64 276, !16, i64 280}
!16 = !{!"double", !7, i64 0}
!17 = !{!"_ZTS21FreeEnergyPrintEnergy", !7, i64 0}
!18 = !{!"_ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypeSt6vectorIdSaIdEELS1_7EEE", !7, i64 0}
!19 = !{!"float", !7, i64 0}
!20 = !{!"bool", !7, i64 0}
!21 = !{!"_ZTS12SoftcoreType", !7, i64 0}
!22 = !{!"_ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypebLS1_7EEE", !7, i64 0}
!23 = !{!"_ZTS16SeparateDhdlFile", !7, i64 0}
!24 = !{!"_ZTS25DhDlDerivativeCalculation", !7, i64 0}
!25 = !{!26, !19, i64 84}
!26 = !{!"_ZTS10t_expanded", !6, i64 0, !27, i64 4, !28, i64 8, !29, i64 12, !6, i64 16, !19, i64 20, !19, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !20, i64 40, !6, i64 44, !19, i64 48, !6, i64 52, !20, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !19, i64 76, !19, i64 80, !19, i64 84, !20, i64 88, !19, i64 92, !30, i64 96, !30, i64 120, !30, i64 144}
!27 = !{!"_ZTS23LambdaWeightCalculation", !7, i64 0}
!28 = !{!"_ZTS21LambdaMoveCalculation", !7, i64 0}
!29 = !{!"_ZTS32LambdaWeightWillReachEquilibrium", !7, i64 0}
!30 = !{!"_ZTSSt6vectorIfSaIfEE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 float", !11, i64 0}
!35 = !{!36, !19, i64 80}
!36 = !{!"_ZTS12df_history_t", !6, i64 0, !20, i64 4, !37, i64 8, !37, i64 32, !30, i64 56, !19, i64 80, !30, i64 88, !30, i64 112, !30, i64 136, !30, i64 160, !42, i64 184, !42, i64 248, !42, i64 312, !42, i64 376, !42, i64 440, !42, i64 504}
!37 = !{!"_ZTSSt6vectorIiSaIiEE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 int", !11, i64 0}
!42 = !{!"_ZTSN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEE", !30, i64 0, !43, i64 24}
!43 = !{!"_ZTSN3gmx12basic_mdspanIfNS_7extentsIJLln1ELln1EEEENS_12layout_rightENS_14accessor_basicIfEEEE", !44, i64 0, !45, i64 8, !34, i64 32}
!44 = !{!"_ZTSN3gmx14accessor_basicIfEE"}
!45 = !{!"_ZTSN3gmx12layout_right7mappingINS_7extentsIJLln1ELln1EEEEEE", !46, i64 0}
!46 = !{!"_ZTSN3gmx7extentsIJLln1ELln1EEEE", !47, i64 0}
!47 = !{!"_ZTSN3gmx6detail15extents_analyseILi2EJLln1ELln1EEEE", !48, i64 0, !50, i64 16}
!48 = !{!"_ZTSN3gmx6detail15extents_analyseILi1EJLln1EEEE", !49, i64 0, !50, i64 8}
!49 = !{!"_ZTSN3gmx6detail15extents_analyseILi0EJEEE"}
!50 = !{!"long", !7, i64 0}
!51 = !{!33, !34, i64 0}
!52 = !{!40, !41, i64 0}
!53 = !{!19, !19, i64 0}
!54 = !{!6, !6, i64 0}
!55 = distinct !{!55, !56, !57, !58}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"branch_weights", i32 4, i32 12}
!60 = distinct !{!60, !56, !57, !58}
!61 = distinct !{!61, !56, !57}
!62 = !{!26, !27, i64 4}
!63 = !{!36, !20, i64 4}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!20, !20, i64 0}
!67 = !{!68, !69, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!69 = !{!"p1 double", !11, i64 0}
!70 = !{!16, !16, i64 0}
!71 = distinct !{!71, !56}
!72 = !{!26, !6, i64 60}
!73 = distinct !{!73, !56}
!74 = !{!26, !20, i64 56}
!75 = !{!43, !34, i64 32}
!76 = distinct !{!76, !56}
!77 = distinct !{!77, !56}
!78 = distinct !{!78, !56}
!79 = distinct !{!79, !56}
!80 = distinct !{!80, !56}
!81 = !{!82, !82, i64 0}
!82 = !{!"p1 _ZTS9t_simtemp", !11, i64 0}
!83 = !{!84, !111, i64 420}
!84 = !{!"_ZTS10t_inputrec", !6, i64 0, !85, i64 4, !50, i64 8, !6, i64 16, !50, i64 24, !6, i64 32, !86, i64 36, !6, i64 40, !6, i64 44, !87, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !16, i64 80, !16, i64 88, !20, i64 96, !88, i64 104, !19, i64 128, !19, i64 132, !19, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !19, i64 156, !19, i64 160, !93, i64 164, !19, i64 168, !94, i64 172, !95, i64 176, !20, i64 180, !20, i64 181, !96, i64 184, !19, i64 188, !97, i64 192, !6, i64 196, !20, i64 200, !98, i64 204, !102, i64 296, !102, i64 320, !6, i64 344, !19, i64 348, !19, i64 352, !19, i64 356, !19, i64 360, !107, i64 364, !108, i64 368, !19, i64 372, !19, i64 376, !19, i64 380, !19, i64 384, !20, i64 388, !109, i64 392, !108, i64 396, !19, i64 400, !19, i64 404, !110, i64 408, !19, i64 412, !19, i64 416, !111, i64 420, !112, i64 424, !20, i64 432, !118, i64 440, !20, i64 448, !124, i64 456, !130, i64 464, !19, i64 468, !131, i64 472, !20, i64 476, !6, i64 480, !19, i64 484, !19, i64 488, !19, i64 492, !6, i64 496, !19, i64 500, !19, i64 504, !6, i64 508, !19, i64 512, !6, i64 516, !6, i64 520, !132, i64 524, !6, i64 528, !19, i64 532, !6, i64 536, !20, i64 540, !19, i64 544, !50, i64 552, !6, i64 560, !133, i64 564, !19, i64 568, !7, i64 572, !7, i64 580, !19, i64 588, !20, i64 592, !134, i64 600, !20, i64 608, !141, i64 616, !20, i64 624, !148, i64 632, !155, i64 640, !156, i64 648, !20, i64 656, !163, i64 664, !19, i64 672, !7, i64 676, !6, i64 712, !6, i64 716, !6, i64 720, !6, i64 724, !19, i64 728, !19, i64 732, !19, i64 736, !19, i64 740, !164, i64 744, !20, i64 864, !20, i64 865, !20, i64 866, !20, i64 867, !167, i64 872, !168, i64 880}
!85 = !{!"_ZTS20IntegrationAlgorithm", !7, i64 0}
!86 = !{!"_ZTS12CutoffScheme", !7, i64 0}
!87 = !{!"_ZTS19ComRemovalAlgorithm", !7, i64 0}
!88 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !89, i64 0}
!89 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !90, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !91, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!92 = !{!"p1 _ZTSN3gmx8MtsLevelE", !11, i64 0}
!93 = !{!"_ZTS13EwaldGeometry", !7, i64 0}
!94 = !{!"_ZTS12LongRangeVdW", !7, i64 0}
!95 = !{!"_ZTS7PbcType", !7, i64 0}
!96 = !{!"_ZTS26EnsembleTemperatureSetting", !7, i64 0}
!97 = !{!"_ZTS19TemperatureCoupling", !7, i64 0}
!98 = !{!"_ZTS23PressureCouplingOptions", !99, i64 0, !100, i64 4, !6, i64 8, !19, i64 12, !7, i64 16, !7, i64 52, !101, i64 88}
!99 = !{!"_ZTS16PressureCoupling", !7, i64 0}
!100 = !{!"_ZTS20PressureCouplingType", !7, i64 0}
!101 = !{!"_ZTS15RefCoordScaling", !7, i64 0}
!102 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !103, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!106 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !11, i64 0}
!107 = !{!"_ZTS22CoulombInteractionType", !7, i64 0}
!108 = !{!"_ZTS20InteractionModifiers", !7, i64 0}
!109 = !{!"_ZTS15VanDerWaalsType", !7, i64 0}
!110 = !{!"_ZTS24DispersionCorrectionType", !7, i64 0}
!111 = !{!"_ZTS26FreeEnergyPerturbationType", !7, i64 0}
!112 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !113, i64 0}
!113 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !114, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !115, i64 0}
!115 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !116, i64 0}
!116 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !117, i64 0}
!117 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !13, i64 0}
!118 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !119, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !120, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !121, i64 0}
!121 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !122, i64 0}
!122 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !123, i64 0}
!123 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !82, i64 0}
!124 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !125, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !126, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !127, i64 0}
!127 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !128, i64 0}
!128 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !129, i64 0}
!129 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !10, i64 0}
!130 = !{!"_ZTS27DistanceRestraintRefinement", !7, i64 0}
!131 = !{!"_ZTS26DistanceRestraintWeighting", !7, i64 0}
!132 = !{!"_ZTS19ConstraintAlgorithm", !7, i64 0}
!133 = !{!"_ZTS8WallType", !7, i64 0}
!134 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !135, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !136, i64 0}
!136 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !137, i64 0}
!137 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !138, i64 0}
!138 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !139, i64 0}
!139 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !140, i64 0}
!140 = !{!"p1 _ZTS13pull_params_t", !11, i64 0}
!141 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !142, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !143, i64 0}
!143 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !144, i64 0}
!144 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !145, i64 0}
!145 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !146, i64 0}
!146 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !147, i64 0}
!147 = !{!"p1 _ZTSN3gmx9AwhParamsE", !11, i64 0}
!148 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !149, i64 0}
!149 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !150, i64 0}
!150 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !151, i64 0}
!151 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !152, i64 0}
!152 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !153, i64 0}
!153 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !154, i64 0}
!154 = !{!"p1 _ZTS5t_rot", !11, i64 0}
end_hunk_1
