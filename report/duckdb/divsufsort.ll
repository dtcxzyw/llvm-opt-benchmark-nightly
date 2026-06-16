inline.NumInlined: 85
inline.NumDeleted: 33
begin_hunk_0_@_ZN11duckdb_zstdL14sort_typeBstarEPKhPiS2_S2_ii:.preheader339.preheader
  %i.atv = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3
  %i.atw = sext i32 %.0.i565.i.i to i64
  %i.atx = getelementptr inbounds [4 x i8], ptr %.0455.ph.i.i, i64 %i.atw ; 2 uses
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !3
  store i32 %i.aty, ptr %.0455.ph.i.i, align 4, !tbaa !3
  store i32 %i.atv, ptr %i.atx, align 4, !tbaa !3
  %i.atz = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3 ; 2 uses
  %i.aua = sext i32 %i.atz to i64
  %i.aub = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.aua
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !3
  br i1 %i.asf, label %.lr.ph.i50.i.i.i, label %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit55.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %bb.gm, %bb.gn
  %i.aud = phi i32 [ %i.auz, %bb.gn ], [ 1, %bb.gm ] ; 2 uses
  %i.aue = phi i32 [ %i.auy, %bb.gn ], [ 0, %bb.gm ]
  %.030.i51.i.i.i = phi i32 [ %spec.select.i54.i.i.i, %bb.gn ], [ 0, %bb.gm ] ; 2 uses
  %i.auf = add nuw nsw i32 %i.aue, 2              ; 2 uses
  %i.aug = zext nneg i32 %i.aud to i64
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.aug
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !3
  %i.auj = sext i32 %i.aui to i64
  %i.auk = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.auj
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !3 ; 2 uses
  %i.aum = zext nneg i32 %i.auf to i64
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.aum
  %i.auo = load i32, ptr %i.aun, align 4, !tbaa !3
  %i.aup = sext i32 %i.auo to i64
  %i.auq = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.aup
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !3 ; 2 uses
  %spec.select29.i52.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.aul, i32 %i.aur)
  %.not.i53.i.i.i = icmp sgt i32 %spec.select29.i52.i.i.i, %i.auc
  br i1 %.not.i53.i.i.i, label %bb.gn, label %.lr.ph.i50.i._ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit55.loopexit.i_crit_edge.i.i

.lr.ph.i50.i._ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit55.loopexit.i_crit_edge.i.i: ; preds = %.lr.ph.i50.i.i.i
  %.pre713.i.i = zext nneg i32 %.030.i51.i.i.i to i64
  br label %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit55.i.i.i

bb.gn:                                            ; preds = %.lr.ph.i50.i.i.i
  %i.aus = icmp slt i32 %i.aul, %i.aur
  %spec.select.i54.i.i.i = select i1 %i.aus, i32 %i.auf, i32 %i.aud ; 3 uses
  %i.aut = zext nneg i32 %spec.select.i54.i.i.i to i64 ; 2 uses
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.aut
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !3
  %i.auw = zext nneg i32 %.030.i51.i.i.i to i64
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.auw
  store i32 %i.auv, ptr %i.aux, align 4, !tbaa !3
  %i.auy = shl nuw nsw i32 %spec.select.i54.i.i.i, 1 ; 2 uses
  %i.auz = or disjoint i32 %i.auy, 1              ; 2 uses
  %i.ava = icmp slt i32 %i.auz, %.0.i565.i.i
  br i1 %i.ava, label %.lr.ph.i50.i.i.i, label %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit55.i.i.i, !llvm.loop !85

_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit55.i.i.i: ; preds = %bb.gn, %.lr.ph.i50.i._ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit55.loopexit.i_crit_edge.i.i, %bb.gm
  %.0.lcssa.i49.i.i.i = phi i64 [ 0, %bb.gm ], [ %.pre713.i.i, %.lr.ph.i50.i._ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit55.loopexit.i_crit_edge.i.i ], [ %i.aut, %bb.gn ]
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %.0.lcssa.i49.i.i.i
  store i32 %i.atz, ptr %i.avb, align 4, !tbaa !3
  br label %bb.go

bb.go:                                            ; preds = %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit55.i.i.i, %._crit_edge.i566.i.i
  br i1 %i.asf, label %.lr.ph66.preheader.i.i.i, label %_ZN11duckdb_zstdL11tr_heapsortEPKiPii.exit.i.i

.lr.ph66.preheader.i.i.i:                         ; preds = %bb.go
  %i.avc = zext nneg i32 %.0.i565.i.i to i64
  %indvars.iv.next70.i621.i.i = add nsw i64 %i.avc, -1 ; 2 uses
  %i.avd = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %indvars.iv.next70.i621.i.i ; 3 uses
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !3 ; 2 uses
  store i32 %i.avf, ptr %.0455.ph.i.i, align 4, !tbaa !3
  %.not.i567622.i.i = icmp eq i32 %.0.i565.i.i, 2
  br i1 %.not.i567622.i.i, label %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.thread.i.i.i, label %.lr.ph.i57.i.preheader.i.i

.lr.ph.i57.i.preheader.i.i:                       ; preds = %.lr.ph66.preheader.i.i.i, %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i.i.i
  %i.avg = phi i32 [ %i.awm, %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i.i.i ], [ %i.avf, %.lr.ph66.preheader.i.i.i ] ; 2 uses
  %i.avh = phi ptr [ %i.awl, %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i.i.i ], [ %i.ave, %.lr.ph66.preheader.i.i.i ]
  %i.avi = phi i32 [ %i.awk, %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i.i.i ], [ %i.avd, %.lr.ph66.preheader.i.i.i ]
  %indvars.iv.next70.i623.i.i = phi i64 [ %indvars.iv.next70.i.i.i, %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i.i.i ], [ %indvars.iv.next70.i621.i.i, %.lr.ph66.preheader.i.i.i ] ; 3 uses
  %.pn.i.i303 = sext i32 %i.avg to i64
  %.in.i.i = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %.pn.i.i303
  %i.avj = load i32, ptr %.in.i.i, align 4, !tbaa !3
  br label %.lr.ph.i57.i.i.i

_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.thread.i.i.i: ; preds = %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i.i.i, %.lr.ph66.preheader.i.i.i
  %.lcssa600.i.i = phi i32 [ %i.avd, %.lr.ph66.preheader.i.i.i ], [ %i.awk, %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i.i.i ]
  %.lcssa.i.i = phi ptr [ %i.ave, %.lr.ph66.preheader.i.i.i ], [ %i.awl, %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i.i.i ]
  store i32 %.lcssa600.i.i, ptr %.lcssa.i.i, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL11tr_heapsortEPKiPii.exit.i.i

.lr.ph.i57.i.i.i:                                 ; preds = %bb.gp, %.lr.ph.i57.i.preheader.i.i
  %i.avk = phi i32 [ %i.awg, %bb.gp ], [ 1, %.lr.ph.i57.i.preheader.i.i ] ; 2 uses
  %i.avl = phi i32 [ %i.awf, %bb.gp ], [ 0, %.lr.ph.i57.i.preheader.i.i ]
  %.030.i58.i.i.i = phi i32 [ %spec.select.i61.i.i.i, %bb.gp ], [ 0, %.lr.ph.i57.i.preheader.i.i ] ; 2 uses
  %i.avm = add nuw nsw i32 %i.avl, 2              ; 2 uses
  %i.avn = zext nneg i32 %i.avk to i64
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.avn
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !3
  %i.avq = sext i32 %i.avp to i64
  %i.avr = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.avq
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !3 ; 2 uses
  %i.avt = zext nneg i32 %i.avm to i64
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.avt
  %i.avv = load i32, ptr %i.avu, align 4, !tbaa !3
  %i.avw = sext i32 %i.avv to i64
  %i.avx = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.avw
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !3 ; 2 uses
  %spec.select29.i59.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.avs, i32 %i.avy)
  %.not.i60.i.i.i = icmp sgt i32 %spec.select29.i59.i.i.i, %i.avj
  br i1 %.not.i60.i.i.i, label %bb.gp, label %.lr.ph.i57.i._ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i_crit_edge.i.i

.lr.ph.i57.i._ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i_crit_edge.i.i: ; preds = %.lr.ph.i57.i.i.i
  %.pre715.i.i = zext nneg i32 %.030.i58.i.i.i to i64
  br label %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i.i.i

bb.gp:                                            ; preds = %.lr.ph.i57.i.i.i
  %i.avz = icmp slt i32 %i.avs, %i.avy
  %spec.select.i61.i.i.i = select i1 %i.avz, i32 %i.avm, i32 %i.avk ; 3 uses
  %i.awa = zext nneg i32 %spec.select.i61.i.i.i to i64 ; 2 uses
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.awa
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !3
  %i.awd = zext nneg i32 %.030.i58.i.i.i to i64
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.awd
  store i32 %i.awc, ptr %i.awe, align 4, !tbaa !3
  %i.awf = shl nuw nsw i32 %spec.select.i61.i.i.i, 1 ; 2 uses
  %i.awg = or disjoint i32 %i.awf, 1              ; 2 uses
  %i.awh = zext nneg i32 %i.awg to i64
  %i.awi = icmp sgt i64 %indvars.iv.next70.i623.i.i, %i.awh
  br i1 %i.awi, label %.lr.ph.i57.i.i.i, label %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i.i.i, !llvm.loop !85

_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i.i.i: ; preds = %bb.gp, %.lr.ph.i57.i._ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i_crit_edge.i.i
  %.pre-phi716.i.i = phi i64 [ %.pre715.i.i, %.lr.ph.i57.i._ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.i_crit_edge.i.i ], [ %i.awa, %bb.gp ]
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %.pre-phi716.i.i
  store i32 %i.avg, ptr %i.awj, align 4, !tbaa !3
  store i32 %i.avi, ptr %i.avh, align 4, !tbaa !3
  %indvars.iv.next70.i.i.i = add nsw i64 %indvars.iv.next70.i623.i.i, -1 ; 2 uses
  %i.awk = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3 ; 2 uses
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %indvars.iv.next70.i.i.i ; 3 uses
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !3 ; 2 uses
  store i32 %i.awm, ptr %.0455.ph.i.i, align 4, !tbaa !3
  %.not.i567.i.i = icmp eq i64 %indvars.iv.next70.i623.i.i, 2
  br i1 %.not.i567.i.i, label %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.thread.i.i.i, label %.lr.ph.i57.i.preheader.i.i

