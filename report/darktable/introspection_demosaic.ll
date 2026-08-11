inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.ox = getelementptr [4 x i8], ptr %i.mp, i64 %indvars.iv.next.i.i.1
  store float %i.ow, ptr %i.ox, align 4, !tbaa !22
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %gep.i.i.3 = getelementptr [4 x i8], ptr %gep191.i.i, i64 %indvars.iv.next.i.i.2
  %i.oy = load float, ptr %gep.i.i.3, align 4, !tbaa !22
  %i.oz = load float, ptr %i.ol, align 4, !tbaa !22
  %i.pa = fmul reassoc nsz arcp contract afn float %i.oz, %i.oy
  %i.pb = getelementptr [4 x i8], ptr %i.mp, i64 %indvars.iv.next.i.i.2
  store float %i.pa, ptr %i.pb, align 4, !tbaa !22
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !180

iter.check:                                       ; preds = %._crit_edge199.i.i, %.preheader.preheader.i.i
  %indvars.iv224.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next225.i.i, %._crit_edge199.i.i ] ; 5 uses
  %i.pc = trunc i64 %indvars.iv224.i.i to i32
  %i.pd = mul i32 %i.hg, %i.pc
  %i.pe = add i32 %i.pd, %i.je
  %i.pf = sext i32 %i.pe to i64
  %i.pg = shl nsw i64 %i.pf, 4                    ; 2 uses
  %scevgep1663 = getelementptr i8, ptr %2, i64 %i.pg
  %scevgep1665 = getelementptr i8, ptr %scevgep1664, i64 %i.pg
  %i.ph = mul nuw nsw i64 %indvars.iv224.i.i, %i.in
  %i.pi = trunc i64 %indvars.iv224.i.i to i32
  %i.pj = add i32 %i.iv, %i.pi
  %i.pk = mul i32 %i.pj, %i.hg
  %i.pl = add i32 %i.pk, %i.ix                    ; 10 uses
  %i.pm = getelementptr [4 x i8], ptr %i.ir, i64 %i.ph ; 7 uses
  br i1 %min.iters.check1670, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.pn = trunc i64 %indvars.iv224.i.i to i32
  %i.po = mul i32 %i.hg, %i.pn
  %i.pp = add i32 %i.po, %i.iy                    ; 2 uses
  %i.pq = add i32 %i.pp, %i.jh
  %i.pr = icmp slt i32 %i.pq, %i.pp
  %i.ps = or i1 %i.pr, %i.ji
  br i1 %i.ps, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck1661

vector.memcheck1661:                              ; preds = %vector.scevcheck
  %bound01666 = icmp ult ptr %i.ir, %scevgep1665
  %bound11667 = icmp ult ptr %scevgep1663, %scevgep1662
  %found.conflict1668 = and i1 %bound01666, %bound11667
  br i1 %found.conflict1668, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1661
  br i1 %min.iters.check1671, label %vec.epilog.ph, label %vector.body1674

vector.body1674:                                  ; preds = %vector.main.loop.iter.check, %vector.body1674
  %index1675 = phi i64 [ %index.next1682, %vector.body1674 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.pt = trunc i64 %index1675 to i32             ; 4 uses
  %i.pu = or disjoint i32 %i.pt, 8
  %i.pv = or disjoint i32 %i.pt, 16
  %i.pw = or disjoint i32 %i.pt, 24
  %i.px = add i32 %i.pl, %i.pt
  %i.py = add i32 %i.pl, %i.pu
  %i.pz = add i32 %i.pl, %i.pv
  %i.qa = add i32 %i.pl, %i.pw
  %i.qb = sext i32 %i.px to i64
  %i.qc = sext i32 %i.py to i64
  %i.qd = sext i32 %i.pz to i64
  %i.qe = sext i32 %i.qa to i64
  %i.qf = shl nsw i64 %i.qb, 4
  %i.qg = shl nsw i64 %i.qc, 4
  %i.qh = shl nsw i64 %i.qd, 4
  %i.qi = shl nsw i64 %i.qe, 4
  %i.qj = getelementptr inbounds nuw i8, ptr %2, i64 %i.qf
  %i.qk = getelementptr inbounds nuw i8, ptr %2, i64 %i.qg
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 %i.qh
  %i.qm = getelementptr inbounds nuw i8, ptr %2, i64 %i.qi
  %wide.vec = load <32 x float>, ptr %i.qj, align 4, !tbaa !22, !alias.scope !181
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1676 = load <32 x float>, ptr %i.qk, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1677 = shufflevector <32 x float> %wide.vec1676, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1678 = load <32 x float>, ptr %i.ql, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1679 = shufflevector <32 x float> %wide.vec1678, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1680 = load <32 x float>, ptr %i.qm, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1681 = shufflevector <32 x float> %wide.vec1680, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.qn = getelementptr [4 x i8], ptr %i.pm, i64 %index1675 ; 4 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 32
  %i.qp = getelementptr i8, ptr %i.qn, i64 64
  %i.qq = getelementptr i8, ptr %i.qn, i64 96
  store <8 x float> %strided.vec, ptr %i.qn, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  store <8 x float> %strided.vec1677, ptr %i.qo, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  store <8 x float> %strided.vec1679, ptr %i.qp, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  store <8 x float> %strided.vec1681, ptr %i.qq, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  %index.next1682 = add nuw i64 %index1675, 32    ; 2 uses
  %i.qr = icmp eq i64 %index.next1682, %n.vec1673
  br i1 %i.qr, label %vec.epilog.iter.check, label %vector.body1674, !llvm.loop !186

vec.epilog.iter.check:                            ; preds = %vector.body1674
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !187

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %vector.memcheck1661, %vector.scevcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv219.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck1661 ], [ %n.vec1673, %vec.epilog.iter.check ], [ %n.vec1684, %vec.epilog.vector.body ] ; 4 uses
  %i.qs = sub i64 %wide.trip.count222.i.i, %indvars.iv219.i.i.ph
  %xtraiter4755 = and i64 %i.qs, 3                ; 2 uses
  %lcmp.mod4756.not = icmp eq i64 %xtraiter4755, 0
  br i1 %lcmp.mod4756.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv219.i.i.prol = phi i64 [ %indvars.iv.next220.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv219.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter4757 = phi i64 [ %prol.iter4757.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.qt = trunc nuw nsw i64 %indvars.iv219.i.i.prol to i32
  %i.qu = add i32 %i.pl, %i.qt
  %i.qv = sext i32 %i.qu to i64
  %.idx.i.i.prol = shl nsw i64 %i.qv, 4
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.prol
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !22
  %i.qy = getelementptr [4 x i8], ptr %i.pm, i64 %indvars.iv219.i.i.prol
  store float %i.qx, ptr %i.qy, align 4, !tbaa !22
  %indvars.iv.next220.i.i.prol = add nuw nsw i64 %indvars.iv219.i.i.prol, 1 ; 2 uses
  %prol.iter4757.next = add i64 %prol.iter4757, 1 ; 2 uses
  %prol.iter4757.cmp.not = icmp eq i64 %prol.iter4757.next, %xtraiter4755
  br i1 %prol.iter4757.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !188

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv219.i.i.unr = phi i64 [ %indvars.iv219.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next220.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.qz = sub i64 %indvars.iv219.i.i.ph, %wide.trip.count222.i.i
  %i.ra = icmp ugt i64 %i.qz, -4
  br i1 %i.ra, label %._crit_edge199.i.i, label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1673, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1685 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1688, %vec.epilog.vector.body ] ; 3 uses
  %i.rb = trunc i64 %index1685 to i32
  %i.rc = add i32 %i.pl, %i.rb
  %i.rd = sext i32 %i.rc to i64
  %i.re = shl nsw i64 %i.rd, 4
  %i.rf = getelementptr inbounds nuw i8, ptr %2, i64 %i.re
  %wide.vec1686 = load <16 x float>, ptr %i.rf, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1687 = shufflevector <16 x float> %wide.vec1686, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.rg = getelementptr [4 x i8], ptr %i.pm, i64 %index1685
  store <4 x float> %strided.vec1687, ptr %i.rg, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  %index.next1688 = add nuw i64 %index1685, 4     ; 2 uses
  %i.rh = icmp eq i64 %index.next1688, %n.vec1684
  br i1 %i.rh, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !189

._crit_edge199.i.i:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.prol.loopexit
  %indvars.iv.next225.i.i = add nuw nsw i64 %indvars.iv224.i.i, 1 ; 2 uses
  %exitcond228.not.i.i = icmp eq i64 %indvars.iv.next225.i.i, %wide.trip.count227.i.i
  br i1 %exitcond228.not.i.i, label %.loopexit.i.i, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv219.i.i = phi i64 [ %indvars.iv.next220.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv219.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ri = trunc nuw nsw i64 %indvars.iv219.i.i to i32
  %i.rj = add i32 %i.pl, %i.ri
  %i.rk = sext i32 %i.rj to i64
  %.idx.i.i = shl nsw i64 %i.rk, 4
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !22
  %i.rn = getelementptr [4 x i8], ptr %i.pm, i64 %indvars.iv219.i.i
  store float %i.rm, ptr %i.rn, align 4, !tbaa !22
  %indvars.iv.next220.i.i = add nuw nsw i64 %indvars.iv219.i.i, 1 ; 2 uses
  %i.ro = trunc nuw nsw i64 %indvars.iv.next220.i.i to i32
  %i.rp = add i32 %i.pl, %i.ro
  %i.rq = sext i32 %i.rp to i64
  %.idx.i.i.1 = shl nsw i64 %i.rq, 4
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.1
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !22
  %i.rt = getelementptr [4 x i8], ptr %i.pm, i64 %indvars.iv.next220.i.i
  store float %i.rs, ptr %i.rt, align 4, !tbaa !22
  %indvars.iv.next220.i.i.1 = add nuw nsw i64 %indvars.iv219.i.i, 2 ; 2 uses
  %i.ru = trunc nuw nsw i64 %indvars.iv.next220.i.i.1 to i32
  %i.rv = add i32 %i.pl, %i.ru
  %i.rw = sext i32 %i.rv to i64
  %.idx.i.i.2 = shl nsw i64 %i.rw, 4
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.2
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !22
  %i.rz = getelementptr [4 x i8], ptr %i.pm, i64 %indvars.iv.next220.i.i.1
  store float %i.ry, ptr %i.rz, align 4, !tbaa !22
  %indvars.iv.next220.i.i.2 = add nuw nsw i64 %indvars.iv219.i.i, 3 ; 2 uses
  %i.sa = trunc nuw nsw i64 %indvars.iv.next220.i.i.2 to i32
  %i.sb = add i32 %i.pl, %i.sa
  %i.sc = sext i32 %i.sb to i64
  %.idx.i.i.3 = shl nsw i64 %i.sc, 4
  %i.sd = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.3
  %i.se = load float, ptr %i.sd, align 4, !tbaa !22
  %i.sf = getelementptr [4 x i8], ptr %i.pm, i64 %indvars.iv.next220.i.i.2
  store float %i.se, ptr %i.sf, align 4, !tbaa !22
  %indvars.iv.next220.i.i.3 = add nuw nsw i64 %indvars.iv219.i.i, 4 ; 2 uses
  %exitcond223.not.i.i.3 = icmp eq i64 %indvars.iv.next220.i.i.3, %wide.trip.count222.i.i
  br i1 %exitcond223.not.i.i.3, label %._crit_edge199.i.i, label %vec.epilog.scalar.ph, !llvm.loop !190

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i, %._crit_edge193.i.i, %._crit_edge199.i.i, %.preheader185.lr.ph.i.i, %.preheader186.i.i, %.preheader181.i.i
  switch i32 %.fr1059, label %bb.bq [
    i32 0, label %bb.av
    i32 9, label %.preheader.i.preheader.i.i
  ]

.preheader.i.preheader.i.i:                       ; preds = %.loopexit.i.i, %.preheader182.lr.ph.i.i, %.preheader183.i.i
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 510 ; 2 uses
  %i.sh = load i8, ptr %i.x, align 16, !tbaa !169 ; 4 uses
  %i.si = icmp eq i8 %i.sh, 1                     ; 3 uses
  br i1 %i.si, label %bb.cm, label %.preheader._crit_edge.i.i.i

bb.av:                                            ; preds = %.loopexit.i.i
  %i.sj = add i32 %i.ii, -4
  %i.sk = icmp sgt i32 %i.ii, 8
  br i1 %i.sk, label %.preheader.lr.ph.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.av
  %i.sl = icmp sgt i32 %i.ic, 9
  %i.sm = shl nsw i32 %i.ic, 1
  %i.sn = sext i32 %i.sm to i64                   ; 2 uses
  %i.so = xor i32 %i.ic, -1
  %i.sp = sext i32 %i.so to i64                   ; 2 uses
  %i.sq = sub i32 1, %i.ic
  %i.sr = sext i32 %i.sq to i64                   ; 2 uses
  br i1 %i.sl, label %.preheader.us.preheader.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.i.i.i
  %i.ss = add nsw i32 %i.ic, -4
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = zext nneg i32 %i.ic to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.sj to i64
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvars.iv207.i.i.i = phi i64 [ 4, %.preheader.us.preheader.i.i.i ], [ %indvars.iv.next208.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.0202.us.i.i.i = phi float [ 1.000000e+00, %.preheader.us.preheader.i.i.i ], [ %.10.us.i.i.i, %._crit_edge.us.i.i.i ]
  %i.sv = mul nuw nsw i64 %indvars.iv207.i.i.i, %i.su
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.sv
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bp, %.preheader.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 5, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bp ] ; 2 uses
  %.1200.us.i.i.i = phi float [ %.0202.us.i.i.i, %.preheader.us.i.i.i ], [ %.10.us.i.i.i, %bb.bp ] ; 6 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %indvars.iv.i.i.i ; 10 uses
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !22 ; 15 uses
  %i.sz = fcmp reassoc nsz arcp contract afn ogt float %i.sy, 5.000000e-03
  br i1 %i.sz, label %bb.ax, label %bb.bp

bb.ax:                                            ; preds = %bb.aw
  %i.ta = getelementptr [4 x i8], ptr %i.sx, i64 %i.in ; 2 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 -4
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !22 ; 5 uses
  %i.td = getelementptr i8, ptr %i.ta, i64 4
  %i.te = load float, ptr %i.td, align 4, !tbaa !22 ; 9 uses
  %i.tf = fcmp reassoc nsz arcp contract afn ogt float %i.sy, %i.tc
  %i.tg = select reassoc nsz arcp contract afn i1 %i.tf, float %i.sy, float %i.tc ; 4 uses
  %i.th = fcmp reassoc nsz arcp contract afn ogt float %i.tc, 5.000000e-03
  %i.ti = fcmp reassoc nsz arcp contract afn ogt float %i.tg, f0x3C23D70A
  %or.cond.us.i.i.i = and i1 %i.th, %i.ti
  br i1 %or.cond.us.i.i.i, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.tj = fcmp reassoc nsz arcp contract afn olt float %i.sy, %i.tc
  %i.tk = select reassoc nsz arcp contract afn i1 %i.tj, float %i.sy, float %i.tc ; 2 uses
  %i.tl = fmul reassoc nsz arcp contract afn float %i.tk, %.1200.us.i.i.i
  %i.tm = fcmp reassoc nsz arcp contract afn ogt float %i.tg, %i.tl
  br i1 %i.tm, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.tn = fcmp reassoc nsz arcp contract afn oeq float %i.tg, %i.sy
  br i1 %i.tn, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.to = getelementptr inbounds i8, ptr %i.sx, i64 -8
  %i.tp = load float, ptr %i.to, align 4, !tbaa !22 ; 2 uses
  %i.tq = fcmp reassoc nsz arcp contract afn ogt float %i.tp, %i.sy
  %.183.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tq, float %i.tp, float %i.sy ; 3 uses
  %i.tr = getelementptr [4 x i8], ptr %i.sx, i64 %i.sn ; 2 uses
  %i.ts = getelementptr i8, ptr %i.tr, i64 -8
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !22 ; 3 uses
  %i.tu = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.tt
  %i.tv = load float, ptr %i.tr, align 4, !tbaa !22 ; 4 uses
  br i1 %i.tu, label %bb.bb, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %bb.ba
  %i.tw = fcmp reassoc nsz arcp contract afn ogt float %i.tt, %i.tv
  br i1 %i.tw, label %.thread194.us.i.i.i, label %bb.bd

.thread194.us.i.i.i:                              ; preds = %.thread.us.i.i.i
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.tx = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.tv
  br i1 %i.tx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %.thread194.us.i.i.i, %.thread.us.i.i.i
  %i.ty = phi reassoc nsz arcp contract afn float [ %i.tt, %.thread194.us.i.i.i ], [ %.183.us.i.i.i, %bb.bc ], [ %i.tv, %bb.bb ], [ %i.tv, %.thread.us.i.i.i ]
  %i.tz = fcmp reassoc nsz arcp contract afn ult float %i.ty, f0x3F666666
  br i1 %i.tz, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %bb.az
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.sp
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !22 ; 2 uses
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.sr
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !22 ; 2 uses
  %i.ue = fcmp reassoc nsz arcp contract afn ogt float %i.ub, %i.ud
  %..us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ue, float %i.ub, float %i.ud ; 2 uses
  %i.uf = fcmp reassoc nsz arcp contract afn ogt float %..us.i.i.i, %i.te
  %i.ug = select reassoc nsz arcp contract afn i1 %i.uf, float %..us.i.i.i, float %i.te
  %i.uh = fcmp reassoc nsz arcp contract afn ult float %i.ug, f0x3F666666
  br i1 %i.uh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ui = fdiv reassoc nsz arcp contract afn float %i.tg, %i.tk
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.ay, %bb.ax
  %.4.us.i.i.i = phi nsz float [ %.1200.us.i.i.i, %bb.ax ], [ %.1200.us.i.i.i, %bb.ay ], [ %i.ui, %bb.bf ], [ %.1200.us.i.i.i, %bb.bd ], [ %.1200.us.i.i.i, %bb.be ] ; 5 uses
  %i.uj = fcmp reassoc nsz arcp contract afn ogt float %i.sy, %i.te
  %i.uk = select reassoc nsz arcp contract afn i1 %i.uj, float %i.sy, float %i.te ; 4 uses
  %i.ul = fcmp reassoc nsz arcp contract afn ogt float %i.te, 5.000000e-03
  %i.um = fcmp reassoc nsz arcp contract afn ogt float %i.uk, f0x3C23D70A
  %or.cond4.us.i.i.i = select i1 %i.ul, i1 %i.um, i1 false
  br i1 %or.cond4.us.i.i.i, label %bb.bh, label %bb.bp

bb.bh:                                            ; preds = %bb.bg
  %i.un = fcmp reassoc nsz arcp contract afn olt float %i.sy, %i.te
  %i.uo = select reassoc nsz arcp contract afn i1 %i.un, float %i.sy, float %i.te ; 2 uses
  %i.up = fmul reassoc nsz arcp contract afn float %.4.us.i.i.i, %i.uo
  %i.uq = fcmp reassoc nsz arcp contract afn ogt float %i.uk, %i.up
  br i1 %i.uq, label %bb.bi, label %bb.bp

bb.bi:                                            ; preds = %bb.bh
  %i.ur = fcmp reassoc nsz arcp contract afn oeq float %i.uk, %i.sy
  br i1 %i.ur, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.us = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.ut = load float, ptr %i.us, align 4, !tbaa !22 ; 2 uses
  %i.uu = fcmp reassoc nsz arcp contract afn ogt float %i.sy, %i.ut
  %.189.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.uu, float %i.sy, float %i.ut ; 3 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.sn ; 2 uses
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !22 ; 3 uses
  %i.ux = fcmp reassoc nsz arcp contract afn ogt float %.189.us.i.i.i, %i.uw
  %i.uy = getelementptr i8, ptr %i.uv, i64 8
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !22 ; 4 uses
  br i1 %i.ux, label %bb.bk, label %.thread197.us.i.i.i

.thread197.us.i.i.i:                              ; preds = %bb.bj
  %i.va = fcmp reassoc nsz arcp contract afn ogt float %i.uw, %i.uz
  br i1 %i.va, label %.thread198.us.i.i.i, label %bb.bm

.thread198.us.i.i.i:                              ; preds = %.thread197.us.i.i.i
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.vb = fcmp reassoc nsz arcp contract afn ogt float %.189.us.i.i.i, %i.uz
  br i1 %i.vb, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %.thread198.us.i.i.i, %.thread197.us.i.i.i
  %i.vc = phi reassoc nsz arcp contract afn float [ %i.uw, %.thread198.us.i.i.i ], [ %.189.us.i.i.i, %bb.bl ], [ %i.uz, %bb.bk ], [ %i.uz, %.thread197.us.i.i.i ]
  %i.vd = fcmp reassoc nsz arcp contract afn ult float %i.vc, f0x3F666666
  br i1 %i.vd, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bi
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.sp
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !22 ; 2 uses
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.sr
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !22 ; 2 uses
  %i.vi = fcmp reassoc nsz arcp contract afn ogt float %i.vf, %i.vh
  %.187.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.vi, float %i.vf, float %i.vh ; 2 uses
  %i.vj = fcmp reassoc nsz arcp contract afn ogt float %.187.us.i.i.i, %i.te
  %i.vk = select reassoc nsz arcp contract afn i1 %i.vj, float %.187.us.i.i.i, float %i.te
  %i.vl = fcmp reassoc nsz arcp contract afn ult float %i.vk, f0x3F666666
  br i1 %i.vl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.vm = fdiv reassoc nsz arcp contract afn float %i.uk, %i.uo
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bh, %bb.bg, %bb.aw
  %.10.us.i.i.i = phi nsz float [ %.1200.us.i.i.i, %bb.aw ], [ %.4.us.i.i.i, %bb.bg ], [ %.4.us.i.i.i, %bb.bn ], [ %.4.us.i.i.i, %bb.bm ], [ %i.vm, %bb.bo ], [ %.4.us.i.i.i, %bb.bh ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.vn = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.st
  br i1 %i.vn, label %bb.aw, label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %bb.bp
  %indvars.iv.next208.i.i.i = add nuw nsw i64 %indvars.iv207.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next208.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge203.loopexit.i.i.i, label %.preheader.us.i.i.i

._crit_edge203.loopexit.i.i.i:                    ; preds = %._crit_edge.us.i.i.i
  %i.vo = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.10.us.i.i.i)
  br label %_calcRadiusMono.exit.i.i

_calcRadiusMono.exit.i.i:                         ; preds = %._crit_edge203.loopexit.i.i.i, %.preheader.lr.ph.i.i.i, %bb.av
  %.0.lcssa.i.i.i = phi float [ 0.000000e+00, %bb.av ], [ %i.vo, %._crit_edge203.loopexit.i.i.i ], [ 0.000000e+00, %.preheader.lr.ph.i.i.i ]
  %i.vp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0.lcssa.i.i.i
  %i.vq = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.vp)
  br label %bb.gc

bb.bq:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  %i.vr = and i32 %.fr1059, 3
  store i32 %i.vr, ptr %i.m, align 4, !tbaa !32
  %i.vs = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.vt = lshr i32 %.fr1059, 4
end_hunk_0
begin_hunk_1_@process:bb.a
  %scevgep2985 = getelementptr i8, ptr %i.jgu, i64 -452
  %scevgep2987 = getelementptr i8, ptr %i.jgu, i64 456
  %scevgep3068 = getelementptr i8, ptr %i.jhd, i64 100352
  %scevgep3070 = getelementptr i8, ptr %i.jhd, i64 100356
  %scevgep3075 = getelementptr i8, ptr %i.jgv, i64 8
  %scevgep3078 = getelementptr i8, ptr %i.jgv, i64 8
  %scevgep3080 = getelementptr i8, ptr %i.jgv, i64 8
  %scevgep3084 = getelementptr i8, ptr %i.jgv, i64 12
  %scevgep3086 = getelementptr i8, ptr %i.jhd, i64 99900
  %scevgep3088 = getelementptr i8, ptr %i.jhd, i64 99904
  %scevgep3090 = getelementptr i8, ptr %i.jhd, i64 100804
  %scevgep3092 = getelementptr i8, ptr %i.jhd, i64 100808
  %scevgep3094 = getelementptr i8, ptr %i.jhd, i64 98996
  %scevgep3096 = getelementptr i8, ptr %i.jhd, i64 99000
  %scevgep3098 = getelementptr i8, ptr %i.jhd, i64 50176
  %scevgep3100 = getelementptr i8, ptr %i.jhd, i64 50180
  %scevgep3102 = getelementptr i8, ptr %i.jhd, i64 49272
  %scevgep3104 = getelementptr i8, ptr %i.jhd, i64 49276
  %scevgep3106 = getelementptr i8, ptr %i.jhd, i64 99908
  %scevgep3108 = getelementptr i8, ptr %i.jhd, i64 99912
  %scevgep3110 = getelementptr i8, ptr %i.jhd, i64 100796
  %scevgep3112 = getelementptr i8, ptr %i.jhd, i64 100800
  %scevgep3114 = getelementptr i8, ptr %i.jhd, i64 99020
  %scevgep3116 = getelementptr i8, ptr %i.jhd, i64 99024
  %scevgep3118 = getelementptr i8, ptr %i.jhd, i64 49288
  %scevgep3120 = getelementptr i8, ptr %i.jhd, i64 49292
  %scevgep3122 = getelementptr i8, ptr %i.jhd, i64 101684
  %scevgep3124 = getelementptr i8, ptr %i.jhd, i64 101688
  %scevgep3126 = getelementptr i8, ptr %i.jhd, i64 51064
  %scevgep3128 = getelementptr i8, ptr %i.jhd, i64 51068
  %scevgep3130 = getelementptr i8, ptr %i.jhd, i64 101708
  %scevgep3132 = getelementptr i8, ptr %i.jhd, i64 101712
  %scevgep3134 = getelementptr i8, ptr %i.jhd, i64 51080
  %scevgep3136 = getelementptr i8, ptr %i.jhd, i64 51084
  %scevgep3138 = getelementptr i8, ptr %i.jhd, i64 49724
  %scevgep3140 = getelementptr i8, ptr %i.jhd, i64 49728
  %scevgep3142 = getelementptr i8, ptr %i.jhd, i64 49732
  %scevgep3144 = getelementptr i8, ptr %i.jhd, i64 49736
  %scevgep3146 = getelementptr i8, ptr %i.jhd, i64 50620
  %scevgep3148 = getelementptr i8, ptr %i.jhd, i64 50624
  %scevgep3150 = getelementptr i8, ptr %i.jhd, i64 50628
  %scevgep3152 = getelementptr i8, ptr %i.jhd, i64 50632
  %i.jhh = insertelement <4 x i64> poison, i64 %i.jgw, i64 0
  %i.jhi = shufflevector <4 x i64> %i.jhh, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jhj = or disjoint <4 x i64> %i.jhi, <i64 4, i64 8, i64 8, i64 4>
  %scevgep3328 = getelementptr i8, ptr %i.jgx, i64 -1344
  %scevgep3333 = getelementptr i8, ptr %i.jgx, i64 -440
  %scevgep3335 = getelementptr i8, ptr %i.jgx, i64 -892
  %scevgep3337 = getelementptr i8, ptr %i.jgx, i64 12
  %scevgep3339 = getelementptr i8, ptr %i.jgx, i64 -1320
  %scevgep3341 = getelementptr i8, ptr %i.jgx, i64 -432
  %scevgep3343 = getelementptr i8, ptr %i.jgx, i64 -876
  %scevgep3353 = getelementptr i8, ptr %i.jgx, i64 -1344
  %scevgep3355 = getelementptr i8, ptr %i.jgx, i64 1364
  %scevgep3411 = getelementptr i8, ptr %i.jhd, i64 50176
  %scevgep3413 = getelementptr i8, ptr %i.jhd, i64 50180
  %scevgep3417 = getelementptr i8, ptr %i.jgx, i64 -1792
  %scevgep3419 = getelementptr i8, ptr %i.jgx, i64 1796
  %scevgep3421 = getelementptr i8, ptr %i.jgv, i64 -448
  %scevgep3423 = getelementptr i8, ptr %i.jgv, i64 452
  %scevgep3425 = getelementptr i8, ptr %i.jgu, i64 -452
  %scevgep3427 = getelementptr i8, ptr %i.jgu, i64 456
  %scevgep3504 = getelementptr i8, ptr %i.jgv, i64 4
  %scevgep3508 = getelementptr i8, ptr %i.jgx, i64 -452
  %scevgep3510 = getelementptr i8, ptr %i.jgx, i64 456
  %scevgep3542 = getelementptr i8, ptr %i.jgu, i64 16
  %scevgep3593 = getelementptr i8, ptr %i.jgx, i64 -1328
  %scevgep3595 = getelementptr i8, ptr %i.jgx, i64 1344
  %invariant.op4936 = sub i64 %i.jhe, %i.jgy
  %invariant.op4938 = sub i64 %i.jhe, %i.jgy
  %i.jhk = insertelement <4 x i64> poison, i64 %i.jha, i64 0
  %i.jhl = insertelement <4 x i64> %i.jhk, i64 %i.jhc, i64 1
  %i.jhm = shufflevector <4 x i64> %i.jhl, <4 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.preheader833.i

.preheader833.i:                                  ; preds = %._crit_edge939.i, %.preheader833.preheader.i
  %indvars.iv1055.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next1056.i, %._crit_edge939.i ] ; 2 uses
  %indvars.iv947.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next948.i, %._crit_edge939.i ] ; 2 uses
  %.0740941.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %i.jik, %._crit_edge939.i ] ; 4 uses
  %i.jhn = mul nuw nsw i32 %.0740941.i, 92        ; 5 uses
  %i.jho = add nuw nsw i32 %i.jhn, 112            ; 2 uses
  %i.jhp = tail call i32 @llvm.smin.i32(i32 %i.jho, i32 %i.ayi) ; 3 uses
  %i.jhq = sub nsw i32 %i.jhp, %i.jhn             ; 6 uses
  %i.jhr = icmp sgt i32 %i.jho, %i.ayi
  %i.jhs = icmp sgt i32 %i.ayi, %i.jhn
  %i.jht = add nsw i32 %i.jhq, -3                 ; 2 uses
  %i.jhu = tail call i32 @llvm.smin.i32(i32 %i.jht, i32 5)
  %i.jhv = icmp sgt i32 %i.jhq, 6                 ; 2 uses
  %i.jhw = add nsw i32 %i.jhq, -4                 ; 5 uses
  %i.jhx = icmp sgt i32 %i.jhq, 8                 ; 3 uses
  %i.jhy = add nsw i32 %i.jhq, -2
  %i.jhz = icmp sgt i32 %i.jhq, 4
  %i.jia = icmp eq i32 %.0740941.i, 0
  %i.jib = select i1 %i.jia, i32 9, i32 10        ; 3 uses
  %i.jic = add nuw nsw i32 %i.jib, %i.jhn         ; 2 uses
  %i.jid = icmp eq i32 %.0740941.i, %i.jgt        ; 2 uses
  %.neg.i541 = select i1 %i.jid, i32 -9, i32 -10
  %i.jie = add nsw i32 %i.jhp, %.neg.i541         ; 2 uses
  %i.jif = icmp slt i32 %i.jic, %i.jie
  %i.jig = sext i32 %i.jhu to i64
  %i.jih = add i32 %i.jib, %indvars.iv1055.i
  %i.jii = mul i32 %i.jih, %i.bo
  %i.jij = mul nuw nsw i32 %i.jib, 112
  %invariant.op.i = add nsw i64 %i.jig, -1
  br label %bb.pb

._crit_edge942.split.i:                           ; preds = %._crit_edge939.i
  tail call void @free(ptr noundef %i.jgx) #27, !noalias !277
  tail call void @free(ptr noundef %i.jhd) #27, !noalias !277
  tail call void @free(ptr noundef %i.jgu) #27, !noalias !277
  tail call void @free(ptr noundef %i.jgv) #27, !noalias !277
  tail call void @free(ptr noundef %i.jgz) #27, !noalias !277
  tail call void @free(ptr noundef %i.jhb) #27, !noalias !277
  br label %demosaic_box3.exit

._crit_edge939.i:                                 ; preds = %._crit_edge935.split.i
  %i.jik = add nuw nsw i32 %.0740941.i, 1
  %indvars.iv.next948.i = add i32 %indvars.iv947.i, %i.apt
  %indvars.iv.next1056.i = add nuw i32 %indvars.iv1055.i, 92
  br i1 %i.jid, label %._crit_edge942.split.i, label %.preheader833.i

