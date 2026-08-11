inline.NumInlined: 23
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 33
begin_hunk_0_@If_Dec08Perform:bb.a
  %i.adv = lshr i64 %i.adu, %i.bg
  %i.adw = and i64 %i.adv, %i.ac                  ; 2 uses
  br label %.lr.ph.4.i

.lr.ph.4.i:                                       ; preds = %bb.ae, %.lr.ph.preheader.4.i
  %indvars.iv.4.i = phi i64 [ 0, %.lr.ph.preheader.4.i ], [ %indvars.iv.next.4.i, %bb.ae ] ; 3 uses
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.4.i
  %i.ady = load i64, ptr %i.adx, align 8, !tbaa !14
  %i.adz = icmp eq i64 %i.adw, %i.ady
  br i1 %i.adz, label %._crit_edge.4.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.4.i
  %indvars.iv.next.4.i = add nuw nsw i64 %indvars.iv.4.i, 1 ; 2 uses
  %exitcond.4.not.i = icmp eq i64 %indvars.iv.next.4.i, %wide.trip.count.4.i.pre-phi
  br i1 %exitcond.4.not.i, label %._crit_edge.4.thread.i, label %.lr.ph.4.i, !llvm.loop !106

._crit_edge.4.i:                                  ; preds = %.lr.ph.4.i
  %i.aea = trunc nuw nsw i64 %indvars.iv.4.i to i32
  %i.aeb = icmp eq i32 %.1.3.i, %i.aea
  br i1 %i.aeb, label %._crit_edge.4.thread.i, label %.lr.ph.preheader.5.i

._crit_edge.4.thread.i:                           ; preds = %bb.ae, %._crit_edge.4.i
  %i.aec = add nuw nsw i32 %.1.3.i, 1             ; 2 uses
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.4.i.pre-phi
  store i64 %i.adw, ptr %i.aed, align 8, !tbaa !14
  %.pre382 = zext nneg i32 %i.aec to i64
  br label %.lr.ph.preheader.5.i

.lr.ph.preheader.5.i:                             ; preds = %._crit_edge.4.thread.i, %._crit_edge.4.i
  %wide.trip.count.5.i.pre-phi = phi i64 [ %.pre382, %._crit_edge.4.thread.i ], [ %wide.trip.count.4.i.pre-phi, %._crit_edge.4.i ] ; 3 uses
  %.1.4.i = phi i32 [ %i.aec, %._crit_edge.4.thread.i ], [ %.1.3.i, %._crit_edge.4.i ] ; 3 uses
  %i.aee = load i64, ptr %i.bk, align 8, !tbaa !14
  %i.aef = lshr i64 %i.aee, %i.bm
  %i.aeg = and i64 %i.aef, %i.ac                  ; 2 uses
  br label %.lr.ph.5.i

.lr.ph.5.i:                                       ; preds = %bb.af, %.lr.ph.preheader.5.i
  %indvars.iv.5.i = phi i64 [ 0, %.lr.ph.preheader.5.i ], [ %indvars.iv.next.5.i, %bb.af ] ; 3 uses
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.5.i
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !14
  %i.aej = icmp eq i64 %i.aeg, %i.aei
  br i1 %i.aej, label %._crit_edge.5.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.5.i
  %indvars.iv.next.5.i = add nuw nsw i64 %indvars.iv.5.i, 1 ; 2 uses
  %exitcond.5.not.i = icmp eq i64 %indvars.iv.next.5.i, %wide.trip.count.5.i.pre-phi
  br i1 %exitcond.5.not.i, label %._crit_edge.5.thread.i, label %.lr.ph.5.i, !llvm.loop !106

._crit_edge.5.i:                                  ; preds = %.lr.ph.5.i
  %i.aek = trunc nuw nsw i64 %indvars.iv.5.i to i32
  %i.ael = icmp eq i32 %.1.4.i, %i.aek
  br i1 %i.ael, label %._crit_edge.5.thread.i, label %.lr.ph.preheader.6.i

._crit_edge.5.thread.i:                           ; preds = %bb.af, %._crit_edge.5.i
  %i.aem = add nuw nsw i32 %.1.4.i, 1             ; 2 uses
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.5.i.pre-phi
  store i64 %i.aeg, ptr %i.aen, align 8, !tbaa !14
  %.pre383 = zext nneg i32 %i.aem to i64
  br label %.lr.ph.preheader.6.i

.lr.ph.preheader.6.i:                             ; preds = %._crit_edge.5.thread.i, %._crit_edge.5.i
  %wide.trip.count.6.i.pre-phi = phi i64 [ %.pre383, %._crit_edge.5.thread.i ], [ %wide.trip.count.5.i.pre-phi, %._crit_edge.5.i ]
  %.1.5.i = phi i32 [ %i.aem, %._crit_edge.5.thread.i ], [ %.1.4.i, %._crit_edge.5.i ] ; 3 uses
  %i.aeo = load i64, ptr %i.bq, align 8, !tbaa !14
  %i.aep = lshr i64 %i.aeo, %i.bs
  %i.aeq = and i64 %i.aep, %i.ac
  br label %.lr.ph.6.i

.lr.ph.6.i:                                       ; preds = %bb.ag, %.lr.ph.preheader.6.i
  %indvars.iv.6.i = phi i64 [ 0, %.lr.ph.preheader.6.i ], [ %indvars.iv.next.6.i, %bb.ag ] ; 3 uses
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.6.i
  %i.aes = load i64, ptr %i.aer, align 8, !tbaa !14
  %i.aet = icmp eq i64 %i.aeq, %i.aes
  br i1 %i.aet, label %._crit_edge.6.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.6.i
  %indvars.iv.next.6.i = add nuw nsw i64 %indvars.iv.6.i, 1 ; 2 uses
  %exitcond.6.not.i = icmp eq i64 %indvars.iv.next.6.i, %wide.trip.count.6.i.pre-phi
  br i1 %exitcond.6.not.i, label %._crit_edge.6.thread.i, label %.lr.ph.6.i, !llvm.loop !106

