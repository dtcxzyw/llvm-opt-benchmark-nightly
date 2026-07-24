inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@vorbis_bitrate_addblock:bb.a
  %.idx = mul i64 %i.or, %i.pt
  %i.pu = getelementptr i8, ptr %i.ps, i64 %.idx
  %i.pv = getelementptr [8 x i8], ptr %i.pu, i64 %i.oq
  %i.pw = getelementptr [8 x i8], ptr %i.pv, i64 %indvars.iv596 ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8
  %i.py = add nsw i64 %i.pr, %i.px
  store i64 %i.py, ptr %i.pw, align 8
  %i.pz = tail call i32 @llvm.umin.i32(i32 %i.pf, i32 %i.pg)
  %i.qa = zext nneg i32 %i.pz to i64
  %.val471 = load ptr, ptr %i.g, align 8
  %.val472 = load i32, ptr %i.p, align 8
  %i.qb = sext i32 %.val472 to i64
  %i.qc = mul nsw i64 %i.qb, %i.ox
  %i.qd = getelementptr [4 x i8], ptr %.val471, i64 %i.qc
  %i.qe = getelementptr [4 x i8], ptr %i.qd, i64 %i.qa
  %i.qf = load i32, ptr %i.qe, align 4            ; 2 uses
  %i.qg = zext i32 %i.qf to i64
  %i.qh = udiv i32 %i.qf, 255
  %narrow.i488 = add nuw nsw i32 %i.qh, 1
  %i.qi = zext nneg i32 %narrow.i488 to i64
  %i.qj = add nuw nsw i64 %i.qi, %i.qg
  %i.qk = load ptr, ptr %i.on, align 8
  %i.ql = load i64, ptr %i.op, align 8
  %.idx448 = mul i64 %i.or, %i.ql
  %i.qm = getelementptr i8, ptr %i.qk, i64 %.idx448
  %i.qn = getelementptr [8 x i8], ptr %i.qm, i64 %indvars.iv596 ; 2 uses
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = add nsw i64 %i.qj, %i.qo
  store i64 %i.qp, ptr %i.qn, align 8
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 2 uses
  %exitcond600.not = icmp eq i64 %indvars.iv.next597, %wide.trip.count599
  br i1 %exitcond600.not, label %._crit_edge554, label %.lr.ph553, !llvm.loop !120

._crit_edge554:                                   ; preds = %.lr.ph553, %bb.x
  %i.qq = load ptr, ptr %i.os, align 8
  %i.qr = load i64, ptr %i.op, align 8
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.qq, i64 %i.qr
  store i64 %i.ox, ptr %i.qs, align 8
  %i.qt = load ptr, ptr %i.ot, align 8
  %i.qu = load i64, ptr %i.op, align 8
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.qt, i64 %i.qu
  store i64 0, ptr %i.qv, align 8
  %i.qw = load i32, ptr %i.ou, align 4
  %i.qx = add i32 %i.qw, %i.pe                    ; 2 uses
  store i32 %i.qx, ptr %i.ou, align 4
  %i.qy = zext nneg i32 %i.pf to i64
  %.val469 = load ptr, ptr %i.g, align 8
  %.val470 = load i32, ptr %i.p, align 8
  %i.qz = sext i32 %.val470 to i64
  %i.ra = mul nsw i64 %i.qz, %i.ox
  %i.rb = getelementptr [4 x i8], ptr %.val469, i64 %i.ra
  %i.rc = getelementptr [4 x i8], ptr %i.rb, i64 %i.qy
  %i.rd = load i32, ptr %i.rc, align 4            ; 2 uses
  %i.re = zext i32 %i.rd to i64
  %i.rf = udiv i32 %i.rd, 255
  %narrow.i489 = add nuw nsw i32 %i.rf, 1
  %i.rg = zext nneg i32 %narrow.i489 to i64
  %i.rh = load i64, ptr %i.ov, align 8
  %i.ri = add i64 %i.rh, %i.re
  %i.rj = add i64 %i.ri, %i.rg
  store i64 %i.rj, ptr %i.ov, align 8
  %i.rk = add nsw i32 %.1399556, 1                ; 2 uses
  %i.rl = load i32, ptr %i.ax, align 8
  %.not447 = icmp slt i32 %i.rk, %i.rl
  %spec.store.select3 = select i1 %.not447, i32 %i.rk, i32 0 ; 2 uses
  %.not441 = icmp eq i32 %spec.store.select3, %.3410513518
  br i1 %.not441, label %._crit_edge559, label %bb.x, !llvm.loop !121

._crit_edge559:                                   ; preds = %._crit_edge554, %.._crit_edge559_crit_edge
  %i.rm = phi i32 [ %.pre636, %.._crit_edge559_crit_edge ], [ %i.qx, %._crit_edge554 ] ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.f, i64 252 ; 4 uses
  %i.ro = zext i32 %i.rm to i64                   ; 3 uses
  %i.rp = icmp samesign ult i64 %i.oo, %i.ro
  br i1 %i.rp, label %bb.y, label %bb.al

bb.y:                                             ; preds = %._crit_edge559
  %i.rq = getelementptr inbounds nuw i8, ptr %i.f, i64 240 ; 4 uses
  %i.rr = load i64, ptr %i.rq, align 8            ; 3 uses
  %i.rs = shl nsw i64 %i.rr, 3
  %i.rt = sitofp i64 %i.rs to double
  %i.ru = uitofp i32 %i.rm to double              ; 3 uses
  %i.rv = fdiv double %i.rt, %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.rx = load i64, ptr %i.rw, align 8
  %i.ry = sitofp i64 %i.rx to double              ; 3 uses
  %i.rz = fmul double %i.rv, %i.ry                ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.k, i64 5472
  %i.sb = load double, ptr %i.sa, align 8         ; 4 uses
  %i.sc = fcmp ogt double %i.sb, 0.000000e+00
  %i.sd = fcmp ogt double %i.rz, %i.sb
  %or.cond457 = select i1 %i.sc, i1 %i.sd, i1 false
  br i1 %or.cond457, label %.preheader536, label %bb.z

.preheader536:                                    ; preds = %bb.y
  %i.se = sub i32 1, %i.q                         ; 3 uses
  %i.sf = icmp slt i32 %i.se, -1
  br i1 %i.sf, label %.lr.ph567, label %.loopexit537

.lr.ph567:                                        ; preds = %.preheader536
  %i.sg = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.sh = load i64, ptr %i.sg, align 8            ; 3 uses
  %i.si = trunc i64 %i.sh to i32
  %i.sj = load i32, ptr %i.p, align 8
  %i.sk = sext i32 %i.sj to i64                   ; 5 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.sm = load ptr, ptr %i.sl, align 8            ; 2 uses
  %sext.i = shl i64 %i.sh, 32
  %i.sn = ashr exact i64 %sext.i, 28
  %.idx.i = mul i64 %i.sn, %i.sk
  %i.so = getelementptr i8, ptr %i.sm, i64 %.idx.i ; 2 uses
  %i.sp = getelementptr [8 x i8], ptr %i.so, i64 %i.sk
  %i.sq = load i64, ptr %i.sp, align 8
  %i.sr = sub i64 %i.rr, %i.sq
  %i.ss = icmp sgt i32 %i.si, 0
  %i.st = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.su = shl nsw i64 %i.sk, 4
  %i.sv = and i64 %i.sh, 2147483647
  %i.sw = sext i32 %i.se to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.sx = getelementptr inbounds nuw i8, ptr %i.k, i64 5464
  %i.sy = load double, ptr %i.sx, align 8         ; 3 uses
  %i.sz = fcmp ogt double %i.sy, 0.000000e+00
  %i.ta = fcmp olt double %i.rz, %i.sy
  %or.cond458 = select i1 %i.sz, i1 %i.ta, i1 false
  br i1 %or.cond458, label %.preheader538, label %bb.al

bb.aa:                                            ; preds = %.lr.ph567, %bb.ad
  %indvars.iv606 = phi i64 [ -1, %.lr.ph567 ], [ %indvars.iv.next607, %bb.ad ] ; 4 uses
  %i.tb = add nsw i64 %indvars.iv606, %i.sk       ; 2 uses
  %i.tc = getelementptr [8 x i8], ptr %i.so, i64 %i.tb
  %i.td = load i64, ptr %i.tc, align 8
  %i.te = add nsw i64 %i.sr, %i.td                ; 2 uses
  br i1 %i.ss, label %.lr.ph.i, label %limit_sum.exit

