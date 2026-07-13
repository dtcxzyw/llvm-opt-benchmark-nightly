inline.NumInlined: 15
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cftmdl:bb.a
  %found.conflict643 = and i1 %bound0641, %bound1642
  %conflict.rdx644 = or i1 %conflict.rdx640, %found.conflict643
  %bound0645 = icmp ult ptr %scevgep582, %scevgep585
  %bound1646 = icmp ult ptr %scevgep584, %scevgep583
  %found.conflict647 = and i1 %bound0645, %bound1646
  %conflict.rdx648 = or i1 %conflict.rdx644, %found.conflict647
  %bound0649 = icmp ult ptr %scevgep582, %scevgep587
  %bound1650 = icmp ult ptr %scevgep586, %scevgep583
  %found.conflict651 = and i1 %bound0649, %bound1650
  %conflict.rdx652 = or i1 %conflict.rdx648, %found.conflict651
  %bound0653 = icmp ult ptr %scevgep582, %scevgep589
  %bound1654 = icmp ult ptr %scevgep588, %scevgep583
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx656 = or i1 %conflict.rdx652, %found.conflict655
  %bound0657 = icmp ult ptr %scevgep582, %scevgep591
  %bound1658 = icmp ult ptr %scevgep590, %scevgep583
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx660 = or i1 %conflict.rdx656, %found.conflict659
  %bound0661 = icmp ult ptr %scevgep582, %scevgep593
  %bound1662 = icmp ult ptr %scevgep592, %scevgep583
  %found.conflict663 = and i1 %bound0661, %bound1662
  %conflict.rdx664 = or i1 %conflict.rdx660, %found.conflict663
  %bound0665 = icmp ult ptr %scevgep584, %scevgep587
  %bound1666 = icmp ult ptr %scevgep586, %scevgep585
  %found.conflict667 = and i1 %bound0665, %bound1666
  %conflict.rdx668 = or i1 %conflict.rdx664, %found.conflict667
  %bound0669 = icmp ult ptr %scevgep584, %scevgep589
  %bound1670 = icmp ult ptr %scevgep588, %scevgep585
  %found.conflict671 = and i1 %bound0669, %bound1670
  %conflict.rdx672 = or i1 %conflict.rdx668, %found.conflict671
  %bound0673 = icmp ult ptr %scevgep584, %scevgep591
  %bound1674 = icmp ult ptr %scevgep590, %scevgep585
  %found.conflict675 = and i1 %bound0673, %bound1674
  %conflict.rdx676 = or i1 %conflict.rdx672, %found.conflict675
  %bound0677 = icmp ult ptr %scevgep584, %scevgep593
  %bound1678 = icmp ult ptr %scevgep592, %scevgep585
  %found.conflict679 = and i1 %bound0677, %bound1678
  %conflict.rdx680 = or i1 %conflict.rdx676, %found.conflict679
  %bound0681 = icmp ult ptr %scevgep586, %scevgep589
  %bound1682 = icmp ult ptr %scevgep588, %scevgep587
  %found.conflict683 = and i1 %bound0681, %bound1682
  %conflict.rdx684 = or i1 %conflict.rdx680, %found.conflict683
  %bound0685 = icmp ult ptr %scevgep586, %scevgep591
  %bound1686 = icmp ult ptr %scevgep590, %scevgep587
  %found.conflict687 = and i1 %bound0685, %bound1686
  %conflict.rdx688 = or i1 %conflict.rdx684, %found.conflict687
  %bound0689 = icmp ult ptr %scevgep586, %scevgep593
  %bound1690 = icmp ult ptr %scevgep592, %scevgep587
  %found.conflict691 = and i1 %bound0689, %bound1690
  %conflict.rdx692 = or i1 %conflict.rdx688, %found.conflict691
  %bound0693 = icmp ult ptr %scevgep588, %scevgep591
  %bound1694 = icmp ult ptr %scevgep590, %scevgep589
  %found.conflict695 = and i1 %bound0693, %bound1694
  %conflict.rdx696 = or i1 %conflict.rdx692, %found.conflict695
  %bound0697 = icmp ult ptr %scevgep588, %scevgep593
  %bound1698 = icmp ult ptr %scevgep592, %scevgep589
  %found.conflict699 = and i1 %bound0697, %bound1698
  %conflict.rdx700 = or i1 %conflict.rdx696, %found.conflict699
  %bound0701 = icmp ult ptr %scevgep590, %scevgep593
  %bound1702 = icmp ult ptr %scevgep592, %scevgep591
  %found.conflict703 = and i1 %bound0701, %bound1702
  %conflict.rdx704 = or i1 %conflict.rdx700, %found.conflict703
  br i1 %conflict.rdx704, label %.lr.ph400.preheader1106, label %vector.ph707

vector.ph707:                                     ; preds = %vector.memcheck577
  %n.vec709 = and i64 %i.cs, -2                   ; 3 uses
  %i.dw = shl i64 %n.vec709, 1
  %i.dx = add i64 %i.dw, %i.cm
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body710

vector.body710:                                   ; preds = %vector.body710, %vector.ph707
  %index711 = phi i64 [ 0, %vector.ph707 ], [ %index.next728, %vector.body710 ] ; 2 uses
  %i.dy = shl i64 %index711, 1
  %i.dz = add i64 %i.dy, %i.cm                    ; 2 uses
  %i.ea = add nsw i64 %i.dz, %i.cn                ; 2 uses
  %i.eb = add nsw i64 %i.ea, %i.cn                ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dz ; 2 uses
  %wide.vec712 = load <4 x double>, ptr %i.ec, align 8, !tbaa !8 ; 2 uses
  %strided.vec713 = shufflevector <4 x double> %wide.vec712, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec714 = shufflevector <4 x double> %wide.vec712, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ea ; 2 uses
  %wide.vec715 = load <4 x double>, ptr %i.ed, align 8, !tbaa !8 ; 2 uses
  %strided.vec716 = shufflevector <4 x double> %wide.vec715, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec717 = shufflevector <4 x double> %wide.vec715, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ee = fadd <2 x double> %strided.vec713, %strided.vec716 ; 2 uses
  %i.ef = fadd <2 x double> %strided.vec714, %strided.vec717 ; 2 uses
  %i.eg = fsub <2 x double> %strided.vec713, %strided.vec716 ; 2 uses
  %i.eh = fsub <2 x double> %strided.vec714, %strided.vec717 ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eb ; 2 uses
  %wide.vec718 = load <4 x double>, ptr %i.ei, align 8, !tbaa !8 ; 2 uses
  %strided.vec719 = shufflevector <4 x double> %wide.vec718, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec720 = shufflevector <4 x double> %wide.vec718, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %invariant.gep438, i64 %i.eb ; 2 uses
  %wide.vec721 = load <4 x double>, ptr %i.ej, align 8, !tbaa !8 ; 2 uses
  %strided.vec722 = shufflevector <4 x double> %wide.vec721, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec723 = shufflevector <4 x double> %wide.vec721, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ek = fadd <2 x double> %strided.vec719, %strided.vec722 ; 2 uses
  %i.el = fadd <2 x double> %strided.vec720, %strided.vec723 ; 2 uses
  %i.em = fsub <2 x double> %strided.vec719, %strided.vec722 ; 2 uses
  %i.en = fsub <2 x double> %strided.vec720, %strided.vec723 ; 2 uses
  %i.eo = fadd <2 x double> %i.ee, %i.ek
  %i.ep = fadd <2 x double> %i.ef, %i.el
  %interleaved.vec724 = shufflevector <2 x double> %i.eo, <2 x double> %i.ep, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec724, ptr %i.ec, align 8, !tbaa !8
  %i.eq = fsub <2 x double> %i.el, %i.ef
  %i.er = fsub <2 x double> %i.ee, %i.ek
  %interleaved.vec725 = shufflevector <2 x double> %i.eq, <2 x double> %i.er, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec725, ptr %i.ei, align 8, !tbaa !8
  %i.es = fsub <2 x double> %i.eg, %i.en          ; 2 uses
  %i.et = fadd <2 x double> %i.eh, %i.em          ; 2 uses
  %i.eu = fsub <2 x double> %i.es, %i.et
  %i.ev = fmul <2 x double> %broadcast.splat, %i.eu
  %i.ew = fadd <2 x double> %i.et, %i.es
  %i.ex = fmul <2 x double> %broadcast.splat, %i.ew
  %interleaved.vec726 = shufflevector <2 x double> %i.ev, <2 x double> %i.ex, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec726, ptr %i.ed, align 8, !tbaa !8
  %i.ey = fadd <2 x double> %i.eg, %i.en          ; 2 uses
  %i.ez = fsub <2 x double> %i.em, %i.eh          ; 2 uses
  %i.fa = fsub <2 x double> %i.ez, %i.ey
  %i.fb = fmul <2 x double> %broadcast.splat, %i.fa
  %i.fc = fadd <2 x double> %i.ez, %i.ey
  %i.fd = fmul <2 x double> %broadcast.splat, %i.fc
  %interleaved.vec727 = shufflevector <2 x double> %i.fb, <2 x double> %i.fd, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec727, ptr %i.ej, align 8, !tbaa !8
  %index.next728 = add nuw i64 %index711, 2       ; 2 uses
  %i.fe = icmp eq i64 %index.next728, %n.vec709
  br i1 %i.fe, label %middle.block729, label %vector.body710, !llvm.loop !60