_ZN11duckdb_zstdL11tr_heapsortEPKiPii.exit.i.i:   ; preds = %_ZN11duckdb_zstdL10tr_fixdownEPKiPiii.exit62.thread.i.i.i, %bb.go
  br i1 %i.ts, label %.lr.ph636.i.i, label %._crit_edge.thread.i.i299, !llvm.loop !45

.lr.ph636.i.i:                                    ; preds = %_ZN11duckdb_zstdL11tr_heapsortEPKiPii.exit.i.i
  br label %bb.gq, !llvm.loop !45

bb.gq:                                            ; preds = %.critedge2.i.i, %.lr.ph636.i.i
  %storemerge635.i.i = phi ptr [ %i.tr, %.lr.ph636.i.i ], [ %storemerge515.lcssa625.i.i, %.critedge2.i.i ] ; 2 uses
  %i.awn = load i32, ptr %storemerge635.i.i, align 4, !tbaa !3
  %i.awo = sext i32 %i.awn to i64
  %i.awp = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.awo
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !3
  %storemerge515626.i.i = getelementptr inbounds i8, ptr %storemerge635.i.i, i64 -4 ; 3 uses
  %.not516627.i.i = icmp ugt ptr %.0455.ph.i.i, %storemerge515626.i.i
  br i1 %.not516627.i.i, label %.critedge2.i.i, label %.lr.ph.i.i302

.lr.ph.i.i302:                                    ; preds = %bb.gq, %bb.gr
  %storemerge515628.i.i = phi ptr [ %storemerge515.i.i, %bb.gr ], [ %storemerge515626.i.i, %bb.gq ] ; 4 uses
  %i.awr = load i32, ptr %storemerge515628.i.i, align 4, !tbaa !3 ; 2 uses
  %i.aws = sext i32 %i.awr to i64
  %i.awt = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.aws
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !3
  %i.awv = icmp eq i32 %i.awu, %i.awq
  br i1 %i.awv, label %bb.gr, label %.critedge2.i.i

bb.gr:                                            ; preds = %.lr.ph.i.i302
  %i.aww = xor i32 %i.awr, -1
  store i32 %i.aww, ptr %storemerge515628.i.i, align 4, !tbaa !3
  %storemerge515.i.i = getelementptr inbounds i8, ptr %storemerge515628.i.i, i64 -4 ; 3 uses
  %.not516.i.i = icmp ugt ptr %.0455.ph.i.i, %storemerge515.i.i
  br i1 %.not516.i.i, label %.critedge2.i.i, label %.lr.ph.i.i302, !llvm.loop !87

.critedge2.i.i:                                   ; preds = %bb.gr, %.lr.ph.i.i302, %bb.gq
  %storemerge515.lcssa625.i.i = phi ptr [ %storemerge515626.i.i, %bb.gq ], [ %storemerge515628.i.i, %.lr.ph.i.i302 ], [ %storemerge515.i.i, %bb.gr ] ; 2 uses
  %i.awx = icmp ult ptr %.0455.ph.i.i, %storemerge515.lcssa625.i.i
  br i1 %i.awx, label %bb.gq, label %..loopexit597_crit_edge.i.i, !llvm.loop !88

bb.gs:                                            ; preds = %.lr.ph646.split.i.i
  %i.awy = add nsw i32 %.0449.ph.i.i, -1          ; 20 uses
  %i.awz = lshr exact i64 %i.tf, 2
  %i.axa = trunc i64 %i.awz to i32                ; 4 uses
  %i.axb = sdiv i32 %i.axa, 2
  %i.axc = sext i32 %i.axb to i64
  %i.axd = getelementptr inbounds [4 x i8], ptr %.0455.ph.i.i, i64 %i.axc ; 11 uses
  %i.axe = icmp slt i32 %i.axa, 513
  br i1 %i.axe, label %bb.gt, label %bb.gx

bb.gt:                                            ; preds = %bb.gs
  %i.axf = icmp slt i32 %i.axa, 33
  br i1 %i.axf, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  %i.axg = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3 ; 5 uses
  %i.axh = sext i32 %i.axg to i64
  %i.axi = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.axh
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !3
  %i.axk = load i32, ptr %i.axd, align 4, !tbaa !3 ; 3 uses
  %i.axl = sext i32 %i.axk to i64
  %i.axm = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.axl
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !3
  %i.axo = icmp sgt i32 %i.axj, %i.axn            ; 4 uses
  %spec.select.i.i570.i.i = select i1 %i.axo, ptr %.0455.ph.i.i, ptr %i.axd
  %6 = select i1 %i.axo, i32 %i.axg, i32 %i.axk
  %i.axp = sext i32 %6 to i64
  %i.axq = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.axp
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !3
  %i.axs = load i32, ptr %i.tr, align 4, !tbaa !3
  %i.axt = sext i32 %i.axs to i64
  %i.axu = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.axt
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !3 ; 2 uses
  %i.axw = icmp sgt i32 %i.axr, %i.axv
  br i1 %i.axw, label %bb.gv, label %_ZN11duckdb_zstdL8tr_pivotEPKiPiS2_.exit.i.i

bb.gv:                                            ; preds = %bb.gu
  %spec.select22.i.i.i.i = select i1 %i.axo, ptr %i.axd, ptr %.0455.ph.i.i
  %7 = select i1 %i.axo, i32 %i.axk, i32 %i.axg
  %i.axx = sext i32 %7 to i64
  %i.axy = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.axx
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !3
  %i.aya = icmp sgt i32 %i.axz, %i.axv
  %spec.select22..i.i.i.i = select i1 %i.aya, ptr %spec.select22.i.i.i.i, ptr %i.tr
  br label %_ZN11duckdb_zstdL8tr_pivotEPKiPiS2_.exit.i.i

bb.gw:                                            ; preds = %bb.gt
  %i.ayb = lshr i64 %i.tf, 4
  %i.ayc = and i64 %i.ayb, 1073741823             ; 2 uses
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.ayc ; 3 uses
  %i.aye = sub nsw i64 0, %i.ayc
  %i.ayf = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.aye ; 3 uses
  %i.ayg = load i32, ptr %i.ayd, align 4, !tbaa !3 ; 2 uses
  %i.ayh = sext i32 %i.ayg to i64
  %i.ayi = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ayh
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !3
  %i.ayk = load i32, ptr %i.axd, align 4, !tbaa !3 ; 2 uses
  %i.ayl = sext i32 %i.ayk to i64
  %i.aym = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ayl
  %i.ayn = load i32, ptr %i.aym, align 4, !tbaa !3
  %i.ayo = icmp sgt i32 %i.ayj, %i.ayn            ; 3 uses
  %spec.select.i43.i.i.i = select i1 %i.ayo, ptr %i.axd, ptr %i.ayd
  %spec.select56.i.i.i.i = select i1 %i.ayo, ptr %i.ayd, ptr %i.axd ; 2 uses
  %i.ayp = load i32, ptr %i.ayf, align 4, !tbaa !3 ; 2 uses
  %i.ayq = sext i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ayq
  %i.ays = load i32, ptr %i.ayr, align 4, !tbaa !3
  %i.ayt = load i32, ptr %i.tr, align 4, !tbaa !3 ; 2 uses
  %i.ayu = sext i32 %i.ayt to i64
  %i.ayv = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ayu
  %i.ayw = load i32, ptr %i.ayv, align 4, !tbaa !3
  %i.ayx = icmp sgt i32 %i.ays, %i.ayw            ; 3 uses
  %.048.i.i.i.i = select i1 %i.ayx, ptr %i.tr, ptr %i.ayf
  %.048.i.i.i.i.a = select i1 %i.ayx, ptr %i.ayf, ptr %i.tr ; 2 uses
  %8 = select i1 %i.ayo, i32 %i.ayk, i32 %i.ayg
  %i.ayy = sext i32 %8 to i64
  %i.ayz = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ayy
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !3
  %9 = select i1 %i.ayx, i32 %i.ayt, i32 %i.ayp
  %i.azb = sext i32 %9 to i64
  %i.azc = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azb
  %i.azd = load i32, ptr %i.azc, align 4, !tbaa !3
  %i.aze = icmp sgt i32 %i.aza, %i.azd            ; 3 uses
  %.151.i.i.i.i = select i1 %i.aze, ptr %.048.i.i.i.i.a, ptr %spec.select56.i.i.i.i ; 3 uses
  %.149.i.i.i.i = select i1 %i.aze, ptr %spec.select.i43.i.i.i, ptr %.048.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.aze, ptr %spec.select56.i.i.i.i, ptr %.048.i.i.i.i.a
  %i.azf = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3 ; 3 uses
  %i.azg = sext i32 %i.azf to i64
  %i.azh = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azg
  %i.azi = load i32, ptr %i.azh, align 4, !tbaa !3
  %i.azj = load i32, ptr %.151.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.azk = sext i32 %i.azj to i64
  %i.azl = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azk
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !3
  %i.azn = icmp sgt i32 %i.azi, %i.azm            ; 3 uses
  %.054.i.i.i.i = select i1 %i.azn, ptr %.151.i.i.i.i, ptr %.0455.ph.i.i
  %.054.i.i.i.i.a = select i1 %i.azn, ptr %.0455.ph.i.i, ptr %.151.i.i.i.i
  %10 = select i1 %i.azn, i32 %i.azj, i32 %i.azf
  %i.azo = sext i32 %10 to i64
  %i.azp = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azo
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !3
  %i.azr = load i32, ptr %.149.i.i.i.i, align 4, !tbaa !3
  %i.azs = sext i32 %i.azr to i64
  %i.azt = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azs
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !3
  %i.azv = icmp sgt i32 %i.azq, %i.azu            ; 2 uses
  %.3.i.i.i.i = select i1 %i.azv, ptr %.1.i.i.i.i, ptr %.054.i.i.i.i.a ; 2 uses
  %.2.i.i.i.i = select i1 %i.azv, ptr %.054.i.i.i.i, ptr %.149.i.i.i.i ; 2 uses
  %i.azw = load i32, ptr %.3.i.i.i.i, align 4, !tbaa !3
  %i.azx = sext i32 %i.azw to i64
  %i.azy = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azx
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !3
  %i.baa = load i32, ptr %.2.i.i.i.i, align 4, !tbaa !3
  %i.bab = sext i32 %i.baa to i64
  %i.bac = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bab
  %i.bad = load i32, ptr %i.bac, align 4, !tbaa !3
  %i.bae = icmp sgt i32 %i.azz, %i.bad
  %.055.i.i.i.i = select i1 %i.bae, ptr %.2.i.i.i.i, ptr %.3.i.i.i.i
  br label %_ZN11duckdb_zstdL8tr_pivotEPKiPiS2_.exit.i.i