bb.pb:                                            ; preds = %._crit_edge935.split.i, %.preheader833.i
  %indvars.iv1057.i = phi i32 [ %i.jii, %.preheader833.i ], [ %indvars.iv.next1058.i, %._crit_edge935.split.i ] ; 2 uses
  %indvars.iv1018.i = phi i32 [ 0, %.preheader833.i ], [ %indvars.iv.next1019.i, %._crit_edge935.split.i ] ; 14 uses
  %indvars.iv1016.i = phi i32 [ 112, %.preheader833.i ], [ %indvars.iv.next1017.i, %._crit_edge935.split.i ] ; 14 uses
  %indvars.iv949.i = phi i32 [ %indvars.iv947.i, %.preheader833.i ], [ %indvars.iv.next950.i, %._crit_edge935.split.i ] ; 2 uses
  %.0741937.i = phi i32 [ 0, %.preheader833.i ], [ %i.lul, %._crit_edge935.split.i ] ; 5 uses
  %smin4810 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jil = add i32 %smin4810, %indvars.iv1018.i
  %smin4811 = call i32 @llvm.smin.i32(i32 %i.jil, i32 112)
  %i.jim = add i32 %smin4811, -4
  %i.jin = sext i32 %i.jim to i64                 ; 2 uses
  %smin4805 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jio = add i32 %smin4805, %indvars.iv1018.i
  %smin4806 = call i32 @llvm.smin.i32(i32 %i.jio, i32 112)
  %i.jip = add i32 %smin4806, -4
  %i.jiq = sext i32 %i.jip to i64                 ; 2 uses
  %smin3667 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jir = mul i32 %.0741937.i, 92
  %i.jis = or disjoint i32 %i.jir, 1
  %smax3668 = call i32 @llvm.smax.i32(i32 %smin3667, i32 %i.jis)
  %i.jit = add i32 %indvars.iv1018.i, -1
  %i.jiu = add i32 %smax3668, %i.jit              ; 3 uses
  %i.jiv = zext i32 %i.jiu to i64
  %i.jiw = add nuw nsw i64 %i.jiv, 1              ; 5 uses
  %smin3590 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jix = add i32 %smin3590, %indvars.iv1018.i
  %smin3591 = call i32 @llvm.smin.i32(i32 %i.jix, i32 112)
  %i.jiy = add i32 %smin3591, -4
  %i.jiz = sext i32 %i.jiy to i64
  %i.jja = shl nsw i64 %i.jiz, 2                  ; 2 uses
  %smin3544 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjb = add i32 %smin3544, %indvars.iv1018.i
  %smin3545 = call i32 @llvm.smin.i32(i32 %i.jjb, i32 112)
  %i.jjc = add i32 %smin3545, -4
  %i.jjd = sext i32 %i.jjc to i64
  %i.jje = shl nsw i64 %i.jjd, 2                  ; 5 uses
  %scevgep3555 = getelementptr i8, ptr %scevgep3554, i64 %i.jje
  %smin3505 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjf = add i32 %smin3505, %indvars.iv1018.i
  %smin3506 = call i32 @llvm.smin.i32(i32 %i.jjf, i32 112)
  %smin3414 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjg = add i32 %smin3414, %indvars.iv1018.i
  %smin3415 = call i32 @llvm.smin.i32(i32 %i.jjg, i32 112)
  %smin3347 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjh = add i32 %smin3347, %indvars.iv1018.i
  %smin3348 = call i32 @llvm.smin.i32(i32 %i.jjh, i32 112)
  %i.jji = add i32 %smin3348, -3
  %smax3349 = call i32 @llvm.smax.i32(i32 %i.jji, i32 5)
  %i.jjj = add nsw i32 %smax3349, -4
  %i.jjk = lshr i32 %i.jjj, 1
  %smin3325 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjl = add i32 %smin3325, %indvars.iv1018.i
  %smin3326 = call i32 @llvm.smin.i32(i32 %i.jjl, i32 112)
  %i.jjm = add i32 %smin3326, -3
  %smax3327 = call i32 @llvm.smax.i32(i32 %i.jjm, i32 5)
  %i.jjn = add nsw i32 %smax3327, -4
  %i.jjo = lshr i32 %i.jjn, 1
  %smin3071 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjp = add i32 %smin3071, %indvars.iv1018.i
  %smin3072 = call i32 @llvm.smin.i32(i32 %i.jjp, i32 112)
  %smin2982 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjq = add i32 %smin2982, %indvars.iv1018.i
  %smin2983 = call i32 @llvm.smin.i32(i32 %i.jjq, i32 112)
  %smin2959 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjr = add i32 %indvars.iv1018.i, -1
  %smin1163 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjs = add i32 %smin1163, %indvars.iv1018.i
  %smin1164 = call i32 @llvm.smin.i32(i32 %i.jjs, i32 112) ; 7 uses
  %i.jjt = add i32 %smin1164, -4
  %i.jju = sext i32 %i.jjt to i64                 ; 6 uses
  %i.jjv = add i32 %smin1164, -3                  ; 3 uses
  %i.jjw = sext i32 %i.jjv to i64                 ; 2 uses
  %i.jjx = add nsw i64 %i.jju, 336
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.jjv, i32 5)
  %i.jjy = add nsw i32 %smax.i, -4
  %i.jjz = lshr i32 %i.jjy, 1
  %i.jka = mul i32 %.0741937.i, 92                ; 8 uses
  %i.jkb = add i32 %i.jka, 112                    ; 2 uses
  %i.jkc = tail call i32 @llvm.smin.i32(i32 %i.jkb, i32 %i.bo) ; 3 uses
  %i.jkd = sub nsw i32 %i.jkc, %i.jka             ; 4 uses
  %i.jke = tail call i32 @llvm.smin.i32(i32 %i.jkd, i32 112) ; 3 uses
  %i.jkf = icmp sgt i32 %i.jkb, %i.bo
  %or.cond794.i = select i1 %i.jhr, i1 true, i1 %i.jkf
  br i1 %or.cond794.i, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jgu, i8 0, i64 50176, i1 false), !noalias !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(150528) %i.jhd, i8 0, i64 150528, i1 false), !noalias !277
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %i.jkg = icmp sgt i32 %i.bo, %i.jka
  %or.cond943.i = select i1 %i.jhs, i1 %i.jkg, i1 false
  br i1 %or.cond943.i, label %iter.check3690.preheader, label %._crit_edge842.split.i

iter.check3690.preheader:                         ; preds = %bb.pd
  %min.iters.check3670 = icmp ult i32 %i.jiu, 3
  %min.iters.check3672 = icmp ult i32 %i.jiu, 31
  %i.jkh = and i64 %i.jiw, 28
  %n.vec3674 = and i64 %i.jiw, 8589934560         ; 6 uses
  %i.jki = trunc i64 %n.vec3674 to i32
  %i.jkj = add i32 %i.jka, %i.jki
  %cmp.n3685 = icmp eq i64 %i.jiw, %n.vec3674
  %min.epilog.iters.check3693 = icmp eq i64 %i.jkh, 0
  %n.vec3695 = and i64 %i.jiw, 8589934588         ; 5 uses
  %i.jkk = trunc i64 %n.vec3695 to i32
  %i.jkl = add i32 %i.jka, %i.jkk
  %cmp.n3703 = icmp eq i64 %i.jiw, %n.vec3695
  br label %iter.check3690

._crit_edge842.split.i:                           ; preds = %._crit_edge.i548, %bb.pd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !282
  br i1 %i.jhv, label %.lr.ph850.i, label %._crit_edge851.split.thread.i

._crit_edge851.split.thread.i:                    ; preds = %._crit_edge842.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !282
  br label %.preheader832.i

.lr.ph850.i:                                      ; preds = %._crit_edge842.split.i
  %i.jkm = icmp sgt i32 %i.jkd, 8                 ; 2 uses
  br i1 %i.jkm, label %.lr.ph846.i.preheader, label %._crit_edge851.split.i

.lr.ph846.i.preheader:                            ; preds = %.lr.ph850.i
  %i.jkn = add nsw i64 %i.jju, -4                 ; 3 uses
  %min.iters.check3637 = icmp ult i64 %i.jkn, 8
  %n.vec3639 = and i64 %i.jkn, -8                 ; 4 uses
  %i.jko = or disjoint i64 %n.vec3639, 4
  %cmp.n3651 = icmp eq i64 %i.jkn, %n.vec3639
  br label %.lr.ph846.i

iter.check3690:                                   ; preds = %iter.check3690.preheader, %._crit_edge.i548
  %indvars.iv951.i = phi i32 [ %indvars.iv.next952.i, %._crit_edge.i548 ], [ %indvars.iv949.i, %iter.check3690.preheader ] ; 3 uses
  %indvars.iv.i547 = phi i32 [ %indvars.iv.next.i549, %._crit_edge.i548 ], [ 0, %iter.check3690.preheader ] ; 3 uses
  %.0742839.i = phi i32 [ %i.jnc, %._crit_edge.i548 ], [ %i.jhn, %iter.check3690.preheader ] ; 2 uses
  %i.jkp = sext i32 %indvars.iv.i547 to i64       ; 6 uses
  %i.jkq = zext i32 %indvars.iv951.i to i64       ; 6 uses
  %i.jkr = shl i32 %.0742839.i, 2
  %i.jks = and i32 %i.jkr, 28                     ; 2 uses
  %i.jkt = lshr i32 %.fr1059, %i.jks
  %i.jku = and i32 %i.jkt, 3
  %i.jkv = or disjoint i32 %i.jks, 2
  %i.jkw = lshr i32 %.fr1059, %i.jkv
  %i.jkx = and i32 %i.jkw, 3
  %i.jky = zext nneg i32 %i.jkx to i64            ; 2 uses
  %i.jkz = getelementptr inbounds nuw [50176 x i8], ptr %i.jhd, i64 %i.jky ; 3 uses
  %i.jla = zext nneg i32 %i.jku to i64            ; 2 uses
  %i.jlb = getelementptr inbounds nuw [50176 x i8], ptr %i.jhd, i64 %i.jla ; 3 uses
  br i1 %min.iters.check3670, label %vec.epilog.scalar.ph3691.preheader, label %vector.memcheck3654

vector.memcheck3654:                              ; preds = %iter.check3690
  %i.jlc = sext i32 %indvars.iv.i547 to i64
  %i.jld = shl nsw i64 %i.jlc, 2                  ; 3 uses
  %i.jle = add i64 %i.jld, %i.jgy
  %i.jlf = zext i32 %indvars.iv951.i to i64
  %i.jlg = add nsw i64 %i.ayr, %i.jlf
  %i.jlh = shl nsw i64 %i.jlg, 2
  %i.jli = add i64 %i.jlh, %.13923658             ; 3 uses
  %i.jlj = mul nuw nsw i64 %i.jla, 50176          ; 2 uses
  %i.jlk = mul nuw nsw i64 %i.jky, 50176          ; 2 uses
  %.reass4937 = add i64 %i.jlk, %invariant.op4936
  %diff.check3656 = icmp ugt i64 %.reass4937, -128
  %i.jll = add i64 %i.jlk, %i.jhe
  %i.jlm = add i64 %i.jll, %i.jld
  %i.jln = sub i64 %i.jli, %i.jlm
  %diff.check3659 = icmp ugt i64 %i.jln, -128
  %conflict.rdx3660 = or i1 %diff.check3656, %diff.check3659
  %.reass4939 = add i64 %i.jlj, %invariant.op4938
  %diff.check3661 = icmp ugt i64 %.reass4939, -128
  %conflict.rdx3662 = or i1 %conflict.rdx3660, %diff.check3661
  %i.jlo = add i64 %i.jlj, %i.jhe
  %i.jlp = add i64 %i.jlo, %i.jld
  %i.jlq = sub i64 %i.jli, %i.jlp
  %diff.check3663 = icmp ugt i64 %i.jlq, -128
  %conflict.rdx3664 = or i1 %conflict.rdx3662, %diff.check3663
  %i.jlr = sub i64 %i.jli, %i.jle
  %diff.check3665 = icmp ugt i64 %i.jlr, -128
  %conflict.rdx3666 = or i1 %conflict.rdx3664, %diff.check3665
  br i1 %conflict.rdx3666, label %vec.epilog.scalar.ph3691.preheader, label %vector.main.loop.iter.check3671

vector.main.loop.iter.check3671:                  ; preds = %vector.memcheck3654
  br i1 %min.iters.check3672, label %vec.epilog.ph3694, label %vector.ph3673

vector.ph3673:                                    ; preds = %vector.main.loop.iter.check3671
  %i.jls = add nuw nsw i64 %n.vec3674, %i.jkq
  %i.jlt = add nsw i64 %n.vec3674, %i.jkp
  %invariant.gep4932 = getelementptr [4 x i8], ptr %i.ays, i64 %i.jkq
  br label %vector.body3677

vector.body3677:                                  ; preds = %vector.body3677, %vector.ph3673
  %index3678 = phi i64 [ 0, %vector.ph3673 ], [ %index.next3683, %vector.body3677 ] ; 3 uses
  %i.jlu = add i64 %index3678, %i.jkp             ; 3 uses
  %gep4933 = getelementptr [4 x i8], ptr %invariant.gep4932, i64 %index3678 ; 4 uses
  %i.jlv = getelementptr inbounds nuw i8, ptr %gep4933, i64 32
  %i.jlw = getelementptr inbounds nuw i8, ptr %gep4933, i64 64
  %i.jlx = getelementptr inbounds nuw i8, ptr %gep4933, i64 96
  %wide.load3679 = load <8 x float>, ptr %gep4933, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %wide.load3680 = load <8 x float>, ptr %i.jlv, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %wide.load3681 = load <8 x float>, ptr %i.jlw, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %wide.load3682 = load <8 x float>, ptr %i.jlx, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %i.jly = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3679, <8 x float> zeroinitializer)
  %i.jlz = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3680, <8 x float> zeroinitializer)
  %i.jma = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3681, <8 x float> zeroinitializer)
  %i.jmb = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3682, <8 x float> zeroinitializer)
  %i.jmc = fmul reassoc nsz arcp contract afn <8 x float> %i.jly, %i.axb ; 3 uses
  %i.jmd = fmul reassoc nsz arcp contract afn <8 x float> %i.jlz, %i.axc ; 3 uses
  %i.jme = fmul reassoc nsz arcp contract afn <8 x float> %i.jma, %i.axd ; 3 uses
  %i.jmf = fmul reassoc nsz arcp contract afn <8 x float> %i.jmb, %i.axe ; 3 uses
  %i.jmg = getelementptr inbounds [4 x i8], ptr %i.jkz, i64 %i.jlu ; 4 uses
  %i.jmh = getelementptr inbounds nuw i8, ptr %i.jmg, i64 32
  %i.jmi = getelementptr inbounds nuw i8, ptr %i.jmg, i64 64
  %i.jmj = getelementptr inbounds nuw i8, ptr %i.jmg, i64 96
  store <8 x float> %i.jmc, ptr %i.jmg, align 64, !tbaa !22, !noalias !277
  store <8 x float> %i.jmd, ptr %i.jmh, align 32, !tbaa !22, !noalias !277
  store <8 x float> %i.jme, ptr %i.jmi, align 64, !tbaa !22, !noalias !277
  store <8 x float> %i.jmf, ptr %i.jmj, align 32, !tbaa !22, !noalias !277
  %i.jmk = getelementptr inbounds [4 x i8], ptr %i.jlb, i64 %i.jlu ; 4 uses
  %i.jml = getelementptr inbounds nuw i8, ptr %i.jmk, i64 32
  %i.jmm = getelementptr inbounds nuw i8, ptr %i.jmk, i64 64
  %i.jmn = getelementptr inbounds nuw i8, ptr %i.jmk, i64 96
  store <8 x float> %i.jmc, ptr %i.jmk, align 64, !tbaa !22, !noalias !277
  store <8 x float> %i.jmd, ptr %i.jml, align 32, !tbaa !22, !noalias !277
  store <8 x float> %i.jme, ptr %i.jmm, align 64, !tbaa !22, !noalias !277
  store <8 x float> %i.jmf, ptr %i.jmn, align 32, !tbaa !22, !noalias !277
  %i.jmo = getelementptr inbounds [4 x i8], ptr %i.jgx, i64 %i.jlu ; 4 uses
  %i.jmp = getelementptr inbounds nuw i8, ptr %i.jmo, i64 32
  %i.jmq = getelementptr inbounds nuw i8, ptr %i.jmo, i64 64
  %i.jmr = getelementptr inbounds nuw i8, ptr %i.jmo, i64 96
  store <8 x float> %i.jmc, ptr %i.jmo, align 64, !tbaa !22, !noalias !277
  store <8 x float> %i.jmd, ptr %i.jmp, align 32, !tbaa !22, !noalias !277
  store <8 x float> %i.jme, ptr %i.jmq, align 64, !tbaa !22, !noalias !277
  store <8 x float> %i.jmf, ptr %i.jmr, align 32, !tbaa !22, !noalias !277
  %index.next3683 = add nuw i64 %index3678, 32    ; 2 uses
  %i.jms = icmp eq i64 %index.next3683, %n.vec3674
  br i1 %i.jms, label %middle.block3684, label %vector.body3677, !llvm.loop !283

middle.block3684:                                 ; preds = %vector.body3677
  br i1 %cmp.n3685, label %._crit_edge.i548, label %vec.epilog.iter.check3692

vec.epilog.iter.check3692:                        ; preds = %middle.block3684
  br i1 %min.epilog.iters.check3693, label %vec.epilog.scalar.ph3691.preheader, label %vec.epilog.ph3694, !prof !187

vec.epilog.ph3694:                                ; preds = %vector.main.loop.iter.check3671, %vec.epilog.iter.check3692
  %vec.epilog.resume.val3686 = phi i64 [ %n.vec3674, %vec.epilog.iter.check3692 ], [ 0, %vector.main.loop.iter.check3671 ]
  %i.jmt = add nuw nsw i64 %n.vec3695, %i.jkq
  %i.jmu = add nsw i64 %n.vec3695, %i.jkp
  %invariant.gep4934 = getelementptr [4 x i8], ptr %i.ays, i64 %i.jkq
  br label %vec.epilog.vector.body3698

vec.epilog.vector.body3698:                       ; preds = %vec.epilog.vector.body3698, %vec.epilog.ph3694
  %index3699 = phi i64 [ %vec.epilog.resume.val3686, %vec.epilog.ph3694 ], [ %index.next3701, %vec.epilog.vector.body3698 ] ; 3 uses
  %i.jmv = add i64 %index3699, %i.jkp             ; 3 uses
  %gep4935 = getelementptr [4 x i8], ptr %invariant.gep4934, i64 %index3699
  %wide.load3700 = load <4 x float>, ptr %gep4935, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %i.jmw = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load3700, <4 x float> zeroinitializer)
  %i.jmx = fmul reassoc nsz arcp contract afn <4 x float> %i.jmw, %i.axf ; 3 uses
  %i.jmy = getelementptr inbounds [4 x i8], ptr %i.jkz, i64 %i.jmv
  store <4 x float> %i.jmx, ptr %i.jmy, align 16, !tbaa !22, !noalias !277
  %i.jmz = getelementptr inbounds [4 x i8], ptr %i.jlb, i64 %i.jmv
  store <4 x float> %i.jmx, ptr %i.jmz, align 16, !tbaa !22, !noalias !277
  %i.jna = getelementptr inbounds [4 x i8], ptr %i.jgx, i64 %i.jmv
  store <4 x float> %i.jmx, ptr %i.jna, align 16, !tbaa !22, !noalias !277
  %index.next3701 = add nuw i64 %index3699, 4     ; 2 uses
  %i.jnb = icmp eq i64 %index.next3701, %n.vec3695
  br i1 %i.jnb, label %vec.epilog.middle.block3702, label %vec.epilog.vector.body3698, !llvm.loop !284

vec.epilog.middle.block3702:                      ; preds = %vec.epilog.vector.body3698
  br i1 %cmp.n3703, label %._crit_edge.i548, label %vec.epilog.scalar.ph3691.preheader

vec.epilog.scalar.ph3691.preheader:               ; preds = %vector.memcheck3654, %iter.check3690, %vec.epilog.iter.check3692, %vec.epilog.middle.block3702
  %indvars.iv953.i.ph = phi i64 [ %i.jkq, %iter.check3690 ], [ %i.jkq, %vector.memcheck3654 ], [ %i.jls, %vec.epilog.iter.check3692 ], [ %i.jmt, %vec.epilog.middle.block3702 ]
  %indvars.iv945.i.ph = phi i64 [ %i.jkp, %iter.check3690 ], [ %i.jkp, %vector.memcheck3654 ], [ %i.jlt, %vec.epilog.iter.check3692 ], [ %i.jmu, %vec.epilog.middle.block3702 ]
  %.0743838.i.ph = phi i32 [ %i.jka, %iter.check3690 ], [ %i.jka, %vector.memcheck3654 ], [ %i.jkj, %vec.epilog.iter.check3692 ], [ %i.jkl, %vec.epilog.middle.block3702 ]
  br label %vec.epilog.scalar.ph3691

._crit_edge.i548:                                 ; preds = %vec.epilog.scalar.ph3691, %vec.epilog.middle.block3702, %middle.block3684
  %i.jnc = add nuw nsw i32 %.0742839.i, 1         ; 2 uses
  %i.jnd = icmp slt i32 %i.jnc, %i.jhp
  %indvars.iv.next.i549 = add i32 %indvars.iv.i547, 112
  %indvars.iv.next952.i = add i32 %indvars.iv951.i, %i.bo
  br i1 %i.jnd, label %iter.check3690, label %._crit_edge842.split.i

vec.epilog.scalar.ph3691:                         ; preds = %vec.epilog.scalar.ph3691.preheader, %vec.epilog.scalar.ph3691
  %indvars.iv953.i = phi i64 [ %indvars.iv.next954.i, %vec.epilog.scalar.ph3691 ], [ %indvars.iv953.i.ph, %vec.epilog.scalar.ph3691.preheader ] ; 2 uses
  %indvars.iv945.i = phi i64 [ %indvars.iv.next946.i, %vec.epilog.scalar.ph3691 ], [ %indvars.iv945.i.ph, %vec.epilog.scalar.ph3691.preheader ] ; 4 uses
  %.0743838.i = phi i32 [ %i.jnl, %vec.epilog.scalar.ph3691 ], [ %.0743838.i.ph, %vec.epilog.scalar.ph3691.preheader ]
  %i.jne = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %indvars.iv953.i
  %i.jnf = load float, ptr %i.jne, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %i.jng = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jnf, float 0.000000e+00)
  %i.jnh = fmul reassoc nsz arcp contract afn float %i.jng, %i.axg ; 3 uses
  %i.jni = getelementptr inbounds [4 x i8], ptr %i.jkz, i64 %indvars.iv945.i
  store float %i.jnh, ptr %i.jni, align 4, !tbaa !22, !noalias !277
  %i.jnj = getelementptr inbounds [4 x i8], ptr %i.jlb, i64 %indvars.iv945.i
  store float %i.jnh, ptr %i.jnj, align 4, !tbaa !22, !noalias !277
  %i.jnk = getelementptr inbounds [4 x i8], ptr %i.jgx, i64 %indvars.iv945.i
  store float %i.jnh, ptr %i.jnk, align 4, !tbaa !22, !noalias !277
  %i.jnl = add nuw nsw i32 %.0743838.i, 1         ; 2 uses
  %indvars.iv.next946.i = add nsw i64 %indvars.iv945.i, 1
  %indvars.iv.next954.i = add nuw nsw i64 %indvars.iv953.i, 1
  %i.jnm = icmp slt i32 %i.jnl, %i.jkc
  br i1 %i.jnm, label %vec.epilog.scalar.ph3691, label %._crit_edge.i548, !llvm.loop !285

._crit_edge851.split.i:                           ; preds = %._crit_edge847.i, %.lr.ph850.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !282
  br i1 %i.jhx, label %.lr.ph872.i, label %.preheader832.i

.lr.ph872.i:                                      ; preds = %._crit_edge851.split.i
  %i.jnn = icmp sgt i32 %i.jkd, 6
  br i1 %i.jnn, label %.lr.ph855.preheader.i.preheader, label %.lr.ph881.i

.lr.ph855.preheader.i.preheader:                  ; preds = %.lr.ph872.i
  %scevgep3546 = getelementptr i8, ptr %i.jgu, i64 %i.jje
  %scevgep3596 = getelementptr i8, ptr %scevgep3595, i64 %i.jja
  %i.jno = add nsw i64 %i.jiq, -1
  %i.jnp = add nsw i64 %i.jin, -1
  %i.jnq = add nsw i64 %i.jjw, -3                 ; 3 uses
  %min.iters.check3620 = icmp ult i64 %i.jnq, 8
  %n.vec3622 = and i64 %i.jnq, -8                 ; 4 uses
  %i.jnr = or disjoint i64 %n.vec3622, 3
  %cmp.n3633 = icmp eq i64 %i.jnq, %n.vec3622
  %i.jns = add nsw i64 %i.jju, -4                 ; 3 uses
  %min.iters.check3602 = icmp ult i64 %i.jns, 8
  %n.vec3604 = and i64 %i.jns, -8                 ; 4 uses
  %i.jnt = or disjoint i64 %n.vec3604, 4
  %cmp.n3616 = icmp eq i64 %i.jns, %n.vec3604
  %i.jnu = add nsw i64 %i.jju, -4                 ; 3 uses
  %min.iters.check3572 = icmp ult i64 %i.jnu, 8
  %n.vec3574 = and i64 %i.jnu, -8                 ; 4 uses
  %i.jnv = or disjoint i64 %n.vec3574, 4
  %cmp.n3585 = icmp eq i64 %i.jnu, %n.vec3574
  br label %.lr.ph855.preheader.i

.lr.ph846.i:                                      ; preds = %.lr.ph846.i.preheader, %._crit_edge847.i
  %indvars.iv1154 = phi i64 [ %indvars.iv.next1155, %._crit_edge847.i ], [ %i.jjx, %.lr.ph846.i.preheader ] ; 2 uses
  %.sroa.phi = phi ptr [ %.sroa.gep, %._crit_edge847.i ], [ %.sroa.gep4879, %.lr.ph846.i.preheader ] ; 2 uses
  %indvars.iv967.i = phi i64 [ 4, %._crit_edge847.i ], [ 3, %.lr.ph846.i.preheader ]
  %indvars.iv960.i = phi i64 [ %indvars.iv.next961.i, %._crit_edge847.i ], [ 340, %.lr.ph846.i.preheader ] ; 4 uses
  br i1 %min.iters.check3637, label %scalar.ph3636.preheader, label %vector.ph3638

vector.ph3638:                                    ; preds = %.lr.ph846.i
  %i.jnw = add i64 %indvars.iv960.i, %n.vec3639
  %i.jnx = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv960.i
  br label %vector.body3640

vector.body3640:                                  ; preds = %vector.body3640, %vector.ph3638
  %index3641 = phi i64 [ 0, %vector.ph3638 ], [ %index.next3649, %vector.body3640 ] ; 3 uses
  %i.jny = getelementptr [4 x i8], ptr %i.jnx, i64 %index3641 ; 7 uses
  %i.jnz = getelementptr i8, ptr %i.jny, i64 -1344
  %wide.load3642 = load <8 x float>, ptr %i.jnz, align 16, !tbaa !22, !noalias !277
  %i.joa = getelementptr i8, ptr %i.jny, i64 -448
  %wide.load3643 = load <8 x float>, ptr %i.joa, align 16, !tbaa !22, !noalias !277
  %i.job = getelementptr inbounds nuw i8, ptr %i.jny, i64 448
  %wide.load3644 = load <8 x float>, ptr %i.job, align 16, !tbaa !22, !noalias !277
  %i.joc = getelementptr inbounds nuw i8, ptr %i.jny, i64 1344
  %wide.load3645 = load <8 x float>, ptr %i.joc, align 16, !tbaa !22, !noalias !277
  %i.jod = getelementptr i8, ptr %i.jny, i64 -896
  %wide.load3646 = load <8 x float>, ptr %i.jod, align 16, !tbaa !22, !noalias !277
  %i.joe = getelementptr inbounds nuw i8, ptr %i.jny, i64 896
  %wide.load3647 = load <8 x float>, ptr %i.joe, align 16, !tbaa !22, !noalias !277
  %i.jof = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3647, %wide.load3646
  %i.jog = fmul reassoc nsz arcp contract afn <8 x float> %i.jof, splat (float -3.000000e+00)
  %wide.load3648 = load <8 x float>, ptr %i.jny, align 16, !tbaa !22, !noalias !277
  %i.joh = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3648, splat (float 6.000000e+00)
  %i.joi = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3643, %wide.load3644
  %i.joj = fsub reassoc nsz arcp contract afn <8 x float> %wide.load3642, %i.joi
  %i.jok = fadd reassoc nsz arcp contract afn <8 x float> %i.joj, %wide.load3645
  %i.jol = fadd reassoc nsz arcp contract afn <8 x float> %i.jok, %i.jog
  %i.jom = fadd reassoc nsz arcp contract afn <8 x float> %i.jol, %i.joh ; 2 uses
  %i.jon = fmul reassoc nsz arcp contract afn <8 x float> %i.jom, %i.jom
  %i.joo = getelementptr [4 x i8], ptr %.sroa.phi, i64 %index3641
  %i.jop = getelementptr i8, ptr %i.joo, i64 -1248
  store <8 x float> %i.jon, ptr %i.jop, align 16, !tbaa !22, !noalias !282
  %index.next3649 = add nuw i64 %index3641, 8     ; 2 uses
  %i.joq = icmp eq i64 %index.next3649, %n.vec3639
  br i1 %i.joq, label %middle.block3650, label %vector.body3640, !llvm.loop !286

middle.block3650:                                 ; preds = %vector.body3640
  br i1 %cmp.n3651, label %._crit_edge847.i, label %scalar.ph3636.preheader

scalar.ph3636.preheader:                          ; preds = %.lr.ph846.i, %middle.block3650
  %indvars.iv962.i.ph = phi i64 [ %indvars.iv960.i, %.lr.ph846.i ], [ %i.jnw, %middle.block3650 ]
  %indvars.iv958.i.ph = phi i64 [ 4, %.lr.ph846.i ], [ %i.jko, %middle.block3650 ]
  br label %scalar.ph3636

._crit_edge847.i:                                 ; preds = %scalar.ph3636, %middle.block3650
  %i.jor = icmp slt i64 %indvars.iv967.i, %invariant.op.i
  %indvars.iv.next961.i = add nuw nsw i64 %indvars.iv960.i, 112
  %indvars.iv.next1155 = add i64 %indvars.iv1154, 112
  br i1 %i.jor, label %.lr.ph846.i, label %._crit_edge851.split.i

scalar.ph3636:                                    ; preds = %scalar.ph3636.preheader, %scalar.ph3636
  %indvars.iv962.i = phi i64 [ %indvars.iv.next963.i, %scalar.ph3636 ], [ %indvars.iv962.i.ph, %scalar.ph3636.preheader ] ; 2 uses
  %indvars.iv958.i = phi i64 [ %indvars.iv.next959.i, %scalar.ph3636 ], [ %indvars.iv958.i.ph, %scalar.ph3636.preheader ] ; 2 uses
  %i.jos = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv962.i ; 7 uses
  %i.jot = getelementptr i8, ptr %i.jos, i64 -1344
  %i.jou = load float, ptr %i.jot, align 4, !tbaa !22, !noalias !277
  %i.jov = getelementptr i8, ptr %i.jos, i64 -448
  %i.jow = load float, ptr %i.jov, align 4, !tbaa !22, !noalias !277
  %i.jox = getelementptr inbounds nuw i8, ptr %i.jos, i64 448
  %i.joy = load float, ptr %i.jox, align 4, !tbaa !22, !noalias !277
  %i.joz = getelementptr inbounds nuw i8, ptr %i.jos, i64 1344
  %i.jpa = load float, ptr %i.joz, align 4, !tbaa !22, !noalias !277
  %i.jpb = getelementptr i8, ptr %i.jos, i64 -896
  %i.jpc = load float, ptr %i.jpb, align 4, !tbaa !22, !noalias !277
  %i.jpd = getelementptr inbounds nuw i8, ptr %i.jos, i64 896
  %i.jpe = load float, ptr %i.jpd, align 4, !tbaa !22, !noalias !277
  %i.jpf = fadd reassoc nsz arcp contract afn float %i.jpe, %i.jpc
  %.neg826.i = fmul reassoc nsz arcp contract afn float %i.jpf, -3.000000e+00
  %i.jpg = load float, ptr %i.jos, align 4, !tbaa !22, !noalias !277
  %i.jph = fmul reassoc nsz arcp contract afn float %i.jpg, 6.000000e+00
  %i.jpi = fadd reassoc nsz arcp contract afn float %i.jow, %i.joy
  %.neg827.i = fsub reassoc nsz arcp contract afn float %i.jou, %i.jpi
  %i.jpj = fadd reassoc nsz arcp contract afn float %.neg827.i, %i.jpa
  %i.jpk = fadd reassoc nsz arcp contract afn float %i.jpj, %.neg826.i
  %i.jpl = fadd reassoc nsz arcp contract afn float %i.jpk, %i.jph ; 2 uses
  %i.jpm = fmul reassoc nsz arcp contract afn float %i.jpl, %i.jpl
  %i.jpn = getelementptr [4 x i8], ptr %.sroa.phi, i64 %indvars.iv958.i
  %i.jpo = getelementptr i8, ptr %i.jpn, i64 -1264
  store float %i.jpm, ptr %i.jpo, align 4, !tbaa !22, !noalias !282
  %indvars.iv.next959.i = add nuw nsw i64 %indvars.iv958.i, 1
  %indvars.iv.next963.i = add nuw i64 %indvars.iv962.i, 1 ; 2 uses
  %exitcond1156.not = icmp eq i64 %indvars.iv.next963.i, %indvars.iv1154
  br i1 %exitcond1156.not, label %._crit_edge847.i, label %scalar.ph3636, !llvm.loop !287

.loopexit.i545:                                   ; preds = %.lr.ph866.i.prol.loopexit, %.lr.ph866.i, %middle.block3584, %._crit_edge856.i
  %i.jpp = add nuw nsw i32 %.0752867.i, 1         ; 2 uses
  %i.jpq = icmp slt i32 %i.jpp, %i.jhw
  %indvars.iv.next973.i = add i32 %indvars.iv972.i, 112
  %indvars.iv.next982.i = add i32 %indvars.iv981.i, 112
  br i1 %i.jpq, label %.lr.ph855.preheader.i, label %.preheader832.i

.preheader832.i:                                  ; preds = %.loopexit.i545, %._crit_edge851.split.i, %._crit_edge851.split.thread.i
  br i1 %i.jhz, label %.lr.ph881.i, label %._crit_edge925.i

.lr.ph881.i:                                      ; preds = %.lr.ph872.i, %.preheader832.i
  %i.jpr = add nsw i32 %i.jke, -2                 ; 2 uses
  %i.jps = add i32 %smin3506, -5
  br label %bb.pe

.lr.ph855.preheader.i:                            ; preds = %.lr.ph855.preheader.i.preheader, %.loopexit.i545
  %indvars.iv981.i = phi i32 [ %indvars.iv.next982.i, %.loopexit.i545 ], [ 560, %.lr.ph855.preheader.i.preheader ] ; 5 uses
  %indvars.iv972.i = phi i32 [ %indvars.iv.next973.i, %.loopexit.i545 ], [ 448, %.lr.ph855.preheader.i.preheader ] ; 4 uses
  %.0749870.i = phi ptr [ %.0750869.i, %.loopexit.i545 ], [ %i.c, %.lr.ph855.preheader.i.preheader ] ; 7 uses
  %.0750869.i = phi ptr [ %.0751868.i, %.loopexit.i545 ], [ %i.apr, %.lr.ph855.preheader.i.preheader ] ; 7 uses
  %.0751868.i = phi ptr [ %.0749870.i, %.loopexit.i545 ], [ %i.aps, %.lr.ph855.preheader.i.preheader ] ; 13 uses
  %.0752867.i = phi i32 [ %i.jpp, %.loopexit.i545 ], [ 4, %.lr.ph855.preheader.i.preheader ]
  %i.jpt = zext i32 %indvars.iv972.i to i64
  %i.jpu = zext i32 %indvars.iv981.i to i64
  %i.jpv = zext i32 %indvars.iv981.i to i64
  %i.jpw = shl nuw nsw i64 %i.jpv, 2              ; 2 uses
  %scevgep3594 = getelementptr i8, ptr %scevgep3593, i64 %i.jpw
  %scevgep3597 = getelementptr i8, ptr %scevgep3596, i64 %i.jpw
  %i.jpx = zext i32 %indvars.iv972.i to i64
  %i.jpy = shl nuw nsw i64 %i.jpx, 2              ; 2 uses
  %scevgep3543 = getelementptr i8, ptr %scevgep3542, i64 %i.jpy ; 4 uses
  %scevgep3547 = getelementptr i8, ptr %scevgep3546, i64 %i.jpy ; 4 uses
  %i.jpz = zext i32 %indvars.iv972.i to i64       ; 4 uses
  %i.jqa = add nsw i64 %i.jju, %i.jpz
  %i.jqb = zext i32 %indvars.iv981.i to i64
  %i.jqc = add nsw i64 %i.jju, %i.jqb
  %i.jqd = add nsw i64 %i.jjw, %i.jpz
  %i.jqe = or disjoint i64 %i.jpz, 3              ; 4 uses
  %.phi.trans.insert.i = getelementptr [4 x i8], ptr %i.jgx, i64 %i.jqe
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !22, !noalias !277 ; 2 uses
  br i1 %min.iters.check3620, label %.lr.ph855.i.preheader, label %vector.ph3621

vector.ph3621:                                    ; preds = %.lr.ph855.preheader.i
  %i.jqf = add nsw i64 %i.jqe, %n.vec3622
  %vector.recur.init = insertelement <8 x float> poison, float %.pre.i, i64 7
  br label %vector.body3623