middle.block729:                                  ; preds = %vector.body710
  %cmp.n730 = icmp eq i64 %i.cs, %n.vec709
  br i1 %cmp.n730, label %._crit_edge401, label %.lr.ph400.preheader1106

.lr.ph400.preheader1106:                          ; preds = %vector.memcheck577, %.lr.ph400.preheader, %middle.block729
  %indvars.iv416.ph = phi i64 [ %i.cm, %vector.memcheck577 ], [ %i.cm, %.lr.ph400.preheader ], [ %i.dx, %middle.block729 ]
  br label %.lr.ph400

.lr.ph400:                                        ; preds = %.lr.ph400.preheader1106, %.lr.ph400
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %.lr.ph400 ], [ %indvars.iv416.ph, %.lr.ph400.preheader1106 ] ; 3 uses
  %i.ff = add nsw i64 %indvars.iv416, %i.cn       ; 2 uses
  %i.fg = add nsw i64 %i.ff, %i.cn                ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv416 ; 3 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !8 ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ff ; 3 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !8 ; 2 uses
  %i.fl = fadd double %i.fi, %i.fk                ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fh, i64 8      ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !8 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fj, i64 8      ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !8 ; 2 uses
  %i.fq = fadd double %i.fn, %i.fp                ; 2 uses
  %i.fr = fsub double %i.fi, %i.fk                ; 2 uses
  %i.fs = fsub double %i.fn, %i.fp                ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fg ; 3 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !8 ; 2 uses
  %gep439 = getelementptr [8 x i8], ptr %invariant.gep438, i64 %i.fg ; 3 uses
  %i.fv = load double, ptr %gep439, align 8, !tbaa !8 ; 2 uses
  %i.fw = fadd double %i.fu, %i.fv                ; 2 uses
  %i.fx = getelementptr i8, ptr %i.ft, i64 8      ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !8 ; 2 uses
  %i.fz = getelementptr i8, ptr %gep439, i64 8    ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !8 ; 2 uses
  %i.gb = fadd double %i.fy, %i.ga                ; 2 uses
  %i.gc = fsub double %i.fu, %i.fv                ; 2 uses
  %i.gd = fsub double %i.fy, %i.ga                ; 2 uses
  %i.ge = fadd double %i.fl, %i.fw
  store double %i.ge, ptr %i.fh, align 8, !tbaa !8
  %i.gf = fadd double %i.fq, %i.gb
  store double %i.gf, ptr %i.fm, align 8, !tbaa !8
  %i.gg = fsub double %i.gb, %i.fq
  store double %i.gg, ptr %i.ft, align 8, !tbaa !8
  %i.gh = fsub double %i.fl, %i.fw
  store double %i.gh, ptr %i.fx, align 8, !tbaa !8
  %i.gi = fsub double %i.fr, %i.gd                ; 2 uses
  %i.gj = fadd double %i.fs, %i.gc                ; 2 uses
  %i.gk = fsub double %i.gi, %i.gj
  %i.gl = fmul double %i.cj, %i.gk
  store double %i.gl, ptr %i.fj, align 8, !tbaa !8
  %i.gm = fadd double %i.gj, %i.gi
  %i.gn = fmul double %i.cj, %i.gm
  store double %i.gn, ptr %i.fo, align 8, !tbaa !8
  %i.go = fadd double %i.fr, %i.gd                ; 2 uses
  %i.gp = fsub double %i.gc, %i.fs                ; 2 uses
  %i.gq = fsub double %i.gp, %i.go
  %i.gr = fmul double %i.cj, %i.gq
  store double %i.gr, ptr %gep439, align 8, !tbaa !8
  %i.gs = fadd double %i.gp, %i.go
  %i.gt = fmul double %i.cj, %i.gs
  store double %i.gt, ptr %i.fz, align 8, !tbaa !8
  %indvars.iv.next417 = add nsw i64 %indvars.iv416, 2 ; 2 uses
  %i.gu = icmp slt i64 %indvars.iv.next417, %i.co
  br i1 %i.gu, label %.lr.ph400, label %._crit_edge401, !llvm.loop !61

._crit_edge401:                                   ; preds = %.lr.ph400, %middle.block729, %._crit_edge
  %i.gv = shl i32 %1, 3                           ; 3 uses
  %i.gw = icmp slt i32 %i.gv, %0
  br i1 %i.gw, label %.lr.ph413.preheader, label %._crit_edge414

.lr.ph413.preheader:                              ; preds = %._crit_edge401
  %i.gx = sext i32 %i.gv to i64                   ; 23 uses
  %i.gy = sext i32 %1 to i64                      ; 23 uses
  %i.gz = mul i32 %1, 12
  %i.ha = sext i32 %i.a to i64                    ; 2 uses
  %i.hb = zext nneg i32 %0 to i64
  %invariant.gep440 = getelementptr [8 x i8], ptr %2, i64 %i.gy ; 2 uses
  %invariant.op = add nsw i64 %i.ha, %i.gy
  %invariant.gep442 = getelementptr [8 x i8], ptr %2, i64 %i.gy ; 2 uses
  %scevgep734 = getelementptr i8, ptr %2, i64 8
  %i.hc = add nsw i64 %i.gy, %i.gx
  %i.hd = add nsw i64 %i.hc, %i.ha
  %scevgep736 = getelementptr i8, ptr %2, i64 8
  %scevgep738 = getelementptr i8, ptr %2, i64 16
  %i.he = shl nsw i64 %i.gy, 4                    ; 3 uses
  %scevgep740 = getelementptr i8, ptr %2, i64 %i.he
  %i.hf = or disjoint i64 %i.he, 8                ; 2 uses
  %scevgep742 = getelementptr i8, ptr %2, i64 %i.hf
  %scevgep744 = getelementptr i8, ptr %2, i64 %i.hf
  %i.hg = getelementptr i8, ptr %2, i64 %i.he
  %scevgep746 = getelementptr i8, ptr %i.hg, i64 16
  %scevgep749 = getelementptr i8, ptr %2, i64 8
  %scevgep751 = getelementptr i8, ptr %2, i64 8
  %scevgep753 = getelementptr i8, ptr %2, i64 16
  %i.hh = mul nsw i64 %i.gy, 24                   ; 3 uses
  %scevgep755 = getelementptr i8, ptr %2, i64 %i.hh
  %i.hi = add nsw i64 %i.hh, 8                    ; 2 uses
  %scevgep757 = getelementptr i8, ptr %2, i64 %i.hi
  %scevgep759 = getelementptr i8, ptr %2, i64 %i.hi
  %i.hj = getelementptr i8, ptr %2, i64 %i.hh
  %scevgep761 = getelementptr i8, ptr %i.hj, i64 16
  %i.hk = add nsw i64 %i.gy, %i.gx                ; 2 uses
  %i.hl = or disjoint i64 %i.gx, 2
  %i.hm = xor i64 %i.gx, -1
  %i.hn = shl nsw i64 %i.gx, 3                    ; 3 uses
  %i.ho = shl nsw i64 %i.gx, 3
  %i.hp = shl nsw i64 %i.gy, 4
  %i.hq = shl nsw i64 %i.hk, 3
  %i.hr = mul nsw i64 %i.gy, 24
  %i.hs = add nsw i64 %i.hr, %i.hn                ; 2 uses
  %i.ht = shl nsw i64 %i.gx, 3                    ; 5 uses
  %i.hu = shl nsw i64 %i.gx, 3
  %i.hv = add nsw i64 %i.gy, %i.gx                ; 2 uses
  %i.hw = or disjoint i64 %i.gx, 2
  %i.hx = xor i64 %i.gx, -1
  %i.hy = shl nsw i64 %i.gy, 4
  %i.hz = add nsw i64 %i.hy, %i.ht                ; 3 uses
  %i.ia = shl nsw i64 %i.hv, 3                    ; 3 uses
  %i.ib = mul nsw i64 %i.gy, 24
  %i.ic = add nsw i64 %i.ib, %i.ht                ; 3 uses
  %i.id = add nsw i64 %i.gy, %i.gx
  %i.ie = or disjoint i64 %i.gx, 2
  %i.if = xor i64 %i.gx, -1
  %i.ig = getelementptr i8, ptr %2, i64 %i.ht
  %i.ih = getelementptr i8, ptr %2, i64 %i.ht
  %i.ii = getelementptr i8, ptr %i.ih, i64 8
  %i.ij = getelementptr i8, ptr %2, i64 %i.hz
  %i.ik = getelementptr i8, ptr %2, i64 %i.hz
  %i.il = getelementptr i8, ptr %i.ik, i64 8
  %i.im = getelementptr i8, ptr %2, i64 %i.ia
  %i.in = getelementptr i8, ptr %2, i64 %i.ia
  %i.io = getelementptr i8, ptr %i.in, i64 8
  %i.ip = getelementptr i8, ptr %2, i64 %i.ht
  %i.iq = getelementptr i8, ptr %i.ip, i64 16
  %i.ir = getelementptr i8, ptr %2, i64 %i.hz
  %i.is = getelementptr i8, ptr %i.ir, i64 16
  %i.it = getelementptr i8, ptr %2, i64 %i.ia
  %i.iu = getelementptr i8, ptr %i.it, i64 16
  %i.iv = getelementptr i8, ptr %2, i64 %i.ic
  %i.iw = getelementptr i8, ptr %2, i64 %i.ic
  %i.ix = getelementptr i8, ptr %i.iw, i64 8
  %i.iy = getelementptr i8, ptr %2, i64 %i.ic
  %i.iz = getelementptr i8, ptr %i.iy, i64 16
  %i.ja = getelementptr i8, ptr %2, i64 %i.hn
  %i.jb = getelementptr i8, ptr %i.ja, i64 8
  %i.jc = getelementptr i8, ptr %2, i64 %i.hp
  %i.jd = getelementptr i8, ptr %i.jc, i64 %i.hn
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %i.jf = getelementptr i8, ptr %2, i64 %i.hq
  %i.jg = getelementptr i8, ptr %i.jf, i64 8
  %i.jh = getelementptr i8, ptr %2, i64 %i.hs
  %i.ji = getelementptr i8, ptr %2, i64 %i.hs
  %i.jj = getelementptr i8, ptr %i.ji, i64 8
  br label %.lr.ph413