bb.gx:                                            ; preds = %bb.gs
  %i.baf = lshr i32 %i.axa, 3                     ; 2 uses
  %i.bag = zext nneg i32 %i.baf to i64            ; 3 uses
  %i.bah = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.bag ; 3 uses
  %i.bai = shl nuw nsw i32 %i.baf, 1
  %i.baj = zext nneg i32 %i.bai to i64            ; 2 uses
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.baj ; 2 uses
  %i.bal = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3 ; 5 uses
  %i.bam = sext i32 %i.bal to i64
  %i.ban = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bam
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !3
  %i.bap = load i32, ptr %i.bah, align 4, !tbaa !3 ; 3 uses
  %i.baq = sext i32 %i.bap to i64
  %i.bar = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.baq
  %i.bas = load i32, ptr %i.bar, align 4, !tbaa !3
  %i.bat = icmp sgt i32 %i.bao, %i.bas            ; 4 uses
  %spec.select.i45.i.i.i = select i1 %i.bat, ptr %.0455.ph.i.i, ptr %i.bah
  %11 = select i1 %i.bat, i32 %i.bal, i32 %i.bap
  %i.bau = sext i32 %11 to i64
  %i.bav = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bau
  %i.baw = load i32, ptr %i.bav, align 4, !tbaa !3
  %i.bax = load i32, ptr %i.bak, align 4, !tbaa !3
  %i.bay = sext i32 %i.bax to i64
  %i.baz = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bay
  %i.bba = load i32, ptr %i.baz, align 4, !tbaa !3 ; 2 uses
  %i.bbb = icmp sgt i32 %i.baw, %i.bba
  br i1 %i.bbb, label %bb.gy, label %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit49.i.i.i

bb.gy:                                            ; preds = %bb.gx
  %spec.select22.i47.i.i.i = select i1 %i.bat, ptr %i.bah, ptr %.0455.ph.i.i
  %12 = select i1 %i.bat, i32 %i.bap, i32 %i.bal
  %i.bbc = sext i32 %12 to i64
  %i.bbd = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bbc
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !3
  %i.bbf = icmp sgt i32 %i.bbe, %i.bba
  %spec.select22..i48.i.i.i = select i1 %i.bbf, ptr %spec.select22.i47.i.i.i, ptr %i.bak
  br label %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit49.i.i.i

_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit49.i.i.i: ; preds = %bb.gy, %bb.gx
  %.0.i46.i.i.i = phi ptr [ %spec.select22..i48.i.i.i, %bb.gy ], [ %spec.select.i45.i.i.i, %bb.gx ] ; 3 uses
  %i.bbg = sub nsw i64 0, %i.bag                  ; 2 uses
  %i.bbh = getelementptr inbounds [4 x i8], ptr %i.axd, i64 %i.bbg ; 3 uses
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.axd, i64 %i.bag ; 2 uses
  %i.bbj = load i32, ptr %i.bbh, align 4, !tbaa !3 ; 3 uses
  %i.bbk = sext i32 %i.bbj to i64
  %i.bbl = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bbk
  %i.bbm = load i32, ptr %i.bbl, align 4, !tbaa !3
  %i.bbn = load i32, ptr %i.axd, align 4, !tbaa !3 ; 3 uses
  %i.bbo = sext i32 %i.bbn to i64
  %i.bbp = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bbo
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !3
  %i.bbr = icmp sgt i32 %i.bbm, %i.bbq            ; 4 uses
  %spec.select.i50.i.i.i = select i1 %i.bbr, ptr %i.bbh, ptr %i.axd
  %13 = select i1 %i.bbr, i32 %i.bbj, i32 %i.bbn
  %i.bbs = sext i32 %13 to i64
  %i.bbt = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bbs
  %i.bbu = load i32, ptr %i.bbt, align 4, !tbaa !3
  %i.bbv = load i32, ptr %i.bbi, align 4, !tbaa !3
  %i.bbw = sext i32 %i.bbv to i64
  %i.bbx = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bbw
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !3 ; 2 uses
  %i.bbz = icmp sgt i32 %i.bbu, %i.bby
  br i1 %i.bbz, label %bb.gz, label %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit54.i.i.i

bb.gz:                                            ; preds = %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit49.i.i.i
  %spec.select22.i52.i.i.i = select i1 %i.bbr, ptr %i.axd, ptr %i.bbh
  %14 = select i1 %i.bbr, i32 %i.bbn, i32 %i.bbj
  %i.bca = sext i32 %14 to i64
  %i.bcb = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bca
  %i.bcc = load i32, ptr %i.bcb, align 4, !tbaa !3
  %i.bcd = icmp sgt i32 %i.bcc, %i.bby
  %spec.select22..i53.i.i.i = select i1 %i.bcd, ptr %spec.select22.i52.i.i.i, ptr %i.bbi
  br label %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit54.i.i.i

_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit54.i.i.i: ; preds = %bb.gz, %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit49.i.i.i
  %.0.i51.i.i.i = phi ptr [ %spec.select22..i53.i.i.i, %bb.gz ], [ %spec.select.i50.i.i.i, %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit49.i.i.i ] ; 3 uses
  %i.bce = sub nsw i64 0, %i.baj
  %i.bcf = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.bce ; 3 uses
  %i.bcg = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.bbg ; 3 uses
  %i.bch = load i32, ptr %i.bcf, align 4, !tbaa !3 ; 3 uses
  %i.bci = sext i32 %i.bch to i64
  %i.bcj = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bci
  %i.bck = load i32, ptr %i.bcj, align 4, !tbaa !3 ; 2 uses
  %i.bcl = load i32, ptr %i.bcg, align 4, !tbaa !3 ; 3 uses
  %i.bcm = sext i32 %i.bcl to i64
  %i.bcn = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bcm
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !3 ; 2 uses
  %i.bcp = icmp sgt i32 %i.bck, %i.bco            ; 4 uses
  %spec.select.i55.i.i.i = select i1 %i.bcp, ptr %i.bcf, ptr %i.bcg
  %15 = select i1 %i.bcp, i32 %i.bch, i32 %i.bcl
  %i.bcq = sext i32 %15 to i64
  %i.bcr = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bcq
  %i.bcs = load i32, ptr %i.bcr, align 4, !tbaa !3
  %i.bct = load i32, ptr %i.tr, align 4, !tbaa !3
  %i.bcu = sext i32 %i.bct to i64
  %i.bcv = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bcu
  %i.bcw = load i32, ptr %i.bcv, align 4, !tbaa !3 ; 2 uses
  %i.bcx = icmp sgt i32 %i.bcs, %i.bcw
  %16 = tail call i32 @llvm.smax.i32(i32 %i.bck, i32 %i.bco)
  br i1 %i.bcx, label %bb.ha, label %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit59.i.i.i

bb.ha:                                            ; preds = %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit54.i.i.i
  %spec.select22.i57.i.i.i = select i1 %i.bcp, ptr %i.bcg, ptr %i.bcf
  %17 = select i1 %i.bcp, i32 %i.bcl, i32 %i.bch
  %i.bcy = sext i32 %17 to i64
  %i.bcz = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bcy
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !3
  %i.bdb = icmp sgt i32 %i.bda, %i.bcw
  %spec.select22..i58.i.i.i = select i1 %i.bdb, ptr %spec.select22.i57.i.i.i, ptr %i.tr ; 2 uses
  %.pre.i.i.i = load i32, ptr %spec.select22..i58.i.i.i, align 4, !tbaa !3
  %.pre65.i.i.i = sext i32 %.pre.i.i.i to i64
  %.phi.trans.insert.i.i.i = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %.pre65.i.i.i
  %.pre66.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit59.i.i.i

_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit59.i.i.i: ; preds = %bb.ha, %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit54.i.i.i
  %i.bdc = phi i32 [ %.pre66.i.i.i, %bb.ha ], [ %16, %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit54.i.i.i ] ; 2 uses
  %.0.i56.i.i.i = phi ptr [ %spec.select22..i58.i.i.i, %bb.ha ], [ %spec.select.i55.i.i.i, %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit54.i.i.i ]
  %i.bdd = load i32, ptr %.0.i46.i.i.i, align 4, !tbaa !3 ; 3 uses
  %i.bde = sext i32 %i.bdd to i64
  %i.bdf = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bde
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !3
  %i.bdh = load i32, ptr %.0.i51.i.i.i, align 4, !tbaa !3 ; 3 uses
  %i.bdi = sext i32 %i.bdh to i64
  %i.bdj = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bdi
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !3
  %i.bdl = icmp sgt i32 %i.bdg, %i.bdk            ; 4 uses
  %spec.select.i60.i.i.i = select i1 %i.bdl, ptr %.0.i46.i.i.i, ptr %.0.i51.i.i.i
  %18 = select i1 %i.bdl, i32 %i.bdd, i32 %i.bdh
  %i.bdm = sext i32 %18 to i64
  %i.bdn = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bdm
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !3
  %i.bdp = icmp sgt i32 %i.bdo, %i.bdc
  br i1 %i.bdp, label %bb.hb, label %_ZN11duckdb_zstdL8tr_pivotEPKiPiS2_.exit.i.i

bb.hb:                                            ; preds = %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit59.i.i.i
  %spec.select22.i62.i.i.i = select i1 %i.bdl, ptr %.0.i51.i.i.i, ptr %.0.i46.i.i.i
  %19 = select i1 %i.bdl, i32 %i.bdh, i32 %i.bdd
  %i.bdq = sext i32 %19 to i64
  %i.bdr = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bdq
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !3
  %i.bdt = icmp sgt i32 %i.bds, %i.bdc
  %spec.select22..i63.i.i.i = select i1 %i.bdt, ptr %spec.select22.i62.i.i.i, ptr %.0.i56.i.i.i
  br label %_ZN11duckdb_zstdL8tr_pivotEPKiPiS2_.exit.i.i