.lr.ph.i:                                         ; preds = %bb.aa
  %i.tf = load ptr, ptr %i.st, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.lr.ph.i
  %indvars.iv.i490 = phi i64 [ %i.sv, %.lr.ph.i ], [ %indvars.iv.next.i491, %bb.ac ] ; 2 uses
  %.03135.i = phi i64 [ %i.te, %.lr.ph.i ], [ %i.tp, %bb.ac ] ; 2 uses
  %indvars.iv.next.i491 = add nsw i64 %indvars.iv.i490, -1 ; 3 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv.next.i491
  %i.th = load i64, ptr %i.tg, align 8            ; 2 uses
  %.not.i = icmp sgt i64 %i.th, %indvars.iv606
  br i1 %.not.i, label %bb.ac, label %limit_sum.exit

bb.ac:                                            ; preds = %bb.ab
  %.idx33.i = mul i64 %i.su, %indvars.iv.next.i491
  %i.ti = getelementptr i8, ptr %i.sm, i64 %.idx33.i ; 2 uses
  %i.tj = getelementptr [8 x i8], ptr %i.ti, i64 %i.th
  %i.tk = getelementptr [8 x i8], ptr %i.tj, i64 %i.sk
  %i.tl = load i64, ptr %i.tk, align 8
  %i.tm = sub i64 %.03135.i, %i.tl
  %i.tn = getelementptr [8 x i8], ptr %i.ti, i64 %i.tb
  %i.to = load i64, ptr %i.tn, align 8
  %i.tp = add nsw i64 %i.tm, %i.to                ; 2 uses
  %i.tq = icmp samesign ugt i64 %indvars.iv.i490, 1
  br i1 %i.tq, label %bb.ab, label %limit_sum.exit, !llvm.loop !122

limit_sum.exit:                                   ; preds = %bb.ab, %bb.ac, %bb.aa
  %.031.lcssa.i = phi i64 [ %i.te, %bb.aa ], [ %i.tp, %bb.ac ], [ %.03135.i, %bb.ab ]
  %i.tr = shl nsw i64 %.031.lcssa.i, 3
  %i.ts = sitofp i64 %i.tr to double
  %i.tt = fdiv double %i.ts, %i.ru
  %i.tu = fmul double %i.tt, %i.ry
  %i.tv = fcmp ugt double %i.tu, %i.sb
  br i1 %i.tv, label %bb.ad, label %.loopexit537.loopexit.split.loop.exit

bb.ad:                                            ; preds = %limit_sum.exit
  %indvars.iv.next607 = add nsw i64 %indvars.iv606, -1 ; 2 uses
  %i.tw = icmp sgt i64 %indvars.iv.next607, %i.sw
  br i1 %i.tw, label %bb.aa, label %.loopexit537, !llvm.loop !123

.preheader538:                                    ; preds = %bb.z
  %i.tx = add i32 %i.q, -1                        ; 2 uses
  %i.ty = icmp sgt i32 %i.q, 2
  br i1 %i.ty, label %.lr.ph561, label %limit_sum.exit501._crit_edge

.lr.ph561:                                        ; preds = %.preheader538
  %i.tz = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.ua = load i64, ptr %i.tz, align 8            ; 3 uses
  %i.ub = trunc i64 %i.ua to i32
  %i.uc = load i32, ptr %i.p, align 8
  %i.ud = sext i32 %i.uc to i64                   ; 5 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.uf = load ptr, ptr %i.ue, align 8            ; 2 uses
  %sext.i492 = shl i64 %i.ua, 32
  %i.ug = ashr exact i64 %sext.i492, 28
  %.idx.i493 = mul i64 %i.ug, %i.ud
  %i.uh = getelementptr i8, ptr %i.uf, i64 %.idx.i493 ; 2 uses
  %i.ui = getelementptr [8 x i8], ptr %i.uh, i64 %i.ud
  %i.uj = load i64, ptr %i.ui, align 8
  %i.uk = sub i64 %i.rr, %i.uj
  %i.ul = icmp sgt i32 %i.ub, 0
  %i.um = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.un = shl nsw i64 %i.ud, 4
  %i.uo = and i64 %i.ua, 2147483647
  %wide.trip.count604 = zext nneg i32 %i.tx to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph561, %bb.ah
  %indvars.iv601 = phi i64 [ 1, %.lr.ph561 ], [ %indvars.iv.next602, %bb.ah ] ; 4 uses
  %i.up = add nsw i64 %indvars.iv601, %i.ud       ; 2 uses
  %i.uq = getelementptr [8 x i8], ptr %i.uh, i64 %i.up
  %i.ur = load i64, ptr %i.uq, align 8
  %i.us = add nsw i64 %i.uk, %i.ur                ; 2 uses
  br i1 %i.ul, label %.lr.ph.i495, label %limit_sum.exit501

.lr.ph.i495:                                      ; preds = %bb.ae
  %i.ut = load ptr, ptr %i.um, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i495
  %indvars.iv.i496 = phi i64 [ %i.uo, %.lr.ph.i495 ], [ %indvars.iv.next.i498, %bb.ag ] ; 2 uses
  %.03135.i497 = phi i64 [ %i.us, %.lr.ph.i495 ], [ %i.vd, %bb.ag ] ; 2 uses
  %indvars.iv.next.i498 = add nsw i64 %indvars.iv.i496, -1 ; 3 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %indvars.iv.next.i498
  %i.uv = load i64, ptr %i.uu, align 8            ; 2 uses
  %.not.i499 = icmp sgt i64 %i.uv, %indvars.iv601
  br i1 %.not.i499, label %bb.ag, label %limit_sum.exit501

bb.ag:                                            ; preds = %bb.af
  %.idx33.i500 = mul i64 %i.un, %indvars.iv.next.i498
  %i.uw = getelementptr i8, ptr %i.uf, i64 %.idx33.i500 ; 2 uses
  %i.ux = getelementptr [8 x i8], ptr %i.uw, i64 %i.uv
  %i.uy = getelementptr [8 x i8], ptr %i.ux, i64 %i.ud
  %i.uz = load i64, ptr %i.uy, align 8
  %i.va = sub i64 %.03135.i497, %i.uz
  %i.vb = getelementptr [8 x i8], ptr %i.uw, i64 %i.up
  %i.vc = load i64, ptr %i.vb, align 8
  %i.vd = add nsw i64 %i.va, %i.vc                ; 2 uses
  %i.ve = icmp samesign ugt i64 %indvars.iv.i496, 1
  br i1 %i.ve, label %bb.af, label %limit_sum.exit501, !llvm.loop !122

limit_sum.exit501:                                ; preds = %bb.af, %bb.ag, %bb.ae
  %.031.lcssa.i494 = phi i64 [ %i.us, %bb.ae ], [ %i.vd, %bb.ag ], [ %.03135.i497, %bb.af ]
  %i.vf = shl nsw i64 %.031.lcssa.i494, 3
  %i.vg = sitofp i64 %i.vf to double
  %i.vh = fdiv double %i.vg, %i.ru
  %i.vi = fmul double %i.vh, %i.ry                ; 3 uses
  %i.vj = fcmp ult double %i.vi, %i.sy
  br i1 %i.vj, label %bb.ah, label %limit_sum.exit501._crit_edge.loopexit.split.loop.exit

bb.ah:                                            ; preds = %limit_sum.exit501
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601, 1 ; 2 uses
  %exitcond605.not = icmp eq i64 %indvars.iv.next602, %wide.trip.count604
  br i1 %exitcond605.not, label %limit_sum.exit501._crit_edge, label %bb.ae, !llvm.loop !124

limit_sum.exit501._crit_edge.loopexit.split.loop.exit: ; preds = %limit_sum.exit501
  %i.vk = trunc nuw nsw i64 %indvars.iv601 to i32
  br label %limit_sum.exit501._crit_edge

limit_sum.exit501._crit_edge:                     ; preds = %bb.ah, %limit_sum.exit501._crit_edge.loopexit.split.loop.exit, %.preheader538
  %.1403.lcssa = phi i32 [ 1, %.preheader538 ], [ %i.vk, %limit_sum.exit501._crit_edge.loopexit.split.loop.exit ], [ %i.tx, %bb.ah ] ; 2 uses
  %.1406 = phi double [ %i.rz, %.preheader538 ], [ %i.vi, %limit_sum.exit501._crit_edge.loopexit.split.loop.exit ], [ %i.vi, %bb.ah ]
  %i.vl = fcmp ogt double %.1406, %i.sb
  br i1 %i.vl, label %bb.ai, label %.loopexit537