.lr.ph413:                                        ; preds = %.lr.ph413.preheader, %._crit_edge409
  %indvar = phi i64 [ 0, %.lr.ph413.preheader ], [ %indvar.next, %._crit_edge409 ] ; 10 uses
  %indvars.iv429 = phi i64 [ 0, %.lr.ph413.preheader ], [ %indvars.iv.next430, %._crit_edge409 ] ; 2 uses
  %indvars.iv424 = phi i32 [ %i.gz, %.lr.ph413.preheader ], [ %indvars.iv.next425, %._crit_edge409 ] ; 3 uses
  %indvars.iv419 = phi i64 [ %i.gx, %.lr.ph413.preheader ], [ %indvars.iv.next420, %._crit_edge409 ] ; 8 uses
  %i.jk = mul i64 %indvar, %i.gx                  ; 2 uses
  %i.jl = add i64 %i.id, %i.jk
  %i.jm = add i64 %i.ie, %i.jk
  %smax1065 = tail call i64 @llvm.smax.i64(i64 %i.jl, i64 %i.jm)
  %i.jn = mul i64 %indvar, %i.gx
  %i.jo = sub i64 %i.if, %i.jn
  %i.jp = add i64 %smax1065, %i.jo                ; 2 uses
  %i.jq = lshr i64 %i.jp, 1
  %i.jr = add nuw i64 %i.jq, 1                    ; 2 uses
  %i.js = mul i64 %i.hu, %indvar                  ; 12 uses
  %scevgep933.a = getelementptr i8, ptr %i.ig, i64 %i.js ; 7 uses
  %scevgep934 = getelementptr i8, ptr %i.ii, i64 %i.js ; 8 uses
  %i.jt = mul i64 %indvar, %i.gx                  ; 2 uses
  %i.ju = add i64 %i.hv, %i.jt
  %i.jv = add i64 %i.hw, %i.jt
  %smax935 = tail call i64 @llvm.smax.i64(i64 %i.ju, i64 %i.jv)
  %i.jw = mul i64 %indvar, %i.gx
  %i.jx = sub i64 %i.hx, %i.jw
  %i.jy = add i64 %smax935, %i.jx
  %i.jz = shl i64 %i.jy, 3
  %i.ka = and i64 %i.jz, -16                      ; 8 uses
  %scevgep936.a = getelementptr i8, ptr %scevgep934, i64 %i.ka ; 7 uses
  %scevgep937.a = getelementptr i8, ptr %i.ij, i64 %i.js ; 7 uses
  %scevgep938.a = getelementptr i8, ptr %i.il, i64 %i.js ; 8 uses
  %scevgep939.a = getelementptr i8, ptr %scevgep938.a, i64 %i.ka ; 7 uses
  %scevgep940.a = getelementptr i8, ptr %i.im, i64 %i.js ; 7 uses
  %scevgep941.a = getelementptr i8, ptr %i.io, i64 %i.js ; 8 uses
  %scevgep942.a = getelementptr i8, ptr %scevgep941.a, i64 %i.ka ; 7 uses
  %scevgep943.a = getelementptr i8, ptr %i.iq, i64 %i.js
  %scevgep944.a = getelementptr i8, ptr %scevgep943.a, i64 %i.ka ; 7 uses
  %scevgep945.a = getelementptr i8, ptr %i.is, i64 %i.js
  %scevgep946.a = getelementptr i8, ptr %scevgep945.a, i64 %i.ka ; 7 uses
  %scevgep947.a = getelementptr i8, ptr %i.iu, i64 %i.js
  %scevgep948.a = getelementptr i8, ptr %scevgep947.a, i64 %i.ka ; 7 uses
  %scevgep949.a = getelementptr i8, ptr %i.iv, i64 %i.js ; 7 uses
  %scevgep950.a = getelementptr i8, ptr %i.ix, i64 %i.js ; 8 uses
  %scevgep951.a = getelementptr i8, ptr %scevgep950.a, i64 %i.ka ; 7 uses
  %scevgep952.a = getelementptr i8, ptr %i.iz, i64 %i.js
  %scevgep953 = getelementptr i8, ptr %scevgep952.a, i64 %i.ka ; 7 uses
  %i.kb = mul i64 %indvar, %i.gx                  ; 2 uses
  %i.kc = add i64 %i.hk, %i.kb
  %i.kd = add i64 %i.hl, %i.kb
  %smax914 = tail call i64 @llvm.smax.i64(i64 %i.kc, i64 %i.kd)
  %i.ke = mul i64 %indvar, %i.gx
  %i.kf = sub i64 %i.hm, %i.ke
  %i.kg = add i64 %smax914, %i.kf                 ; 2 uses
  %i.kh = lshr i64 %i.kg, 1                       ; 5 uses
  %i.ki = mul i64 %i.ho, %indvar                  ; 5 uses
  %scevgep915.a = getelementptr i8, ptr %i.jb, i64 %i.ki ; 2 uses
  %scevgep916 = getelementptr i8, ptr %i.je, i64 %i.ki ; 2 uses
  %scevgep920 = getelementptr i8, ptr %i.jg, i64 %i.ki ; 2 uses
  %scevgep924 = getelementptr i8, ptr %i.jh, i64 %i.ki ; 2 uses
  %scevgep928 = getelementptr i8, ptr %i.jj, i64 %i.ki ; 2 uses
  %i.kj = sext i32 %indvars.iv424 to i64          ; 4 uses
  %i.kk = shl nsw i64 %i.kj, 3                    ; 7 uses
  %scevgep733 = getelementptr i8, ptr %2, i64 %i.kk ; 7 uses
  %i.kl = mul i64 %indvar, %i.gx
  %i.km = add i64 %i.hd, %i.kl
  %i.kn = or disjoint i64 %i.kj, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.km, i64 %i.kn)
  %i.ko = xor i64 %i.kj, -1
  %i.kp = add i64 %smax, %i.ko
  %i.kq = shl i64 %i.kp, 3
  %i.kr = and i64 %i.kq, -16                      ; 2 uses
  %i.ks = add i64 %i.kr, %i.kk                    ; 6 uses
  %scevgep735 = getelementptr i8, ptr %scevgep734, i64 %i.ks ; 7 uses
  %scevgep737 = getelementptr i8, ptr %scevgep736, i64 %i.kk ; 7 uses
  %scevgep739 = getelementptr i8, ptr %scevgep738, i64 %i.ks ; 7 uses
  %scevgep741 = getelementptr i8, ptr %scevgep740, i64 %i.kk ; 7 uses
  %scevgep743 = getelementptr i8, ptr %scevgep742, i64 %i.ks ; 7 uses
  %scevgep745 = getelementptr i8, ptr %scevgep744, i64 %i.kk ; 7 uses
  %scevgep747 = getelementptr i8, ptr %scevgep746, i64 %i.ks ; 7 uses
  %i.kt = add nsw i64 %i.gy, %i.kj
  %i.ku = shl nsw i64 %i.kt, 3                    ; 3 uses
  %scevgep748 = getelementptr i8, ptr %2, i64 %i.ku ; 7 uses
  %i.kv = add i64 %i.kr, %i.ku                    ; 2 uses
  %scevgep750 = getelementptr i8, ptr %scevgep749, i64 %i.kv ; 7 uses
  %scevgep752 = getelementptr i8, ptr %scevgep751, i64 %i.ku ; 7 uses
  %scevgep754 = getelementptr i8, ptr %scevgep753, i64 %i.kv ; 7 uses
  %scevgep756 = getelementptr i8, ptr %scevgep755, i64 %i.kk ; 7 uses
  %scevgep758 = getelementptr i8, ptr %scevgep757, i64 %i.ks ; 7 uses
  %scevgep760 = getelementptr i8, ptr %scevgep759, i64 %i.kk ; 7 uses
  %scevgep762 = getelementptr i8, ptr %scevgep761, i64 %i.ks ; 7 uses
  %i.kw = sext i32 %indvars.iv424 to i64          ; 6 uses
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 2 ; 3 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next430
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !8 ; 5 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv429
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load double, ptr %i.la, align 8, !tbaa !8 ; 4 uses
  %.idx = shl nuw nsw i64 %indvars.iv.next430, 4
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  %i.ld = load <2 x double>, ptr %i.lc, align 8, !tbaa !8 ; 6 uses
  %i.le = fmul double %i.lb, 2.000000e+00         ; 2 uses
  %i.lf = fneg double %i.le
  %i.lg = insertelement <2 x double> poison, double %i.le, i64 0
  %i.lh = insertelement <2 x double> %i.lg, double %i.lf, i64 1
  %i.li = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lj = fneg <2 x double> %i.ld
  %i.lk = shufflevector <2 x double> %i.lj, <2 x double> %i.ld, <2 x i32> <i32 1, i32 2>
  %i.ll = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.ld, <2 x double> %i.lk) ; 4 uses
  %i.lm = add i64 %indvars.iv419, %i.gy
  br i1 %i.b, label %.lr.ph404.preheader, label %._crit_edge409