_ZN11duckdb_zstdL8tr_pivotEPKiPiS2_.exit.i.i:     ; preds = %bb.hb, %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit59.i.i.i, %bb.gw, %bb.gv, %bb.gu
  %i.bdu = phi i32 [ %i.axg, %bb.gu ], [ %i.azf, %bb.gw ], [ %i.axg, %bb.gv ], [ %i.bal, %bb.hb ], [ %i.bal, %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit59.i.i.i ]
  %.0.i569.i.i = phi ptr [ %spec.select.i.i570.i.i, %bb.gu ], [ %.055.i.i.i.i, %bb.gw ], [ %spec.select22..i.i.i.i, %bb.gv ], [ %spec.select22..i63.i.i.i, %bb.hb ], [ %spec.select.i60.i.i.i, %_ZN11duckdb_zstdL10tr_median3EPKiPiS2_S2_.exit59.i.i.i ] ; 2 uses
  %i.bdv = load i32, ptr %.0.i569.i.i, align 4, !tbaa !3
  store i32 %i.bdv, ptr %.0455.ph.i.i, align 4, !tbaa !3
  store i32 %i.bdu, ptr %.0.i569.i.i, align 4, !tbaa !3
  %i.bdw = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3
  %i.bdx = sext i32 %i.bdw to i64
  %i.bdy = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bdx
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !3 ; 13 uses
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hd, %_ZN11duckdb_zstdL8tr_pivotEPKiPiS2_.exit.i.i
  %.0154.i.i = phi ptr [ %.0455.ph.i.i, %_ZN11duckdb_zstdL8tr_pivotEPKiPiS2_.exit.i.i ], [ %i.bea, %bb.hd ] ; 2 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %.0154.i.i, i64 4 ; 9 uses
  %i.beb = icmp ult ptr %i.bea, %.0463.ph.i.i
  br i1 %i.beb, label %bb.hd, label %.critedge2.i55.i

bb.hd:                                            ; preds = %bb.hc
  %i.bec = load i32, ptr %i.bea, align 4, !tbaa !3
  %i.bed = sext i32 %i.bec to i64
  %i.bee = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bed
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !3 ; 2 uses
  %i.beg = icmp eq i32 %i.bef, %i.bdz
  br i1 %i.beg, label %bb.hc, label %.critedge.i58.i, !llvm.loop !46

.critedge.i58.i:                                  ; preds = %bb.hd
  %i.beh = icmp slt i32 %i.bef, %i.bdz
  br i1 %i.beh, label %.preheader206.i.i, label %.critedge2.i55.i

.preheader206.i.i:                                ; preds = %.critedge.i58.i
  %i.bei = getelementptr inbounds nuw i8, ptr %.0154.i.i, i64 8 ; 3 uses
  %i.bej = icmp ult ptr %i.bei, %.0463.ph.i.i
  br i1 %i.bej, label %.lr.ph.i59.i, label %.critedge2.i55.i

.lr.ph.i59.i:                                     ; preds = %.preheader206.i.i, %bb.hg
  %i.bek = phi ptr [ %i.bes, %bb.hg ], [ %i.bei, %.preheader206.i.i ] ; 4 uses
  %.0159217.i.i = phi ptr [ %.1160.i.i, %bb.hg ], [ %i.bea, %.preheader206.i.i ] ; 5 uses
  %i.bel = load i32, ptr %i.bek, align 4, !tbaa !3 ; 2 uses
  %i.bem = sext i32 %i.bel to i64
  %i.ben = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bem
  %i.beo = load i32, ptr %i.ben, align 4, !tbaa !3 ; 2 uses
  %.not.i60.i = icmp sgt i32 %i.beo, %i.bdz
  br i1 %.not.i60.i, label %.critedge2.i55.i, label %bb.he

bb.he:                                            ; preds = %.lr.ph.i59.i
  %i.bep = icmp eq i32 %i.beo, %i.bdz
  br i1 %i.bep, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.beq = load i32, ptr %.0159217.i.i, align 4, !tbaa !3
  store i32 %i.beq, ptr %i.bek, align 4, !tbaa !3
  store i32 %i.bel, ptr %.0159217.i.i, align 4, !tbaa !3
  %i.ber = getelementptr inbounds nuw i8, ptr %.0159217.i.i, i64 4
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %.1160.i.i = phi ptr [ %i.ber, %bb.hf ], [ %.0159217.i.i, %bb.he ] ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bek, i64 4 ; 3 uses
  %i.bet = icmp ult ptr %i.bes, %.0463.ph.i.i
  br i1 %i.bet, label %.lr.ph.i59.i, label %.critedge2.i55.i, !llvm.loop !47

.critedge2.i55.i:                                 ; preds = %bb.hc, %bb.hg, %.lr.ph.i59.i, %.preheader206.i.i, %.critedge.i58.i
  %.2161.i.i = phi ptr [ %i.bea, %.critedge.i58.i ], [ %.0159217.i.i, %.lr.ph.i59.i ], [ %i.bea, %.preheader206.i.i ], [ %.1160.i.i, %bb.hg ], [ %i.bea, %bb.hc ] ; 2 uses
  %.2156.i.i = phi ptr [ %i.bea, %.critedge.i58.i ], [ %i.bek, %.lr.ph.i59.i ], [ %i.bei, %.preheader206.i.i ], [ %i.bes, %bb.hg ], [ %i.bea, %bb.hc ] ; 6 uses
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hi, %.critedge2.i55.i
  %.0149.i.i = phi ptr [ %.0463.ph.i.i, %.critedge2.i55.i ], [ %i.beu, %bb.hi ] ; 2 uses
  %i.beu = getelementptr inbounds i8, ptr %.0149.i.i, i64 -4 ; 9 uses
  %i.bev = icmp ult ptr %.2156.i.i, %i.beu
  br i1 %i.bev, label %bb.hi, label %.critedge6.i.i

bb.hi:                                            ; preds = %bb.hh
  %i.bew = load i32, ptr %i.beu, align 4, !tbaa !3
  %i.bex = sext i32 %i.bew to i64
  %i.bey = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bex
  %i.bez = load i32, ptr %i.bey, align 4, !tbaa !3 ; 2 uses
  %i.bfa = icmp eq i32 %i.bez, %i.bdz
  br i1 %i.bfa, label %bb.hh, label %.critedge4.i.i, !llvm.loop !48

.critedge4.i.i:                                   ; preds = %bb.hi
  %i.bfb = icmp sgt i32 %i.bez, %i.bdz
  br i1 %i.bfb, label %.preheader.i.i298, label %.critedge6.i.i

.preheader.i.i298:                                ; preds = %.critedge4.i.i
  %i.bfc = getelementptr inbounds i8, ptr %.0149.i.i, i64 -8 ; 3 uses
  %i.bfd = icmp ult ptr %.2156.i.i, %i.bfc
  br i1 %i.bfd, label %.lr.ph223.i.i, label %.critedge6.i.i

.lr.ph223.i.i:                                    ; preds = %.preheader.i.i298, %bb.hl
  %i.bfe = phi ptr [ %i.bfm, %bb.hl ], [ %i.bfc, %.preheader.i.i298 ] ; 4 uses
  %.0143222.i.i = phi ptr [ %.1144.i.i, %bb.hl ], [ %i.beu, %.preheader.i.i298 ] ; 5 uses
  %i.bff = load i32, ptr %i.bfe, align 4, !tbaa !3 ; 2 uses
  %i.bfg = sext i32 %i.bff to i64
  %i.bfh = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bfg
  %i.bfi = load i32, ptr %i.bfh, align 4, !tbaa !3 ; 2 uses
  %.not197.i.i = icmp slt i32 %i.bfi, %i.bdz
  br i1 %.not197.i.i, label %.critedge6.i.i, label %bb.hj

bb.hj:                                            ; preds = %.lr.ph223.i.i
  %i.bfj = icmp eq i32 %i.bfi, %i.bdz
  br i1 %i.bfj, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.bfk = load i32, ptr %.0143222.i.i, align 4, !tbaa !3
  store i32 %i.bfk, ptr %i.bfe, align 4, !tbaa !3
  store i32 %i.bff, ptr %.0143222.i.i, align 4, !tbaa !3
  %i.bfl = getelementptr inbounds i8, ptr %.0143222.i.i, i64 -4
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.1144.i.i = phi ptr [ %i.bfl, %bb.hk ], [ %.0143222.i.i, %bb.hj ] ; 2 uses
  %i.bfm = getelementptr inbounds i8, ptr %i.bfe, i64 -4 ; 3 uses
  %i.bfn = icmp ult ptr %.2156.i.i, %i.bfm
  br i1 %i.bfn, label %.lr.ph223.i.i, label %.critedge6.i.i, !llvm.loop !49

.critedge6.i.i:                                   ; preds = %bb.hh, %bb.hl, %.lr.ph223.i.i, %.preheader.i.i298, %.critedge4.i.i
  %.2151.i.i = phi ptr [ %i.beu, %.critedge4.i.i ], [ %i.bfe, %.lr.ph223.i.i ], [ %i.bfc, %.preheader.i.i298 ], [ %i.bfm, %bb.hl ], [ %i.beu, %bb.hh ] ; 2 uses
  %.2145.i.i = phi ptr [ %i.beu, %.critedge4.i.i ], [ %.0143222.i.i, %.lr.ph223.i.i ], [ %i.beu, %.preheader.i.i298 ], [ %.1144.i.i, %bb.hl ], [ %i.beu, %bb.hh ] ; 2 uses
  %i.bfo = icmp ult ptr %.2156.i.i, %.2151.i.i
  br i1 %i.bfo, label %.lr.ph247.i.i, label %._crit_edge.i56.i

