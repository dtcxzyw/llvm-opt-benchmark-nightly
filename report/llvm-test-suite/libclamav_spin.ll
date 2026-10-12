Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_spin?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@unspin:bb.a
  br i1 %.not559.1, label %bb.ad, label %.preheader641, !llvm.loop !14

bb.ad:                                            ; preds = %.preheader641
  %i.fs = getelementptr inbounds nuw i8, ptr %i.di, i64 10461
  %.val608 = load i32, ptr %i.fs, align 1
  %.not560 = icmp eq i32 %.val608, 417
  br i1 %.not560, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #7
  br label %.critedge605

bb.af:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13, i32 noundef 417) #7
  %i.ft = getelementptr inbounds nuw i8, ptr %i.di, i64 10476
  %.not561 = icmp slt i64 %i.dh, -1748
  br i1 %.not561, label %bb.ag, label %.preheader640.preheader

.preheader640.preheader:                          ; preds = %bb.af
  %i.fu = getelementptr inbounds nuw i8, ptr %i.di, i64 1748
  br label %.preheader640

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #7
  br label %.critedge605

.preheader640:                                    ; preds = %.preheader640.preheader, %bb.ah
  %.3462671 = phi i32 [ %i.fz, %bb.ah ], [ 417, %.preheader640.preheader ] ; 2 uses
  %.0488670 = phi ptr [ %i.ga, %bb.ah ], [ %i.fu, %.preheader640.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.fv = load i8, ptr %.0488670, align 1, !tbaa !8
  %i.fw = trunc i32 %.3462671 to i8
  %i.fx = call fastcc signext i8 @exec86(i8 noundef zeroext %i.fv, i8 noundef zeroext %i.fw, ptr noundef nonnull %i.ft, ptr noundef %i.a)
  store i8 %i.fx, ptr %.0488670, align 1, !tbaa !8
  %i.fy = load i32, ptr %i.a, align 4, !tbaa !7
  %.not586 = icmp eq i32 %i.fy, 0
  br i1 %.not586, label %bb.ah, label %.thread

.thread:                                          ; preds = %.preheader640
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.critedge605

bb.ah:                                            ; preds = %.preheader640
  %i.fz = add nsw i32 %.3462671, -1               ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0488670, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not563 = icmp eq i32 %i.fz, 0
  br i1 %.not563, label %.split, label %.preheader640, !llvm.loop !15

.split:                                           ; preds = %bb.ah
  %i.gb = getelementptr inbounds nuw i8, ptr %i.di, i64 1777
  %.val607 = load i32, ptr %i.gb, align 1         ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16, i32 noundef %.val607) #7
  %i.gc = getelementptr inbounds nuw i8, ptr %i.di, i64 1877
  br i1 %i.dn, label %.lr.ph678.preheader, label %._crit_edge679

.lr.ph678.preheader:                              ; preds = %.split
  %wide.trip.count718 = zext nneg i32 %3 to i64
  br label %.lr.ph678

.lr.ph678:                                        ; preds = %.lr.ph678.preheader, %.loopexit
  %indvars.iv715 = phi i64 [ 0, %.lr.ph678.preheader ], [ %indvars.iv.next716, %.loopexit ] ; 2 uses
  %.1467677 = phi i32 [ %.val607, %.lr.ph678.preheader ], [ %i.gr, %.loopexit ] ; 2 uses
  %i.gd = and i32 %.1467677, 1
  %.not581 = icmp eq i32 %i.gd, 0
  br i1 %.not581, label %.loopexit, label %.preheader639

.preheader639:                                    ; preds = %.lr.ph678
  %i.ge = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv715 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !24 ; 2 uses
  %.not584672 = icmp eq i32 %i.gg, 0
  br i1 %.not584672, label %.loopexit, label %.lr.ph675.preheader

.lr.ph675.preheader:                              ; preds = %.preheader639
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !25
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 %i.gj
  br label %.lr.ph675