.lr.ph404.preheader:                              ; preds = %.lr.ph413
  %min.iters.check1067 = icmp ult i64 %i.jp, 22
  br i1 %min.iters.check1067, label %.lr.ph404.preheader1105, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph404.preheader
  %mul.result = shl i64 %i.kh, 4
  %i.ln = getelementptr i8, ptr %scevgep915.a, i64 %mul.result
  %i.lo = icmp ult ptr %i.ln, %scevgep915.a
  %mul.result918 = shl i64 %i.kh, 4
  %mul.overflow919 = icmp ugt i64 %i.kg, 2305843009213693951
  %i.lp = getelementptr i8, ptr %scevgep916, i64 %mul.result918
  %i.lq = icmp ult ptr %i.lp, %scevgep916
  %i.lr = or i1 %i.lq, %mul.overflow919
  %mul.result922 = shl i64 %i.kh, 4
  %i.ls = getelementptr i8, ptr %scevgep920, i64 %mul.result922
  %i.lt = icmp ult ptr %i.ls, %scevgep920
  %mul.result926 = shl i64 %i.kh, 4
  %i.lu = getelementptr i8, ptr %scevgep924, i64 %mul.result926
  %i.lv = icmp ult ptr %i.lu, %scevgep924
  %mul.result930 = shl i64 %i.kh, 4
  %i.lw = getelementptr i8, ptr %scevgep928, i64 %mul.result930
  %i.lx = icmp ult ptr %i.lw, %scevgep928
  %i.ly = or i1 %i.lo, %i.lr
  %i.lz = or i1 %i.lt, %i.ly
  %i.ma = or i1 %i.lv, %i.lz
  %i.mb = or i1 %i.lx, %i.ma
  br i1 %i.mb, label %.lr.ph404.preheader1105, label %vector.memcheck932

vector.memcheck932:                               ; preds = %vector.scevcheck
  %bound0954 = icmp ult ptr %scevgep933.a, %scevgep939.a
  %bound1955 = icmp ult ptr %scevgep937.a, %scevgep936.a
  %found.conflict956 = and i1 %bound0954, %bound1955
  %bound0957 = icmp ult ptr %scevgep933.a, %scevgep942.a
  %bound1958 = icmp ult ptr %scevgep940.a, %scevgep936.a
  %found.conflict959 = and i1 %bound0957, %bound1958
  %conflict.rdx960 = or i1 %found.conflict956, %found.conflict959
  %bound0961 = icmp ult ptr %scevgep933.a, %scevgep944.a
  %bound1962 = icmp ult ptr %scevgep934, %scevgep936.a
  %found.conflict963 = and i1 %bound0961, %bound1962
  %conflict.rdx964 = or i1 %conflict.rdx960, %found.conflict963
  %bound0965 = icmp ult ptr %scevgep933.a, %scevgep946.a
  %bound1966 = icmp ult ptr %scevgep938.a, %scevgep936.a
  %found.conflict967 = and i1 %bound0965, %bound1966
  %conflict.rdx968 = or i1 %conflict.rdx964, %found.conflict967
  %bound0969 = icmp ult ptr %scevgep933.a, %scevgep948.a
  %bound1970 = icmp ult ptr %scevgep941.a, %scevgep936.a
  %found.conflict971 = and i1 %bound0969, %bound1970
  %conflict.rdx972 = or i1 %conflict.rdx968, %found.conflict971
  %bound0973 = icmp ult ptr %scevgep933.a, %scevgep951.a
  %bound1974 = icmp ult ptr %scevgep949.a, %scevgep936.a
  %found.conflict975 = and i1 %bound0973, %bound1974
  %conflict.rdx976 = or i1 %conflict.rdx972, %found.conflict975
  %bound0977 = icmp ult ptr %scevgep933.a, %scevgep953
  %bound1978 = icmp ult ptr %scevgep950.a, %scevgep936.a
  %found.conflict979 = and i1 %bound0977, %bound1978
  %conflict.rdx980 = or i1 %conflict.rdx976, %found.conflict979
  %bound0981 = icmp ult ptr %scevgep937.a, %scevgep942.a
  %bound1982 = icmp ult ptr %scevgep940.a, %scevgep939.a
  %found.conflict983 = and i1 %bound0981, %bound1982
  %conflict.rdx984 = or i1 %conflict.rdx980, %found.conflict983
  %bound0985 = icmp ult ptr %scevgep937.a, %scevgep944.a
  %bound1986 = icmp ult ptr %scevgep934, %scevgep939.a
  %found.conflict987 = and i1 %bound0985, %bound1986
  %conflict.rdx988 = or i1 %conflict.rdx984, %found.conflict987
  %bound0989 = icmp ult ptr %scevgep937.a, %scevgep946.a
  %bound1990 = icmp ult ptr %scevgep938.a, %scevgep939.a
  %found.conflict991 = and i1 %bound0989, %bound1990
  %conflict.rdx992 = or i1 %conflict.rdx988, %found.conflict991
  %bound0993 = icmp ult ptr %scevgep937.a, %scevgep948.a
  %bound1994 = icmp ult ptr %scevgep941.a, %scevgep939.a
  %found.conflict995 = and i1 %bound0993, %bound1994
  %conflict.rdx996 = or i1 %conflict.rdx992, %found.conflict995
  %bound0997 = icmp ult ptr %scevgep937.a, %scevgep951.a
  %bound1998 = icmp ult ptr %scevgep949.a, %scevgep939.a
  %found.conflict999 = and i1 %bound0997, %bound1998
  %conflict.rdx1000 = or i1 %conflict.rdx996, %found.conflict999
  %bound01001 = icmp ult ptr %scevgep937.a, %scevgep953
  %bound11002 = icmp ult ptr %scevgep950.a, %scevgep939.a
  %found.conflict1003 = and i1 %bound01001, %bound11002
  %conflict.rdx1004 = or i1 %conflict.rdx1000, %found.conflict1003
  %bound01005 = icmp ult ptr %scevgep940.a, %scevgep944.a
  %bound11006 = icmp ult ptr %scevgep934, %scevgep942.a
  %found.conflict1007 = and i1 %bound01005, %bound11006
  %conflict.rdx1008 = or i1 %conflict.rdx1004, %found.conflict1007
  %bound01009 = icmp ult ptr %scevgep940.a, %scevgep946.a
  %bound11010 = icmp ult ptr %scevgep938.a, %scevgep942.a
  %found.conflict1011 = and i1 %bound01009, %bound11010
  %conflict.rdx1012 = or i1 %conflict.rdx1008, %found.conflict1011
  %bound01013 = icmp ult ptr %scevgep940.a, %scevgep948.a
  %bound11014 = icmp ult ptr %scevgep941.a, %scevgep942.a
  %found.conflict1015 = and i1 %bound01013, %bound11014
  %conflict.rdx1016 = or i1 %conflict.rdx1012, %found.conflict1015
  %bound01017 = icmp ult ptr %scevgep940.a, %scevgep951.a
  %bound11018 = icmp ult ptr %scevgep949.a, %scevgep942.a
  %found.conflict1019 = and i1 %bound01017, %bound11018
  %conflict.rdx1020 = or i1 %conflict.rdx1016, %found.conflict1019
  %bound01021 = icmp ult ptr %scevgep940.a, %scevgep953
  %bound11022 = icmp ult ptr %scevgep950.a, %scevgep942.a
  %found.conflict1023 = and i1 %bound01021, %bound11022
  %conflict.rdx1024 = or i1 %conflict.rdx1020, %found.conflict1023
  %bound01025 = icmp ult ptr %scevgep934, %scevgep946.a
  %bound11026 = icmp ult ptr %scevgep938.a, %scevgep944.a
  %found.conflict1027 = and i1 %bound01025, %bound11026
  %conflict.rdx1028 = or i1 %conflict.rdx1024, %found.conflict1027
  %bound01029 = icmp ult ptr %scevgep934, %scevgep948.a
  %bound11030 = icmp ult ptr %scevgep941.a, %scevgep944.a
  %found.conflict1031 = and i1 %bound01029, %bound11030
  %conflict.rdx1032 = or i1 %conflict.rdx1028, %found.conflict1031
  %bound01033 = icmp ult ptr %scevgep934, %scevgep951.a
  %bound11034 = icmp ult ptr %scevgep949.a, %scevgep944.a
  %found.conflict1035 = and i1 %bound01033, %bound11034
  %conflict.rdx1036 = or i1 %conflict.rdx1032, %found.conflict1035
  %bound01037 = icmp ult ptr %scevgep934, %scevgep953
  %bound11038 = icmp ult ptr %scevgep950.a, %scevgep944.a
  %found.conflict1039 = and i1 %bound01037, %bound11038
  %conflict.rdx1040 = or i1 %conflict.rdx1036, %found.conflict1039
  %bound01041 = icmp ult ptr %scevgep938.a, %scevgep948.a
  %bound11042 = icmp ult ptr %scevgep941.a, %scevgep946.a
  %found.conflict1043 = and i1 %bound01041, %bound11042
  %conflict.rdx1044 = or i1 %conflict.rdx1040, %found.conflict1043
  %bound01045 = icmp ult ptr %scevgep938.a, %scevgep951.a
  %bound11046 = icmp ult ptr %scevgep949.a, %scevgep946.a
  %found.conflict1047 = and i1 %bound01045, %bound11046
  %conflict.rdx1048 = or i1 %conflict.rdx1044, %found.conflict1047
  %bound01049 = icmp ult ptr %scevgep938.a, %scevgep953
  %bound11050 = icmp ult ptr %scevgep950.a, %scevgep946.a
  %found.conflict1051 = and i1 %bound01049, %bound11050
  %conflict.rdx1052 = or i1 %conflict.rdx1048, %found.conflict1051
  %bound01053 = icmp ult ptr %scevgep941.a, %scevgep951.a
  %bound11054 = icmp ult ptr %scevgep949.a, %scevgep948.a
  %found.conflict1055 = and i1 %bound01053, %bound11054
  %conflict.rdx1056 = or i1 %conflict.rdx1052, %found.conflict1055
  %bound01057 = icmp ult ptr %scevgep941.a, %scevgep953
  %bound11058 = icmp ult ptr %scevgep950.a, %scevgep948.a
  %found.conflict1059 = and i1 %bound01057, %bound11058
  %conflict.rdx1060 = or i1 %conflict.rdx1056, %found.conflict1059
  %bound01061 = icmp ult ptr %scevgep949.a, %scevgep953
  %bound11062 = icmp ult ptr %scevgep950.a, %scevgep951.a
  %found.conflict1063 = and i1 %bound01061, %bound11062
  %conflict.rdx1064 = or i1 %conflict.rdx1060, %found.conflict1063
  br i1 %conflict.rdx1064, label %.lr.ph404.preheader1105, label %vector.ph1068