bb.ai:                                            ; preds = %limit_sum.exit501._crit_edge
  %i.vm = add nsw i32 %.1403.lcssa, -1
  br label %.loopexit537

.loopexit537.loopexit.split.loop.exit:            ; preds = %limit_sum.exit
  %i.vn = trunc nsw i64 %indvars.iv606 to i32
  br label %.loopexit537

.loopexit537:                                     ; preds = %bb.ad, %.loopexit537.loopexit.split.loop.exit, %.preheader536, %bb.ai, %limit_sum.exit501._crit_edge
  %.2404 = phi i32 [ %.1403.lcssa, %limit_sum.exit501._crit_edge ], [ -1, %.preheader536 ], [ %i.vm, %bb.ai ], [ %i.vn, %.loopexit537.loopexit.split.loop.exit ], [ %i.se, %bb.ad ] ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.f, i64 232 ; 4 uses
  %i.vp = load i64, ptr %i.vo, align 8            ; 4 uses
  %i.vq = trunc i64 %i.vp to i32                  ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.f, i64 224 ; 4 uses
  %i.vs = sext i32 %.2404 to i64                  ; 2 uses
  %i.vt = and i64 %i.vp, 4294967295
  %i.vu = add i32 %i.vq, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.vu, i32 -1) ; 2 uses
  %indvars.iv.next610693 = add nsw i64 %i.vt, -1  ; 2 uses
  %indvars694 = trunc i64 %indvars.iv.next610693 to i32 ; 2 uses
  %i.vv = icmp sgt i32 %indvars694, -1
  br i1 %i.vv, label %.lr.ph697.preheader, label %._crit_edge699

.lr.ph697.preheader:                              ; preds = %.loopexit537
  %i.vw = load ptr, ptr %i.vr, align 8
  br label %.lr.ph697

bb.aj:                                            ; preds = %.lr.ph697
  %indvars.iv.next610 = add nsw i64 %indvars.iv.next610695, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next610 to i32 ; 2 uses
  %i.vx = icmp sgt i32 %indvars, -1
  br i1 %i.vx, label %.lr.ph697, label %._crit_edge699, !llvm.loop !125

.lr.ph697:                                        ; preds = %.lr.ph697.preheader, %bb.aj
  %indvars696 = phi i32 [ %indvars, %bb.aj ], [ %indvars694, %.lr.ph697.preheader ]
  %indvars.iv.next610695 = phi i64 [ %indvars.iv.next610, %bb.aj ], [ %indvars.iv.next610693, %.lr.ph697.preheader ] ; 2 uses
  %i.vy = and i64 %indvars.iv.next610695, 2147483647
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.vy
  %i.wa = load i64, ptr %i.vz, align 8
  %i.wb = icmp slt i64 %i.wa, %i.vs
  br i1 %i.wb, label %._crit_edge698, label %bb.aj, !llvm.loop !125

._crit_edge698:                                   ; preds = %.lr.ph697
  br label %._crit_edge699, !llvm.loop !125

._crit_edge699:                                   ; preds = %bb.aj, %._crit_edge698, %.loopexit537
  %.0401.lcssa = phi i32 [ %indvars696, %._crit_edge698 ], [ %smin, %.loopexit537 ], [ %smin, %bb.aj ] ; 2 uses
  %i.wc = icmp slt i32 %.0401.lcssa, %i.vq
  %i.wd = shl i32 %i.q, 1                         ; 4 uses
  %i.we = sext i32 %i.q to i64                    ; 2 uses
  br i1 %i.wc, label %.lr.ph575, label %._crit_edge576

.lr.ph575:                                        ; preds = %._crit_edge699
  %i.wf = add nsw i32 %.2404, %i.q
  %i.wg = icmp slt i32 %i.q, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.wd, i32 1) ; 3 uses
  %sext675 = shl i64 %i.vp, 32
  %i.wh = ashr exact i64 %sext675, 32
  %i.wi = sext i32 %.0401.lcssa to i64
  %wide.trip.count616 = zext nneg i32 %smax to i64 ; 2 uses
  %xtraiter710 = and i64 %wide.trip.count616, 1
  %i.wj = icmp eq i32 %smax, 1
  %unroll_iter713 = and i64 %wide.trip.count616, 2147483646
  %lcmp.mod711.not = icmp eq i64 %xtraiter710, 0
  %lcmp.mod712 = trunc i32 %smax to i1
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph575, %.loopexit
  %indvars.iv618 = phi i64 [ %i.wh, %.lr.ph575 ], [ %indvars.iv.next619, %.loopexit ] ; 5 uses
  %i.wk = load ptr, ptr %i.on, align 8            ; 2 uses
  %i.wl = trunc nsw i64 %indvars.iv618 to i32
  %i.wm = mul i32 %i.wd, %i.wl                    ; 2 uses
  %i.wn = sext i32 %i.wm to i64                   ; 4 uses
  %i.wo = load ptr, ptr %i.vr, align 8
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.wo, i64 %indvars.iv618
  %i.wq = load i64, ptr %i.wp, align 8
  %i.wr = getelementptr [8 x i8], ptr %i.wk, i64 %i.wq
  %i.ws = getelementptr [8 x i8], ptr %i.wr, i64 %i.we
  %i.wt = getelementptr [8 x i8], ptr %i.ws, i64 %i.wn
  %i.wu = load i64, ptr %i.wt, align 8
  %i.wv = load i64, ptr %i.rq, align 8
  %i.ww = sub nsw i64 %i.wv, %i.wu                ; 2 uses
  store i64 %i.ww, ptr %i.rq, align 8
  %i.wx = add nsw i32 %i.wf, %i.wm
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.wk, i64 %i.wy
  %i.xa = load i64, ptr %i.wz, align 8
  %i.xb = add nsw i64 %i.xa, %i.ww
  store i64 %i.xb, ptr %i.rq, align 8
  %i.xc = load i64, ptr %i.vo, align 8
  %i.xd = icmp sle i64 %i.xc, %indvars.iv618
  %brmerge = select i1 %i.xd, i1 true, i1 %i.wg
  br i1 %brmerge, label %.loopexit, label %.lr.ph571

.lr.ph571:                                        ; preds = %bb.ak
  %i.xe = trunc i64 %indvars.iv618 to i32
  %i.xf = add i32 %i.xe, 1
  %i.xg = mul i32 %i.wd, %i.xf
  %i.xh = sext i32 %i.xg to i64                   ; 3 uses
  br i1 %i.wj, label %.epil.preheader, label %.lr.ph571.new

.lr.ph571.new:                                    ; preds = %.lr.ph571, %.lr.ph571.new
  %indvars.iv612 = phi i64 [ %indvars.iv.next613.1, %.lr.ph571.new ], [ 0, %.lr.ph571 ] ; 4 uses
  %niter714 = phi i64 [ %niter714.next.1, %.lr.ph571.new ], [ 0, %.lr.ph571 ]
  %i.xi = load ptr, ptr %i.on, align 8            ; 2 uses
  %i.xj = getelementptr [8 x i8], ptr %i.xi, i64 %indvars.iv612
  %i.xk = getelementptr [8 x i8], ptr %i.xj, i64 %i.xh
  %i.xl = load i64, ptr %i.xk, align 8
  %i.xm = getelementptr [8 x i8], ptr %i.xi, i64 %indvars.iv612
  %i.xn = getelementptr [8 x i8], ptr %i.xm, i64 %i.wn ; 2 uses
  %i.xo = load i64, ptr %i.xn, align 8
  %i.xp = add nsw i64 %i.xo, %i.xl
  store i64 %i.xp, ptr %i.xn, align 8
  %indvars.iv.next613 = or disjoint i64 %indvars.iv612, 1 ; 2 uses
  %i.xq = load ptr, ptr %i.on, align 8            ; 2 uses
  %i.xr = getelementptr [8 x i8], ptr %i.xq, i64 %indvars.iv.next613
  %i.xs = getelementptr [8 x i8], ptr %i.xr, i64 %i.xh
  %i.xt = load i64, ptr %i.xs, align 8
  %i.xu = getelementptr [8 x i8], ptr %i.xq, i64 %indvars.iv.next613
  %i.xv = getelementptr [8 x i8], ptr %i.xu, i64 %i.wn ; 2 uses
  %i.xw = load i64, ptr %i.xv, align 8
  %i.xx = add nsw i64 %i.xw, %i.xt
  store i64 %i.xx, ptr %i.xv, align 8
  %indvars.iv.next613.1 = add nuw nsw i64 %indvars.iv612, 2 ; 2 uses
  %niter714.next.1 = add i64 %niter714, 2         ; 2 uses
  %niter714.ncmp.1 = icmp eq i64 %niter714.next.1, %unroll_iter713
  br i1 %niter714.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph571.new, !llvm.loop !126

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph571.new
  br i1 %lcmp.mod711.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph571
  %indvars.iv612.epil.init = phi i64 [ 0, %.lr.ph571 ], [ %indvars.iv.next613.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod712)
  %i.xy = load ptr, ptr %i.on, align 8            ; 2 uses
  %i.xz = getelementptr [8 x i8], ptr %i.xy, i64 %indvars.iv612.epil.init
  %i.ya = getelementptr [8 x i8], ptr %i.xz, i64 %i.xh
  %i.yb = load i64, ptr %i.ya, align 8
  %i.yc = getelementptr [8 x i8], ptr %i.xy, i64 %indvars.iv612.epil.init
  %i.yd = getelementptr [8 x i8], ptr %i.yc, i64 %i.wn ; 2 uses