vector.body3623:                                  ; preds = %vector.body3623, %vector.ph3621
  %index3624 = phi i64 [ 0, %vector.ph3621 ], [ %index.next3631, %vector.body3623 ] ; 3 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph3621 ], [ %wide.load3627, %vector.body3623 ]
  %i.jqg = add nuw i64 %i.jqe, %index3624         ; 2 uses
  %i.jqh = getelementptr [4 x i8], ptr %i.jgx, i64 %i.jqg ; 5 uses
  %i.jqi = getelementptr i8, ptr %i.jqh, i64 -12
  %wide.load3625 = load <8 x float>, ptr %i.jqi, align 32, !tbaa !22, !noalias !277
  %i.jqj = getelementptr i8, ptr %i.jqh, i64 -4
  %wide.load3626 = load <8 x float>, ptr %i.jqj, align 8, !tbaa !22, !noalias !277
  %i.jqk = getelementptr inbounds nuw [4 x i8], ptr %i.jgx, i64 %i.jqg
  %i.jql = getelementptr inbounds nuw i8, ptr %i.jqk, i64 4
  %wide.load3627 = load <8 x float>, ptr %i.jql, align 16, !tbaa !22, !noalias !277 ; 4 uses
  %i.jqm = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load3627, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.jqn = getelementptr inbounds nuw i8, ptr %i.jqh, i64 12
  %wide.load3628 = load <8 x float>, ptr %i.jqn, align 8, !tbaa !22, !noalias !277
  %i.jqo = getelementptr i8, ptr %i.jqh, i64 -8
  %wide.load3629 = load <8 x float>, ptr %i.jqo, align 4, !tbaa !22, !noalias !277
  %i.jqp = getelementptr inbounds nuw i8, ptr %i.jqh, i64 8
  %wide.load3630 = load <8 x float>, ptr %i.jqp, align 4, !tbaa !22, !noalias !277
  %i.jqq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3630, %wide.load3629
  %i.jqr = fmul reassoc nsz arcp contract afn <8 x float> %i.jqq, splat (float -3.000000e+00)
  %i.jqs = fmul reassoc nsz arcp contract afn <8 x float> %i.jqm, splat (float 6.000000e+00)
  %i.jqt = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3625, %i.jqs
  %i.jqu = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3626, %wide.load3627
  %i.jqv = fsub reassoc nsz arcp contract afn <8 x float> %i.jqt, %i.jqu
  %i.jqw = fadd reassoc nsz arcp contract afn <8 x float> %i.jqv, %wide.load3628
  %i.jqx = fadd reassoc nsz arcp contract afn <8 x float> %i.jqw, %i.jqr ; 2 uses
  %i.jqy = fmul reassoc nsz arcp contract afn <8 x float> %i.jqx, %i.jqx
  %i.jqz = getelementptr [4 x i8], ptr %i.d, i64 %index3624
  store <8 x float> %i.jqy, ptr %i.jqz, align 16, !tbaa !22, !noalias !282
  %index.next3631 = add nuw i64 %index3624, 8     ; 2 uses
  %i.jra = icmp eq i64 %index.next3631, %n.vec3622
  br i1 %i.jra, label %middle.block3632, label %vector.body3623, !llvm.loop !288

middle.block3632:                                 ; preds = %vector.body3623
  %vector.recur.extract = extractelement <8 x float> %wide.load3627, i64 7
  br i1 %cmp.n3633, label %._crit_edge856.i, label %.lr.ph855.i.preheader

.lr.ph855.i.preheader:                            ; preds = %.lr.ph855.preheader.i, %middle.block3632
  %.ph = phi float [ %.pre.i, %.lr.ph855.preheader.i ], [ %vector.recur.extract, %middle.block3632 ]
  %indvars.iv974.i.ph = phi i64 [ %i.jqe, %.lr.ph855.preheader.i ], [ %i.jqf, %middle.block3632 ]
  %indvars.iv970.i.ph = phi i64 [ 3, %.lr.ph855.preheader.i ], [ %i.jnr, %middle.block3632 ]
  br label %.lr.ph855.i

._crit_edge856.i:                                 ; preds = %.lr.ph855.i, %middle.block3632
  %i.jrb = or disjoint i64 %i.jpz, 4              ; 4 uses
  br i1 %i.jkm, label %.lr.ph860.i.preheader, label %.loopexit.i545

.lr.ph860.i.preheader:                            ; preds = %._crit_edge856.i
  %i.jrc = or disjoint i32 %indvars.iv981.i, 4
  %i.jrd = zext i32 %i.jrc to i64                 ; 4 uses
  br i1 %min.iters.check3602, label %.lr.ph860.i.preheader4687, label %vector.memcheck3588

vector.memcheck3588:                              ; preds = %.lr.ph860.i.preheader
  %scevgep3589 = getelementptr i8, ptr %.0751868.i, i64 -16
  %scevgep3592 = getelementptr i8, ptr %scevgep3589, i64 %i.jja
  %bound03598 = icmp ult ptr %.0751868.i, %scevgep3597
  %bound13599 = icmp ult ptr %scevgep3594, %scevgep3592
  %found.conflict3600 = and i1 %bound03598, %bound13599
  br i1 %found.conflict3600, label %.lr.ph860.i.preheader4687, label %vector.ph3603

vector.ph3603:                                    ; preds = %vector.memcheck3588
  %i.jre = add nsw i64 %n.vec3604, %i.jrd
  %invariant.gep4940 = getelementptr [4 x i8], ptr %i.jgx, i64 %i.jrd
  br label %vector.body3605

vector.body3605:                                  ; preds = %vector.body3605, %vector.ph3603
  %index3606 = phi i64 [ 0, %vector.ph3603 ], [ %index.next3614, %vector.body3605 ] ; 3 uses
  %gep4941 = getelementptr [4 x i8], ptr %invariant.gep4940, i64 %index3606 ; 7 uses
  %i.jrf = getelementptr i8, ptr %gep4941, i64 -1344
  %wide.load3607 = load <8 x float>, ptr %i.jrf, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jrg = getelementptr i8, ptr %gep4941, i64 -448
  %wide.load3608 = load <8 x float>, ptr %i.jrg, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jrh = getelementptr inbounds nuw i8, ptr %gep4941, i64 448
  %wide.load3609 = load <8 x float>, ptr %i.jrh, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jri = getelementptr inbounds nuw i8, ptr %gep4941, i64 1344
  %wide.load3610 = load <8 x float>, ptr %i.jri, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jrj = getelementptr i8, ptr %gep4941, i64 -896
  %wide.load3611 = load <8 x float>, ptr %i.jrj, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jrk = getelementptr inbounds nuw i8, ptr %gep4941, i64 896
  %wide.load3612 = load <8 x float>, ptr %i.jrk, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jrl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3612, %wide.load3611
  %i.jrm = fmul reassoc nsz arcp contract afn <8 x float> %i.jrl, splat (float -3.000000e+00)
  %wide.load3613 = load <8 x float>, ptr %gep4941, align 16, !tbaa !22, !alias.scope !289, !noalias !277
  %i.jrn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3613, splat (float 6.000000e+00)
  %i.jro = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3608, %wide.load3609
  %i.jrp = fsub reassoc nsz arcp contract afn <8 x float> %wide.load3607, %i.jro
  %i.jrq = fadd reassoc nsz arcp contract afn <8 x float> %i.jrp, %wide.load3610
  %i.jrr = fadd reassoc nsz arcp contract afn <8 x float> %i.jrq, %i.jrm
  %i.jrs = fadd reassoc nsz arcp contract afn <8 x float> %i.jrr, %i.jrn ; 2 uses
  %i.jrt = fmul reassoc nsz arcp contract afn <8 x float> %i.jrs, %i.jrs
  %i.jru = getelementptr [4 x i8], ptr %.0751868.i, i64 %index3606
  store <8 x float> %i.jrt, ptr %i.jru, align 4, !tbaa !22, !alias.scope !292, !noalias !294
  %index.next3614 = add nuw i64 %index3606, 8     ; 2 uses
  %i.jrv = icmp eq i64 %index.next3614, %n.vec3604
  br i1 %i.jrv, label %middle.block3615, label %vector.body3605, !llvm.loop !295

middle.block3615:                                 ; preds = %vector.body3605
  br i1 %cmp.n3616, label %.lr.ph866.i.preheader, label %.lr.ph860.i.preheader4687

.lr.ph860.i.preheader4687:                        ; preds = %vector.memcheck3588, %.lr.ph860.i.preheader, %middle.block3615
  %indvars.iv983.i.ph = phi i64 [ %i.jrd, %vector.memcheck3588 ], [ %i.jrd, %.lr.ph860.i.preheader ], [ %i.jre, %middle.block3615 ] ; 5 uses
  %indvars.iv979.i.ph = phi i64 [ 4, %vector.memcheck3588 ], [ 4, %.lr.ph860.i.preheader ], [ %i.jnt, %middle.block3615 ] ; 3 uses
  %i.jrw = sub nsw i64 %i.jiq, %indvars.iv983.i.ph
  %i.jrx = add nsw i64 %i.jno, %i.jpu
  %xtraiter4807 = and i64 %i.jrw, 1
  %lcmp.mod4808.not = icmp eq i64 %xtraiter4807, 0
  br i1 %lcmp.mod4808.not, label %.lr.ph860.i.prol.loopexit, label %.lr.ph860.i.prol

.lr.ph860.i.prol:                                 ; preds = %.lr.ph860.i.preheader4687
  %i.jry = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv983.i.ph ; 7 uses
  %i.jrz = getelementptr i8, ptr %i.jry, i64 -1344
  %i.jsa = load float, ptr %i.jrz, align 4, !tbaa !22, !noalias !277
  %i.jsb = getelementptr i8, ptr %i.jry, i64 -448
  %i.jsc = load float, ptr %i.jsb, align 4, !tbaa !22, !noalias !277
  %i.jsd = getelementptr inbounds nuw i8, ptr %i.jry, i64 448
  %i.jse = load float, ptr %i.jsd, align 4, !tbaa !22, !noalias !277
  %i.jsf = getelementptr inbounds nuw i8, ptr %i.jry, i64 1344
  %i.jsg = load float, ptr %i.jsf, align 4, !tbaa !22, !noalias !277
  %i.jsh = getelementptr i8, ptr %i.jry, i64 -896
  %i.jsi = load float, ptr %i.jsh, align 4, !tbaa !22, !noalias !277
  %i.jsj = getelementptr inbounds nuw i8, ptr %i.jry, i64 896
  %i.jsk = load float, ptr %i.jsj, align 4, !tbaa !22, !noalias !277
  %i.jsl = fadd reassoc nsz arcp contract afn float %i.jsk, %i.jsi
  %.neg816.i.prol = fmul reassoc nsz arcp contract afn float %i.jsl, -3.000000e+00
  %i.jsm = load float, ptr %i.jry, align 4, !tbaa !22, !noalias !277
  %i.jsn = fmul reassoc nsz arcp contract afn float %i.jsm, 6.000000e+00
  %i.jso = fadd reassoc nsz arcp contract afn float %i.jsc, %i.jse
  %.neg817.i.prol = fsub reassoc nsz arcp contract afn float %i.jsa, %i.jso
  %i.jsp = fadd reassoc nsz arcp contract afn float %.neg817.i.prol, %i.jsg
  %i.jsq = fadd reassoc nsz arcp contract afn float %i.jsp, %.neg816.i.prol
  %i.jsr = fadd reassoc nsz arcp contract afn float %i.jsq, %i.jsn ; 2 uses
  %i.jss = fmul reassoc nsz arcp contract afn float %i.jsr, %i.jsr
  %i.jst = getelementptr [4 x i8], ptr %.0751868.i, i64 %indvars.iv979.i.ph
  %i.jsu = getelementptr i8, ptr %i.jst, i64 -16
  store float %i.jss, ptr %i.jsu, align 4, !tbaa !22, !noalias !282
  %indvars.iv.next980.i.prol = add nuw nsw i64 %indvars.iv979.i.ph, 1
  %indvars.iv.next984.i.prol = add nuw nsw i64 %indvars.iv983.i.ph, 1
  br label %.lr.ph860.i.prol.loopexit

.lr.ph860.i.prol.loopexit:                        ; preds = %.lr.ph860.i.prol, %.lr.ph860.i.preheader4687
  %indvars.iv983.i.unr = phi i64 [ %indvars.iv983.i.ph, %.lr.ph860.i.preheader4687 ], [ %indvars.iv.next984.i.prol, %.lr.ph860.i.prol ]
  %indvars.iv979.i.unr = phi i64 [ %indvars.iv979.i.ph, %.lr.ph860.i.preheader4687 ], [ %indvars.iv.next980.i.prol, %.lr.ph860.i.prol ]
  %i.jsv = icmp eq i64 %i.jrx, %indvars.iv983.i.ph
  br i1 %i.jsv, label %.lr.ph866.i.preheader, label %.lr.ph860.i

.lr.ph855.i:                                      ; preds = %.lr.ph855.i.preheader, %.lr.ph855.i
  %i.jsw = phi float [ %i.jtd, %.lr.ph855.i ], [ %.ph, %.lr.ph855.i.preheader ]
  %indvars.iv974.i = phi i64 [ %indvars.iv.next975.i, %.lr.ph855.i ], [ %indvars.iv974.i.ph, %.lr.ph855.i.preheader ] ; 2 uses
  %indvars.iv970.i = phi i64 [ %indvars.iv.next971.i, %.lr.ph855.i ], [ %indvars.iv970.i.ph, %.lr.ph855.i.preheader ] ; 2 uses
  %i.jsx = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv974.i ; 5 uses
  %i.jsy = getelementptr i8, ptr %i.jsx, i64 -12
  %i.jsz = load float, ptr %i.jsy, align 4, !tbaa !22, !noalias !277
  %i.jta = getelementptr i8, ptr %i.jsx, i64 -4
  %i.jtb = load float, ptr %i.jta, align 4, !tbaa !22, !noalias !277
  %indvars.iv.next975.i = add nuw nsw i64 %indvars.iv974.i, 1 ; 3 uses
  %i.jtc = getelementptr inbounds nuw [4 x i8], ptr %i.jgx, i64 %indvars.iv.next975.i
  %i.jtd = load float, ptr %i.jtc, align 4, !tbaa !22, !noalias !277 ; 2 uses
  %i.jte = getelementptr inbounds nuw i8, ptr %i.jsx, i64 12
  %i.jtf = load float, ptr %i.jte, align 4, !tbaa !22, !noalias !277
  %i.jtg = getelementptr i8, ptr %i.jsx, i64 -8
  %i.jth = load float, ptr %i.jtg, align 4, !tbaa !22, !noalias !277
  %i.jti = getelementptr inbounds nuw i8, ptr %i.jsx, i64 8
  %i.jtj = load float, ptr %i.jti, align 4, !tbaa !22, !noalias !277
  %i.jtk = fadd reassoc nsz arcp contract afn float %i.jtj, %i.jth
  %.neg821.i = fmul reassoc nsz arcp contract afn float %i.jtk, -3.000000e+00
  %i.jtl = fmul reassoc nsz arcp contract afn float %i.jsw, 6.000000e+00
  %.neg761 = fadd reassoc nsz arcp contract afn float %i.jsz, %i.jtl
  %i.jtm = fadd reassoc nsz arcp contract afn float %i.jtb, %i.jtd
  %i.jtn = fsub reassoc nsz arcp contract afn float %.neg761, %i.jtm
  %i.jto = fadd reassoc nsz arcp contract afn float %i.jtn, %i.jtf
  %i.jtp = fadd reassoc nsz arcp contract afn float %i.jto, %.neg821.i ; 2 uses
  %i.jtq = fmul reassoc nsz arcp contract afn float %i.jtp, %i.jtp
  %i.jtr = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv970.i
  %i.jts = getelementptr i8, ptr %i.jtr, i64 -12
  store float %i.jtq, ptr %i.jts, align 4, !tbaa !22, !noalias !282
  %indvars.iv.next971.i = add nuw nsw i64 %indvars.iv970.i, 1
  %exitcond1159.not = icmp eq i64 %indvars.iv.next975.i, %i.jqd
  br i1 %exitcond1159.not, label %._crit_edge856.i, label %.lr.ph855.i, !llvm.loop !296

.lr.ph860.i:                                      ; preds = %.lr.ph860.i.prol.loopexit, %.lr.ph860.i
  %indvars.iv983.i = phi i64 [ %indvars.iv.next984.i.1, %.lr.ph860.i ], [ %indvars.iv983.i.unr, %.lr.ph860.i.prol.loopexit ] ; 3 uses
  %indvars.iv979.i = phi i64 [ %indvars.iv.next980.i.1, %.lr.ph860.i ], [ %indvars.iv979.i.unr, %.lr.ph860.i.prol.loopexit ] ; 3 uses
  %i.jtt = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv983.i ; 7 uses
  %i.jtu = getelementptr i8, ptr %i.jtt, i64 -1344
  %i.jtv = load float, ptr %i.jtu, align 4, !tbaa !22, !noalias !277
  %i.jtw = getelementptr i8, ptr %i.jtt, i64 -448
  %i.jtx = load float, ptr %i.jtw, align 4, !tbaa !22, !noalias !277
  %i.jty = getelementptr inbounds nuw i8, ptr %i.jtt, i64 448
  %i.jtz = load float, ptr %i.jty, align 4, !tbaa !22, !noalias !277
  %i.jua = getelementptr inbounds nuw i8, ptr %i.jtt, i64 1344
  %i.jub = load float, ptr %i.jua, align 4, !tbaa !22, !noalias !277
  %i.juc = getelementptr i8, ptr %i.jtt, i64 -896
  %i.jud = load float, ptr %i.juc, align 4, !tbaa !22, !noalias !277
  %i.jue = getelementptr inbounds nuw i8, ptr %i.jtt, i64 896
  %i.juf = load float, ptr %i.jue, align 4, !tbaa !22, !noalias !277
  %i.jug = fadd reassoc nsz arcp contract afn float %i.juf, %i.jud
  %.neg816.i = fmul reassoc nsz arcp contract afn float %i.jug, -3.000000e+00
  %i.juh = load float, ptr %i.jtt, align 4, !tbaa !22, !noalias !277
  %i.jui = fmul reassoc nsz arcp contract afn float %i.juh, 6.000000e+00
  %i.juj = fadd reassoc nsz arcp contract afn float %i.jtx, %i.jtz
  %.neg817.i = fsub reassoc nsz arcp contract afn float %i.jtv, %i.juj
  %i.juk = fadd reassoc nsz arcp contract afn float %.neg817.i, %i.jub
  %i.jul = fadd reassoc nsz arcp contract afn float %i.juk, %.neg816.i
  %i.jum = fadd reassoc nsz arcp contract afn float %i.jul, %i.jui ; 2 uses
  %i.jun = fmul reassoc nsz arcp contract afn float %i.jum, %i.jum
  %i.juo = getelementptr [4 x i8], ptr %.0751868.i, i64 %indvars.iv979.i
  %i.jup = getelementptr i8, ptr %i.juo, i64 -16
  store float %i.jun, ptr %i.jup, align 4, !tbaa !22, !noalias !282
  %i.juq = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv983.i ; 7 uses
  %i.jur = getelementptr i8, ptr %i.juq, i64 4
  %i.jus = getelementptr i8, ptr %i.juq, i64 -1340
  %i.jut = load float, ptr %i.jus, align 4, !tbaa !22, !noalias !277
  %i.juu = getelementptr i8, ptr %i.juq, i64 -444
  %i.juv = load float, ptr %i.juu, align 4, !tbaa !22, !noalias !277
  %i.juw = getelementptr i8, ptr %i.juq, i64 452
  %i.jux = load float, ptr %i.juw, align 4, !tbaa !22, !noalias !277
  %i.juy = getelementptr i8, ptr %i.juq, i64 1348
  %i.juz = load float, ptr %i.juy, align 4, !tbaa !22, !noalias !277
  %i.jva = getelementptr i8, ptr %i.juq, i64 -892
  %i.jvb = load float, ptr %i.jva, align 4, !tbaa !22, !noalias !277
  %i.jvc = getelementptr i8, ptr %i.juq, i64 900
  %i.jvd = load float, ptr %i.jvc, align 4, !tbaa !22, !noalias !277
  %i.jve = fadd reassoc nsz arcp contract afn float %i.jvd, %i.jvb
  %.neg816.i.1 = fmul reassoc nsz arcp contract afn float %i.jve, -3.000000e+00
  %i.jvf = load float, ptr %i.jur, align 4, !tbaa !22, !noalias !277
  %i.jvg = fmul reassoc nsz arcp contract afn float %i.jvf, 6.000000e+00
  %i.jvh = fadd reassoc nsz arcp contract afn float %i.juv, %i.jux
  %.neg817.i.1 = fsub reassoc nsz arcp contract afn float %i.jut, %i.jvh
  %i.jvi = fadd reassoc nsz arcp contract afn float %.neg817.i.1, %i.juz
  %i.jvj = fadd reassoc nsz arcp contract afn float %i.jvi, %.neg816.i.1
  %i.jvk = fadd reassoc nsz arcp contract afn float %i.jvj, %i.jvg ; 2 uses
  %i.jvl = fmul reassoc nsz arcp contract afn float %i.jvk, %i.jvk
  %i.jvm = getelementptr [4 x i8], ptr %.0751868.i, i64 %indvars.iv979.i
  %i.jvn = getelementptr i8, ptr %i.jvm, i64 -12
  store float %i.jvl, ptr %i.jvn, align 4, !tbaa !22, !noalias !282
  %indvars.iv.next980.i.1 = add nuw nsw i64 %indvars.iv979.i, 2
  %indvars.iv.next984.i.1 = add nuw nsw i64 %indvars.iv983.i, 2 ; 2 uses
  %exitcond1162.not.1 = icmp eq i64 %indvars.iv.next984.i.1, %i.jqc
  br i1 %exitcond1162.not.1, label %.lr.ph866.i.preheader, label %.lr.ph860.i, !llvm.loop !297

.lr.ph866.i.preheader:                            ; preds = %.lr.ph860.i.prol.loopexit, %.lr.ph860.i, %middle.block3615
  br i1 %min.iters.check3572, label %.lr.ph866.i.preheader4686, label %vector.memcheck3541

vector.memcheck3541:                              ; preds = %.lr.ph866.i.preheader
  %scevgep3548 = getelementptr i8, ptr %.0751868.i, i64 -16
  %scevgep3549 = getelementptr i8, ptr %scevgep3548, i64 %i.jje
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.lwn = getelementptr inbounds nuw [4 x i8], ptr %i.lvy, i64 %indvars.iv.i.i571
  store float %i.lwm, ptr %i.lwn, align 4, !tbaa !22, !noalias !402
  %i.lwo = fcmp reassoc nsz arcp contract afn ugt double %i.lwd, 3.174600e-02
  br i1 %i.lwo, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.lwp = fmul reassoc nnan nsz arcp contract afn double %i.lwc, f0x3EAE1E3C3C5A5A78
  br label %bb.pq

bb.pp:                                            ; preds = %bb.pn
  %i.lwq = fmul reassoc nnan nsz arcp contract afn double %i.lwc, f0x3EEEA3850F60F739
  %i.lwr = fadd reassoc nnan nsz arcp contract afn double %i.lwq, f0x3FA5C99942418271
  %i.lws = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.lwr)
  %i.lwt = fmul reassoc nnan nsz arcp contract afn double %i.lws, 2.400000e+00
  %i.lwu = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.lwt)
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %bb.po
  %i.lwv = phi reassoc nsz arcp contract afn double [ %i.lwp, %bb.po ], [ %i.lwu, %bb.pp ]
  %i.lww = fptrunc reassoc nsz arcp contract afn double %i.lwv to float
  %i.lwx = getelementptr inbounds nuw [4 x i8], ptr %i.lvx, i64 %indvars.iv.i.i571
  store float %i.lww, ptr %i.lwx, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next.i.i572 = add nuw nsw i64 %indvars.iv.i.i571, 1 ; 2 uses
  %exitcond.not.i.i573 = icmp eq i64 %indvars.iv.next.i.i572, 65536
  br i1 %exitcond.not.i.i573, label %.preheader1020.preheader.i, label %.preheader.i.i570

.preheader1020.preheader.i:                       ; preds = %bb.pq, %bb.pk, %bb.pi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !408
  %i.lwy = tail call ptr @dt_alloc_aligned(i64 noundef 443904) #27, !noalias !402 ; 31 uses
  %i.lwz = ptrtoaddr ptr %i.lwy to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lwy, i64 64) ]
  store ptr %i.lwy, ptr %i.b, align 16, !tbaa !407, !noalias !408
  %i.lxa = getelementptr inbounds nuw i8, ptr %i.lwy, i64 73984 ; 14 uses
  store ptr %i.lxa, ptr %i.apg, align 8, !tbaa !407, !noalias !408
  %i.lxb = getelementptr inbounds nuw i8, ptr %i.lwy, i64 147968 ; 6 uses
  store ptr %i.lxb, ptr %i.aph, align 16, !tbaa !407, !noalias !408
  %i.lxc = getelementptr inbounds nuw i8, ptr %i.lwy, i64 221952 ; 5 uses
  store ptr %i.lxc, ptr %i.api, align 8, !tbaa !407, !noalias !408
  %i.lxd = getelementptr inbounds nuw i8, ptr %i.lwy, i64 295936 ; 5 uses
  store ptr %i.lxd, ptr %i.apj, align 16, !tbaa !407, !noalias !408
  %i.lxe = getelementptr inbounds nuw i8, ptr %i.lwy, i64 369920 ; 10 uses
  store ptr %i.lxe, ptr %i.apk, align 8, !tbaa !407, !noalias !408
  %i.lxf = icmp ult i32 %i.lvt, 2
  %i.lxg = select i1 %i.lxf, i32 %i.lvt, i32 3    ; 2 uses
  %i.lxh = tail call i32 @llvm.usub.sat.i32(i32 %i.lvt, i32 2) ; 2 uses
  %i.lxi = add nsw i32 %i.ayi, -17
  %i.lxj = sdiv i32 %i.lxi, 112                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(443904) %i.lwy, i8 0, i64 443904, i1 false), !noalias !402
  %.not1186.i = icmp eq i32 %i.lxg, 0
  %i.lxk = icmp sgt i32 %i.lxh, 0
  %i.lxl = tail call i32 @llvm.smax.i32(i32 %i.lxj, i32 0)
  %scevgep3983 = getelementptr i8, ptr %i.lwy, i64 295400
  %scevgep4056 = getelementptr i8, ptr %i.lwy, i64 295400
  %i.lxm = add i64 %i.lwz, 372112
  %i.lxn = getelementptr inbounds nuw i8, ptr %i.ays, i64 128
  %i.lxo = getelementptr inbounds nuw i8, ptr %i.ays, i64 256
  %i.lxp = getelementptr inbounds nuw i8, ptr %i.ays, i64 384
  br label %.preheader1020.i