._crit_edge.6.i:                                  ; preds = %.lr.ph.6.i
  %i.aeu = trunc nuw nsw i64 %indvars.iv.6.i to i32
  %i.aev = icmp eq i32 %.1.5.i, %i.aeu
  br i1 %i.aev, label %._crit_edge.6.thread.i, label %If_Dec08CofCount.exit

._crit_edge.6.thread.i:                           ; preds = %bb.ag, %._crit_edge.6.i
  %i.aew = add nuw nsw i32 %.1.5.i, 1
  br label %If_Dec08CofCount.exit

If_Dec08CofCount.exit:                            ; preds = %._crit_edge.6.i, %._crit_edge.6.thread.i
  %.1.6.i = phi i32 [ %i.aew, %._crit_edge.6.thread.i ], [ %.1.5.i, %._crit_edge.6.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv320 ; 2 uses
  store i32 %.1.6.i, ptr %i.aex, align 4, !tbaa !8
  %i.aey = trunc nuw i64 %indvars.iv326 to i32
  %i.aez = shl nuw i32 1, %i.aey
  %i.afa = or i32 %i.fl, %i.aez
  %i.afb = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv320
  store i32 %i.afa, ptr %i.afb, align 4, !tbaa !8
  %i.afc = icmp eq i32 %.1.6.i, 2
  %i.afd = icmp sgt i32 %.1.6.i, 5
  %or.cond = or i1 %i.afc, %i.afd
  br i1 %or.cond, label %.loopexit248, label %.preheader247

.preheader247:                                    ; preds = %If_Dec08CofCount.exit, %If_Dec08CofCount2.exit.thread
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %If_Dec08CofCount2.exit.thread ], [ 0, %If_Dec08CofCount.exit ] ; 2 uses
  %i.afe = sub nsw i64 %i.ci, %indvars.iv316      ; 4 uses
  %i.aff = icmp slt i64 %i.afe, 6
  br i1 %i.aff, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader247
  br i1 %i.bv, label %.lr.ph.i200, label %If_Dec08Cofactors.exit

.lr.ph.i200:                                      ; preds = %bb.ah
  %i.afg = trunc nsw i64 %i.afe to i32
  %i.afh = shl nuw nsw i32 1, %i.afg
  %i.afi = getelementptr inbounds [8 x i8], ptr @Truth6, i64 %i.afe
  %i.afj = load i64, ptr %i.afi, align 8, !tbaa !14 ; 5 uses
  %i.afk = xor i64 %i.afj, -1                     ; 4 uses
  %i.afl = zext nneg i32 %i.afh to i64            ; 7 uses
  br i1 %min.iters.check478, label %scalar.ph477, label %vector.ph479

vector.ph479:                                     ; preds = %.lr.ph.i200
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.afj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert481 = insertelement <2 x i64> poison, i64 %i.afk, i64 0
  %broadcast.splat482 = shufflevector <2 x i64> %broadcast.splatinsert481, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert483 = insertelement <2 x i64> poison, i64 %i.afl, i64 0
  %broadcast.splat484 = shufflevector <2 x i64> %broadcast.splatinsert483, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body485

vector.body485:                                   ; preds = %vector.body485, %vector.ph479
  %index486 = phi i64 [ 0, %vector.ph479 ], [ %index.next488, %vector.body485 ] ; 4 uses
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index486 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  %wide.load = load <2 x i64>, ptr %i.afm, align 8, !tbaa !14 ; 2 uses
  %wide.load487 = load <2 x i64>, ptr %i.afn, align 8, !tbaa !14 ; 2 uses
  %i.afo = and <2 x i64> %wide.load, %broadcast.splat482 ; 2 uses
  %i.afp = and <2 x i64> %wide.load487, %broadcast.splat482 ; 2 uses
  %i.afq = shl <2 x i64> %i.afo, %broadcast.splat484
  %i.afr = shl <2 x i64> %i.afp, %broadcast.splat484
  %i.afs = or <2 x i64> %i.afq, %i.afo
  %i.aft = or <2 x i64> %i.afr, %i.afp
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index486 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  store <2 x i64> %i.afs, ptr %i.afu, align 16, !tbaa !14
  store <2 x i64> %i.aft, ptr %i.afv, align 16, !tbaa !14
  %i.afw = and <2 x i64> %wide.load, %broadcast.splat ; 2 uses
  %i.afx = and <2 x i64> %wide.load487, %broadcast.splat ; 2 uses
  %i.afy = lshr <2 x i64> %i.afw, %broadcast.splat484
  %i.afz = lshr <2 x i64> %i.afx, %broadcast.splat484
  %i.aga = or <2 x i64> %i.afy, %i.afw
  %i.agb = or <2 x i64> %i.afz, %i.afx
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index486 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  store <2 x i64> %i.aga, ptr %i.agc, align 16, !tbaa !14
  store <2 x i64> %i.agb, ptr %i.agd, align 16, !tbaa !14
  %index.next488 = add nuw i64 %index486, 4       ; 2 uses
  %i.age = icmp eq i64 %index.next488, %n.vec480
  br i1 %i.age, label %If_Dec08Cofactors.exit, label %vector.body485, !llvm.loop !107

scalar.ph477:                                     ; preds = %.lr.ph.i200
  %i.agf = load i64, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.agg = and i64 %i.agf, %i.afk                 ; 2 uses
  %i.agh = shl i64 %i.agg, %i.afl
  %i.agi = or i64 %i.agh, %i.agg
  store i64 %i.agi, ptr %i.f, align 16, !tbaa !14
  %i.agj = and i64 %i.agf, %i.afj                 ; 2 uses
  %i.agk = lshr i64 %i.agj, %i.afl
  %i.agl = or i64 %i.agk, %i.agj
  store i64 %i.agl, ptr %i.g, align 16, !tbaa !14
  br i1 %exitcond74.not.i, label %If_Dec08Cofactors.exit, label %scalar.ph477.1