end_hunk_0
begin_hunk_1_@mapping0_forward:bb.a
  %i.pb = select i1 %i.pa, float %i.oz, float %.0.i
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i387
  store float %i.pb, ptr %i.pc, align 4
  %indvars.iv.next.i388 = add nuw nsw i64 %indvars.iv.i387, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i388, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_vp_offset_and_mix.exit, label %bb.ab, !llvm.loop !584

_vp_offset_and_mix.exit:                          ; preds = %bb.ab, %._crit_edge466
  %i.pd = sext i32 %i.lx to i64
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.pd ; 5 uses
  %i.pf = load i32, ptr %i.pe, align 4
  %i.pg = sext i32 %i.pf to i64                   ; 2 uses
  %i.ph = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.pg
  %i.pi = load i32, ptr %i.ph, align 4
  %.not354 = icmp eq i32 %i.pi, 1
  br i1 %.not354, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %_vp_offset_and_mix.exit
  %i.pj = load ptr, ptr %i.lt, align 8
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.pg
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = tail call ptr @floor1_fit(ptr noundef nonnull %0, ptr noundef %i.pl, ptr noundef %i.mf, ptr noundef %i.md)
  %i.pn = load ptr, ptr %i.mv, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 56
  store ptr %i.pm, ptr %i.po, align 8
  %i.pp = load ptr, ptr %i.a, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 136
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 144
  %i.pt = load ptr, ptr %i.ps, align 8
  %.not.i389.not = icmp eq ptr %i.pt, null
  br i1 %.not.i389.not, label %.loopexit451, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.pu = load ptr, ptr %i.mv, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 56
  %i.pw = load ptr, ptr %i.pv, align 8
  %.not356 = icmp eq ptr %i.pw, null
  br i1 %.not356, label %.loopexit451, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.px = load i32, ptr %i.cr, align 8            ; 2 uses
  %i.py = load ptr, ptr %i.lp, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 20
  %i.qa = load float, ptr %i.pz, align 4
  %i.qb = icmp sgt i32 %i.px, 0
  br i1 %i.qb, label %.lr.ph.i391, label %_vp_offset_and_mix.exit397

.lr.ph.i391:                                      ; preds = %bb.ae
  %wide.trip.count.i392 = zext nneg i32 %i.px to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph.i391
  %indvars.iv.i393 = phi i64 [ 0, %.lr.ph.i391 ], [ %indvars.iv.next.i395, %bb.af ] ; 5 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.i393
  %i.qd = load float, ptr %i.qc, align 4
  %i.qe = load ptr, ptr %i.lq, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %indvars.iv.i393
  %i.qi = load float, ptr %i.qh, align 4
  %i.qj = fadd float %i.qd, %i.qi                 ; 2 uses
  %i.qk = load ptr, ptr %i.lp, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 108
  %i.qm = load float, ptr %i.ql, align 4          ; 2 uses
  %i.qn = fcmp ogt float %i.qj, %i.qm
  %.0.i394 = select i1 %i.qn, float %i.qm, float %i.qj ; 2 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.i393
  %i.qp = load float, ptr %i.qo, align 4
  %i.qq = fadd float %i.qa, %i.qp                 ; 2 uses
  %i.qr = fcmp olt float %.0.i394, %i.qq
  %i.qs = select i1 %i.qr, float %i.qq, float %.0.i394
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i393
  store float %i.qs, ptr %i.qt, align 4
  %indvars.iv.next.i395 = add nuw nsw i64 %indvars.iv.i393, 1 ; 2 uses
  %exitcond.not.i396 = icmp eq i64 %indvars.iv.next.i395, %wide.trip.count.i392
  br i1 %exitcond.not.i396, label %_vp_offset_and_mix.exit397, label %bb.af, !llvm.loop !584

_vp_offset_and_mix.exit397:                       ; preds = %bb.af, %bb.ae
  %i.qu = load ptr, ptr %i.lt, align 8
  %i.qv = load i32, ptr %i.pe, align 4
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.qw
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = tail call ptr @floor1_fit(ptr noundef nonnull %0, ptr noundef %i.qy, ptr noundef %i.mf, ptr noundef %i.md)
  %i.ra = load ptr, ptr %i.mv, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 112
  store ptr %i.qz, ptr %i.rb, align 8
  %i.rc = load i32, ptr %i.cr, align 8            ; 2 uses
  %i.rd = load ptr, ptr %i.lp, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 12
  %i.rf = load float, ptr %i.re, align 4
  %i.rg = icmp sgt i32 %i.rc, 0
  br i1 %i.rg, label %.lr.ph.i399, label %_vp_offset_and_mix.exit405

.lr.ph.i399:                                      ; preds = %_vp_offset_and_mix.exit397
  %wide.trip.count.i400 = zext nneg i32 %i.rc to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i399
  %indvars.iv.i401 = phi i64 [ 0, %.lr.ph.i399 ], [ %indvars.iv.next.i403, %bb.ag ] ; 5 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.i401
  %i.ri = load float, ptr %i.rh, align 4
  %i.rj = load ptr, ptr %i.lq, align 8
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv.i401
  %i.rm = load float, ptr %i.rl, align 4
  %i.rn = fadd float %i.ri, %i.rm                 ; 2 uses
  %i.ro = load ptr, ptr %i.lp, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 108
  %i.rq = load float, ptr %i.rp, align 4          ; 2 uses
  %i.rr = fcmp ogt float %i.rn, %i.rq
  %.0.i402 = select i1 %i.rr, float %i.rq, float %i.rn ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.i401
  %i.rt = load float, ptr %i.rs, align 4
  %i.ru = fadd float %i.rf, %i.rt                 ; 2 uses
  %i.rv = fcmp olt float %.0.i402, %i.ru
  %i.rw = select i1 %i.rv, float %i.ru, float %.0.i402
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i401
  store float %i.rw, ptr %i.rx, align 4
  %indvars.iv.next.i403 = add nuw nsw i64 %indvars.iv.i401, 1 ; 2 uses
  %exitcond.not.i404 = icmp eq i64 %indvars.iv.next.i403, %wide.trip.count.i400
  br i1 %exitcond.not.i404, label %_vp_offset_and_mix.exit405, label %bb.ag, !llvm.loop !584

_vp_offset_and_mix.exit405:                       ; preds = %bb.ag, %_vp_offset_and_mix.exit397
  %i.ry = load ptr, ptr %i.lt, align 8
  %i.rz = load i32, ptr %i.pe, align 4
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %i.sa
  %i.sc = load ptr, ptr %i.sb, align 8
  %i.sd = tail call ptr @floor1_fit(ptr noundef nonnull %0, ptr noundef %i.sc, ptr noundef %i.mf, ptr noundef %i.md)
  %i.se = load ptr, ptr %i.mv, align 8
  store ptr %i.sd, ptr %i.se, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %_vp_offset_and_mix.exit405, %floor1_interpolate_fit.exit
  %indvars.iv506 = phi i64 [ 1, %_vp_offset_and_mix.exit405 ], [ %indvars.iv.next507, %floor1_interpolate_fit.exit ] ; 3 uses
  %i.sf = load ptr, ptr %i.lt, align 8
  %i.sg = load i32, ptr %i.pe, align 4
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %i.sh
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = load ptr, ptr %i.mv, align 8            ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8            ; 5 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 56
  %i.sn = load ptr, ptr %i.sm, align 8            ; 5 uses
  %indvars.iv506.tr = trunc i64 %indvars.iv506 to i32
  %i.so = shl i32 %indvars.iv506.tr, 16
  %i.sp = udiv i32 %i.so, 7                       ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sj, i64 1284
  %i.sr = load i32, ptr %i.sq, align 4            ; 3 uses
  %i.ss = sext i32 %i.sr to i64                   ; 4 uses
  %i.st = icmp ne ptr %i.sl, null
  %i.su = icmp ne ptr %i.sn, null
  %or.cond.i = and i1 %i.st, %i.su
  br i1 %or.cond.i, label %bb.ai, label %floor1_interpolate_fit.exit

