inline.NumInlined: 256
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Sdb_StoMergeCuts:Gia_ObjIsXor.exit
  %i.axl = zext i1 %i.axk to i32
  %i.axm = add nuw nsw i32 %i.axd, %i.axl         ; 3 uses
  %indvars.iv.next.i171.us.3 = add nuw nsw i64 %indvars.iv.i170.us, 4 ; 2 uses
  %niter870.next.3 = add i64 %niter870, 4         ; 2 uses
  %niter870.ncmp.3 = icmp eq i64 %niter870.next.3, %unroll_iter869
  br i1 %niter870.ncmp.3, label %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa, label %bb.cb, !llvm.loop !49

Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa:     ; preds = %bb.cb
  %lcmp.mod866.not = icmp eq i64 %xtraiter864, 0
  br i1 %lcmp.mod866.not, label %Sdb_CutTreeLeaves.exit.us.loopexit, label %.epil.preheader863

.epil.preheader863:                               ; preds = %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa, %.lr.ph.i167.us
  %indvars.iv.i170.us.epil.init = phi i64 [ 0, %.lr.ph.i167.us ], [ %indvars.iv.next.i171.us.3, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa ]
  %.09.i.us.epil.init = phi i32 [ 0, %.lr.ph.i167.us ], [ %i.axm, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod868 = icmp ne i64 %xtraiter864, 0
  call void @llvm.assume(i1 %lcmp.mod868)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.epil.preheader863
  %indvars.iv.i170.us.epil = phi i64 [ %indvars.iv.i170.us.epil.init, %.epil.preheader863 ], [ %indvars.iv.next.i171.us.epil, %bb.cc ] ; 2 uses
  %.09.i.us.epil = phi i32 [ %.09.i.us.epil.init, %.epil.preheader863 ], [ %i.axu, %bb.cc ]
  %epil.iter865 = phi i64 [ 0, %.epil.preheader863 ], [ %epil.iter865.next, %bb.cc ]
  %i.axn = getelementptr inbounds nuw [4 x i8], ptr %i.awb, i64 %indvars.iv.i170.us.epil
  %i.axo = load i32, ptr %i.axn, align 4, !tbaa !39
  %i.axp = sext i32 %i.axo to i64
  %i.axq = getelementptr inbounds [4 x i8], ptr %.val.i168.us, i64 %i.axp
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !39
  %i.axs = icmp eq i32 %i.axr, 1
  %i.axt = zext i1 %i.axs to i32
  %i.axu = add nuw nsw i32 %.09.i.us.epil, %i.axt ; 2 uses
  %indvars.iv.next.i171.us.epil = add nuw nsw i64 %indvars.iv.i170.us.epil, 1
  %epil.iter865.next = add i64 %epil.iter865, 1   ; 2 uses
  %epil.iter865.cmp.not = icmp eq i64 %epil.iter865.next, %xtraiter864
  br i1 %epil.iter865.cmp.not, label %Sdb_CutTreeLeaves.exit.us.loopexit, label %bb.cc, !llvm.loop !121

Sdb_CutTreeLeaves.exit.us.loopexit:               ; preds = %bb.cc, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa
  %.lcssa756 = phi i32 [ %i.axm, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa ], [ %i.axu, %bb.cc ]
  %i.axv = and i32 %.lcssa756, 268435455
  br label %Sdb_CutTreeLeaves.exit.us

Sdb_CutTreeLeaves.exit.us:                        ; preds = %Sdb_CutTreeLeaves.exit.us.loopexit, %bb.ca
  %.0.lcssa.i.us = phi i32 [ 0, %bb.ca ], [ %i.axv, %Sdb_CutTreeLeaves.exit.us.loopexit ]
  %i.axw = and i32 %i.avy, -268435456
  %i.axx = or disjoint i32 %.0.lcssa.i.us, %i.axw
  store i32 %i.axx, ptr %i.avx, align 4
  %i.axy = icmp eq i32 %.1330.us, 0
  br i1 %i.axy, label %Sdb_CutSetAddCut.exit.us, label %bb.cd

bb.cd:                                            ; preds = %Sdb_CutTreeLeaves.exit.us
  br i1 %i.tm, label %.lr.ph.i.i175.us, label %Sdb_CutSetSortByCost.exit.i.us

.lr.ph.i.i175.us:                                 ; preds = %bb.cd
  %i.axz = zext nneg i32 %.1330.us to i64         ; 4 uses
  %i.aya = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.axz
  br label %.outer.i.i.us

.outer.i.i.us:                                    ; preds = %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, %.lr.ph.i.i175.us
  %indvars.iv.ph.i.i.us = phi i64 [ %indvars.iv.next74.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us ], [ 0, %.lr.ph.i.i175.us ] ; 2 uses
  %i.ayb = phi i1 [ false, %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us ], [ true, %.lr.ph.i.i175.us ]
  %i.ayc = load ptr, ptr %i.aya, align 8, !tbaa !54 ; 4 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 20
  %i.aye = load i32, ptr %i.ayd, align 4
  %.fr.i.us = freeze i32 %i.aye
  %i.ayf = lshr i32 %.fr.i.us, 28                 ; 3 uses
  %i.ayg = icmp eq i32 %i.ayf, 0
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayc, i64 24
  br i1 %i.ayg, label %.outer.i.split.us.i.us, label %.outer.i.split.i.us

.outer.i.split.i.us:                              ; preds = %.outer.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us
  %indvars.iv.i.i176.us = phi i64 [ %indvars.iv.next.i.i177.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us ], [ %indvars.iv.ph.i.i.us, %.outer.i.i.us ] ; 3 uses
  %i.ayi = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.i.i176.us
  %i.ayj = load ptr, ptr %i.ayi, align 8, !tbaa !54 ; 4 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 20
  %i.ayl = load i32, ptr %i.ayk, align 4          ; 2 uses
  %i.aym = lshr i32 %i.ayl, 28                    ; 2 uses
  %i.ayn = icmp samesign ult i32 %i.ayf, %i.aym
  br i1 %i.ayn, label %bb.ce, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us

bb.ce:                                            ; preds = %.outer.i.split.i.us
  %i.ayo = load i64, ptr %i.ayc, align 8, !tbaa !44 ; 2 uses
  %i.ayp = load i64, ptr %i.ayj, align 8, !tbaa !44
  %i.ayq = and i64 %i.ayp, %i.ayo
  %i.ayr = icmp eq i64 %i.ayq, %i.ayo
  br i1 %i.ayr, label %.lr.ph.i.i.i183.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us

.lr.ph.i.i.i183.us:                               ; preds = %bb.ce
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayj, i64 24
  %wide.trip.count.i.i.i.us = zext nneg i32 %i.aym to i64
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ci, %.lr.ph.i.i.i183.us
  %indvars.iv.i.i.i184.us = phi i64 [ 0, %.lr.ph.i.i.i183.us ], [ %indvars.iv.next.i.i.i186.us, %bb.ci ] ; 2 uses
  %.038.i.i.i.us = phi i32 [ 0, %.lr.ph.i.i.i183.us ], [ %.1.i.i.i185.us, %bb.ci ] ; 3 uses
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %indvars.iv.i.i.i184.us
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !39 ; 2 uses
  %i.ayv = sext i32 %.038.i.i.i.us to i64
  %i.ayw = getelementptr inbounds [4 x i8], ptr %i.ayh, i64 %i.ayv
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !39 ; 2 uses
  %i.ayy = icmp sgt i32 %i.ayu, %i.ayx
  br i1 %i.ayy, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ayz = icmp eq i32 %i.ayu, %i.ayx
  br i1 %i.ayz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.aza = add nsw i32 %.038.i.i.i.us, 1          ; 2 uses
  %i.azb = icmp eq i32 %i.aza, %i.ayf
  br i1 %i.azb, label %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.1.i.i.i185.us = phi i32 [ %i.aza, %bb.ch ], [ %.038.i.i.i.us, %bb.cg ]
  %indvars.iv.next.i.i.i186.us = add nuw nsw i64 %indvars.iv.i.i.i184.us, 1 ; 2 uses
  %exitcond.not.i.i.i187.us = icmp eq i64 %indvars.iv.next.i.i.i186.us, %wide.trip.count.i.i.i.us
  br i1 %exitcond.not.i.i.i187.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us, label %bb.cf, !llvm.loop !67

Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us: ; preds = %bb.cf, %bb.ci, %bb.ce, %.outer.i.split.i.us
  %indvars.iv.next.i.i177.us = add nuw nsw i64 %indvars.iv.i.i176.us, 1 ; 2 uses
  %exitcond.not.i.i178.us = icmp eq i64 %indvars.iv.next.i.i177.us, %i.axz
  br i1 %exitcond.not.i.i178.us, label %._crit_edge.i.i.us, label %.outer.i.split.i.us, !llvm.loop !122

.outer.i.split.us.i.us:                           ; preds = %.outer.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us
  %indvars.iv.i.us.i.us = phi i64 [ %indvars.iv.next.i.us.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us ], [ %indvars.iv.ph.i.i.us, %.outer.i.i.us ] ; 3 uses
  %i.azc = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.i.us.i.us
  %i.azd = load ptr, ptr %i.azc, align 8, !tbaa !54 ; 3 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 20
  %i.azf = load i32, ptr %i.aze, align 4          ; 2 uses
  %.not.i188.us = icmp ult i32 %i.azf, 268435456
  br i1 %.not.i188.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us, label %bb.cj

bb.cj:                                            ; preds = %.outer.i.split.us.i.us
  %i.azg = load i64, ptr %i.ayc, align 8, !tbaa !44 ; 2 uses
  %i.azh = load i64, ptr %i.azd, align 8, !tbaa !44
  %i.azi = and i64 %i.azh, %i.azg
  %i.azj = icmp eq i64 %i.azi, %i.azg
  br i1 %i.azj, label %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us

Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us: ; preds = %bb.cj, %.outer.i.split.us.i.us
  %indvars.iv.next.i.us.i.us = add nuw nsw i64 %indvars.iv.i.us.i.us, 1 ; 2 uses
  %exitcond.not.i.us.i.us = icmp eq i64 %indvars.iv.next.i.us.i.us, %i.axz
  br i1 %exitcond.not.i.us.i.us, label %._crit_edge.i.i.us, label %.outer.i.split.us.i.us, !llvm.loop !122

Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us: ; preds = %bb.cj, %bb.ch
  %indvars.iv.i19.i.us = phi i64 [ %indvars.iv.i.i176.us, %bb.ch ], [ %indvars.iv.i.us.i.us, %bb.cj ]
  %.pn.i.us = phi ptr [ %i.ayj, %bb.ch ], [ %i.azd, %bb.cj ]
  %i.azk = phi i32 [ %i.ayl, %bb.ch ], [ %i.azf, %bb.cj ]
  %i.azl = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 20
  %i.azm = or i32 %i.azk, -268435456
  store i32 %i.azm, ptr %i.azl, align 4
  %indvars.iv.next74.i.i.us = add nuw nsw i64 %indvars.iv.i19.i.us, 1 ; 2 uses
  %exitcond.not75.i.i.us = icmp eq i64 %indvars.iv.next74.i.i.us, %i.axz
  br i1 %exitcond.not75.i.i.us, label %.preheader.i.i179.us, label %.outer.i.i.us, !llvm.loop !122

._crit_edge.i.i.us:                               ; preds = %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us
  br i1 %i.ayb, label %Sdb_CutSetLastCutContains.exit.i.us, label %.preheader.i.i179.us

.preheader.i.i179.us:                             ; preds = %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, %._crit_edge.i.i.us
  %i.azn = add nuw i32 %.1330.us, 1
  %wide.trip.count62.i.i.us = zext i32 %i.azn to i64
  br label %.lr.ph55.i.i.us

.lr.ph55.i.i.us:                                  ; preds = %bb.cn, %.preheader.i.i179.us
  %indvars.iv59.i.i.us = phi i64 [ 0, %.preheader.i.i179.us ], [ %indvars.iv.next60.i.i.us, %bb.cn ] ; 3 uses
  %.04054.i.i.us = phi i32 [ 0, %.preheader.i.i179.us ], [ %.141.i.i.us, %bb.cn ] ; 3 uses
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv59.i.i.us ; 2 uses
  %i.azp = load ptr, ptr %i.azo, align 8, !tbaa !54 ; 2 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 20
  %i.azr = load i32, ptr %i.azq, align 4
  %i.azs = icmp ugt i32 %i.azr, -268435457
  br i1 %i.azs, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph55.i.i.us
  %i.azt = sext i32 %.04054.i.i.us to i64         ; 2 uses
  %i.azu = icmp sgt i64 %indvars.iv59.i.i.us, %i.azt
  br i1 %i.azu, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.azv = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.azt ; 2 uses
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !54
  store ptr %i.azp, ptr %i.azv, align 8, !tbaa !54
  store ptr %i.azw, ptr %i.azo, align 8, !tbaa !54
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.azx = add nsw i32 %.04054.i.i.us, 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph55.i.i.us
  %.141.i.i.us = phi i32 [ %.04054.i.i.us, %.lr.ph55.i.i.us ], [ %i.azx, %bb.cm ] ; 2 uses
  %indvars.iv.next60.i.i.us = add nuw nsw i64 %indvars.iv59.i.i.us, 1 ; 2 uses
  %exitcond63.not.i.i.us = icmp eq i64 %indvars.iv.next60.i.i.us, %wide.trip.count62.i.i.us
  br i1 %exitcond63.not.i.i.us, label %._crit_edge56.loopexit.i.i.us, label %.lr.ph55.i.i.us, !llvm.loop !123

._crit_edge56.loopexit.i.i.us:                    ; preds = %bb.cn
  %i.azy = add nsw i32 %.141.i.i.us, -1
  br label %Sdb_CutSetLastCutContains.exit.i.us

Sdb_CutSetLastCutContains.exit.i.us:              ; preds = %._crit_edge56.loopexit.i.i.us, %._crit_edge.i.i.us
  %.0.i.i180.us = phi i32 [ %i.azy, %._crit_edge56.loopexit.i.i.us ], [ %.1330.us, %._crit_edge.i.i.us ] ; 6 uses
  %i.azz = icmp sgt i32 %.0.i.i180.us, 0
  br i1 %i.azz, label %.lr.ph.preheader.i.i181.us, label %Sdb_CutSetSortByCost.exit.i.us

.lr.ph.preheader.i.i181.us:                       ; preds = %Sdb_CutSetLastCutContains.exit.i.us
  %2 = zext nneg i32 %.0.i.i180.us to i64
  br label %.lr.ph.i8.i.us

.lr.ph.i8.i.us:                                   ; preds = %Sdb_CutCompare.exit.i.i.us, %.lr.ph.preheader.i.i181.us
  %indvars.iv.i9.i.us = phi i64 [ %2, %.lr.ph.preheader.i.i181.us ], [ %indvars.iv.next.i10.i.us, %Sdb_CutCompare.exit.i.i.us ] ; 3 uses
  %i.baa = getelementptr [8 x i8], ptr %i.jf, i64 %indvars.iv.i9.i.us ; 3 uses
  %i.bab = getelementptr i8, ptr %i.baa, i64 -8   ; 2 uses
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !54 ; 2 uses
  %i.bad = load ptr, ptr %i.baa, align 8, !tbaa !54 ; 2 uses
  %i.bae = getelementptr i8, ptr %i.bac, i64 20
  %.val.i.i182.us = load i32, ptr %i.bae, align 4 ; 2 uses
  %i.baf = getelementptr i8, ptr %i.bad, i64 20
  %.val15.i.i.us = load i32, ptr %i.baf, align 4  ; 2 uses
  %i.bag = and i32 %.val.i.i182.us, 268435455     ; 2 uses
  %i.bah = and i32 %.val15.i.i.us, 268435455      ; 2 uses
  %i.bai = icmp samesign ult i32 %i.bag, %i.bah
  br i1 %i.bai, label %Sdb_CutSetSortByCost.exit.i.us, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i8.i.us
  %i.baj = icmp samesign ugt i32 %i.bag, %i.bah
  br i1 %i.baj, label %Sdb_CutCompare.exit.i.i.us, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.bak = lshr i32 %.val.i.i182.us, 28
  %i.bal = lshr i32 %.val15.i.i.us, 28
  %i.bam = icmp samesign ult i32 %i.bak, %i.bal
  br i1 %i.bam, label %Sdb_CutSetSortByCost.exit.i.us, label %Sdb_CutCompare.exit.i.i.us

Sdb_CutCompare.exit.i.i.us:                       ; preds = %bb.cp, %bb.co
  store ptr %i.bad, ptr %i.bab, align 8, !tbaa !54
  store ptr %i.bac, ptr %i.baa, align 8, !tbaa !54
  %indvars.iv.next.i10.i.us = add nsw i64 %indvars.iv.i9.i.us, -1
  %i.ban = icmp sgt i64 %indvars.iv.i9.i.us, 1
  br i1 %i.ban, label %.lr.ph.i8.i.us, label %Sdb_CutSetSortByCost.exit.i.us, !llvm.loop !124

Sdb_CutSetSortByCost.exit.i.us:                   ; preds = %.lr.ph.i8.i.us, %bb.cp, %Sdb_CutCompare.exit.i.i.us, %Sdb_CutSetLastCutContains.exit.i.us, %bb.cd
  %.0.i10.i.us = phi i32 [ %.1330.us, %bb.cd ], [ %.0.i.i180.us, %Sdb_CutSetLastCutContains.exit.i.us ], [ %.0.i.i180.us, %Sdb_CutCompare.exit.i.i.us ], [ %.0.i.i180.us, %bb.cp ], [ %.0.i.i180.us, %.lr.ph.i8.i.us ]
  %i.bao = add nsw i32 %.0.i10.i.us, 1
  %i.bap = call noundef i32 @llvm.smin.i32(i32 %i.bao, i32 %i.ns)
  br label %Sdb_CutSetAddCut.exit.us

Sdb_CutSetAddCut.exit.us:                         ; preds = %bb.u, %.lr.ph134.i.us, %bb.y, %bb.af, %bb.ab, %bb.ae, %Sdb_CutSetSortByCost.exit.i.us, %Sdb_CutTreeLeaves.exit.us, %.loopexit120.i.us, %.loopexit121.i.us, %.preheader118.i.us, %bb.l
  %.2.us = phi i32 [ %.1330.us, %bb.l ], [ %.1330.us, %.preheader118.i.us ], [ 1, %Sdb_CutTreeLeaves.exit.us ], [ %i.bap, %Sdb_CutSetSortByCost.exit.i.us ], [ %.1330.us, %.loopexit120.i.us ], [ %.1330.us, %bb.ae ], [ %.1330.us, %.loopexit121.i.us ], [ %.1330.us, %.lr.ph134.i.us ], [ %.1330.us, %bb.ab ], [ %.1330.us, %bb.y ], [ %.1330.us, %bb.af ], [ %.1330.us, %bb.u ] ; 3 uses
  %i.baq = add nuw nsw i32 %.084329.us, 1         ; 2 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %.0334.us, i64 48
  %exitcond.not = icmp eq i32 %i.baq, %.lcssa43.i100
  %indvar.next691 = add i64 %indvar690, 1
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.k, !llvm.loop !125

Abc_TtSwapVars.exit.loopexit.us.unr-lcssa:        ; preds = %.lr.ph.i203.us.new
  br i1 %lcmp.mod850.not, label %Abc_TtSwapVars.exit.loopexit.us, label %.epil.preheader845

.epil.preheader845:                               ; preds = %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa, %.lr.ph.i203.us
  %.epil.init849 = phi i64 [ %.promoted327.us, %.lr.ph.i203.us ], [ %i.anv, %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod852)
  %i.bas = and i64 %.epil.init849, %i.anb
  %i.bat = and i64 %.epil.init849, %i.and
  %i.bau = shl i64 %i.bat, %i.ane
  %i.bav = or i64 %i.bau, %i.bas
  %i.baw = and i64 %.epil.init849, %i.ang
  %i.bax = lshr i64 %i.baw, %i.ane
  %i.bay = or i64 %i.bav, %i.bax
  br label %Abc_TtSwapVars.exit.loopexit.us

Abc_TtSwapVars.exit.loopexit.us:                  ; preds = %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa, %.epil.preheader845
  %.lcssa754 = phi i64 [ %i.anv, %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa ], [ %i.bay, %.epil.preheader845 ]
  store i64 %.lcssa754, ptr %i.c, align 8, !tbaa !81
  br label %Abc_TtSwapVars.exit.us

Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa:     ; preds = %.lr.ph.i232.us.new
  br i1 %lcmp.mod834.not, label %Abc_TtSwapVars.exit240.loopexit.us, label %.epil.preheader829

.epil.preheader829:                               ; preds = %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa, %.lr.ph.i232.us
  %.epil.init833 = phi i64 [ %.promoted325.us, %.lr.ph.i232.us ], [ %i.ahr, %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod836)
  %i.baz = and i64 %.epil.init833, %i.agx
  %i.bba = and i64 %.epil.init833, %i.agz
  %i.bbb = shl i64 %i.bba, %i.aha
  %i.bbc = or i64 %i.bbb, %i.baz
  %i.bbd = and i64 %.epil.init833, %i.ahc
  %i.bbe = lshr i64 %i.bbd, %i.aha
  %i.bbf = or i64 %i.bbc, %i.bbe
  br label %Abc_TtSwapVars.exit240.loopexit.us

Abc_TtSwapVars.exit240.loopexit.us:               ; preds = %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa, %.epil.preheader829
  %.lcssa753 = phi i64 [ %i.ahr, %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa ], [ %i.bbf, %.epil.preheader829 ]
  store i64 %.lcssa753, ptr %i.e, align 8, !tbaa !81
  br label %Abc_TtSwapVars.exit240.us

Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa:     ; preds = %.lr.ph.i267.us.new
  br i1 %lcmp.mod818.not, label %Abc_TtSwapVars.exit275.loopexit.us, label %.epil.preheader815

.epil.preheader815:                               ; preds = %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa, %.lr.ph.i267.us
  %.epil.init = phi i64 [ %.promoted.us, %.lr.ph.i267.us ], [ %i.ach, %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod820)
  %i.bbg = and i64 %.epil.init, %i.abn
  %i.bbh = and i64 %.epil.init, %i.abp
  %i.bbi = shl i64 %i.bbh, %i.abq
  %i.bbj = or i64 %i.bbi, %i.bbg
  %i.bbk = and i64 %.epil.init, %i.abs
  %i.bbl = lshr i64 %i.bbk, %i.abq
  %i.bbm = or i64 %i.bbj, %i.bbl
  br label %Abc_TtSwapVars.exit275.loopexit.us

Abc_TtSwapVars.exit275.loopexit.us:               ; preds = %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa, %.epil.preheader815
  %.lcssa752 = phi i64 [ %i.ach, %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa ], [ %i.bbm, %.epil.preheader815 ]
  store i64 %.lcssa752, ptr %i.d, align 8, !tbaa !81
  br label %Abc_TtSwapVars.exit275.us

._crit_edge.us:                                   ; preds = %Sdb_CutSetAddCut.exit.us
  %i.bbn = add nuw nsw i32 %.085337.us, 1         ; 2 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %.082339.us, i64 48
  %exitcond406.not = icmp eq i32 %i.bbn, %.lcssa43.i
  %indvar.next707 = add i64 %indvar706, 1
  br i1 %exitcond406.not, label %._crit_edge341, label %.lr.ph.us, !llvm.loop !126

._crit_edge341:                                   ; preds = %._crit_edge.us, %.lr.ph340, %Sdb_StoPrepareSet.exit133.._crit_edge341_crit_edge
  %.pre-phi421 = phi i32 [ %.pre420, %Sdb_StoPrepareSet.exit133.._crit_edge341_crit_edge ], [ %i.ns, %.lr.ph340 ], [ %i.ns, %._crit_edge.us ]
  %.083.lcssa = phi i32 [ 0, %Sdb_StoPrepareSet.exit133.._crit_edge341_crit_edge ], [ 0, %.lr.ph340 ], [ %.2.us, %._crit_edge.us ] ; 7 uses
  %i.bbp = sitofp i32 %.083.lcssa to double
  %i.bbq = getelementptr inbounds nuw i8, ptr %0, i64 7848 ; 2 uses
  %i.bbr = load double, ptr %i.bbq, align 8, !tbaa !56
  %i.bbs = fadd double %i.bbr, %i.bbp
  store double %i.bbs, ptr %i.bbq, align 8, !tbaa !56
  %i.bbt = icmp eq i32 %.083.lcssa, %.pre-phi421
  %i.bbu = zext i1 %i.bbt to i32
  %i.bbv = getelementptr inbounds nuw i8, ptr %0, i64 7820 ; 2 uses
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !127
  %i.bbx = add nsw i32 %i.bbw, %i.bbu
  store i32 %i.bbx, ptr %i.bbv, align 4, !tbaa !127
  %i.bby = getelementptr inbounds nuw i8, ptr %0, i64 7808
  store i32 %.083.lcssa, ptr %i.bby, align 8, !tbaa !128
  %i.bbz = getelementptr inbounds nuw i8, ptr %0, i64 7812
  store i32 %1, ptr %i.bbz, align 4, !tbaa !129
  %.val95 = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.bca = getelementptr i8, ptr %.val95, i64 8
  %.val95.val = load ptr, ptr %i.bca, align 8, !tbaa !36
  %i.bcb = getelementptr inbounds [16 x i8], ptr %.val95.val, i64 %i.i ; 12 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 4 ; 12 uses
  %i.bcd = load i32, ptr %i.bcc, align 4, !tbaa !130 ; 7 uses
  %i.bce = load i32, ptr %i.bcb, align 8, !tbaa !131
  %i.bcf = icmp eq i32 %i.bcd, %i.bce
  br i1 %i.bcf, label %bb.cq, label %Vec_IntPush.exit.i

bb.cq:                                            ; preds = %._crit_edge341
  %i.bcg = icmp slt i32 %i.bcd, 16
  br i1 %i.bcg, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcb, i64 8 ; 2 uses
  %i.bci = load ptr, ptr %i.bch, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bci, null
  br i1 %.not9.i.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.bcj = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bci, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.bck = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.ct, %bb.cs
  %i.bcl = phi ptr [ %i.bcj, %bb.cs ], [ %i.bck, %bb.ct ]
  store ptr %i.bcl, ptr %i.bch, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.cu:                                            ; preds = %bb.cq
  %i.bcm = icmp samesign ult i32 %i.bcd, 1073741823
  %i.bcn = shl nuw nsw i32 %i.bcd, 1
  %spec.select.i.i197 = select i1 %i.bcm, i32 %i.bcn, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bcd, %spec.select.i.i197
  br i1 %.not.i9.i.i, label %bb.cv, label %Vec_IntPush.exit.i

bb.cv:                                            ; preds = %bb.cu
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcb, i64 8 ; 2 uses
  %i.bcp = load ptr, ptr %i.bco, align 8, !tbaa !38 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.bcp, null
  %i.bcq = zext nneg i32 %spec.select.i.i197 to i64
  %i.bcr = shl nuw nsw i64 %i.bcq, 2              ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bcs = call ptr @realloc(ptr noundef nonnull %i.bcp, i64 noundef %i.bcr) #23
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.bct = call noalias ptr @malloc(i64 noundef %i.bcr) #24
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.bcu = phi ptr [ %i.bcs, %bb.cw ], [ %i.bct, %bb.cx ]
  store ptr %i.bcu, ptr %i.bco, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.cy, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i197, %bb.cy ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.bcb, align 8, !tbaa !131
  %.pre.i198 = load i32, ptr %i.bcc, align 4, !tbaa !130
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.cu, %._crit_edge341
  %i.bcv = phi i32 [ %i.bcd, %._crit_edge341 ], [ %i.bcd, %bb.cu ], [ %.pre.i198, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcb, i64 8 ; 4 uses
  %i.bcx = load ptr, ptr %i.bcw, align 8, !tbaa !38 ; 2 uses
  %i.bcy = add nsw i32 %i.bcv, 1
  store i32 %i.bcy, ptr %i.bcc, align 4, !tbaa !130
  %i.bcz = sext i32 %i.bcv to i64
  %i.bda = getelementptr inbounds [4 x i8], ptr %i.bcx, i64 %i.bcz
  store i32 %.083.lcssa, ptr %i.bda, align 4, !tbaa !39
  %i.bdb = icmp sgt i32 %.083.lcssa, 0
  br i1 %i.bdb, label %.lr.ph5.preheader.i, label %Sdb_StoStoreResult.exit.thread

.lr.ph5.preheader.i:                              ; preds = %Vec_IntPush.exit.i
  %wide.trip.count.i189 = zext nneg i32 %.083.lcssa to i64
  br label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %Vec_IntPush.exit44.i, %.lr.ph5.preheader.i
  %i.bdc = phi ptr [ %i.bcx, %.lr.ph5.preheader.i ], [ %i.bfo, %Vec_IntPush.exit44.i ] ; 3 uses
  %indvars.iv9.i = phi i64 [ 0, %.lr.ph5.preheader.i ], [ %indvars.iv.next10.i, %Vec_IntPush.exit44.i ] ; 2 uses
  %i.bdd = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv9.i ; 3 uses
  %i.bde = load ptr, ptr %i.bdd, align 8, !tbaa !54 ; 3 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 20
  %i.bdg = load i32, ptr %i.bdf, align 4
  %i.bdh = lshr i32 %i.bdg, 28
  %i.bdi = load i32, ptr %i.bcc, align 4, !tbaa !130 ; 7 uses
  %i.bdj = load i32, ptr %i.bcb, align 8, !tbaa !131
  %i.bdk = icmp eq i32 %i.bdi, %i.bdj
  br i1 %i.bdk, label %bb.cz, label %Vec_IntPush.exit28.i

bb.cz:                                            ; preds = %.lr.ph5.i
  %i.bdl = icmp slt i32 %i.bdi, 16
  br i1 %i.bdl, label %Vec_IntGrow.exit11.sink.split.i24.i, label %bb.da
end_hunk_0