.preheader1020.i:                                 ; preds = %._crit_edge1180.i, %.preheader1020.preheader.i
  %indvars.iv1145 = phi i32 [ %indvars.iv.next1146, %._crit_edge1180.i ], [ 6, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1126 = phi i32 [ %indvars.iv.next1127, %._crit_edge1180.i ], [ 7, %.preheader1020.preheader.i ] ; 3 uses
  %indvars.iv1121 = phi i32 [ %indvars.iv.next1122, %._crit_edge1180.i ], [ 8, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1104 = phi i32 [ %indvars.iv.next1105, %._crit_edge1180.i ], [ 5, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1101 = phi i32 [ %indvars.iv.next1102, %._crit_edge1180.i ], [ 4, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge1180.i ], [ 128, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1304.i = phi i32 [ %indvars.iv.next1305.i, %._crit_edge1180.i ], [ 0, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv.i554 = phi i32 [ %indvars.iv.next.i559, %._crit_edge1180.i ], [ 0, %.preheader1020.preheader.i ] ; 2 uses
  %.08801182.i = phi i32 [ %i.lzz, %._crit_edge1180.i ], [ 0, %.preheader1020.preheader.i ] ; 5 uses
  %smin1150 = call i32 @llvm.smin.i32(i32 %i.ayi, i32 %indvars.iv) ; 5 uses
  %i.lxq = add i32 %smin1150, %indvars.iv1101
  %i.lxr = call i32 @llvm.smax.i32(i32 %i.lxq, i32 5)
  %smax1142 = zext nneg i32 %i.lxr to i64         ; 4 uses
  %i.lxs = add i32 %smin1150, %indvars.iv1126
  %i.lxt = call i32 @llvm.smax.i32(i32 %i.lxs, i32 2)
  %smax1134 = zext nneg i32 %i.lxt to i64         ; 3 uses
  %i.lxu = add i32 %smin1150, %indvars.iv1121
  %i.lxv = call i32 @llvm.smax.i32(i32 %i.lxu, i32 1)
  %smax1123 = zext nneg i32 %i.lxv to i64
  %i.lxw = add i32 %smin1150, %indvars.iv1104
  %i.lxx = call i32 @llvm.umax.i32(i32 %i.lxw, i32 2)
  %umax = zext i32 %i.lxx to i64
  %i.lxy = mul nuw i32 %.08801182.i, 112          ; 4 uses
  %i.lxz = add nuw nsw i32 %i.lxy, 128
  %i.lya = tail call i32 @llvm.smin.i32(i32 %i.lxz, i32 %i.ayi) ; 2 uses
  %i.lyb = sub nsw i32 %i.lya, %i.lxy             ; 6 uses
  %i.lyc = add nsw i32 %i.lyb, 8
  %i.lyd = icmp sgt i32 %i.lyb, 0                 ; 3 uses
  %i.lye = icmp sgt i32 %i.lyb, -4
  %i.lyf = add i32 %i.lxy, -4
  %i.lyg = icmp sgt i32 %i.lyb, -8
  %i.lyh = icmp sgt i32 %i.lyb, -6
  %i.lyi = icmp eq i32 %.08801182.i, 0            ; 2 uses
  %i.lyj = select i1 %i.lyi, i32 6, i32 0         ; 3 uses
  %i.lyk = icmp eq i32 %.08801182.i, %i.lxj       ; 2 uses
  %.neg949.i = select i1 %i.lyk, i32 -6, i32 0    ; 2 uses
  %i.lyl = add nsw i32 %i.lyc, %.neg949.i         ; 2 uses
  %i.lym = icmp slt i32 %i.lyb, -5
  %i.lyn = add nsw i32 %i.lyl, -1
  %i.lyo = icmp slt i32 %i.lyj, %i.lyn
  %i.lyp = add nuw nsw i32 %i.lyj, 2
  %i.lyq = add nsw i32 %i.lyl, -2
  %i.lyr = icmp slt i32 %i.lyp, %i.lyq
  %i.lys = select i1 %i.lyi, i32 4, i32 8         ; 3 uses
  %i.lyt = or disjoint i32 %i.lys, %i.lxy
  %.neg950.i = select i1 %i.lyk, i32 -4, i32 -8
  %i.lyu = add nsw i32 %i.lya, %.neg950.i         ; 2 uses
  %i.lyv = icmp slt i32 %i.lyt, %i.lyu
  %i.lyw = zext nneg i32 %i.lyj to i64            ; 5 uses
  %i.lyx = add nuw nsw i64 %i.lyw, 2              ; 3 uses
  %narrow.i = add nuw nsw i32 %i.lys, 4
  %i.lyy = or disjoint i32 %i.lys, %indvars.iv1304.i
  %i.lyz = zext i32 %i.lyy to i64
  %i.lza = add i32 %.neg949.i, %smin1150          ; 2 uses
  %i.lzb = add i32 %i.lza, %indvars.iv1126
  %i.lzc = sext i32 %i.lzb to i64                 ; 2 uses
  %i.lzd = add i32 %i.lza, %indvars.iv1145
  %i.lze = sext i32 %i.lzd to i64                 ; 3 uses
  %i.lzf = mul nuw nsw i64 %i.lyw, 544            ; 6 uses
  %i.lzg = mul nuw nsw i64 %i.lyw, 544            ; 8 uses
  %i.lzh = add nuw nsw i64 %i.lzg, 552
  %i.lzi = add nuw nsw i64 %i.lzg, 1644
  %i.lzj = mul nuw nsw i64 %i.lyw, 544            ; 5 uses
  %scevgep3981 = getelementptr i8, ptr %i.lwy, i64 %i.lzj
  %i.lzk = mul nsw i64 %i.lzc, 544                ; 2 uses
  %scevgep3984 = getelementptr i8, ptr %scevgep3983, i64 %i.lzk
  %i.lzl = or disjoint i64 %i.lzj, 8
  %i.lzm = or disjoint i64 %i.lzj, 4
  %scevgep4054 = getelementptr i8, ptr %i.lwy, i64 %i.lzj
  %scevgep4057 = getelementptr i8, ptr %scevgep4056, i64 %i.lzk
  %invariant.op = or disjoint i64 %i.lzj, 4
  %i.lzn = getelementptr i8, ptr %i.lwy, i64 %i.lzg
  %i.lzo = getelementptr i8, ptr %i.lzn, i64 74536
  %i.lzp = getelementptr i8, ptr %i.lwy, i64 %i.lzg
  %i.lzq = getelementptr i8, ptr %i.lzp, i64 75628
  %i.lzr = getelementptr i8, ptr %i.lwy, i64 %i.lzg
  %i.lzs = getelementptr i8, ptr %i.lzr, i64 73992
  %i.lzt = getelementptr i8, ptr %i.lwy, i64 %i.lzg
  %i.lzu = getelementptr i8, ptr %i.lzt, i64 76172
  %i.lzv = getelementptr i8, ptr %i.lwy, i64 %i.lzf
  %i.lzw = getelementptr i8, ptr %i.lzv, i64 74536
  %i.lzx = getelementptr i8, ptr %i.lwy, i64 %i.lzf
  %i.lzy = getelementptr i8, ptr %i.lzx, i64 75628
  br label %bb.pr

._crit_edge1183.split.i:                          ; preds = %._crit_edge1180.i
  tail call void @free(ptr noundef %i.lwy) #27, !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !408
  br label %demosaic_box3.exit

._crit_edge1180.i:                                ; preds = %._crit_edge1176.split.i
  %i.lzz = add nuw nsw i32 %.08801182.i, 1
  %indvars.iv.next.i559 = add i32 %indvars.iv.i554, %i.apn
  %indvars.iv.next1305.i = add nuw i32 %indvars.iv1304.i, 112
  %exitcond1313.i = icmp eq i32 %.08801182.i, %i.lxl
  %indvars.iv.next = add nuw i32 %indvars.iv, 112
  %indvars.iv.next1102 = add i32 %indvars.iv1101, -112
  %indvars.iv.next1105 = add i32 %indvars.iv1104, -112
  %indvars.iv.next1122 = add i32 %indvars.iv1121, -112
  %indvars.iv.next1127 = add i32 %indvars.iv1126, -112
  %indvars.iv.next1146 = add i32 %indvars.iv1145, -112
  br i1 %exitcond1313.i, label %._crit_edge1183.split.i, label %.preheader1020.i

bb.pr:                                            ; preds = %._crit_edge1176.split.i, %.preheader1020.i
  %indvars.iv1110 = phi i32 [ %indvars.iv.next1111, %._crit_edge1176.split.i ], [ 0, %.preheader1020.i ] ; 15 uses
  %indvars.iv1107 = phi i32 [ %indvars.iv.next1108, %._crit_edge1176.split.i ], [ 128, %.preheader1020.i ] ; 15 uses
  %indvars.iv1207.i = phi i32 [ %indvars.iv.next1208.i, %._crit_edge1176.split.i ], [ %indvars.iv.i554, %.preheader1020.i ] ; 2 uses
  %.08811178.i = phi i32 [ %i.psv, %._crit_edge1176.split.i ], [ 0, %.preheader1020.i ] ; 7 uses
  %smin4797 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.maa = add i32 %smin4797, %indvars.iv1110
  %smin4798 = call i32 @llvm.smin.i32(i32 %i.maa, i32 128) ; 2 uses
  %i.mab = add nsw i32 %smin4798, 3
  %i.mac = zext i32 %i.mab to i64
  %i.mad = add nsw i64 %i.mac, -3                 ; 2 uses
  %smin4788 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.mae = add i32 %smin4788, %indvars.iv1110     ; 2 uses
  %i.maf = call i32 @llvm.smin.i32(i32 %i.mae, i32 128) ; 3 uses
  %smin4780 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.mag = add i32 %smin4780, %indvars.iv1110     ; 2 uses
  %i.mah = call i32 @llvm.smin.i32(i32 %i.mag, i32 128) ; 3 uses
  %i.mai = mul nuw i32 %.08811178.i, 112
  %i.maj = add i32 %i.mai, 128
  %smin4772 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.maj)
  %i.mak = mul i32 %.08811178.i, -112
  %i.mal = add i32 %smin4772, %i.mak              ; 2 uses
  %smin4773 = call i32 @llvm.smin.i32(i32 %i.mal, i32 128) ; 3 uses
  %smin4472 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.mam = add i32 %smin4472, %indvars.iv1110
  %smin4473 = call i32 @llvm.smin.i32(i32 %i.mam, i32 128)
  %i.man = add i32 %smin4473, -1                  ; 3 uses
  %i.mao = zext i32 %i.man to i64
  %i.map = add nuw nsw i64 %i.mao, 1              ; 5 uses
  %smin4226 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.maq = add i32 %smin4226, %indvars.iv1110
  %i.mar = call i32 @llvm.smin.i32(i32 %i.maq, i32 128)
  %narrow = add nsw i32 %i.mar, 7
  %i.mas = sext i32 %narrow to i64
  %smin4180 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.mat = add i32 %smin4180, %indvars.iv1110
  %i.mau = call i32 @llvm.smin.i32(i32 %i.mat, i32 128)
  %smin4051 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.mav = add i32 %smin4051, %indvars.iv1110
  %smin4052 = call i32 @llvm.smin.i32(i32 %i.mav, i32 128)
  %smin3985 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.maw = add i32 %smin3985, %indvars.iv1110
  %smin3986 = call i32 @llvm.smin.i32(i32 %i.maw, i32 128)
  %smin3932 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.max = add i32 %smin3932, %indvars.iv1110
  %smin3933 = call i32 @llvm.smin.i32(i32 %i.max, i32 128)
  %smin3841 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.may = add i32 %smin3841, %indvars.iv1110
  %smin3842 = call i32 @llvm.smin.i32(i32 %i.may, i32 128)
  %smin3778 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.maz = add i32 %smin3778, %indvars.iv1110
  %smin3779 = call i32 @llvm.smin.i32(i32 %i.maz, i32 128)
  %smin3731 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.mba = add i32 %indvars.iv1110, -1
  %smin3707 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.mbb = add i32 %indvars.iv1110, -1
  %smin1138 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1107)
  %i.mbc = add i32 %smin1138, %indvars.iv1110
  %smin1139 = call i32 @llvm.smin.i32(i32 %i.mbc, i32 128)
  %i.mbd = add nsw i32 %smin1139, 3
  %i.mbe = zext i32 %i.mbd to i64                 ; 2 uses
  %i.mbf = mul nuw i32 %.08811178.i, 112          ; 5 uses
  %i.mbg = add nuw i32 %i.mbf, 128
  %i.mbh = tail call i32 @llvm.smin.i32(i32 %i.mbg, i32 %i.bo) ; 2 uses
  %i.mbi = sub i32 %i.mbh, %i.mbf                 ; 8 uses
  %i.mbj = tail call i32 @llvm.smin.i32(i32 %i.mbi, i32 128) ; 13 uses
  %i.mbk = add nsw i32 %i.mbj, 8                  ; 2 uses
  br i1 %i.lyd, label %.lr.ph1031.i, label %.preheader1019.i

.lr.ph1031.i:                                     ; preds = %bb.pr
  %i.mbl = add nsw i32 %i.mbj, 4                  ; 2 uses
  %i.mbm = icmp sgt i32 %i.mbi, 0
  %i.mbn = load ptr, ptr @lmmse_gamma_in, align 8, !noalias !408 ; 4 uses
  %i.mbo = icmp eq ptr %i.mbn, null
  br i1 %i.mbm, label %.lr.ph.i564.preheader, label %.lr.ph1042.i

.lr.ph.i564.preheader:                            ; preds = %.lr.ph1031.i
  %xtraiter4774 = and i32 %smin4773, 1
  %i.mbp = icmp eq i32 %i.mal, 1
  %unroll_iter4778 = and i32 %smin4773, -2
  %lcmp.mod4776.not = icmp eq i32 %xtraiter4774, 0
  %lcmp.mod4777 = trunc i32 %smin4773 to i1
  %min.iters.check4475 = icmp ult i32 %i.man, 7
  %min.iters.check4477 = icmp ult i32 %i.man, 31
  %i.mbq = and i64 %i.map, 24
  %n.vec4479 = and i64 %i.map, 8589934560         ; 8 uses
  %i.mbr = shl nuw nsw i64 %n.vec4479, 2
  %i.mbs = trunc i64 %n.vec4479 to i32
  %i.mbt = or disjoint i32 %i.mbs, 4
  %i.mbu = icmp eq i64 %n.vec4479, 32
  %i.mbv = icmp eq i64 %n.vec4479, 64
  %i.mbw = icmp eq i64 %n.vec4479, 96
  %cmp.n4491 = icmp eq i64 %i.map, %n.vec4479
  %min.epilog.iters.check4499 = icmp eq i64 %i.mbq, 0
  %n.vec4501 = and i64 %i.map, 8589934584         ; 5 uses
  %i.mbx = shl nuw nsw i64 %n.vec4501, 2
  %i.mby = trunc i64 %n.vec4501 to i32
  %i.mbz = or disjoint i32 %i.mby, 4
  %cmp.n4510 = icmp eq i64 %i.map, %n.vec4501
  br label %.lr.ph.i564

.preheader1019.i:                                 ; preds = %._crit_edge.i568, %bb.pr
  br i1 %i.lye, label %.preheader1019.i..lr.ph1042.i_crit_edge, label %._crit_edge1053.i

.preheader1019.i..lr.ph1042.i_crit_edge:          ; preds = %.preheader1019.i
  %.pre1256 = add nsw i32 %i.mbj, 4
  br label %.lr.ph1042.i

.lr.ph1042.i:                                     ; preds = %.preheader1019.i..lr.ph1042.i_crit_edge, %.lr.ph1031.i
  %.pre-phi1257 = phi i32 [ %.pre1256, %.preheader1019.i..lr.ph1042.i_crit_edge ], [ %i.mbl, %.lr.ph1031.i ] ; 2 uses
  %i.mca = add nsw i32 %i.mbj, 6
  %i.mcb = sext i32 %i.mca to i64                 ; 4 uses
  br label %bb.py

.lr.ph.i564:                                      ; preds = %.lr.ph.i564.preheader, %._crit_edge.i568
  %indvar4469 = phi i64 [ %indvar.next4470, %._crit_edge.i568 ], [ 0, %.lr.ph.i564.preheader ] ; 2 uses
  %indvars.iv1217.i = phi i64 [ %indvars.iv.next1218.i, %._crit_edge.i568 ], [ 4, %.lr.ph.i564.preheader ] ; 2 uses
  %indvars.iv1209.i = phi i32 [ %indvars.iv.next1210.i, %._crit_edge.i568 ], [ %indvars.iv1207.i, %.lr.ph.i564.preheader ] ; 3 uses
  %i.mcc = zext i32 %indvars.iv1209.i to i64      ; 10 uses
  %.idx.i565 = mul nuw nsw i64 %indvars.iv1217.i, 544
  %i.mcd = getelementptr inbounds nuw i8, ptr %i.lxe, i64 %.idx.i565 ; 16 uses
  %i.mce = getelementptr inbounds nuw i8, ptr %i.mcd, i64 16 ; 7 uses
  br i1 %i.mbo, label %iter.check4496, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i564
  br i1 %i.mbp, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i

iter.check4496:                                   ; preds = %.lr.ph.i564
  %i.mcf = zext i32 %indvars.iv1209.i to i64
  %i.mcg = add nsw i64 %i.ayr, %i.mcf
  %i.mch = shl nsw i64 %i.mcg, 2
  %i.mci = add i64 %i.mch, %.13923658
  %i.mcj = mul nuw nsw i64 %indvar4469, 544
  %i.mck = add i64 %i.lxm, %i.mcj
  %i.mcl = sub i64 %i.mci, %i.mck
  %diff.check4471 = icmp ugt i64 %i.mcl, -128
  %or.cond4635 = select i1 %min.iters.check4475, i1 true, i1 %diff.check4471
  br i1 %or.cond4635, label %_calc_gamma.exit.us.i.preheader, label %vector.main.loop.iter.check4476

vector.main.loop.iter.check4476:                  ; preds = %iter.check4496
  br i1 %min.iters.check4477, label %vec.epilog.ph4500, label %vector.ph4478

vector.ph4478:                                    ; preds = %vector.main.loop.iter.check4476
  %i.mcm = add nuw nsw i64 %n.vec4479, %i.mcc
  %i.mcn = getelementptr i8, ptr %i.mce, i64 %i.mbr
  %i.mco = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.mcc ; 4 uses
  %i.mcp = getelementptr inbounds nuw i8, ptr %i.mco, i64 32
  %i.mcq = getelementptr inbounds nuw i8, ptr %i.mco, i64 64
  %i.mcr = getelementptr inbounds nuw i8, ptr %i.mco, i64 96
  %wide.load4485 = load <8 x float>, ptr %i.mco, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4486 = load <8 x float>, ptr %i.mcp, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4487 = load <8 x float>, ptr %i.mcq, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4488 = load <8 x float>, ptr %i.mcr, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mcs = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4485, %broadcast.splat4481
  %i.mct = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4486, %broadcast.splat4481
  %i.mcu = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4487, %broadcast.splat4481
  %i.mcv = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4488, %broadcast.splat4481
  %i.mcw = getelementptr i8, ptr %i.mcd, i64 48
  %i.mcx = getelementptr i8, ptr %i.mcd, i64 80
  %i.mcy = getelementptr i8, ptr %i.mcd, i64 112
  store <8 x float> %i.mcs, ptr %i.mce, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mct, ptr %i.mcw, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcu, ptr %i.mcx, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcv, ptr %i.mcy, align 16, !tbaa !22, !noalias !402
  br i1 %i.mbu, label %middle.block4490, label %vector.body4482.1

vector.body4482.1:                                ; preds = %vector.ph4478
  %next.gep4484.1 = getelementptr i8, ptr %i.mcd, i64 144
  %i.mcz = getelementptr inbounds nuw [4 x i8], ptr %i.lxn, i64 %i.mcc ; 4 uses
  %i.mda = getelementptr inbounds nuw i8, ptr %i.mcz, i64 32
  %i.mdb = getelementptr inbounds nuw i8, ptr %i.mcz, i64 64
  %i.mdc = getelementptr inbounds nuw i8, ptr %i.mcz, i64 96
  %wide.load4485.1 = load <8 x float>, ptr %i.mcz, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4486.1 = load <8 x float>, ptr %i.mda, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4487.1 = load <8 x float>, ptr %i.mdb, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4488.1 = load <8 x float>, ptr %i.mdc, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mdd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4485.1, %broadcast.splat4481
  %i.mde = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4486.1, %broadcast.splat4481
  %i.mdf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4487.1, %broadcast.splat4481
  %i.mdg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4488.1, %broadcast.splat4481
  %i.mdh = getelementptr i8, ptr %i.mcd, i64 176
  %i.mdi = getelementptr i8, ptr %i.mcd, i64 208
  %i.mdj = getelementptr i8, ptr %i.mcd, i64 240
  store <8 x float> %i.mdd, ptr %next.gep4484.1, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mde, ptr %i.mdh, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdf, ptr %i.mdi, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdg, ptr %i.mdj, align 16, !tbaa !22, !noalias !402
  br i1 %i.mbv, label %middle.block4490, label %vector.body4482.2

vector.body4482.2:                                ; preds = %vector.body4482.1
  %next.gep4484.2 = getelementptr i8, ptr %i.mcd, i64 272
  %i.mdk = getelementptr inbounds nuw [4 x i8], ptr %i.lxo, i64 %i.mcc ; 4 uses
  %i.mdl = getelementptr inbounds nuw i8, ptr %i.mdk, i64 32
  %i.mdm = getelementptr inbounds nuw i8, ptr %i.mdk, i64 64
  %i.mdn = getelementptr inbounds nuw i8, ptr %i.mdk, i64 96
  %wide.load4485.2 = load <8 x float>, ptr %i.mdk, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4486.2 = load <8 x float>, ptr %i.mdl, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4487.2 = load <8 x float>, ptr %i.mdm, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4488.2 = load <8 x float>, ptr %i.mdn, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mdo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4485.2, %broadcast.splat4481
  %i.mdp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4486.2, %broadcast.splat4481
  %i.mdq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4487.2, %broadcast.splat4481
  %i.mdr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4488.2, %broadcast.splat4481
  %i.mds = getelementptr i8, ptr %i.mcd, i64 304
  %i.mdt = getelementptr i8, ptr %i.mcd, i64 336
  %i.mdu = getelementptr i8, ptr %i.mcd, i64 368
  store <8 x float> %i.mdo, ptr %next.gep4484.2, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdp, ptr %i.mds, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdq, ptr %i.mdt, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdr, ptr %i.mdu, align 16, !tbaa !22, !noalias !402
  br i1 %i.mbw, label %middle.block4490, label %vector.body4482.3

vector.body4482.3:                                ; preds = %vector.body4482.2
  %next.gep4484.3 = getelementptr i8, ptr %i.mcd, i64 400
  %i.mdv = getelementptr inbounds nuw [4 x i8], ptr %i.lxp, i64 %i.mcc ; 4 uses
  %i.mdw = getelementptr inbounds nuw i8, ptr %i.mdv, i64 32
  %i.mdx = getelementptr inbounds nuw i8, ptr %i.mdv, i64 64
  %i.mdy = getelementptr inbounds nuw i8, ptr %i.mdv, i64 96
  %wide.load4485.3 = load <8 x float>, ptr %i.mdv, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4486.3 = load <8 x float>, ptr %i.mdw, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4487.3 = load <8 x float>, ptr %i.mdx, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4488.3 = load <8 x float>, ptr %i.mdy, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mdz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4485.3, %broadcast.splat4481
  %i.mea = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4486.3, %broadcast.splat4481
  %i.meb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4487.3, %broadcast.splat4481
  %i.mec = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4488.3, %broadcast.splat4481
  %i.med = getelementptr i8, ptr %i.mcd, i64 432
  %i.mee = getelementptr i8, ptr %i.mcd, i64 464
  %i.mef = getelementptr i8, ptr %i.mcd, i64 496
  store <8 x float> %i.mdz, ptr %next.gep4484.3, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mea, ptr %i.med, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.meb, ptr %i.mee, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mec, ptr %i.mef, align 16, !tbaa !22, !noalias !402
  br label %middle.block4490

middle.block4490:                                 ; preds = %vector.body4482.3, %vector.body4482.2, %vector.body4482.1, %vector.ph4478
  br i1 %cmp.n4491, label %._crit_edge.i568, label %vec.epilog.iter.check4498

vec.epilog.iter.check4498:                        ; preds = %middle.block4490
  br i1 %min.epilog.iters.check4499, label %_calc_gamma.exit.us.i.preheader, label %vec.epilog.ph4500, !prof !409

vec.epilog.ph4500:                                ; preds = %vector.main.loop.iter.check4476, %vec.epilog.iter.check4498
  %vec.epilog.resume.val4492 = phi i64 [ %n.vec4479, %vec.epilog.iter.check4498 ], [ 0, %vector.main.loop.iter.check4476 ]
  %i.meg = add nuw nsw i64 %n.vec4501, %i.mcc
  %i.meh = getelementptr i8, ptr %i.mce, i64 %i.mbx
  %invariant.gep4918 = getelementptr [4 x i8], ptr %i.ays, i64 %i.mcc
  br label %vec.epilog.vector.body4504

vec.epilog.vector.body4504:                       ; preds = %vec.epilog.vector.body4504, %vec.epilog.ph4500
  %index4505 = phi i64 [ %vec.epilog.resume.val4492, %vec.epilog.ph4500 ], [ %index.next4508, %vec.epilog.vector.body4504 ] ; 3 uses
  %i.mei = shl i64 %index4505, 2
  %next.gep4506 = getelementptr i8, ptr %i.mce, i64 %i.mei
  %gep4919 = getelementptr [4 x i8], ptr %invariant.gep4918, i64 %index4505
  %wide.load4507 = load <8 x float>, ptr %gep4919, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mej = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4507, %broadcast.splat4503
  store <8 x float> %i.mej, ptr %next.gep4506, align 16, !tbaa !22, !noalias !402
  %index.next4508 = add nuw i64 %index4505, 8     ; 2 uses
  %i.mek = icmp eq i64 %index.next4508, %n.vec4501
  br i1 %i.mek, label %vec.epilog.middle.block4509, label %vec.epilog.vector.body4504, !llvm.loop !410

vec.epilog.middle.block4509:                      ; preds = %vec.epilog.vector.body4504
  br i1 %cmp.n4510, label %._crit_edge.i568, label %_calc_gamma.exit.us.i.preheader

_calc_gamma.exit.us.i.preheader:                  ; preds = %iter.check4496, %vec.epilog.iter.check4498, %vec.epilog.middle.block4509
  %indvars.iv1214.i.ph = phi i64 [ %i.mcc, %iter.check4496 ], [ %i.mcm, %vec.epilog.iter.check4498 ], [ %i.meg, %vec.epilog.middle.block4509 ]
end_hunk_2
begin_hunk_3_@process:bb.a
  %i.nby = fmul reassoc nsz arcp contract afn <8 x float> %i.nbi, %i.nbi
  %i.nbz = fadd reassoc nsz arcp contract afn <8 x float> %i.nbx, %i.nby
  %i.nca = fmul reassoc nsz arcp contract afn <8 x float> %i.nbj, %i.nbj
  %i.ncb = fadd reassoc nsz arcp contract afn <8 x float> %i.nbz, %i.nca
  %i.ncc = fmul reassoc nsz arcp contract afn <8 x float> %i.nbl, %i.nbl
  %i.ncd = fadd reassoc nsz arcp contract afn <8 x float> %i.ncb, %i.ncc
  %i.nce = fmul reassoc nsz arcp contract afn <8 x float> %i.nbn, %i.nbn
  %i.ncf = fadd reassoc nsz arcp contract afn <8 x float> %i.ncd, %i.nce
  %i.ncg = fmul reassoc nsz arcp contract afn <8 x float> %i.nbp, %i.nbp
  %i.nch = fadd reassoc nsz arcp contract afn <8 x float> %i.ncf, %i.ncg
  %i.nci = fmul reassoc nsz arcp contract afn <8 x float> %i.nbr, %i.nbr
  %i.ncj = fadd reassoc nsz arcp contract afn <8 x float> %i.nch, %i.nci ; 3 uses
  %i.nck = fmul reassoc nsz arcp contract afn <8 x float> %i.nba, %strided.vec4347
  %i.ncl = fmul reassoc nsz arcp contract afn <8 x float> %i.ncj, %strided.vec4329
  %i.ncm = fadd reassoc nsz arcp contract afn <8 x float> %i.nck, %i.ncl
  %i.ncn = fadd reassoc nsz arcp contract afn <8 x float> %i.nba, %i.ncj ; 2 uses
  %i.nco = fmul reassoc nsz arcp contract afn <8 x float> %i.nba, %i.ncj
  %i.ncp = fdiv reassoc nsz arcp contract afn <8 x float> %i.nco, %i.ncn ; 2 uses
  %i.ncq = fmul reassoc nsz arcp contract afn <8 x float> %i.ncp, %i.mzf
  %i.ncr = fdiv reassoc nsz arcp contract afn <8 x float> %i.ncq, %i.mzg
  %i.ncs = fmul reassoc nsz arcp contract afn <8 x float> %i.ncm, %i.mzi
  %i.nct = fdiv reassoc nsz arcp contract afn <8 x float> %i.ncs, %i.ncn
  %i.ncu = fadd reassoc nsz arcp contract afn <8 x float> %i.ncr, %i.nct
  %i.ncv = fadd reassoc nsz arcp contract afn <8 x float> %i.ncp, %i.mzi
  %i.ncw = fdiv reassoc nsz arcp contract afn <8 x float> %i.ncu, %i.ncv
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ncw, <8 x ptr> align 4 %wide.gep4291, <8 x i1> splat (i1 true)), !tbaa !22, !noalias !402
  %index.next4356 = add nuw i64 %index4289, 8     ; 2 uses
  %vec.ind.next4357 = add nuw nsw <8 x i64> %vec.ind4290, splat (i64 16)
  %i.ncx = icmp eq i64 %index.next4356, %n.vec4284
  br i1 %i.ncx, label %scalar.ph4281.preheader, label %vector.body4288, !llvm.loop !418

._crit_edge1050.i:                                ; preds = %scalar.ph4281, %bb.qp
  %indvars.iv.next1239.i = add nuw nsw i64 %indvars.iv1238.i, 1 ; 2 uses
  %exitcond1119.not = icmp eq i64 %indvars.iv.next1239.i, %smax1142
  br i1 %exitcond1119.not, label %._crit_edge1053.i, label %bb.qp

scalar.ph4281:                                    ; preds = %scalar.ph4281.preheader, %scalar.ph4281
  %indvars.iv1235.i = phi i64 [ %indvars.iv.next1236.i, %scalar.ph4281 ], [ %indvars.iv1235.i.ph, %scalar.ph4281.preheader ] ; 7 uses
  %i.ncy = getelementptr inbounds nuw [4 x i8], ptr %i.mvi, i64 %indvars.iv1235.i ; 3 uses
  %i.ncz = getelementptr inbounds nuw [4 x i8], ptr %i.mvj, i64 %indvars.iv1235.i ; 9 uses
  %i.nda = getelementptr inbounds nuw [4 x i8], ptr %i.mvk, i64 %indvars.iv1235.i ; 2 uses
  %i.ndb = getelementptr inbounds nuw [4 x i8], ptr %i.mvl, i64 %indvars.iv1235.i ; 9 uses
  %i.ndc = getelementptr inbounds nuw [4 x i8], ptr %i.mvm, i64 %indvars.iv1235.i
  %i.ndd = getelementptr inbounds i8, ptr %i.nda, i64 -16
  %i.nde = getelementptr inbounds nuw i8, ptr %i.nda, i64 16
  %i.ndf = load float, ptr %i.nde, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ndg = load <8 x float>, ptr %i.ndd, align 4, !tbaa !22, !noalias !402 ; 4 uses
  %i.ndh = getelementptr inbounds i8, ptr %i.ncy, i64 -16
  %i.ndi = getelementptr inbounds nuw i8, ptr %i.ncy, i64 16
  %i.ndj = load <8 x float>, ptr %i.ndh, align 4, !tbaa !22, !noalias !402
  %i.ndk = fsub reassoc nsz arcp contract afn <8 x float> %i.ndg, %i.ndj ; 2 uses
  %i.ndl = fmul reassoc nsz arcp contract afn <8 x float> %i.ndk, %i.ndk
  %i.ndm = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ndl)
  %i.ndn = getelementptr inbounds i8, ptr %i.ndb, i64 -2176
  %i.ndo = load float, ptr %i.ndn, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ndp = getelementptr inbounds i8, ptr %i.ndb, i64 -1632
  %i.ndq = load float, ptr %i.ndp, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ndr = getelementptr inbounds i8, ptr %i.ndb, i64 -1088
  %i.nds = load float, ptr %i.ndr, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ndt = getelementptr inbounds i8, ptr %i.ndb, i64 -544
  %i.ndu = load float, ptr %i.ndt, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ndv = load float, ptr %i.ndb, align 4, !tbaa !22, !noalias !402 ; 4 uses
  %i.ndw = getelementptr inbounds nuw i8, ptr %i.ndb, i64 544
  %i.ndx = load float, ptr %i.ndw, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ndy = getelementptr inbounds nuw i8, ptr %i.ndb, i64 1088
  %i.ndz = load float, ptr %i.ndy, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.nea = getelementptr inbounds nuw i8, ptr %i.ndb, i64 1632
  %i.neb = load float, ptr %i.nea, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.nec = getelementptr inbounds nuw i8, ptr %i.ndb, i64 2176
  %i.ned = load float, ptr %i.nec, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.nee = fadd reassoc nsz arcp contract afn float %i.ndq, %i.ndo
  %i.nef = fadd reassoc nsz arcp contract afn float %i.nee, %i.nds
  %i.neg = fadd reassoc nsz arcp contract afn float %i.nef, %i.ndu
  %i.neh = fadd reassoc nsz arcp contract afn float %i.neg, %i.ndv
  %i.nei = fadd reassoc nsz arcp contract afn float %i.neh, %i.ndx
  %i.nej = fadd reassoc nsz arcp contract afn float %i.nei, %i.ndz
  %i.nek = fadd reassoc nsz arcp contract afn float %i.nej, %i.neb
  %i.nel = getelementptr inbounds i8, ptr %i.ncz, i64 -2176
  %i.nem = load float, ptr %i.nel, align 4, !tbaa !22, !noalias !402
  %i.nen = fsub reassoc nsz arcp contract afn float %i.ndo, %i.nem ; 2 uses
  %i.neo = getelementptr inbounds i8, ptr %i.ncz, i64 -1632
  %i.nep = load float, ptr %i.neo, align 4, !tbaa !22, !noalias !402
  %i.neq = fsub reassoc nsz arcp contract afn float %i.ndq, %i.nep ; 2 uses
  %i.ner = getelementptr inbounds i8, ptr %i.ncz, i64 -1088
  %i.nes = load float, ptr %i.ner, align 4, !tbaa !22, !noalias !402
  %i.net = fsub reassoc nsz arcp contract afn float %i.nds, %i.nes ; 2 uses
  %i.neu = getelementptr inbounds i8, ptr %i.ncz, i64 -544
  %i.nev = load float, ptr %i.neu, align 4, !tbaa !22, !noalias !402
  %i.new = fsub reassoc nsz arcp contract afn float %i.ndu, %i.nev ; 2 uses
  %i.nex = getelementptr inbounds nuw i8, ptr %i.ncz, i64 544
  %i.ney = load float, ptr %i.nex, align 4, !tbaa !22, !noalias !402
  %i.nez = fsub reassoc nsz arcp contract afn float %i.ndx, %i.ney ; 2 uses
  %i.nfa = getelementptr inbounds nuw i8, ptr %i.ncz, i64 1088
  %i.nfb = load float, ptr %i.nfa, align 4, !tbaa !22, !noalias !402
  %i.nfc = fsub reassoc nsz arcp contract afn float %i.ndz, %i.nfb ; 2 uses
  %i.nfd = getelementptr inbounds nuw i8, ptr %i.ncz, i64 1632
  %i.nfe = getelementptr inbounds nuw i8, ptr %i.ncz, i64 2176
  %i.nff = load float, ptr %i.nfe, align 4, !tbaa !22, !noalias !402
  %i.nfg = fsub reassoc nsz arcp contract afn float %i.ned, %i.nff ; 2 uses
  %i.nfh = fmul reassoc nsz arcp contract afn float %i.nen, %i.nen
  %i.nfi = fadd reassoc nsz arcp contract afn float %i.nfh, 1.000000e-07
  %i.nfj = fmul reassoc nsz arcp contract afn float %i.neq, %i.neq
  %i.nfk = fadd reassoc nsz arcp contract afn float %i.nfi, %i.nfj
  %i.nfl = fmul reassoc nsz arcp contract afn float %i.net, %i.net
  %i.nfm = fadd reassoc nsz arcp contract afn float %i.nfk, %i.nfl
  %i.nfn = fmul reassoc nsz arcp contract afn float %i.new, %i.new
  %i.nfo = fadd reassoc nsz arcp contract afn float %i.nfm, %i.nfn
  %i.nfp = fmul reassoc nsz arcp contract afn float %i.nez, %i.nez
  %i.nfq = fmul reassoc nsz arcp contract afn float %i.nfc, %i.nfc
  %i.nfr = fmul reassoc nsz arcp contract afn float %i.nfg, %i.nfg
  %op.rdx4668 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float %i.ndf, <8 x float> %i.ndg)
  %i.nfs = fadd reassoc nsz arcp contract afn float %i.nek, %i.ned
  %i.nft = insertelement <2 x float> poison, float %op.rdx4668, i64 0
  %i.nfu = insertelement <2 x float> %i.nft, float %i.nfs, i64 1
  %i.nfv = fmul reassoc nsz arcp contract afn <2 x float> %i.nfu, splat (float f0x3DE38E39) ; 3 uses
  %i.nfw = shufflevector <2 x float> %i.nfv, <2 x float> poison, <8 x i32> zeroinitializer
  %i.nfx = fsub reassoc nsz arcp contract afn <8 x float> %i.ndg, %i.nfw ; 2 uses
  %i.nfy = fmul reassoc nsz arcp contract afn <8 x float> %i.nfx, %i.nfx
  %i.nfz = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.nfy)
  %i.nga = extractelement <2 x float> %i.nfv, i64 1 ; 8 uses
  %i.ngb = fsub reassoc nsz arcp contract afn float %i.ndo, %i.nga ; 2 uses
  %i.ngc = fmul reassoc nsz arcp contract afn float %i.ngb, %i.ngb
  %i.ngd = fadd reassoc nsz arcp contract afn float %i.ngc, 1.000000e-07
  %i.nge = fsub reassoc nsz arcp contract afn float %i.ndq, %i.nga ; 2 uses
  %i.ngf = fmul reassoc nsz arcp contract afn float %i.nge, %i.nge
  %i.ngg = fadd reassoc nsz arcp contract afn float %i.ngd, %i.ngf
  %i.ngh = fsub reassoc nsz arcp contract afn float %i.nds, %i.nga ; 2 uses
  %i.ngi = fmul reassoc nsz arcp contract afn float %i.ngh, %i.ngh
  %i.ngj = fadd reassoc nsz arcp contract afn float %i.ngg, %i.ngi
  %i.ngk = fsub reassoc nsz arcp contract afn float %i.ndu, %i.nga ; 2 uses
  %i.ngl = fmul reassoc nsz arcp contract afn float %i.ngk, %i.ngk
  %i.ngm = fadd reassoc nsz arcp contract afn float %i.ngj, %i.ngl
  %i.ngn = fsub reassoc nsz arcp contract afn float %i.ndv, %i.nga ; 2 uses
  %i.ngo = fmul reassoc nsz arcp contract afn float %i.ngn, %i.ngn
  %i.ngp = fadd reassoc nsz arcp contract afn float %i.ngm, %i.ngo
  %i.ngq = fsub reassoc nsz arcp contract afn float %i.ndx, %i.nga ; 2 uses
  %i.ngr = fmul reassoc nsz arcp contract afn float %i.ngq, %i.ngq
  %i.ngs = fadd reassoc nsz arcp contract afn float %i.ngp, %i.ngr
  %i.ngt = fsub reassoc nsz arcp contract afn float %i.ndz, %i.nga ; 2 uses
  %i.ngu = fmul reassoc nsz arcp contract afn float %i.ngt, %i.ngt
  %i.ngv = fadd reassoc nsz arcp contract afn float %i.ngs, %i.ngu
  %i.ngw = insertelement <2 x float> poison, float %i.ndf, i64 0
  %i.ngx = insertelement <2 x float> %i.ngw, float %i.neb, i64 1
  %i.ngy = fsub reassoc nsz arcp contract afn <2 x float> %i.ngx, %i.nfv ; 2 uses
  %i.ngz = fmul reassoc nsz arcp contract afn <2 x float> %i.ngy, %i.ngy
  %i.nha = insertelement <2 x float> poison, float %i.nfz, i64 0
  %i.nhb = insertelement <2 x float> %i.nha, float %i.ngv, i64 1
  %i.nhc = fadd reassoc nsz arcp contract afn <2 x float> %i.nhb, %i.ngz
  %i.nhd = fsub reassoc nsz arcp contract afn float %i.ned, %i.nga ; 2 uses
  %i.nhe = fmul reassoc nsz arcp contract afn float %i.nhd, %i.nhd
  %i.nhf = insertelement <2 x float> <float 1.000000e-07, float poison>, float %i.nhe, i64 1
  %i.nhg = fadd reassoc nsz arcp contract afn <2 x float> %i.nhc, %i.nhf ; 3 uses
  %i.nhh = load float, ptr %i.nfd, align 4, !tbaa !22, !noalias !402
  %i.nhi = load float, ptr %i.ncz, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.nhj = load float, ptr %i.ndi, align 4, !tbaa !22, !noalias !402
  %i.nhk = load float, ptr %i.ncy, align 4, !tbaa !22, !noalias !402
  %i.nhl = fsub reassoc nsz arcp contract afn float %i.ndv, %i.nhi ; 2 uses
  %i.nhm = fsub reassoc nsz arcp contract afn float %i.ndf, %i.nhj
  %i.nhn = fsub reassoc nsz arcp contract afn float %i.neb, %i.nhh
  %i.nho = fmul reassoc nsz arcp contract afn float %i.nhl, %i.nhl
  %i.nhp = fadd reassoc nsz arcp contract afn float %i.nfo, %i.nho
  %i.nhq = fadd reassoc nsz arcp contract afn float %i.nhp, %i.nfp
  %i.nhr = fadd reassoc nsz arcp contract afn float %i.nhq, %i.nfq
  %i.nhs = insertelement <2 x float> poison, float %i.nhm, i64 0
  %i.nht = insertelement <2 x float> %i.nhs, float %i.nhn, i64 1 ; 2 uses
  %i.nhu = fmul reassoc nsz arcp contract afn <2 x float> %i.nht, %i.nht
  %i.nhv = insertelement <2 x float> poison, float %i.ndm, i64 0
  %i.nhw = insertelement <2 x float> %i.nhv, float %i.nhr, i64 1
  %i.nhx = fadd reassoc nsz arcp contract afn <2 x float> %i.nhw, %i.nhu
  %i.nhy = insertelement <2 x float> <float 1.000000e-07, float poison>, float %i.nfr, i64 1
  %i.nhz = fadd reassoc nsz arcp contract afn <2 x float> %i.nhx, %i.nhy ; 3 uses
  %i.nia = insertelement <2 x float> poison, float %i.nhk, i64 0
  %i.nib = insertelement <2 x float> %i.nia, float %i.nhi, i64 1
  %i.nic = fmul reassoc nsz arcp contract afn <2 x float> %i.nhg, %i.nib
  %i.nid = shufflevector <8 x float> %i.ndg, <8 x float> poison, <2 x i32> <i32 4, i32 poison>
  %i.nie = insertelement <2 x float> %i.nid, float %i.ndv, i64 1
  %i.nif = fmul reassoc nsz arcp contract afn <2 x float> %i.nhz, %i.nie
  %i.nig = fadd reassoc nsz arcp contract afn <2 x float> %i.nic, %i.nif
  %i.nih = shufflevector <2 x float> %i.nig, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nii = fadd reassoc nsz arcp contract afn <2 x float> %i.nhg, %i.nhz ; 2 uses
  %i.nij = fmul reassoc nsz arcp contract afn <2 x float> %i.nhg, %i.nhz
  %i.nik = fdiv reassoc nsz arcp contract afn <2 x float> %i.nij, %i.nii ; 3 uses
  %i.nil = fmul reassoc nsz arcp contract afn <2 x float> %i.nik, %i.nih
  %i.nim = shufflevector <2 x float> %i.nii, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nin = fdiv reassoc nsz arcp contract afn <2 x float> %i.nil, %i.nim ; 2 uses
  %shift = shufflevector <2 x float> %i.nin, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x float> %shift, %i.nin
  %shift4673 = shufflevector <2 x float> %i.nik, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4674 = fadd reassoc nsz arcp contract afn <2 x float> %shift4673, %i.nik
  %foldExtExtBinop4676 = fdiv reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop4674
  %i.nio = extractelement <2 x float> %foldExtExtBinop4676, i64 0
  store float %i.nio, ptr %i.ndc, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1236.i = add nuw nsw i64 %indvars.iv1235.i, 2
  %i.nip = icmp slt i64 %indvars.iv1235.i, %i.mqa
  br i1 %i.nip, label %scalar.ph4281, label %._crit_edge1050.i, !llvm.loop !419