bb.ai:                                            ; preds = %bb.ah
  %i.sv = shl nsw i64 %i.ss, 2                    ; 4 uses
  %i.sw = add nsw i64 %i.sv, 4
  %i.sx = and i64 %i.sw, -8                       ; 4 uses
  %i.sy = load i64, ptr %i.s, align 8             ; 3 uses
  %i.sz = add nsw i64 %i.sy, %i.sx
  %i.ta = load i64, ptr %i.v, align 8
  %i.tb = icmp sgt i64 %i.sz, %i.ta
  %i.tc = load ptr, ptr %i.y, align 8             ; 3 uses
  br i1 %i.tb, label %bb.aj, label %_vorbis_block_alloc.exit.i

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i = icmp eq ptr %i.tc, null
  br i1 %.not.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.td = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.te = load i64, ptr %i.lm, align 8
  %i.tf = add nsw i64 %i.te, %i.sy
  store i64 %i.tf, ptr %i.lm, align 8
  %i.tg = load ptr, ptr %i.ln, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  store ptr %i.tg, ptr %i.th, align 8
  store ptr %i.tc, ptr %i.td, align 8
  store ptr %i.td, ptr %i.ln, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i64 %i.sx, ptr %i.v, align 8
  %i.ti = tail call noalias ptr @malloc(i64 noundef %i.sx) #69 ; 2 uses
  store ptr %i.ti, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit.i

_vorbis_block_alloc.exit.i:                       ; preds = %bb.al, %bb.ai
  %i.tj = phi i64 [ 0, %bb.al ], [ %i.sy, %bb.ai ] ; 3 uses
  %i.tk = phi ptr [ %i.ti, %bb.al ], [ %i.tc, %bb.ai ] ; 2 uses
  %i.tl = getelementptr i8, ptr %i.tk, i64 %i.tj  ; 10 uses
  %i.tm = add nsw i64 %i.tj, %i.sx
  store i64 %i.tm, ptr %i.s, align 8
  %i.tn = icmp sgt i32 %i.sr, 0
  br i1 %i.tn, label %.lr.ph.i407, label %floor1_interpolate_fit.exit

.lr.ph.i407:                                      ; preds = %_vorbis_block_alloc.exit.i
  %i.to = sub nuw nsw i32 65536, %i.sp            ; 2 uses
  %min.iters.check688 = icmp ult i32 %i.sr, 4
  br i1 %min.iters.check688, label %scalar.ph687.preheader, label %vector.memcheck676

vector.memcheck676:                               ; preds = %.lr.ph.i407
  %i.tp = getelementptr i8, ptr %i.tk, i64 %i.tj
  %scevgep677 = getelementptr i8, ptr %i.tp, i64 %i.sv ; 2 uses
  %scevgep678 = getelementptr i8, ptr %i.sl, i64 %i.sv
  %scevgep679 = getelementptr i8, ptr %i.sn, i64 %i.sv
  %bound0680 = icmp ult ptr %i.tl, %scevgep678
  %bound1681 = icmp ult ptr %i.sl, %scevgep677
  %found.conflict682 = and i1 %bound0680, %bound1681
  %bound0683 = icmp ult ptr %i.tl, %scevgep679
  %bound1684 = icmp ult ptr %i.sn, %scevgep677
  %found.conflict685 = and i1 %bound0683, %bound1684
  %conflict.rdx686 = or i1 %found.conflict682, %found.conflict685
  br i1 %conflict.rdx686, label %scalar.ph687.preheader, label %vector.ph689

vector.ph689:                                     ; preds = %vector.memcheck676
  %n.vec691 = and i64 %i.ss, 2147483644           ; 3 uses
  %broadcast.splatinsert692 = insertelement <4 x i32> poison, i32 %i.to, i64 0
  %broadcast.splat693 = shufflevector <4 x i32> %broadcast.splatinsert692, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert694 = insertelement <4 x i32> poison, i32 %i.sp, i64 0
  %broadcast.splat695 = shufflevector <4 x i32> %broadcast.splatinsert694, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body696

vector.body696:                                   ; preds = %pred.store.continue709, %vector.ph689
  %index697 = phi i64 [ 0, %vector.ph689 ], [ %index.next710, %pred.store.continue709 ] ; 7 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %index697 ; 2 uses
  %wide.load698 = load <4 x i32>, ptr %i.tq, align 4, !alias.scope !870
  %i.tr = and <4 x i32> %wide.load698, splat (i32 32767)
  %i.ts = mul nuw nsw <4 x i32> %i.tr, %broadcast.splat693
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %index697 ; 2 uses
  %wide.load699 = load <4 x i32>, ptr %i.tt, align 4, !alias.scope !873
  %i.tu = and <4 x i32> %wide.load699, splat (i32 32767)
  %i.tv = mul nuw nsw <4 x i32> %i.tu, %broadcast.splat695
  %i.tw = add nuw nsw <4 x i32> %i.ts, splat (i32 32768)
  %i.tx = add nuw <4 x i32> %i.tw, %i.tv
  %i.ty = ashr <4 x i32> %i.tx, splat (i32 16)    ; 5 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %index697 ; 2 uses
  store <4 x i32> %i.ty, ptr %i.tz, align 4, !alias.scope !875, !noalias !877
  %wide.load700 = load <4 x i32>, ptr %i.tq, align 4, !alias.scope !870
  %i.ua = and <4 x i32> %wide.load700, splat (i32 32768)
  %i.ub = icmp ne <4 x i32> %i.ua, zeroinitializer
  %wide.load701 = load <4 x i32>, ptr %i.tt, align 4, !alias.scope !873
  %i.uc = and <4 x i32> %wide.load701, splat (i32 32768)
  %i.ud = icmp ne <4 x i32> %i.uc, zeroinitializer
  %i.ue = select <4 x i1> %i.ub, <4 x i1> %i.ud, <4 x i1> zeroinitializer ; 4 uses
  %i.uf = extractelement <4 x i1> %i.ue, i64 0
  br i1 %i.uf, label %pred.store.if702, label %pred.store.continue703

pred.store.if702:                                 ; preds = %vector.body696
  %i.ug = extractelement <4 x i32> %i.ty, i64 0
  %i.uh = or i32 %i.ug, 32768
  store i32 %i.uh, ptr %i.tz, align 4, !alias.scope !875, !noalias !877
  br label %pred.store.continue703

pred.store.continue703:                           ; preds = %pred.store.if702, %vector.body696
  %i.ui = extractelement <4 x i1> %i.ue, i64 1
  br i1 %i.ui, label %pred.store.if704, label %pred.store.continue705

pred.store.if704:                                 ; preds = %pred.store.continue703
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %index697
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.ul = extractelement <4 x i32> %i.ty, i64 1
  %i.um = or i32 %i.ul, 32768
  store i32 %i.um, ptr %i.uk, align 4, !alias.scope !875, !noalias !877
  br label %pred.store.continue705

pred.store.continue705:                           ; preds = %pred.store.if704, %pred.store.continue703
  %i.un = extractelement <4 x i1> %i.ue, i64 2
  br i1 %i.un, label %pred.store.if706, label %pred.store.continue707

pred.store.if706:                                 ; preds = %pred.store.continue705
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %index697
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uq = extractelement <4 x i32> %i.ty, i64 2
  %i.ur = or i32 %i.uq, 32768
  store i32 %i.ur, ptr %i.up, align 4, !alias.scope !875, !noalias !877
  br label %pred.store.continue707

pred.store.continue707:                           ; preds = %pred.store.if706, %pred.store.continue705
  %i.us = extractelement <4 x i1> %i.ue, i64 3
  br i1 %i.us, label %pred.store.if708, label %pred.store.continue709

pred.store.if708:                                 ; preds = %pred.store.continue707
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %index697
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 12
  %i.uv = extractelement <4 x i32> %i.ty, i64 3
  %i.uw = or i32 %i.uv, 32768
  store i32 %i.uw, ptr %i.uu, align 4, !alias.scope !875, !noalias !877
  br label %pred.store.continue709

