loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hypre_SMGResidual:bb.a
  %i.eo = sub i32 %i.ec, %factor.op.mul594
  %i.ep = sub i32 %i.dx, %factor.op.mul595
  %i.eq = sub i32 %i.ek, %factor.op.mul
  %brmerge.not744 = and i1 %i.el, %i.em
  %i.er = icmp sgt i32 %i.ee, 0
  %or.cond = and i1 %brmerge.not744, %i.er
  br i1 %or.cond, label %.preheader571.us.us.preheader, label %._crit_edge.split

.preheader571.us.us.preheader:                    ; preds = %.preheader572.lr.ph
  %i.es = sext i32 %i.do to i64                   ; 10 uses
  %i.et = zext nneg i32 %i.ee to i64              ; 2 uses
  %min.iters.check783 = icmp ugt i32 %i.ee, 7
  %ident.check780.not = icmp eq i32 %i.do, 1
  %or.cond797 = select i1 %min.iters.check783, i1 %ident.check780.not, i1 false
  %n.vec786 = and i64 %i.et, 2147483644           ; 5 uses
  %i.eu = trunc nuw nsw i64 %n.vec786 to i32
  %cmp.n793 = icmp eq i64 %n.vec786, %i.et
  br label %.preheader571.us.us

.preheader571.us.us:                              ; preds = %.preheader571.us.us.preheader, %._crit_edge582.split.us.us.us
  %.0473591.us.us = phi i32 [ %i.gi, %._crit_edge582.split.us.us.us ], [ %i.co, %.preheader571.us.us.preheader ]
  %.0476590.us.us = phi i32 [ %i.gj, %._crit_edge582.split.us.us.us ], [ %i.dn, %.preheader571.us.us.preheader ]
  %.1509589.us.us = phi i32 [ %i.gk, %._crit_edge582.split.us.us.us ], [ 0, %.preheader571.us.us.preheader ]
  br label %.preheader570.us.us.us

.preheader570.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader571.us.us
  %.1474581.us.us.us = phi i32 [ %.0473591.us.us, %.preheader571.us.us ], [ %i.gf, %._crit_edge.us.us.us ]
  %.1477580.us.us.us = phi i32 [ %.0476590.us.us, %.preheader571.us.us ], [ %i.gg, %._crit_edge.us.us.us ]
  %.1505579.us.us.us = phi i32 [ 0, %.preheader571.us.us ], [ %i.gh, %._crit_edge.us.us.us ]
  %i.ev = sext i32 %.1474581.us.us.us to i64      ; 5 uses
  %i.ew = sext i32 %.1477580.us.us.us to i64      ; 5 uses
  br i1 %or.cond797, label %vector.memcheck781, label %scalar.ph782.preheader

vector.memcheck781:                               ; preds = %.preheader570.us.us.us
  %i.ex = add nsw i64 %i.bj, %i.ew
  %i.ey = shl nsw i64 %i.ex, 3
  %i.ez = add i64 %i.ey, %i.bf
  %i.fa = add nsw i64 %i.bc, %i.ev
  %i.fb = shl nsw i64 %i.fa, 3
  %i.fc = add i64 %i.fb, %i.ay
  %i.fd = sub i64 %i.fc, %i.ez
  %diff.check = icmp ugt i64 %i.fd, -32
  br i1 %diff.check, label %scalar.ph782.preheader, label %vector.ph784

vector.ph784:                                     ; preds = %vector.memcheck781
  %i.fe = add nsw i64 %n.vec786, %i.ew            ; 2 uses
  %i.ff = add nsw i64 %n.vec786, %i.ev            ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.bd, i64 %i.ev
  %invariant.gep820 = getelementptr [8 x i8], ptr %i.bk, i64 %i.ew
  br label %vector.body787