.preheader1016.i:                                 ; preds = %._crit_edge1060.i, %.lr.ph1064.i
  br i1 %i.lyh, label %.lr.ph1070.i, label %._crit_edge1078.i

.lr.ph1070.i:                                     ; preds = %.preheader1016.i
  %i.niq = add nsw i32 %i.mbj, 7                  ; 2 uses
  %i.nir = sext i32 %i.niq to i64                 ; 3 uses
  %i.nis = add nsw i32 %i.mbj, 6
  br label %bb.qy

.lr.ph1059.i:                                     ; preds = %._crit_edge1060.i, %.lr.ph1059.preheader.i
  %indvars.iv1250.i = phi i64 [ 0, %.lr.ph1059.preheader.i ], [ %indvars.iv.next1251.i, %._crit_edge1060.i ] ; 3 uses
  %.09011061.i = phi i32 [ %i.lyf, %.lr.ph1059.preheader.i ], [ %i.nlv, %._crit_edge1060.i ] ; 3 uses
  %indvars.iv1250.tr.i = trunc i64 %indvars.iv1250.i to i32
  %i.nit = shl i32 %indvars.iv1250.tr.i, 1
  %i.niu = and i32 %i.nit, 14                     ; 7 uses
  %i.niv = icmp sgt i32 %.09011061.i, -1
  %i.niw = mul nuw nsw i64 %indvars.iv1250.i, 136 ; 10 uses
  %i.nix = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.niw ; 7 uses
  %i.niy = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.niw
  br i1 %i.niv, label %.lr.ph1059.split.us.i, label %.thread978.i.preheader

.thread978.i.preheader:                           ; preds = %.lr.ph1059.i
  br i1 %i.mur, label %.thread978.i.epil.preheader, label %.thread978.i.preheader.new

.thread978.i.preheader.new:                       ; preds = %.thread978.i.preheader
  %i.niz = shl nuw nsw i32 %i.niu, 1
  %i.nja = lshr i32 %.fr1059, %i.niz
  %i.njb = and i32 %i.nja, 3                      ; 2 uses
  %i.njc = zext nneg i32 %i.njb to i64
  %i.njd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njc
  %i.nje = load ptr, ptr %i.njd, align 8, !tbaa !407, !noalias !408
  %i.njf = getelementptr inbounds nuw [4 x i8], ptr %i.nje, i64 %i.niw
  %.not955979.i = icmp eq i32 %i.njb, 1
  %.tr.i958.i.1 = shl nuw nsw i32 %i.niu, 1
  %i.njg = or disjoint i32 %.tr.i958.i.1, 2
  %i.njh = lshr i32 %.fr1059, %i.njg
  %i.nji = and i32 %i.njh, 3                      ; 2 uses
  %i.njj = zext nneg i32 %i.nji to i64
  %i.njk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njj
  %i.njl = load ptr, ptr %i.njk, align 8, !tbaa !407, !noalias !408
  %i.njm = getelementptr inbounds nuw [4 x i8], ptr %i.njl, i64 %i.niw
  %.not955979.i.1 = icmp eq i32 %i.nji, 1
  br label %.thread978.i

.lr.ph1059.split.us.i:                            ; preds = %.lr.ph1059.i
  %i.njn = icmp slt i32 %.09011061.i, %i.ayi
  br i1 %i.njn, label %.lr.ph1059.split.us.split.preheader.i, label %.lr.ph1059.split.us.split.us.i.preheader

.lr.ph1059.split.us.split.us.i.preheader:         ; preds = %.lr.ph1059.split.us.i
  br i1 %i.muw, label %.lr.ph1059.split.us.split.us.i.epil.preheader, label %.lr.ph1059.split.us.split.us.i.preheader.new

.lr.ph1059.split.us.split.us.i.preheader.new:     ; preds = %.lr.ph1059.split.us.split.us.i.preheader
  %i.njo = shl nuw nsw i32 %i.niu, 1
  %i.njp = lshr i32 %.fr1059, %i.njo
  %i.njq = and i32 %i.njp, 3                      ; 2 uses
  %i.njr = zext nneg i32 %i.njq to i64
  %i.njs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njr
  %i.njt = load ptr, ptr %i.njs, align 8, !tbaa !407, !noalias !408
  %i.nju = getelementptr inbounds nuw [4 x i8], ptr %i.njt, i64 %i.niw
  %.not955.us.us.i = icmp eq i32 %i.njq, 1
  %.tr.i958.us.us.i.1 = shl nuw nsw i32 %i.niu, 1
  %i.njv = or disjoint i32 %.tr.i958.us.us.i.1, 2
  %i.njw = lshr i32 %.fr1059, %i.njv
  %i.njx = and i32 %i.njw, 3                      ; 2 uses
  %i.njy = zext nneg i32 %i.njx to i64
  %i.njz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njy
  %i.nka = load ptr, ptr %i.njz, align 8, !tbaa !407, !noalias !408
  %i.nkb = getelementptr inbounds nuw [4 x i8], ptr %i.nka, i64 %i.niw
  %.not955.us.us.i.1 = icmp eq i32 %i.njx, 1
  br label %.lr.ph1059.split.us.split.us.i

.lr.ph1059.split.us.split.preheader.i:            ; preds = %.lr.ph1059.split.us.i
  %invariant.gep1371.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxe, i64 %i.niw
  br label %.lr.ph1059.split.us.split.i

.lr.ph1059.split.us.split.us.i:                   ; preds = %bb.qs, %.lr.ph1059.split.us.split.us.i.preheader.new
  %indvars.iv1244.i = phi i64 [ 0, %.lr.ph1059.split.us.split.us.i.preheader.new ], [ %indvars.iv.next1245.i.1, %bb.qs ] ; 4 uses
  %niter4795 = phi i64 [ 0, %.lr.ph1059.split.us.split.us.i.preheader.new ], [ %niter4795.next.1, %bb.qs ] ; 2 uses
  %i.nkc = getelementptr inbounds nuw [4 x i8], ptr %i.nju, i64 %indvars.iv1244.i
  store float 0.000000e+00, ptr %i.nkc, align 4, !tbaa !22, !noalias !402
  br i1 %.not955.us.us.i, label %.lr.ph1059.split.us.split.us.i.1, label %bb.qq

bb.qq:                                            ; preds = %.lr.ph1059.split.us.split.us.i
  %i.nkd = getelementptr inbounds nuw [4 x i8], ptr %i.nix, i64 %indvars.iv1244.i
  store float 0.000000e+00, ptr %i.nkd, align 8, !tbaa !22, !noalias !402
  br label %.lr.ph1059.split.us.split.us.i.1

.lr.ph1059.split.us.split.us.i.1:                 ; preds = %bb.qq, %.lr.ph1059.split.us.split.us.i
  %indvars.iv.next1245.i = or disjoint i64 %indvars.iv1244.i, 1 ; 2 uses
  %i.nke = getelementptr inbounds nuw [4 x i8], ptr %i.nkb, i64 %indvars.iv.next1245.i
  store float 0.000000e+00, ptr %i.nke, align 4, !tbaa !22, !noalias !402
  br i1 %.not955.us.us.i.1, label %bb.qs, label %bb.qr

bb.qr:                                            ; preds = %.lr.ph1059.split.us.split.us.i.1
  %i.nkf = getelementptr inbounds nuw [4 x i8], ptr %i.nix, i64 %indvars.iv.next1245.i
  store float 0.000000e+00, ptr %i.nkf, align 4, !tbaa !22, !noalias !402
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %.lr.ph1059.split.us.split.us.i.1
  %indvars.iv.next1245.i.1 = add nuw nsw i64 %indvars.iv1244.i, 2 ; 2 uses
  %niter4795.next.1 = add i64 %niter4795, 2
  %niter4795.ncmp.1.not = icmp eq i64 %niter4795, %i.muz
  br i1 %niter4795.ncmp.1.not, label %._crit_edge1060.i.loopexit4691.unr-lcssa, label %.lr.ph1059.split.us.split.us.i

.lr.ph1059.split.us.split.i:                      ; preds = %bb.qv, %.lr.ph1059.split.us.split.preheader.i
  %indvars.iv1247.i = phi i64 [ 0, %.lr.ph1059.split.us.split.preheader.i ], [ %indvars.iv.next1248.i, %bb.qv ] ; 6 uses
  %.09031054.us.i = phi i32 [ %i.muo, %.lr.ph1059.split.us.split.preheader.i ], [ %i.nkx, %bb.qv ] ; 2 uses
  %i.nkg = trunc nuw nsw i64 %indvars.iv1247.i to i32
  %i.nkh = and i32 %i.nkg, 1
  %.tr.i958.us.i = or disjoint i32 %i.nkh, %i.niu
  %i.nki = shl nuw nsw i32 %.tr.i958.us.i, 1
  %i.nkj = lshr i32 %.fr1059, %i.nki
  %i.nkk = and i32 %i.nkj, 3                      ; 3 uses
  %i.nkl = icmp ult i32 %.09031054.us.i, %i.bo
  %i.nkm = zext nneg i32 %i.nkk to i64
  %i.nkn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nkm
  %i.nko = load ptr, ptr %i.nkn, align 8, !tbaa !407, !noalias !408
  %i.nkp = getelementptr inbounds nuw [4 x i8], ptr %i.nko, i64 %i.niw
  %i.nkq = getelementptr inbounds nuw [4 x i8], ptr %i.nkp, i64 %indvars.iv1247.i ; 2 uses
  br i1 %i.nkl, label %bb.qt, label %.thread.i563

bb.qt:                                            ; preds = %.lr.ph1059.split.us.split.i
  %gep1372.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1371.i, i64 %indvars.iv1247.i
  %i.nkr = load float, ptr %gep1372.i, align 4, !tbaa !22, !noalias !402 ; 2 uses
  store float %i.nkr, ptr %i.nkq, align 4, !tbaa !22, !noalias !402
  %.not955.us.i = icmp eq i32 %i.nkk, 1
  br i1 %.not955.us.i, label %bb.qv, label %bb.qu

.thread.i563:                                     ; preds = %.lr.ph1059.split.us.split.i
  store float 0.000000e+00, ptr %i.nkq, align 4, !tbaa !22, !noalias !402
  %.not955.us1351.i = icmp eq i32 %i.nkk, 1
  br i1 %.not955.us1351.i, label %bb.qv, label %.thread1352.i

bb.qu:                                            ; preds = %bb.qt
  %i.nks = getelementptr inbounds nuw [4 x i8], ptr %i.niy, i64 %indvars.iv1247.i
  %i.nkt = load float, ptr %i.nks, align 4, !tbaa !22, !noalias !402
  %i.nku = fadd reassoc nsz arcp contract afn float %i.nkt, %i.nkr
  br label %.thread1352.i

.thread1352.i:                                    ; preds = %bb.qu, %.thread.i563
  %i.nkv = phi reassoc nsz arcp contract afn float [ %i.nku, %bb.qu ], [ 0.000000e+00, %.thread.i563 ]
  %i.nkw = getelementptr inbounds nuw [4 x i8], ptr %i.nix, i64 %indvars.iv1247.i
  store float %i.nkv, ptr %i.nkw, align 4, !tbaa !22, !noalias !402
  br label %bb.qv

bb.qv:                                            ; preds = %.thread1352.i, %.thread.i563, %bb.qt
  %indvars.iv.next1248.i = add nuw nsw i64 %indvars.iv1247.i, 1 ; 2 uses
  %i.nkx = add nsw i32 %.09031054.us.i, 1
  %i.nky = icmp slt i64 %indvars.iv.next1248.i, %i.muq
  br i1 %i.nky, label %.lr.ph1059.split.us.split.i, label %._crit_edge1060.i

._crit_edge1060.i.loopexit4691.unr-lcssa:         ; preds = %bb.qs
  br i1 %lcmp.mod4792.not, label %._crit_edge1060.i, label %.lr.ph1059.split.us.split.us.i.epil.preheader

.lr.ph1059.split.us.split.us.i.epil.preheader:    ; preds = %._crit_edge1060.i.loopexit4691.unr-lcssa, %.lr.ph1059.split.us.split.us.i.preheader
  %indvars.iv1244.i.epil.init = phi i64 [ 0, %.lr.ph1059.split.us.split.us.i.preheader ], [ %indvars.iv.next1245.i.1, %._crit_edge1060.i.loopexit4691.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4793)
  %i.nkz = trunc nuw nsw i64 %indvars.iv1244.i.epil.init to i32
  %i.nla = and i32 %i.nkz, 1
  %.tr.i958.us.us.i.epil = or disjoint i32 %i.nla, %i.niu
  %i.nlb = shl nuw nsw i32 %.tr.i958.us.us.i.epil, 1
  %i.nlc = lshr i32 %.fr1059, %i.nlb
  %i.nld = and i32 %i.nlc, 3                      ; 2 uses
  %i.nle = zext nneg i32 %i.nld to i64
  %i.nlf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nle
  %i.nlg = load ptr, ptr %i.nlf, align 8, !tbaa !407, !noalias !408
  %i.nlh = getelementptr inbounds nuw [4 x i8], ptr %i.nlg, i64 %i.niw
  %i.nli = getelementptr inbounds nuw [4 x i8], ptr %i.nlh, i64 %indvars.iv1244.i.epil.init
  store float 0.000000e+00, ptr %i.nli, align 4, !tbaa !22, !noalias !402
  %.not955.us.us.i.epil = icmp eq i32 %i.nld, 1
  br i1 %.not955.us.us.i.epil, label %._crit_edge1060.i, label %bb.qw

bb.qw:                                            ; preds = %.lr.ph1059.split.us.split.us.i.epil.preheader
  %i.nlj = getelementptr inbounds nuw [4 x i8], ptr %i.nix, i64 %indvars.iv1244.i.epil.init
  store float 0.000000e+00, ptr %i.nlj, align 4, !tbaa !22, !noalias !402
  br label %._crit_edge1060.i

._crit_edge1060.i.loopexit4692.unr-lcssa:         ; preds = %bb.qx
  br i1 %lcmp.mod4784.not, label %._crit_edge1060.i, label %.thread978.i.epil.preheader

.thread978.i.epil.preheader:                      ; preds = %._crit_edge1060.i.loopexit4692.unr-lcssa, %.thread978.i.preheader
  %indvars.iv1241.i.epil.init = phi i64 [ 0, %.thread978.i.preheader ], [ %indvars.iv.next1242.i.1, %._crit_edge1060.i.loopexit4692.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4785)
  %i.nlk = trunc nuw nsw i64 %indvars.iv1241.i.epil.init to i32
  %i.nll = and i32 %i.nlk, 1
  %.tr.i958.i.epil = or disjoint i32 %i.nll, %i.niu
  %i.nlm = shl nuw nsw i32 %.tr.i958.i.epil, 1
  %i.nln = lshr i32 %.fr1059, %i.nlm
  %i.nlo = and i32 %i.nln, 3                      ; 2 uses
  %i.nlp = zext nneg i32 %i.nlo to i64
  %i.nlq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nlp
  %i.nlr = load ptr, ptr %i.nlq, align 8, !tbaa !407, !noalias !408
  %i.nls = getelementptr inbounds nuw [4 x i8], ptr %i.nlr, i64 %i.niw
  %i.nlt = getelementptr inbounds nuw [4 x i8], ptr %i.nls, i64 %indvars.iv1241.i.epil.init
  store float 0.000000e+00, ptr %i.nlt, align 4, !tbaa !22, !noalias !402
  %.not955979.i.epil = icmp eq i32 %i.nlo, 1
  br i1 %.not955979.i.epil, label %._crit_edge1060.i, label %.thread980.i.epil

.thread980.i.epil:                                ; preds = %.thread978.i.epil.preheader
  %i.nlu = getelementptr inbounds nuw [4 x i8], ptr %i.nix, i64 %indvars.iv1241.i.epil.init
  store float 0.000000e+00, ptr %i.nlu, align 4, !tbaa !22, !noalias !402
  br label %._crit_edge1060.i

._crit_edge1060.i:                                ; preds = %._crit_edge1060.i.loopexit4692.unr-lcssa, %.thread980.i.epil, %.thread978.i.epil.preheader, %._crit_edge1060.i.loopexit4691.unr-lcssa, %bb.qw, %.lr.ph1059.split.us.split.us.i.epil.preheader, %bb.qv
  %indvars.iv.next1251.i = add nuw nsw i64 %indvars.iv1250.i, 1 ; 2 uses
  %i.nlv = add i32 %.09011061.i, 1
  %exitcond1124.not = icmp eq i64 %indvars.iv.next1251.i, %smax1123
  br i1 %exitcond1124.not, label %.preheader1016.i, label %.lr.ph1059.i

.thread978.i:                                     ; preds = %bb.qx, %.thread978.i.preheader.new
  %indvars.iv1241.i = phi i64 [ 0, %.thread978.i.preheader.new ], [ %indvars.iv.next1242.i.1, %bb.qx ] ; 4 uses
  %niter4787 = phi i64 [ 0, %.thread978.i.preheader.new ], [ %niter4787.next.1, %bb.qx ] ; 2 uses
  %i.nlw = getelementptr inbounds nuw [4 x i8], ptr %i.njf, i64 %indvars.iv1241.i
  store float 0.000000e+00, ptr %i.nlw, align 4, !tbaa !22, !noalias !402
  br i1 %.not955979.i, label %.thread978.i.1, label %.thread980.i

.thread980.i:                                     ; preds = %.thread978.i
  %i.nlx = getelementptr inbounds nuw [4 x i8], ptr %i.nix, i64 %indvars.iv1241.i
  store float 0.000000e+00, ptr %i.nlx, align 8, !tbaa !22, !noalias !402
  br label %.thread978.i.1

.thread978.i.1:                                   ; preds = %.thread980.i, %.thread978.i
  %indvars.iv.next1242.i = or disjoint i64 %indvars.iv1241.i, 1 ; 2 uses
  %i.nly = getelementptr inbounds nuw [4 x i8], ptr %i.njm, i64 %indvars.iv.next1242.i
  store float 0.000000e+00, ptr %i.nly, align 4, !tbaa !22, !noalias !402
  br i1 %.not955979.i.1, label %bb.qx, label %.thread980.i.1

.thread980.i.1:                                   ; preds = %.thread978.i.1
  %i.nlz = getelementptr inbounds nuw [4 x i8], ptr %i.nix, i64 %indvars.iv.next1242.i
  store float 0.000000e+00, ptr %i.nlz, align 4, !tbaa !22, !noalias !402
  br label %bb.qx

bb.qx:                                            ; preds = %.thread980.i.1, %.thread978.i.1
  %indvars.iv.next1242.i.1 = add nuw nsw i64 %indvars.iv1241.i, 2 ; 2 uses
  %niter4787.next.1 = add i64 %niter4787, 2
  %niter4787.ncmp.1.not = icmp eq i64 %niter4787, %i.muu
  br i1 %niter4787.ncmp.1.not, label %._crit_edge1060.i.loopexit4692.unr-lcssa, label %.thread978.i

bb.qy:                                            ; preds = %._crit_edge1068.i, %.lr.ph1070.i
  %indvar4223 = phi i64 [ %indvar.next4224, %._crit_edge1068.i ], [ 0, %.lr.ph1070.i ] ; 2 uses
  %indvars.iv1256.i = phi i64 [ %indvars.iv.next1257.i, %._crit_edge1068.i ], [ 1, %.lr.ph1070.i ] ; 3 uses
  %i.nma = mul nuw nsw i64 %indvar4223, 544       ; 6 uses
  %i.nmb = getelementptr i8, ptr %i.lwy, i64 %i.nma
  %scevgep4232.a = getelementptr i8, ptr %i.nmb, i64 73988
  %i.nmc = getelementptr i8, ptr %i.lwy, i64 %i.nma
  %scevgep4234.a = getelementptr i8, ptr %i.nmc, i64 75080
  %indvars.iv1256.tr.i = trunc i64 %indvars.iv1256.i to i32
  %i.nmd = shl i32 %indvars.iv1256.tr.i, 1
  %i.nme = and i32 %i.nmd, 14                     ; 2 uses
  %i.nmf = shl nuw nsw i32 %i.nme, 1
  %i.nmg = lshr i32 %.fr1059, %i.nmf              ; 3 uses
  %i.nmh = and i32 %i.nmg, 1                      ; 3 uses
  %i.nmi = icmp slt i32 %i.nmh, %i.nis
  br i1 %i.nmi, label %.lr.ph1067.i, label %._crit_edge1068.i

.lr.ph1067.i:                                     ; preds = %bb.qy
  %i.nmj = or disjoint i32 %i.nmh, %i.nme
  %i.nmk = shl nuw nsw i32 %i.nmj, 1
  %i.nml = lshr i32 %.fr1059, %i.nmk
  %i.nmm = and i32 %i.nml, 3                      ; 2 uses
  %i.nmn = zext nneg i32 %i.nmm to i64
  %i.nmo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nmn
  %i.nmp = load ptr, ptr %i.nmo, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nmq = mul nuw nsw i64 %indvars.iv1256.i, 136 ; 3 uses
  %i.nmr = getelementptr inbounds nuw [4 x i8], ptr %i.nmp, i64 %i.nmq ; 2 uses
  %i.nms = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.nmq ; 2 uses
  %i.nmt = sub nsw i32 2, %i.nmm
  %i.nmu = sext i32 %i.nmt to i64
  %i.nmv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nmu
  %i.nmw = load ptr, ptr %i.nmv, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nmx = getelementptr inbounds nuw [4 x i8], ptr %i.nmw, i64 %i.nmq ; 2 uses
  %narrow1347.i = add nuw nsw i32 %i.nmh, 1
  %i.nmy = zext nneg i32 %narrow1347.i to i64     ; 5 uses
  %i.nmz = and i32 %i.nmg, 1
  %i.nna = zext nneg i32 %i.nmz to i64            ; 2 uses
  %i.nnb = add nuw nsw i64 %i.nna, 3
  %i.nnc = call i64 @llvm.smax.i64(i64 %i.nir, i64 %i.nnb)
  %i.nnd = sub nsw i64 %i.nnc, %i.nna
  %i.nne = add i64 %i.nnd, -2                     ; 2 uses
  %i.nnf = lshr i64 %i.nne, 1
  %i.nng = add nuw nsw i64 %i.nnf, 1              ; 2 uses
  %min.iters.check4248 = icmp ult i64 %i.nne, 16
  br i1 %min.iters.check4248, label %scalar.ph4247.preheader, label %vector.memcheck4222

scalar.ph4247.preheader:                          ; preds = %vector.body4254, %vector.memcheck4222, %.lr.ph1067.i
  %indvars.iv1253.i.ph = phi i64 [ %i.nmy, %vector.memcheck4222 ], [ %i.nmy, %.lr.ph1067.i ], [ %i.noe, %vector.body4254 ]
  br label %scalar.ph4247

vector.memcheck4222:                              ; preds = %.lr.ph1067.i
  %i.nnh = and i32 %i.nmg, 1
  %i.nni = zext nneg i32 %i.nnh to i64            ; 3 uses
  %i.nnj = shl nuw nsw i64 %i.nni, 2              ; 6 uses
  %i.nnk = getelementptr i8, ptr %i.nmp, i64 %i.nma
  %i.nnl = getelementptr i8, ptr %i.nnk, i64 544
  %scevgep4225 = getelementptr i8, ptr %i.nnl, i64 %i.nnj ; 2 uses
  %i.nnm = add nuw nsw i64 %i.nni, 3
  %smax4228 = call i64 @llvm.smax.i64(i64 %i.mas, i64 %i.nnm)
  %i.nnn = add nsw i64 %smax4228, -2
  %i.nno = sub i64 %i.nnn, %i.nni
  %i.nnp = shl nuw nsw i64 %i.nno, 2
  %i.nnq = and i64 %i.nnp, 9223372036854775800    ; 3 uses
  %i.nnr = getelementptr i8, ptr %i.nmp, i64 %i.nma
  %i.nns = getelementptr i8, ptr %i.nnr, i64 556
  %i.nnt = getelementptr i8, ptr %i.nns, i64 %i.nnq
  %scevgep4229 = getelementptr i8, ptr %i.nnt, i64 %i.nnj ; 2 uses
  %i.nnu = getelementptr i8, ptr %i.nmw, i64 %i.nma
  %i.nnv = getelementptr i8, ptr %i.nnu, i64 4
  %scevgep4230 = getelementptr i8, ptr %i.nnv, i64 %i.nnj ; 2 uses
  %i.nnw = getelementptr i8, ptr %i.nmw, i64 %i.nma
  %i.nnx = getelementptr i8, ptr %i.nnw, i64 1096
  %i.nny = getelementptr i8, ptr %i.nnx, i64 %i.nnq
  %scevgep4231 = getelementptr i8, ptr %i.nny, i64 %i.nnj ; 2 uses
  %scevgep4233 = getelementptr i8, ptr %scevgep4232.a, i64 %i.nnj ; 2 uses
  %i.nnz = getelementptr i8, ptr %scevgep4234.a, i64 %i.nnq
  %scevgep4235 = getelementptr i8, ptr %i.nnz, i64 %i.nnj ; 2 uses
  %bound04236 = icmp ult ptr %scevgep4225, %scevgep4231
  %bound14237 = icmp ult ptr %scevgep4230, %scevgep4229
  %found.conflict4238 = and i1 %bound04236, %bound14237
  %bound04239 = icmp ult ptr %scevgep4225, %scevgep4235
  %bound14240 = icmp ult ptr %scevgep4233, %scevgep4229
  %found.conflict4241 = and i1 %bound04239, %bound14240
  %conflict.rdx4242 = or i1 %found.conflict4238, %found.conflict4241
  %bound04243 = icmp ult ptr %scevgep4230, %scevgep4235
  %bound14244 = icmp ult ptr %scevgep4233, %scevgep4231
  %found.conflict4245 = and i1 %bound04243, %bound14244
  %conflict.rdx4246 = or i1 %conflict.rdx4242, %found.conflict4245
  br i1 %conflict.rdx4246, label %scalar.ph4247.preheader, label %vector.ph4249

vector.ph4249:                                    ; preds = %vector.memcheck4222
  %i.noa = and i64 %i.nng, 7                      ; 2 uses
  %i.nob = icmp eq i64 %i.noa, 0
  %i.noc = select i1 %i.nob, i64 8, i64 %i.noa
  %n.vec4250 = sub nsw i64 %i.nng, %i.noc         ; 2 uses
  %i.nod = shl i64 %n.vec4250, 1
  %i.noe = add i64 %i.nod, %i.nmy
  %broadcast.splatinsert4251 = insertelement <8 x i64> poison, i64 %i.nmy, i64 0
  %broadcast.splat4252 = shufflevector <8 x i64> %broadcast.splatinsert4251, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4253 = add nuw nsw <8 x i64> %broadcast.splat4252, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4924 = getelementptr [4 x i8], ptr %i.nms, i64 %i.nmy
  br label %vector.body4254

vector.body4254:                                  ; preds = %vector.body4254, %vector.ph4249
  %index4255 = phi i64 [ 0, %vector.ph4249 ], [ %index.next4277, %vector.body4254 ] ; 2 uses
  %vec.ind4256 = phi <8 x i64> [ %induction4253, %vector.ph4249 ], [ %vec.ind.next4278, %vector.body4254 ] ; 3 uses
  %wide.gep4257 = getelementptr inbounds nuw [4 x i8], ptr %i.nmr, <8 x i64> %vec.ind4256 ; 2 uses
  %i.nof = extractelement <8 x ptr> %wide.gep4257, i64 0 ; 2 uses
  %.idx4615 = shl nuw i64 %index4255, 3
  %gep4925 = getelementptr i8, ptr %invariant.gep4924, i64 %.idx4615 ; 4 uses
  %i.nog = getelementptr inbounds i8, ptr %gep4925, i64 -4
  %wide.vec4258 = load <16 x float>, ptr %i.nog, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4259 = shufflevector <16 x float> %wide.vec4258, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4260 = shufflevector <16 x float> %wide.vec4258, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.noh = getelementptr inbounds i8, ptr %i.nof, i64 -4
  %wide.vec4261 = load <16 x float>, ptr %i.noh, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4262 = shufflevector <16 x float> %wide.vec4261, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.noi = getelementptr inbounds nuw i8, ptr %i.nof, i64 4
  %wide.vec4263 = load <16 x float>, ptr %i.noi, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4264 = shufflevector <16 x float> %wide.vec4263, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4265 = load <16 x float>, ptr %gep4925, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4266 = shufflevector <16 x float> %wide.vec4265, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4267 = shufflevector <16 x float> %wide.vec4265, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.noj = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4262, %strided.vec4264
  %i.nok = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4259, %strided.vec4267
  %i.nol = fsub reassoc nsz arcp contract afn <8 x float> %i.noj, %i.nok
  %i.nom = fmul reassoc nsz arcp contract afn <8 x float> %i.nol, splat (float 5.000000e-01)
  %i.non = fadd reassoc nsz arcp contract afn <8 x float> %i.nom, %strided.vec4260
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.non, <8 x ptr> align 4 %wide.gep4257, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !423, !noalias !425
  %wide.gep4268 = getelementptr inbounds nuw [4 x i8], ptr %i.nmx, <8 x i64> %vec.ind4256 ; 2 uses
  %i.noo = extractelement <8 x ptr> %wide.gep4268, i64 0 ; 2 uses
  %i.nop = getelementptr inbounds i8, ptr %i.noo, i64 -544
  %wide.vec4269 = load <16 x float>, ptr %i.nop, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4270 = shufflevector <16 x float> %wide.vec4269, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.noq = getelementptr inbounds i8, ptr %gep4925, i64 -544
  %wide.vec4271 = load <16 x float>, ptr %i.noq, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4272 = shufflevector <16 x float> %wide.vec4271, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nor = getelementptr inbounds nuw i8, ptr %i.noo, i64 544
  %wide.vec4273 = load <16 x float>, ptr %i.nor, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4274 = shufflevector <16 x float> %wide.vec4273, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nos = getelementptr inbounds nuw i8, ptr %gep4925, i64 544
  %wide.vec4275 = load <16 x float>, ptr %i.nos, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4276 = shufflevector <16 x float> %wide.vec4275, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.not = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4270, %strided.vec4274
  %i.nou = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4272, %strided.vec4276
  %i.nov = fsub reassoc nsz arcp contract afn <8 x float> %i.not, %i.nou
  %i.now = fmul reassoc nsz arcp contract afn <8 x float> %i.nov, splat (float 5.000000e-01)
  %i.nox = fadd reassoc nsz arcp contract afn <8 x float> %i.now, %strided.vec4266
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nox, <8 x ptr> align 4 %wide.gep4268, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !427, !noalias !428
  %index.next4277 = add nuw i64 %index4255, 8     ; 2 uses
  %vec.ind.next4278 = add nuw nsw <8 x i64> %vec.ind4256, splat (i64 16)
  %i.noy = icmp eq i64 %index.next4277, %n.vec4250
  br i1 %i.noy, label %scalar.ph4247.preheader, label %vector.body4254, !llvm.loop !429

._crit_edge1068.i:                                ; preds = %scalar.ph4247, %bb.qy
  %indvars.iv.next1257.i = add nuw nsw i64 %indvars.iv1256.i, 1 ; 2 uses
  %exitcond1129.not = icmp eq i64 %indvars.iv.next1257.i, %smax1134
  %indvar.next4224 = add i64 %indvar4223, 1
  br i1 %exitcond1129.not, label %.preheader1015.i.preheader, label %bb.qy

.preheader1015.i.preheader:                       ; preds = %._crit_edge1068.i
  %narrow4616 = add nsw i32 %i.mau, 5
  %6 = sext i32 %narrow4616 to i64
  %7 = call i32 @llvm.smin.i32(i32 %i.mbi, i32 128)
  %8 = sext i32 %7 to i64
  br label %.preheader1015.i.a