pred.store.continue709:                           ; preds = %pred.store.if708, %pred.store.continue707
  %index.next710 = add nuw i64 %index697, 4       ; 2 uses
  %i.ux = icmp eq i64 %index.next710, %n.vec691
  br i1 %i.ux, label %middle.block711, label %vector.body696, !llvm.loop !878

middle.block711:                                  ; preds = %pred.store.continue709
  %cmp.n712 = icmp eq i64 %n.vec691, %i.ss
  br i1 %cmp.n712, label %floor1_interpolate_fit.exit, label %scalar.ph687.preheader

scalar.ph687.preheader:                           ; preds = %vector.memcheck676, %.lr.ph.i407, %middle.block711
  %.02327.i.ph = phi i64 [ 0, %vector.memcheck676 ], [ 0, %.lr.ph.i407 ], [ %n.vec691, %middle.block711 ]
  br label %scalar.ph687

scalar.ph687:                                     ; preds = %scalar.ph687.preheader, %bb.ao
  %.02327.i = phi i64 [ %i.vp, %bb.ao ], [ %.02327.i.ph, %scalar.ph687.preheader ] ; 4 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %.02327.i ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 4
  %i.va = and i32 %i.uz, 32767
  %i.vb = mul nuw nsw i32 %i.va, %i.to
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %.02327.i ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 4
  %i.ve = and i32 %i.vd, 32767
  %i.vf = mul nuw nsw i32 %i.ve, %i.sp
  %i.vg = add nuw nsw i32 %i.vb, 32768
  %i.vh = add nuw i32 %i.vg, %i.vf
  %i.vi = ashr i32 %i.vh, 16                      ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %.02327.i ; 2 uses
  store i32 %i.vi, ptr %i.vj, align 4
  %i.vk = load i32, ptr %i.uy, align 4
  %i.vl = and i32 %i.vk, 32768
  %.not.i408 = icmp eq i32 %i.vl, 0
  br i1 %.not.i408, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %scalar.ph687
  %i.vm = load i32, ptr %i.vc, align 4
  %i.vn = and i32 %i.vm, 32768
  %.not26.i = icmp eq i32 %i.vn, 0
  br i1 %.not26.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.vo = or i32 %i.vi, 32768
  store i32 %i.vo, ptr %i.vj, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %scalar.ph687
  %i.vp = add nuw nsw i64 %.02327.i, 1            ; 2 uses
  %exitcond.not.i409 = icmp eq i64 %i.vp, %i.ss
  br i1 %exitcond.not.i409, label %floor1_interpolate_fit.exit, label %scalar.ph687, !llvm.loop !879

floor1_interpolate_fit.exit:                      ; preds = %bb.ao, %middle.block711, %bb.ah, %_vorbis_block_alloc.exit.i
  %.0.i406 = phi ptr [ null, %bb.ah ], [ %i.tl, %_vorbis_block_alloc.exit.i ], [ %i.tl, %middle.block711 ], [ %i.tl, %bb.ao ]
  %i.vq = load ptr, ptr %i.mv, align 8
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv506
  store ptr %.0.i406, ptr %i.vr, align 8
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1 ; 2 uses
  %exitcond509.not = icmp eq i64 %indvars.iv.next507, 7
  br i1 %exitcond509.not, label %.preheader450, label %bb.ah, !llvm.loop !880

.preheader450:                                    ; preds = %floor1_interpolate_fit.exit, %floor1_interpolate_fit.exit419
  %indvars.iv510 = phi i64 [ %indvars.iv.next511, %floor1_interpolate_fit.exit419 ], [ 8, %floor1_interpolate_fit.exit ] ; 3 uses
  %i.vs = load ptr, ptr %i.lt, align 8
  %i.vt = load i32, ptr %i.pe, align 4
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds [8 x i8], ptr %i.vs, i64 %i.vu
  %i.vw = load ptr, ptr %i.vv, align 8
  %i.vx = load ptr, ptr %i.mv, align 8            ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 56
  %i.vz = load ptr, ptr %i.vy, align 8            ; 5 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 112
  %i.wb = load ptr, ptr %i.wa, align 8            ; 5 uses
  %indvars.iv510.tr = trunc i64 %indvars.iv510 to i32
  %i.wc = shl i32 %indvars.iv510.tr, 16
  %i.wd = add i32 %i.wc, -458752
  %.udiv = udiv i32 %i.wd, 7                      ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.vw, i64 1284
  %i.wf = load i32, ptr %i.we, align 4            ; 3 uses
  %i.wg = sext i32 %i.wf to i64                   ; 4 uses
  %i.wh = icmp ne ptr %i.vz, null
  %i.wi = icmp ne ptr %i.wb, null
  %or.cond.i410 = and i1 %i.wh, %i.wi
  br i1 %or.cond.i410, label %bb.ap, label %floor1_interpolate_fit.exit419

bb.ap:                                            ; preds = %.preheader450
  %i.wj = shl nsw i64 %i.wg, 2                    ; 4 uses
  %i.wk = add nsw i64 %i.wj, 4
  %i.wl = and i64 %i.wk, -8                       ; 4 uses
  %i.wm = load i64, ptr %i.s, align 8             ; 3 uses
  %i.wn = add nsw i64 %i.wm, %i.wl
  %i.wo = load i64, ptr %i.v, align 8
  %i.wp = icmp sgt i64 %i.wn, %i.wo
  %i.wq = load ptr, ptr %i.y, align 8             ; 3 uses
  br i1 %i.wp, label %bb.aq, label %_vorbis_block_alloc.exit.i412

bb.aq:                                            ; preds = %bb.ap
  %.not.i.i418 = icmp eq ptr %i.wq, null
  br i1 %.not.i.i418, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.wr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.ws = load i64, ptr %i.lm, align 8
  %i.wt = add nsw i64 %i.ws, %i.wm
  store i64 %i.wt, ptr %i.lm, align 8
  %i.wu = load ptr, ptr %i.ln, align 8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store ptr %i.wu, ptr %i.wv, align 8
  store ptr %i.wq, ptr %i.wr, align 8
  store ptr %i.wr, ptr %i.ln, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store i64 %i.wl, ptr %i.v, align 8
  %i.ww = tail call noalias ptr @malloc(i64 noundef %i.wl) #69 ; 2 uses
  store ptr %i.ww, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit.i412

_vorbis_block_alloc.exit.i412:                    ; preds = %bb.as, %bb.ap
  %i.wx = phi i64 [ 0, %bb.as ], [ %i.wm, %bb.ap ] ; 3 uses
  %i.wy = phi ptr [ %i.ww, %bb.as ], [ %i.wq, %bb.ap ] ; 2 uses
  %i.wz = getelementptr i8, ptr %i.wy, i64 %i.wx  ; 10 uses
  %i.xa = add nsw i64 %i.wx, %i.wl
  store i64 %i.xa, ptr %i.s, align 8
  %i.xb = icmp sgt i32 %i.wf, 0
  br i1 %i.xb, label %.lr.ph.i413, label %floor1_interpolate_fit.exit419

.lr.ph.i413:                                      ; preds = %_vorbis_block_alloc.exit.i412
  %i.xc = sub nsw i32 65536, %.udiv               ; 2 uses
  %min.iters.check654 = icmp ult i32 %i.wf, 4
  br i1 %min.iters.check654, label %scalar.ph653.preheader, label %vector.memcheck643

vector.memcheck643:                               ; preds = %.lr.ph.i413
  %i.xd = getelementptr i8, ptr %i.wy, i64 %i.wx
  %scevgep644 = getelementptr i8, ptr %i.xd, i64 %i.wj ; 2 uses
  %scevgep645 = getelementptr i8, ptr %i.vz, i64 %i.wj
  %scevgep646 = getelementptr i8, ptr %i.wb, i64 %i.wj
  %bound0647 = icmp ult ptr %i.wz, %scevgep645
  %bound1648 = icmp ult ptr %i.vz, %scevgep644
  %found.conflict649 = and i1 %bound0647, %bound1648
  %bound0650 = icmp ult ptr %i.wz, %scevgep646
  %bound1651 = icmp ult ptr %i.wb, %scevgep644
  %found.conflict652 = and i1 %bound0650, %bound1651
  %conflict.rdx = or i1 %found.conflict649, %found.conflict652
  br i1 %conflict.rdx, label %scalar.ph653.preheader, label %vector.ph655

vector.ph655:                                     ; preds = %vector.memcheck643
  %n.vec657 = and i64 %i.wg, 2147483644           ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.xc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert658 = insertelement <4 x i32> poison, i32 %.udiv, i64 0
  %broadcast.splat659 = shufflevector <4 x i32> %broadcast.splatinsert658, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body660