scalar.ph477.1:                                   ; preds = %scalar.ph477
  %i.agm = load i64, ptr %i.dg, align 8, !tbaa !14 ; 2 uses
  %i.agn = and i64 %i.agm, %i.afk                 ; 2 uses
  %i.ago = shl i64 %i.agn, %i.afl
  %i.agp = or i64 %i.ago, %i.agn
  store i64 %i.agp, ptr %i.dh, align 8, !tbaa !14
  %i.agq = and i64 %i.agm, %i.afj                 ; 2 uses
  %i.agr = lshr i64 %i.agq, %i.afl
  %i.ags = or i64 %i.agr, %i.agq
  store i64 %i.ags, ptr %i.di, align 8, !tbaa !14
  br i1 %exitcond74.not.i.1, label %If_Dec08Cofactors.exit, label %scalar.ph477.2

scalar.ph477.2:                                   ; preds = %scalar.ph477.1
  %i.agt = load i64, ptr %i.dj, align 8, !tbaa !14 ; 2 uses
  %i.agu = and i64 %i.agt, %i.afk                 ; 2 uses
  %i.agv = shl i64 %i.agu, %i.afl
  %i.agw = or i64 %i.agv, %i.agu
  store i64 %i.agw, ptr %i.dk, align 16, !tbaa !14
  %i.agx = and i64 %i.agt, %i.afj                 ; 2 uses
  %i.agy = lshr i64 %i.agx, %i.afl
  %i.agz = or i64 %i.agy, %i.agx
  store i64 %i.agz, ptr %i.dl, align 16, !tbaa !14
  br label %If_Dec08Cofactors.exit

bb.ai:                                            ; preds = %.preheader247
  %i.aha = trunc i64 %i.afe to i32
  %i.ahb = add i32 %i.aha, -6                     ; 4 uses
  %i.ahc = shl nuw i32 1, %i.ahb                  ; 4 uses
  br i1 %i.bv, label %.preheader.lr.ph.i, label %If_Dec08Cofactors.exit

.preheader.lr.ph.i:                               ; preds = %bb.ai
  %.not.i198 = icmp eq i32 %i.ahb, 31
  %i.ahd = shl i32 2, %i.ahb                      ; 2 uses
  %i.ahe = sext i32 %i.ahd to i64                 ; 3 uses
  br i1 %.not.i198, label %If_Dec08Cofactors.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %3 = sext i32 %i.ahc to i64                     ; 6 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ahc, i32 1)
  %min.iters.check493 = icmp slt i32 %i.ahc, 4
  %4 = and i32 %smax.i, 2147483644
  %n.vec495.a = zext nneg i32 %4 to i64
  %exitcond.not.i = icmp slt i32 %i.ahc, 2
  %5 = add nuw nsw i64 %3, 1                      ; 3 uses
  %exitcond.not.i.1 = icmp eq i32 %i.ahb, 1
  %6 = add nuw nsw i64 %3, 2                      ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i199, %.preheader.preheader.i
  %.065.i = phi ptr [ %i.ahy, %._crit_edge.i199 ], [ %0, %.preheader.preheader.i ] ; 9 uses
  %.05264.i = phi i32 [ %i.aib, %._crit_edge.i199 ], [ 0, %.preheader.preheader.i ]
  %.05463.i = phi ptr [ %i.ahz, %._crit_edge.i199 ], [ %i.f, %.preheader.preheader.i ] ; 9 uses
  %.05662.i = phi ptr [ %i.aia, %._crit_edge.i199 ], [ %i.g, %.preheader.preheader.i ] ; 9 uses
  br i1 %min.iters.check493, label %scalar.ph492, label %vector.body496

vector.body496:                                   ; preds = %.preheader.i, %vector.body496
  %index497 = phi i64 [ %index.next502, %vector.body496 ], [ 0, %.preheader.i ] ; 5 uses
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %.065.i, i64 %index497 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16
  %wide.load498 = load <2 x i64>, ptr %i.ahf, align 8, !tbaa !14 ; 2 uses
  %wide.load499 = load <2 x i64>, ptr %i.ahg, align 8, !tbaa !14 ; 2 uses
  %i.ahh = add nuw nsw i64 %index497, %3          ; 3 uses
  %i.ahi = getelementptr inbounds [8 x i8], ptr %.05463.i, i64 %i.ahh ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 16
  store <2 x i64> %wide.load498, ptr %i.ahi, align 8, !tbaa !14
  store <2 x i64> %wide.load499, ptr %i.ahj, align 8, !tbaa !14
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %.05463.i, i64 %index497 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  store <2 x i64> %wide.load498, ptr %i.ahk, align 8, !tbaa !14
  store <2 x i64> %wide.load499, ptr %i.ahl, align 8, !tbaa !14
  %i.ahm = getelementptr inbounds [8 x i8], ptr %.065.i, i64 %i.ahh ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  %wide.load500 = load <2 x i64>, ptr %i.ahm, align 8, !tbaa !14 ; 2 uses
  %wide.load501 = load <2 x i64>, ptr %i.ahn, align 8, !tbaa !14 ; 2 uses
  %i.aho = getelementptr inbounds [8 x i8], ptr %.05662.i, i64 %i.ahh ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  store <2 x i64> %wide.load500, ptr %i.aho, align 8, !tbaa !14
  store <2 x i64> %wide.load501, ptr %i.ahp, align 8, !tbaa !14
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %.05662.i, i64 %index497 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 16
  store <2 x i64> %wide.load500, ptr %i.ahq, align 8, !tbaa !14
  store <2 x i64> %wide.load501, ptr %i.ahr, align 8, !tbaa !14
  %index.next502 = add nuw i64 %index497, 4       ; 2 uses
  %i.ahs = icmp eq i64 %index.next502, %n.vec495.a
  br i1 %i.ahs, label %._crit_edge.i199, label %vector.body496, !llvm.loop !108

scalar.ph492:                                     ; preds = %.preheader.i
  %7 = load i64, ptr %.065.i, align 8, !tbaa !14  ; 2 uses
  %8 = getelementptr inbounds [8 x i8], ptr %.05463.i, i64 %3
  store i64 %7, ptr %8, align 8, !tbaa !14
  store i64 %7, ptr %.05463.i, align 8, !tbaa !14
  %9 = getelementptr inbounds [8 x i8], ptr %.065.i, i64 %3
  %10 = load i64, ptr %9, align 8, !tbaa !14      ; 2 uses
  %11 = getelementptr inbounds [8 x i8], ptr %.05662.i, i64 %3
  store i64 %10, ptr %11, align 8, !tbaa !14
  store i64 %10, ptr %.05662.i, align 8, !tbaa !14
  br i1 %exitcond.not.i, label %._crit_edge.i199, label %scalar.ph492.1