vector.ph1068:                                    ; preds = %vector.memcheck932
  %n.vec1070 = and i64 %i.jr, -2                  ; 3 uses
  %i.mc = shl i64 %n.vec1070, 1
  %i.md = add i64 %indvars.iv419, %i.mc
  %broadcast.splatinsert1071 = insertelement <2 x double> poison, double %i.lb, i64 0
  %broadcast.splat1072 = shufflevector <2 x double> %broadcast.splatinsert1071, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1073 = insertelement <2 x double> poison, double %i.ky, i64 0
  %broadcast.splat1074 = shufflevector <2 x double> %broadcast.splatinsert1073, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat1076 = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat1080 = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat1082 = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %vector.ph1068
  %index1084 = phi i64 [ 0, %vector.ph1068 ], [ %index.next1101, %vector.body1083 ] ; 2 uses
  %i.me = shl i64 %index1084, 1
  %i.mf = add i64 %indvars.iv419, %i.me           ; 2 uses
  %i.mg = add nsw i64 %i.mf, %i.gy                ; 2 uses
  %i.mh = add nsw i64 %i.mg, %i.gy                ; 2 uses
  %i.mi = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mf ; 2 uses
  %wide.vec1085 = load <4 x double>, ptr %i.mi, align 8, !tbaa !8 ; 2 uses
  %strided.vec1086.a = shufflevector <4 x double> %wide.vec1085, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1087 = shufflevector <4 x double> %wide.vec1085, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mg ; 2 uses
  %wide.vec1088 = load <4 x double>, ptr %i.mj, align 8, !tbaa !8 ; 2 uses
  %strided.vec1089.a = shufflevector <4 x double> %wide.vec1088, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1090 = shufflevector <4 x double> %wide.vec1088, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mk = fadd <2 x double> %strided.vec1086.a, %strided.vec1089.a ; 2 uses
  %i.ml = fadd <2 x double> %strided.vec1087, %strided.vec1090 ; 2 uses
  %i.mm = fsub <2 x double> %strided.vec1086.a, %strided.vec1089.a ; 2 uses
  %i.mn = fsub <2 x double> %strided.vec1087, %strided.vec1090 ; 2 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mh ; 2 uses
  %wide.vec1091 = load <4 x double>, ptr %i.mo, align 8, !tbaa !8 ; 2 uses
  %strided.vec1092.a = shufflevector <4 x double> %wide.vec1091, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1093 = shufflevector <4 x double> %wide.vec1091, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mp = getelementptr [8 x i8], ptr %invariant.gep440, i64 %i.mh ; 2 uses
  %wide.vec1094 = load <4 x double>, ptr %i.mp, align 8, !tbaa !8 ; 2 uses
  %strided.vec1095.a = shufflevector <4 x double> %wide.vec1094, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1096 = shufflevector <4 x double> %wide.vec1094, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mq = fadd <2 x double> %strided.vec1092.a, %strided.vec1095.a ; 2 uses
  %i.mr = fadd <2 x double> %strided.vec1093, %strided.vec1096 ; 2 uses
  %i.ms = fsub <2 x double> %strided.vec1092.a, %strided.vec1095.a ; 2 uses
  %i.mt = fsub <2 x double> %strided.vec1093, %strided.vec1096 ; 2 uses
  %i.mu = fadd <2 x double> %i.mk, %i.mq
  %i.mv = fadd <2 x double> %i.ml, %i.mr
  %interleaved.vec1097.a = shufflevector <2 x double> %i.mu, <2 x double> %i.mv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1097.a, ptr %i.mi, align 8, !tbaa !8
  %i.mw = fsub <2 x double> %i.mk, %i.mq          ; 2 uses
  %i.mx = fsub <2 x double> %i.ml, %i.mr          ; 2 uses
  %i.my = fneg <2 x double> %i.mx
  %i.mz = fmul <2 x double> %broadcast.splat1072, %i.my
  %i.na = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1074, <2 x double> %i.mw, <2 x double> %i.mz)
  %i.nb = fmul <2 x double> %broadcast.splat1072, %i.mw
  %i.nc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1074, <2 x double> %i.mx, <2 x double> %i.nb)
  %interleaved.vec1098.a = shufflevector <2 x double> %i.na, <2 x double> %i.nc, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1098.a, ptr %i.mo, align 8, !tbaa !8
  %i.nd = fsub <2 x double> %i.mm, %i.mt          ; 2 uses
  %i.ne = fadd <2 x double> %i.mn, %i.ms          ; 2 uses
  %i.nf = fneg <2 x double> %i.ne
  %i.ng = fmul <2 x double> %broadcast.splat1076, %i.nf
  %i.nh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.nd, <2 x double> %i.ng)
  %i.ni = fmul <2 x double> %broadcast.splat1076, %i.nd
  %i.nj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.ne, <2 x double> %i.ni)
  %interleaved.vec1099.a = shufflevector <2 x double> %i.nh, <2 x double> %i.nj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1099.a, ptr %i.mj, align 8, !tbaa !8
  %i.nk = fadd <2 x double> %i.mm, %i.mt          ; 2 uses
  %i.nl = fsub <2 x double> %i.mn, %i.ms          ; 2 uses
  %i.nm = fneg <2 x double> %i.nl
  %i.nn = fmul <2 x double> %broadcast.splat1080, %i.nm
  %i.no = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1082, <2 x double> %i.nk, <2 x double> %i.nn)
  %i.np = fmul <2 x double> %broadcast.splat1080, %i.nk
  %i.nq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1082, <2 x double> %i.nl, <2 x double> %i.np)
  %interleaved.vec1100 = shufflevector <2 x double> %i.no, <2 x double> %i.nq, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1100, ptr %i.mp, align 8, !tbaa !8
  %index.next1101 = add nuw i64 %index1084, 2     ; 2 uses
  %i.nr = icmp eq i64 %index.next1101, %n.vec1070
  br i1 %i.nr, label %middle.block1102, label %vector.body1083, !llvm.loop !62