vector.body660:                                   ; preds = %pred.store.continue671, %vector.ph655
  %index661 = phi i64 [ 0, %vector.ph655 ], [ %index.next672, %pred.store.continue671 ] ; 7 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %index661 ; 2 uses
  %wide.load662 = load <4 x i32>, ptr %i.xe, align 4, !alias.scope !881
  %i.xf = and <4 x i32> %wide.load662, splat (i32 32767)
  %i.xg = mul nsw <4 x i32> %i.xf, %broadcast.splat
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %index661 ; 2 uses
  %wide.load663 = load <4 x i32>, ptr %i.xh, align 4, !alias.scope !884
  %i.xi = and <4 x i32> %wide.load663, splat (i32 32767)
  %i.xj = mul nuw nsw <4 x i32> %i.xi, %broadcast.splat659
  %i.xk = add nsw <4 x i32> %i.xg, splat (i32 32768)
  %i.xl = add <4 x i32> %i.xk, %i.xj
  %i.xm = ashr <4 x i32> %i.xl, splat (i32 16)    ; 5 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %index661 ; 2 uses
  store <4 x i32> %i.xm, ptr %i.xn, align 4, !alias.scope !886, !noalias !888
  %wide.load664 = load <4 x i32>, ptr %i.xe, align 4, !alias.scope !881
  %i.xo = and <4 x i32> %wide.load664, splat (i32 32768)
  %i.xp = icmp ne <4 x i32> %i.xo, zeroinitializer
  %wide.load665 = load <4 x i32>, ptr %i.xh, align 4, !alias.scope !884
  %i.xq = and <4 x i32> %wide.load665, splat (i32 32768)
  %i.xr = icmp ne <4 x i32> %i.xq, zeroinitializer
  %i.xs = select <4 x i1> %i.xp, <4 x i1> %i.xr, <4 x i1> zeroinitializer ; 4 uses
  %i.xt = extractelement <4 x i1> %i.xs, i64 0
  br i1 %i.xt, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body660
  %i.xu = extractelement <4 x i32> %i.xm, i64 0
  %i.xv = or i32 %i.xu, 32768
  store i32 %i.xv, ptr %i.xn, align 4, !alias.scope !886, !noalias !888
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body660
  %i.xw = extractelement <4 x i1> %i.xs, i64 1
  br i1 %i.xw, label %pred.store.if666, label %pred.store.continue667

pred.store.if666:                                 ; preds = %pred.store.continue
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %index661
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 4
  %i.xz = extractelement <4 x i32> %i.xm, i64 1
  %i.ya = or i32 %i.xz, 32768
  store i32 %i.ya, ptr %i.xy, align 4, !alias.scope !886, !noalias !888
  br label %pred.store.continue667

pred.store.continue667:                           ; preds = %pred.store.if666, %pred.store.continue
  %i.yb = extractelement <4 x i1> %i.xs, i64 2
  br i1 %i.yb, label %pred.store.if668, label %pred.store.continue669

pred.store.if668:                                 ; preds = %pred.store.continue667
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %index661
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = extractelement <4 x i32> %i.xm, i64 2
  %i.yf = or i32 %i.ye, 32768
  store i32 %i.yf, ptr %i.yd, align 4, !alias.scope !886, !noalias !888
  br label %pred.store.continue669

pred.store.continue669:                           ; preds = %pred.store.if668, %pred.store.continue667
  %i.yg = extractelement <4 x i1> %i.xs, i64 3
  br i1 %i.yg, label %pred.store.if670, label %pred.store.continue671

pred.store.if670:                                 ; preds = %pred.store.continue669
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %index661
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 12
  %i.yj = extractelement <4 x i32> %i.xm, i64 3
  %i.yk = or i32 %i.yj, 32768
  store i32 %i.yk, ptr %i.yi, align 4, !alias.scope !886, !noalias !888
  br label %pred.store.continue671

pred.store.continue671:                           ; preds = %pred.store.if670, %pred.store.continue669
  %index.next672 = add nuw i64 %index661, 4       ; 2 uses
  %i.yl = icmp eq i64 %index.next672, %n.vec657
  br i1 %i.yl, label %middle.block673, label %vector.body660, !llvm.loop !889

middle.block673:                                  ; preds = %pred.store.continue671
  %cmp.n674 = icmp eq i64 %n.vec657, %i.wg
end_hunk_1
begin_hunk_2_@mapping0_inverse:bb.a
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.m, ptr %i.n, align 8
  %sext = shl i64 %i.l, 32                        ; 2 uses
  %i.o = ashr exact i64 %sext, 32                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 6 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nsw i64 %i.r, 3                      ; 2 uses
  %i.t = alloca i8, i64 %i.s, align 16            ; 2 uses
  %i.u = shl nsw i64 %i.r, 2                      ; 2 uses
  %i.v = alloca i8, i64 %i.u, align 16            ; 2 uses
  %i.w = alloca i8, i64 %i.u, align 16            ; 5 uses
  %i.x = alloca i8, i64 %i.s, align 16            ; 2 uses
  %i.y = icmp sgt i32 %i.q, 0
  br i1 %i.y, label %.lr.ph, label %.preheader168

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 1320
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1028
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.ad = ashr exact i64 %sext, 30
  %i.ae = lshr exact i64 %i.ad, 1
  br label %bb.b

.preheader168:                                    ; preds = %bb.b, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1156 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph171, label %.preheader167

.lr.ph171:                                        ; preds = %.preheader168
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2184
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr @_floor_P, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load ptr, ptr %i.ac, align 8
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ap
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call ptr %i.aw(ptr noundef nonnull %0, ptr noundef %i.az) #62 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store ptr %i.ba, ptr %i.bb, align 8
  %.not164 = icmp ne ptr %i.ba, null
  %spec.select = zext i1 %.not164 to i32
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  store i32 %spec.select, ptr %i.bc, align 4
  %i.bd = load ptr, ptr %0, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bf, i8 0, i64 %i.ae, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 4
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %bb.b, label %.preheader168, !llvm.loop !906

.preheader167:                                    ; preds = %bb.e, %.preheader168
  %i.bj = load i32, ptr %1, align 4
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.preheader166.lr.ph, label %._crit_edge176

.preheader166.lr.ph:                              ; preds = %.preheader167
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 2088
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 1092
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  br label %.preheader166

bb.c:                                             ; preds = %.lr.ph171, %bb.e
  %indvars.iv190 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next191, %bb.e ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv190
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %.not162 = icmp eq i32 %i.bt, 0
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv190
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  br i1 %.not162, label %bb.d, label %._crit_edge212

bb.d:                                             ; preds = %bb.c
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4
  %.not163 = icmp eq i32 %i.by, 0
  br i1 %.not163, label %bb.e, label %._crit_edge212

._crit_edge212:                                   ; preds = %bb.c, %bb.d
  store i32 1, ptr %i.bs, align 4
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.bw
  store i32 1, ptr %i.bz, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge212
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count
  br i1 %exitcond.not, label %.preheader167, label %bb.c, !llvm.loop !907

.preheader166:                                    ; preds = %.preheader166.lr.ph, %._crit_edge
  %indvars.iv196 = phi i64 [ 0, %.preheader166.lr.ph ], [ %indvars.iv.next197, %._crit_edge ] ; 3 uses
  %i.ca = load i32, ptr %i.p, align 4             ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph174.preheader, label %._crit_edge