.lr.ph247.i.i:                                    ; preds = %.critedge6.i.i, %.critedge10.i.i
  %.3146246.i.i = phi ptr [ %.4147.lcssa.i.i, %.critedge10.i.i ], [ %.2145.i.i, %.critedge6.i.i ] ; 2 uses
  %.3152245.i.i = phi ptr [ %.lcssa208.i.i, %.critedge10.i.i ], [ %.2151.i.i, %.critedge6.i.i ] ; 5 uses
  %.3157244.i.i = phi ptr [ %.lcssa.i57.i, %.critedge10.i.i ], [ %.2156.i.i, %.critedge6.i.i ] ; 3 uses
  %.3162243.i.i = phi ptr [ %.4163.lcssa.i.i, %.critedge10.i.i ], [ %.2161.i.i, %.critedge6.i.i ] ; 2 uses
  %i.bfp = load i32, ptr %.3157244.i.i, align 4, !tbaa !3
  %i.bfq = load i32, ptr %.3152245.i.i, align 4, !tbaa !3
  store i32 %i.bfq, ptr %.3157244.i.i, align 4, !tbaa !3
  store i32 %i.bfp, ptr %.3152245.i.i, align 4, !tbaa !3
  %i.bfr = getelementptr inbounds nuw i8, ptr %.3157244.i.i, i64 4 ; 3 uses
  %i.bfs = icmp ult ptr %i.bfr, %.3152245.i.i
  br i1 %i.bfs, label %.lr.ph230.i.i, label %.critedge8.i.i

.lr.ph230.i.i:                                    ; preds = %.lr.ph247.i.i, %bb.ho
  %i.bft = phi ptr [ %i.bgb, %bb.ho ], [ %i.bfr, %.lr.ph247.i.i ] ; 4 uses
  %.4163229.i.i = phi ptr [ %.5164.i.i, %bb.ho ], [ %.3162243.i.i, %.lr.ph247.i.i ] ; 5 uses
  %i.bfu = load i32, ptr %i.bft, align 4, !tbaa !3 ; 2 uses
  %i.bfv = sext i32 %i.bfu to i64
  %i.bfw = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bfv
  %i.bfx = load i32, ptr %i.bfw, align 4, !tbaa !3 ; 2 uses
  %.not199.i.i = icmp sgt i32 %i.bfx, %i.bdz
  br i1 %.not199.i.i, label %.critedge8.i.i, label %bb.hm

bb.hm:                                            ; preds = %.lr.ph230.i.i
  %i.bfy = icmp eq i32 %i.bfx, %i.bdz
  br i1 %i.bfy, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.bfz = load i32, ptr %.4163229.i.i, align 4, !tbaa !3
  store i32 %i.bfz, ptr %i.bft, align 4, !tbaa !3
  store i32 %i.bfu, ptr %.4163229.i.i, align 4, !tbaa !3
  %i.bga = getelementptr inbounds nuw i8, ptr %.4163229.i.i, i64 4
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %.5164.i.i = phi ptr [ %i.bga, %bb.hn ], [ %.4163229.i.i, %bb.hm ] ; 2 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bft, i64 4 ; 3 uses
  %i.bgc = icmp ult ptr %i.bgb, %.3152245.i.i
  br i1 %i.bgc, label %.lr.ph230.i.i, label %.critedge8.i.i, !llvm.loop !50

.critedge8.i.i:                                   ; preds = %bb.ho, %.lr.ph230.i.i, %.lr.ph247.i.i
  %.4163.lcssa.i.i = phi ptr [ %.3162243.i.i, %.lr.ph247.i.i ], [ %.5164.i.i, %bb.ho ], [ %.4163229.i.i, %.lr.ph230.i.i ] ; 2 uses
  %.lcssa.i57.i = phi ptr [ %i.bfr, %.lr.ph247.i.i ], [ %i.bgb, %bb.ho ], [ %i.bft, %.lr.ph230.i.i ] ; 5 uses
  %i.bgd = getelementptr inbounds i8, ptr %.3152245.i.i, i64 -4 ; 3 uses
  %i.bge = icmp ult ptr %.lcssa.i57.i, %i.bgd
  br i1 %i.bge, label %.lr.ph237.i.i, label %.critedge10.i.i

.lr.ph237.i.i:                                    ; preds = %.critedge8.i.i, %bb.hr
  %i.bgf = phi ptr [ %i.bgn, %bb.hr ], [ %i.bgd, %.critedge8.i.i ] ; 4 uses
  %.4147236.i.i = phi ptr [ %.5148.i.i, %bb.hr ], [ %.3146246.i.i, %.critedge8.i.i ] ; 5 uses
  %i.bgg = load i32, ptr %i.bgf, align 4, !tbaa !3 ; 2 uses
  %i.bgh = sext i32 %i.bgg to i64
  %i.bgi = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bgh
  %i.bgj = load i32, ptr %i.bgi, align 4, !tbaa !3 ; 2 uses
  %.not200.i.i = icmp slt i32 %i.bgj, %i.bdz
  br i1 %.not200.i.i, label %.critedge10.i.i, label %bb.hp

bb.hp:                                            ; preds = %.lr.ph237.i.i
  %i.bgk = icmp eq i32 %i.bgj, %i.bdz
  br i1 %i.bgk, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.bgl = load i32, ptr %.4147236.i.i, align 4, !tbaa !3
  store i32 %i.bgl, ptr %i.bgf, align 4, !tbaa !3
  store i32 %i.bgg, ptr %.4147236.i.i, align 4, !tbaa !3
  %i.bgm = getelementptr inbounds i8, ptr %.4147236.i.i, i64 -4
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.5148.i.i = phi ptr [ %i.bgm, %bb.hq ], [ %.4147236.i.i, %bb.hp ] ; 2 uses
  %i.bgn = getelementptr inbounds i8, ptr %i.bgf, i64 -4 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL13ss_mintrosortEPKhPKiPiS4_i:bb.a
  %i.jn = getelementptr inbounds i8, ptr %.1427.lcssa, i64 -4
  br label %bb.z

bb.z:                                             ; preds = %bb.ad, %bb.y
  %.031.i = phi ptr [ %.0419.lcssa, %bb.y ], [ %i.kb, %bb.ad ] ; 3 uses
  %.0.i505 = phi ptr [ %i.jn, %bb.y ], [ %.lcssa.i, %bb.ad ]
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i505, i64 4 ; 3 uses
  %i.jp = icmp ult ptr %i.jo, %.031.i
  br i1 %i.jp, label %.lr.ph.i508, label %.critedge.i506

.lr.ph.i508:                                      ; preds = %bb.z, %bb.aa
  %i.jq = phi ptr [ %i.jz, %bb.aa ], [ %i.jo, %bb.z ] ; 4 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !3  ; 2 uses
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %1, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !3
  %i.jv = add nsw i32 %i.ju, %.0433
  %i.jw = getelementptr i8, ptr %i.jt, i64 4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !3
  %.not.not.i = icmp sgt i32 %i.jv, %i.jx
  br i1 %.not.not.i, label %bb.aa, label %.critedge.i506

bb.aa:                                            ; preds = %.lr.ph.i508
  %i.jy = xor i32 %i.jr, -1
  store i32 %i.jy, ptr %i.jq, align 4, !tbaa !3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 4 ; 3 uses
  %i.ka = icmp ult ptr %i.jz, %.031.i
  br i1 %i.ka, label %.lr.ph.i508, label %.critedge.i506, !llvm.loop !146

.critedge.i506:                                   ; preds = %bb.aa, %.lr.ph.i508, %bb.z
  %.lcssa.i = phi ptr [ %i.jo, %bb.z ], [ %i.jq, %.lr.ph.i508 ], [ %i.jz, %bb.aa ] ; 7 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.critedge.i506
  %.132.i = phi ptr [ %.031.i, %.critedge.i506 ], [ %i.kb, %bb.ac ]
  %i.kb = getelementptr inbounds i8, ptr %.132.i, i64 -4 ; 5 uses
  %i.kc = icmp ult ptr %.lcssa.i, %i.kb
  br i1 %i.kc, label %bb.ac, label %.critedge2.i

bb.ac:                                            ; preds = %bb.ab
  %i.kd = load i32, ptr %i.kb, align 4, !tbaa !3  ; 2 uses
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ke ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !3
  %i.kh = add nsw i32 %i.kg, %.0433
  %i.ki = getelementptr i8, ptr %i.kf, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !3
  %.not.i507 = icmp sgt i32 %i.kh, %i.kj
  br i1 %.not.i507, label %bb.ad, label %bb.ab, !llvm.loop !147

bb.ad:                                            ; preds = %bb.ac
  %i.kk = xor i32 %i.kd, -1
  %i.kl = load i32, ptr %.lcssa.i, align 4, !tbaa !3
  store i32 %i.kl, ptr %i.kb, align 4, !tbaa !3
  store i32 %i.kk, ptr %.lcssa.i, align 4, !tbaa !3
  br label %bb.z, !llvm.loop !148

.critedge2.i:                                     ; preds = %bb.ab
  %i.km = icmp ult ptr %.1427.lcssa, %.lcssa.i
  br i1 %i.km, label %bb.ae, label %_ZN11duckdb_zstdL12ss_partitionEPKiPiS2_i.exit

bb.ae:                                            ; preds = %.critedge2.i
  %i.kn = load i32, ptr %.1427.lcssa, align 4, !tbaa !3
  %i.ko = xor i32 %i.kn, -1
  store i32 %i.ko, ptr %.1427.lcssa, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL12ss_partitionEPKiPiS2_i.exit

_ZN11duckdb_zstdL12ss_partitionEPKiPiS2_i.exit:   ; preds = %bb.ae, %.critedge2.i, %._crit_edge653
  %.3429 = phi ptr [ %.1427.lcssa, %._crit_edge653 ], [ %.lcssa.i, %.critedge2.i ], [ %.lcssa.i, %bb.ae ] ; 6 uses
  %i.kp = ptrtoint ptr %.0419.lcssa to i64        ; 2 uses
  %i.kq = ptrtoint ptr %.3429 to i64
  %i.kr = sub i64 %i.kp, %i.kq                    ; 4 uses
  %i.ks = ashr exact i64 %i.kr, 2                 ; 8 uses
  %i.kt = sub i64 %i.n, %i.kp
  %i.ku = ashr exact i64 %i.kt, 2                 ; 2 uses
  %.not497 = icmp sgt i64 %i.ks, %i.ku
  br i1 %.not497, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_ZN11duckdb_zstdL12ss_partitionEPKiPiS2_i.exit
  %i.kv = icmp sgt i64 %i.ks, 1
  br i1 %i.kv, label %bb.ag, label %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge

bb.ag:                                            ; preds = %bb.af
  %i.kw = sext i32 %.0392 to i64
  %i.kx = getelementptr inbounds [24 x i8], ptr %4, i64 %i.kw ; 4 uses
  store ptr %.0419.lcssa, ptr %i.kx, align 8, !tbaa !138
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store ptr %.0436, ptr %i.ky, align 8, !tbaa !140
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store i32 %.0433, ptr %i.kz, align 8, !tbaa !141
  %i.la = add nsw i32 %.0392, 1                   ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 20
  store i32 -1, ptr %i.lb, align 4, !tbaa !142
  %i.lc = add nsw i32 %.0433, 1                   ; 2 uses
  %i.ld = and i64 %i.kr, 261120
  %.not.i509 = icmp eq i64 %i.ld, 0
  br i1 %.not.i509, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.le = lshr i64 %i.ks, 8
  %i.lf = and i64 %i.le, 255
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !3
  %i.li = add nsw i32 %i.lh, 8
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge

bb.ai:                                            ; preds = %bb.ag
  %i.lj = and i64 %i.ks, 255
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge

bb.aj:                                            ; preds = %_ZN11duckdb_zstdL12ss_partitionEPKiPiS2_i.exit
  %i.lm = icmp sgt i64 %i.ku, 1
  br i1 %i.lm, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ln = sext i32 %.0392 to i64
  %i.lo = getelementptr inbounds [24 x i8], ptr %4, i64 %i.ln ; 4 uses
  store ptr %.3429, ptr %i.lo, align 8, !tbaa !138
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store ptr %.0419.lcssa, ptr %i.lp, align 8, !tbaa !140
  %i.lq = add nsw i32 %.0433, 1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store i32 %i.lq, ptr %i.lr, align 8, !tbaa !141
  %i.ls = and i64 %i.kr, 261120
  %.not.i511 = icmp eq i64 %i.ls, 0
  br i1 %.not.i511, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lt = lshr i64 %i.ks, 8
  %i.lu = and i64 %i.lt, 255
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !3
  %i.lx = add nsw i32 %i.lw, 8
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit512

bb.am:                                            ; preds = %bb.ak
  %i.ly = and i64 %i.ks, 255
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit512

_ZN11duckdb_zstdL6ss_ilgEi.exit512:               ; preds = %bb.al, %bb.am
  %i.mb = phi i32 [ %i.lx, %bb.al ], [ %i.ma, %bb.am ]
  %i.mc = add nsw i32 %.0392, 1
  %i.md = getelementptr inbounds nuw i8, ptr %i.lo, i64 20
  store i32 %i.mb, ptr %i.md, align 4, !tbaa !142
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge

bb.an:                                            ; preds = %bb.aj
  %i.me = add nsw i32 %.0433, 1                   ; 2 uses
  %i.mf = and i64 %i.kr, 261120
  %.not.i513 = icmp eq i64 %i.mf, 0
  br i1 %.not.i513, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mg = lshr i64 %i.ks, 8
  %i.mh = and i64 %i.mg, 255
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = add nsw i32 %i.mj, 8
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge

bb.ap:                                            ; preds = %bb.an
  %i.ml = and i64 %i.ks, 255
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge

bb.aq:                                            ; preds = %_ZN11duckdb_zstdL11ss_heapsortEPKhPKiPii.exit
  %i.mo = lshr exact i64 %i.p, 2
  %i.mp = trunc i64 %i.mo to i32                  ; 4 uses
  %i.mq = sdiv i32 %i.mp, 2
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %.0426, i64 %i.mr ; 11 uses
  %i.mt = icmp slt i32 %i.mp, 513
  br i1 %i.mt, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.mu = icmp slt i32 %i.mp, 33
  br i1 %i.mu, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.mv = getelementptr inbounds i8, ptr %.0436, i64 -4 ; 2 uses
  %i.mw = load i32, ptr %.0426, align 4, !tbaa !3 ; 5 uses
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %1, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !3
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds i8, ptr %i.ce, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !7
  %i.nd = load i32, ptr %i.ms, align 4, !tbaa !3  ; 3 uses
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !3
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds i8, ptr %i.ce, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !7
  %i.nk = icmp ugt i8 %i.nc, %i.nj                ; 4 uses
  %spec.select.i.i518 = select i1 %i.nk, ptr %.0426, ptr %i.ms
  %5 = select i1 %i.nk, i32 %i.mw, i32 %i.nd
  %i.nl = sext i32 %5 to i64
  %i.nm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !3
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds i8, ptr %i.ce, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !7
  %i.nr = load i32, ptr %i.mv, align 4, !tbaa !3
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !3
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds i8, ptr %i.ce, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !7   ; 2 uses
  %i.ny = icmp ugt i8 %i.nq, %i.nx
  br i1 %i.ny, label %bb.at, label %_ZN11duckdb_zstdL8ss_pivotEPKhPKiPiS4_.exit

bb.at:                                            ; preds = %bb.as
  %spec.select28.i.i = select i1 %i.nk, ptr %i.ms, ptr %.0426
  %6 = select i1 %i.nk, i32 %i.nd, i32 %i.mw
  %i.nz = sext i32 %6 to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !3
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds i8, ptr %i.ce, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !7
  %i.of = icmp ugt i8 %i.oe, %i.nx
  %spec.select28..i.i = select i1 %i.of, ptr %spec.select28.i.i, ptr %i.mv
  br label %_ZN11duckdb_zstdL8ss_pivotEPKhPKiPiS4_.exit

bb.au:                                            ; preds = %bb.ar
  %i.og = lshr i64 %i.p, 4
  %i.oh = and i64 %i.og, 1073741823               ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.0426, i64 %i.oh ; 3 uses
  %i.oj = getelementptr inbounds i8, ptr %.0436, i64 -4 ; 4 uses
  %i.ok = sub nsw i64 0, %i.oh
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.ok ; 3 uses
  %i.om = load i32, ptr %i.oi, align 4, !tbaa !3  ; 2 uses
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !3
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds i8, ptr %i.ce, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !7
  %i.ot = load i32, ptr %i.ms, align 4, !tbaa !3  ; 2 uses
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !3
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr inbounds i8, ptr %i.ce, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !7
  %i.pa = icmp ugt i8 %i.os, %i.oz                ; 3 uses
  %spec.select.i49.i = select i1 %i.pa, ptr %i.ms, ptr %i.oi
  %spec.select68.i.i = select i1 %i.pa, ptr %i.oi, ptr %i.ms ; 2 uses
  %i.pb = load i32, ptr %i.ol, align 4, !tbaa !3  ; 2 uses
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pc
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !3
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds i8, ptr %i.ce, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !7
  %i.pi = load i32, ptr %i.oj, align 4, !tbaa !3  ; 2 uses
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pj
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !3
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds i8, ptr %i.ce, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !7
  %i.pp = icmp ugt i8 %i.ph, %i.po                ; 3 uses
  %.060.i.i = select i1 %i.pp, ptr %i.oj, ptr %i.ol
  %.060.i.i.a = select i1 %i.pp, ptr %i.ol, ptr %i.oj ; 2 uses
  %7 = select i1 %i.pa, i32 %i.ot, i32 %i.om
  %i.pq = sext i32 %7 to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !3
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds i8, ptr %i.ce, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !7
  %8 = select i1 %i.pp, i32 %i.pi, i32 %i.pb
  %i.pw = sext i32 %8 to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !3
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds i8, ptr %i.ce, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !7
  %i.qc = icmp ugt i8 %i.pv, %i.qb                ; 3 uses
  %.163.i.i = select i1 %i.qc, ptr %.060.i.i.a, ptr %spec.select68.i.i ; 3 uses
  %.161.i.i = select i1 %i.qc, ptr %spec.select.i49.i, ptr %.060.i.i ; 2 uses
  %.1.i.i = select i1 %i.qc, ptr %spec.select68.i.i, ptr %.060.i.i.a
  %i.qd = load i32, ptr %.0426, align 4, !tbaa !3 ; 3 uses
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !3
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds i8, ptr %i.ce, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !7
  %i.qk = load i32, ptr %.163.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !3
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds i8, ptr %i.ce, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !7
  %i.qr = icmp ugt i8 %i.qj, %i.qq                ; 3 uses
  %.066.i.i = select i1 %i.qr, ptr %.163.i.i, ptr %.0426
  %.066.i.i.a = select i1 %i.qr, ptr %.0426, ptr %.163.i.i
  %9 = select i1 %i.qr, i32 %i.qk, i32 %i.qd
  %i.qs = sext i32 %9 to i64
  %i.qt = getelementptr inbounds [4 x i8], ptr %1, i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !3
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds i8, ptr %i.ce, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !7
  %i.qy = load i32, ptr %.161.i.i, align 4, !tbaa !3
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds [4 x i8], ptr %1, i64 %i.qz
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !3
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds i8, ptr %i.ce, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !7
  %i.rf = icmp ugt i8 %i.qx, %i.re                ; 2 uses
  %.3.i.i = select i1 %i.rf, ptr %.1.i.i, ptr %.066.i.i.a ; 2 uses
  %.2.i.i = select i1 %i.rf, ptr %.066.i.i, ptr %.161.i.i ; 2 uses
  %i.rg = load i32, ptr %.3.i.i, align 4, !tbaa !3
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds [4 x i8], ptr %1, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !3
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds i8, ptr %i.ce, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !7
  %i.rn = load i32, ptr %.2.i.i, align 4, !tbaa !3
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !3
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds i8, ptr %i.ce, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !7
  %i.ru = icmp ugt i8 %i.rm, %i.rt
  %.067.i.i = select i1 %i.ru, ptr %.2.i.i, ptr %.3.i.i
  br label %_ZN11duckdb_zstdL8ss_pivotEPKhPKiPiS4_.exit