scalar.ph492.1:                                   ; preds = %scalar.ph492
  %12 = getelementptr inbounds nuw i8, ptr %.065.i, i64 8
  %i.aht = load i64, ptr %12, align 8, !tbaa !14  ; 2 uses
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %.05463.i, i64 %5
  store i64 %i.aht, ptr %i.ahu, align 8, !tbaa !14
  %13 = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8
  store i64 %i.aht, ptr %13, align 8, !tbaa !14
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %.065.i, i64 %5
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !14 ; 2 uses
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %.05662.i, i64 %5
  store i64 %i.ahw, ptr %i.ahx, align 8, !tbaa !14
  %14 = getelementptr inbounds nuw i8, ptr %.05662.i, i64 8
  store i64 %i.ahw, ptr %14, align 8, !tbaa !14
  br i1 %exitcond.not.i.1, label %._crit_edge.i199, label %scalar.ph492.2

scalar.ph492.2:                                   ; preds = %scalar.ph492.1
  %15 = getelementptr inbounds nuw i8, ptr %.065.i, i64 16
  %16 = load i64, ptr %15, align 8, !tbaa !14     ; 2 uses
  %17 = getelementptr inbounds nuw [8 x i8], ptr %.05463.i, i64 %6
  store i64 %16, ptr %17, align 8, !tbaa !14
  %18 = getelementptr inbounds nuw i8, ptr %.05463.i, i64 16
  store i64 %16, ptr %18, align 8, !tbaa !14
  %19 = getelementptr inbounds nuw [8 x i8], ptr %.065.i, i64 %6
  %20 = load i64, ptr %19, align 8, !tbaa !14     ; 2 uses
  %21 = getelementptr inbounds nuw [8 x i8], ptr %.05662.i, i64 %6
  store i64 %20, ptr %21, align 8, !tbaa !14
  %22 = getelementptr inbounds nuw i8, ptr %.05662.i, i64 16
  store i64 %20, ptr %22, align 8, !tbaa !14
  br label %._crit_edge.i199

._crit_edge.i199:                                 ; preds = %vector.body496, %scalar.ph492, %scalar.ph492.1, %scalar.ph492.2
  %i.ahy = getelementptr inbounds [8 x i8], ptr %.065.i, i64 %i.ahe
  %i.ahz = getelementptr inbounds [8 x i8], ptr %.05463.i, i64 %i.ahe
  %i.aia = getelementptr inbounds [8 x i8], ptr %.05662.i, i64 %i.ahe
  %i.aib = add nsw i32 %.05264.i, %i.ahd          ; 2 uses
  %i.aic = icmp slt i32 %i.aib, %i.v
  br i1 %i.aic, label %.preheader.i, label %If_Dec08Cofactors.exit, !llvm.loop !54

If_Dec08Cofactors.exit:                           ; preds = %._crit_edge.i199, %vector.body485, %scalar.ph477, %scalar.ph477.1, %scalar.ph477.2, %bb.ah, %bb.ai, %.preheader.lr.ph.i
  %i.aid = load i64, ptr %i.f, align 16, !tbaa !14
  %i.aie = and i64 %i.aid, %i.ac                  ; 12 uses
  %i.aif = load i64, ptr %i.bt, align 8, !tbaa !14
  %i.aig = lshr i64 %i.aif, %i.ah
  %i.aih = and i64 %i.aig, %i.ac                  ; 4 uses
  %i.aii = load i64, ptr %i.bu, align 8, !tbaa !14
  %i.aij = lshr i64 %i.aii, %i.ao
  %i.aik = and i64 %i.aij, %i.ac                  ; 3 uses
  %i.ail = icmp eq i64 %i.aik, %i.aie
  br i1 %i.ail, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %If_Dec08Cofactors.exit
  %i.aim = icmp eq i64 %i.aih, %i.aie
  br i1 %i.aim, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.1.i = icmp eq i64 %i.aik, %i.aih
  br i1 %.not.1.i, label %bb.al, label %If_Dec08CofCount2.exit.thread