.lr.ph675:                                        ; preds = %.lr.ph675.preheader, %bb.ai
  %.0449674 = phi i32 [ %i.gp, %bb.ai ], [ %i.gg, %.lr.ph675.preheader ] ; 2 uses
  %.2490673 = phi ptr [ %i.gq, %bb.ai ], [ %i.gk, %.lr.ph675.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.gl = load i8, ptr %.2490673, align 1, !tbaa !8
  %i.gm = trunc i32 %.0449674 to i8
  %i.gn = call fastcc signext i8 @exec86(i8 noundef zeroext %i.gl, i8 noundef zeroext %i.gm, ptr noundef nonnull %i.gc, ptr noundef %i.b)
  store i8 %i.gn, ptr %.2490673, align 1, !tbaa !8
  %i.go = load i32, ptr %i.b, align 4, !tbaa !7
  %.not585 = icmp eq i32 %i.go, 0
  br i1 %.not585, label %bb.ai, label %.thread619

.thread619:                                       ; preds = %.lr.ph675
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.critedge605

bb.ai:                                            ; preds = %.lr.ph675
  %i.gp = add i32 %.0449674, -1                   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.2490673, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.not584 = icmp eq i32 %i.gp, 0
  br i1 %.not584, label %.loopexit, label %.lr.ph675, !llvm.loop !16

.loopexit:                                        ; preds = %bb.ai, %.preheader639, %.lr.ph678
  %i.gr = lshr i32 %.1467677, 1
  %indvars.iv.next716 = add nuw nsw i64 %indvars.iv715, 1 ; 2 uses
  %exitcond719.not = icmp eq i64 %indvars.iv.next716, %wide.trip.count718
  br i1 %exitcond719.not, label %._crit_edge679, label %.lr.ph678, !llvm.loop !17

._crit_edge679:                                   ; preds = %.loopexit, %.split
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #7
  %i.gs = getelementptr inbounds nuw i8, ptr %i.di, i64 12385
  %.val606 = load i32, ptr %i.gs, align 1         ; 10 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i32 noundef %.val606) #7
  %i.gt = shl nsw i64 %i.c, 3
  %i.gu = tail call ptr @cli_malloc(i64 noundef %i.gt) #7 ; 12 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %.critedge605, label %.preheader638

.preheader638:                                    ; preds = %._crit_edge679
  br i1 %i.dn, label %.lr.ph683, label %._crit_edge684.thread

.lr.ph683:                                        ; preds = %.preheader638
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %wide.trip.count723 = zext nneg i32 %3 to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph683, %bb.au
  %indvars.iv720 = phi i64 [ 0, %.lr.ph683 ], [ %indvars.iv.next721, %bb.au ] ; 8 uses
  %.2468682 = phi i32 [ %.val606, %.lr.ph683 ], [ %i.ih, %bb.au ] ; 2 uses
  %.0483680 = phi i32 [ 0, %.lr.ph683 ], [ %.1484, %bb.au ] ; 2 uses
  %i.gx = and i32 %.2468682, 1
  %.not564 = icmp eq i32 %i.gx, 0                 ; 2 uses
  %i.gy = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv720 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 12 ; 3 uses
  %.in = select i1 %.not564, ptr %i.ha, ptr %i.gz
  %i.hb = load i32, ptr %.in, align 4, !tbaa !7   ; 7 uses
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !38 ; 2 uses
  %.not565 = icmp eq ptr %i.hc, null
  br i1 %.not565, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !42 ; 4 uses
  %.not566 = icmp eq i64 %i.he, 0
  br i1 %.not566, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hf = zext i32 %i.hb to i64                   ; 2 uses
  %i.hg = icmp ult i64 %i.he, %i.hf
  br i1 %i.hg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = sext i32 %.0483680 to i64
  %i.hi = sub nuw i64 %i.he, %i.hf
  %i.hj = icmp ult i64 %i.hi, %i.hh
  br i1 %i.hj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hk = trunc nuw nsw i64 %indvars.iv720 to i32 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, i32 noundef %i.hk, i32 noundef %i.hb, i64 noundef %i.he) #7
  br label %bb.av