bb.av:                                            ; preds = %bb.aq
  %i.rv = lshr i32 %i.mp, 3                       ; 2 uses
  %i.rw = zext nneg i32 %i.rv to i64              ; 3 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %.0426, i64 %i.rw ; 3 uses
  %i.ry = shl nuw nsw i32 %i.rv, 1
  %i.rz = zext nneg i32 %i.ry to i64              ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.0426, i64 %i.rz ; 2 uses
  %i.sb = load i32, ptr %.0426, align 4, !tbaa !3 ; 5 uses
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.sc
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !3
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds i8, ptr %i.ce, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !7
  %i.si = load i32, ptr %i.rx, align 4, !tbaa !3  ; 3 uses
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !3
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds i8, ptr %i.ce, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !7
  %i.sp = icmp ugt i8 %i.sh, %i.so                ; 4 uses
  %spec.select.i51.i = select i1 %i.sp, ptr %.0426, ptr %i.rx
  %10 = select i1 %i.sp, i32 %i.sb, i32 %i.si
  %i.sq = sext i32 %10 to i64
  %i.sr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !3
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds i8, ptr %i.ce, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !7
  %i.sw = load i32, ptr %i.sa, align 4, !tbaa !3
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !3
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds i8, ptr %i.ce, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !7   ; 2 uses
  %i.td = icmp ugt i8 %i.sv, %i.tc
  br i1 %i.td, label %bb.aw, label %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit55.i

bb.aw:                                            ; preds = %bb.av
  %spec.select28.i53.i = select i1 %i.sp, ptr %i.rx, ptr %.0426
  %11 = select i1 %i.sp, i32 %i.si, i32 %i.sb
  %i.te = sext i32 %11 to i64
  %i.tf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.te
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !3
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds i8, ptr %i.ce, i64 %i.th
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !7
  %i.tk = icmp ugt i8 %i.tj, %i.tc
  %spec.select28..i54.i = select i1 %i.tk, ptr %spec.select28.i53.i, ptr %i.sa
  br label %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit55.i

_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit55.i: ; preds = %bb.aw, %bb.av
  %.0.i52.i = phi ptr [ %spec.select28..i54.i, %bb.aw ], [ %spec.select.i51.i, %bb.av ] ; 3 uses
  %i.tl = sub nsw i64 0, %i.rw                    ; 2 uses
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.ms, i64 %i.tl ; 3 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.rw ; 2 uses
  %i.to = load i32, ptr %i.tm, align 4, !tbaa !3  ; 3 uses
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !3
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds i8, ptr %i.ce, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !7
  %i.tv = load i32, ptr %i.ms, align 4, !tbaa !3  ; 3 uses
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.tw
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !3
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds i8, ptr %i.ce, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !7
  %i.uc = icmp ugt i8 %i.tu, %i.ub                ; 4 uses
  %spec.select.i56.i = select i1 %i.uc, ptr %i.tm, ptr %i.ms
  %12 = select i1 %i.uc, i32 %i.to, i32 %i.tv
  %i.ud = sext i32 %12 to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !3
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds i8, ptr %i.ce, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !7
  %i.uj = load i32, ptr %i.tn, align 4, !tbaa !3
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr inbounds [4 x i8], ptr %1, i64 %i.uk
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !3
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds i8, ptr %i.ce, i64 %i.un
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !7   ; 2 uses
  %i.uq = icmp ugt i8 %i.ui, %i.up
  br i1 %i.uq, label %bb.ax, label %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit60.i

bb.ax:                                            ; preds = %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit55.i
  %spec.select28.i58.i = select i1 %i.uc, ptr %i.ms, ptr %i.tm
  %13 = select i1 %i.uc, i32 %i.tv, i32 %i.to
  %i.ur = sext i32 %13 to i64
  %i.us = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !3
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds i8, ptr %i.ce, i64 %i.uu
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !7
  %i.ux = icmp ugt i8 %i.uw, %i.up
  %spec.select28..i59.i = select i1 %i.ux, ptr %spec.select28.i58.i, ptr %i.tn
  br label %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit60.i

_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit60.i: ; preds = %bb.ax, %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit55.i
  %.0.i57.i = phi ptr [ %spec.select28..i59.i, %bb.ax ], [ %spec.select.i56.i, %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit55.i ] ; 3 uses
  %i.uy = getelementptr inbounds i8, ptr %.0436, i64 -4 ; 4 uses
  %i.uz = sub nsw i64 0, %i.rz
  %i.va = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.uz ; 3 uses
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.tl ; 3 uses
  %i.vc = load i32, ptr %i.va, align 4, !tbaa !3  ; 3 uses
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !3
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds i8, ptr %i.ce, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !7   ; 2 uses
  %i.vj = load i32, ptr %i.vb, align 4, !tbaa !3  ; 3 uses
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !3
  %i.vn = sext i32 %i.vm to i64
  %i.vo = getelementptr inbounds i8, ptr %i.ce, i64 %i.vn
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !7   ; 2 uses
  %i.vq = icmp ugt i8 %i.vi, %i.vp                ; 4 uses
  %i.vr = select i1 %i.vq, i32 %i.vc, i32 %i.vj
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vs
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !3
  %i.vv = sext i32 %i.vu to i64
  %i.vw = getelementptr inbounds i8, ptr %i.ce, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !7
  %i.vy = load i32, ptr %i.uy, align 4, !tbaa !3
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vz
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !3
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds i8, ptr %i.ce, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !7   ; 2 uses
  %i.wf = icmp ugt i8 %i.vx, %i.we
  br i1 %i.wf, label %bb.ay, label %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit60._ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65_crit_edge.i

_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit60._ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65_crit_edge.i: ; preds = %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit60.i
  %14 = tail call i8 @llvm.umax.i8(i8 %i.vi, i8 %i.vp)
  %spec.select.i61.i = select i1 %i.vq, ptr %i.va, ptr %i.vb
  br label %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65.i

bb.ay:                                            ; preds = %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit60.i
  %spec.select28.i63.i = select i1 %i.vq, ptr %i.vb, ptr %i.va
  %15 = select i1 %i.vq, i32 %i.vj, i32 %i.vc
  %i.wg = sext i32 %15 to i64
  %i.wh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !3
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds i8, ptr %i.ce, i64 %i.wj
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !7
  %i.wm = icmp ugt i8 %i.wl, %i.we
  %spec.select28..i64.i = select i1 %i.wm, ptr %spec.select28.i63.i, ptr %i.uy ; 2 uses
  %.pre.i517 = load i32, ptr %spec.select28..i64.i, align 4, !tbaa !3
  %.pre71.i = sext i32 %.pre.i517 to i64
  %.phi.trans.insert.i = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre71.i
  %.pre72.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  %.phi.trans.insert73.i = sext i32 %.pre72.i to i64
  %.phi.trans.insert74.i = getelementptr inbounds i8, ptr %i.ce, i64 %.phi.trans.insert73.i
  %.pre75.i = load i8, ptr %.phi.trans.insert74.i, align 1, !tbaa !7
  br label %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65.i

_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65.i: ; preds = %bb.ay, %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit60._ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65_crit_edge.i
  %i.wn = phi i8 [ %.pre75.i, %bb.ay ], [ %14, %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit60._ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65_crit_edge.i ] ; 2 uses
  %.0.i62.i = phi ptr [ %spec.select28..i64.i, %bb.ay ], [ %spec.select.i61.i, %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit60._ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65_crit_edge.i ]
  %i.wo = load i32, ptr %.0.i52.i, align 4, !tbaa !3 ; 3 uses
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.wp
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !3
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds i8, ptr %i.ce, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !7
  %i.wv = load i32, ptr %.0.i57.i, align 4, !tbaa !3 ; 3 uses
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ww
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !3
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds i8, ptr %i.ce, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !7
  %i.xc = icmp ugt i8 %i.wu, %i.xb                ; 4 uses
  %spec.select.i66.i515 = select i1 %i.xc, ptr %.0.i52.i, ptr %.0.i57.i
  %16 = select i1 %i.xc, i32 %i.wo, i32 %i.wv
  %i.xd = sext i32 %16 to i64
  %i.xe = getelementptr inbounds [4 x i8], ptr %1, i64 %i.xd
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !3
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds i8, ptr %i.ce, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !7
  %i.xj = icmp ugt i8 %i.xi, %i.wn
  br i1 %i.xj, label %bb.az, label %_ZN11duckdb_zstdL8ss_pivotEPKhPKiPiS4_.exit

bb.az:                                            ; preds = %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65.i
  %spec.select28.i68.i = select i1 %i.xc, ptr %.0.i57.i, ptr %.0.i52.i
  %17 = select i1 %i.xc, i32 %i.wv, i32 %i.wo
  %i.xk = sext i32 %17 to i64
  %i.xl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.xk
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !3
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr inbounds i8, ptr %i.ce, i64 %i.xn
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !7
  %i.xq = icmp ugt i8 %i.xp, %i.wn
  %spec.select28..i69.i = select i1 %i.xq, ptr %spec.select28.i68.i, ptr %.0.i62.i
  br label %_ZN11duckdb_zstdL8ss_pivotEPKhPKiPiS4_.exit

_ZN11duckdb_zstdL8ss_pivotEPKhPKiPiS4_.exit:      ; preds = %bb.as, %bb.at, %bb.au, %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65.i, %bb.az
  %i.xr = phi i32 [ %i.mw, %bb.as ], [ %i.qd, %bb.au ], [ %i.mw, %bb.at ], [ %i.sb, %bb.az ], [ %i.sb, %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65.i ]
  %.0.i516 = phi ptr [ %spec.select.i.i518, %bb.as ], [ %.067.i.i, %bb.au ], [ %spec.select28..i.i, %bb.at ], [ %spec.select28..i69.i, %bb.az ], [ %spec.select.i66.i515, %_ZN11duckdb_zstdL10ss_median3EPKhPKiPiS4_S4_.exit65.i ] ; 2 uses
  %i.xs = load i32, ptr %.0.i516, align 4, !tbaa !3 ; 2 uses
  %i.xt = sext i32 %i.xs to i64
  %i.xu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.xt
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !3
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds i8, ptr %i.ce, i64 %i.xw
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !7   ; 14 uses
  store i32 %i.xs, ptr %.0426, align 4, !tbaa !3
  store i32 %i.xr, ptr %.0.i516, align 4, !tbaa !3
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %_ZN11duckdb_zstdL8ss_pivotEPKhPKiPiS4_.exit
  %.0414 = phi ptr [ %.0426, %_ZN11duckdb_zstdL8ss_pivotEPKhPKiPiS4_.exit ], [ %i.xz, %bb.bb ] ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.0414, i64 4 ; 9 uses
  %i.ya = icmp ult ptr %i.xz, %.0436
  br i1 %i.ya, label %bb.bb, label %.critedge2