bb.al:                                            ; preds = %bb.ak, %bb.aj, %If_Dec08Cofactors.exit
  %.1.1.i202 = phi i64 [ %i.aih, %If_Dec08Cofactors.exit ], [ %i.aih, %bb.ak ], [ %i.aik, %bb.aj ] ; 4 uses
  %i.ain = load i64, ptr %i.bw, align 8, !tbaa !14
  %i.aio = lshr i64 %i.ain, %i.au
  %i.aip = and i64 %i.aio, %i.ac                  ; 3 uses
  %i.aiq = icmp eq i64 %i.aip, %i.aie
  br i1 %i.aiq, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.air = icmp eq i64 %.1.1.i202, %i.aie
  br i1 %i.air, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not.2.i = icmp eq i64 %i.aip, %.1.1.i202
  br i1 %.not.2.i, label %bb.ao, label %If_Dec08CofCount2.exit.thread

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.1.2.i203 = phi i64 [ %.1.1.i202, %bb.al ], [ %.1.1.i202, %bb.an ], [ %i.aip, %bb.am ] ; 4 uses
  %i.ais = load i64, ptr %i.bx, align 8, !tbaa !14
  %i.ait = lshr i64 %i.ais, %i.ba
  %i.aiu = and i64 %i.ait, %i.ac                  ; 3 uses
  %i.aiv = icmp eq i64 %i.aiu, %i.aie
  br i1 %i.aiv, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.aiw = icmp eq i64 %.1.2.i203, %i.aie
  br i1 %i.aiw, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not.3.i = icmp eq i64 %i.aiu, %.1.2.i203
  br i1 %.not.3.i, label %bb.ar, label %If_Dec08CofCount2.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.1.3.i204 = phi i64 [ %.1.2.i203, %bb.ao ], [ %.1.2.i203, %bb.aq ], [ %i.aiu, %bb.ap ] ; 4 uses
  %i.aix = load i64, ptr %i.by, align 8, !tbaa !14
  %i.aiy = lshr i64 %i.aix, %i.bg
  %i.aiz = and i64 %i.aiy, %i.ac                  ; 3 uses
  %i.aja = icmp eq i64 %i.aiz, %i.aie
  br i1 %i.aja, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ajb = icmp eq i64 %.1.3.i204, %i.aie
  br i1 %i.ajb, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.4.i = icmp eq i64 %i.aiz, %.1.3.i204
  br i1 %.not.4.i, label %bb.au, label %If_Dec08CofCount2.exit.thread

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.1.4.i205 = phi i64 [ %.1.3.i204, %bb.ar ], [ %.1.3.i204, %bb.at ], [ %i.aiz, %bb.as ] ; 4 uses
  %i.ajc = load i64, ptr %i.bz, align 8, !tbaa !14
  %i.ajd = lshr i64 %i.ajc, %i.bm
  %i.aje = and i64 %i.ajd, %i.ac                  ; 3 uses
  %i.ajf = icmp eq i64 %i.aje, %i.aie
  br i1 %i.ajf, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ajg = icmp eq i64 %.1.4.i205, %i.aie
  br i1 %i.ajg, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not.5.i = icmp eq i64 %i.aje, %.1.4.i205
  br i1 %.not.5.i, label %bb.ax, label %If_Dec08CofCount2.exit.thread

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.1.5.i206 = phi i64 [ %.1.4.i205, %bb.au ], [ %.1.4.i205, %bb.aw ], [ %i.aje, %bb.av ] ; 2 uses
  %i.ajh = load i64, ptr %i.ca, align 8, !tbaa !14
  %i.aji = lshr i64 %i.ajh, %i.bs
  %i.ajj = and i64 %i.aji, %i.ac                  ; 2 uses
  %i.ajk = icmp eq i64 %i.ajj, %i.aie
  %i.ajl = icmp eq i64 %.1.5.i206, %i.aie
  %.not.6.i = icmp eq i64 %i.ajj, %.1.5.i206
  %i.ajm = or i1 %i.ajl, %.not.6.i
  %or.cond35.i = select i1 %i.ajk, i1 true, i1 %i.ajm
  br i1 %or.cond35.i, label %If_Dec08CofCount2.exit, label %If_Dec08CofCount2.exit.thread

If_Dec08CofCount2.exit:                           ; preds = %bb.ax
  %i.ajn = load i64, ptr %i.g, align 16, !tbaa !14
  %i.ajo = and i64 %i.ajn, %i.ac                  ; 12 uses
  %i.ajp = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.ajq = lshr i64 %i.ajp, %i.ah
  %i.ajr = and i64 %i.ajq, %i.ac                  ; 4 uses
  %i.ajs = load i64, ptr %i.cc, align 8, !tbaa !14
  %i.ajt = lshr i64 %i.ajs, %i.ao
  %i.aju = and i64 %i.ajt, %i.ac                  ; 3 uses
  %i.ajv = icmp eq i64 %i.aju, %i.ajo
  br i1 %i.ajv, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %If_Dec08CofCount2.exit
  %i.ajw = icmp eq i64 %i.ajr, %i.ajo
  br i1 %i.ajw, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not.1.i208 = icmp eq i64 %i.aju, %i.ajr
  br i1 %.not.1.i208, label %bb.ba, label %If_Dec08CofCount2.exit.thread

bb.ba:                                            ; preds = %bb.az, %bb.ay, %If_Dec08CofCount2.exit
  %.1.1.i210 = phi i64 [ %i.ajr, %If_Dec08CofCount2.exit ], [ %i.ajr, %bb.az ], [ %i.aju, %bb.ay ] ; 4 uses
  %i.ajx = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.ajy = lshr i64 %i.ajx, %i.au
  %i.ajz = and i64 %i.ajy, %i.ac                  ; 3 uses
  %i.aka = icmp eq i64 %i.ajz, %i.ajo
  br i1 %i.aka, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.akb = icmp eq i64 %.1.1.i210, %i.ajo
  br i1 %i.akb, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not.2.i211 = icmp eq i64 %i.ajz, %.1.1.i210
  br i1 %.not.2.i211, label %bb.bd, label %If_Dec08CofCount2.exit.thread

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.1.2.i212 = phi i64 [ %.1.1.i210, %bb.ba ], [ %.1.1.i210, %bb.bc ], [ %i.ajz, %bb.bb ] ; 4 uses
  %i.akc = load i64, ptr %i.ce, align 8, !tbaa !14
  %i.akd = lshr i64 %i.akc, %i.ba
  %i.ake = and i64 %i.akd, %i.ac                  ; 3 uses
  %i.akf = icmp eq i64 %i.ake, %i.ajo
  br i1 %i.akf, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.akg = icmp eq i64 %.1.2.i212, %i.ajo
  br i1 %i.akg, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not.3.i213 = icmp eq i64 %i.ake, %.1.2.i212
  br i1 %.not.3.i213, label %bb.bg, label %If_Dec08CofCount2.exit.thread

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.1.3.i214 = phi i64 [ %.1.2.i212, %bb.bd ], [ %.1.2.i212, %bb.bf ], [ %i.ake, %bb.be ] ; 4 uses
  %i.akh = load i64, ptr %i.cf, align 8, !tbaa !14
  %i.aki = lshr i64 %i.akh, %i.bg
  %i.akj = and i64 %i.aki, %i.ac                  ; 3 uses
  %i.akk = icmp eq i64 %i.akj, %i.ajo
  br i1 %i.akk, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.akl = icmp eq i64 %.1.3.i214, %i.ajo
  br i1 %i.akl, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.not.4.i215 = icmp eq i64 %i.akj, %.1.3.i214
  br i1 %.not.4.i215, label %bb.bj, label %If_Dec08CofCount2.exit.thread

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.1.4.i216 = phi i64 [ %.1.3.i214, %bb.bg ], [ %.1.3.i214, %bb.bi ], [ %i.akj, %bb.bh ] ; 4 uses
  %i.akm = load i64, ptr %i.cg, align 8, !tbaa !14
  %i.akn = lshr i64 %i.akm, %i.bm
  %i.ako = and i64 %i.akn, %i.ac                  ; 3 uses
  %i.akp = icmp eq i64 %i.ako, %i.ajo
  br i1 %i.akp, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.akq = icmp eq i64 %.1.4.i216, %i.ajo
  br i1 %i.akq, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not.5.i217 = icmp eq i64 %i.ako, %.1.4.i216
  br i1 %.not.5.i217, label %bb.bm, label %If_Dec08CofCount2.exit.thread

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %.1.5.i218 = phi i64 [ %.1.4.i216, %bb.bj ], [ %.1.4.i216, %bb.bl ], [ %i.ako, %bb.bk ] ; 2 uses
  %i.akr = load i64, ptr %i.ch, align 8, !tbaa !14
  %i.aks = lshr i64 %i.akr, %i.bs
  %i.akt = and i64 %i.aks, %i.ac                  ; 2 uses
  %i.aku = icmp eq i64 %i.akt, %i.ajo
  %i.akv = icmp eq i64 %.1.5.i218, %i.ajo
  %.not.6.i220 = icmp eq i64 %i.akt, %.1.5.i218
  %i.akw = or i1 %i.akv, %.not.6.i220
  %or.cond35.i221 = select i1 %i.aku, i1 true, i1 %i.akw
  br i1 %or.cond35.i221, label %If_Dec08CofCount2.exit223, label %If_Dec08CofCount2.exit.thread