bb.ao:                                            ; preds = %bb.am, %bb.ak, %bb.aj
  br i1 %.not564, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hl = zext i32 %i.hb to i64
  %i.hm = tail call ptr @cli_calloc(i64 noundef %i.hl, i64 noundef 1) #7 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv720 ; 2 uses
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !44
  %i.ho = icmp eq ptr %i.hm, null
  br i1 %i.ho, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hp = trunc nuw nsw i64 %indvars.iv720 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i32 noundef %i.hb) #7
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.hq = load i32, ptr %i.ha, align 4, !tbaa !24
  %i.hr = trunc nuw nsw i64 %indvars.iv720 to i32 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.hr, i32 noundef %i.hq, i32 noundef %i.hb) #7
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !25
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 %i.hu
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !44
  %i.hx = load i32, ptr %i.ha, align 4, !tbaa !24
  %i.hy = tail call i32 @cli_unfsg(ptr noundef %i.hv, ptr noundef %i.hw, i32 noundef %i.hx, i32 noundef %i.hb, ptr noundef null, ptr noundef null) #7
  %i.hz = icmp eq i32 %i.hy, -1
  br i1 %i.hz, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ia = add nuw nsw i32 %i.hr, 1
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23) #7
  br label %bb.av

bb.at:                                            ; preds = %bb.ao
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !25
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv720
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !44
  %i.ig = trunc nuw nsw i64 %indvars.iv720 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24, i32 noundef %i.ig) #7
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.at
  %.1484 = add i32 %i.hb, %.0483680               ; 4 uses
  %i.ih = lshr i32 %.2468682, 1
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
  %exitcond724.not = icmp eq i64 %indvars.iv.next721, %wide.trip.count723
  br i1 %exitcond724.not, label %._crit_edge684, label %bb.aj, !llvm.loop !18

bb.av:                                            ; preds = %bb.an, %bb.aq, %bb.as
  %.3479.ph = phi i32 [ %i.ia, %bb.as ], [ %i.hp, %bb.aq ], [ %i.hk, %bb.an ] ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #7
  %i.ii = icmp sgt i32 %.3479.ph, 0
  br i1 %i.ii, label %.lr.ph703.preheader, label %._crit_edge704

.lr.ph703.preheader:                              ; preds = %bb.av
  %wide.trip.count728 = zext nneg i32 %.3479.ph to i64
  br label %.lr.ph703

.lr.ph703:                                        ; preds = %.lr.ph703.preheader, %bb.ax
  %indvars.iv725 = phi i64 [ 0, %.lr.ph703.preheader ], [ %indvars.iv.next726, %bb.ax ] ; 2 uses
  %.0463700 = phi i32 [ %.val606, %.lr.ph703.preheader ], [ %i.im, %bb.ax ] ; 2 uses
  %i.ij = and i32 %.0463700, 1
  %.not580 = icmp eq i32 %i.ij, 0
  br i1 %.not580, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph703
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv725
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !44
  tail call void @free(ptr noundef %i.il) #7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph703
  %i.im = lshr i32 %.0463700, 1
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %exitcond729.not = icmp eq i64 %indvars.iv.next726, %wide.trip.count728
  br i1 %exitcond729.not, label %._crit_edge704, label %.lr.ph703, !llvm.loop !19

._crit_edge704:                                   ; preds = %bb.ax, %bb.av
  tail call void @free(ptr noundef %i.gu) #7
  br label %.critedge605

._crit_edge684:                                   ; preds = %bb.au
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #7
  %i.in = getelementptr inbounds nuw i8, ptr %i.di, i64 12270
  %.val = load i32, ptr %i.in, align 1            ; 4 uses
  %.not568 = icmp eq i32 %.val, 0
  br i1 %.not568, label %bb.bg, label %.lr.ph686.preheader

._crit_edge684.thread:                            ; preds = %.preheader638
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #7
  %i.io = getelementptr inbounds nuw i8, ptr %i.di, i64 12270
  %.val769 = load i32, ptr %i.io, align 1         ; 2 uses
  %.not568770 = icmp eq i32 %.val769, 0
  br i1 %.not568770, label %bb.bg, label %._crit_edge687

.lr.ph686.preheader:                              ; preds = %._crit_edge684
  %wide.trip.count733 = zext nneg i32 %3 to i64
  br label %.lr.ph686