.lr.ph174.preheader:                              ; preds = %.preheader166
  %i.cc = zext nneg i32 %i.ca to i64
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %bb.g
  %indvars.iv193 = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvars.iv.next194, %bb.g ] ; 4 uses
  %.0153172 = phi i32 [ 0, %.lr.ph174.preheader ], [ %.1154, %bb.g ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv193
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = zext i32 %i.ce to i64
  %i.cg = icmp eq i64 %indvars.iv196, %i.cf
  br i1 %i.cg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph174
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv193
  %i.ci = load i32, ptr %i.ch, align 4
  %.not = icmp ne i32 %i.ci, 0
  %i.cj = sext i32 %.0153172 to i64               ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.cj
  %. = zext i1 %.not to i32
  store i32 %., ptr %i.ck, align 4
  %i.cl = load ptr, ptr %0, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv193
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = add nsw i32 %.0153172, 1
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cj
  store ptr %i.cn, ptr %i.cp, align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph174, %bb.f
  %.1154 = phi i32 [ %i.co, %bb.f ], [ %.0153172, %.lr.ph174 ] ; 2 uses
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.cq = icmp samesign ult i64 %indvars.iv.next194, %i.cc
  br i1 %i.cq, label %.lr.ph174, label %._crit_edge, !llvm.loop !908

._crit_edge:                                      ; preds = %bb.g, %.preheader166
  %.0153.lcssa = phi i32 [ 0, %.preheader166 ], [ %.1154, %bb.g ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv196
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr @_residue_P, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = load ptr, ptr %i.bo, align 8
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.ct
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call i32 %i.da(ptr noundef %0, ptr noundef %i.dd, ptr noundef nonnull %i.t, ptr noundef nonnull %i.v, i32 noundef %.0153.lcssa) #62 ; 0 uses
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.df = load i32, ptr %1, align 4
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next197, %i.dg
  br i1 %i.dh, label %.preheader166, label %._crit_edge176.loopexit, !llvm.loop !909

._crit_edge176.loopexit:                          ; preds = %._crit_edge
  %.pre213 = load i32, ptr %i.af, align 4
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %._crit_edge176.loopexit, %.preheader167
  %i.di = phi i32 [ %.pre213, %._crit_edge176.loopexit ], [ %i.ag, %.preheader167 ] ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph183, label %.preheader165

.lr.ph183:                                        ; preds = %._crit_edge176
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 2184
  %i.dm = icmp sgt i64 %i.o, 1
  br i1 %i.dm, label %.lr.ph179.preheader, label %.preheader165

.lr.ph179.preheader:                              ; preds = %.lr.ph183
  %i.dn = lshr i64 %i.o, 1
  %i.do = zext nneg i32 %i.di to i64
  br label %.lr.ph179

..loopexit_crit_edge:                             ; preds = %bb.o
  %i.dp = icmp sgt i64 %indvars.iv203, 1
  br i1 %i.dp, label %.lr.ph179, label %.preheader165, !llvm.loop !910

.preheader165:                                    ; preds = %..loopexit_crit_edge, %.lr.ph183, %._crit_edge176
  %i.dq = load i32, ptr %i.p, align 4
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph185, label %._crit_edge188

.lr.ph185:                                        ; preds = %.preheader165
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 1320
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1028
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  br label %bb.p

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %..loopexit_crit_edge
  %indvars.iv203 = phi i64 [ %i.do, %.lr.ph179.preheader ], [ %indvars.iv.next204, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv.next204 = add nsw i64 %indvars.iv203, -1 ; 3 uses
  %i.dw = load ptr, ptr %0, align 8               ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next204
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next204
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph179, %bb.o
  %indvars.iv199 = phi i64 [ 0, %.lr.ph179 ], [ %indvars.iv.next200, %bb.o ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv199 ; 3 uses
  %i.ei = load float, ptr %i.eh, align 4          ; 7 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv199 ; 5 uses
  %i.ek = load float, ptr %i.ej, align 4          ; 5 uses
  %i.el = fcmp ogt float %i.ei, 0.000000e+00
  %i.em = fcmp ogt float %i.ek, 0.000000e+00      ; 2 uses
  br i1 %i.el, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %i.em, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.en = fsub float %i.ei, %i.ek
  store float %i.en, ptr %i.ej, align 4
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  store float %i.ei, ptr %i.ej, align 4
  %i.eo = fadd float %i.ei, %i.ek
  store float %i.eo, ptr %i.eh, align 4
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  br i1 %i.em, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ep = fadd float %i.ei, %i.ek
  store float %i.ep, ptr %i.ej, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store float %i.ei, ptr %i.ej, align 4
  %i.eq = fsub float %i.ei, %i.ek
  store float %i.eq, ptr %i.eh, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j, %bb.k
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next200, %i.dn
  br i1 %exitcond202.not, label %..loopexit_crit_edge, label %bb.h, !llvm.loop !911

.preheader:                                       ; preds = %bb.p
  %i.er = icmp sgt i32 %i.fp, 0
  br i1 %i.er, label %.lr.ph187, label %._crit_edge188

.lr.ph187:                                        ; preds = %.preheader
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph185, %bb.p
  %indvars.iv206 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next207, %bb.p ] ; 4 uses
  %i.et = load ptr, ptr %0, align 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv206
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv206
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr @_floor_P, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = load ptr, ptr %i.dv, align 8
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fb
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv206
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = call i32 %i.fi(ptr noundef nonnull %0, ptr noundef %i.fl, ptr noundef %i.fn, ptr noundef %i.ev) #62 ; 0 uses
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.fp = load i32, ptr %i.p, align 4             ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next207, %i.fq
  br i1 %i.fr, label %bb.p, label %.preheader, !llvm.loop !912

bb.q:                                             ; preds = %.lr.ph187, %bb.q
  %indvars.iv209 = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next210, %bb.q ] ; 2 uses
  %i.fs = load ptr, ptr %0, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv209
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %i.fv = load i64, ptr %i.i, align 8
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void @mdct_backward(ptr noundef %i.fy, ptr noundef %i.fu, ptr noundef %i.fu)
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.fz = load i32, ptr %i.p, align 4
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp slt i64 %indvars.iv.next210, %i.ga
  br i1 %i.gb, label %bb.q, label %._crit_edge188, !llvm.loop !913

._crit_edge188:                                   ; preds = %bb.q, %.preheader165, %.preheader
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @oggpackB_writeinit(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0) local_unnamed_addr #41 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 16, i1 false)
  %i.a = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #69 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8
  store i8 0, ptr %i.a, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 256, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @oggpack_writetrunc(ptr nofree noundef captures(none) initializes((0, 12), (24, 32)) %0, i64 noundef %1) local_unnamed_addr #26 {
bb.a:
  %i.a = ashr i64 %1, 3                           ; 2 uses
  %i.b = and i64 %1, 7                            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %i.a ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.f, align 8
  %i.g = trunc nuw nsw i64 %i.b to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8
  store i64 %i.a, ptr %0, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @mask, i64 %i.b
  %i.j = load i64, ptr %i.i, align 8
  %i.k = load i8, ptr %i.e, align 1
  %i.l = trunc i64 %i.j to i8
  %i.m = and i8 %i.k, %i.l
  store i8 %i.m, ptr %i.e, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @oggpackB_writetrunc(ptr nofree noundef captures(none) initializes((0, 12), (24, 32)) %0, i64 noundef %1) local_unnamed_addr #26 {
bb.a:
  %i.a = ashr i64 %1, 3                           ; 2 uses
  %i.b = and i64 %1, 7                            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %i.a ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.f, align 8
  %i.g = trunc nuw nsw i64 %i.b to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8
  store i64 %i.a, ptr %0, align 8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @mask8B, i64 %i.b
  %i.j = load i32, ptr %i.i, align 4
  %i.k = load i8, ptr %i.e, align 1
  %i.l = trunc i32 %i.j to i8
  %i.m = and i8 %i.k, %i.l
  store i8 %i.m, ptr %i.e, align 1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @oggpackB_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add nsw i64 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not = icmp slt i64 %i.b, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = add nsw i64 %i.d, 256
  %i.h = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.g) #66 ; 2 uses
  store ptr %i.h, ptr %i.e, align 8
  %i.i = load i64, ptr %i.c, align 8
  %i.j = add nsw i64 %i.i, 256
  store i64 %i.j, ptr %i.c, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = sext i32 %2 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr @mask, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, %1
  %i.s = sub nsw i32 32, %2
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl i64 %i.r, %i.t                       ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = add nsw i32 %i.w, %2                     ; 6 uses
  %i.y = add nsw i32 %i.w, 24
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 %i.u, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ac = load i8, ptr %i.n, align 1
  %i.ad = trunc i64 %i.aa to i8
  %i.ae = or i8 %i.ac, %i.ad
  store i8 %i.ae, ptr %i.n, align 1
  %i.af = icmp sgt i32 %i.x, 7
  br i1 %i.af, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.v, align 8
  %i.ah = add nsw i32 %i.ag, 16
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.u, %i.ai
  %i.ak = trunc i64 %i.aj to i8
  %i.al = load ptr, ptr %i.ab, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.ak, ptr %i.am, align 1
  %i.an = icmp samesign ugt i32 %i.x, 15
  br i1 %i.an, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %i.v, align 8
  %i.ap = add nsw i32 %i.ao, 8
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 %i.u, %i.aq
  %i.as = trunc i64 %i.ar to i8
  %i.at = load ptr, ptr %i.ab, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i8 %i.as, ptr %i.au, align 1
  %i.av = icmp samesign ugt i32 %i.x, 23
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = load i32, ptr %i.v, align 8
end_hunk_2