If_Dec08CofCount2.exit223:                        ; preds = %bb.bm
  %i.akx = sub nsw i32 0, %.1.6.i
  store i32 %i.akx, ptr %i.aex, align 4, !tbaa !8
  br label %.loopexit248

If_Dec08CofCount2.exit.thread:                    ; preds = %bb.bi, %bb.bc, %bb.bm, %bb.az, %bb.bf, %bb.bl, %bb.at, %bb.an, %bb.ax, %bb.ak, %bb.aq, %bb.aw
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %exitcond319.not = icmp eq i64 %indvars.iv.next317, 4
  br i1 %exitcond319.not, label %.loopexit248, label %.preheader247, !llvm.loop !109

.loopexit248:                                     ; preds = %If_Dec08CofCount2.exit.thread, %If_Dec08CofCount2.exit223, %If_Dec08CofCount.exit
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %indvars.iv.next321 = add nsw i64 %indvars.iv320, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next327 to i32
  %exitcond331.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond331.not, label %.loopexit249.loopexit, label %bb.l, !llvm.loop !110

.loopexit:                                        ; preds = %.thread229, %.lr.ph277.split
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1
  %exitcond379.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count378
  br i1 %exitcond379.not, label %.loopexit238, label %.lr.ph277.split, !llvm.loop !58

.lr.ph277.split:                                  ; preds = %.lr.ph277, %.loopexit
  %indvars.iv375 = phi i64 [ %indvars.iv.next376, %.loopexit ], [ 0, %.lr.ph277 ] ; 3 uses
  %indvars.iv368 = phi i64 [ %indvars.iv.next369, %.loopexit ], [ 1, %.lr.ph277 ] ; 2 uses
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 3 uses
  %i.aky = icmp samesign ult i64 %indvars.iv.next376, %i.dr
  br i1 %i.aky, label %.lr.ph272, label %.loopexit

.lr.ph272:                                        ; preds = %.lr.ph277.split
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv375
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !8
  %i.alb = and i32 %i.ala, 65535
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv375
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph272, %.thread229
  %indvars.iv370 = phi i64 [ %indvars.iv368, %.lr.ph272 ], [ %indvars.iv.next371, %.thread229 ] ; 4 uses
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv370
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !8
  %i.alf = and i32 %i.alb, %i.ale
  %i.alg = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.alf)
  %i.alh = icmp sgt i32 %i.alg, %i.dq
  br i1 %i.alh, label %.thread229, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ali = load i32, ptr %i.alc, align 4, !tbaa !8 ; 2 uses
  %i.alj = icmp eq i32 %i.ali, 2
  br i1 %i.alj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv370
  %i.all = load i32, ptr %i.alk, align 4, !tbaa !8 ; 2 uses
  %i.alm = icmp eq i32 %i.all, 2
  %i.aln = icmp slt i32 %i.all, 0
  %or.cond457 = or i1 %i.alm, %i.aln
  br i1 %or.cond457, label %.loopexit238, label %.thread229

bb.bq:                                            ; preds = %bb.bo
  %i.alo = icmp slt i32 %i.ali, 0
  br i1 %i.alo, label %bb.br, label %.thread229

bb.br:                                            ; preds = %bb.bq
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv370
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !8 ; 2 uses
  %i.alr = icmp eq i32 %i.alq, 2
  %i.als = icmp slt i32 %i.alq, 0
  %or.cond458 = or i1 %i.alr, %i.als
  br i1 %or.cond458, label %.loopexit238, label %.thread229

.thread229:                                       ; preds = %bb.br, %bb.bp, %bb.bq, %bb.bn
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count378
  br i1 %exitcond374.not, label %.loopexit, label %bb.bn, !llvm.loop !59

.loopexit238:                                     ; preds = %.loopexit.us281, %bb.i, %bb.h, %.loopexit.us, %bb.d, %.loopexit, %bb.bp, %bb.br, %bb.a, %.preheader
  %.085 = phi i32 [ 0, %bb.a ], [ 0, %.loopexit.us ], [ 0, %.preheader ], [ 0, %.loopexit ], [ 1, %bb.bp ], [ 1, %bb.i ], [ 1, %bb.d ], [ 1, %bb.br ], [ 1, %bb.h ], [ 0, %.loopexit.us281 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  ret i32 %.085
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @If_CutPerformCheck08(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i64], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp slt i32 %3, 6
  br i1 %i.b, label %If_Dec08Support.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 7
  %i.d = add nsw i32 %2, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %If_Dec08Copy.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  %i.h = shl nuw nsw i64 %wide.trip.count.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %1, i64 %i.h, i1 false), !tbaa !14
  br label %If_Dec08Copy.exit

