inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@unspin:bb.a
  %i.cx = load i32, ptr %i.j, align 4, !tbaa !10
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  %i.da = load i32, ptr %i.e, align 4, !tbaa !8
  %i.db = zext i32 %i.da to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr nonnull align 1 %i.h, i64 %i.db, i1 false)
  tail call void @free(ptr noundef nonnull %i.h) #7
  %i.dc = load i32, ptr %i.j, align 4, !tbaa !10
  %i.dd = zext i32 %i.dc to i64
  %i.de = add nuw nsw i64 %i.dd, %i.p
  %i.df = load i32, ptr %i.d, align 4, !tbaa !11
  %i.dg = zext i32 %i.df to i64
  %i.dh = sub nsw i64 %i.de, %i.dg                ; 5 uses
  %i.di = getelementptr inbounds i8, ptr %0, i64 %i.dh ; 12 uses
  %i.dj = icmp sgt i32 %1, 3
  br i1 %i.dj, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 12807
  %.not554 = icmp slt i64 %i.dh, -12807
  br i1 %.not554, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = zext nneg i32 %1 to i64                 ; 2 uses
  %i.dm = add nsw i64 %i.dh, 12811
  %.not555 = icmp samesign ugt i64 %i.dm, %i.dl
  br i1 %.not555, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #7
  br label %.critedge605

bb.y:                                             ; preds = %bb.w
  %.val611 = load i32, ptr %i.dk, align 1         ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %i.cw, i32 noundef %.val611) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #7
  %i.dn = icmp sgt i32 %3, 0                      ; 4 uses
  br i1 %i.dn, label %.lr.ph666.preheader, label %._crit_edge

.lr.ph666.preheader:                              ; preds = %bb.y
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.do = and i32 %i.cw, 1
  %.not594.prol = icmp eq i32 %i.do, 0
  %i.dp = lshr i32 %i.cw, 1                       ; 2 uses
  %i.dq = xor i32 %i.dp, -314331343
  %.1455.prol = select i1 %.not594.prol, i32 %i.dq, i32 %i.dp ; 2 uses
  %i.dr = trunc i32 %.1455.prol to i8
  br label %.lr.ph666

.lr.ph666:                                        ; preds = %.lr.ph666.preheader, %.loopexit643
  %indvars.iv = phi i64 [ 0, %.lr.ph666.preheader ], [ %indvars.iv.next, %.loopexit643 ] ; 3 uses
  %.0475665 = phi i32 [ %.val611, %.lr.ph666.preheader ], [ %i.ey, %.loopexit643 ] ; 2 uses
  %i.ds = and i32 %.0475665, 1
  %.not588 = icmp eq i32 %i.ds, 0
  br i1 %.not588, label %.loopexit643, label %bb.z

bb.z:                                             ; preds = %.lr.ph666
  %i.dt = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8  ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !10
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = add i32 %i.dv, -1                       ; 2 uses
  %or.cond597 = icmp uge i32 %i.dz, %1
  %i.ea = zext nneg i32 %i.dv to i64
  %i.eb = add nuw nsw i64 %i.dy, %i.ea
  %.not592 = icmp samesign ugt i64 %i.eb, %i.dl
  %or.cond600 = select i1 %or.cond597, i1 true, i1 %.not592
  br i1 %or.cond600, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.dy ; 4 uses
  %xtraiter = and i32 %i.dv, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ed = add nsw i32 %i.dv, -1
  %i.ee = load i8, ptr %i.ec, align 1, !tbaa !12
  %i.ef = xor i8 %i.ee, %i.dr
  store i8 %i.ef, ptr %i.ec, align 1, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0454663.unr = phi i32 [ %i.cw, %.lr.ph.preheader ], [ %.1455.prol, %.lr.ph.prol ]
  %.0456662.unr = phi ptr [ %i.ec, %.lr.ph.preheader ], [ %i.eg, %.lr.ph.prol ]
  %.0457661.unr = phi i32 [ %i.dv, %.lr.ph.preheader ], [ %i.ed, %.lr.ph.prol ]
  %i.eh = icmp eq i32 %i.dz, 0
  br i1 %i.eh, label %.loopexit643, label %.lr.ph