middle.block1102:                                 ; preds = %vector.body1083
  %cmp.n1103 = icmp eq i64 %i.jr, %n.vec1070
  br i1 %cmp.n1103, label %._crit_edge405, label %.lr.ph404.preheader1105

.lr.ph404.preheader1105:                          ; preds = %vector.memcheck932, %vector.scevcheck, %.lr.ph404.preheader, %middle.block1102
  %indvars.iv421.ph = phi i64 [ %indvars.iv419, %vector.memcheck932 ], [ %indvars.iv419, %vector.scevcheck ], [ %indvars.iv419, %.lr.ph404.preheader ], [ %i.md, %middle.block1102 ]
  %i.ns = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nu = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.nv = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nw = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nx = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph404

.lr.ph404:                                        ; preds = %.lr.ph404.preheader1105, %.lr.ph404
  %indvars.iv421 = phi i64 [ %indvars.iv.next422, %.lr.ph404 ], [ %indvars.iv421.ph, %.lr.ph404.preheader1105 ] ; 3 uses
  %i.nz = add nsw i64 %indvars.iv421, %i.gy       ; 2 uses
  %i.oa = add nsw i64 %i.nz, %i.gy                ; 2 uses
  %i.ob = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv421 ; 3 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nz ; 2 uses
  %i.od = getelementptr i8, ptr %i.ob, i64 8
  %i.oe = getelementptr inbounds [8 x i8], ptr %2, i64 %i.oa ; 2 uses
  %gep441 = getelementptr [8 x i8], ptr %invariant.gep440, i64 %i.oa ; 2 uses
  %i.of = load <2 x double>, ptr %i.ob, align 8, !tbaa !8 ; 2 uses
  %i.og = load <2 x double>, ptr %i.oc, align 8, !tbaa !8 ; 2 uses
  %i.oh = fsub <2 x double> %i.of, %i.og          ; 2 uses
  %i.oi = load <2 x double>, ptr %i.oe, align 8, !tbaa !8 ; 2 uses
  %i.oj = load <2 x double>, ptr %gep441, align 8, !tbaa !8 ; 2 uses
  %i.ok = fsub <2 x double> %i.oi, %i.oj
  %i.ol = shufflevector <2 x double> %i.ok, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.om = fadd <2 x double> %i.of, %i.og          ; 2 uses
  %i.on = fadd <2 x double> %i.oi, %i.oj          ; 2 uses
  %i.oo = fadd <2 x double> %i.om, %i.on          ; 2 uses
  %i.op = extractelement <2 x double> %i.oo, i64 0
  store double %i.op, ptr %i.ob, align 8, !tbaa !8
  %i.oq = extractelement <2 x double> %i.oo, i64 1
  store double %i.oq, ptr %i.od, align 8, !tbaa !8
  %i.or = fsub <2 x double> %i.om, %i.on          ; 3 uses
  %i.os = fneg <2 x double> %i.or
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> %i.or, <2 x i32> <i32 1, i32 2>
  %i.ou = fmul <2 x double> %i.nt, %i.ot
  %i.ov = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> %i.or, <2 x double> %i.ou)
  store <2 x double> %i.ov, ptr %i.oe, align 8, !tbaa !8
  %i.ow = fsub <2 x double> %i.oh, %i.ol          ; 3 uses
  %i.ox = fadd <2 x double> %i.oh, %i.ol          ; 3 uses
  %i.oy = shufflevector <2 x double> %i.ow, <2 x double> %i.ox, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.oz = fneg <2 x double> %i.oy
  %i.pa = shufflevector <2 x double> %i.oz, <2 x double> %i.ow, <2 x i32> <i32 1, i32 2>
  %i.pb = fmul <2 x double> %i.nw, %i.pa
  %i.pc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.oy, <2 x double> %i.pb)
  store <2 x double> %i.pc, ptr %i.oc, align 8, !tbaa !8
  %i.pd = shufflevector <2 x double> %i.ox, <2 x double> %i.ow, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.pe = fneg <2 x double> %i.pd
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> %i.ox, <2 x i32> <i32 1, i32 2>
  %i.pg = fmul <2 x double> %i.nx, %i.pf
  %i.ph = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> %i.pd, <2 x double> %i.pg)
  store <2 x double> %i.ph, ptr %gep441, align 8, !tbaa !8
  %indvars.iv.next422 = add nsw i64 %indvars.iv421, 2 ; 2 uses
  %i.pi = icmp slt i64 %indvars.iv.next422, %i.lm
  br i1 %i.pi, label %.lr.ph404, label %._crit_edge405, !llvm.loop !63

._crit_edge405:                                   ; preds = %.lr.ph404, %middle.block1102
  %i.pj = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.pk = load <2 x double>, ptr %i.pj, align 8, !tbaa !8 ; 6 uses
  %i.pl = fmul double %i.ky, 2.000000e+00         ; 2 uses
  %i.pm = fneg double %i.pl
  %i.pn = insertelement <2 x double> poison, double %i.pl, i64 0
  %i.po = insertelement <2 x double> %i.pn, double %i.pm, i64 1
  %i.pp = shufflevector <2 x double> %i.pk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.pq = fneg <2 x double> %i.pk
  %i.pr = shufflevector <2 x double> %i.pq, <2 x double> %i.pk, <2 x i32> <i32 1, i32 2>
  %i.ps = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.po, <2 x double> %i.pk, <2 x double> %i.pr) ; 4 uses
  %.reass = add i64 %indvars.iv419, %invariant.op ; 2 uses
  %i.pt = fneg double %i.lb                       ; 2 uses
  %4 = or disjoint i64 %i.kw, 2
  %5 = tail call i64 @llvm.smax.i64(i64 %.reass, i64 %4)
  %6 = xor i64 %i.kw, -1
  %7 = add i64 %5, %6                             ; 2 uses
  %8 = lshr i64 %7, 1
  %9 = add nuw i64 %8, 1                          ; 2 uses
  %min.iters.check876 = icmp ult i64 %7, 14
  br i1 %min.iters.check876, label %scalar.ph875.preheader, label %vector.memcheck732