scalar.ph4247:                                    ; preds = %scalar.ph4247.preheader, %scalar.ph4247
  %indvars.iv1253.i = phi i64 [ %indvars.iv.next1254.i, %scalar.ph4247 ], [ %indvars.iv1253.i.ph, %scalar.ph4247.preheader ] ; 4 uses
  %i.noz = getelementptr inbounds nuw [4 x i8], ptr %i.nmr, i64 %indvars.iv1253.i ; 3 uses
  %i.npa = getelementptr inbounds nuw [4 x i8], ptr %i.nms, i64 %indvars.iv1253.i ; 6 uses
  %i.npb = load float, ptr %i.npa, align 4, !tbaa !22, !noalias !402
  %i.npc = getelementptr inbounds i8, ptr %i.noz, i64 -4
  %i.npd = load float, ptr %i.npc, align 4, !tbaa !22, !noalias !402
  %i.npe = getelementptr inbounds i8, ptr %i.npa, i64 -4
  %i.npf = load float, ptr %i.npe, align 4, !tbaa !22, !noalias !402
  %i.npg = getelementptr inbounds nuw i8, ptr %i.noz, i64 4
  %i.nph = load float, ptr %i.npg, align 4, !tbaa !22, !noalias !402
  %i.npi = getelementptr inbounds nuw i8, ptr %i.npa, i64 4
  %i.npj = load float, ptr %i.npi, align 4, !tbaa !22, !noalias !402
  %i.npk = fadd reassoc nsz arcp contract afn float %i.npd, %i.nph
  %i.npl = fadd reassoc nsz arcp contract afn float %i.npf, %i.npj
  %i.npm = fsub reassoc nsz arcp contract afn float %i.npk, %i.npl
  %i.npn = fmul reassoc nsz arcp contract afn float %i.npm, 5.000000e-01
  %i.npo = fadd reassoc nsz arcp contract afn float %i.npn, %i.npb
  store float %i.npo, ptr %i.noz, align 4, !tbaa !22, !noalias !402
  %i.npp = getelementptr inbounds nuw [4 x i8], ptr %i.nmx, i64 %indvars.iv1253.i ; 3 uses
  %i.npq = load float, ptr %i.npa, align 4, !tbaa !22, !noalias !402
  %i.npr = getelementptr inbounds i8, ptr %i.npp, i64 -544
  %i.nps = load float, ptr %i.npr, align 4, !tbaa !22, !noalias !402
  %i.npt = getelementptr inbounds i8, ptr %i.npa, i64 -544
  %i.npu = load float, ptr %i.npt, align 4, !tbaa !22, !noalias !402
  %i.npv = getelementptr inbounds nuw i8, ptr %i.npp, i64 544
  %i.npw = load float, ptr %i.npv, align 4, !tbaa !22, !noalias !402
  %i.npx = getelementptr inbounds nuw i8, ptr %i.npa, i64 544
  %i.npy = load float, ptr %i.npx, align 4, !tbaa !22, !noalias !402
  %i.npz = fadd reassoc nsz arcp contract afn float %i.nps, %i.npw
  %i.nqa = fadd reassoc nsz arcp contract afn float %i.npu, %i.npy
  %i.nqb = fsub reassoc nsz arcp contract afn float %i.npz, %i.nqa
  %i.nqc = fmul reassoc nsz arcp contract afn float %i.nqb, 5.000000e-01
  %i.nqd = fadd reassoc nsz arcp contract afn float %i.nqc, %i.npq
  store float %i.nqd, ptr %i.npp, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1254.i = add nuw nsw i64 %indvars.iv1253.i, 2 ; 2 uses
  %i.nqe = icmp slt i64 %indvars.iv.next1254.i, %i.nir
  br i1 %i.nqe, label %scalar.ph4247, label %._crit_edge1068.i, !llvm.loop !430

._crit_edge1078.i:                                ; preds = %._crit_edge1075.i, %.preheader1016.i, %._crit_edge1053.i
  %i.nqf = icmp eq i32 %.08811178.i, 0            ; 2 uses
  %i.nqg = select i1 %i.nqf, i32 6, i32 0         ; 21 uses
  %i.nqh = icmp eq i32 %.08811178.i, %i.apm       ; 2 uses
  %.neg.i555 = select i1 %i.nqh, i32 -6, i32 0    ; 10 uses
  %i.nqi = add nsw i32 %i.mbk, %.neg.i555         ; 4 uses
  br i1 %.not1186.i, label %.preheader1014.i, label %.preheader1011.lr.ph.i

.preheader1011.lr.ph.i:                           ; preds = %._crit_edge1078.i
  %i.nqj = icmp slt i32 %i.mbi, -5
  %i.nqk = zext nneg i32 %i.nqg to i64            ; 11 uses
  %invariant.gep.i556 = getelementptr inbounds nuw [4 x i8], ptr %i.lwy, i64 %i.nqk
  %invariant.gep1124.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.nqk
  %invariant.gep1126.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxb, i64 %i.nqk
  %invariant.gep1128.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxc, i64 %i.nqk
  %invariant.gep1130.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.nqk
  %i.nql = add nsw i32 %i.nqi, -1                 ; 3 uses
  %i.nqm = icmp slt i32 %i.nqg, %i.nql            ; 2 uses
  %brmerge.i557 = select i1 %i.lym, i1 true, i1 %i.nqj
  %i.nqn = add nsw i32 %i.mbj, 6                  ; 3 uses
  %i.nqo = sext i32 %i.nqn to i64                 ; 6 uses
  %i.nqp = shl nuw nsw i64 %i.nqk, 2              ; 4 uses
  %scevgep3982 = getelementptr i8, ptr %scevgep3981, i64 %i.nqp ; 2 uses
  %i.nqq = add nsw i32 %.neg.i555, 6
  %i.nqr = add i32 %i.nqq, %smin3986
  %i.nqs = sub i32 %i.nqr, %i.nqg
  %i.nqt = lshr i32 %i.nqs, 1
  %i.nqu = zext nneg i32 %i.nqt to i64
  %i.nqv = shl nuw nsw i64 %i.nqu, 3              ; 2 uses
  %i.nqw = getelementptr i8, ptr %scevgep3984, i64 %i.nqv
  %scevgep3987 = getelementptr i8, ptr %i.nqw, i64 %i.nqp ; 2 uses
  %.reass = or disjoint i64 %i.nqp, %invariant.op
  %i.nqx = add nuw nsw i64 %i.lzl, %i.nqv
  %i.nqy = add nuw nsw i64 %i.nqx, %i.nqp
  %i.nqz = add nsw i32 %.neg.i555, 6
  %i.nra = add i32 %i.nqz, %smin4052
  %i.nrb = sub i32 %i.nra, %i.nqg
  %i.nrc = lshr i32 %i.nrb, 1
  %i.nrd = zext nneg i32 %i.nrc to i64
  %i.nre = shl nuw nsw i64 %i.nrd, 3              ; 2 uses
  %i.nrf = add nuw nsw i64 %i.lzm, %i.nre
  %i.nrg = shl nuw nsw i64 %i.nqk, 2              ; 3 uses
  %i.nrh = add nuw nsw i64 %i.nrf, %i.nrg
  %scevgep4055 = getelementptr i8, ptr %scevgep4054, i64 %i.nrg ; 2 uses
  %i.nri = getelementptr i8, ptr %scevgep4057, i64 %i.nre
  %scevgep4058 = getelementptr i8, ptr %i.nri, i64 %i.nrg ; 2 uses
  %min.iters.check4149 = icmp ult i32 %i.nqn, 8
  %n.vec4151 = and i64 %i.nqo, -8                 ; 3 uses
  %i.nrj = or disjoint i64 %n.vec4151, 1
  %cmp.n4174 = icmp eq i64 %n.vec4151, %i.nqo
  %min.iters.check4121 = icmp ult i32 %i.nqn, 8
  %n.vec4123 = and i64 %i.nqo, -8                 ; 3 uses
  %i.nrk = or disjoint i64 %n.vec4123, 1
  %cmp.n4146 = icmp eq i64 %n.vec4123, %i.nqo
  %i.nrl = add i32 %.neg.i555, %i.mbj
  %i.nrm = sub i32 %i.nrl, %i.nqg
  %i.nrn = add i32 %i.nrm, 6                      ; 2 uses
  %i.nro = lshr i32 %i.nrn, 1
  %narrow4618 = add nuw i32 %i.nro, 1
  %i.nrp = zext i32 %narrow4618 to i64            ; 2 uses
  %min.iters.check4072 = icmp ult i32 %i.nrn, 16
  %i.nrq = and i64 %i.nrp, 7                      ; 2 uses
  %i.nrr = icmp eq i64 %i.nrq, 0
  %i.nrs = select i1 %i.nrr, i64 8, i64 %i.nrq
  %n.vec4074 = sub nsw i64 %i.nrp, %i.nrs         ; 3 uses
  %i.nrt = trunc i64 %n.vec4074 to i32
  %i.nru = shl i32 %i.nrt, 1
  %i.nrv = add i32 %i.nqg, %i.nru
  %i.nrw = shl nsw i64 %n.vec4074, 3              ; 7 uses
  %i.nrx = add i32 %.neg.i555, %i.mbj
  %i.nry = sub i32 %i.nrx, %i.nqg
  %i.nrz = add i32 %i.nry, 6                      ; 2 uses
  %i.nsa = lshr i32 %i.nrz, 1
  %narrow4619 = add nuw i32 %i.nsa, 1
  %i.nsb = zext i32 %narrow4619 to i64            ; 2 uses
  %min.iters.check4006 = icmp ult i32 %i.nrz, 16
  %i.nsc = and i64 %i.nsb, 7                      ; 2 uses
  %i.nsd = icmp eq i64 %i.nsc, 0
  %i.nse = select i1 %i.nsd, i64 8, i64 %i.nsc
  %n.vec4008 = sub nsw i64 %i.nsb, %i.nse         ; 3 uses
  %i.nsf = shl nsw i64 %n.vec4008, 3              ; 7 uses
  %i.nsg = trunc i64 %n.vec4008 to i32
  %i.nsh = shl i32 %i.nsg, 1
  %i.nsi = add i32 %i.nqg, %i.nsh
  br label %.preheader1011.i

.preheader1015.i.a:                               ; preds = %.preheader1015.i.preheader, %._crit_edge1075.i
  %indvar4177 = phi i64 [ 0, %.preheader1015.i.preheader ], [ %indvar.next4178, %._crit_edge1075.i ] ; 2 uses
  %indvars.iv1262.i = phi i64 [ 1, %.preheader1015.i.preheader ], [ %indvars.iv.next1263.i, %._crit_edge1075.i ] ; 3 uses
  %i.nsj = mul nuw nsw i64 %indvar4177, 544       ; 4 uses
  %i.nsk = getelementptr i8, ptr %i.lwy, i64 %i.nsj
  %scevgep4183.a = getelementptr i8, ptr %i.nsk, i64 73988
  %i.nsl = getelementptr i8, ptr %i.lwy, i64 %i.nsj
  %scevgep4185.a = getelementptr i8, ptr %i.nsl, i64 75080
  %indvars.iv1262.tr.i = trunc i64 %indvars.iv1262.i to i32
  %i.nsm = shl i32 %indvars.iv1262.tr.i, 1
  %i.nsn = and i32 %i.nsm, 14                     ; 2 uses
  %.tr.i961.i = shl nuw nsw i32 %i.nsn, 1
  %i.nso = or disjoint i32 %.tr.i961.i, 2
  %i.nsp = lshr i32 %.fr1059, %i.nso              ; 3 uses
  %i.nsq = and i32 %i.nsp, 1
  %i.nsr = add nuw nsw i32 %i.nsq, 1              ; 3 uses
  %i.nss = icmp slt i32 %i.nsr, %i.niq
  br i1 %i.nss, label %.lr.ph1074.i, label %._crit_edge1075.i

.lr.ph1074.i:                                     ; preds = %.preheader1015.i.a
  %i.nst = and i32 %i.nsr, 1
  %i.nsu = or disjoint i32 %i.nst, %i.nsn
  %i.nsv = shl nuw nsw i32 %i.nsu, 1
  %i.nsw = lshr i32 %.fr1059, %i.nsv
  %i.nsx = and i32 %i.nsw, 3
  %i.nsy = sub nsw i32 2, %i.nsx
  %i.nsz = sext i32 %i.nsy to i64
  %i.nta = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nsz
  %i.ntb = load ptr, ptr %i.nta, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.ntc = mul nuw nsw i64 %indvars.iv1262.i, 136 ; 2 uses
  %i.ntd = getelementptr inbounds nuw [4 x i8], ptr %i.ntb, i64 %i.ntc ; 2 uses
  %i.nte = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.ntc ; 2 uses
  %i.ntf = zext nneg i32 %i.nsr to i64            ; 5 uses
  %i.ntg = and i32 %i.nsp, 1
  %i.nth = zext nneg i32 %i.ntg to i64
  %i.nti = sub nsw i64 %8, %i.nth
  %i.ntj = add nsw i64 %i.nti, 5                  ; 2 uses
  %i.ntk = lshr i64 %i.ntj, 1
  %i.ntl = add nuw i64 %i.ntk, 1                  ; 2 uses
  %min.iters.check4191 = icmp ult i64 %i.ntj, 8
  br i1 %min.iters.check4191, label %scalar.ph4190.preheader, label %vector.memcheck4176

scalar.ph4190.preheader:                          ; preds = %vector.body4197, %vector.memcheck4176, %.lr.ph1074.i
  %indvars.iv1259.i.ph = phi i64 [ %i.ntf, %vector.memcheck4176 ], [ %i.ntf, %.lr.ph1074.i ], [ %i.nuc, %vector.body4197 ]
  br label %scalar.ph4190

vector.memcheck4176:                              ; preds = %.lr.ph1074.i
  %i.ntm = and i32 %i.nsp, 1
  %i.ntn = zext nneg i32 %i.ntm to i64            ; 2 uses
  %i.nto = shl nuw nsw i64 %i.ntn, 2              ; 4 uses
  %i.ntp = getelementptr i8, ptr %i.ntb, i64 %i.nsj
  %i.ntq = getelementptr i8, ptr %i.ntp, i64 4
  %scevgep4179 = getelementptr i8, ptr %i.ntq, i64 %i.nto
  %i.ntr = sub nsw i64 %6, %i.ntn
  %i.nts = shl nsw i64 %i.ntr, 2
  %i.ntt = and i64 %i.nts, -8                     ; 2 uses
  %i.ntu = getelementptr i8, ptr %i.ntb, i64 %i.nsj
  %i.ntv = getelementptr i8, ptr %i.ntu, i64 1096
  %i.ntw = getelementptr i8, ptr %i.ntv, i64 %i.ntt
  %scevgep4182 = getelementptr i8, ptr %i.ntw, i64 %i.nto
  %scevgep4184 = getelementptr i8, ptr %scevgep4183.a, i64 %i.nto
  %i.ntx = getelementptr i8, ptr %scevgep4185.a, i64 %i.ntt
  %scevgep4186 = getelementptr i8, ptr %i.ntx, i64 %i.nto
  %bound04187 = icmp ult ptr %scevgep4179, %scevgep4186
  %bound14188 = icmp ult ptr %scevgep4184, %scevgep4182
  %found.conflict4189 = and i1 %bound04187, %bound14188
  br i1 %found.conflict4189, label %scalar.ph4190.preheader, label %vector.ph4192

vector.ph4192:                                    ; preds = %vector.memcheck4176
  %i.nty = and i64 %i.ntl, 3                      ; 2 uses
  %i.ntz = icmp eq i64 %i.nty, 0
  %i.nua = select i1 %i.ntz, i64 4, i64 %i.nty
  %n.vec4193 = sub i64 %i.ntl, %i.nua             ; 2 uses
  %i.nub = shl i64 %n.vec4193, 1
  %i.nuc = add i64 %i.nub, %i.ntf
  %broadcast.splatinsert4194 = insertelement <4 x i64> poison, i64 %i.ntf, i64 0
  %broadcast.splat4195 = shufflevector <4 x i64> %broadcast.splatinsert4194, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction4196 = add nuw nsw <4 x i64> %broadcast.splat4195, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4926 = getelementptr [4 x i8], ptr %i.nte, i64 %i.ntf
  br label %vector.body4197

vector.body4197:                                  ; preds = %vector.body4197, %vector.ph4192
  %index4198 = phi i64 [ 0, %vector.ph4192 ], [ %index.next4218, %vector.body4197 ] ; 2 uses
  %vec.ind4199 = phi <4 x i64> [ %induction4196, %vector.ph4192 ], [ %vec.ind.next4219, %vector.body4197 ] ; 2 uses
  %wide.gep4200 = getelementptr inbounds nuw [4 x i8], ptr %i.ntd, <4 x i64> %vec.ind4199 ; 2 uses
  %i.nud = extractelement <4 x ptr> %wide.gep4200, i64 0 ; 4 uses
  %.idx4617 = shl nuw i64 %index4198, 3
  %gep4927 = getelementptr i8, ptr %invariant.gep4926, i64 %.idx4617 ; 4 uses
  %wide.vec4201 = load <8 x float>, ptr %gep4927, align 4, !tbaa !22, !alias.scope !431, !noalias !402 ; 2 uses
  %strided.vec4202 = shufflevector <8 x float> %wide.vec4201, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec4203 = shufflevector <8 x float> %wide.vec4201, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nue = getelementptr inbounds i8, ptr %i.nud, i64 -544
  %wide.vec4204 = load <8 x float>, ptr %i.nue, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4205 = shufflevector <8 x float> %wide.vec4204, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nuf = getelementptr inbounds i8, ptr %gep4927, i64 -544
  %wide.vec4206 = load <8 x float>, ptr %i.nuf, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4207 = shufflevector <8 x float> %wide.vec4206, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nug = getelementptr inbounds i8, ptr %i.nud, i64 -4
  %wide.vec4208 = load <8 x float>, ptr %i.nug, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4209 = shufflevector <8 x float> %wide.vec4208, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nuh = getelementptr inbounds i8, ptr %gep4927, i64 -4
  %wide.vec4210 = load <8 x float>, ptr %i.nuh, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4211 = shufflevector <8 x float> %wide.vec4210, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nui = getelementptr inbounds nuw i8, ptr %i.nud, i64 4
  %wide.vec4212 = load <8 x float>, ptr %i.nui, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4213 = shufflevector <8 x float> %wide.vec4212, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nuj = getelementptr inbounds nuw i8, ptr %i.nud, i64 544
  %wide.vec4214 = load <8 x float>, ptr %i.nuj, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4215 = shufflevector <8 x float> %wide.vec4214, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nuk = getelementptr inbounds nuw i8, ptr %gep4927, i64 544
  %wide.vec4216 = load <8 x float>, ptr %i.nuk, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4217 = shufflevector <8 x float> %wide.vec4216, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nul = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4205, %strided.vec4209
  %i.num = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4207, %strided.vec4211
  %i.nun = fadd reassoc nsz arcp contract afn <4 x float> %i.nul, %strided.vec4213
  %i.nuo = fadd reassoc nsz arcp contract afn <4 x float> %i.num, %strided.vec4203
  %i.nup = fadd reassoc nsz arcp contract afn <4 x float> %i.nun, %strided.vec4215
  %i.nuq = fadd reassoc nsz arcp contract afn <4 x float> %i.nuo, %strided.vec4217
  %i.nur = fsub reassoc nsz arcp contract afn <4 x float> %i.nup, %i.nuq
  %i.nus = fmul reassoc nsz arcp contract afn <4 x float> %i.nur, splat (float 2.500000e-01)
  %i.nut = fadd reassoc nsz arcp contract afn <4 x float> %i.nus, %strided.vec4202
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.nut, <4 x ptr> align 4 %wide.gep4200, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !434, !noalias !436
  %index.next4218 = add nuw i64 %index4198, 4     ; 2 uses
  %vec.ind.next4219 = add nuw nsw <4 x i64> %vec.ind4199, splat (i64 8)
  %i.nuu = icmp eq i64 %index.next4218, %n.vec4193
  br i1 %i.nuu, label %scalar.ph4190.preheader, label %vector.body4197, !llvm.loop !437

._crit_edge1075.i:                                ; preds = %scalar.ph4190, %.preheader1015.i.a
  %indvars.iv.next1263.i = add nuw nsw i64 %indvars.iv1262.i, 1 ; 2 uses
  %exitcond1132.not = icmp eq i64 %indvars.iv.next1263.i, %smax1134
  %indvar.next4178 = add i64 %indvar4177, 1
  br i1 %exitcond1132.not, label %._crit_edge1078.i, label %.preheader1015.i.a

scalar.ph4190:                                    ; preds = %scalar.ph4190.preheader, %scalar.ph4190
  %indvars.iv1259.i = phi i64 [ %indvars.iv.next1260.i, %scalar.ph4190 ], [ %indvars.iv1259.i.ph, %scalar.ph4190.preheader ] ; 3 uses
  %i.nuv = getelementptr inbounds nuw [4 x i8], ptr %i.ntd, i64 %indvars.iv1259.i ; 5 uses
  %i.nuw = getelementptr inbounds nuw [4 x i8], ptr %i.nte, i64 %indvars.iv1259.i ; 5 uses
  %i.nux = load float, ptr %i.nuw, align 4, !tbaa !22, !noalias !402
  %i.nuy = getelementptr inbounds i8, ptr %i.nuv, i64 -544
  %i.nuz = load float, ptr %i.nuy, align 4, !tbaa !22, !noalias !402
  %i.nva = getelementptr inbounds i8, ptr %i.nuw, i64 -544
  %i.nvb = load float, ptr %i.nva, align 4, !tbaa !22, !noalias !402
  %i.nvc = getelementptr inbounds i8, ptr %i.nuv, i64 -4
  %i.nvd = load float, ptr %i.nvc, align 4, !tbaa !22, !noalias !402
  %i.nve = getelementptr inbounds i8, ptr %i.nuw, i64 -4
  %i.nvf = load float, ptr %i.nve, align 4, !tbaa !22, !noalias !402
  %i.nvg = getelementptr inbounds nuw i8, ptr %i.nuv, i64 4
  %i.nvh = load float, ptr %i.nvg, align 4, !tbaa !22, !noalias !402
  %i.nvi = getelementptr inbounds nuw i8, ptr %i.nuw, i64 4
  %i.nvj = load float, ptr %i.nvi, align 4, !tbaa !22, !noalias !402
  %i.nvk = getelementptr inbounds nuw i8, ptr %i.nuv, i64 544
  %i.nvl = load float, ptr %i.nvk, align 4, !tbaa !22, !noalias !402
  %i.nvm = getelementptr inbounds nuw i8, ptr %i.nuw, i64 544
  %i.nvn = load float, ptr %i.nvm, align 4, !tbaa !22, !noalias !402
  %i.nvo = fadd reassoc nsz arcp contract afn float %i.nuz, %i.nvd
  %i.nvp = fadd reassoc nsz arcp contract afn float %i.nvb, %i.nvf
  %i.nvq = fadd reassoc nsz arcp contract afn float %i.nvo, %i.nvh
  %i.nvr = fadd reassoc nsz arcp contract afn float %i.nvp, %i.nvj
  %i.nvs = fadd reassoc nsz arcp contract afn float %i.nvq, %i.nvl
  %i.nvt = fadd reassoc nsz arcp contract afn float %i.nvr, %i.nvn
  %i.nvu = fsub reassoc nsz arcp contract afn float %i.nvs, %i.nvt
  %i.nvv = fmul reassoc nsz arcp contract afn float %i.nvu, 2.500000e-01
  %i.nvw = fadd reassoc nsz arcp contract afn float %i.nvv, %i.nux
  store float %i.nvw, ptr %i.nuv, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1260.i = add nuw nsw i64 %indvars.iv1259.i, 2 ; 2 uses
  %9 = icmp slt i64 %indvars.iv.next1260.i, %i.nir
  br i1 %9, label %scalar.ph4190, label %._crit_edge1075.i, !llvm.loop !438

.preheader1014.i:                                 ; preds = %._crit_edge1123.i, %._crit_edge1078.i
  %i.nvx = icmp sgt i32 %i.mbi, 0
  %or.cond1373.i = select i1 %i.lyd, i1 %i.nvx, i1 false
  br i1 %or.cond1373.i, label %.preheader1009.i.preheader, label %.preheader1013.i

.preheader1009.i.preheader:                       ; preds = %.preheader1014.i
  %xtraiter4799 = and i64 %i.mad, 3               ; 3 uses
  %i.nvy = add i32 %smin4798, -1
  %i.nvz = icmp ult i32 %i.nvy, 3
  %unroll_iter4803 = and i64 %i.mad, -4
  %lcmp.mod4801.not = icmp eq i64 %xtraiter4799, 0
  %lcmp.mod4802 = icmp ne i64 %xtraiter4799, 0
  br label %.preheader1009.i

.preheader1011.i:                                 ; preds = %._crit_edge1123.i, %.preheader1011.lr.ph.i
  %.09201132.i = phi i32 [ 0, %.preheader1011.lr.ph.i ], [ %i.olg, %._crit_edge1123.i ]
  br i1 %brmerge.i557, label %.preheader1010.i, label %.preheader1006.i

.preheader1010.i:                                 ; preds = %._crit_edge1082.1.i, %.preheader1011.i
  br i1 %i.lyo, label %.lr.ph1122.i, label %._crit_edge1123.i

.preheader1006.i:                                 ; preds = %.preheader1011.i, %._crit_edge1082.1.i
  %indvars.iv1272.i = phi i64 [ %indvars.iv.next1273.i, %._crit_edge1082.1.i ], [ 1, %.preheader1011.i ] ; 2 uses
  %i.nwa = mul nuw nsw i64 %indvars.iv1272.i, 136 ; 5 uses
  %i.nwb = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.nwa ; 4 uses
  %i.nwc = getelementptr inbounds nuw [4 x i8], ptr %i.lxc, i64 %i.nwa ; 2 uses
  %i.nwd = getelementptr inbounds nuw [4 x i8], ptr %i.lwy, i64 %i.nwa ; 2 uses
  br i1 %min.iters.check4149, label %scalar.ph4148.preheader, label %vector.body4152

vector.body4152:                                  ; preds = %.preheader1006.i, %vector.body4152
  %index4153 = phi i64 [ %index.next4172, %vector.body4152 ], [ 0, %.preheader1006.i ] ; 2 uses
  %i.nwe = or disjoint i64 %index4153, 1          ; 3 uses
  %i.nwf = getelementptr inbounds nuw [4 x i8], ptr %i.nwc, i64 %i.nwe
  %i.nwg = getelementptr inbounds nuw [4 x i8], ptr %i.nwd, i64 %i.nwe ; 9 uses
  %i.nwh = getelementptr inbounds nuw [4 x i8], ptr %i.nwb, i64 %i.nwe ; 9 uses
  %i.nwi = getelementptr inbounds i8, ptr %i.nwg, i64 -548
  %wide.load4154 = load <8 x float>, ptr %i.nwi, align 32, !tbaa !22, !noalias !402
  %i.nwj = getelementptr inbounds i8, ptr %i.nwh, i64 -548
  %wide.load4155 = load <8 x float>, ptr %i.nwj, align 32, !tbaa !22, !noalias !402
  %i.nwk = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4154, %wide.load4155 ; 4 uses
  %i.nwl = getelementptr inbounds i8, ptr %i.nwg, i64 -544
  %wide.load4156 = load <8 x float>, ptr %i.nwl, align 4, !tbaa !22, !noalias !402
  %i.nwm = getelementptr inbounds i8, ptr %i.nwh, i64 -544
  %wide.load4157 = load <8 x float>, ptr %i.nwm, align 4, !tbaa !22, !noalias !402
  %i.nwn = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4156, %wide.load4157 ; 4 uses
  %i.nwo = getelementptr inbounds i8, ptr %i.nwg, i64 -540
  %wide.load4158 = load <8 x float>, ptr %i.nwo, align 8, !tbaa !22, !noalias !402
  %i.nwp = getelementptr inbounds i8, ptr %i.nwh, i64 -540
  %wide.load4159 = load <8 x float>, ptr %i.nwp, align 8, !tbaa !22, !noalias !402
  %i.nwq = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4158, %wide.load4159 ; 4 uses
  %i.nwr = getelementptr inbounds i8, ptr %i.nwg, i64 -4
  %wide.load4160 = load <8 x float>, ptr %i.nwr, align 32, !tbaa !22, !noalias !402
  %i.nws = getelementptr inbounds i8, ptr %i.nwh, i64 -4
  %wide.load4161 = load <8 x float>, ptr %i.nws, align 32, !tbaa !22, !noalias !402
  %i.nwt = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4160, %wide.load4161 ; 4 uses
  %wide.load4162 = load <8 x float>, ptr %i.nwg, align 4, !tbaa !22, !noalias !402
  %wide.load4163 = load <8 x float>, ptr %i.nwh, align 4, !tbaa !22, !noalias !402
  %i.nwu = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4162, %wide.load4163 ; 4 uses
  %i.nwv = getelementptr inbounds nuw i8, ptr %i.nwg, i64 4
  %wide.load4164 = load <8 x float>, ptr %i.nwv, align 8, !tbaa !22, !noalias !402
  %i.nww = getelementptr inbounds nuw i8, ptr %i.nwh, i64 4
  %wide.load4165 = load <8 x float>, ptr %i.nww, align 8, !tbaa !22, !noalias !402
  %i.nwx = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4164, %wide.load4165 ; 4 uses
  %i.nwy = getelementptr inbounds nuw i8, ptr %i.nwg, i64 540
  %wide.load4166 = load <8 x float>, ptr %i.nwy, align 32, !tbaa !22, !noalias !402
  %i.nwz = getelementptr inbounds nuw i8, ptr %i.nwh, i64 540
  %wide.load4167 = load <8 x float>, ptr %i.nwz, align 32, !tbaa !22, !noalias !402
  %i.nxa = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4166, %wide.load4167 ; 4 uses
  %i.nxb = getelementptr inbounds nuw i8, ptr %i.nwg, i64 544
  %wide.load4168 = load <8 x float>, ptr %i.nxb, align 4, !tbaa !22, !noalias !402
  %i.nxc = getelementptr inbounds nuw i8, ptr %i.nwh, i64 544
  %wide.load4169 = load <8 x float>, ptr %i.nxc, align 4, !tbaa !22, !noalias !402
  %i.nxd = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4168, %wide.load4169 ; 4 uses
  %i.nxe = getelementptr inbounds nuw i8, ptr %i.nwg, i64 548
  %wide.load4170 = load <8 x float>, ptr %i.nxe, align 8, !tbaa !22, !noalias !402
  %i.nxf = getelementptr inbounds nuw i8, ptr %i.nwh, i64 548
  %wide.load4171 = load <8 x float>, ptr %i.nxf, align 8, !tbaa !22, !noalias !402
  %i.nxg = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4170, %wide.load4171 ; 4 uses
  %i.nxh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nwn, %i.nwq
  %i.nxi = select reassoc nsz arcp contract afn <8 x i1> %i.nxh, <8 x float> %i.nwn, <8 x float> %i.nwq ; 4 uses
  %i.nxj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nwn, %i.nwq
  %i.nxk = select reassoc nsz arcp contract afn <8 x i1> %i.nxj, <8 x float> %i.nwn, <8 x float> %i.nwq ; 4 uses
  %i.nxl = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nwu, %i.nwx
  %i.nxm = select reassoc nsz arcp contract afn <8 x i1> %i.nxl, <8 x float> %i.nwu, <8 x float> %i.nwx ; 4 uses
  %i.nxn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nwu, %i.nwx
  %i.nxo = select reassoc nsz arcp contract afn <8 x i1> %i.nxn, <8 x float> %i.nwu, <8 x float> %i.nwx ; 4 uses
  %i.nxp = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nxd, %i.nxg
  %i.nxq = select reassoc nsz arcp contract afn <8 x i1> %i.nxp, <8 x float> %i.nxd, <8 x float> %i.nxg ; 4 uses
  %i.nxr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nxd, %i.nxg
  %i.nxs = select reassoc nsz arcp contract afn <8 x i1> %i.nxr, <8 x float> %i.nxd, <8 x float> %i.nxg ; 4 uses
  %i.nxt = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nwk, %i.nxi
  %i.nxu = select reassoc nsz arcp contract afn <8 x i1> %i.nxt, <8 x float> %i.nwk, <8 x float> %i.nxi ; 2 uses
  %i.nxv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nwk, %i.nxi
  %i.nxw = select reassoc nsz arcp contract afn <8 x i1> %i.nxv, <8 x float> %i.nwk, <8 x float> %i.nxi ; 4 uses
  %i.nxx = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nwt, %i.nxm
  %i.nxy = select reassoc nsz arcp contract afn <8 x i1> %i.nxx, <8 x float> %i.nwt, <8 x float> %i.nxm ; 2 uses
  %i.nxz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nwt, %i.nxm
  %i.nya = select reassoc nsz arcp contract afn <8 x i1> %i.nxz, <8 x float> %i.nwt, <8 x float> %i.nxm ; 4 uses
  %i.nyb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nxa, %i.nxq
  %i.nyc = select reassoc nsz arcp contract afn <8 x i1> %i.nyb, <8 x float> %i.nxa, <8 x float> %i.nxq ; 2 uses
  %i.nyd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nxa, %i.nxq
  %i.nye = select reassoc nsz arcp contract afn <8 x i1> %i.nyd, <8 x float> %i.nxa, <8 x float> %i.nxq ; 4 uses
  %i.nyf = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nxw, %i.nxk
  %i.nyg = select reassoc nsz arcp contract afn <8 x i1> %i.nyf, <8 x float> %i.nxw, <8 x float> %i.nxk ; 2 uses
  %i.nyh = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nxw, %i.nxk
  %i.nyi = select reassoc nsz arcp contract afn <8 x i1> %i.nyh, <8 x float> %i.nxw, <8 x float> %i.nxk ; 2 uses
  %i.nyj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nya, %i.nxo
  %i.nyk = select reassoc nsz arcp contract afn <8 x i1> %i.nyj, <8 x float> %i.nya, <8 x float> %i.nxo ; 4 uses
  %i.nyl = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nya, %i.nxo
  %i.nym = select reassoc nsz arcp contract afn <8 x i1> %i.nyl, <8 x float> %i.nya, <8 x float> %i.nxo ; 2 uses
  %i.nyn = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nye, %i.nxs
  %i.nyo = select reassoc nsz arcp contract afn <8 x i1> %i.nyn, <8 x float> %i.nye, <8 x float> %i.nxs ; 4 uses
  %i.nyp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nye, %i.nxs
  %i.nyq = select reassoc nsz arcp contract afn <8 x i1> %i.nyp, <8 x float> %i.nye, <8 x float> %i.nxs ; 2 uses
  %i.nyr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nxu, %i.nxy
  %i.nys = select reassoc nsz arcp contract afn <8 x i1> %i.nyr, <8 x float> %i.nxu, <8 x float> %i.nxy ; 2 uses
  %i.nyt = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nym, %i.nyq
  %i.nyu = select reassoc nsz arcp contract afn <8 x i1> %i.nyt, <8 x float> %i.nym, <8 x float> %i.nyq ; 2 uses
  %i.nyv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nyk, %i.nyo
  %i.nyw = select reassoc nsz arcp contract afn <8 x i1> %i.nyv, <8 x float> %i.nyk, <8 x float> %i.nyo ; 2 uses
  %i.nyx = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nyk, %i.nyo
  %i.nyy = select reassoc nsz arcp contract afn <8 x i1> %i.nyx, <8 x float> %i.nyk, <8 x float> %i.nyo ; 2 uses
  %i.nyz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nys, %i.nyc
  %i.nza = select reassoc nsz arcp contract afn <8 x i1> %i.nyz, <8 x float> %i.nys, <8 x float> %i.nyc ; 2 uses
  %i.nzb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nyg, %i.nyy
  %i.nzc = select reassoc nsz arcp contract afn <8 x i1> %i.nzb, <8 x float> %i.nyg, <8 x float> %i.nyy ; 2 uses
  %i.nzd = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nyi, %i.nyu
  %i.nze = select reassoc nsz arcp contract afn <8 x i1> %i.nzd, <8 x float> %i.nyi, <8 x float> %i.nyu ; 4 uses
  %i.nzf = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nzc, %i.nyw
  %i.nzg = select reassoc nsz arcp contract afn <8 x i1> %i.nzf, <8 x float> %i.nzc, <8 x float> %i.nyw ; 4 uses
  %i.nzh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nzg, %i.nze
  %i.nzi = select reassoc nsz arcp contract afn <8 x i1> %i.nzh, <8 x float> %i.nzg, <8 x float> %i.nze ; 2 uses
  %i.nzj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nzg, %i.nze
  %i.nzk = select reassoc nsz arcp contract afn <8 x i1> %i.nzj, <8 x float> %i.nzg, <8 x float> %i.nze ; 2 uses
  %i.nzl = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nza, %i.nzi
  %i.nzm = select reassoc nsz arcp contract afn <8 x i1> %i.nzl, <8 x float> %i.nza, <8 x float> %i.nzi ; 2 uses
  %i.nzn = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nzk, %i.nzm
  %i.nzo = select reassoc nsz arcp contract afn <8 x i1> %i.nzn, <8 x float> %i.nzk, <8 x float> %i.nzm
  store <8 x float> %i.nzo, ptr %i.nwf, align 4, !tbaa !22, !noalias !402
  %index.next4172 = add nuw i64 %index4153, 8     ; 2 uses
  %i.nzp = icmp eq i64 %index.next4172, %n.vec4151
  br i1 %i.nzp, label %middle.block4173, label %vector.body4152, !llvm.loop !439