.lr.ph686:                                        ; preds = %.lr.ph686.preheader, %bb.az
  %indvars.iv730 = phi i64 [ 0, %.lr.ph686.preheader ], [ %indvars.iv.next731, %bb.az ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv730 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !26 ; 2 uses
  %.not569 = icmp ugt i32 %i.iq, %.val
  br i1 %.not569, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph686
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !24
  %i.it = add i32 %i.is, %i.iq
  %i.iu = icmp ugt i32 %i.it, %.val
  br i1 %i.iu, label %._crit_edge687.loopexit, label %bb.az

bb.az:                                            ; preds = %.lr.ph686, %bb.ay
  %indvars.iv.next731 = add nuw nsw i64 %indvars.iv730, 1 ; 2 uses
  %exitcond734.not = icmp eq i64 %indvars.iv.next731, %wide.trip.count733
  br i1 %exitcond734.not, label %._crit_edge687.thread, label %.lr.ph686, !llvm.loop !20

._crit_edge687.loopexit:                          ; preds = %bb.ay
  %i.iv = trunc nuw nsw i64 %indvars.iv730 to i32
  br label %._crit_edge687

._crit_edge687:                                   ; preds = %._crit_edge687.loopexit, %._crit_edge684.thread
  %.0483.lcssa771776 = phi i32 [ %.1484, %._crit_edge687.loopexit ], [ 0, %._crit_edge684.thread ] ; 5 uses
  %.val772775 = phi i32 [ %.val, %._crit_edge687.loopexit ], [ %.val769, %._crit_edge684.thread ] ; 6 uses
  %.5481.lcssa = phi i32 [ %i.iv, %._crit_edge687.loopexit ], [ 0, %._crit_edge684.thread ] ; 4 uses
  %.not570 = icmp eq i32 %.5481.lcssa, %3
  br i1 %.not570, label %._crit_edge687.thread, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge687
  %i.iw = shl nuw i32 1, %.5481.lcssa             ; 2 uses
  %i.ix = and i32 %i.iw, %.val606
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.bb, label %._crit_edge687.thread

bb.bb:                                            ; preds = %bb.ba
  %i.iz = zext nneg i32 %.5481.lcssa to i64       ; 2 uses
  %i.ja = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %i.iz ; 8 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !26 ; 2 uses
  %i.jc = sub i32 %.val772775, %i.jb              ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 5 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !45
  %i.jf = sub i32 %i.je, %i.jc
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i32 noundef %.5481.lcssa, i32 noundef %i.jb, i32 noundef %i.jc, i32 noundef %.val772775, i32 noundef %i.jf) #7
  %i.jg = load i32, ptr %i.jd, align 4, !tbaa !45
  %i.jh = zext i32 %i.jg to i64
  %i.ji = tail call ptr @cli_malloc(i64 noundef %i.jh) #7 ; 5 uses
  %.not571 = icmp eq ptr %i.ji, null
  br i1 %.not571, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !25
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 %i.jl
  %i.jn = load i32, ptr %i.ja, align 4, !tbaa !26
  %i.jo = sub i32 %.val772775, %i.jn
  %i.jp = zext i32 %i.jo to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ji, ptr align 1 %i.jm, i64 %i.jp, i1 false)
  %i.jq = zext i32 %.val772775 to i64             ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jq ; 2 uses
  %i.js = load i32, ptr %i.ja, align 4, !tbaa !26 ; 2 uses
  %i.jt = zext i32 %i.js to i64
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %i.jr, i64 %i.ju
  %i.jw = load i32, ptr %i.jd, align 4, !tbaa !45
  %.neg = sub i32 %i.js, %.val772775
  %i.jx = add i32 %.neg, %i.jw
  %i.jy = zext i32 %i.jx to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jv, i8 0, i64 %i.jy, i1 false)
  %i.jz = load i32, ptr %i.jj, align 4, !tbaa !25
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jq
  %i.kd = load i32, ptr %i.ja, align 4, !tbaa !26 ; 2 uses
  %i.ke = zext i32 %i.kd to i64
  %i.kf = sub nsw i64 0, %i.ke                    ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.kc, i64 %i.kf
  %i.kh = getelementptr inbounds i8, ptr %i.jr, i64 %i.kf
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ja, i64 12 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !24
  %i.kk = sub i32 %.val772775, %i.kd              ; 2 uses
  %i.kl = sub i32 %i.kj, %i.kk
  %i.km = load i32, ptr %i.jd, align 4, !tbaa !45
  %i.kn = sub i32 %i.km, %i.kk
  %i.ko = tail call i32 @cli_unfsg(ptr noundef nonnull %i.kg, ptr noundef nonnull %i.kh, i32 noundef %i.kl, i32 noundef %i.kn, ptr noundef null, ptr noundef null) #7
  %.not572 = icmp eq i32 %i.ko, 0
  br i1 %.not572, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @free(ptr noundef nonnull %i.ji) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27) #7
  %i.kp = load i32, ptr %i.ki, align 4, !tbaa !24
  %i.kq = add i32 %i.kp, %.0483.lcssa771776
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.iz
  store ptr %i.ji, ptr %i.kr, align 8, !tbaa !44
  %i.ks = or i32 %i.iw, %.val606
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28) #7
  %i.kt = load i32, ptr %i.jd, align 4, !tbaa !45
  %i.ku = add i32 %i.kt, %.0483.lcssa771776
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !24
  %i.kx = add i32 %i.kw, %.0483.lcssa771776
  br label %bb.bg