vector.memcheck732:                               ; preds = %._crit_edge405
  %bound0763 = icmp ult ptr %scevgep733, %scevgep739
  %bound1764 = icmp ult ptr %scevgep737, %scevgep735
  %found.conflict765 = and i1 %bound0763, %bound1764
  %bound0766 = icmp ult ptr %scevgep733, %scevgep743
  %bound1767 = icmp ult ptr %scevgep741, %scevgep735
  %found.conflict768 = and i1 %bound0766, %bound1767
  %conflict.rdx769 = or i1 %found.conflict765, %found.conflict768
  %bound0770 = icmp ult ptr %scevgep733, %scevgep747
  %bound1771 = icmp ult ptr %scevgep745, %scevgep735
  %found.conflict772 = and i1 %bound0770, %bound1771
  %conflict.rdx773 = or i1 %conflict.rdx769, %found.conflict772
  %bound0774 = icmp ult ptr %scevgep733, %scevgep750
  %bound1775 = icmp ult ptr %scevgep748, %scevgep735
  %found.conflict776 = and i1 %bound0774, %bound1775
  %conflict.rdx777 = or i1 %conflict.rdx773, %found.conflict776
  %bound0778 = icmp ult ptr %scevgep733, %scevgep754
  %bound1779 = icmp ult ptr %scevgep752, %scevgep735
  %found.conflict780 = and i1 %bound0778, %bound1779
  %conflict.rdx781 = or i1 %conflict.rdx777, %found.conflict780
  %bound0782 = icmp ult ptr %scevgep733, %scevgep758
  %bound1783 = icmp ult ptr %scevgep756, %scevgep735
  %found.conflict784 = and i1 %bound0782, %bound1783
  %conflict.rdx785 = or i1 %conflict.rdx781, %found.conflict784
  %bound0786 = icmp ult ptr %scevgep733, %scevgep762
  %bound1787 = icmp ult ptr %scevgep760, %scevgep735
  %found.conflict788 = and i1 %bound0786, %bound1787
  %conflict.rdx789 = or i1 %conflict.rdx785, %found.conflict788
  %bound0790 = icmp ult ptr %scevgep737, %scevgep743
  %bound1791 = icmp ult ptr %scevgep741, %scevgep739
  %found.conflict792 = and i1 %bound0790, %bound1791
  %conflict.rdx793 = or i1 %conflict.rdx789, %found.conflict792
  %bound0794 = icmp ult ptr %scevgep737, %scevgep747
  %bound1795 = icmp ult ptr %scevgep745, %scevgep739
  %found.conflict796 = and i1 %bound0794, %bound1795
  %conflict.rdx797 = or i1 %conflict.rdx793, %found.conflict796
  %bound0798 = icmp ult ptr %scevgep737, %scevgep750
  %bound1799 = icmp ult ptr %scevgep748, %scevgep739
  %found.conflict800 = and i1 %bound0798, %bound1799
  %conflict.rdx801 = or i1 %conflict.rdx797, %found.conflict800
  %bound0802 = icmp ult ptr %scevgep737, %scevgep754
  %bound1803 = icmp ult ptr %scevgep752, %scevgep739
  %found.conflict804 = and i1 %bound0802, %bound1803
  %conflict.rdx805 = or i1 %conflict.rdx801, %found.conflict804
  %bound0806 = icmp ult ptr %scevgep737, %scevgep758
  %bound1807 = icmp ult ptr %scevgep756, %scevgep739
  %found.conflict808 = and i1 %bound0806, %bound1807
  %conflict.rdx809 = or i1 %conflict.rdx805, %found.conflict808
  %bound0810 = icmp ult ptr %scevgep737, %scevgep762
  %bound1811 = icmp ult ptr %scevgep760, %scevgep739
  %found.conflict812 = and i1 %bound0810, %bound1811
  %conflict.rdx813 = or i1 %conflict.rdx809, %found.conflict812
  %bound0814 = icmp ult ptr %scevgep741, %scevgep747
  %bound1815 = icmp ult ptr %scevgep745, %scevgep743
  %found.conflict816 = and i1 %bound0814, %bound1815
  %conflict.rdx817 = or i1 %conflict.rdx813, %found.conflict816
  %bound0818 = icmp ult ptr %scevgep741, %scevgep750
  %bound1819 = icmp ult ptr %scevgep748, %scevgep743
  %found.conflict820 = and i1 %bound0818, %bound1819
  %conflict.rdx821 = or i1 %conflict.rdx817, %found.conflict820
  %bound0822 = icmp ult ptr %scevgep741, %scevgep754
  %bound1823 = icmp ult ptr %scevgep752, %scevgep743
  %found.conflict824 = and i1 %bound0822, %bound1823
  %conflict.rdx825 = or i1 %conflict.rdx821, %found.conflict824
  %bound0826 = icmp ult ptr %scevgep741, %scevgep758
  %bound1827 = icmp ult ptr %scevgep756, %scevgep743
  %found.conflict828 = and i1 %bound0826, %bound1827
  %conflict.rdx829 = or i1 %conflict.rdx825, %found.conflict828
  %bound0830 = icmp ult ptr %scevgep741, %scevgep762
  %bound1831 = icmp ult ptr %scevgep760, %scevgep743
  %found.conflict832 = and i1 %bound0830, %bound1831
  %conflict.rdx833 = or i1 %conflict.rdx829, %found.conflict832
  %bound0834 = icmp ult ptr %scevgep745, %scevgep750
  %bound1835 = icmp ult ptr %scevgep748, %scevgep747
  %found.conflict836 = and i1 %bound0834, %bound1835
  %conflict.rdx837 = or i1 %conflict.rdx833, %found.conflict836
  %bound0838 = icmp ult ptr %scevgep745, %scevgep754
  %bound1839 = icmp ult ptr %scevgep752, %scevgep747
  %found.conflict840 = and i1 %bound0838, %bound1839
  %conflict.rdx841 = or i1 %conflict.rdx837, %found.conflict840
  %bound0842 = icmp ult ptr %scevgep745, %scevgep758
  %bound1843 = icmp ult ptr %scevgep756, %scevgep747
  %found.conflict844 = and i1 %bound0842, %bound1843
  %conflict.rdx845 = or i1 %conflict.rdx841, %found.conflict844
  %bound0846 = icmp ult ptr %scevgep745, %scevgep762
  %bound1847 = icmp ult ptr %scevgep760, %scevgep747
  %found.conflict848 = and i1 %bound0846, %bound1847
  %conflict.rdx849 = or i1 %conflict.rdx845, %found.conflict848
  %bound0850 = icmp ult ptr %scevgep748, %scevgep754
  %bound1851 = icmp ult ptr %scevgep752, %scevgep750
  %found.conflict852 = and i1 %bound0850, %bound1851
  %conflict.rdx853 = or i1 %conflict.rdx849, %found.conflict852
  %bound0854 = icmp ult ptr %scevgep748, %scevgep758
  %bound1855 = icmp ult ptr %scevgep756, %scevgep750
  %found.conflict856 = and i1 %bound0854, %bound1855
  %conflict.rdx857 = or i1 %conflict.rdx853, %found.conflict856
  %bound0858 = icmp ult ptr %scevgep748, %scevgep762
  %bound1859 = icmp ult ptr %scevgep760, %scevgep750
  %found.conflict860 = and i1 %bound0858, %bound1859
  %conflict.rdx861 = or i1 %conflict.rdx857, %found.conflict860
  %bound0862 = icmp ult ptr %scevgep752, %scevgep758
  %bound1863 = icmp ult ptr %scevgep756, %scevgep754
  %found.conflict864 = and i1 %bound0862, %bound1863
  %conflict.rdx865 = or i1 %conflict.rdx861, %found.conflict864
  %bound0866 = icmp ult ptr %scevgep752, %scevgep762
  %bound1867 = icmp ult ptr %scevgep760, %scevgep754
  %found.conflict868 = and i1 %bound0866, %bound1867
  %conflict.rdx869 = or i1 %conflict.rdx865, %found.conflict868
  %bound0870 = icmp ult ptr %scevgep756, %scevgep762
  %bound1871 = icmp ult ptr %scevgep760, %scevgep758
  %found.conflict872 = and i1 %bound0870, %bound1871
  %conflict.rdx873 = or i1 %conflict.rdx869, %found.conflict872
  br i1 %conflict.rdx873, label %scalar.ph875.preheader, label %vector.ph877

vector.ph877:                                     ; preds = %vector.memcheck732
  %n.vec879 = and i64 %9, -2                      ; 3 uses
  %i.pu = shl i64 %n.vec879, 1
  %i.pv = add i64 %i.pu, %i.kw
  %broadcast.splatinsert880 = insertelement <2 x double> poison, double %i.pt, i64 0
  %broadcast.splat881 = shufflevector <2 x double> %broadcast.splatinsert880, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert882 = insertelement <2 x double> poison, double %i.ky, i64 0
  %broadcast.splat883 = shufflevector <2 x double> %broadcast.splatinsert882, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat885 = shufflevector <2 x double> %i.pk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat889 = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat891 = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body892

vector.body892:                                   ; preds = %vector.body892, %vector.ph877
  %index893 = phi i64 [ 0, %vector.ph877 ], [ %index.next910, %vector.body892 ] ; 2 uses
  %i.pw = shl i64 %index893, 1
  %i.px = add i64 %i.pw, %i.kw                    ; 2 uses
  %i.py = add nsw i64 %i.px, %i.gy                ; 2 uses
  %i.pz = add nsw i64 %i.py, %i.gy                ; 2 uses
  %i.qa = getelementptr inbounds [8 x i8], ptr %2, i64 %i.px ; 2 uses
  %wide.vec894 = load <4 x double>, ptr %i.qa, align 8, !tbaa !8 ; 2 uses
  %strided.vec895.a = shufflevector <4 x double> %wide.vec894, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec896 = shufflevector <4 x double> %wide.vec894, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.py ; 2 uses
  %wide.vec897 = load <4 x double>, ptr %i.qb, align 8, !tbaa !8 ; 2 uses
  %strided.vec898.a = shufflevector <4 x double> %wide.vec897, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec899 = shufflevector <4 x double> %wide.vec897, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qc = fadd <2 x double> %strided.vec895.a, %strided.vec898.a ; 2 uses
  %i.qd = fadd <2 x double> %strided.vec896, %strided.vec899 ; 2 uses
  %i.qe = fsub <2 x double> %strided.vec895.a, %strided.vec898.a ; 2 uses
  %i.qf = fsub <2 x double> %strided.vec896, %strided.vec899 ; 2 uses
  %i.qg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.pz ; 2 uses
  %wide.vec900 = load <4 x double>, ptr %i.qg, align 8, !tbaa !8 ; 2 uses
  %strided.vec901.a = shufflevector <4 x double> %wide.vec900, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec902 = shufflevector <4 x double> %wide.vec900, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qh = getelementptr [8 x i8], ptr %invariant.gep442, i64 %i.pz ; 2 uses
  %wide.vec903 = load <4 x double>, ptr %i.qh, align 8, !tbaa !8 ; 2 uses
  %strided.vec904.a = shufflevector <4 x double> %wide.vec903, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec905 = shufflevector <4 x double> %wide.vec903, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qi = fadd <2 x double> %strided.vec901.a, %strided.vec904.a ; 2 uses
  %i.qj = fadd <2 x double> %strided.vec902, %strided.vec905 ; 2 uses
  %i.qk = fsub <2 x double> %strided.vec901.a, %strided.vec904.a ; 2 uses
  %i.ql = fsub <2 x double> %strided.vec902, %strided.vec905 ; 2 uses
  %i.qm = fadd <2 x double> %i.qc, %i.qi
  %i.qn = fadd <2 x double> %i.qd, %i.qj
  %interleaved.vec906.a = shufflevector <2 x double> %i.qm, <2 x double> %i.qn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec906.a, ptr %i.qa, align 8, !tbaa !8
  %i.qo = fsub <2 x double> %i.qc, %i.qi          ; 2 uses
  %i.qp = fsub <2 x double> %i.qd, %i.qj          ; 2 uses
  %i.qq = fneg <2 x double> %i.qp
  %i.qr = fmul <2 x double> %broadcast.splat883, %i.qq
  %i.qs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat881, <2 x double> %i.qo, <2 x double> %i.qr)
  %i.qt = fmul <2 x double> %broadcast.splat883, %i.qo
  %i.qu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat881, <2 x double> %i.qp, <2 x double> %i.qt)
  %interleaved.vec907.a = shufflevector <2 x double> %i.qs, <2 x double> %i.qu, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec907.a, ptr %i.qg, align 8, !tbaa !8
  %i.qv = fsub <2 x double> %i.qe, %i.ql          ; 2 uses
  %i.qw = fadd <2 x double> %i.qf, %i.qk          ; 2 uses
  %i.qx = fneg <2 x double> %i.qw
  %i.qy = fmul <2 x double> %broadcast.splat885, %i.qx
  %i.qz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pp, <2 x double> %i.qv, <2 x double> %i.qy)
  %i.ra = fmul <2 x double> %broadcast.splat885, %i.qv
  %i.rb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pp, <2 x double> %i.qw, <2 x double> %i.ra)
  %interleaved.vec908.a = shufflevector <2 x double> %i.qz, <2 x double> %i.rb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec908.a, ptr %i.qb, align 8, !tbaa !8
  %i.rc = fadd <2 x double> %i.qe, %i.ql          ; 2 uses
  %i.rd = fsub <2 x double> %i.qf, %i.qk          ; 2 uses
  %i.re = fneg <2 x double> %i.rd
  %i.rf = fmul <2 x double> %broadcast.splat889, %i.re
  %i.rg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat891, <2 x double> %i.rc, <2 x double> %i.rf)
  %i.rh = fmul <2 x double> %broadcast.splat889, %i.rc
  %i.ri = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat891, <2 x double> %i.rd, <2 x double> %i.rh)
  %interleaved.vec909 = shufflevector <2 x double> %i.rg, <2 x double> %i.ri, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec909, ptr %i.qh, align 8, !tbaa !8
  %index.next910 = add nuw i64 %index893, 2       ; 2 uses
  %i.rj = icmp eq i64 %index.next910, %n.vec879
  br i1 %i.rj, label %middle.block911, label %vector.body892, !llvm.loop !64

