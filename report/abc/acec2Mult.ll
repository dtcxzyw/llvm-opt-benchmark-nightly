Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acec2Mult?download=true
inline.NumInlined: 256
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Sdb_StoMergeCuts:Gia_ObjIsXor.exit
  %i.axc = zext i1 %i.axb to i32
  %i.axd = add nuw nsw i32 %i.awu, %i.axc         ; 3 uses
  %indvars.iv.next.i171.us.3 = add nuw nsw i64 %indvars.iv.i170.us, 4 ; 2 uses
  %niter850.next.3 = add i64 %niter850, 4         ; 2 uses
  %niter850.ncmp.3 = icmp eq i64 %niter850.next.3, %unroll_iter849
  br i1 %niter850.ncmp.3, label %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa, label %bb.cb, !llvm.loop !49

Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa:     ; preds = %bb.cb
  %lcmp.mod846.not = icmp eq i64 %xtraiter844, 0
  br i1 %lcmp.mod846.not, label %Sdb_CutTreeLeaves.exit.us.loopexit, label %.epil.preheader843

.epil.preheader843:                               ; preds = %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa, %.lr.ph.i167.us
  %indvars.iv.i170.us.epil.init = phi i64 [ 0, %.lr.ph.i167.us ], [ %indvars.iv.next.i171.us.3, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa ]
  %.09.i.us.epil.init = phi i32 [ 0, %.lr.ph.i167.us ], [ %i.axd, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod848 = icmp ne i64 %xtraiter844, 0
  call void @llvm.assume(i1 %lcmp.mod848)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.epil.preheader843
  %indvars.iv.i170.us.epil = phi i64 [ %indvars.iv.i170.us.epil.init, %.epil.preheader843 ], [ %indvars.iv.next.i171.us.epil, %bb.cc ] ; 2 uses
  %.09.i.us.epil = phi i32 [ %.09.i.us.epil.init, %.epil.preheader843 ], [ %i.axl, %bb.cc ]
  %epil.iter845 = phi i64 [ 0, %.epil.preheader843 ], [ %epil.iter845.next, %bb.cc ]
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %i.avs, i64 %indvars.iv.i170.us.epil
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !39
  %i.axg = sext i32 %i.axf to i64
  %i.axh = getelementptr inbounds [4 x i8], ptr %.val.i168.us, i64 %i.axg
  %i.axi = load i32, ptr %i.axh, align 4, !tbaa !39
  %i.axj = icmp eq i32 %i.axi, 1
  %i.axk = zext i1 %i.axj to i32
  %i.axl = add nuw nsw i32 %.09.i.us.epil, %i.axk ; 2 uses
  %indvars.iv.next.i171.us.epil = add nuw nsw i64 %indvars.iv.i170.us.epil, 1
  %epil.iter845.next = add i64 %epil.iter845, 1   ; 2 uses
  %epil.iter845.cmp.not = icmp eq i64 %epil.iter845.next, %xtraiter844
  br i1 %epil.iter845.cmp.not, label %Sdb_CutTreeLeaves.exit.us.loopexit, label %bb.cc, !llvm.loop !121

Sdb_CutTreeLeaves.exit.us.loopexit:               ; preds = %bb.cc, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa
  %.lcssa736 = phi i32 [ %i.axd, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa ], [ %i.axl, %bb.cc ]
  %i.axm = and i32 %.lcssa736, 268435455
  br label %Sdb_CutTreeLeaves.exit.us

Sdb_CutTreeLeaves.exit.us:                        ; preds = %Sdb_CutTreeLeaves.exit.us.loopexit, %bb.ca
  %.0.lcssa.i.us = phi i32 [ 0, %bb.ca ], [ %i.axm, %Sdb_CutTreeLeaves.exit.us.loopexit ]
  %i.axn = and i32 %i.avp, -268435456
  %i.axo = or disjoint i32 %.0.lcssa.i.us, %i.axn
  store i32 %i.axo, ptr %i.avo, align 4
  %i.axp = icmp eq i32 %.1330.us, 0
  br i1 %i.axp, label %Sdb_CutSetAddCut.exit.us, label %bb.cd

bb.cd:                                            ; preds = %Sdb_CutTreeLeaves.exit.us
  br i1 %i.tm, label %.lr.ph.i.i175.us, label %Sdb_CutSetSortByCost.exit.i.us

.lr.ph.i.i175.us:                                 ; preds = %bb.cd
  %i.axq = zext nneg i32 %.1330.us to i64         ; 4 uses
  %i.axr = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.axq
  br label %.outer.i.i.us

.outer.i.i.us:                                    ; preds = %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, %.lr.ph.i.i175.us
  %indvars.iv.ph.i.i.us = phi i64 [ %indvars.iv.next74.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us ], [ 0, %.lr.ph.i.i175.us ] ; 2 uses
  %i.axs = phi i1 [ false, %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us ], [ true, %.lr.ph.i.i175.us ]
  %i.axt = load ptr, ptr %i.axr, align 8, !tbaa !54 ; 4 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 20
  %i.axv = load i32, ptr %i.axu, align 4
  %.fr.i.us = freeze i32 %i.axv
  %i.axw = lshr i32 %.fr.i.us, 28                 ; 3 uses
  %i.axx = icmp eq i32 %i.axw, 0
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axt, i64 24
  br i1 %i.axx, label %.outer.i.split.us.i.us, label %.outer.i.split.i.us

.outer.i.split.i.us:                              ; preds = %.outer.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us
  %indvars.iv.i.i176.us = phi i64 [ %indvars.iv.next.i.i177.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us ], [ %indvars.iv.ph.i.i.us, %.outer.i.i.us ] ; 3 uses
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.i.i176.us
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !54 ; 4 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 20
  %i.ayc = load i32, ptr %i.ayb, align 4          ; 2 uses
  %i.ayd = lshr i32 %i.ayc, 28                    ; 2 uses
  %i.aye = icmp samesign ult i32 %i.axw, %i.ayd
  br i1 %i.aye, label %bb.ce, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us

bb.ce:                                            ; preds = %.outer.i.split.i.us
  %i.ayf = load i64, ptr %i.axt, align 8, !tbaa !44 ; 2 uses
  %i.ayg = load i64, ptr %i.aya, align 8, !tbaa !44
  %i.ayh = and i64 %i.ayg, %i.ayf
  %i.ayi = icmp eq i64 %i.ayh, %i.ayf
  br i1 %i.ayi, label %.lr.ph.i.i.i183.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us

.lr.ph.i.i.i183.us:                               ; preds = %bb.ce
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.aya, i64 24
  %wide.trip.count.i.i.i.us = zext nneg i32 %i.ayd to i64
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ci, %.lr.ph.i.i.i183.us
  %indvars.iv.i.i.i184.us = phi i64 [ 0, %.lr.ph.i.i.i183.us ], [ %indvars.iv.next.i.i.i186.us, %bb.ci ] ; 2 uses
  %.038.i.i.i.us = phi i32 [ 0, %.lr.ph.i.i.i183.us ], [ %.1.i.i.i185.us, %bb.ci ] ; 3 uses
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %i.ayj, i64 %indvars.iv.i.i.i184.us
  %i.ayl = load i32, ptr %i.ayk, align 4, !tbaa !39 ; 2 uses
  %i.aym = sext i32 %.038.i.i.i.us to i64
  %i.ayn = getelementptr inbounds [4 x i8], ptr %i.axy, i64 %i.aym
  %i.ayo = load i32, ptr %i.ayn, align 4, !tbaa !39 ; 2 uses
  %i.ayp = icmp sgt i32 %i.ayl, %i.ayo
  br i1 %i.ayp, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ayq = icmp eq i32 %i.ayl, %i.ayo
  br i1 %i.ayq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ayr = add nsw i32 %.038.i.i.i.us, 1          ; 2 uses
  %i.ays = icmp eq i32 %i.ayr, %i.axw
  br i1 %i.ays, label %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.1.i.i.i185.us = phi i32 [ %i.ayr, %bb.ch ], [ %.038.i.i.i.us, %bb.cg ]
  %indvars.iv.next.i.i.i186.us = add nuw nsw i64 %indvars.iv.i.i.i184.us, 1 ; 2 uses
  %exitcond.not.i.i.i187.us = icmp eq i64 %indvars.iv.next.i.i.i186.us, %wide.trip.count.i.i.i.us
  br i1 %exitcond.not.i.i.i187.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us, label %bb.cf, !llvm.loop !67

Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us: ; preds = %bb.cf, %bb.ci, %bb.ce, %.outer.i.split.i.us
  %indvars.iv.next.i.i177.us = add nuw nsw i64 %indvars.iv.i.i176.us, 1 ; 2 uses
  %exitcond.not.i.i178.us = icmp eq i64 %indvars.iv.next.i.i177.us, %i.axq
  br i1 %exitcond.not.i.i178.us, label %._crit_edge.i.i.us, label %.outer.i.split.i.us, !llvm.loop !122

.outer.i.split.us.i.us:                           ; preds = %.outer.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us
  %indvars.iv.i.us.i.us = phi i64 [ %indvars.iv.next.i.us.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us ], [ %indvars.iv.ph.i.i.us, %.outer.i.i.us ] ; 3 uses
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.i.us.i.us
  %i.ayu = load ptr, ptr %i.ayt, align 8, !tbaa !54 ; 3 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 20
  %i.ayw = load i32, ptr %i.ayv, align 4          ; 2 uses
  %.not.i188.us = icmp ult i32 %i.ayw, 268435456
  br i1 %.not.i188.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us, label %bb.cj

bb.cj:                                            ; preds = %.outer.i.split.us.i.us
  %i.ayx = load i64, ptr %i.axt, align 8, !tbaa !44 ; 2 uses
  %i.ayy = load i64, ptr %i.ayu, align 8, !tbaa !44
  %i.ayz = and i64 %i.ayy, %i.ayx
  %i.aza = icmp eq i64 %i.ayz, %i.ayx
  br i1 %i.aza, label %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us

Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us: ; preds = %bb.cj, %.outer.i.split.us.i.us
  %indvars.iv.next.i.us.i.us = add nuw nsw i64 %indvars.iv.i.us.i.us, 1 ; 2 uses
  %exitcond.not.i.us.i.us = icmp eq i64 %indvars.iv.next.i.us.i.us, %i.axq
  br i1 %exitcond.not.i.us.i.us, label %._crit_edge.i.i.us, label %.outer.i.split.us.i.us, !llvm.loop !122

Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us: ; preds = %bb.cj, %bb.ch
  %indvars.iv.i19.i.us = phi i64 [ %indvars.iv.i.i176.us, %bb.ch ], [ %indvars.iv.i.us.i.us, %bb.cj ]
  %.pn.i.us = phi ptr [ %i.aya, %bb.ch ], [ %i.ayu, %bb.cj ]
  %i.azb = phi i32 [ %i.ayc, %bb.ch ], [ %i.ayw, %bb.cj ]
  %i.azc = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 20
  %i.azd = or i32 %i.azb, -268435456
  store i32 %i.azd, ptr %i.azc, align 4
  %indvars.iv.next74.i.i.us = add nuw nsw i64 %indvars.iv.i19.i.us, 1 ; 2 uses
  %exitcond.not75.i.i.us = icmp eq i64 %indvars.iv.next74.i.i.us, %i.axq
  br i1 %exitcond.not75.i.i.us, label %.preheader.i.i179.us, label %.outer.i.i.us, !llvm.loop !122

._crit_edge.i.i.us:                               ; preds = %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us
  br i1 %i.axs, label %Sdb_CutSetLastCutContains.exit.i.us, label %.preheader.i.i179.us

.preheader.i.i179.us:                             ; preds = %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, %._crit_edge.i.i.us
  %i.aze = add nuw i32 %.1330.us, 1
  %wide.trip.count62.i.i.us = zext i32 %i.aze to i64
  br label %.lr.ph55.i.i.us

.lr.ph55.i.i.us:                                  ; preds = %bb.cn, %.preheader.i.i179.us
  %indvars.iv59.i.i.us = phi i64 [ 0, %.preheader.i.i179.us ], [ %indvars.iv.next60.i.i.us, %bb.cn ] ; 3 uses
  %.04054.i.i.us = phi i32 [ 0, %.preheader.i.i179.us ], [ %.141.i.i.us, %bb.cn ] ; 3 uses
  %i.azf = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv59.i.i.us ; 2 uses
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !54 ; 2 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 20
  %i.azi = load i32, ptr %i.azh, align 4
  %i.azj = icmp ugt i32 %i.azi, -268435457
  br i1 %i.azj, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph55.i.i.us
  %i.azk = sext i32 %.04054.i.i.us to i64         ; 2 uses
  %i.azl = icmp sgt i64 %indvars.iv59.i.i.us, %i.azk
  br i1 %i.azl, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.azm = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.azk ; 2 uses
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !54
  store ptr %i.azg, ptr %i.azm, align 8, !tbaa !54
  store ptr %i.azn, ptr %i.azf, align 8, !tbaa !54
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.azo = add nsw i32 %.04054.i.i.us, 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph55.i.i.us
  %.141.i.i.us = phi i32 [ %.04054.i.i.us, %.lr.ph55.i.i.us ], [ %i.azo, %bb.cm ] ; 2 uses
  %indvars.iv.next60.i.i.us = add nuw nsw i64 %indvars.iv59.i.i.us, 1 ; 2 uses
  %exitcond63.not.i.i.us = icmp eq i64 %indvars.iv.next60.i.i.us, %wide.trip.count62.i.i.us
  br i1 %exitcond63.not.i.i.us, label %._crit_edge56.loopexit.i.i.us, label %.lr.ph55.i.i.us, !llvm.loop !123

._crit_edge56.loopexit.i.i.us:                    ; preds = %bb.cn
  %i.azp = add nsw i32 %.141.i.i.us, -1
  br label %Sdb_CutSetLastCutContains.exit.i.us

Sdb_CutSetLastCutContains.exit.i.us:              ; preds = %._crit_edge56.loopexit.i.i.us, %._crit_edge.i.i.us
  %.0.i.i180.us = phi i32 [ %i.azp, %._crit_edge56.loopexit.i.i.us ], [ %.1330.us, %._crit_edge.i.i.us ] ; 6 uses
  %i.azq = icmp sgt i32 %.0.i.i180.us, 0
  br i1 %i.azq, label %.lr.ph.i8.i.us, label %Sdb_CutSetSortByCost.exit.i.us

.lr.ph.i8.i.us:                                   ; preds = %Sdb_CutSetLastCutContains.exit.i.us, %Sdb_CutCompare.exit.i.i.us
  %.017.i.i181.us = phi i32 [ %3, %Sdb_CutCompare.exit.i.i.us ], [ %.0.i.i180.us, %Sdb_CutSetLastCutContains.exit.i.us ] ; 3 uses
  %2 = zext nneg i32 %.017.i.i181.us to i64
  %i.azr = getelementptr [8 x i8], ptr %i.jf, i64 %2 ; 3 uses
  %i.azs = getelementptr i8, ptr %i.azr, i64 -8   ; 2 uses
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !54 ; 2 uses
  %i.azu = load ptr, ptr %i.azr, align 8, !tbaa !54 ; 2 uses
  %i.azv = getelementptr i8, ptr %i.azt, i64 20
  %.val.i.i182.us = load i32, ptr %i.azv, align 4 ; 2 uses
  %i.azw = getelementptr i8, ptr %i.azu, i64 20
  %.val15.i.i.us = load i32, ptr %i.azw, align 4  ; 2 uses
  %i.azx = and i32 %.val.i.i182.us, 268435455     ; 2 uses
  %i.azy = and i32 %.val15.i.i.us, 268435455      ; 2 uses
  %i.azz = icmp samesign ult i32 %i.azx, %i.azy
  br i1 %i.azz, label %Sdb_CutSetSortByCost.exit.i.us, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i8.i.us
  %i.baa = icmp samesign ugt i32 %i.azx, %i.azy
  br i1 %i.baa, label %Sdb_CutCompare.exit.i.i.us, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.bab = lshr i32 %.val.i.i182.us, 28
  %i.bac = lshr i32 %.val15.i.i.us, 28
  %i.bad = icmp samesign ult i32 %i.bab, %i.bac
  br i1 %i.bad, label %Sdb_CutSetSortByCost.exit.i.us, label %Sdb_CutCompare.exit.i.i.us

Sdb_CutCompare.exit.i.i.us:                       ; preds = %bb.cp, %bb.co
  store ptr %i.azu, ptr %i.azs, align 8, !tbaa !54
  store ptr %i.azt, ptr %i.azr, align 8, !tbaa !54
  %3 = add nsw i32 %.017.i.i181.us, -1
  %i.bae = icmp sgt i32 %.017.i.i181.us, 1
  br i1 %i.bae, label %.lr.ph.i8.i.us, label %Sdb_CutSetSortByCost.exit.i.us, !llvm.loop !124

Sdb_CutSetSortByCost.exit.i.us:                   ; preds = %.lr.ph.i8.i.us, %bb.cp, %Sdb_CutCompare.exit.i.i.us, %Sdb_CutSetLastCutContains.exit.i.us, %bb.cd
  %.0.i10.i.us = phi i32 [ %.1330.us, %bb.cd ], [ %.0.i.i180.us, %Sdb_CutSetLastCutContains.exit.i.us ], [ %.0.i.i180.us, %Sdb_CutCompare.exit.i.i.us ], [ %.0.i.i180.us, %bb.cp ], [ %.0.i.i180.us, %.lr.ph.i8.i.us ]
  %i.baf = add nsw i32 %.0.i10.i.us, 1
  %i.bag = call noundef i32 @llvm.smin.i32(i32 %i.baf, i32 %i.ns)
  br label %Sdb_CutSetAddCut.exit.us

Sdb_CutSetAddCut.exit.us:                         ; preds = %bb.u, %.lr.ph134.i.us, %bb.y, %bb.af, %bb.ab, %bb.ae, %Sdb_CutSetSortByCost.exit.i.us, %Sdb_CutTreeLeaves.exit.us, %.loopexit120.i.us, %.loopexit121.i.us, %.preheader118.i.us, %bb.l
  %.2.us = phi i32 [ %.1330.us, %bb.l ], [ %.1330.us, %.preheader118.i.us ], [ 1, %Sdb_CutTreeLeaves.exit.us ], [ %i.bag, %Sdb_CutSetSortByCost.exit.i.us ], [ %.1330.us, %.loopexit120.i.us ], [ %.1330.us, %bb.ae ], [ %.1330.us, %.loopexit121.i.us ], [ %.1330.us, %.lr.ph134.i.us ], [ %.1330.us, %bb.ab ], [ %.1330.us, %bb.y ], [ %.1330.us, %bb.af ], [ %.1330.us, %bb.u ] ; 3 uses
  %i.bah = add nuw nsw i32 %.084329.us, 1         ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %.0334.us, i64 48
  %exitcond.not = icmp eq i32 %i.bah, %.lcssa43.i100
  %indvar.next671 = add i64 %indvar670, 1
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.k, !llvm.loop !125

Abc_TtSwapVars.exit.loopexit.us.unr-lcssa:        ; preds = %.lr.ph.i203.us.new
  br i1 %lcmp.mod830.not, label %Abc_TtSwapVars.exit.loopexit.us, label %.epil.preheader825

.epil.preheader825:                               ; preds = %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa, %.lr.ph.i203.us
  %.epil.init829 = phi i64 [ %.promoted327.us, %.lr.ph.i203.us ], [ %i.anm, %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod832)
  %i.baj = and i64 %.epil.init829, %i.ams
  %i.bak = and i64 %.epil.init829, %i.amu
  %i.bal = shl i64 %i.bak, %i.amv
  %i.bam = or i64 %i.bal, %i.baj
  %i.ban = and i64 %.epil.init829, %i.amx
  %i.bao = lshr i64 %i.ban, %i.amv
  %i.bap = or i64 %i.bam, %i.bao
  br label %Abc_TtSwapVars.exit.loopexit.us

Abc_TtSwapVars.exit.loopexit.us:                  ; preds = %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa, %.epil.preheader825
  %.lcssa734 = phi i64 [ %i.anm, %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa ], [ %i.bap, %.epil.preheader825 ]
  store i64 %.lcssa734, ptr %i.c, align 8, !tbaa !81
  br label %Abc_TtSwapVars.exit.us

Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa:     ; preds = %.lr.ph.i232.us.new
  br i1 %lcmp.mod814.not, label %Abc_TtSwapVars.exit240.loopexit.us, label %.epil.preheader809

.epil.preheader809:                               ; preds = %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa, %.lr.ph.i232.us
  %.epil.init813 = phi i64 [ %.promoted325.us, %.lr.ph.i232.us ], [ %i.ahl, %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod816)
  %i.baq = and i64 %.epil.init813, %i.agr
  %i.bar = and i64 %.epil.init813, %i.agt
  %i.bas = shl i64 %i.bar, %i.agu
  %i.bat = or i64 %i.bas, %i.baq
  %i.bau = and i64 %.epil.init813, %i.agw
  %i.bav = lshr i64 %i.bau, %i.agu
  %i.baw = or i64 %i.bat, %i.bav
  br label %Abc_TtSwapVars.exit240.loopexit.us

Abc_TtSwapVars.exit240.loopexit.us:               ; preds = %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa, %.epil.preheader809
  %.lcssa733 = phi i64 [ %i.ahl, %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa ], [ %i.baw, %.epil.preheader809 ]
  store i64 %.lcssa733, ptr %i.e, align 8, !tbaa !81
  br label %Abc_TtSwapVars.exit240.us

Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa:     ; preds = %.lr.ph.i267.us.new
  br i1 %lcmp.mod798.not, label %Abc_TtSwapVars.exit275.loopexit.us, label %.epil.preheader795

.epil.preheader795:                               ; preds = %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa, %.lr.ph.i267.us
  %.epil.init = phi i64 [ %.promoted.us, %.lr.ph.i267.us ], [ %i.ace, %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod800)
  %i.bax = and i64 %.epil.init, %i.abk
  %i.bay = and i64 %.epil.init, %i.abm
  %i.baz = shl i64 %i.bay, %i.abn
  %i.bba = or i64 %i.baz, %i.bax
  %i.bbb = and i64 %.epil.init, %i.abp
  %i.bbc = lshr i64 %i.bbb, %i.abn
  %i.bbd = or i64 %i.bba, %i.bbc
  br label %Abc_TtSwapVars.exit275.loopexit.us

Abc_TtSwapVars.exit275.loopexit.us:               ; preds = %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa, %.epil.preheader795
  %.lcssa732 = phi i64 [ %i.ace, %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa ], [ %i.bbd, %.epil.preheader795 ]
  store i64 %.lcssa732, ptr %i.d, align 8, !tbaa !81
  br label %Abc_TtSwapVars.exit275.us

._crit_edge.us:                                   ; preds = %Sdb_CutSetAddCut.exit.us
  %i.bbe = add nuw nsw i32 %.085337.us, 1         ; 2 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %.082339.us, i64 48
  %exitcond392.not = icmp eq i32 %i.bbe, %.lcssa43.i
  %indvar.next687 = add i64 %indvar686, 1
  br i1 %exitcond392.not, label %._crit_edge341, label %.lr.ph.us, !llvm.loop !126

._crit_edge341:                                   ; preds = %._crit_edge.us, %.lr.ph340, %Sdb_StoPrepareSet.exit133.._crit_edge341_crit_edge
  %.pre-phi407 = phi i32 [ %.pre406, %Sdb_StoPrepareSet.exit133.._crit_edge341_crit_edge ], [ %i.ns, %.lr.ph340 ], [ %i.ns, %._crit_edge.us ]
  %.083.lcssa = phi i32 [ 0, %Sdb_StoPrepareSet.exit133.._crit_edge341_crit_edge ], [ 0, %.lr.ph340 ], [ %.2.us, %._crit_edge.us ] ; 7 uses
  %i.bbg = sitofp i32 %.083.lcssa to double
  %i.bbh = getelementptr inbounds nuw i8, ptr %0, i64 7848 ; 2 uses
  %i.bbi = load double, ptr %i.bbh, align 8, !tbaa !56
  %i.bbj = fadd double %i.bbi, %i.bbg
  store double %i.bbj, ptr %i.bbh, align 8, !tbaa !56
  %i.bbk = icmp eq i32 %.083.lcssa, %.pre-phi407
  %i.bbl = zext i1 %i.bbk to i32
  %i.bbm = getelementptr inbounds nuw i8, ptr %0, i64 7820 ; 2 uses
  %i.bbn = load i32, ptr %i.bbm, align 4, !tbaa !127
  %i.bbo = add nsw i32 %i.bbn, %i.bbl
  store i32 %i.bbo, ptr %i.bbm, align 4, !tbaa !127
  %i.bbp = getelementptr inbounds nuw i8, ptr %0, i64 7808
  store i32 %.083.lcssa, ptr %i.bbp, align 8, !tbaa !128
  %i.bbq = getelementptr inbounds nuw i8, ptr %0, i64 7812
  store i32 %1, ptr %i.bbq, align 4, !tbaa !129
  %.val95 = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.bbr = getelementptr i8, ptr %.val95, i64 8
  %.val95.val = load ptr, ptr %i.bbr, align 8, !tbaa !36
  %i.bbs = getelementptr inbounds [16 x i8], ptr %.val95.val, i64 %i.i ; 12 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 4 ; 12 uses
  %i.bbu = load i32, ptr %i.bbt, align 4, !tbaa !130 ; 7 uses
  %i.bbv = load i32, ptr %i.bbs, align 8, !tbaa !131
  %i.bbw = icmp eq i32 %i.bbu, %i.bbv
  br i1 %i.bbw, label %bb.cq, label %Vec_IntPush.exit.i

bb.cq:                                            ; preds = %._crit_edge341
  %i.bbx = icmp slt i32 %i.bbu, 16
  br i1 %i.bbx, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbs, i64 8 ; 2 uses
  %i.bbz = load ptr, ptr %i.bby, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bbz, null
  br i1 %.not9.i.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.bca = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bbz, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.bcb = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.ct, %bb.cs
  %i.bcc = phi ptr [ %i.bca, %bb.cs ], [ %i.bcb, %bb.ct ]
  store ptr %i.bcc, ptr %i.bby, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.cu:                                            ; preds = %bb.cq
  %i.bcd = icmp samesign ult i32 %i.bbu, 1073741823
  %i.bce = shl nuw nsw i32 %i.bbu, 1
  %spec.select.i.i197 = select i1 %i.bcd, i32 %i.bce, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bbu, %spec.select.i.i197
  br i1 %.not.i9.i.i, label %bb.cv, label %Vec_IntPush.exit.i

bb.cv:                                            ; preds = %bb.cu
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bbs, i64 8 ; 2 uses
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !38 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.bcg, null
  %i.bch = zext nneg i32 %spec.select.i.i197 to i64
  %i.bci = shl nuw nsw i64 %i.bch, 2              ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bcj = call ptr @realloc(ptr noundef nonnull %i.bcg, i64 noundef %i.bci) #23
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.bck = call noalias ptr @malloc(i64 noundef %i.bci) #24
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.bcl = phi ptr [ %i.bcj, %bb.cw ], [ %i.bck, %bb.cx ]
  store ptr %i.bcl, ptr %i.bcf, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.cy, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i197, %bb.cy ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.bbs, align 8, !tbaa !131
  %.pre.i198 = load i32, ptr %i.bbt, align 4, !tbaa !130
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.cu, %._crit_edge341
  %i.bcm = phi i32 [ %i.bbu, %._crit_edge341 ], [ %i.bbu, %bb.cu ], [ %.pre.i198, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bbs, i64 8 ; 4 uses
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !38 ; 2 uses
  %i.bcp = add nsw i32 %i.bcm, 1
  store i32 %i.bcp, ptr %i.bbt, align 4, !tbaa !130
  %i.bcq = sext i32 %i.bcm to i64
  %i.bcr = getelementptr inbounds [4 x i8], ptr %i.bco, i64 %i.bcq
  store i32 %.083.lcssa, ptr %i.bcr, align 4, !tbaa !39
  %i.bcs = icmp sgt i32 %.083.lcssa, 0
  br i1 %i.bcs, label %.lr.ph5.preheader.i, label %Sdb_StoStoreResult.exit.thread

.lr.ph5.preheader.i:                              ; preds = %Vec_IntPush.exit.i
  %wide.trip.count.i189 = zext nneg i32 %.083.lcssa to i64
  br label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %Vec_IntPush.exit44.i, %.lr.ph5.preheader.i
  %i.bct = phi ptr [ %i.bco, %.lr.ph5.preheader.i ], [ %i.bff, %Vec_IntPush.exit44.i ] ; 3 uses
  %indvars.iv9.i = phi i64 [ 0, %.lr.ph5.preheader.i ], [ %indvars.iv.next10.i, %Vec_IntPush.exit44.i ] ; 2 uses
  %i.bcu = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv9.i ; 3 uses
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !54 ; 3 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 20
  %i.bcx = load i32, ptr %i.bcw, align 4
  %i.bcy = lshr i32 %i.bcx, 28
  %i.bcz = load i32, ptr %i.bbt, align 4, !tbaa !130 ; 7 uses
  %i.bda = load i32, ptr %i.bbs, align 8, !tbaa !131
  %i.bdb = icmp eq i32 %i.bcz, %i.bda
  br i1 %i.bdb, label %bb.cz, label %Vec_IntPush.exit28.i

bb.cz:                                            ; preds = %.lr.ph5.i
  %i.bdc = icmp slt i32 %i.bcz, 16
  br i1 %i.bdc, label %Vec_IntGrow.exit11.sink.split.i24.i, label %bb.da
end_hunk_0