middle.block4173:                                 ; preds = %vector.body4152
  br i1 %cmp.n4174, label %._crit_edge1082.i, label %scalar.ph4148.preheader

scalar.ph4148.preheader:                          ; preds = %.preheader1006.i, %middle.block4173
  %indvars.iv1265.i.ph = phi i64 [ 1, %.preheader1006.i ], [ %i.nrj, %middle.block4173 ]
  br label %scalar.ph4148

._crit_edge1082.i:                                ; preds = %scalar.ph4148, %middle.block4173
  %i.nzq = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.nwa ; 2 uses
  %i.nzr = getelementptr inbounds nuw [4 x i8], ptr %i.lxb, i64 %i.nwa ; 2 uses
  br i1 %min.iters.check4121, label %scalar.ph4120.preheader, label %vector.body4124

vector.body4124:                                  ; preds = %._crit_edge1082.i, %vector.body4124
  %index4125 = phi i64 [ %index.next4144, %vector.body4124 ], [ 0, %._crit_edge1082.i ] ; 2 uses
  %i.nzs = or disjoint i64 %index4125, 1          ; 3 uses
  %i.nzt = getelementptr inbounds nuw [4 x i8], ptr %i.nzq, i64 %i.nzs
  %i.nzu = getelementptr inbounds nuw [4 x i8], ptr %i.nzr, i64 %i.nzs ; 9 uses
  %i.nzv = getelementptr inbounds nuw [4 x i8], ptr %i.nwb, i64 %i.nzs ; 9 uses
  %i.nzw = getelementptr inbounds i8, ptr %i.nzu, i64 -548
  %wide.load4126 = load <8 x float>, ptr %i.nzw, align 32, !tbaa !22, !noalias !402
  %i.nzx = getelementptr inbounds i8, ptr %i.nzv, i64 -548
  %wide.load4127 = load <8 x float>, ptr %i.nzx, align 32, !tbaa !22, !noalias !402
  %i.nzy = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4126, %wide.load4127 ; 4 uses
  %i.nzz = getelementptr inbounds i8, ptr %i.nzu, i64 -544
  %wide.load4128 = load <8 x float>, ptr %i.nzz, align 4, !tbaa !22, !noalias !402
  %i.oaa = getelementptr inbounds i8, ptr %i.nzv, i64 -544
  %wide.load4129 = load <8 x float>, ptr %i.oaa, align 4, !tbaa !22, !noalias !402
  %i.oab = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4128, %wide.load4129 ; 4 uses
  %i.oac = getelementptr inbounds i8, ptr %i.nzu, i64 -540
  %wide.load4130 = load <8 x float>, ptr %i.oac, align 8, !tbaa !22, !noalias !402
  %i.oad = getelementptr inbounds i8, ptr %i.nzv, i64 -540
  %wide.load4131 = load <8 x float>, ptr %i.oad, align 8, !tbaa !22, !noalias !402
  %i.oae = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4130, %wide.load4131 ; 4 uses
  %i.oaf = getelementptr inbounds i8, ptr %i.nzu, i64 -4
  %wide.load4132 = load <8 x float>, ptr %i.oaf, align 32, !tbaa !22, !noalias !402
  %i.oag = getelementptr inbounds i8, ptr %i.nzv, i64 -4
  %wide.load4133 = load <8 x float>, ptr %i.oag, align 32, !tbaa !22, !noalias !402
  %i.oah = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4132, %wide.load4133 ; 4 uses
  %wide.load4134 = load <8 x float>, ptr %i.nzu, align 4, !tbaa !22, !noalias !402
  %wide.load4135 = load <8 x float>, ptr %i.nzv, align 4, !tbaa !22, !noalias !402
  %i.oai = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4134, %wide.load4135 ; 4 uses
  %i.oaj = getelementptr inbounds nuw i8, ptr %i.nzu, i64 4
  %wide.load4136 = load <8 x float>, ptr %i.oaj, align 8, !tbaa !22, !noalias !402
  %i.oak = getelementptr inbounds nuw i8, ptr %i.nzv, i64 4
  %wide.load4137 = load <8 x float>, ptr %i.oak, align 8, !tbaa !22, !noalias !402
  %i.oal = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4136, %wide.load4137 ; 4 uses
  %i.oam = getelementptr inbounds nuw i8, ptr %i.nzu, i64 540
  %wide.load4138 = load <8 x float>, ptr %i.oam, align 32, !tbaa !22, !noalias !402
  %i.oan = getelementptr inbounds nuw i8, ptr %i.nzv, i64 540
  %wide.load4139 = load <8 x float>, ptr %i.oan, align 32, !tbaa !22, !noalias !402
  %i.oao = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4138, %wide.load4139 ; 4 uses
  %i.oap = getelementptr inbounds nuw i8, ptr %i.nzu, i64 544
  %wide.load4140 = load <8 x float>, ptr %i.oap, align 4, !tbaa !22, !noalias !402
  %i.oaq = getelementptr inbounds nuw i8, ptr %i.nzv, i64 544
  %wide.load4141 = load <8 x float>, ptr %i.oaq, align 4, !tbaa !22, !noalias !402
  %i.oar = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4140, %wide.load4141 ; 4 uses
end_hunk_3
begin_hunk_4_@green_equilibration_lavg:bb.a
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cw, float 0.000000e+00)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  store float %i.cx, ptr %i.cy, align 4, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.cz = add i64 %.0112123.us, 2                 ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.t
  br i1 %i.da, label %bb.b, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.f
  %i.db = icmp ult i64 %i.ae, %i.p
  br i1 %i.db, label %.preheader.us, label %._crit_edge125

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.0111124 = phi i64 [ %i.dc, %.preheader ], [ %i.r, %.preheader.lr.ph ]
  %i.dc = add i64 %.0111124, 2                    ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.p
  br i1 %i.dd, label %.preheader, label %._crit_edge125

._crit_edge125:                                   ; preds = %.preheader, %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @vng_interpolate(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #9 {
bb.a:
  %i.a = alloca [16 x [16 x ptr]], align 16       ; 4 uses
  %i.b = alloca [8 x float], align 16             ; 14 uses
  %i.c = alloca [4 x float], align 16             ; 41 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %.not406 = icmp eq i32 %4, 9                    ; 4 uses
  switch i32 %4, label %switch.edge [
    i32 -505290271, label %switch.edge.thread
    i32 -1263225676, label %switch.edge.thread
    i32 1263225675, label %switch.edge.thread
    i32 505290270, label %switch.edge.thread
    i32 -1667457892, label %switch.edge.thread
    i32 1667457891, label %switch.edge.thread
    i32 909522486, label %switch.edge.thread
    i32 -909522487, label %switch.edge.thread
  ]

switch.edge.thread:                               ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = select i1 %.not406, i32 6, i32 8
  %i.e = select i1 %.not406, i32 6, i32 2
  %i.f = select i1 %.not406, i64 3, i64 4
  br label %bb.e

switch.edge:                                      ; preds = %bb.a
  br i1 %.not406, label %bb.e, label %bb.b

bb.b:                                             ; preds = %switch.edge
  %i.g = and i32 %4, 3
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = or i32 %4, 50529027
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = or i32 %4, 202116108
  br label %bb.e

bb.e:                                             ; preds = %switch.edge.thread, %switch.edge, %bb.c, %bb.d
  %spec.select332 = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ false, %switch.edge ], [ false, %switch.edge.thread ]
  %.pre478 = phi i64 [ 4, %bb.d ], [ 4, %bb.c ], [ 3, %switch.edge ], [ %i.f, %switch.edge.thread ] ; 28 uses
  %i.k = phi i32 [ 2, %bb.d ], [ 2, %bb.c ], [ 6, %switch.edge ], [ %i.e, %switch.edge.thread ] ; 3 uses
  %i.l = phi i32 [ 8, %bb.d ], [ 8, %bb.c ], [ 6, %switch.edge ], [ %i.d, %switch.edge.thread ] ; 3 uses
  %.0270 = phi i32 [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ 9, %switch.edge ], [ %4, %switch.edge.thread ] ; 21 uses
  tail call fastcc void @_vng_lininterpolate(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %.0270, ptr noundef %5, i32 noundef 1000000)
  %.not = icmp eq i32 %6, 0
  %i.m = sext i32 %2 to i64                       ; 4 uses
  br i1 %.not, label %bb.f, label %._crit_edge470

bb.f:                                             ; preds = %bb.e
  %i.n = mul nsw i64 %i.m, 48                     ; 2 uses
  %narrow = mul nuw nsw i32 %i.k, 1280
  %narrow300 = mul nuw nsw i32 %narrow, %i.l
  %i.o = zext nneg i32 %narrow300 to i64
  %i.p = add nsw i64 %i.n, %i.o
  %i.q = tail call ptr @dt_alloc_aligned(i64 noundef %i.p) #27 ; 7 uses
  %.not301 = icmp eq ptr %i.q, null
  br i1 %.not301, label %bb.g, label %.preheader367.preheader

.preheader367.preheader:                          ; preds = %bb.f
  %i.r = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.m ; 2 uses
  %.idx = shl nsw i64 %i.m, 5
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %.idx
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %i.u = icmp eq i32 %.0270, 9                    ; 3 uses
  %wide.trip.count418 = zext nneg i32 %i.l to i64
  %wide.trip.count = zext nneg i32 %i.k to i64
  %i.v = sub nsw i32 0, %2                        ; 2 uses
  %i.w = xor i32 %2, -1                           ; 2 uses
  %i.x = shl nsw i32 %i.w, 2
  %i.y = shl nsw i32 %i.w, 3
  %i.z = shl nsw i32 %i.v, 2
  %i.aa = shl nsw i32 %i.v, 3
  %i.ab = sub i32 1, %2                           ; 2 uses
  %i.ac = shl nsw i32 %i.ab, 2
  %i.ad = shl nsw i32 %i.ab, 3
  %i.ae = add nsw i32 %2, 1                       ; 2 uses
  %i.af = shl nsw i32 %i.ae, 2
  %i.ag = shl nsw i32 %i.ae, 3
  %i.ah = shl nsw i32 %2, 2
  %i.ai = shl nsw i32 %2, 3
  %i.aj = add nsw i32 %2, -1                      ; 2 uses
  %i.ak = shl nsw i32 %i.aj, 2
  %i.al = shl nsw i32 %i.aj, 3
  %i.am = insertelement <2 x i32> poison, i32 %.0270, i64 0
  %i.an = shufflevector <2 x i32> %i.am, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ao = xor i32 %2, -1                          ; 2 uses
  %i.ap = shl nsw i32 %i.ao, 2
  %i.aq = shl nsw i32 %i.ao, 3
  %i.ar = sub nsw i32 0, %2                       ; 2 uses
  %i.as = shl nsw i32 %i.ar, 2
  %i.at = shl nsw i32 %i.ar, 3
  %i.au = sub i32 1, %2                           ; 2 uses
  %i.av = shl nsw i32 %i.au, 2
  %i.aw = shl nsw i32 %i.au, 3
  %i.ax = add nsw i32 %2, 1                       ; 2 uses
  %i.ay = shl nsw i32 %i.ax, 2
  %i.az = shl nsw i32 %i.ax, 3
  %i.ba = shl nsw i32 %2, 2
  %i.bb = shl nsw i32 %2, 3
  %i.bc = add nsw i32 %2, -1                      ; 2 uses
  %i.bd = shl nsw i32 %i.bc, 2
  %i.be = shl nsw i32 %i.bc, 3
  br label %.preheader366

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.211) #27
  br label %.loopexit

.preheader366:                                    ; preds = %.preheader367.preheader, %bb.h
  %indvars.iv415 = phi i64 [ 0, %.preheader367.preheader ], [ %indvars.iv.next416, %bb.h ] ; 8 uses
  %.0268383 = phi ptr [ %i.t, %.preheader367.preheader ], [ %.us-phi, %bb.h ]
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %indvars.iv415
  %i.bg = shl nuw nsw i64 %indvars.iv415, 1       ; 8 uses
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 14                       ; 3 uses
  %i.bj = trunc i64 %i.bg to i32
  %i.bk = add i32 %i.bj, 2
  %i.bl = and i32 %i.bk, 14
  %i.bm = trunc i64 %indvars.iv415 to i32
  %i.bn = add i32 %i.bm, 600                      ; 3 uses
  %i.bo = urem i32 %i.bn, 6
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.bp ; 2 uses
  %i.br = trunc i64 %indvars.iv415 to i32
  %i.bs = add i32 %i.br, 601
  %i.bt = urem i32 %i.bs, 6
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.bu
  %i.bw = trunc nuw nsw i64 %indvars.iv415 to i32 ; 2 uses
  %indvars.iv415.tr = trunc i64 %indvars.iv415 to i32
  %i.bx = shl i32 %indvars.iv415.tr, 1
  %i.by = add i32 %i.bx, 14
  %i.bz = and i32 %i.by, 14                       ; 3 uses
  %i.ca = trunc i64 %i.bg to i32
  %i.cb = add i32 %i.ca, 12
  %i.cc = and i32 %i.cb, 14
  %i.cd = trunc i64 %i.bg to i32
  %i.ce = add i32 %i.cd, 12
  %i.cf = and i32 %i.ce, 14
  %i.cg = trunc i64 %i.bg to i32
  %i.ch = add i32 %i.cg, 12
  %i.ci = and i32 %i.ch, 14
  %indvars.iv415.tr510 = trunc i64 %indvars.iv415 to i32
  %i.cj = shl i32 %indvars.iv415.tr510, 1
  %i.ck = add i32 %i.cj, 2
  %i.cl = and i32 %i.ck, 14                       ; 3 uses
  %i.cm = trunc i64 %i.bg to i32
  %i.cn = add i32 %i.cm, 4
  %i.co = and i32 %i.cn, 14
  %i.cp = trunc i64 %i.bg to i32
  %i.cq = add i32 %i.cp, 4
  %i.cr = and i32 %i.cq, 14
  %i.cs = trunc i64 %i.bg to i32
  %i.ct = add i32 %i.cs, 4
  %i.cu = and i32 %i.ct, 14
  br label %bb.i

.preheader365:                                    ; preds = %bb.h
  %i.cv = icmp sgt i32 %3, 4
  br i1 %i.cv, label %.preheader364.lr.ph, label %.preheader365.._crit_edge402_crit_edge

.preheader365.._crit_edge402_crit_edge:           ; preds = %.preheader365
  %.pre471 = shl i32 %2, 2                        ; 2 uses
  %.pre472 = add i32 %.pre471, -16
  %.pre474 = sext i32 %.pre472 to i64
  br label %._crit_edge402

.preheader364.lr.ph:                              ; preds = %.preheader365
  %i.cw = add nsw i32 %3, -2
  %i.cx = add i32 %2, -2
  %i.cy = icmp sgt i32 %2, 4
  %i.cz = shl i32 %2, 2                           ; 3 uses
  %i.da = add i32 %i.cz, -16
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %wide.trip.count450 = zext nneg i32 %i.cw to i64
  %wide.trip.count441 = zext nneg i32 %i.cx to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.phi.trans.insert457 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert459 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.phi.trans.insert461 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert463 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.phi.trans.insert465 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.phi.trans.insert467 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.dc = add nsw i64 %.pre478, -1                ; 8 uses
  %xtraiter = and i64 %.pre478, 1
  %i.dd = icmp eq i64 %i.dc, 0
  %unroll_iter = and i64 %.pre478, 6
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod673 = trunc i64 %.pre478 to i1
  %xtraiter678 = and i64 %.pre478, 1
  %i.de = icmp eq i64 %i.dc, 0
  %unroll_iter681 = and i64 %.pre478, 6
  %lcmp.mod679.not = icmp eq i64 %xtraiter678, 0
  %lcmp.mod680 = trunc i64 %.pre478 to i1
  %xtraiter685 = and i64 %.pre478, 1
  %i.df = icmp eq i64 %i.dc, 0
  %unroll_iter689 = and i64 %.pre478, 6
  %lcmp.mod686.not = icmp eq i64 %xtraiter685, 0
  %lcmp.mod688 = trunc i64 %.pre478 to i1
  %xtraiter693 = and i64 %.pre478, 1
  %i.dg = icmp eq i64 %i.dc, 0
  %unroll_iter697 = and i64 %.pre478, 6
  %lcmp.mod694.not = icmp eq i64 %xtraiter693, 0
  %lcmp.mod696 = trunc i64 %.pre478 to i1
  %xtraiter701 = and i64 %.pre478, 1
  %i.dh = icmp eq i64 %i.dc, 0
  %unroll_iter705 = and i64 %.pre478, 6
  %lcmp.mod702.not = icmp eq i64 %xtraiter701, 0
  %lcmp.mod704 = trunc i64 %.pre478 to i1
  %xtraiter709 = and i64 %.pre478, 1
  %i.di = icmp eq i64 %i.dc, 0
  %unroll_iter713 = and i64 %.pre478, 6
  %lcmp.mod710.not = icmp eq i64 %xtraiter709, 0
  %lcmp.mod712 = trunc i64 %.pre478 to i1
  %xtraiter717 = and i64 %.pre478, 1
  %i.dj = icmp eq i64 %i.dc, 0
  %unroll_iter721 = and i64 %.pre478, 6
  %lcmp.mod718.not = icmp eq i64 %xtraiter717, 0
  %lcmp.mod720 = trunc i64 %.pre478 to i1
  %xtraiter725 = and i64 %.pre478, 1
  %i.dk = icmp eq i64 %i.dc, 0
  %unroll_iter729 = and i64 %.pre478, 6
  %lcmp.mod726.not = icmp eq i64 %xtraiter725, 0
  %lcmp.mod728 = trunc i64 %.pre478 to i1
  %xtraiter733 = and i64 %.pre478, 3              ; 3 uses
  %i.dl = icmp samesign ult i64 %.pre478, 4
  %unroll_iter737 = and i64 %.pre478, 4
  %lcmp.mod734.not = icmp eq i64 %xtraiter733, 0
  %lcmp.mod736 = icmp ne i64 %xtraiter733, 0
  br label %.preheader364

bb.h:                                             ; preds = %.split379.us
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next416, %wide.trip.count418
  br i1 %exitcond419.not, label %.preheader365, label %.preheader366

bb.i:                                             ; preds = %.preheader366, %.split379.us
  %indvars.iv = phi i64 [ 0, %.preheader366 ], [ %indvars.iv.next.pre-phi, %.split379.us ] ; 6 uses
  %.1269381 = phi ptr [ %.0268383, %.preheader366 ], [ %.us-phi, %.split379.us ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  store ptr %.1269381, ptr %i.dm, align 8, !tbaa !600
  %i.dn = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.do = and i32 %i.dn, 1                        ; 10 uses
  %i.dp = or disjoint i32 %i.do, %i.bi
  %.tr.i.i312 = shl nuw nsw i32 %i.dp, 1          ; 2 uses
  %i.dq = xor i32 %.tr.i.i312, 2
  %i.dr = lshr i32 %.0270, %i.dq
  %i.ds = and i32 %i.dr, 3                        ; 2 uses
  %.tr.i.i315 = or disjoint i32 %i.do, %i.bl
  %i.dt = shl nuw nsw i32 %.tr.i.i315, 1
  %i.du = lshr i32 %.0270, %i.dt
  %i.dv = and i32 %i.du, 3
  %i.dw = trunc i64 %indvars.iv to i32
  %i.dx = insertelement <2 x i32> poison, i32 %i.dw, i64 0
  %i.dy = shufflevector <2 x i32> %i.dx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dz = add <2 x i32> %i.dy, <i32 601, i32 600> ; 3 uses
  %i.ea = urem <2 x i32> %i.dz, splat (i32 6)     ; 2 uses
  %i.eb = extractelement <2 x i32> %i.ea, i64 0
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ec
  %i.ee = extractelement <2 x i32> %i.ea, i64 1
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ef
  br label %.outer

bb.j:                                             ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %.6, i64 4 ; 2 uses
  store i32 2147483647, ptr %.6, align 4, !tbaa !32
  br i1 %i.u, label %fcol.exit323.us.preheader, label %fcol.exit323.thread.preheader

fcol.exit323.thread.preheader:                    ; preds = %.thread514, %bb.j
  %i.ei = phi ptr [ %i.qf, %.thread514 ], [ %i.eh, %bb.j ]
  %.6513516 = phi ptr [ %.2373.ph, %.thread514 ], [ %.6, %bb.j ] ; 16 uses
  %.in = lshr i32 %.0270, %.tr.i.i312
  %i.ej = and i32 %.in, 3                         ; 22 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.6513516, i64 8
  store i32 %i.x, ptr %i.ei, align 4, !tbaa !32
  %i.el = trunc i64 %indvars.iv to i32
  %i.em = and i32 %i.el, 1
  %i.en = xor i32 %i.em, 1                        ; 3 uses
  %.tr.i.i321 = or disjoint i32 %i.bz, %i.en
  %i.eo = shl nuw nsw i32 %.tr.i.i321, 1
  %i.ep = lshr i32 %.0270, %i.eo
  %i.eq = and i32 %i.ep, 3
  %.not306356 = icmp eq i32 %i.eq, %i.ej
  br i1 %.not306356, label %fcol.exit323.thread.1, label %fcol.exit326

fcol.exit323.us.preheader:                        ; preds = %.thread520, %bb.j
  %i.er = phi ptr [ %i.qd, %.thread520 ], [ %i.eh, %bb.j ] ; 17 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ef ; 8 uses
  %i.et = insertelement <2 x i32> %i.dz, i32 %i.bn, i64 0 ; 16 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i32 %i.ap, ptr %i.er, align 4, !tbaa !32
  %i.ev = load i8, ptr %i.es, align 1, !tbaa !169 ; 3 uses
  %i.ew = add <2 x i32> %i.et, splat (i32 -1)
  %i.ex = srem <2 x i32> %i.ew, splat (i32 6)     ; 2 uses
  %i.ey = extractelement <2 x i32> %i.ex, i64 0
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [6 x i8], ptr %5, i64 %i.ez
  %i.fb = extractelement <2 x i32> %i.ex, i64 1
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !169
  %.not306.us = icmp eq i8 %i.fe, %i.ev
  br i1 %.not306.us, label %fcol.exit323.us.1, label %fcol.exit326.us

fcol.exit326.us:                                  ; preds = %fcol.exit323.us.preheader
  %i.ff = add <2 x i32> %i.et, splat (i32 -2)
  %i.fg = srem <2 x i32> %i.ff, splat (i32 6)     ; 2 uses
  %i.fh = extractelement <2 x i32> %i.fg, i64 0
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [6 x i8], ptr %5, i64 %i.fi
  %i.fk = extractelement <2 x i32> %i.fg, i64 1
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fj, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !169
  %i.fo = icmp eq i8 %i.fn, %i.ev
  br i1 %i.fo, label %bb.k, label %fcol.exit323.us.1

bb.k:                                             ; preds = %fcol.exit326.us
  %i.fp = zext i8 %i.ev to i32
  %i.fq = add nsw i32 %i.aq, %i.fp
  br label %fcol.exit323.us.1

fcol.exit323.us.1:                                ; preds = %bb.k, %fcol.exit326.us, %fcol.exit323.us.preheader
  %storemerge.us = phi i32 [ %i.fq, %bb.k ], [ 0, %fcol.exit326.us ], [ 0, %fcol.exit323.us.preheader ]
  %.8.us = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i32 %storemerge.us, ptr %i.eu, align 4, !tbaa !32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 %i.as, ptr %.8.us, align 4, !tbaa !32
  %i.fs = load i8, ptr %i.es, align 1, !tbaa !169 ; 3 uses
  %i.ft = add <2 x i32> %i.et, <i32 -1, i32 0>
  %i.fu = srem <2 x i32> %i.ft, splat (i32 6)     ; 2 uses
  %i.fv = extractelement <2 x i32> %i.fu, i64 0
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [6 x i8], ptr %5, i64 %i.fw
  %i.fy = extractelement <2 x i32> %i.fu, i64 1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fx, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !169
  %.not306.us.1 = icmp eq i8 %i.gb, %i.fs
  br i1 %.not306.us.1, label %fcol.exit323.us.2, label %fcol.exit326.us.1

fcol.exit326.us.1:                                ; preds = %fcol.exit323.us.1
  %i.gc = add <2 x i32> %i.et, <i32 -2, i32 0>
  %i.gd = srem <2 x i32> %i.gc, splat (i32 6)     ; 2 uses
  %i.ge = extractelement <2 x i32> %i.gd, i64 0
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [6 x i8], ptr %5, i64 %i.gf
  %i.gh = extractelement <2 x i32> %i.gd, i64 1
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %i.gg, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !169
  %i.gl = icmp eq i8 %i.gk, %i.fs
  br i1 %i.gl, label %bb.l, label %fcol.exit323.us.2

bb.l:                                             ; preds = %fcol.exit326.us.1
  %i.gm = zext i8 %i.fs to i32
  %i.gn = add nsw i32 %i.at, %i.gm
  br label %fcol.exit323.us.2

fcol.exit323.us.2:                                ; preds = %bb.l, %fcol.exit326.us.1, %fcol.exit323.us.1
  %storemerge.us.1 = phi i32 [ %i.gn, %bb.l ], [ 0, %fcol.exit326.us.1 ], [ 0, %fcol.exit323.us.1 ]
  %.8.us.1 = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i32 %storemerge.us.1, ptr %i.fr, align 4, !tbaa !32
  %i.go = getelementptr inbounds nuw i8, ptr %i.er, i64 20
  store i32 %i.av, ptr %.8.us.1, align 4, !tbaa !32
  %i.gp = load i8, ptr %i.es, align 1, !tbaa !169 ; 3 uses
  %i.gq = add <2 x i32> %i.et, <i32 -1, i32 1>
  %i.gr = srem <2 x i32> %i.gq, splat (i32 6)     ; 2 uses
end_hunk_4
begin_hunk_5_@demosaic_ppg:bb.a
  store float %.sink128252.i.i, ptr %i.ht, align 16, !tbaa !22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sink128253.i.i = phi float [ %i.mh, %bb.bj ], [ %.sink128252.i.i, %bb.bi ] ; 4 uses
  %i.mj = phi float [ %.sink128252.i.i, %bb.bj ], [ %i.mh, %bb.bi ] ; 4 uses
  %i.mk = fcmp reassoc nsz arcp contract afn ogt float %i.mj, %.sink129259.i.i
  br i1 %i.mk, label %bb.bl, label %.lr.ph98.5.i.i

bb.bl:                                            ; preds = %bb.bk
  store float %i.mj, ptr %i.id, align 16, !tbaa !22
  store float %.sink129259.i.i, ptr %i.ht, align 16, !tbaa !22
  br label %.lr.ph98.5.i.i

.lr.ph98.5.i.i:                                   ; preds = %bb.bl, %bb.bk
  %.sink129260.i.i = phi float [ %i.mj, %bb.bl ], [ %.sink129259.i.i, %bb.bk ] ; 3 uses
  %i.ml = phi float [ %.sink129259.i.i, %bb.bl ], [ %i.mj, %bb.bk ]
  %i.mm = fcmp reassoc nsz arcp contract afn ogt float %.sink126242.i.i, %.sink127247.i.i
  br i1 %i.mm, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph98.5.i.i
  store float %.sink126242.i.i, ptr %i.ib, align 8, !tbaa !22
  store float %.sink127247.i.i, ptr %i.ia, align 4, !tbaa !22
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph98.5.i.i
  %.sink127248.i.i = phi float [ %.sink126242.i.i, %bb.bm ], [ %.sink127247.i.i, %.lr.ph98.5.i.i ] ; 4 uses
  %i.mn = phi float [ %.sink127247.i.i, %bb.bm ], [ %.sink126242.i.i, %.lr.ph98.5.i.i ] ; 4 uses
  %i.mo = fcmp reassoc nsz arcp contract afn ogt float %i.mn, %.sink128253.i.i
  br i1 %i.mo, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store float %i.mn, ptr %i.ic, align 4, !tbaa !22
  store float %.sink128253.i.i, ptr %i.ia, align 4, !tbaa !22
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sink128254.i.i = phi float [ %i.mn, %bb.bo ], [ %.sink128253.i.i, %bb.bn ] ; 4 uses
  %i.mp = phi float [ %.sink128253.i.i, %bb.bo ], [ %i.mn, %bb.bn ] ; 3 uses
  %i.mq = fcmp reassoc nsz arcp contract afn ogt float %i.mp, %.sink129260.i.i
  br i1 %i.mq, label %bb.bq, label %.lr.ph98.6.i.i

bb.bq:                                            ; preds = %bb.bp
  store float %i.mp, ptr %i.id, align 16, !tbaa !22
  store float %.sink129260.i.i, ptr %i.ia, align 4, !tbaa !22
  br label %.lr.ph98.6.i.i

.lr.ph98.6.i.i:                                   ; preds = %bb.bq, %bb.bp
  %.sink129261.i.i = phi float [ %i.mp, %bb.bq ], [ %.sink129260.i.i, %bb.bp ] ; 3 uses
  %i.mr = fcmp reassoc nsz arcp contract afn ogt float %.sink127248.i.i, %.sink128254.i.i
  br i1 %i.mr, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph98.6.i.i
  store float %.sink127248.i.i, ptr %i.ic, align 4, !tbaa !22
  store float %.sink128254.i.i, ptr %i.ib, align 8, !tbaa !22
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph98.6.i.i
  %.sink128255.i.i = phi float [ %.sink127248.i.i, %bb.br ], [ %.sink128254.i.i, %.lr.ph98.6.i.i ] ; 2 uses
  %i.ms = phi float [ %.sink128254.i.i, %bb.br ], [ %.sink127248.i.i, %.lr.ph98.6.i.i ] ; 3 uses
  %i.mt = fcmp reassoc nsz arcp contract afn ogt float %i.ms, %.sink129261.i.i
  br i1 %i.mt, label %bb.bt, label %.lr.ph98.7.i.i

bb.bt:                                            ; preds = %bb.bs
  store float %i.ms, ptr %i.id, align 16, !tbaa !22
  store float %.sink129261.i.i, ptr %i.ib, align 8, !tbaa !22
  br label %.lr.ph98.7.i.i

.lr.ph98.7.i.i:                                   ; preds = %bb.bt, %bb.bs
  %.sink129262.i.i = phi float [ %i.ms, %bb.bt ], [ %.sink129261.i.i, %bb.bs ] ; 2 uses
  %i.mu = fcmp reassoc nsz arcp contract afn ogt float %.sink128255.i.i, %.sink129262.i.i
  br i1 %i.mu, label %bb.bu, label %.loopexit.7.i.i

bb.bu:                                            ; preds = %.lr.ph98.7.i.i
  store float %.sink128255.i.i, ptr %i.id, align 16, !tbaa !22
  store float %.sink129262.i.i, ptr %i.ic, align 4, !tbaa !22
  br label %.loopexit.7.i.i

.loopexit.7.i.i:                                  ; preds = %bb.bu, %.lr.ph98.7.i.i
  %i.mv = icmp eq i32 %.274.4.i.i, 1
  br i1 %i.mv, label %bb.ck, label %bb.cl

bb.bv:                                            ; preds = %.lr.ph.i.i
  store float %i.kr, ptr %i.hw, align 4, !tbaa !22
  store float %i.ks, ptr %i.a, align 16, !tbaa !22
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph.i.i
  %.sink232.i.i = phi float [ %i.ks, %.lr.ph.i.i ], [ %i.kr, %bb.bv ] ; 4 uses
  %i.mw = phi float [ %i.kr, %.lr.ph.i.i ], [ %i.ks, %bb.bv ] ; 4 uses
  %i.mx = extractelement <8 x float> %i.kg, i64 2 ; 4 uses
  %i.my = fcmp reassoc nsz arcp contract afn ogt float %i.mw, %i.mx
  br i1 %i.my, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store float %i.mw, ptr %i.hy, align 8, !tbaa !22
  store float %i.mx, ptr %i.a, align 16, !tbaa !22
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sink123233.i.i = phi float [ %i.mw, %bb.bx ], [ %i.mx, %bb.bw ] ; 4 uses
  %i.mz = phi float [ %i.mx, %bb.bx ], [ %i.mw, %bb.bw ] ; 4 uses
  %i.na = extractelement <8 x float> %i.kg, i64 3 ; 4 uses
  %i.nb = fcmp reassoc nsz arcp contract afn ogt float %i.mz, %i.na
  br i1 %i.nb, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store float %i.mz, ptr %i.hz, align 4, !tbaa !22
  store float %i.na, ptr %i.a, align 16, !tbaa !22
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sink124235.i.i = phi float [ %i.mz, %bb.bz ], [ %i.na, %bb.by ] ; 4 uses
  %i.nc = phi float [ %i.na, %bb.bz ], [ %i.mz, %bb.by ] ; 4 uses
  %i.nd = extractelement <8 x float> %i.kg, i64 4 ; 4 uses
  %i.ne = fcmp reassoc nsz arcp contract afn ogt float %i.nc, %i.nd
  br i1 %i.ne, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store float %i.nc, ptr %i.ht, align 16, !tbaa !22
  store float %i.nd, ptr %i.a, align 16, !tbaa !22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.nf = phi float [ %i.nc, %bb.cb ], [ %i.nd, %bb.ca ] ; 4 uses
  %i.ng = phi float [ %i.nd, %bb.cb ], [ %i.nc, %bb.ca ] ; 4 uses
  %i.nh = extractelement <8 x float> %i.kg, i64 5 ; 4 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ogt float %i.ng, %i.nh
  br i1 %i.ni, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store float %i.ng, ptr %i.ia, align 4, !tbaa !22
  store float %i.nh, ptr %i.a, align 16, !tbaa !22
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sink126238.i.i = phi float [ %i.ng, %bb.cd ], [ %i.nh, %bb.cc ] ; 4 uses
  %i.nj = phi float [ %i.nh, %bb.cd ], [ %i.ng, %bb.cc ] ; 4 uses
  %i.nk = extractelement <8 x float> %i.kg, i64 6 ; 4 uses
  %i.nl = fcmp reassoc nsz arcp contract afn ogt float %i.nj, %i.nk
  br i1 %i.nl, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store float %i.nj, ptr %i.ib, align 8, !tbaa !22
  store float %i.nk, ptr %i.a, align 16, !tbaa !22
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.sink127243.i.i = phi float [ %i.nj, %bb.cf ], [ %i.nk, %bb.ce ] ; 4 uses
  %i.nm = phi float [ %i.nk, %bb.cf ], [ %i.nj, %bb.ce ] ; 4 uses
  %i.nn = extractelement <8 x float> %i.kg, i64 7 ; 4 uses
  %i.no = fcmp reassoc nsz arcp contract afn ogt float %i.nm, %i.nn
  br i1 %i.no, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store float %i.nm, ptr %i.ic, align 4, !tbaa !22
  store float %i.nn, ptr %i.a, align 16, !tbaa !22
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.sink128249.i.i = phi float [ %i.nm, %bb.ch ], [ %i.nn, %bb.cg ] ; 4 uses
  %i.np = phi float [ %i.nn, %bb.ch ], [ %i.nm, %bb.cg ] ; 3 uses
  %i.nq = fcmp reassoc nsz arcp contract afn ogt float %i.np, %.sink129.i.i
  br i1 %i.nq, label %bb.cj, label %.lr.ph98.1.i.i

bb.cj:                                            ; preds = %bb.ci
  store float %i.np, ptr %i.id, align 16, !tbaa !22
  store float %.sink129.i.i, ptr %i.a, align 16, !tbaa !22
  br label %.lr.ph98.1.i.i

bb.ck:                                            ; preds = %.loopexit.7.i.i
  %i.nr = fadd reassoc nsz arcp contract afn float %i.ml, -6.400000e+01
  br label %bb.cm

bb.cl:                                            ; preds = %.loopexit.7.i.i
  %i.ns = trunc nuw nsw i32 %.274.4.i.i to i8
  %.lhs.trunc.i.i = add nsw i8 %i.ns, -1
  %i.nt = sdiv i8 %.lhs.trunc.i.i, 2
  %.sext.i.i = zext nneg i8 %i.nt to i64
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sext.i.i
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !22
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.nw = phi reassoc nsz arcp contract afn float [ %i.nr, %bb.ck ], [ %i.nv, %bb.cl ]
  store float %i.nw, ptr %.076101.i.i, align 4, !tbaa !22
  %i.nx = getelementptr inbounds nuw i8, ptr %.076101.i.i, i64 8
  %i.ny = add nuw nsw i32 %.178100.i.i, 2         ; 2 uses
  %i.nz = icmp slt i32 %i.ny, %i.hs
  br i1 %i.nz, label %.lr.ph.i.i, label %._crit_edge103.i.i

._crit_edge103.i.i:                               ; preds = %bb.cm, %.preheader86.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %pre_median.exit, label %.preheader86.i.i

pre_median.exit:                                  ; preds = %._crit_edge103.i.i, %._crit_edge411.split
  %.0321 = phi ptr [ %1, %._crit_edge411.split ], [ %i.hq, %._crit_edge103.i.i ] ; 4 uses
  %i.oa = add nuw nsw i32 %6, 3                   ; 4 uses
  %i.ob = add i32 %3, -3
  %i.oc = icmp sgt i32 %3, 6
  br i1 %i.oc, label %.lr.ph420, label %.preheader

.lr.ph420:                                        ; preds = %pre_median.exit
  %i.od = sext i32 %2 to i64                      ; 3 uses
  %i.oe = shl nsw i64 %i.od, 2
  %i.of = add nsw i32 %2, -3
  %i.og = icmp sgt i32 %2, 6
  %i.oh = sub nsw i32 %2, %i.oa                   ; 3 uses
  %i.oi = shl nsw i32 %i.oh, 2
  %i.oj = sext i32 %i.oi to i64
  %i.ok = sext i32 %i.oh to i64
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ok
  %i.ol = sub nsw i32 0, %2                       ; 2 uses
  %i.om = sext i32 %i.ol to i64
  %i.on = shl nsw i32 %i.ol, 1
  %i.oo = sext i32 %i.on to i64
  %i.op = mul i32 %2, -3
  %i.oq = sext i32 %i.op to i64
  %i.or = shl nsw i32 %2, 1
  %i.os = sext i32 %i.or to i64
  %i.ot = mul nsw i32 %2, 3
  %i.ou = sext i32 %i.ot to i64
  br i1 %i.og, label %.lr.ph.preheader, label %.lr.ph430

.lr.ph.preheader:                                 ; preds = %.lr.ph420
  %i.ov = sub nsw i32 %3, %i.oa
  %i.ow = sext i32 %i.ov to i64
  %i.ox = zext nneg i32 %i.oa to i64
  %wide.trip.count458 = zext nneg i32 %i.ob to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.lr.ph

.preheader:                                       ; preds = %._crit_edge417, %bb.x, %pre_median.exit
  %.0321551 = phi ptr [ %i.hq, %bb.x ], [ %.0321, %pre_median.exit ], [ %.0321, %._crit_edge417 ] ; 2 uses
  br i1 %i.d, label %.lr.ph430, label %._crit_edge431.split

.lr.ph430:                                        ; preds = %.lr.ph420, %.preheader
  %.0321551554 = phi ptr [ %.0321551, %.preheader ], [ %.0321, %.lr.ph420 ] ; 2 uses
  %i.oz = sext i32 %2 to i64                      ; 2 uses
  %i.pa = shl nsw i64 %i.oz, 2
  %i.pb = icmp sgt i32 %2, 0
  %i.pc = sub nsw i32 %2, %6                      ; 3 uses
  %i.pd = add nsw i32 %2, -1
  %i.pe = shl nsw i32 %2, 2
  %i.pf = sext i32 %i.pe to i64                   ; 4 uses
  %i.pg = sub nsw i64 0, %i.pf                    ; 3 uses
  br i1 %i.pb, label %.lr.ph425.preheader, label %._crit_edge431.split

.lr.ph425.preheader:                              ; preds = %.lr.ph430
  %i.ph = add nsw i32 %3, -1
  %i.pi = sub nsw i32 %3, %6
  %i.pj = zext nneg i32 %i.ph to i64
  %i.pk = sext i32 %i.pi to i64
  %i.pl = zext nneg i32 %6 to i64
  %i.pm = sext i32 %i.pc to i64
  %wide.trip.count465 = zext nneg i32 %3 to i64
  br label %.lr.ph425

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge417
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next456, %._crit_edge417 ] ; 6 uses
  %i.pn = mul nuw i64 %i.oe, %indvars.iv
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pn ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 48
  %i.pq = mul nuw nsw i64 %indvars.iv, %i.od      ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.0321, i64 %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 12
  %.not347 = icmp samesign uge i64 %indvars.iv, %i.ox
  %i.pt = icmp slt i64 %indvars.iv, %i.ow
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.oj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.pq
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.pv = shl i32 %indvars.iv.tr, 1
  %i.pw = and i32 %i.pv, 14
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph, %bb.cs
  %.0323415 = phi ptr [ %i.pp, %.lr.ph ], [ %i.to, %bb.cs ]
  %.0325414 = phi ptr [ %i.ps, %.lr.ph ], [ %i.tp, %bb.cs ]
  %.0327413 = phi i32 [ 3, %.lr.ph ], [ %i.tq, %bb.cs ] ; 2 uses
  %i.px = icmp eq i32 %.0327413, %i.oa
  %or.cond355.not372 = select i1 %i.px, i1 %.not347, i1 false
  %or.cond357 = select i1 %or.cond355.not372, i1 %i.pt, i1 false ; 3 uses
  %.1328 = select i1 %or.cond357, i32 %i.oh, i32 %.0327413 ; 3 uses
  %.1326 = select i1 %or.cond357, ptr %gep, ptr %.0325414 ; 13 uses
  %.1324 = select i1 %or.cond357, ptr %i.pu, ptr %.0323415 ; 4 uses
  %i.py = icmp eq i32 %.1328, %2
  br i1 %i.py, label %._crit_edge417, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pz = and i32 %.1328, 1
  %.tr.i366 = or disjoint i32 %i.pz, %i.pw
  %i.qa = shl nuw nsw i32 %.tr.i366, 1
  %i.qb = lshr i32 %4, %i.qa                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.qc = load float, ptr %.1326, align 4, !tbaa !22 ; 8 uses
  %i.qd = and i32 %i.qb, 1
  %or.cond5 = icmp eq i32 %i.qd, 0
  br i1 %or.cond5, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.qe = and i32 %i.qb, 2
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qf
  store float %i.qc, ptr %i.qg, align 8, !tbaa !22
  %i.qh = getelementptr inbounds [4 x i8], ptr %.1326, i64 %i.om
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !22 ; 5 uses
  %i.qj = getelementptr inbounds [4 x i8], ptr %.1326, i64 %i.oo
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !22 ; 2 uses
  %i.ql = getelementptr inbounds [4 x i8], ptr %.1326, i64 %i.oq
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !22
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.1326, i64 %i.od
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !22 ; 5 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.1326, i64 %i.os
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !22 ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.1326, i64 %i.ou
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !22
  %i.qt = getelementptr inbounds i8, ptr %.1326, i64 -8
  %i.qu = getelementptr inbounds i8, ptr %.1326, i64 -12
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !22
  %i.qw = getelementptr inbounds nuw i8, ptr %.1326, i64 4
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !22 ; 5 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.1326, i64 8
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !22 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.1326, i64 12
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !22
  %i.rc = fsub reassoc nsz arcp contract afn float %i.qz, %i.qc
  %i.rd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rc)
  %i.re = load <2 x float>, ptr %i.qt, align 4, !tbaa !22 ; 3 uses
  %i.rf = insertelement <2 x float> poison, float %i.qc, i64 0
  %i.rg = insertelement <2 x float> %i.rf, float %i.qx, i64 1
  %i.rh = fsub reassoc nsz arcp contract afn <2 x float> %i.re, %i.rg
  %i.ri = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.rh)
  %i.rj = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.rd, <2 x float> %i.ri)
  %i.rk = fmul reassoc nsz arcp contract afn float %i.rj, 3.000000e+00
  %i.rl = fsub reassoc nsz arcp contract afn float %i.rb, %i.qx
  %i.rm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rl)
  %i.rn = extractelement <2 x float> %i.re, i64 1 ; 4 uses
  %i.ro = fsub reassoc nsz arcp contract afn float %i.qv, %i.rn
  %i.rp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ro)
  %i.rq = fadd reassoc nsz arcp contract afn float %i.rm, %i.rp
  %i.rr = fmul reassoc nsz arcp contract afn float %i.rq, 2.000000e+00
  %i.rs = fadd reassoc nsz arcp contract afn float %i.rk, %i.rr
  %i.rt = fsub reassoc nsz arcp contract afn float %i.qk, %i.qc
  %i.ru = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rt)
  %i.rv = fsub reassoc nsz arcp contract afn float %i.qq, %i.qc
  %i.rw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rv)
  %i.rx = fsub reassoc nsz arcp contract afn float %i.qi, %i.qo
  %i.ry = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rx)
  %i.rz = fadd reassoc nsz arcp contract afn float %i.ry, %i.ru
  %i.sa = fadd reassoc nsz arcp contract afn float %i.rz, %i.rw
  %i.sb = fmul reassoc nsz arcp contract afn float %i.sa, 3.000000e+00
  %i.sc = fsub reassoc nsz arcp contract afn float %i.qs, %i.qo
  %i.sd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.sc)
  %i.se = fsub reassoc nsz arcp contract afn float %i.qm, %i.qi
  %i.sf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.se)
  %i.sg = fadd reassoc nsz arcp contract afn float %i.sd, %i.sf
  %i.sh = fmul reassoc nsz arcp contract afn float %i.sg, 2.000000e+00
  %i.si = fadd reassoc nsz arcp contract afn float %i.sb, %i.sh
  %i.sj = fcmp reassoc nsz arcp contract afn ogt float %i.rs, %i.si
  br i1 %i.sj, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.sk = fadd reassoc nsz arcp contract afn float %i.qi, %i.qc
  %i.sl = fadd reassoc nsz arcp contract afn float %i.sk, %i.qo
  %i.sm = fmul reassoc nsz arcp contract afn float %i.sl, 2.000000e+00
  %i.sn = fadd reassoc nsz arcp contract afn float %i.qk, %i.qq
  %i.so = fsub reassoc nsz arcp contract afn float %i.sm, %i.sn
  %i.sp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.qi, float %i.qo)
  %i.sq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qi, float %i.qo)
  %i.sr = fmul reassoc nsz arcp contract afn float %i.so, 2.500000e-01
  %i.ss = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sr, float %i.sq)
  %i.st = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ss, float %i.sp)
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.su = fadd reassoc nsz arcp contract afn float %i.rn, %i.qc
  %i.sv = fadd reassoc nsz arcp contract afn float %i.su, %i.qx
  %i.sw = fmul reassoc nsz arcp contract afn float %i.sv, 2.000000e+00
  %i.sx = extractelement <2 x float> %i.re, i64 0
  %i.sy = fadd reassoc nsz arcp contract afn float %i.sx, %i.qz
  %i.sz = fsub reassoc nsz arcp contract afn float %i.sw, %i.sy
  %i.ta = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.rn, float %i.qx)
  %i.tb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rn, float %i.qx)
  %i.tc = fmul reassoc nsz arcp contract afn float %i.sz, 2.500000e-01
  %i.td = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.tc, float %i.tb)
  %i.te = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.td, float %i.ta)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.co, %bb.cq, %bb.cr
  %i.tf = phi float [ %i.st, %bb.cq ], [ %i.te, %bb.cr ], [ %i.qc, %bb.co ]
  %i.tg = load <4 x float>, ptr %i.c, align 16
  %i.th = shufflevector <4 x float> %i.tg, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ti = insertelement <2 x float> %i.th, float %i.tf, i64 1
  %i.tj = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ti, <2 x float> zeroinitializer)
  store <2 x float> %i.tj, ptr %.1324, align 4, !tbaa !22
  %i.tk = load float, ptr %i.oy, align 8, !tbaa !22
  %i.tl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tk, float 0.000000e+00)
  %i.tm = getelementptr inbounds nuw i8, ptr %.1324, i64 8
  store float %i.tl, ptr %i.tm, align 4, !tbaa !22
