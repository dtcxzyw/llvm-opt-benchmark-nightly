Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acec2Mult?download=true
inline.NumInlined: 256
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 26
begin_hunk_0_@Sdb_StoMergeCuts:Gia_ObjIsXor.exit
  %i.axi = zext i1 %i.axh to i32
  %i.axj = add nuw nsw i32 %i.axa, %i.axi         ; 3 uses
  %indvars.iv.next.i171.us.3 = add nuw nsw i64 %indvars.iv.i170.us, 4 ; 2 uses
  %niter871.next.3 = add i64 %niter871, 4         ; 2 uses
  %niter871.ncmp.3 = icmp eq i64 %niter871.next.3, %unroll_iter870
  br i1 %niter871.ncmp.3, label %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa, label %bb.cb, !llvm.loop !82

Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa:     ; preds = %bb.cb
  %lcmp.mod867.not = icmp eq i64 %xtraiter865, 0
  br i1 %lcmp.mod867.not, label %Sdb_CutTreeLeaves.exit.us.loopexit, label %.epil.preheader864

.epil.preheader864:                               ; preds = %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa, %.lr.ph.i167.us
  %indvars.iv.i170.us.epil.init = phi i64 [ 0, %.lr.ph.i167.us ], [ %indvars.iv.next.i171.us.3, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa ]
  %.09.i.us.epil.init = phi i32 [ 0, %.lr.ph.i167.us ], [ %i.axj, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod869 = icmp ne i64 %xtraiter865, 0
  call void @llvm.assume(i1 %lcmp.mod869)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.epil.preheader864
  %indvars.iv.i170.us.epil = phi i64 [ %indvars.iv.i170.us.epil.init, %.epil.preheader864 ], [ %indvars.iv.next.i171.us.epil, %bb.cc ] ; 2 uses
  %.09.i.us.epil = phi i32 [ %.09.i.us.epil.init, %.epil.preheader864 ], [ %i.axr, %bb.cc ]
  %epil.iter866 = phi i64 [ 0, %.epil.preheader864 ], [ %epil.iter866.next, %bb.cc ]
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.avy, i64 %indvars.iv.i170.us.epil
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !43
  %i.axm = sext i32 %i.axl to i64
  %i.axn = getelementptr inbounds [4 x i8], ptr %.val.i168.us, i64 %i.axm
  %i.axo = load i32, ptr %i.axn, align 4, !tbaa !43
  %i.axp = icmp eq i32 %i.axo, 1
  %i.axq = zext i1 %i.axp to i32
  %i.axr = add nuw nsw i32 %.09.i.us.epil, %i.axq ; 2 uses
  %indvars.iv.next.i171.us.epil = add nuw nsw i64 %indvars.iv.i170.us.epil, 1
  %epil.iter866.next = add i64 %epil.iter866, 1   ; 2 uses
  %epil.iter866.cmp.not = icmp eq i64 %epil.iter866.next, %xtraiter865
  br i1 %epil.iter866.cmp.not, label %Sdb_CutTreeLeaves.exit.us.loopexit, label %bb.cc, !llvm.loop !129

Sdb_CutTreeLeaves.exit.us.loopexit:               ; preds = %bb.cc, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa
  %.lcssa757 = phi i32 [ %i.axj, %Sdb_CutTreeLeaves.exit.us.loopexit.unr-lcssa ], [ %i.axr, %bb.cc ]
  %i.axs = and i32 %.lcssa757, 268435455
  br label %Sdb_CutTreeLeaves.exit.us

Sdb_CutTreeLeaves.exit.us:                        ; preds = %Sdb_CutTreeLeaves.exit.us.loopexit, %bb.ca
  %.0.lcssa.i.us = phi i32 [ 0, %bb.ca ], [ %i.axs, %Sdb_CutTreeLeaves.exit.us.loopexit ]
  %i.axt = and i32 %i.avv, -268435456
  %i.axu = or disjoint i32 %.0.lcssa.i.us, %i.axt
  store i32 %i.axu, ptr %i.avu, align 4
  %i.axv = icmp eq i32 %.1330.us, 0
  br i1 %i.axv, label %Sdb_CutSetAddCut.exit.us, label %bb.cd

bb.cd:                                            ; preds = %Sdb_CutTreeLeaves.exit.us
  br i1 %i.tm, label %.lr.ph.i.i175.us, label %Sdb_CutSetSortByCost.exit.i.us

.lr.ph.i.i175.us:                                 ; preds = %bb.cd
  %i.axw = zext nneg i32 %.1330.us to i64         ; 4 uses
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.axw
  br label %.outer.i.i.us

.outer.i.i.us:                                    ; preds = %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, %.lr.ph.i.i175.us
  %indvars.iv.ph.i.i.us = phi i64 [ %indvars.iv.next74.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us ], [ 0, %.lr.ph.i.i175.us ] ; 2 uses
  %i.axy = phi i1 [ false, %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us ], [ true, %.lr.ph.i.i175.us ]
  %i.axz = load ptr, ptr %i.axx, align 8, !tbaa !141 ; 4 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 20
  %i.ayb = load i32, ptr %i.aya, align 4
  %.fr.i.us = freeze i32 %i.ayb
  %i.ayc = lshr i32 %.fr.i.us, 28                 ; 3 uses
  %i.ayd = icmp eq i32 %i.ayc, 0
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axz, i64 24
  br i1 %i.ayd, label %.outer.i.split.us.i.us, label %.outer.i.split.i.us

.outer.i.split.i.us:                              ; preds = %.outer.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us
  %indvars.iv.i.i176.us = phi i64 [ %indvars.iv.next.i.i177.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us ], [ %indvars.iv.ph.i.i.us, %.outer.i.i.us ] ; 3 uses
  %i.ayf = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.i.i176.us
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !141 ; 4 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 20
  %i.ayi = load i32, ptr %i.ayh, align 4          ; 2 uses
  %i.ayj = lshr i32 %i.ayi, 28                    ; 2 uses
  %i.ayk = icmp samesign ult i32 %i.ayc, %i.ayj
  br i1 %i.ayk, label %bb.ce, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us

bb.ce:                                            ; preds = %.outer.i.split.i.us
  %i.ayl = load i64, ptr %i.axz, align 8, !tbaa !139 ; 2 uses
  %i.aym = load i64, ptr %i.ayg, align 8, !tbaa !139
  %i.ayn = and i64 %i.aym, %i.ayl
  %i.ayo = icmp eq i64 %i.ayn, %i.ayl
  br i1 %i.ayo, label %.lr.ph.i.i.i183.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us

.lr.ph.i.i.i183.us:                               ; preds = %bb.ce
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayg, i64 24
  %wide.trip.count.i.i.i.us = zext nneg i32 %i.ayj to i64
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ci, %.lr.ph.i.i.i183.us
  %indvars.iv.i.i.i184.us = phi i64 [ 0, %.lr.ph.i.i.i183.us ], [ %indvars.iv.next.i.i.i186.us, %bb.ci ] ; 2 uses
  %.038.i.i.i.us = phi i32 [ 0, %.lr.ph.i.i.i183.us ], [ %.1.i.i.i185.us, %bb.ci ] ; 3 uses
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %indvars.iv.i.i.i184.us
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !43 ; 2 uses
  %i.ays = sext i32 %.038.i.i.i.us to i64
  %i.ayt = getelementptr inbounds [4 x i8], ptr %i.aye, i64 %i.ays
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !43 ; 2 uses
  %i.ayv = icmp sgt i32 %i.ayr, %i.ayu
  br i1 %i.ayv, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ayw = icmp eq i32 %i.ayr, %i.ayu
  br i1 %i.ayw, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ayx = add nsw i32 %.038.i.i.i.us, 1          ; 2 uses
  %i.ayy = icmp eq i32 %i.ayx, %i.ayc
  br i1 %i.ayy, label %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.1.i.i.i185.us = phi i32 [ %i.ayx, %bb.ch ], [ %.038.i.i.i.us, %bb.cg ]
  %indvars.iv.next.i.i.i186.us = add nuw nsw i64 %indvars.iv.i.i.i184.us, 1 ; 2 uses
  %exitcond.not.i.i.i187.us = icmp eq i64 %indvars.iv.next.i.i.i186.us, %wide.trip.count.i.i.i.us
  br i1 %exitcond.not.i.i.i187.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us, label %bb.cf, !llvm.loop !94

Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us: ; preds = %bb.cf, %bb.ci, %bb.ce, %.outer.i.split.i.us
  %indvars.iv.next.i.i177.us = add nuw nsw i64 %indvars.iv.i.i176.us, 1 ; 2 uses
  %exitcond.not.i.i178.us = icmp eq i64 %indvars.iv.next.i.i177.us, %i.axw
  br i1 %exitcond.not.i.i178.us, label %._crit_edge.i.i.us, label %.outer.i.split.i.us, !llvm.loop !130

.outer.i.split.us.i.us:                           ; preds = %.outer.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us
  %indvars.iv.i.us.i.us = phi i64 [ %indvars.iv.next.i.us.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us ], [ %indvars.iv.ph.i.i.us, %.outer.i.i.us ] ; 3 uses
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.i.us.i.us
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !141 ; 3 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 20
  %i.azc = load i32, ptr %i.azb, align 4          ; 2 uses
  %.not.i188.us = icmp ult i32 %i.azc, 268435456
  br i1 %.not.i188.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us, label %bb.cj

bb.cj:                                            ; preds = %.outer.i.split.us.i.us
  %i.azd = load i64, ptr %i.axz, align 8, !tbaa !139 ; 2 uses
  %i.aze = load i64, ptr %i.aza, align 8, !tbaa !139
  %i.azf = and i64 %i.aze, %i.azd
  %i.azg = icmp eq i64 %i.azf, %i.azd
  br i1 %i.azg, label %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, label %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us

Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us: ; preds = %bb.cj, %.outer.i.split.us.i.us
  %indvars.iv.next.i.us.i.us = add nuw nsw i64 %indvars.iv.i.us.i.us, 1 ; 2 uses
  %exitcond.not.i.us.i.us = icmp eq i64 %indvars.iv.next.i.us.i.us, %i.axw
  br i1 %exitcond.not.i.us.i.us, label %._crit_edge.i.i.us, label %.outer.i.split.us.i.us, !llvm.loop !130

Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us: ; preds = %bb.cj, %bb.ch
  %indvars.iv.i19.i.us = phi i64 [ %indvars.iv.i.i176.us, %bb.ch ], [ %indvars.iv.i.us.i.us, %bb.cj ]
  %.pn.i.us = phi ptr [ %i.ayg, %bb.ch ], [ %i.aza, %bb.cj ]
  %i.azh = phi i32 [ %i.ayi, %bb.ch ], [ %i.azc, %bb.cj ]
  %i.azi = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 20
  %i.azj = or i32 %i.azh, -268435456
  store i32 %i.azj, ptr %i.azi, align 4
  %indvars.iv.next74.i.i.us = add nuw nsw i64 %indvars.iv.i19.i.us, 1 ; 2 uses
  %exitcond.not75.i.i.us = icmp eq i64 %indvars.iv.next74.i.i.us, %i.axw
  br i1 %exitcond.not75.i.i.us, label %.preheader.i.i179.us, label %.outer.i.i.us, !llvm.loop !130

._crit_edge.i.i.us:                               ; preds = %Sdb_CutSetCutIsContainedOrder.exit.thread.i.i.us, %Sdb_CutSetCutIsContainedOrder.exit.thread.i.us.i.us
  br i1 %i.axy, label %Sdb_CutSetLastCutContains.exit.i.us, label %.preheader.i.i179.us

.preheader.i.i179.us:                             ; preds = %Sdb_CutSetCutIsContainedOrder.exit.thread.thread.i.i.us, %._crit_edge.i.i.us
  %i.azk = add nuw i32 %.1330.us, 1
  %wide.trip.count62.i.i.us = zext i32 %i.azk to i64
  br label %.lr.ph55.i.i.us

.lr.ph55.i.i.us:                                  ; preds = %bb.cn, %.preheader.i.i179.us
  %indvars.iv59.i.i.us = phi i64 [ 0, %.preheader.i.i179.us ], [ %indvars.iv.next60.i.i.us, %bb.cn ] ; 3 uses
  %.04054.i.i.us = phi i32 [ 0, %.preheader.i.i179.us ], [ %.141.i.i.us, %bb.cn ] ; 3 uses
  %i.azl = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv59.i.i.us ; 2 uses
  %i.azm = load ptr, ptr %i.azl, align 8, !tbaa !141 ; 2 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 20
  %i.azo = load i32, ptr %i.azn, align 4
  %i.azp = icmp ugt i32 %i.azo, -268435457
  br i1 %i.azp, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph55.i.i.us
  %i.azq = sext i32 %.04054.i.i.us to i64         ; 2 uses
  %i.azr = icmp sgt i64 %indvars.iv59.i.i.us, %i.azq
  br i1 %i.azr, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.azs = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.azq ; 2 uses
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !141
  store ptr %i.azm, ptr %i.azs, align 8, !tbaa !141
  store ptr %i.azt, ptr %i.azl, align 8, !tbaa !141
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.azu = add nsw i32 %.04054.i.i.us, 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph55.i.i.us
  %.141.i.i.us = phi i32 [ %.04054.i.i.us, %.lr.ph55.i.i.us ], [ %i.azu, %bb.cm ] ; 2 uses
  %indvars.iv.next60.i.i.us = add nuw nsw i64 %indvars.iv59.i.i.us, 1 ; 2 uses
  %exitcond63.not.i.i.us = icmp eq i64 %indvars.iv.next60.i.i.us, %wide.trip.count62.i.i.us
  br i1 %exitcond63.not.i.i.us, label %._crit_edge56.loopexit.i.i.us, label %.lr.ph55.i.i.us, !llvm.loop !131

._crit_edge56.loopexit.i.i.us:                    ; preds = %bb.cn
  %i.azv = add nsw i32 %.141.i.i.us, -1
  br label %Sdb_CutSetLastCutContains.exit.i.us

Sdb_CutSetLastCutContains.exit.i.us:              ; preds = %._crit_edge56.loopexit.i.i.us, %._crit_edge.i.i.us
  %.0.i.i180.us = phi i32 [ %i.azv, %._crit_edge56.loopexit.i.i.us ], [ %.1330.us, %._crit_edge.i.i.us ] ; 6 uses
  %i.azw = icmp sgt i32 %.0.i.i180.us, 0
  br i1 %i.azw, label %.lr.ph.preheader.i.i181.us, label %Sdb_CutSetSortByCost.exit.i.us

.lr.ph.preheader.i.i181.us:                       ; preds = %Sdb_CutSetLastCutContains.exit.i.us
  %2 = zext nneg i32 %.0.i.i180.us to i64
  br label %.lr.ph.i8.i.us

.lr.ph.i8.i.us:                                   ; preds = %Sdb_CutCompare.exit.i.i.us, %.lr.ph.preheader.i.i181.us
  %indvars.iv.i9.i.us = phi i64 [ %2, %.lr.ph.preheader.i.i181.us ], [ %indvars.iv.next.i10.i.us, %Sdb_CutCompare.exit.i.i.us ] ; 3 uses
  %i.azx = getelementptr [8 x i8], ptr %i.jf, i64 %indvars.iv.i9.i.us ; 3 uses
  %i.azy = getelementptr i8, ptr %i.azx, i64 -8   ; 2 uses
  %i.azz = load ptr, ptr %i.azy, align 8, !tbaa !141 ; 2 uses
  %i.baa = load ptr, ptr %i.azx, align 8, !tbaa !141 ; 2 uses
  %i.bab = getelementptr i8, ptr %i.azz, i64 20
  %.val.i.i182.us = load i32, ptr %i.bab, align 4 ; 2 uses
  %i.bac = getelementptr i8, ptr %i.baa, i64 20
  %.val15.i.i.us = load i32, ptr %i.bac, align 4  ; 2 uses
  %i.bad = and i32 %.val.i.i182.us, 268435455     ; 2 uses
  %i.bae = and i32 %.val15.i.i.us, 268435455      ; 2 uses
  %i.baf = icmp samesign ult i32 %i.bad, %i.bae
  br i1 %i.baf, label %Sdb_CutSetSortByCost.exit.i.us, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i8.i.us
  %i.bag = icmp samesign ugt i32 %i.bad, %i.bae
  br i1 %i.bag, label %Sdb_CutCompare.exit.i.i.us, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.bah = lshr i32 %.val.i.i182.us, 28
  %i.bai = lshr i32 %.val15.i.i.us, 28
  %i.baj = icmp samesign ult i32 %i.bah, %i.bai
  br i1 %i.baj, label %Sdb_CutSetSortByCost.exit.i.us, label %Sdb_CutCompare.exit.i.i.us

Sdb_CutCompare.exit.i.i.us:                       ; preds = %bb.cp, %bb.co
  store ptr %i.baa, ptr %i.azy, align 8, !tbaa !141
  store ptr %i.azz, ptr %i.azx, align 8, !tbaa !141
  %indvars.iv.next.i10.i.us = add nsw i64 %indvars.iv.i9.i.us, -1
  %i.bak = icmp sgt i64 %indvars.iv.i9.i.us, 1
  br i1 %i.bak, label %.lr.ph.i8.i.us, label %Sdb_CutSetSortByCost.exit.i.us, !llvm.loop !132

Sdb_CutSetSortByCost.exit.i.us:                   ; preds = %.lr.ph.i8.i.us, %bb.cp, %Sdb_CutCompare.exit.i.i.us, %Sdb_CutSetLastCutContains.exit.i.us, %bb.cd
  %.0.i10.i.us = phi i32 [ %.1330.us, %bb.cd ], [ %.0.i.i180.us, %Sdb_CutSetLastCutContains.exit.i.us ], [ %.0.i.i180.us, %Sdb_CutCompare.exit.i.i.us ], [ %.0.i.i180.us, %bb.cp ], [ %.0.i.i180.us, %.lr.ph.i8.i.us ]
  %i.bal = add nsw i32 %.0.i10.i.us, 1
  %i.bam = call noundef i32 @llvm.smin.i32(i32 %i.bal, i32 %i.ns)
  br label %Sdb_CutSetAddCut.exit.us

Sdb_CutSetAddCut.exit.us:                         ; preds = %bb.u, %.lr.ph134.i.us, %bb.y, %bb.af, %bb.ab, %bb.ae, %Sdb_CutSetSortByCost.exit.i.us, %Sdb_CutTreeLeaves.exit.us, %.loopexit120.i.us, %.loopexit121.i.us, %.preheader118.i.us, %bb.l
  %.2.us = phi i32 [ %.1330.us, %bb.l ], [ %.1330.us, %.preheader118.i.us ], [ 1, %Sdb_CutTreeLeaves.exit.us ], [ %i.bam, %Sdb_CutSetSortByCost.exit.i.us ], [ %.1330.us, %.loopexit120.i.us ], [ %.1330.us, %bb.ae ], [ %.1330.us, %.loopexit121.i.us ], [ %.1330.us, %.lr.ph134.i.us ], [ %.1330.us, %bb.ab ], [ %.1330.us, %bb.y ], [ %.1330.us, %bb.af ], [ %.1330.us, %bb.u ] ; 3 uses
  %i.ban = add nuw nsw i32 %.084329.us, 1         ; 2 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %.0334.us, i64 48
  %exitcond.not = icmp eq i32 %i.ban, %.lcssa43.i100
  %indvar.next687 = add i64 %indvar686, 1
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.k, !llvm.loop !133

Abc_TtSwapVars.exit.loopexit.us.unr-lcssa:        ; preds = %.lr.ph.i203.us.new
  br i1 %lcmp.mod851.not, label %Abc_TtSwapVars.exit.loopexit.us, label %.epil.preheader846

.epil.preheader846:                               ; preds = %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa, %.lr.ph.i203.us
  %.epil.init850 = phi i64 [ %.promoted327.us, %.lr.ph.i203.us ], [ %i.ans, %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod853)
  %i.bap = and i64 %.epil.init850, %i.amy
  %i.baq = and i64 %.epil.init850, %i.ana
  %i.bar = shl i64 %i.baq, %i.anb
  %i.bas = or i64 %i.bar, %i.bap
  %i.bat = and i64 %.epil.init850, %i.and
  %i.bau = lshr i64 %i.bat, %i.anb
  %i.bav = or i64 %i.bas, %i.bau
  br label %Abc_TtSwapVars.exit.loopexit.us

Abc_TtSwapVars.exit.loopexit.us:                  ; preds = %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa, %.epil.preheader846
  %.lcssa755 = phi i64 [ %i.ans, %Abc_TtSwapVars.exit.loopexit.us.unr-lcssa ], [ %i.bav, %.epil.preheader846 ]
  store i64 %.lcssa755, ptr %i.c, align 8, !tbaa !62
  br label %Abc_TtSwapVars.exit.us

Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa:     ; preds = %.lr.ph.i232.us.new
  br i1 %lcmp.mod835.not, label %Abc_TtSwapVars.exit240.loopexit.us, label %.epil.preheader830

.epil.preheader830:                               ; preds = %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa, %.lr.ph.i232.us
  %.epil.init834 = phi i64 [ %.promoted325.us, %.lr.ph.i232.us ], [ %i.ahp, %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod837)
  %i.baw = and i64 %.epil.init834, %i.agv
  %i.bax = and i64 %.epil.init834, %i.agx
  %i.bay = shl i64 %i.bax, %i.agy
  %i.baz = or i64 %i.bay, %i.baw
  %i.bba = and i64 %.epil.init834, %i.aha
  %i.bbb = lshr i64 %i.bba, %i.agy
  %i.bbc = or i64 %i.baz, %i.bbb
  br label %Abc_TtSwapVars.exit240.loopexit.us

Abc_TtSwapVars.exit240.loopexit.us:               ; preds = %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa, %.epil.preheader830
  %.lcssa754 = phi i64 [ %i.ahp, %Abc_TtSwapVars.exit240.loopexit.us.unr-lcssa ], [ %i.bbc, %.epil.preheader830 ]
  store i64 %.lcssa754, ptr %i.e, align 8, !tbaa !62
  br label %Abc_TtSwapVars.exit240.us

Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa:     ; preds = %.lr.ph.i267.us.new
  br i1 %lcmp.mod819.not, label %Abc_TtSwapVars.exit275.loopexit.us, label %.epil.preheader816

.epil.preheader816:                               ; preds = %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa, %.lr.ph.i267.us
  %.epil.init = phi i64 [ %.promoted.us, %.lr.ph.i267.us ], [ %i.acg, %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod821)
  %i.bbd = and i64 %.epil.init, %i.abm
  %i.bbe = and i64 %.epil.init, %i.abo
  %i.bbf = shl i64 %i.bbe, %i.abp
  %i.bbg = or i64 %i.bbf, %i.bbd
  %i.bbh = and i64 %.epil.init, %i.abr
  %i.bbi = lshr i64 %i.bbh, %i.abp
  %i.bbj = or i64 %i.bbg, %i.bbi
  br label %Abc_TtSwapVars.exit275.loopexit.us

Abc_TtSwapVars.exit275.loopexit.us:               ; preds = %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa, %.epil.preheader816
  %.lcssa753 = phi i64 [ %i.acg, %Abc_TtSwapVars.exit275.loopexit.us.unr-lcssa ], [ %i.bbj, %.epil.preheader816 ]
  store i64 %.lcssa753, ptr %i.d, align 8, !tbaa !62
  br label %Abc_TtSwapVars.exit275.us

._crit_edge.us:                                   ; preds = %Sdb_CutSetAddCut.exit.us
  %i.bbk = add nuw nsw i32 %.085337.us, 1         ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %.082339.us, i64 48
  %exitcond392.not = icmp eq i32 %i.bbk, %.lcssa43.i
  %indvar.next707 = add i64 %indvar706, 1
  br i1 %exitcond392.not, label %._crit_edge341, label %.lr.ph.us, !llvm.loop !134

._crit_edge341:                                   ; preds = %._crit_edge.us, %.lr.ph340, %Sdb_StoPrepareSet.exit133.._crit_edge341_crit_edge
  %.pre-phi407 = phi i32 [ %.pre406, %Sdb_StoPrepareSet.exit133.._crit_edge341_crit_edge ], [ %i.ns, %.lr.ph340 ], [ %i.ns, %._crit_edge.us ]
  %.083.lcssa = phi i32 [ 0, %Sdb_StoPrepareSet.exit133.._crit_edge341_crit_edge ], [ 0, %.lr.ph340 ], [ %.2.us, %._crit_edge.us ] ; 7 uses
  %i.bbm = sitofp i32 %.083.lcssa to double
  %i.bbn = getelementptr inbounds nuw i8, ptr %0, i64 7848 ; 2 uses
  %i.bbo = load double, ptr %i.bbn, align 8, !tbaa !48
  %i.bbp = fadd double %i.bbo, %i.bbm
  store double %i.bbp, ptr %i.bbn, align 8, !tbaa !48
  %i.bbq = icmp eq i32 %.083.lcssa, %.pre-phi407
  %i.bbr = zext i1 %i.bbq to i32
  %i.bbs = getelementptr inbounds nuw i8, ptr %0, i64 7820 ; 2 uses
  %i.bbt = load i32, ptr %i.bbs, align 4, !tbaa !64
  %i.bbu = add nsw i32 %i.bbt, %i.bbr
  store i32 %i.bbu, ptr %i.bbs, align 4, !tbaa !64
  %i.bbv = getelementptr inbounds nuw i8, ptr %0, i64 7808
  store i32 %.083.lcssa, ptr %i.bbv, align 8, !tbaa !148
  %i.bbw = getelementptr inbounds nuw i8, ptr %0, i64 7812
  store i32 %1, ptr %i.bbw, align 4, !tbaa !149
  %.val95 = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.bbx = getelementptr i8, ptr %.val95, i64 8
  %.val95.val = load ptr, ptr %i.bbx, align 8, !tbaa !41
  %i.bby = getelementptr inbounds [16 x i8], ptr %.val95.val, i64 %i.i ; 12 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 4 ; 12 uses
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !65 ; 7 uses
  %i.bcb = load i32, ptr %i.bby, align 8, !tbaa !66
  %i.bcc = icmp eq i32 %i.bca, %i.bcb
  br i1 %i.bcc, label %bb.cq, label %Vec_IntPush.exit.i

bb.cq:                                            ; preds = %._crit_edge341
  %i.bcd = icmp slt i32 %i.bca, 16
  br i1 %i.bcd, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bby, i64 8 ; 2 uses
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bcf, null
  br i1 %.not9.i.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.bcg = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bcf, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.bch = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.ct, %bb.cs
  %i.bci = phi ptr [ %i.bcg, %bb.cs ], [ %i.bch, %bb.ct ]
  store ptr %i.bci, ptr %i.bce, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.cu:                                            ; preds = %bb.cq
  %i.bcj = icmp samesign ult i32 %i.bca, 1073741823
  %i.bck = shl nuw nsw i32 %i.bca, 1
  %spec.select.i.i197 = select i1 %i.bcj, i32 %i.bck, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bca, %spec.select.i.i197
  br i1 %.not.i9.i.i, label %bb.cv, label %Vec_IntPush.exit.i

bb.cv:                                            ; preds = %bb.cu
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bby, i64 8 ; 2 uses
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !42 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.bcm, null
  %i.bcn = zext nneg i32 %spec.select.i.i197 to i64
  %i.bco = shl nuw nsw i64 %i.bcn, 2              ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bcp = call ptr @realloc(ptr noundef nonnull %i.bcm, i64 noundef %i.bco) #23
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.bcq = call noalias ptr @malloc(i64 noundef %i.bco) #24
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.bcr = phi ptr [ %i.bcp, %bb.cw ], [ %i.bcq, %bb.cx ]
  store ptr %i.bcr, ptr %i.bcl, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.cy, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i197, %bb.cy ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.bby, align 8, !tbaa !66
  %.pre.i198 = load i32, ptr %i.bbz, align 4, !tbaa !65
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.cu, %._crit_edge341
  %i.bcs = phi i32 [ %i.bca, %._crit_edge341 ], [ %i.bca, %bb.cu ], [ %.pre.i198, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bby, i64 8 ; 4 uses
  %i.bcu = load ptr, ptr %i.bct, align 8, !tbaa !42 ; 2 uses
  %i.bcv = add nsw i32 %i.bcs, 1
  store i32 %i.bcv, ptr %i.bbz, align 4, !tbaa !65
  %i.bcw = sext i32 %i.bcs to i64
  %i.bcx = getelementptr inbounds [4 x i8], ptr %i.bcu, i64 %i.bcw
  store i32 %.083.lcssa, ptr %i.bcx, align 4, !tbaa !43
  %i.bcy = icmp sgt i32 %.083.lcssa, 0
  br i1 %i.bcy, label %.lr.ph5.preheader.i, label %Sdb_StoStoreResult.exit.thread

.lr.ph5.preheader.i:                              ; preds = %Vec_IntPush.exit.i
  %wide.trip.count.i189 = zext nneg i32 %.083.lcssa to i64
  br label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %Vec_IntPush.exit44.i, %.lr.ph5.preheader.i
  %i.bcz = phi ptr [ %i.bcu, %.lr.ph5.preheader.i ], [ %i.bfl, %Vec_IntPush.exit44.i ] ; 3 uses
  %indvars.iv9.i = phi i64 [ 0, %.lr.ph5.preheader.i ], [ %indvars.iv.next10.i, %Vec_IntPush.exit44.i ] ; 2 uses
  %i.bda = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv9.i ; 3 uses
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !141 ; 3 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 20
  %i.bdd = load i32, ptr %i.bdc, align 4
  %i.bde = lshr i32 %i.bdd, 28
  %i.bdf = load i32, ptr %i.bbz, align 4, !tbaa !65 ; 7 uses
  %i.bdg = load i32, ptr %i.bby, align 8, !tbaa !66
  %i.bdh = icmp eq i32 %i.bdf, %i.bdg
  br i1 %i.bdh, label %bb.cz, label %Vec_IntPush.exit28.i

bb.cz:                                            ; preds = %.lr.ph5.i
  %i.bdi = icmp slt i32 %i.bdf, 16
  br i1 %i.bdi, label %Vec_IntGrow.exit11.sink.split.i24.i, label %bb.da
end_hunk_0