If_Dec08Copy.exit:                                ; preds = %.lr.ph.preheader.i, %bb.b
  %i.i = add nsw i32 %3, -6
  %i.j = shl nuw i32 1, %i.i
  %.fr39.i = freeze i32 %i.j                      ; 3 uses
  %i.k = icmp sgt i32 %.fr39.i, 0
  %wide.trip.count52.i.i = zext nneg i32 %.fr39.i to i64
  br i1 %i.k, label %.split.us.split.us.preheader.i, label %If_Dec08Support.exit.thread

.split.us.split.us.preheader.i:                   ; preds = %If_Dec08Copy.exit
  %wide.trip.count98.i = zext nneg i32 %3 to i64
  br label %.split.us.split.us.i

.split.us.split.us.i:                             ; preds = %If_Dec08HasVar.exit.thread.us.us.i, %.split.us.split.us.preheader.i
  %indvars.iv95.i = phi i64 [ 0, %.split.us.split.us.preheader.i ], [ %indvars.iv.next96.i, %If_Dec08HasVar.exit.thread.us.us.i ] ; 7 uses
  %.021.us.us.i = phi i32 [ 0, %.split.us.split.us.preheader.i ], [ %i.ao, %If_Dec08HasVar.exit.thread.us.us.i ] ; 4 uses
  %i.l = icmp samesign ult i64 %indvars.iv95.i, 6
  br i1 %i.l, label %.lr.ph.i.us.us.i, label %.preheader.lr.ph.i.us.us.i

.preheader.lr.ph.i.us.us.i:                       ; preds = %.split.us.split.us.i
  %i.m = add nsw i64 %indvars.iv95.i, -6          ; 2 uses
  %i.n = icmp eq i64 %i.m, 31
  %i.o = trunc nsw i64 %i.m to i32                ; 2 uses
  %i.p = shl i32 2, %i.o                          ; 2 uses
  %i.q = sext i32 %i.p to i64
  br i1 %i.n, label %If_Dec08HasVar.exit.us.us.i, label %.preheader.us.preheader.i.us.us.i

.preheader.us.preheader.i.us.us.i:                ; preds = %.preheader.lr.ph.i.us.us.i
  %i.r = shl nuw i32 1, %i.o                      ; 2 uses
  %i.s = sext i32 %i.r to i64
  %smax.i.us.us.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 1)
  %wide.trip.count.i.us.us.i = zext nneg i32 %smax.i.us.us.i to i64
  br label %.preheader.us.i.us.us.i