.critedge:                                        ; preds = %bb.z
  %i.ei = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.ei) #7
  br label %.critedge605

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0454663 = phi i32 [ %.1455.1, %.lr.ph ], [ %.0454663.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0456662 = phi ptr [ %i.ex, %.lr.ph ], [ %.0456662.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0457661 = phi i32 [ %i.eq, %.lr.ph ], [ %.0457661.unr, %.lr.ph.prol.loopexit ]
  %i.ej = and i32 %.0454663, 1
  %.not594 = icmp eq i32 %i.ej, 0
  %i.ek = lshr i32 %.0454663, 1                   ; 2 uses
  %i.el = xor i32 %i.ek, -314331343
  %.1455 = select i1 %.not594, i32 %i.el, i32 %i.ek ; 3 uses
  %i.em = load i8, ptr %.0456662, align 1, !tbaa !12
  %i.en = trunc i32 %.1455 to i8
  %i.eo = xor i8 %i.em, %i.en
  store i8 %i.eo, ptr %.0456662, align 1, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %.0456662, i64 1 ; 2 uses
  %i.eq = add i32 %.0457661, -2                   ; 2 uses
  %i.er = and i32 %.1455, 1
  %.not594.1 = icmp eq i32 %i.er, 0
  %i.es = lshr i32 %.1455, 1                      ; 2 uses
  %i.et = xor i32 %i.es, -314331343
  %.1455.1 = select i1 %.not594.1, i32 %i.et, i32 %i.es ; 2 uses
  %i.eu = load i8, ptr %i.ep, align 1, !tbaa !12
  %i.ev = trunc i32 %.1455.1 to i8
  %i.ew = xor i8 %i.eu, %i.ev
  store i8 %i.ew, ptr %i.ep, align 1, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %.0456662, i64 2
  %.not593.1 = icmp eq i32 %i.eq, 0
  br i1 %.not593.1, label %.loopexit643, label %.lr.ph, !llvm.loop !18

.loopexit643:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph666
  %i.ey = lshr i32 %.0475665, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph666, !llvm.loop !19

._crit_edge:                                      ; preds = %.loopexit643, %bb.y
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.di, i64 1604
  %.val610 = load i32, ptr %i.ez, align 1
  %.not556 = icmp eq i32 %.val610, 384
  br i1 %.not556, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #7
  br label %.critedge605

bb.ab:                                            ; preds = %._crit_edge
  %i.fa = getelementptr inbounds nuw i8, ptr %i.di, i64 1616
  %.val609 = load i32, ptr %i.fa, align 1         ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, i32 noundef %.val609, i32 noundef 384) #7
  %i.fb = icmp ult i32 %1, 384
  %.not557 = icmp slt i64 %i.dh, -10451
  %or.cond601 = select i1 %i.fb, i1 true, i1 %.not557
  br i1 %or.cond601, label %bb.ac, label %.preheader641.preheader

.preheader641.preheader:                          ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.di, i64 10451
  br label %.preheader641

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #7
  br label %.critedge605

.preheader641:                                    ; preds = %.preheader641, %.preheader641.preheader
  %.2452669 = phi ptr [ %i.fc, %.preheader641.preheader ], [ %i.fr, %.preheader641 ] ; 4 uses
  %.2470668 = phi i32 [ 384, %.preheader641.preheader ], [ %i.fk, %.preheader641 ]
  %.2484667 = phi i32 [ %.val609, %.preheader641.preheader ], [ %.3485.1, %.preheader641 ] ; 2 uses
  %i.fd = and i32 %.2484667, 1
  %.not587 = icmp eq i32 %i.fd, 0
  %i.fe = lshr i32 %.2484667, 1                   ; 2 uses
  %i.ff = xor i32 %i.fe, -314331342
  %.3485 = select i1 %.not587, i32 %i.fe, i32 %i.ff ; 3 uses
  %i.fg = load i8, ptr %.2452669, align 1, !tbaa !12
  %i.fh = trunc i32 %.3485 to i8
  %i.fi = xor i8 %i.fg, %i.fh
  store i8 %i.fi, ptr %.2452669, align 1, !tbaa !12
  %i.fj = getelementptr inbounds nuw i8, ptr %.2452669, i64 1 ; 2 uses
  %i.fk = add nsw i32 %.2470668, -2               ; 2 uses
  %i.fl = and i32 %.3485, 1
  %.not587.1 = icmp eq i32 %i.fl, 0
  %i.fm = lshr i32 %.3485, 1                      ; 2 uses
  %i.fn = xor i32 %i.fm, -314331342
  %.3485.1 = select i1 %.not587.1, i32 %i.fm, i32 %i.fn ; 2 uses
  %i.fo = load i8, ptr %i.fj, align 1, !tbaa !12
  %i.fp = trunc i32 %.3485.1 to i8
  %i.fq = xor i8 %i.fo, %i.fp
  store i8 %i.fq, ptr %i.fj, align 1, !tbaa !12
  %i.fr = getelementptr inbounds nuw i8, ptr %.2452669, i64 2
  %.not559.1 = icmp eq i32 %i.fk, 0
  br i1 %.not559.1, label %bb.ad, label %.preheader641, !llvm.loop !20

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
  %7 = icmp ult i32 %1, 417
  %.not561 = icmp slt i64 %i.dh, -1748
  %or.cond602 = select i1 %7, i1 true, i1 %.not561
  br i1 %or.cond602, label %bb.ag, label %.preheader640.preheader

.preheader640.preheader:                          ; preds = %bb.af
  %i.fu = getelementptr inbounds nuw i8, ptr %i.di, i64 1748
  br label %.preheader640

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #7
  br label %.critedge605

.preheader640:                                    ; preds = %.preheader640.preheader, %bb.ah
  %.3471671 = phi i32 [ %i.fz, %bb.ah ], [ 417, %.preheader640.preheader ] ; 2 uses
  %.0499670 = phi ptr [ %i.ga, %bb.ah ], [ %i.fu, %.preheader640.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.fv = load i8, ptr %.0499670, align 1, !tbaa !12
  %i.fw = trunc i32 %.3471671 to i8
  %i.fx = call fastcc signext i8 @exec86(i8 noundef zeroext %i.fv, i8 noundef zeroext %i.fw, ptr noundef nonnull %i.ft, ptr noundef %i.a)
  store i8 %i.fx, ptr %.0499670, align 1, !tbaa !12
  %i.fy = load i32, ptr %i.a, align 4, !tbaa !4
  %.not586 = icmp eq i32 %i.fy, 0
  br i1 %.not586, label %bb.ah, label %.thread

.thread:                                          ; preds = %.preheader640
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.critedge605

bb.ah:                                            ; preds = %.preheader640
  %i.fz = add nsw i32 %.3471671, -1               ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0499670, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not563 = icmp eq i32 %i.fz, 0
  br i1 %.not563, label %.split, label %.preheader640, !llvm.loop !21

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
  %.1476677 = phi i32 [ %.val607, %.lr.ph678.preheader ], [ %i.gr, %.loopexit ] ; 2 uses
  %i.gd = and i32 %.1476677, 1
  %.not581 = icmp eq i32 %i.gd, 0
  br i1 %.not581, label %.loopexit, label %.preheader639

.preheader639:                                    ; preds = %.lr.ph678
  %i.ge = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv715 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !8  ; 2 uses
  %.not584672 = icmp eq i32 %i.gg, 0
  br i1 %.not584672, label %.loopexit, label %.lr.ph675.preheader

.lr.ph675.preheader:                              ; preds = %.preheader639
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !10
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 %i.gj
  br label %.lr.ph675

.lr.ph675:                                        ; preds = %.lr.ph675.preheader, %bb.ai
  %.0453674 = phi i32 [ %i.gp, %bb.ai ], [ %i.gg, %.lr.ph675.preheader ] ; 2 uses
  %.2501673 = phi ptr [ %i.gq, %bb.ai ], [ %i.gk, %.lr.ph675.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.gl = load i8, ptr %.2501673, align 1, !tbaa !12
  %i.gm = trunc i32 %.0453674 to i8
  %i.gn = call fastcc signext i8 @exec86(i8 noundef zeroext %i.gl, i8 noundef zeroext %i.gm, ptr noundef nonnull %i.gc, ptr noundef %i.b)
  store i8 %i.gn, ptr %.2501673, align 1, !tbaa !12
  %i.go = load i32, ptr %i.b, align 4, !tbaa !4
  %.not585 = icmp eq i32 %i.go, 0
  br i1 %.not585, label %bb.ai, label %.thread619

.thread619:                                       ; preds = %.lr.ph675
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.critedge605

bb.ai:                                            ; preds = %.lr.ph675
  %i.gp = add i32 %.0453674, -1                   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.2501673, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.not584 = icmp eq i32 %i.gp, 0
  br i1 %.not584, label %.loopexit, label %.lr.ph675, !llvm.loop !22

.loopexit:                                        ; preds = %bb.ai, %.preheader639, %.lr.ph678
  %i.gr = lshr i32 %.1476677, 1
  %indvars.iv.next716 = add nuw nsw i64 %indvars.iv715, 1 ; 2 uses
  %exitcond719.not = icmp eq i64 %indvars.iv.next716, %wide.trip.count718
  br i1 %exitcond719.not, label %._crit_edge679, label %.lr.ph678, !llvm.loop !23

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
  %.2477682 = phi i32 [ %.val606, %.lr.ph683 ], [ %i.ih, %bb.au ] ; 2 uses
  %.0494680 = phi i32 [ 0, %.lr.ph683 ], [ %.1495, %bb.au ] ; 2 uses
  %i.gx = and i32 %.2477682, 1
  %.not564 = icmp eq i32 %i.gx, 0                 ; 2 uses
  %i.gy = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv720 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 12 ; 3 uses
  %.in = select i1 %.not564, ptr %i.ha, ptr %i.gz
  %i.hb = load i32, ptr %.in, align 4, !tbaa !4   ; 7 uses
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !24 ; 2 uses
  %.not565 = icmp eq ptr %i.hc, null
  br i1 %.not565, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !34 ; 4 uses
  %.not566 = icmp eq i64 %i.he, 0
  br i1 %.not566, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hf = zext i32 %i.hb to i64                   ; 2 uses
  %i.hg = icmp ult i64 %i.he, %i.hf
  br i1 %i.hg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = sext i32 %.0494680 to i64
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
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !38
  %i.ho = icmp eq ptr %i.hm, null
  br i1 %i.ho, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hp = trunc nuw nsw i64 %indvars.iv720 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i32 noundef %i.hb) #7
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.hq = load i32, ptr %i.ha, align 4, !tbaa !8
  %i.hr = trunc nuw nsw i64 %indvars.iv720 to i32 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.hr, i32 noundef %i.hq, i32 noundef %i.hb) #7
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !10
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 %i.hu
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !38
  %i.hx = load i32, ptr %i.ha, align 4, !tbaa !8
  %i.hy = tail call i32 @cli_unfsg(ptr noundef %i.hv, ptr noundef %i.hw, i32 noundef %i.hx, i32 noundef %i.hb, ptr noundef null, ptr noundef null) #7
  %i.hz = icmp eq i32 %i.hy, -1
  br i1 %i.hz, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ia = add nuw nsw i32 %i.hr, 1
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23) #7
  br label %bb.av

bb.at:                                            ; preds = %bb.ao
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !10
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv720
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !38
  %i.ig = trunc nuw nsw i64 %indvars.iv720 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24, i32 noundef %i.ig) #7
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.at
  %.1495 = add i32 %i.hb, %.0494680               ; 4 uses
  %i.ih = lshr i32 %.2477682, 1
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
end_hunk_0