bb.bb:                                            ; preds = %bb.ba
  %i.yb = load i32, ptr %i.xz, align 4, !tbaa !3
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !3
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds i8, ptr %i.ce, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !7   ; 2 uses
  %i.yi = icmp eq i8 %i.yh, %i.xy
  br i1 %i.yi, label %bb.ba, label %.critedge, !llvm.loop !149

.critedge:                                        ; preds = %bb.bb
  %i.yj = icmp ult i8 %i.yh, %i.xy
  br i1 %i.yj, label %.preheader558, label %.critedge2

.preheader558:                                    ; preds = %.critedge
  %i.yk = getelementptr inbounds nuw i8, ptr %.0414, i64 8 ; 3 uses
  %i.yl = icmp ult ptr %i.yk, %.0436
  br i1 %i.yl, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader558, %bb.be
  %i.ym = phi ptr [ %i.yx, %bb.be ], [ %i.yk, %.preheader558 ] ; 4 uses
  %.1420600 = phi ptr [ %.2421, %bb.be ], [ %i.xz, %.preheader558 ] ; 5 uses
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !3  ; 2 uses
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yo
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !3
  %i.yr = sext i32 %i.yq to i64
  %i.ys = getelementptr inbounds i8, ptr %i.ce, i64 %i.yr
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !7   ; 2 uses
  %.not = icmp ugt i8 %i.yt, %i.xy
  br i1 %.not, label %.critedge2, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph
  %i.yu = icmp eq i8 %i.yt, %i.xy
  br i1 %i.yu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.yv = load i32, ptr %.1420600, align 4, !tbaa !3
  store i32 %i.yv, ptr %i.ym, align 4, !tbaa !3
  store i32 %i.yn, ptr %.1420600, align 4, !tbaa !3
  %i.yw = getelementptr inbounds nuw i8, ptr %.1420600, i64 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.2421 = phi ptr [ %i.yw, %bb.bd ], [ %.1420600, %bb.bc ] ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ym, i64 4 ; 3 uses
  %i.yy = icmp ult ptr %i.yx, %.0436
  br i1 %i.yy, label %.lr.ph, label %.critedge2, !llvm.loop !150

.critedge2:                                       ; preds = %bb.ba, %bb.be, %.lr.ph, %.preheader558, %.critedge
  %.3422 = phi ptr [ %i.xz, %.critedge ], [ %.1420600, %.lr.ph ], [ %i.xz, %.preheader558 ], [ %.2421, %bb.be ], [ %i.xz, %bb.ba ] ; 2 uses
  %.2416 = phi ptr [ %i.xz, %.critedge ], [ %i.ym, %.lr.ph ], [ %i.yk, %.preheader558 ], [ %i.yx, %bb.be ], [ %i.xz, %bb.ba ] ; 6 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %.critedge2
  %.0409 = phi ptr [ %.0436, %.critedge2 ], [ %i.yz, %bb.bg ] ; 2 uses
  %i.yz = getelementptr inbounds i8, ptr %.0409, i64 -4 ; 9 uses
  %i.za = icmp ult ptr %.2416, %i.yz
  br i1 %i.za, label %bb.bg, label %.critedge6

bb.bg:                                            ; preds = %bb.bf
  %i.zb = load i32, ptr %i.yz, align 4, !tbaa !3
  %i.zc = sext i32 %i.zb to i64
  %i.zd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.zc
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !3
  %i.zf = sext i32 %i.ze to i64
  %i.zg = getelementptr inbounds i8, ptr %i.ce, i64 %i.zf
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !7   ; 2 uses
  %i.zi = icmp eq i8 %i.zh, %i.xy
  br i1 %i.zi, label %bb.bf, label %.critedge4, !llvm.loop !151

.critedge4:                                       ; preds = %bb.bg
  %i.zj = icmp ugt i8 %i.zh, %i.xy
  br i1 %i.zj, label %.preheader, label %.critedge6

.preheader:                                       ; preds = %.critedge4
  %i.zk = getelementptr inbounds i8, ptr %.0409, i64 -8 ; 3 uses
  %i.zl = icmp ult ptr %.2416, %i.zk
  br i1 %i.zl, label %.lr.ph607, label %.critedge6

.lr.ph607:                                        ; preds = %.preheader, %bb.bj
  %i.zm = phi ptr [ %i.zx, %bb.bj ], [ %i.zk, %.preheader ] ; 4 uses
  %.0403606 = phi ptr [ %.1404, %bb.bj ], [ %i.yz, %.preheader ] ; 5 uses
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !3  ; 2 uses
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.zo
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !3
  %i.zr = sext i32 %i.zq to i64
  %i.zs = getelementptr inbounds i8, ptr %i.ce, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !7   ; 2 uses
  %.not486 = icmp ult i8 %i.zt, %i.xy
  br i1 %.not486, label %.critedge6, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph607
  %i.zu = icmp eq i8 %i.zt, %i.xy
  br i1 %i.zu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.zv = load i32, ptr %.0403606, align 4, !tbaa !3
  store i32 %i.zv, ptr %i.zm, align 4, !tbaa !3
  store i32 %i.zn, ptr %.0403606, align 4, !tbaa !3
  %i.zw = getelementptr inbounds i8, ptr %.0403606, i64 -4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.1404 = phi ptr [ %i.zw, %bb.bi ], [ %.0403606, %bb.bh ] ; 2 uses
  %i.zx = getelementptr inbounds i8, ptr %i.zm, i64 -4 ; 3 uses
  %i.zy = icmp ult ptr %.2416, %i.zx
  br i1 %i.zy, label %.lr.ph607, label %.critedge6, !llvm.loop !152

.critedge6:                                       ; preds = %bb.bf, %bb.bj, %.lr.ph607, %.preheader, %.critedge4
  %.2411 = phi ptr [ %i.yz, %.critedge4 ], [ %i.zm, %.lr.ph607 ], [ %i.zk, %.preheader ], [ %i.zx, %bb.bj ], [ %i.yz, %bb.bf ] ; 2 uses
  %.2405 = phi ptr [ %i.yz, %.critedge4 ], [ %.0403606, %.lr.ph607 ], [ %i.yz, %.preheader ], [ %.1404, %bb.bj ], [ %i.yz, %bb.bf ] ; 2 uses
  %i.zz = icmp ult ptr %.2416, %.2411
  br i1 %i.zz, label %.lr.ph631, label %._crit_edge

.lr.ph631:                                        ; preds = %.critedge6, %.critedge10
  %.3406630 = phi ptr [ %.4407.lcssa, %.critedge10 ], [ %.2405, %.critedge6 ] ; 2 uses
  %.3412629 = phi ptr [ %.lcssa572, %.critedge10 ], [ %.2411, %.critedge6 ] ; 5 uses
  %.3417628 = phi ptr [ %.lcssa571, %.critedge10 ], [ %.2416, %.critedge6 ] ; 3 uses
  %.4423627 = phi ptr [ %.5424.lcssa, %.critedge10 ], [ %.3422, %.critedge6 ] ; 2 uses
  %i.aaa = load i32, ptr %.3417628, align 4, !tbaa !3
  %i.aab = load i32, ptr %.3412629, align 4, !tbaa !3
  store i32 %i.aab, ptr %.3417628, align 4, !tbaa !3
  store i32 %i.aaa, ptr %.3412629, align 4, !tbaa !3
  %i.aac = getelementptr inbounds nuw i8, ptr %.3417628, i64 4 ; 3 uses
  %i.aad = icmp ult ptr %i.aac, %.3412629
  br i1 %i.aad, label %.lr.ph614, label %.critedge8

.lr.ph614:                                        ; preds = %.lr.ph631, %bb.bm
  %i.aae = phi ptr [ %i.aap, %bb.bm ], [ %i.aac, %.lr.ph631 ] ; 4 uses
  %.5424613 = phi ptr [ %.6425, %bb.bm ], [ %.4423627, %.lr.ph631 ] ; 5 uses
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !3 ; 2 uses
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aag
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !3
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds i8, ptr %i.ce, i64 %i.aaj
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !7 ; 2 uses
  %.not494 = icmp ugt i8 %i.aal, %i.xy
  br i1 %.not494, label %.critedge8, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph614
  %i.aam = icmp eq i8 %i.aal, %i.xy
  br i1 %i.aam, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.aan = load i32, ptr %.5424613, align 4, !tbaa !3
  store i32 %i.aan, ptr %i.aae, align 4, !tbaa !3
  store i32 %i.aaf, ptr %.5424613, align 4, !tbaa !3
  %i.aao = getelementptr inbounds nuw i8, ptr %.5424613, i64 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.6425 = phi ptr [ %i.aao, %bb.bl ], [ %.5424613, %bb.bk ] ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aae, i64 4 ; 3 uses
  %i.aaq = icmp ult ptr %i.aap, %.3412629
  br i1 %i.aaq, label %.lr.ph614, label %.critedge8, !llvm.loop !153

.critedge8:                                       ; preds = %.lr.ph614, %bb.bm, %.lr.ph631
  %.5424.lcssa = phi ptr [ %.4423627, %.lr.ph631 ], [ %.6425, %bb.bm ], [ %.5424613, %.lr.ph614 ] ; 2 uses
  %.lcssa571 = phi ptr [ %i.aac, %.lr.ph631 ], [ %i.aap, %bb.bm ], [ %i.aae, %.lr.ph614 ] ; 5 uses
  %i.aar = getelementptr inbounds i8, ptr %.3412629, i64 -4 ; 3 uses
  %i.aas = icmp ult ptr %.lcssa571, %i.aar
  br i1 %i.aas, label %.lr.ph621, label %.critedge10

.lr.ph621:                                        ; preds = %.critedge8, %bb.bp
  %i.aat = phi ptr [ %i.abe, %bb.bp ], [ %i.aar, %.critedge8 ] ; 4 uses
  %.4407620 = phi ptr [ %.5408, %bb.bp ], [ %.3406630, %.critedge8 ] ; 5 uses
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !3 ; 2 uses
end_hunk_1