middle.block911:                                  ; preds = %vector.body892
  %cmp.n912 = icmp eq i64 %9, %n.vec879
  br i1 %cmp.n912, label %._crit_edge409, label %scalar.ph875.preheader

scalar.ph875.preheader:                           ; preds = %vector.memcheck732, %._crit_edge405, %middle.block911
  %indvars.iv426.ph = phi i64 [ %i.kw, %vector.memcheck732 ], [ %i.kw, %._crit_edge405 ], [ %i.pv, %middle.block911 ]
  %i.rk = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.rl = shufflevector <2 x double> %i.rk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rm = insertelement <2 x double> poison, double %i.pt, i64 0
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ro = shufflevector <2 x double> %i.pk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rp = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rq = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %scalar.ph875

scalar.ph875:                                     ; preds = %scalar.ph875.preheader, %scalar.ph875
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %scalar.ph875 ], [ %indvars.iv426.ph, %scalar.ph875.preheader ] ; 3 uses
  %i.rr = add nsw i64 %indvars.iv426, %i.gy       ; 2 uses
  %i.rs = add nsw i64 %i.rr, %i.gy                ; 2 uses
  %i.rt = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv426 ; 3 uses
  %i.ru = getelementptr inbounds [8 x i8], ptr %2, i64 %i.rr ; 2 uses
  %i.rv = getelementptr i8, ptr %i.rt, i64 8
  %i.rw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.rs ; 2 uses
  %gep443 = getelementptr [8 x i8], ptr %invariant.gep442, i64 %i.rs ; 2 uses
  %i.rx = load <2 x double>, ptr %i.rt, align 8, !tbaa !8 ; 2 uses
  %i.ry = load <2 x double>, ptr %i.ru, align 8, !tbaa !8 ; 2 uses
  %i.rz = fsub <2 x double> %i.rx, %i.ry          ; 2 uses
  %i.sa = load <2 x double>, ptr %i.rw, align 8, !tbaa !8 ; 2 uses
  %i.sb = load <2 x double>, ptr %gep443, align 8, !tbaa !8 ; 2 uses
  %i.sc = fsub <2 x double> %i.sa, %i.sb
  %i.sd = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.se = fadd <2 x double> %i.rx, %i.ry          ; 2 uses
  %i.sf = fadd <2 x double> %i.sa, %i.sb          ; 2 uses
  %i.sg = fadd <2 x double> %i.se, %i.sf          ; 2 uses
  %i.sh = extractelement <2 x double> %i.sg, i64 0
  store double %i.sh, ptr %i.rt, align 8, !tbaa !8
  %i.si = extractelement <2 x double> %i.sg, i64 1
  store double %i.si, ptr %i.rv, align 8, !tbaa !8
  %i.sj = fsub <2 x double> %i.se, %i.sf          ; 3 uses
  %i.sk = fneg <2 x double> %i.sj
  %i.sl = shufflevector <2 x double> %i.sk, <2 x double> %i.sj, <2 x i32> <i32 1, i32 2>
  %i.sm = fmul <2 x double> %i.rl, %i.sl
  %i.sn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> %i.sj, <2 x double> %i.sm)
  store <2 x double> %i.sn, ptr %i.rw, align 8, !tbaa !8
  %i.so = fsub <2 x double> %i.rz, %i.sd          ; 3 uses
  %i.sp = fadd <2 x double> %i.rz, %i.sd          ; 3 uses
  %i.sq = shufflevector <2 x double> %i.so, <2 x double> %i.sp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.sr = fneg <2 x double> %i.sq
  %i.ss = shufflevector <2 x double> %i.sr, <2 x double> %i.so, <2 x i32> <i32 1, i32 2>
  %i.st = fmul <2 x double> %i.ro, %i.ss
  %i.su = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pp, <2 x double> %i.sq, <2 x double> %i.st)
  store <2 x double> %i.su, ptr %i.ru, align 8, !tbaa !8
  %i.sv = shufflevector <2 x double> %i.sp, <2 x double> %i.so, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.sw = fneg <2 x double> %i.sv
  %i.sx = shufflevector <2 x double> %i.sw, <2 x double> %i.sp, <2 x i32> <i32 1, i32 2>
  %i.sy = fmul <2 x double> %i.rp, %i.sx
  %i.sz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rq, <2 x double> %i.sv, <2 x double> %i.sy)
  store <2 x double> %i.sz, ptr %gep443, align 8, !tbaa !8
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 2 ; 2 uses
  %i.ta = icmp slt i64 %indvars.iv.next427, %.reass
  br i1 %i.ta, label %scalar.ph875, label %._crit_edge409, !llvm.loop !65

._crit_edge409:                                   ; preds = %scalar.ph875, %middle.block911, %.lr.ph413
  %indvars.iv.next420 = add nsw i64 %indvars.iv419, %i.gx ; 2 uses
  %i.tb = icmp slt i64 %indvars.iv.next420, %i.hb
  %indvars.iv.next425 = add i32 %indvars.iv424, %i.gv
  %indvar.next = add i64 %indvar, 1
  br i1 %i.tb, label %.lr.ph413, label %._crit_edge414, !llvm.loop !66

._crit_edge414:                                   ; preds = %._crit_edge409, %._crit_edge401
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = !{!20, !21, i64 0}
!20 = !{!"timeval", !21, i64 0, !21, i64 8}
!21 = !{!"long", !6, i64 0}
!22 = !{!20, !21, i64 8}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11, !15, !16}
!25 = distinct !{!25, !11, !16, !15}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11, !15, !16}
!33 = distinct !{!33, !11, !15, !16}
!34 = distinct !{!34, !11, !15}
!35 = distinct !{!35, !11, !15}
!36 = distinct !{!36, !11, !15, !16}
!37 = distinct !{!37, !11, !16, !15}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11, !15, !16}
!45 = distinct !{!45, !11, !15, !16}
!46 = distinct !{!46, !11, !15}
!47 = distinct !{!47, !11, !15}
!48 = !{!49}
!49 = distinct !{!49, !50}
!50 = distinct !{!50, !"LVerDomain"}
!51 = !{!52}
!52 = distinct !{!52, !50}
!53 = !{!54}
!54 = distinct !{!54, !50}
!55 = !{!52, !49}
!56 = distinct !{!56, !11, !15, !16}
!57 = distinct !{!57, !11, !15}
!58 = distinct !{!58, !11, !15, !16}
!59 = distinct !{!59, !11, !15}
!60 = distinct !{!60, !11, !15, !16}
!61 = distinct !{!61, !11, !15}
!62 = distinct !{!62, !11, !15, !16}
!63 = distinct !{!63, !11, !15}
!64 = distinct !{!64, !11, !15, !16}
!65 = distinct !{!65, !11, !15}
!66 = distinct !{!66, !11}
end_hunk_0