._crit_edge687.thread:                            ; preds = %bb.az, %bb.ba, %._crit_edge687
  %.0483.lcssa771776781 = phi i32 [ %.0483.lcssa771776, %._crit_edge687 ], [ %.0483.lcssa771776, %bb.ba ], [ %.1484, %bb.az ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29) #7
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge684.thread, %._crit_edge687.thread, %bb.bd, %bb.be, %bb.bf, %._crit_edge684
  %.4487 = phi i32 [ %i.kq, %bb.bd ], [ %i.ku, %bb.be ], [ %i.kx, %bb.bf ], [ %.0483.lcssa771776781, %._crit_edge687.thread ], [ %.1484, %._crit_edge684 ], [ 0, %._crit_edge684.thread ]
  %.1464 = phi i32 [ %.val606, %bb.bd ], [ %i.ks, %bb.be ], [ %.val606, %bb.bf ], [ %.val606, %._crit_edge687.thread ], [ %.val606, %._crit_edge684 ], [ %.val606, %._crit_edge684.thread ] ; 4 uses
  %i.ky = sext i32 %.4487 to i64
  %i.kz = tail call ptr @cli_malloc(i64 noundef %i.ky) #7 ; 6 uses
  %.not573 = icmp eq ptr %i.kz, null
  br i1 %.not573, label %bb.bp, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.la = mul nsw i64 %i.c, 36
  %i.lb = tail call ptr @cli_malloc(i64 noundef %i.la) #7 ; 8 uses
  %.not574 = icmp eq ptr %i.lb, null
  br i1 %.not574, label %.thread633, label %.preheader

.preheader:                                       ; preds = %bb.bh
  br i1 %i.dn, label %bb.bi, label %._crit_edge695

bb.bi:                                            ; preds = %.preheader
  %wide.trip.count738 = zext nneg i32 %3 to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i32 0, ptr %i.lc, align 4, !tbaa !25
  %i.ld = and i32 %.1464, 1
  %.not578.peel = icmp eq i32 %i.ld, 0            ; 2 uses
  %.in579.peel.v = select i1 %.not578.peel, i64 12, i64 4
  %.in579.peel = getelementptr inbounds nuw i8, ptr %2, i64 %.in579.peel.v
  %i.le = load i32, ptr %.in579.peel, align 4, !tbaa !7 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 12 ; 2 uses
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !24
  %i.lg = load <2 x i32>, ptr %2, align 4, !tbaa !7
  store <2 x i32> %i.lg, ptr %i.lb, align 4, !tbaa !7
  %i.lh = load ptr, ptr %i.gu, align 8, !tbaa !44
  %i.li = zext i32 %i.le to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kz, ptr align 1 %i.lh, i64 %i.li, i1 false)
  %i.lj = load i32, ptr %i.lf, align 4, !tbaa !24
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lk
  br i1 %.not578.peel, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lm = load ptr, ptr %i.gu, align 8, !tbaa !44
end_hunk_0