end_hunk_5
begin_hunk_6_@_vng_lininterpolate:bb.a
  store float %i.km, ptr %i.kk, align 4, !tbaa !22
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kj ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !169
  %i.kp = add i8 %i.ko, 1
  store i8 %i.kp, ptr %i.kn, align 1, !tbaa !169
  br label %.split.split.us.2

.split.split.us.2:                                ; preds = %fcol.exit224.us.1, %.split.split.us.1
  %i.kq = or i64 %indvars.iv.next293.1, %indvars.iv296
  %i.kr = and i64 %i.kq, 2147483648
  %or.cond3.us.2 = icmp eq i64 %i.kr, 0
  %or.cond218.us.2 = and i1 %i.hh, %or.cond3.us.2
  br i1 %or.cond218.us.2, label %fcol.exit224.us.2, label %.split239.us.thread406

fcol.exit224.us.2:                                ; preds = %.split.split.us.2
  %i.ks = getelementptr inbounds i8, ptr %i.jo, i64 %i.hp
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !169
  %i.ku = getelementptr [4 x i8], ptr %i.hq, i64 %i.jp
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !22
  %i.kw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kv, float 0.000000e+00)
  %i.kx = zext i8 %i.kt to i64                    ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kx ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !22
  %i.la = fadd reassoc nsz arcp contract afn float %i.kz, %i.kw
  store float %i.la, ptr %i.ky, align 4, !tbaa !22
  %i.lb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kx ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !169
  %i.ld = add i8 %i.lc, 1
  store i8 %i.ld, ptr %i.lb, align 1, !tbaa !169
  br label %.split239.us.thread406

.split239.us:                                     ; preds = %.backedge
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next297, %indvars.iv306
  br i1 %exitcond, label %bb.w, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.split239.us, %.split239.us.thread, %.split239.us.thread406
  %indvars.iv296.be = phi i64 [ %indvars.iv.next297, %.split239.us ], [ %indvars.iv.next297404, %.split239.us.thread ], [ %indvars.iv.next297407, %.split239.us.thread406 ]
  br label %.backedge

.split239.us.thread406:                           ; preds = %.split.split.us.2, %fcol.exit224.us.2
  %indvars.iv.next297407 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond408 = icmp eq i64 %indvars.iv.next297407, %indvars.iv306
  br i1 %exitcond408, label %.thread409, label %.backedge.backedge

.split239.us.thread:                              ; preds = %.split.split.2, %fcol.exit224.2
  %indvars.iv.next297404 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond405 = icmp eq i64 %indvars.iv.next297404, %indvars.iv306
  br i1 %exitcond405, label %.thread, label %.backedge.backedge

fcol.exit224:                                     ; preds = %.split.split.preheader
  %.tr.i.i222 = or disjoint i32 %i.gs, %i.jj
  %i.le = shl nuw nsw i32 %.tr.i.i222, 1
  %i.lf = lshr i32 %4, %i.le
  %i.lg = and i32 %i.lf, 3
  %gep414 = getelementptr [4 x i8], ptr %invariant.gep413, i64 %i.jp
  %i.lh = load float, ptr %gep414, align 4, !tbaa !22
  %i.li = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lh, float 0.000000e+00)
  %i.lj = zext nneg i32 %i.lg to i64              ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lj ; 2 uses
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !22
  %i.lm = fadd reassoc nsz arcp contract afn float %i.ll, %i.li
  store float %i.lm, ptr %i.lk, align 4, !tbaa !22
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lj ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !169
  %i.lp = add i8 %i.lo, 1
  store i8 %i.lp, ptr %i.ln, align 1, !tbaa !169
  br label %.split.split.1

.split.split.1:                                   ; preds = %.split.split.preheader, %fcol.exit224
  %i.lq = or i32 %i.gt, %i.jh
  %or.cond3.1 = icmp sgt i32 %i.lq, -1
  %or.cond218.1 = and i1 %i.gu, %or.cond3.1
  br i1 %or.cond218.1, label %fcol.exit224.1, label %.split.split.2

fcol.exit224.1:                                   ; preds = %.split.split.1
  %.tr.i.i222.1 = or disjoint i32 %i.gv, %i.jj
  %i.lr = shl nuw nsw i32 %.tr.i.i222.1, 1
  %i.ls = lshr i32 %4, %i.lr
  %i.lt = and i32 %i.ls, 3
  %i.lu = getelementptr [4 x i8], ptr %i.gw, i64 %i.jp
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !22
  %i.lw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lv, float 0.000000e+00)
  %i.lx = zext nneg i32 %i.lt to i64              ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lx ; 2 uses
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !22
  %i.ma = fadd reassoc nsz arcp contract afn float %i.lz, %i.lw
  store float %i.ma, ptr %i.ly, align 4, !tbaa !22
  %i.mb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lx ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !169
  %i.md = add i8 %i.mc, 1
  store i8 %i.md, ptr %i.mb, align 1, !tbaa !169
  br label %.split.split.2

.split.split.2:                                   ; preds = %fcol.exit224.1, %.split.split.1
  %i.me = or i32 %i.gx, %i.jh
  %or.cond3.2 = icmp sgt i32 %i.me, -1
  %or.cond218.2 = and i1 %i.gy, %or.cond3.2
  br i1 %or.cond218.2, label %fcol.exit224.2, label %.split239.us.thread

fcol.exit224.2:                                   ; preds = %.split.split.2
  %.tr.i.i222.2 = or disjoint i32 %i.gz, %i.jj
  %i.mf = shl nuw nsw i32 %.tr.i.i222.2, 1
  %i.mg = lshr i32 %4, %i.mf
  %i.mh = and i32 %i.mg, 3
  %i.mi = getelementptr [4 x i8], ptr %i.ha, i64 %i.jp
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !22
  %i.mk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mj, float 0.000000e+00)
  %i.ml = zext nneg i32 %i.mh to i64              ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ml ; 2 uses
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !22
  %i.mo = fadd reassoc nsz arcp contract afn float %i.mn, %i.mk
  store float %i.mo, ptr %i.mm, align 4, !tbaa !22
  %i.mp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ml ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !169
  %i.mr = add i8 %i.mq, 1
  store i8 %i.mr, ptr %i.mp, align 1, !tbaa !169
  br label %.split239.us.thread

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %bb.ag, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ms = add nsw i32 %.1192, 1                   ; 2 uses
  %i.mt = icmp slt i32 %i.ms, %2
  br i1 %i.mt, label %bb.v, label %._crit_edge

scalar.ph:                                        ; preds = %bb.ag, %scalar.ph.preheader.new
  %indvars.iv301 = phi i64 [ %indvars.iv301.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next302.1, %bb.ag ] ; 6 uses
  %.not214 = icmp eq i64 %indvars.iv301, %i.ig
  br i1 %.not214, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %scalar.ph
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv301
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !169 ; 2 uses
  %.not215 = icmp eq i8 %i.mv, 0
  br i1 %.not215, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv301
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !22
  %i.my = uitofp i8 %i.mv to float
  %i.mz = fdiv reassoc nsz arcp contract afn float %i.mx, %i.my
  br label %scalar.ph.1

bb.ac:                                            ; preds = %bb.aa, %scalar.ph
  %i.na = load float, ptr %i.ie, align 4, !tbaa !22
  %i.nb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.na, float 0.000000e+00)
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.ab, %bb.ac
  %.sink = phi float [ %i.mz, %bb.ab ], [ %i.nb, %bb.ac ]
  %gep418 = getelementptr [4 x i8], ptr %invariant.gep417.sink, i64 %indvars.iv301
  store float %.sink, ptr %gep418, align 4, !tbaa !22
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 4 uses
  %.not214.1 = icmp eq i64 %indvars.iv.next302, %i.ig
  br i1 %.not214.1, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %scalar.ph.1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next302
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !169 ; 2 uses
  %.not215.1 = icmp eq i8 %i.nd, 0
  br i1 %.not215.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next302
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !22
  %i.ng = uitofp i8 %i.nd to float
  %i.nh = fdiv reassoc nsz arcp contract afn float %i.nf, %i.ng
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %scalar.ph.1
  %i.ni = load float, ptr %i.ie, align 4, !tbaa !22
  %i.nj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ni, float 0.000000e+00)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.1 = phi float [ %i.nh, %bb.ae ], [ %i.nj, %bb.af ]
  %gep418.1 = getelementptr [4 x i8], ptr %invariant.gep417.sink.1, i64 %indvars.iv.next302
  store float %.sink.1, ptr %gep418.1, align 4, !tbaa !22
  %indvars.iv.next302.1 = add nuw nsw i64 %indvars.iv301, 2 ; 2 uses
  %exitcond305.not.1 = icmp eq i64 %indvars.iv.next302.1, %wide.trip.count304
  br i1 %exitcond305.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !726

.preheader235:                                    ; preds = %.preheader235.preheader, %.split264
  %indvars.iv327 = phi i64 [ %i.nq, %.split264 ], [ 0, %.preheader235.preheader ] ; 4 uses
  %i.nk = getelementptr inbounds nuw [2048 x i8], ptr %i.x, i64 %indvars.iv327
  %indvars.iv327.tr = trunc i64 %indvars.iv327 to i32
  %i.nl = shl i32 %indvars.iv327.tr, 1
  %i.nm = and i32 %i.nl, 14                       ; 3 uses
  %indvars.iv327.tr403 = trunc i64 %indvars.iv327 to i32
  %i.nn = shl i32 %indvars.iv327.tr403, 1
  %i.no = add i32 %i.nn, 14
  %i.np = and i32 %i.no, 14                       ; 3 uses
  %i.nq = add nuw nsw i64 %indvars.iv327, 1       ; 3 uses
  %.tr = trunc i64 %i.nq to i32
  %i.nr = shl i32 %.tr, 1
  %i.ns = and i32 %i.nr, 14                       ; 3 uses
  br label %fcol.exit227

.preheader233:                                    ; preds = %.split264, %.split264.us.us
  %i.nt = add i32 %3, -1
  %i.nu = icmp sgt i32 %3, 2
  br i1 %i.nu, label %.lr.ph284, label %._crit_edge285.split

.lr.ph284:                                        ; preds = %.preheader233
  %i.nv = add nsw i32 %2, -1
  %i.nw = icmp sgt i32 %2, 2
  %i.nx = sub nsw i32 %2, %6                      ; 3 uses
  %i.ny = sext i32 %2 to i64                      ; 2 uses
  %i.nz = shl nsw i64 %i.ny, 2
  %i.oa = shl nsw i32 %i.nx, 2
  %i.ob = sext i32 %i.oa to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ob
  %i.oc = sext i32 %i.nx to i64
  %invariant.gep286 = getelementptr [4 x i8], ptr %1, i64 %i.oc
  %i.od = add nsw i32 %i.f, -1
  br i1 %i.nw, label %.lr.ph280.preheader, label %._crit_edge285.split

.lr.ph280.preheader:                              ; preds = %.lr.ph284
  %i.oe = sub nsw i32 %3, %6
  %i.of = shl nsw i32 %2, 2
  %i.og = sext i32 %i.oe to i64
  %i.oh = zext nneg i32 %6 to i64
  %i.oi = zext nneg i32 %i.of to i64
  %i.oj = zext nneg i32 %2 to i64
  %wide.trip.count370 = zext nneg i32 %i.nt to i64
  br label %.lr.ph280

.split264:                                        ; preds = %.epilog-lcssa
  %exitcond331.not = icmp eq i64 %i.nq, 16
  br i1 %exitcond331.not, label %.preheader233, label %.preheader235

fcol.exit227:                                     ; preds = %.preheader235, %.epilog-lcssa
  %indvars.iv322 = phi i64 [ 0, %.preheader235 ], [ %indvars.iv.next323, %.epilog-lcssa ] ; 4 uses
  %i.ok = getelementptr inbounds nuw [128 x i8], ptr %i.nk, i64 %indvars.iv322 ; 5 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.om = trunc nuw nsw i64 %indvars.iv322 to i32
  %i.on = and i32 %i.om, 1                        ; 3 uses
  %.tr.i.i225 = or disjoint i32 %i.on, %i.nm
  %i.oo = shl nuw nsw i32 %.tr.i.i225, 1
  %i.op = lshr i32 %4, %i.oo
  %i.oq = and i32 %i.op, 3                        ; 10 uses
  %i.or = trunc i64 %indvars.iv322 to i32
  %i.os = and i32 %i.or, 1
  %i.ot = xor i32 %i.os, 1                        ; 3 uses
  %.tr.i.i228 = or disjoint i32 %i.ot, %i.np
  %i.ou = shl nuw nsw i32 %.tr.i.i228, 1
  %i.ov = lshr i32 %4, %i.ou
  %i.ow = and i32 %i.ov, 3                        ; 3 uses
  %i.ox = icmp eq i32 %i.ow, %i.oq
  br i1 %i.ox, label %fcol.exit230.1, label %bb.ah

bb.ah:                                            ; preds = %fcol.exit227
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  store <2 x i32> %i.ad, ptr %i.ol, align 4, !tbaa !32
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store i32 %i.ow, ptr %i.oy, align 4, !tbaa !32
  %i.pa = zext nneg i32 %i.ow to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pa ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !32
  %i.pd = add nsw i32 %i.pc, 1
  store i32 %i.pd, ptr %i.pb, align 4, !tbaa !32
  br label %fcol.exit230.1

fcol.exit230.1:                                   ; preds = %fcol.exit227, %bb.ah
  %.2 = phi ptr [ %i.oz, %bb.ah ], [ %i.ol, %fcol.exit227 ] ; 4 uses
  %.tr.i.i228.1 = or disjoint i32 %i.on, %i.np
  %i.pe = shl nuw nsw i32 %.tr.i.i228.1, 1
  %i.pf = lshr i32 %4, %i.pe
  %i.pg = and i32 %i.pf, 3                        ; 3 uses
  %i.ph = icmp eq i32 %i.pg, %i.oq
  br i1 %i.ph, label %fcol.exit230.2, label %bb.ai

bb.ai:                                            ; preds = %fcol.exit230.1
  %i.pi = getelementptr inbounds nuw i8, ptr %.2, i64 8
  store <2 x i32> %i.ab, ptr %.2, align 4, !tbaa !32
  %i.pj = getelementptr inbounds nuw i8, ptr %.2, i64 12
  store i32 %i.pg, ptr %i.pi, align 4, !tbaa !32
  %i.pk = zext nneg i32 %i.pg to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pk ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !32
  %i.pn = add nsw i32 %i.pm, 2
  store i32 %i.pn, ptr %i.pl, align 4, !tbaa !32
  br label %fcol.exit230.2

fcol.exit230.2:                                   ; preds = %bb.ai, %fcol.exit230.1
  %.2.1 = phi ptr [ %i.pj, %bb.ai ], [ %.2, %fcol.exit230.1 ] ; 4 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 3 uses
  %i.po = trunc nuw nsw i64 %indvars.iv.next323 to i32
  %i.pp = and i32 %i.po, 1                        ; 3 uses
  %.tr.i.i228.2 = or disjoint i32 %i.pp, %i.np
  %i.pq = shl nuw nsw i32 %.tr.i.i228.2, 1
  %i.pr = lshr i32 %4, %i.pq
  %i.ps = and i32 %i.pr, 3                        ; 3 uses
  %i.pt = icmp eq i32 %i.ps, %i.oq
  br i1 %i.pt, label %.split252, label %bb.aj

bb.aj:                                            ; preds = %fcol.exit230.2
  %i.pu = getelementptr inbounds nuw i8, ptr %.2.1, i64 8
  store <2 x i32> %i.af, ptr %.2.1, align 4, !tbaa !32
  %i.pv = getelementptr inbounds nuw i8, ptr %.2.1, i64 12
  store i32 %i.ps, ptr %i.pu, align 4, !tbaa !32
  %i.pw = zext nneg i32 %i.ps to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pw ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !32
  %i.pz = add nsw i32 %i.py, 1
  store i32 %i.pz, ptr %i.px, align 4, !tbaa !32
  br label %.split252

.split252:                                        ; preds = %bb.aj, %fcol.exit230.2
  %.2.2 = phi ptr [ %i.pv, %bb.aj ], [ %.2.1, %fcol.exit230.2 ] ; 5 uses
  %.tr.i.i228.1312 = or disjoint i32 %i.ot, %i.nm
  %i.qa = shl nuw nsw i32 %.tr.i.i228.1312, 1
  %i.qb = lshr i32 %4, %i.qa
  %i.qc = and i32 %i.qb, 3                        ; 3 uses
  %i.qd = icmp eq i32 %i.qc, %i.oq
  br i1 %i.qd, label %fcol.exit230.2.1, label %bb.ak

bb.ak:                                            ; preds = %.split252
  %i.qe = getelementptr inbounds nuw i8, ptr %.2.2, i64 4
  store i32 -1, ptr %.2.2, align 4, !tbaa !32
  %i.qf = getelementptr inbounds nuw i8, ptr %.2.2, i64 8
  store i32 2, ptr %i.qe, align 4, !tbaa !32
  %i.qg = getelementptr inbounds nuw i8, ptr %.2.2, i64 12
  store i32 %i.qc, ptr %i.qf, align 4, !tbaa !32
  %i.qh = zext nneg i32 %i.qc to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qh ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !32
  %i.qk = add nsw i32 %i.qj, 2
  store i32 %i.qk, ptr %i.qi, align 4, !tbaa !32
  br label %fcol.exit230.2.1

fcol.exit230.2.1:                                 ; preds = %.split252, %bb.ak
  %.2.1314 = phi ptr [ %i.qg, %bb.ak ], [ %.2.2, %.split252 ] ; 5 uses
  %.tr.i.i228.2.1 = or disjoint i32 %i.pp, %i.nm
  %i.ql = shl nuw nsw i32 %.tr.i.i228.2.1, 1
  %i.qm = lshr i32 %4, %i.ql
  %i.qn = and i32 %i.qm, 3                        ; 3 uses
  %i.qo = icmp eq i32 %i.qn, %i.oq
  br i1 %i.qo, label %.split252.1, label %bb.al

bb.al:                                            ; preds = %fcol.exit230.2.1
  %i.qp = getelementptr inbounds nuw i8, ptr %.2.1314, i64 4
  store i32 1, ptr %.2.1314, align 4, !tbaa !32
  %i.qq = getelementptr inbounds nuw i8, ptr %.2.1314, i64 8
  store i32 2, ptr %i.qp, align 4, !tbaa !32
  %i.qr = getelementptr inbounds nuw i8, ptr %.2.1314, i64 12
  store i32 %i.qn, ptr %i.qq, align 4, !tbaa !32
  %i.qs = zext nneg i32 %i.qn to i64
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qs ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !32
  %i.qv = add nsw i32 %i.qu, 2
  store i32 %i.qv, ptr %i.qt, align 4, !tbaa !32
  br label %.split252.1

.split252.1:                                      ; preds = %bb.al, %fcol.exit230.2.1
  %.2.2.1 = phi ptr [ %i.qr, %bb.al ], [ %.2.1314, %fcol.exit230.2.1 ] ; 4 uses
  %.tr.i.i228.2315 = or disjoint i32 %i.ot, %i.ns
  %i.qw = shl nuw nsw i32 %.tr.i.i228.2315, 1
  %i.qx = lshr i32 %4, %i.qw
  %i.qy = and i32 %i.qx, 3                        ; 3 uses
  %i.qz = icmp eq i32 %i.qy, %i.oq
  br i1 %i.qz, label %fcol.exit230.1.2, label %bb.am

bb.am:                                            ; preds = %.split252.1
  %i.ra = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 8
  store <2 x i32> %i.ah, ptr %.2.2.1, align 4, !tbaa !32
  %i.rb = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 12
  store i32 %i.qy, ptr %i.ra, align 4, !tbaa !32
  %i.rc = zext nneg i32 %i.qy to i64
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rc ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !32
  %i.rf = add nsw i32 %i.re, 1
  store i32 %i.rf, ptr %i.rd, align 4, !tbaa !32
  br label %fcol.exit230.1.2

fcol.exit230.1.2:                                 ; preds = %bb.am, %.split252.1
  %.2.2317 = phi ptr [ %i.rb, %bb.am ], [ %.2.2.1, %.split252.1 ] ; 4 uses
  %.tr.i.i228.1.2 = or disjoint i32 %i.on, %i.ns
  %i.rg = shl nuw nsw i32 %.tr.i.i228.1.2, 1
  %i.rh = lshr i32 %4, %i.rg
  %i.ri = and i32 %i.rh, 3                        ; 3 uses
  %i.rj = icmp eq i32 %i.ri, %i.oq
  br i1 %i.rj, label %fcol.exit230.2.2, label %bb.an

bb.an:                                            ; preds = %fcol.exit230.1.2
  %i.rk = getelementptr inbounds nuw i8, ptr %.2.2317, i64 8
  store <2 x i32> %i.ak, ptr %.2.2317, align 4, !tbaa !32
  %i.rl = getelementptr inbounds nuw i8, ptr %.2.2317, i64 12
  store i32 %i.ri, ptr %i.rk, align 4, !tbaa !32
  %i.rm = zext nneg i32 %i.ri to i64
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rm ; 2 uses
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !32
  %i.rp = add nsw i32 %i.ro, 2
  store i32 %i.rp, ptr %i.rn, align 4, !tbaa !32
  br label %fcol.exit230.2.2

fcol.exit230.2.2:                                 ; preds = %bb.an, %fcol.exit230.1.2
  %.2.1.2 = phi ptr [ %i.rl, %bb.an ], [ %.2.2317, %fcol.exit230.1.2 ] ; 4 uses
end_hunk_6