.preheader.us.i.us.us.i:                          ; preds = %._crit_edge.us.i.us.us.i, %.preheader.us.preheader.i.us.us.i
  %.02841.us.i.us.us.i = phi i32 [ %i.x, %._crit_edge.us.i.us.us.i ], [ 0, %.preheader.us.preheader.i.us.us.i ]
  %.03040.us.i.us.us.i = phi ptr [ %i.w, %._crit_edge.us.i.us.us.i ], [ %i.a, %.preheader.us.preheader.i.us.us.i ] ; 3 uses
  %invariant.gep.i.us.us.i = getelementptr [8 x i8], ptr %.03040.us.i.us.us.i, i64 %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.preheader.us.i.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ 0, %.preheader.us.i.us.us.i ], [ %indvars.iv.next.i.us.us.i, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.03040.us.i.us.us.i, i64 %indvars.iv.i.us.us.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %gep.i.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.i, i64 %indvars.iv.i.us.us.i
  %i.v = load i64, ptr %gep.i.us.us.i, align 8, !tbaa !14
  %.not.us.i.us.us.i = icmp eq i64 %i.u, %i.v
  br i1 %.not.us.i.us.us.i, label %bb.d, label %If_Dec08HasVar.exit.thread14.us.us.loopexit.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.us.us.i
  br i1 %exitcond.not.i.us.us.i, label %._crit_edge.us.i.us.us.i, label %bb.c, !llvm.loop !111

._crit_edge.us.i.us.us.i:                         ; preds = %bb.d
  %i.w = getelementptr inbounds [8 x i8], ptr %.03040.us.i.us.us.i, i64 %i.q
  %i.x = add nsw i32 %.02841.us.i.us.us.i, %i.p   ; 2 uses
  %i.y = icmp slt i32 %i.x, %.fr39.i
  br i1 %i.y, label %.preheader.us.i.us.us.i, label %If_Dec08HasVar.exit.thread.us.us.i, !llvm.loop !112

If_Dec08HasVar.exit.us.us.i:                      ; preds = %.preheader.lr.ph.i.us.us.i
  %i.z = trunc nuw nsw i64 %indvars.iv95.i to i32
  %i.aa = shl nuw nsw i32 1, %i.z
  %i.ab = or i32 %i.aa, %.021.us.us.i
  br label %If_Dec08HasVar.exit.thread.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.split.us.split.us.i
  %i.ac = trunc nuw nsw i64 %indvars.iv95.i to i32
  %i.ad = shl nuw nsw i32 1, %i.ac                ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @Truth6, i64 %indvars.iv95.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ag = xor i64 %i.af, -1
  %i.ah = zext nneg i32 %i.ad to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.us.us.i
  %indvars.iv49.i.us.us.i = phi i64 [ 0, %.lr.ph.i.us.us.i ], [ %indvars.iv.next50.i.us.us.i, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv49.i.us.us.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.ak = and i64 %i.aj, %i.ag
  %i.al = and i64 %i.aj, %i.af
  %i.am = lshr i64 %i.al, %i.ah
  %.not36.i.us.us.i = icmp eq i64 %i.ak, %i.am
  br i1 %.not36.i.us.us.i, label %bb.f, label %If_Dec08HasVar.exit.thread14.us.us.i

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next50.i.us.us.i = add nuw nsw i64 %indvars.iv49.i.us.us.i, 1 ; 2 uses
  %exitcond53.not.i.us.us.i = icmp eq i64 %indvars.iv.next50.i.us.us.i, %wide.trip.count52.i.i
  br i1 %exitcond53.not.i.us.us.i, label %If_Dec08HasVar.exit.thread.us.us.i, label %bb.e, !llvm.loop !113

If_Dec08HasVar.exit.thread14.us.us.loopexit.i:    ; preds = %bb.c
  %.pre.i = trunc nuw nsw i64 %indvars.iv95.i to i32
  %.pre100.i = shl nuw i32 1, %.pre.i
  br label %If_Dec08HasVar.exit.thread14.us.us.i

If_Dec08HasVar.exit.thread14.us.us.i:             ; preds = %bb.e, %If_Dec08HasVar.exit.thread14.us.us.loopexit.i
  %.pre-phi101.i = phi i32 [ %.pre100.i, %If_Dec08HasVar.exit.thread14.us.us.loopexit.i ], [ %i.ad, %bb.e ]
  %i.an = or i32 %.pre-phi101.i, %.021.us.us.i
  br label %If_Dec08HasVar.exit.thread.us.us.i

If_Dec08HasVar.exit.thread.us.us.i:               ; preds = %._crit_edge.us.i.us.us.i, %bb.f, %If_Dec08HasVar.exit.thread14.us.us.i, %If_Dec08HasVar.exit.us.us.i
  %i.ao = phi i32 [ %i.an, %If_Dec08HasVar.exit.thread14.us.us.i ], [ %i.ab, %If_Dec08HasVar.exit.us.us.i ], [ %.021.us.us.i, %bb.f ], [ %.021.us.us.i, %._crit_edge.us.i.us.us.i ] ; 4 uses
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %exitcond99.not.i = icmp eq i64 %indvars.iv.next96.i, %wide.trip.count98.i
  br i1 %exitcond99.not.i, label %If_Dec08Support.exit, label %.split.us.split.us.i, !llvm.loop !114

If_Dec08Support.exit:                             ; preds = %If_Dec08HasVar.exit.thread.us.us.i
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %If_Dec08Support.exit.thread, label %bb.g

bb.g:                                             ; preds = %If_Dec08Support.exit
  %i.ap = add nsw i32 %i.ao, 1
  %i.aq = and i32 %i.ap, %i.ao
  %.not14 = icmp eq i32 %i.aq, 0
  br i1 %.not14, label %bb.h, label %If_Dec08Support.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ar = call i32 @If_Dec08Perform(ptr noundef nonnull %i.a, i32 noundef %3, i32 poison)
  br label %If_Dec08Support.exit.thread

If_Dec08Support.exit.thread:                      ; preds = %If_Dec08Copy.exit, %bb.h, %If_Dec08Support.exit, %bb.g, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.ar, %bb.h ], [ 0, %If_Dec08Support.exit ], [ 0, %bb.g ], [ 0, %If_Dec08Copy.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !13, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !13, !20, !21}
!23 = distinct !{!23, !13, !21, !20}
!24 = distinct !{!24, !13, !21, !20}
!25 = distinct !{!25, !13, !20, !21}
!26 = distinct !{!26, !13, !20, !21}
!27 = distinct !{!27, !13, !21, !20}
!28 = distinct !{!28, !13, !21, !20}
!29 = distinct !{!29, !13, !20, !21}
!30 = distinct !{!30, !13, !20, !21}
!31 = distinct !{!31, !13, !21, !20}
!32 = distinct !{!32, !13, !21, !20}
!33 = distinct !{!33, !13, !20, !21}
!34 = distinct !{!34, !13, !20, !21}
!35 = distinct !{!35, !13, !21, !20}
!36 = distinct !{!36, !13, !21, !20}
!37 = distinct !{!37, !13, !20, !21}
!38 = distinct !{!38, !13, !21, !20}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = !{!43}
!43 = distinct !{!43, !44}
!44 = distinct !{!44, !"LVerDomain"}
!45 = !{!46}
!46 = distinct !{!46, !44}
!47 = !{!48, !43}
!48 = distinct !{!48, !44}
!49 = !{!48}
!50 = distinct !{!50, !13, !20, !21}
!51 = distinct !{!51, !13, !20}
!52 = distinct !{!52, !13, !20, !21}
!53 = distinct !{!53, !13, !20}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13, !20, !21}
!56 = distinct !{!56, !13, !21, !20}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13, !20, !21}
!62 = distinct !{!62, !13, !20}
!63 = distinct !{!63, !13, !20, !21}
!64 = distinct !{!64, !13, !20}
!65 = distinct !{!65, !13, !20}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !13, !20, !21}
!68 = distinct !{!68, !13, !20}
!69 = distinct !{!69, !18}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !13, !20, !21}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13, !20, !21}
!76 = distinct !{!76, !13, !20}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !13, !20, !21}
!79 = distinct !{!79, !13, !20}
!80 = distinct !{!80, !13, !20, !21}
!81 = distinct !{!81, !13, !20}
!82 = distinct !{!82, !13, !20}
!83 = distinct !{!83, !18}
!84 = distinct !{!84, !13, !20, !21}
!85 = distinct !{!85, !13, !20}
!86 = distinct !{!86, !18}
!87 = distinct !{!87, !18}
!88 = distinct !{!88, !13, !20, !21}
!89 = distinct !{!89, !13, !20, !21}
!90 = distinct !{!90, !13, !20}
!91 = distinct !{!91, !18}
!92 = distinct !{!92, !13, !20, !21}
!93 = distinct !{!93, !13, !20}
!94 = distinct !{!94, !13, !20, !21}
!95 = distinct !{!95, !13, !20}
!96 = distinct !{!96, !13, !20}
!97 = distinct !{!97, !18}
!98 = distinct !{!98, !13, !20, !21}
!99 = distinct !{!99, !13, !20}
!100 = distinct !{!100, !18}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !13, !20, !21}
!103 = distinct !{!103, !13, !20, !21}
!104 = distinct !{!104, !13, !20}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !13, !20, !21}
!108 = distinct !{!108, !13, !20, !21}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
end_hunk_0