vector.body787:                                   ; preds = %vector.body787, %vector.ph784
  %index788 = phi i64 [ 0, %vector.ph784 ], [ %index.next791, %vector.body787 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index788 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load789 = load <2 x double>, ptr %gep, align 8, !tbaa !54
  %wide.load790 = load <2 x double>, ptr %i.fg, align 8, !tbaa !54
  %gep821 = getelementptr [8 x i8], ptr %invariant.gep820, i64 %index788 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %gep821, i64 16
  store <2 x double> %wide.load789, ptr %gep821, align 8, !tbaa !54
  store <2 x double> %wide.load790, ptr %i.fh, align 8, !tbaa !54
  %index.next791 = add nuw i64 %index788, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next791, %n.vec786
  br i1 %i.fi, label %middle.block792, label %vector.body787, !llvm.loop !56

middle.block792:                                  ; preds = %vector.body787
  br i1 %cmp.n793, label %._crit_edge.us.us.us, label %scalar.ph782.preheader

scalar.ph782.preheader:                           ; preds = %vector.memcheck781, %.preheader570.us.us.us, %middle.block792
  %indvars.iv679.ph = phi i64 [ %i.ew, %vector.memcheck781 ], [ %i.ew, %.preheader570.us.us.us ], [ %i.fe, %middle.block792 ] ; 2 uses
  %indvars.iv.ph = phi i64 [ %i.ev, %vector.memcheck781 ], [ %i.ev, %.preheader570.us.us.us ], [ %i.ff, %middle.block792 ] ; 2 uses
  %.1501575.us.us.us.ph = phi i32 [ 0, %vector.memcheck781 ], [ 0, %.preheader570.us.us.us ], [ %i.eu, %middle.block792 ] ; 4 uses
  %i.fj = sub i32 %i.ee, %.1501575.us.us.us.ph
  %xtraiter = and i32 %i.fj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph782.prol.loopexit, label %scalar.ph782.prol

scalar.ph782.prol:                                ; preds = %scalar.ph782.preheader, %scalar.ph782.prol
  %indvars.iv679.prol = phi i64 [ %indvars.iv.next680.prol, %scalar.ph782.prol ], [ %indvars.iv679.ph, %scalar.ph782.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph782.prol ], [ %indvars.iv.ph, %scalar.ph782.preheader ] ; 2 uses
  %.1501575.us.us.us.prol = phi i32 [ %i.fn, %scalar.ph782.prol ], [ %.1501575.us.us.us.ph, %scalar.ph782.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph782.prol ], [ 0, %scalar.ph782.preheader ]
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.prol
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !54
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv679.prol
  store double %i.fl, ptr %i.fm, align 8, !tbaa !54
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, %i.es ; 3 uses
  %indvars.iv.next680.prol = add nsw i64 %indvars.iv679.prol, %i.es ; 3 uses
  %i.fn = add nuw nsw i32 %.1501575.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph782.prol.loopexit, label %scalar.ph782.prol, !llvm.loop !60

scalar.ph782.prol.loopexit:                       ; preds = %scalar.ph782.prol, %scalar.ph782.preheader
  %indvars.iv.next.lcssa800.unr = phi i64 [ poison, %scalar.ph782.preheader ], [ %indvars.iv.next.prol, %scalar.ph782.prol ]
  %indvars.iv.next680.lcssa799.unr = phi i64 [ poison, %scalar.ph782.preheader ], [ %indvars.iv.next680.prol, %scalar.ph782.prol ]
  %indvars.iv679.unr = phi i64 [ %indvars.iv679.ph, %scalar.ph782.preheader ], [ %indvars.iv.next680.prol, %scalar.ph782.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph782.preheader ], [ %indvars.iv.next.prol, %scalar.ph782.prol ]
  %.1501575.us.us.us.unr = phi i32 [ %.1501575.us.us.us.ph, %scalar.ph782.preheader ], [ %i.fn, %scalar.ph782.prol ]
  %i.fo = sub i32 %.1501575.us.us.us.ph, %i.ee
  %i.fp = icmp ugt i32 %i.fo, -4
  br i1 %i.fp, label %._crit_edge.us.us.us, label %scalar.ph782

scalar.ph782:                                     ; preds = %scalar.ph782.prol.loopexit, %scalar.ph782
  %indvars.iv679 = phi i64 [ %indvars.iv.next680.3, %scalar.ph782 ], [ %indvars.iv679.unr, %scalar.ph782.prol.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph782 ], [ %indvars.iv.unr, %scalar.ph782.prol.loopexit ] ; 2 uses
  %.1501575.us.us.us = phi i32 [ %i.gc, %scalar.ph782 ], [ %.1501575.us.us.us.unr, %scalar.ph782.prol.loopexit ]
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !54
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv679
  store double %i.fr, ptr %i.fs, align 8, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.es ; 2 uses
  %indvars.iv.next680 = add nsw i64 %indvars.iv679, %i.es ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !54
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv.next680
  store double %i.fu, ptr %i.fv, align 8, !tbaa !54
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.es ; 2 uses
  %indvars.iv.next680.1 = add nsw i64 %indvars.iv.next680, %i.es ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next.1
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !54
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv.next680.1
  store double %i.fx, ptr %i.fy, align 8, !tbaa !54
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.next.1, %i.es ; 2 uses
  %indvars.iv.next680.2 = add nsw i64 %indvars.iv.next680.1, %i.es ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next.2
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !54
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv.next680.2
  store double %i.ga, ptr %i.gb, align 8, !tbaa !54
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.next.2, %i.es ; 2 uses
  %indvars.iv.next680.3 = add nsw i64 %indvars.iv.next680.2, %i.es ; 2 uses
  %i.gc = add nuw nsw i32 %.1501575.us.us.us, 4   ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.gc, %i.ee
  br i1 %exitcond.not.3, label %._crit_edge.us.us.us, label %scalar.ph782, !llvm.loop !62

._crit_edge.us.us.us:                             ; preds = %scalar.ph782.prol.loopexit, %scalar.ph782, %middle.block792
  %indvars.iv.next.lcssa = phi i64 [ %i.ff, %middle.block792 ], [ %indvars.iv.next.lcssa800.unr, %scalar.ph782.prol.loopexit ], [ %indvars.iv.next.3, %scalar.ph782 ]
  %indvars.iv.next680.lcssa = phi i64 [ %i.fe, %middle.block792 ], [ %indvars.iv.next680.lcssa799.unr, %scalar.ph782.prol.loopexit ], [ %indvars.iv.next680.3, %scalar.ph782 ]
  %i.gd = trunc nsw i64 %indvars.iv.next680.lcssa to i32
  %i.ge = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.gf = add nsw i32 %i.en, %i.ge                ; 2 uses
  %i.gg = add nsw i32 %i.eo, %i.gd                ; 2 uses
  %i.gh = add nuw nsw i32 %.1505579.us.us.us, 1   ; 2 uses
  %exitcond684.not = icmp eq i32 %i.gh, %i.ef
  br i1 %exitcond684.not, label %._crit_edge582.split.us.us.us, label %.preheader570.us.us.us, !llvm.loop !63

._crit_edge582.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.gi = add nsw i32 %i.ep, %i.gf
  %i.gj = add nsw i32 %i.eq, %i.gg
  %i.gk = add nuw nsw i32 %.1509589.us.us, 1      ; 2 uses
  %exitcond685.not = icmp eq i32 %i.gk, %i.eg
  br i1 %exitcond685.not, label %._crit_edge.split, label %.preheader571.us.us, !llvm.loop !64

._crit_edge.split:                                ; preds = %._crit_edge582.split.us.us.us, %.preheader572.lr.ph, %bb.k
  %indvars.iv.next687 = add nuw nsw i64 %indvars.iv686, 1 ; 2 uses
  %i.gl = load i32, ptr %i.r, align 8, !tbaa !50
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %indvars.iv.next687, %i.gm
  br i1 %i.gn, label %.lr.ph, label %.loopexit574, !llvm.loop !65

bb.l:                                             ; preds = %bb.b
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.gp = call i32 @hypre_FinalizeIndtComputations(ptr noundef %i.go) #5 ; 0 uses
  %i.gq = load ptr, ptr %i.ac, align 8, !tbaa !68
  br label %.loopexit574

.loopexit574:                                     ; preds = %._crit_edge.split, %bb.c, %bb.l
  %.1463 = phi ptr [ %i.gq, %bb.l ], [ %i.am, %bb.c ], [ %i.am, %._crit_edge.split ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.1463, i64 8 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !69 ; 2 uses
  %i.gt = icmp slt i32 %i.gs, 1
  %brmerge740 = or i1 %i.gt, %i.af
  br i1 %brmerge740, label %._crit_edge652, label %.lr.ph651.split.us

.lr.ph651.split.us:                               ; preds = %.loopexit574, %._crit_edge648.us
  %i.gu = phi i32 [ %5, %._crit_edge648.us ], [ %i.gs, %.loopexit574 ]
  %indvars.iv710 = phi i64 [ %indvars.iv.next711, %._crit_edge648.us ], [ 0, %.loopexit574 ] ; 8 uses
  %i.gv = load ptr, ptr %.1463, align 8, !tbaa !72
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv710
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !73 ; 2 uses
  %i.gy = load ptr, ptr %i.ad, align 8, !tbaa !74
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !52
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gz, i64 %indvars.iv710 ; 5 uses
  %i.hb = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !52
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %indvars.iv710 ; 6 uses
  %i.he = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !52
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %indvars.iv710 ; 5 uses
  %i.hh = load ptr, ptr %i.w, align 8, !tbaa !47  ; 3 uses
  %i.hi = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv710
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !4
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.hl ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !50
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %.lr.ph647.us, label %._crit_edge648.us

.lr.ph643.us:                                     ; preds = %.lr.ph647.us, %._crit_edge644.us
  %.pre713 = phi i32 [ %.pre713.pre, %.lr.ph647.us ], [ %i.kf, %._crit_edge644.us ]
  %.pre = phi i32 [ %.pre.pre, %.lr.ph647.us ], [ %i.kh, %._crit_edge644.us ]
  %indvars.iv707 = phi i64 [ 0, %.lr.ph647.us ], [ %indvars.iv.next708, %._crit_edge644.us ] ; 2 uses
  %i.hq = load ptr, ptr %i.gx, align 8, !tbaa !52
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %indvars.iv707 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge636.split.us, %.lr.ph643.us
  %i.hu = phi i32 [ %i.kf, %._crit_edge636.split.us ], [ %.pre713, %.lr.ph643.us ]
  %i.hv = phi i32 [ %i.kh, %._crit_edge636.split.us ], [ %.pre, %.lr.ph643.us ]
  %indvars.iv703 = phi i64 [ %indvars.iv.next704, %._crit_edge636.split.us ], [ 0, %.lr.ph643.us ] ; 3 uses
  %i.hw = load ptr, ptr %i.ag, align 8, !tbaa !75 ; 3 uses
  %i.hx = load ptr, ptr %i.ah, align 8, !tbaa !76
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv710
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !77
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv703
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !4
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.ic ; 4 uses
  %i.ie = load ptr, ptr %i.p, align 8, !tbaa !47  ; 3 uses
  %i.if = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv710
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !4
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.ii
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv703 ; 3 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !4
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !4
  %i.io = sub nsw i32 %i.hv, %i.hu                ; 2 uses
  %i.ip = icmp sgt i32 %i.io, -1
  br i1 %i.ip, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  %i.is = add nuw nsw i32 %i.io, 1
  %i.it = mul nsw i32 %i.ir, %i.is
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.iu = phi i32 [ %i.it, %bb.n ], [ 0, %bb.m ]
  %i.iv = load i32, ptr %i.qa, align 4, !tbaa !4
  %i.iw = load i32, ptr %i.hd, align 4, !tbaa !4
  %i.ix = sub nsw i32 %i.iv, %i.iw                ; 2 uses
  %i.iy = add nsw i32 %i.iu, %i.in
  %i.iz = add nuw nsw i32 %i.ix, 1
  %i.ja = mul nsw i32 %i.iz, %i.iy
  %.inv.us = icmp slt i32 %i.ix, 0
  %i.jb = select i1 %.inv.us, i32 0, i32 %i.ja
  %i.jc = add i32 %i.jb, %i.il
  %i.jd = sext i32 %i.jc to i64                   ; 2 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.jd ; 4 uses
  %i.jf = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.hr, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.jg = load i32, ptr %i.hr, align 4, !tbaa !4  ; 3 uses
  %i.jh = load i32, ptr %i.ha, align 4, !tbaa !4  ; 2 uses
  %i.ji = sub i32 %i.jg, %i.jh
  %i.jj = load i32, ptr %i.hs, align 4, !tbaa !4  ; 3 uses
  %i.jk = load i32, ptr %i.qd, align 4, !tbaa !4  ; 2 uses
  %i.jl = sub i32 %i.jj, %i.jk
  %i.jm = load i32, ptr %i.qf, align 4, !tbaa !4
  %i.jn = sub nsw i32 %i.jm, %i.jk                ; 3 uses
  %i.jo = icmp sgt i32 %i.jn, -1                  ; 2 uses
  br i1 %i.jo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.jp = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.jq = load i32, ptr %i.qg, align 4, !tbaa !4
  %i.jr = sub nsw i32 %i.jp, %i.jq
  %i.js = add nuw nsw i32 %i.jn, 1
  %i.jt = mul nsw i32 %i.jr, %i.js
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ju = phi i32 [ %i.jt, %bb.p ], [ 0, %bb.o ]
  %i.jv = load i32, ptr %i.qe, align 4, !tbaa !4
  %i.jw = sub nsw i32 %i.jv, %i.jh                ; 2 uses
  %i.jx = icmp sgt i32 %i.jw, -1                  ; 2 uses
  %i.jy = add nsw i32 %i.jl, %i.ju
  %i.jz = add nuw nsw i32 %i.jw, 1                ; 3 uses
  %i.ka = mul nsw i32 %i.jz, %i.jy
  %i.kb = select i1 %i.jx, i32 %i.ka, i32 0
  %i.kc = add nsw i32 %i.ji, %i.kb
  %i.kd = load i32, ptr %i.hd, align 4, !tbaa !4  ; 2 uses
  %i.ke = sub i32 %i.jg, %i.kd
  %i.kf = load i32, ptr %i.qc, align 4, !tbaa !4  ; 4 uses
  %i.kg = sub i32 %i.jj, %i.kf
  %i.kh = load i32, ptr %i.qb, align 4, !tbaa !4  ; 3 uses
  %i.ki = sub nsw i32 %i.kh, %i.kf                ; 3 uses
  %i.kj = icmp sgt i32 %i.ki, -1                  ; 2 uses
  br i1 %i.kj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kk = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.kl = load i32, ptr %i.qh, align 4, !tbaa !4
  %i.km = sub nsw i32 %i.kk, %i.kl
  %i.kn = add nuw nsw i32 %i.ki, 1
  %i.ko = mul nsw i32 %i.km, %i.kn
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kp = phi i32 [ %i.ko, %bb.r ], [ 0, %bb.q ]
  %i.kq = load i32, ptr %i.qa, align 4, !tbaa !4
  %i.kr = sub nsw i32 %i.kq, %i.kd                ; 2 uses
  %i.ks = icmp sgt i32 %i.kr, -1                  ; 2 uses
  %i.kt = add nsw i32 %i.kg, %i.kp
  %i.ku = add nuw nsw i32 %i.kr, 1                ; 3 uses
  %i.kv = mul nsw i32 %i.ku, %i.kt
  %i.kw = select i1 %i.ks, i32 %i.kv, i32 0
  %i.kx = add nsw i32 %i.ke, %i.kw
  %i.ky = load i32, ptr %i.hg, align 4, !tbaa !4  ; 2 uses
  %i.kz = sub i32 %i.jg, %i.ky
  %i.la = load i32, ptr %i.qi, align 4, !tbaa !4  ; 2 uses
  %i.lb = sub i32 %i.jj, %i.la
  %i.lc = load i32, ptr %i.qk, align 4, !tbaa !4
  %i.ld = sub nsw i32 %i.lc, %i.la                ; 3 uses
  %i.le = icmp sgt i32 %i.ld, -1                  ; 2 uses
  br i1 %i.le, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.lf = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.lg = load i32, ptr %i.ql, align 4, !tbaa !4
  %i.lh = sub nsw i32 %i.lf, %i.lg
  %i.li = add nuw nsw i32 %i.ld, 1
  %i.lj = mul nsw i32 %i.lh, %i.li
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.lk = phi i32 [ %i.lj, %bb.t ], [ 0, %bb.s ]
  %i.ll = load i32, ptr %i.qj, align 4, !tbaa !4
  %i.lm = sub nsw i32 %i.ll, %i.ky                ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, -1                  ; 2 uses
  %i.lo = add nsw i32 %i.lb, %i.lk
  %i.lp = add nuw nsw i32 %i.lm, 1                ; 3 uses
  %i.lq = mul nsw i32 %i.lp, %i.lo
  %i.lr = select i1 %i.ln, i32 %i.lq, i32 0
  %i.ls = add nsw i32 %i.kz, %i.lr
  %i.lt = load i32, ptr %i.c, align 4, !tbaa !4   ; 3 uses
  br i1 %i.jx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.lu = load i32, ptr %i.y, align 8, !tbaa !4
  %i.lv = mul nsw i32 %i.lu, %i.jz
  %i.lw = load i32, ptr %i.z, align 4, !tbaa !4
  %i.lx = mul nsw i32 %i.lw, %i.jz
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ly = phi i32 [ %i.lv, %bb.v ], [ 0, %bb.u ]  ; 2 uses
  %i.lz = phi i32 [ %i.lx, %bb.v ], [ 0, %bb.u ]
  %i.ma = add nuw nsw i32 %i.jn, 1
  %i.mb = mul nsw i32 %i.lz, %i.ma
  %i.mc = select i1 %i.jo, i32 %i.mb, i32 0
  br i1 %i.ks, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.md = load i32, ptr %i.y, align 8, !tbaa !4
  %i.me = mul nsw i32 %i.md, %i.ku
  %i.mf = load i32, ptr %i.z, align 4, !tbaa !4
  %i.mg = mul nsw i32 %i.mf, %i.ku
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.mh = phi i32 [ %i.me, %bb.x ], [ 0, %bb.w ]  ; 2 uses
  %i.mi = phi i32 [ %i.mg, %bb.x ], [ 0, %bb.w ]
  %i.mj = add nuw nsw i32 %i.ki, 1
  %i.mk = mul nsw i32 %i.mi, %i.mj
  %i.ml = select i1 %i.kj, i32 %i.mk, i32 0
  br i1 %i.ln, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.mm = load i32, ptr %i.y, align 8, !tbaa !4
  %i.mn = mul nsw i32 %i.mm, %i.lp
  %i.mo = load i32, ptr %i.z, align 4, !tbaa !4
  %i.mp = mul nsw i32 %i.mo, %i.lp
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.mq = phi i32 [ %i.mn, %bb.z ], [ 0, %bb.y ]  ; 2 uses
  %i.mr = phi i32 [ %i.mp, %bb.z ], [ 0, %bb.y ]
  %i.ms = load i32, ptr %i.b, align 4, !tbaa !4   ; 9 uses
  %i.mt = load i32, ptr %i.aa, align 4, !tbaa !4  ; 6 uses
  %i.mu = load i32, ptr %i.ab, align 4, !tbaa !4  ; 3 uses
  %.0458.us = call i32 @llvm.smax.i32(i32 %i.mt, i32 %i.ms)
  %.1459.us = call i32 @llvm.smax.i32(i32 %i.mu, i32 %.0458.us)
  %i.mv = icmp sgt i32 %.1459.us, 0
  br i1 %i.mv, label %.preheader569.lr.ph.us, label %._crit_edge636.split.us

._crit_edge636.split.us:                          ; preds = %._crit_edge614.split.us.us.us.us, %.preheader569.lr.ph.us, %bb.aa
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 1 ; 2 uses
  %exitcond706.not = icmp eq i64 %indvars.iv.next704, %wide.trip.count
  br i1 %exitcond706.not, label %._crit_edge644.us, label %bb.m, !llvm.loop !78

._crit_edge648.us.loopexit:                       ; preds = %._crit_edge644.us
  %.pre714 = load i32, ptr %i.gr, align 8, !tbaa !69
  br label %._crit_edge648.us

._crit_edge648.us:                                ; preds = %._crit_edge648.us.loopexit, %.lr.ph651.split.us
  %5 = phi i32 [ %.pre714, %._crit_edge648.us.loopexit ], [ %i.gu, %.lr.ph651.split.us ] ; 2 uses
  %indvars.iv.next711 = add nuw nsw i64 %indvars.iv710, 1 ; 2 uses
  %6 = sext i32 %5 to i64
  %7 = icmp slt i64 %indvars.iv.next711, %6
  br i1 %7, label %.lr.ph651.split.us, label %._crit_edge652, !llvm.loop !79

.preheader569.lr.ph.us:                           ; preds = %bb.aa
  %factor.op.mul635.us = mul i32 %i.mt, %i.mq
  %factor.op.mul634.us = mul i32 %i.mt, %i.mh
  %factor.op.mul633.us = mul i32 %i.mt, %i.ly
  %factor.op.mul632.us = mul i32 %i.lt, %i.ms     ; 3 uses
  %i.mw = add nuw nsw i32 %i.ld, 1
  %i.mx = mul nsw i32 %i.mr, %i.mw
  %i.my = select i1 %i.le, i32 %i.mx, i32 0
  %i.mz = icmp sgt i32 %i.mu, 0
  %i.na = icmp sgt i32 %i.mt, 0
  %i.nb = sub i32 %i.ly, %factor.op.mul632.us
  %i.nc = sub i32 %i.mh, %factor.op.mul632.us
  %i.nd = sub i32 %i.mq, %factor.op.mul632.us
  %i.ne = sub i32 %i.mc, %factor.op.mul633.us
  %i.nf = sub i32 %i.ml, %factor.op.mul634.us
  %i.ng = sub i32 %i.my, %factor.op.mul635.us
  %brmerge660.not746 = and i1 %i.mz, %i.na
  %i.nh = icmp sgt i32 %i.ms, 0
  %or.cond741 = and i1 %brmerge660.not746, %i.nh
  br i1 %or.cond741, label %.preheader568.us.us.us.preheader, label %._crit_edge636.split.us

.preheader568.us.us.us.preheader:                 ; preds = %.preheader569.lr.ph.us
  %i.ni = sext i32 %i.lt to i64                   ; 9 uses
  %i.nj = add nsw i32 %i.ms, -1
  %i.nk = zext i32 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 3                ; 3 uses
  %scevgep756 = getelementptr i8, ptr %scevgep755, i64 %i.nl
  %i.nm = shl nsw i64 %i.ic, 3                    ; 2 uses
  %scevgep758 = getelementptr i8, ptr %i.hw, i64 %i.nm
  %scevgep760 = getelementptr i8, ptr %i.hw, i64 8
  %i.nn = getelementptr i8, ptr %scevgep760, i64 %i.nm
  %scevgep761 = getelementptr i8, ptr %i.nn, i64 %i.nl
  %i.no = add nsw i64 %i.ii, %i.jd
  %i.np = shl nsw i64 %i.no, 3                    ; 2 uses
  %scevgep763 = getelementptr i8, ptr %i.ie, i64 %i.np
  %scevgep765 = getelementptr i8, ptr %i.ie, i64 8
  %i.nq = getelementptr i8, ptr %scevgep765, i64 %i.np
  %scevgep766 = getelementptr i8, ptr %i.nq, i64 %i.nl
  %i.nr = zext nneg i32 %i.ms to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.ms, 5
  %ident.check.not = icmp eq i32 %i.lt, 1
  %or.cond798 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.nr, 2147483644              ; 6 uses
  %i.ns = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.nr
  br label %.preheader568.us.us.us

.preheader568.us.us.us:                           ; preds = %.preheader568.us.us.us.preheader, %._crit_edge614.split.us.us.us.us
  %.0467629.us.us.us = phi i32 [ %i.pt, %._crit_edge614.split.us.us.us.us ], [ %i.kc, %.preheader568.us.us.us.preheader ]
  %.0470628.us.us.us = phi i32 [ %i.pu, %._crit_edge614.split.us.us.us.us ], [ %i.kx, %.preheader568.us.us.us.preheader ]
  %.3479627.us.us.us = phi i32 [ %i.pv, %._crit_edge614.split.us.us.us.us ], [ %i.ls, %.preheader568.us.us.us.preheader ]
  %.3511626.us.us.us = phi i32 [ %i.pw, %._crit_edge614.split.us.us.us.us ], [ 0, %.preheader568.us.us.us.preheader ]
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge606.us.us.us.us, %.preheader568.us.us.us
  %.1468613.us.us.us.us = phi i32 [ %.0467629.us.us.us, %.preheader568.us.us.us ], [ %i.pp, %._crit_edge606.us.us.us.us ]
  %.1471612.us.us.us.us = phi i32 [ %.0470628.us.us.us, %.preheader568.us.us.us ], [ %i.pq, %._crit_edge606.us.us.us.us ]
  %.4480611.us.us.us.us = phi i32 [ %.3479627.us.us.us, %.preheader568.us.us.us ], [ %i.pr, %._crit_edge606.us.us.us.us ]
  %.3507610.us.us.us.us = phi i32 [ 0, %.preheader568.us.us.us ], [ %i.ps, %._crit_edge606.us.us.us.us ]
  %i.nt = sext i32 %.1468613.us.us.us.us to i64   ; 5 uses
  %i.nu = sext i32 %.1471612.us.us.us.us to i64   ; 5 uses
  %i.nv = sext i32 %.4480611.us.us.us.us to i64   ; 5 uses
  br i1 %or.cond798, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us.us
  %i.nw = shl nsw i64 %i.nv, 3                    ; 2 uses
  %scevgep753 = getelementptr i8, ptr %scevgep, i64 %i.nw ; 2 uses
  %scevgep757 = getelementptr i8, ptr %scevgep756, i64 %i.nw ; 2 uses
  %i.nx = shl nsw i64 %i.nt, 3                    ; 2 uses
  %scevgep759 = getelementptr i8, ptr %scevgep758, i64 %i.nx
  %scevgep762 = getelementptr i8, ptr %scevgep761, i64 %i.nx
  %i.ny = shl nsw i64 %i.nu, 3                    ; 2 uses
  %scevgep764 = getelementptr i8, ptr %scevgep763, i64 %i.ny
  %scevgep767 = getelementptr i8, ptr %scevgep766, i64 %i.ny
  %bound0 = icmp ult ptr %scevgep753, %scevgep762
  %bound1 = icmp ult ptr %scevgep759, %scevgep757
  %found.conflict = and i1 %bound0, %bound1
  %bound0768 = icmp ult ptr %scevgep753, %scevgep767
  %bound1769 = icmp ult ptr %scevgep764, %scevgep757
  %found.conflict770 = and i1 %bound0768, %bound1769
  %conflict.rdx = or i1 %found.conflict, %found.conflict770
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.nz = add nsw i64 %n.vec, %i.nv               ; 2 uses
  %i.oa = add nsw i64 %n.vec, %i.nu               ; 2 uses
  %i.ob = add nsw i64 %n.vec, %i.nt               ; 2 uses
  %invariant.gep822 = getelementptr [8 x i8], ptr %i.id, i64 %i.nt
  %invariant.gep824 = getelementptr [8 x i8], ptr %i.je, i64 %i.nu
  %invariant.gep826 = getelementptr [8 x i8], ptr %i.hm, i64 %i.nv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %gep823 = getelementptr [8 x i8], ptr %invariant.gep822, i64 %index ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %gep823, i64 16
  %wide.load = load <2 x double>, ptr %gep823, align 8, !tbaa !54, !alias.scope !80
  %wide.load771 = load <2 x double>, ptr %i.oc, align 8, !tbaa !54, !alias.scope !80
  %gep825 = getelementptr [8 x i8], ptr %invariant.gep824, i64 %index ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %gep825, i64 16
  %wide.load772 = load <2 x double>, ptr %gep825, align 8, !tbaa !54, !alias.scope !83
  %wide.load773 = load <2 x double>, ptr %i.od, align 8, !tbaa !54, !alias.scope !83
  %gep827 = getelementptr [8 x i8], ptr %invariant.gep826, i64 %index ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %gep827, i64 16 ; 2 uses
  %wide.load774 = load <2 x double>, ptr %gep827, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  %wide.load775 = load <2 x double>, ptr %i.oe, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  %i.of = fneg <2 x double> %wide.load
  %i.og = fneg <2 x double> %wide.load771
  %i.oh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.of, <2 x double> %wide.load772, <2 x double> %wide.load774)
  %i.oi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.og, <2 x double> %wide.load773, <2 x double> %wide.load775)
  store <2 x double> %i.oh, ptr %gep827, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  store <2 x double> %i.oi, ptr %i.oe, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oj = icmp eq i64 %index.next, %n.vec
  br i1 %i.oj, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge606.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us.us, %middle.block
  %indvars.iv693.ph = phi i64 [ %i.nv, %vector.memcheck ], [ %i.nv, %.preheader.us.us.us.us ], [ %i.nz, %middle.block ] ; 3 uses
  %indvars.iv691.ph = phi i64 [ %i.nu, %vector.memcheck ], [ %i.nu, %.preheader.us.us.us.us ], [ %i.oa, %middle.block ] ; 3 uses
  %indvars.iv689.ph = phi i64 [ %i.nt, %vector.memcheck ], [ %i.nt, %.preheader.us.us.us.us ], [ %i.ob, %middle.block ] ; 3 uses
  %.3503601.us.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us.us ], [ %i.ns, %middle.block ] ; 4 uses
  %i.ok = sub i32 %i.ms, %.3503601.us.us.us.us.ph
  %.neg = add i32 %.3503601.us.us.us.us.ph, 1
  %xtraiter810 = and i32 %i.ok, 1
  %lcmp.mod811.not = icmp eq i32 %xtraiter810, 0
  br i1 %lcmp.mod811.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.id, i64 %indvars.iv689.ph
  %i.om = load double, ptr %i.ol, align 8, !tbaa !54
  %i.on = getelementptr inbounds [8 x i8], ptr %i.je, i64 %indvars.iv691.ph
  %i.oo = load double, ptr %i.on, align 8, !tbaa !54
  %i.op = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %indvars.iv693.ph ; 2 uses
  %i.oq = load double, ptr %i.op, align 8, !tbaa !54
  %i.or = fneg double %i.om
  %i.os = call double @llvm.fmuladd.f64(double %i.or, double %i.oo, double %i.oq)
  store double %i.os, ptr %i.op, align 8, !tbaa !54
  %indvars.iv.next690.prol = add nsw i64 %indvars.iv689.ph, %i.ni ; 2 uses
  %indvars.iv.next692.prol = add nsw i64 %indvars.iv691.ph, %i.ni ; 2 uses
  %indvars.iv.next694.prol = add nsw i64 %indvars.iv693.ph, %i.ni ; 2 uses
  %i.ot = add nuw nsw i32 %.3503601.us.us.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next690.lcssa804.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next690.prol, %scalar.ph.prol ]
  %indvars.iv.next692.lcssa803.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next692.prol, %scalar.ph.prol ]
  %indvars.iv.next694.lcssa802.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next694.prol, %scalar.ph.prol ]
  %indvars.iv693.unr = phi i64 [ %indvars.iv693.ph, %scalar.ph.preheader ], [ %indvars.iv.next694.prol, %scalar.ph.prol ]
  %indvars.iv691.unr = phi i64 [ %indvars.iv691.ph, %scalar.ph.preheader ], [ %indvars.iv.next692.prol, %scalar.ph.prol ]
  %indvars.iv689.unr = phi i64 [ %indvars.iv689.ph, %scalar.ph.preheader ], [ %indvars.iv.next690.prol, %scalar.ph.prol ]
  %.3503601.us.us.us.us.unr = phi i32 [ %.3503601.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.ot, %scalar.ph.prol ]
  %i.ou = icmp eq i32 %i.ms, %.neg
  br i1 %i.ou, label %._crit_edge606.us.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv693 = phi i64 [ %indvars.iv.next694.1, %scalar.ph ], [ %indvars.iv693.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv691 = phi i64 [ %indvars.iv.next692.1, %scalar.ph ], [ %indvars.iv691.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv689 = phi i64 [ %indvars.iv.next690.1, %scalar.ph ], [ %indvars.iv689.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.3503601.us.us.us.us = phi i32 [ %i.pl, %scalar.ph ], [ %.3503601.us.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.id, i64 %indvars.iv689
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !54
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.je, i64 %indvars.iv691
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !54
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %indvars.iv693 ; 2 uses
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !54
  %i.pb = fneg double %i.ow
  %i.pc = call double @llvm.fmuladd.f64(double %i.pb, double %i.oy, double %i.pa)
  store double %i.pc, ptr %i.oz, align 8, !tbaa !54
  %indvars.iv.next690 = add nsw i64 %indvars.iv689, %i.ni ; 2 uses
  %indvars.iv.next692 = add nsw i64 %indvars.iv691, %i.ni ; 2 uses
  %indvars.iv.next694 = add nsw i64 %indvars.iv693, %i.ni ; 2 uses
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.id, i64 %indvars.iv.next690
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !54
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.je, i64 %indvars.iv.next692
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !54
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %indvars.iv.next694 ; 2 uses
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !54
  %i.pj = fneg double %i.pe
  %i.pk = call double @llvm.fmuladd.f64(double %i.pj, double %i.pg, double %i.pi)
  store double %i.pk, ptr %i.ph, align 8, !tbaa !54
  %indvars.iv.next690.1 = add nsw i64 %indvars.iv.next690, %i.ni ; 2 uses
  %indvars.iv.next692.1 = add nsw i64 %indvars.iv.next692, %i.ni ; 2 uses
  %indvars.iv.next694.1 = add nsw i64 %indvars.iv.next694, %i.ni ; 2 uses
  %i.pl = add nuw nsw i32 %.3503601.us.us.us.us, 2 ; 2 uses
  %exitcond700.not.1 = icmp eq i32 %i.pl, %i.ms
  br i1 %exitcond700.not.1, label %._crit_edge606.us.us.us.us, label %scalar.ph, !llvm.loop !89

._crit_edge606.us.us.us.us:                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next690.lcssa = phi i64 [ %i.ob, %middle.block ], [ %indvars.iv.next690.lcssa804.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next690.1, %scalar.ph ]
  %indvars.iv.next692.lcssa = phi i64 [ %i.oa, %middle.block ], [ %indvars.iv.next692.lcssa803.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next692.1, %scalar.ph ]
  %indvars.iv.next694.lcssa = phi i64 [ %i.nz, %middle.block ], [ %indvars.iv.next694.lcssa802.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next694.1, %scalar.ph ]
  %i.pm = trunc nsw i64 %indvars.iv.next694.lcssa to i32
  %i.pn = trunc nsw i64 %indvars.iv.next692.lcssa to i32
  %i.po = trunc nsw i64 %indvars.iv.next690.lcssa to i32
  %i.pp = add nsw i32 %i.nb, %i.po                ; 2 uses
  %i.pq = add nsw i32 %i.nc, %i.pn                ; 2 uses
end_hunk_0
begin_hunk_1_@hypre_SMGResidual:bb.a
  %scevgep = getelementptr i8, ptr %i.hh, i64 %i.qm
  %scevgep754 = getelementptr i8, ptr %i.hh, i64 8
  %scevgep755 = getelementptr i8, ptr %scevgep754, i64 %i.qm
  br label %.lr.ph643.us

._crit_edge652:                                   ; preds = %._crit_edge648.us, %.loopexit574
  br i1 %i.aj, label %bb.b, label %bb.ab, !llvm.loop !93

bb.ab:                                            ; preds = %._crit_edge652
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !43
  %i.qp = call i32 @hypre_IncFLOPCount(i32 noundef %i.qo) #5 ; 0 uses
  %i.qq = load i32, ptr %i.h, align 8, !tbaa !8
  %i.qr = call i32 @hypre_EndTiming(i32 noundef %i.qq) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

declare i32 @hypre_BeginTiming(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_InitializeIndtComputations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeIndtComputations(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @hypre_IncFLOPCount(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_EndTiming(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_SMGResidualSetBase(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.b, ptr %0, align 4, !tbaa !4
  %i.c = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.c, ptr %i.a, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.h, ptr %i.i, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.n, ptr %i.o, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMGResidualDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.b) #5 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.e) #5 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.h) #5 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.k) #5 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = tail call i32 @hypre_BoxArrayDestroy(ptr noundef %i.n) #5 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = tail call i32 @hypre_ComputePkgDestroy(ptr noundef %i.q) #5 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %i.u = tail call i32 @hypre_FinalizeTiming(i32 noundef %i.t) #5 ; 0 uses
  tail call void @hypre_Free(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare i32 @hypre_StructMatrixDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxArrayDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeTiming(i32 noundef) local_unnamed_addr #2

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!8 = !{!9, !5, i64 72}
!9 = !{!"", !6, i64 0, !6, i64 12, !10, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !14, i64 64, !5, i64 72, !5, i64 76}
!10 = !{!"p1 _ZTS25hypre_StructMatrix_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS25hypre_StructVector_struct", !11, i64 0}
!13 = !{!"p1 _ZTS21hypre_BoxArray_struct", !11, i64 0}
!14 = !{!"p1 _ZTS23hypre_ComputePkg_struct", !11, i64 0}
!15 = !{!16, !17, i64 8}
!16 = !{!"hypre_StructMatrix_struct", !5, i64 0, !17, i64 8, !18, i64 16, !18, i64 24, !5, i64 32, !13, i64 40, !19, i64 48, !5, i64 56, !5, i64 60, !20, i64 64, !5, i64 72, !22, i64 80, !6, i64 88, !5, i64 112, !23, i64 120, !5, i64 128}
!17 = !{!"p1 _ZTS23hypre_StructGrid_struct", !11, i64 0}
!18 = !{!"p1 _ZTS26hypre_StructStencil_struct", !11, i64 0}
!19 = !{!"p1 double", !11, i64 0}
!20 = !{!"p2 int", !21, i64 0}
!21 = !{!"any p2 pointer", !11, i64 0}
!22 = !{!"p1 int", !11, i64 0}
!23 = !{!"p1 _ZTS20hypre_CommPkg_struct", !11, i64 0}
!24 = !{!16, !18, i64 24}
!25 = !{!26, !13, i64 8}
!26 = !{!"hypre_StructGrid_struct", !5, i64 0, !5, i64 4, !13, i64 8, !22, i64 16, !27, i64 24, !5, i64 32, !28, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 68}
!27 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !11, i64 0}
!28 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTS26hypre_BoxArrayArray_struct", !11, i64 0}
!31 = !{!20, !20, i64 0}
!32 = !{!33, !13, i64 16}
!33 = !{!"hypre_StructVector_struct", !5, i64 0, !17, i64 8, !13, i64 16, !19, i64 24, !5, i64 32, !5, i64 36, !22, i64 40, !6, i64 48, !5, i64 72, !5, i64 76}
!34 = !{!9, !10, i64 24}
!35 = !{!9, !12, i64 32}
!36 = !{!9, !12, i64 40}
!37 = !{!9, !12, i64 48}
!38 = !{!9, !13, i64 56}
!39 = !{!14, !14, i64 0}
!40 = !{!9, !14, i64 64}
!41 = !{!16, !5, i64 112}
!42 = !{!33, !5, i64 72}
!43 = !{!9, !5, i64 76}
!44 = !{!45, !22, i64 0}
!45 = !{!"hypre_StructStencil_struct", !22, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!46 = !{!45, !5, i64 8}
!47 = !{!33, !19, i64 24}
!48 = !{!49, !30, i64 8}
!49 = !{!"hypre_ComputePkg_struct", !23, i64 0, !30, i64 8, !30, i64 16, !6, i64 24, !17, i64 40, !13, i64 48, !5, i64 56}
!50 = !{!51, !5, i64 8}
!51 = !{!"hypre_BoxArray_struct", !28, i64 0, !5, i64 8, !5, i64 12}
!52 = !{!51, !28, i64 0}
!53 = !{!33, !22, i64 40}
!54 = !{!55, !55, i64 0}
!55 = !{!"double", !6, i64 0}
!56 = distinct !{!56, !57, !58, !59}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !57, !58}
!63 = distinct !{!63, !57}
!64 = distinct !{!64, !57}
!65 = distinct !{!65, !57}
!66 = !{!67, !67, i64 0}
!67 = !{!"p1 _ZTS23hypre_CommHandle_struct", !11, i64 0}
!68 = !{!49, !30, i64 16}
!69 = !{!70, !5, i64 8}
!70 = !{!"hypre_BoxArrayArray_struct", !71, i64 0, !5, i64 8}
!71 = !{!"p2 _ZTS21hypre_BoxArray_struct", !21, i64 0}
!72 = !{!70, !71, i64 0}
!73 = !{!13, !13, i64 0}
!74 = !{!16, !13, i64 40}
!75 = !{!16, !19, i64 48}
!76 = !{!16, !20, i64 64}
!77 = !{!22, !22, i64 0}
!78 = distinct !{!78, !57}
!79 = distinct !{!79, !57}
!80 = !{!81}
!81 = distinct !{!81, !82}
!82 = distinct !{!82, !"LVerDomain"}
!83 = !{!84}
!84 = distinct !{!84, !82}
!85 = !{!86}
!86 = distinct !{!86, !82}
!87 = !{!81, !84}
!88 = distinct !{!88, !57, !58, !59}
!89 = distinct !{!89, !57, !58}
!90 = distinct !{!90, !57}
!91 = distinct !{!91, !57}
!92 = distinct !{!92, !57}
!93 = distinct !{!93, !57}
end_hunk_1
