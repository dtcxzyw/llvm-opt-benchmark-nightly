Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %gep.i.i.3 = getelementptr [4 x i8], ptr %gep192.i.i, i64 %indvars.iv.next.i.i.2
  %i.ov = load float, ptr %gep.i.i.3, align 4, !tbaa !22
  %i.ow = load float, ptr %i.oi, align 4, !tbaa !22
  %i.ox = fmul reassoc nsz arcp contract afn float %i.ow, %i.ov
  %i.oy = getelementptr [4 x i8], ptr %i.mm, i64 %indvars.iv.next.i.i.2
  store float %i.ox, ptr %i.oy, align 4, !tbaa !22
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !180

iter.check:                                       ; preds = %._crit_edge200.i.i, %.preheader.preheader.i.i
  %indvars.iv225.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next226.i.i, %._crit_edge200.i.i ] ; 4 uses
  %i.oz = trunc i64 %indvars.iv225.i.i to i32
  %i.pa = mul i32 %i.hf, %i.oz
  %i.pb = add i32 %i.pa, %i.jb
  %i.pc = sext i32 %i.pb to i64
  %i.pd = shl nsw i64 %i.pc, 4                    ; 2 uses
  %scevgep1644 = getelementptr i8, ptr %2, i64 %i.pd
  %scevgep1646 = getelementptr i8, ptr %scevgep1645, i64 %i.pd
  %i.pe = mul nuw nsw i64 %indvars.iv225.i.i, %i.im
  %i.pf = trunc i64 %indvars.iv225.i.i to i32
  %i.pg = add i32 %i.iy, %i.pf
  %i.ph = mul i32 %i.pg, %i.hf
  %i.pi = add i32 %i.ph, %i.ja                    ; 12 uses
  %i.pj = getelementptr [4 x i8], ptr %i.iq, i64 %i.pe ; 7 uses
  br i1 %min.iters.check1651, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.pk = add i32 %i.pi, %i.je
  %i.pl = icmp slt i32 %i.pk, %i.pi
  %i.pm = or i1 %i.pl, %i.jf
  br i1 %i.pm, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck1642

vector.memcheck1642:                              ; preds = %vector.scevcheck
  %bound01647 = icmp ult ptr %i.iq, %scevgep1646
  %bound11648 = icmp ult ptr %scevgep1644, %scevgep1643
  %found.conflict1649 = and i1 %bound01647, %bound11648
  br i1 %found.conflict1649, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1642
  br i1 %min.iters.check1652, label %vec.epilog.ph, label %vector.body1655

vector.body1655:                                  ; preds = %vector.main.loop.iter.check, %vector.body1655
  %index1656 = phi i64 [ %index.next1663, %vector.body1655 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.pn = trunc i64 %index1656 to i32             ; 4 uses
  %i.po = or disjoint i32 %i.pn, 8
  %i.pp = or disjoint i32 %i.pn, 16
  %i.pq = or disjoint i32 %i.pn, 24
  %i.pr = add i32 %i.pi, %i.pn
  %i.ps = add i32 %i.pi, %i.po
  %i.pt = add i32 %i.pi, %i.pp
  %i.pu = add i32 %i.pi, %i.pq
  %i.pv = sext i32 %i.pr to i64
  %i.pw = sext i32 %i.ps to i64
  %i.px = sext i32 %i.pt to i64
  %i.py = sext i32 %i.pu to i64
  %i.pz = shl nsw i64 %i.pv, 4
  %i.qa = shl nsw i64 %i.pw, 4
  %i.qb = shl nsw i64 %i.px, 4
  %i.qc = shl nsw i64 %i.py, 4
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 %i.pz
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 %i.qa
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 %i.qb
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 %i.qc
  %wide.vec = load <32 x float>, ptr %i.qd, align 4, !tbaa !22, !alias.scope !181
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1657 = load <32 x float>, ptr %i.qe, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1658 = shufflevector <32 x float> %wide.vec1657, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1659 = load <32 x float>, ptr %i.qf, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1660 = shufflevector <32 x float> %wide.vec1659, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1661 = load <32 x float>, ptr %i.qg, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1662 = shufflevector <32 x float> %wide.vec1661, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.qh = getelementptr [4 x i8], ptr %i.pj, i64 %index1656 ; 4 uses
  %i.qi = getelementptr i8, ptr %i.qh, i64 32
  %i.qj = getelementptr i8, ptr %i.qh, i64 64
  %i.qk = getelementptr i8, ptr %i.qh, i64 96
  store <8 x float> %strided.vec, ptr %i.qh, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  store <8 x float> %strided.vec1658, ptr %i.qi, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  store <8 x float> %strided.vec1660, ptr %i.qj, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  store <8 x float> %strided.vec1662, ptr %i.qk, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  %index.next1663 = add nuw i64 %index1656, 32    ; 2 uses
  %i.ql = icmp eq i64 %index.next1663, %n.vec1654
  br i1 %i.ql, label %vec.epilog.iter.check, label %vector.body1655, !llvm.loop !186

vec.epilog.iter.check:                            ; preds = %vector.body1655
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !187

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %vector.memcheck1642, %vector.scevcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv220.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck1642 ], [ %n.vec1654, %vec.epilog.iter.check ], [ %n.vec1665, %vec.epilog.vector.body ] ; 4 uses
  %i.qm = sub i64 %wide.trip.count223.i.i, %indvars.iv220.i.i.ph
  %xtraiter4701 = and i64 %i.qm, 3                ; 2 uses
  %lcmp.mod4702.not = icmp eq i64 %xtraiter4701, 0
  br i1 %lcmp.mod4702.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv220.i.i.prol = phi i64 [ %indvars.iv.next221.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv220.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter4703 = phi i64 [ %prol.iter4703.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.qn = trunc nuw nsw i64 %indvars.iv220.i.i.prol to i32
  %i.qo = add i32 %i.pi, %i.qn
  %i.qp = sext i32 %i.qo to i64
  %.idx.i.i.prol = shl nsw i64 %i.qp, 4
  %i.qq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.prol
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !22
  %i.qs = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv220.i.i.prol
  store float %i.qr, ptr %i.qs, align 4, !tbaa !22
  %indvars.iv.next221.i.i.prol = add nuw nsw i64 %indvars.iv220.i.i.prol, 1 ; 2 uses
  %prol.iter4703.next = add i64 %prol.iter4703, 1 ; 2 uses
  %prol.iter4703.cmp.not = icmp eq i64 %prol.iter4703.next, %xtraiter4701
  br i1 %prol.iter4703.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !188

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv220.i.i.unr = phi i64 [ %indvars.iv220.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next221.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.qt = sub i64 %indvars.iv220.i.i.ph, %wide.trip.count223.i.i
  %i.qu = icmp ugt i64 %i.qt, -4
  br i1 %i.qu, label %._crit_edge200.i.i, label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1654, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1666 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1669, %vec.epilog.vector.body ] ; 3 uses
  %i.qv = trunc i64 %index1666 to i32
  %i.qw = add i32 %i.pi, %i.qv
  %i.qx = sext i32 %i.qw to i64
  %i.qy = shl nsw i64 %i.qx, 4
  %i.qz = getelementptr inbounds nuw i8, ptr %2, i64 %i.qy
  %wide.vec1667 = load <16 x float>, ptr %i.qz, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1668 = shufflevector <16 x float> %wide.vec1667, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ra = getelementptr [4 x i8], ptr %i.pj, i64 %index1666
  store <4 x float> %strided.vec1668, ptr %i.ra, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  %index.next1669 = add nuw i64 %index1666, 4     ; 2 uses
  %i.rb = icmp eq i64 %index.next1669, %n.vec1665
  br i1 %i.rb, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !189

._crit_edge200.i.i:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.prol.loopexit
  %indvars.iv.next226.i.i = add nuw nsw i64 %indvars.iv225.i.i, 1 ; 2 uses
  %exitcond229.not.i.i = icmp eq i64 %indvars.iv.next226.i.i, %wide.trip.count228.i.i
  br i1 %exitcond229.not.i.i, label %.loopexit.i.i, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv220.i.i = phi i64 [ %indvars.iv.next221.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv220.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.rc = trunc nuw nsw i64 %indvars.iv220.i.i to i32
  %i.rd = add i32 %i.pi, %i.rc
  %i.re = sext i32 %i.rd to i64
  %.idx.i.i = shl nsw i64 %i.re, 4
  %i.rf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !22
  %i.rh = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv220.i.i
  store float %i.rg, ptr %i.rh, align 4, !tbaa !22
  %indvars.iv.next221.i.i = add nuw nsw i64 %indvars.iv220.i.i, 1 ; 2 uses
  %i.ri = trunc nuw nsw i64 %indvars.iv.next221.i.i to i32
  %i.rj = add i32 %i.pi, %i.ri
  %i.rk = sext i32 %i.rj to i64
  %.idx.i.i.1 = shl nsw i64 %i.rk, 4
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.1
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !22
  %i.rn = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv.next221.i.i
  store float %i.rm, ptr %i.rn, align 4, !tbaa !22
  %indvars.iv.next221.i.i.1 = add nuw nsw i64 %indvars.iv220.i.i, 2 ; 2 uses
  %i.ro = trunc nuw nsw i64 %indvars.iv.next221.i.i.1 to i32
  %i.rp = add i32 %i.pi, %i.ro
  %i.rq = sext i32 %i.rp to i64
  %.idx.i.i.2 = shl nsw i64 %i.rq, 4
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.2
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !22
  %i.rt = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv.next221.i.i.1
  store float %i.rs, ptr %i.rt, align 4, !tbaa !22
  %indvars.iv.next221.i.i.2 = add nuw nsw i64 %indvars.iv220.i.i, 3 ; 2 uses
  %i.ru = trunc nuw nsw i64 %indvars.iv.next221.i.i.2 to i32
  %i.rv = add i32 %i.pi, %i.ru
  %i.rw = sext i32 %i.rv to i64
  %.idx.i.i.3 = shl nsw i64 %i.rw, 4
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.3
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !22
  %i.rz = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv.next221.i.i.2
  store float %i.ry, ptr %i.rz, align 4, !tbaa !22
  %indvars.iv.next221.i.i.3 = add nuw nsw i64 %indvars.iv220.i.i, 4 ; 2 uses
  %exitcond224.not.i.i.3 = icmp eq i64 %indvars.iv.next221.i.i.3, %wide.trip.count223.i.i
  br i1 %exitcond224.not.i.i.3, label %._crit_edge200.i.i, label %vec.epilog.scalar.ph, !llvm.loop !190

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i, %._crit_edge194.i.i, %._crit_edge200.i.i, %.preheader186.lr.ph.i.i, %.preheader187.i.i, %.preheader182.i.i
  switch i32 %.fr1063, label %bb.bj [
    i32 0, label %bb.av
    i32 9, label %.preheader.i.preheader.i.i
  ]

.preheader.i.preheader.i.i:                       ; preds = %.loopexit.i.i, %.preheader183.lr.ph.i.i, %.preheader184.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 510 ; 2 uses
  %i.sb = load i8, ptr %i.x, align 16, !tbaa !169 ; 4 uses
  %i.sc = icmp eq i8 %i.sb, 1                     ; 3 uses
  br i1 %i.sc, label %bb.by, label %.preheader._crit_edge.i.i.i

bb.av:                                            ; preds = %.loopexit.i.i
  %i.sd = add nsw i32 %i.ih, -4
  %i.se = icmp sgt i32 %i.ih, 8
  br i1 %i.se, label %.preheader.lr.ph.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.av
  %i.sf = icmp sgt i32 %i.ib, 9
  %i.sg = shl nsw i32 %i.ib, 1
  %6 = sext i32 %i.sg to i64                      ; 2 uses
  %i.sh = xor i32 %i.ib, -1
  %i.si = sext i32 %i.sh to i64                   ; 2 uses
  %i.sj = sub i32 1, %i.ib
  %i.sk = sext i32 %i.sj to i64                   ; 2 uses
  br i1 %i.sf, label %.preheader.us.preheader.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.i.i.i
  %i.sl = add nsw i32 %i.ib, -4
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = zext nneg i32 %i.ib to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.sd to i64
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvars.iv212.i.i.i = phi i64 [ 4, %.preheader.us.preheader.i.i.i ], [ %indvars.iv.next213.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.0152206.us.i.i.i = phi float [ 1.000000e+00, %.preheader.us.preheader.i.i.i ], [ %.10.us.i.i.i, %._crit_edge.us.i.i.i ]
  %i.so = mul nuw nsw i64 %indvars.iv212.i.i.i, %i.sn
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.so
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bi, %.preheader.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 5, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bi ] ; 2 uses
  %.1153204.us.i.i.i = phi float [ %.0152206.us.i.i.i, %.preheader.us.i.i.i ], [ %.10.us.i.i.i, %bb.bi ] ; 5 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %indvars.iv.i.i.i ; 10 uses
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !22 ; 15 uses
  %i.ss = fcmp reassoc nsz arcp contract afn ogt float %i.sr, 5.000000e-03
  br i1 %i.ss, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %bb.aw
  %i.st = getelementptr [4 x i8], ptr %i.sq, i64 %i.im ; 2 uses
  %i.su = getelementptr i8, ptr %i.st, i64 -4
  %i.sv = load float, ptr %i.su, align 4, !tbaa !22 ; 5 uses
  %i.sw = getelementptr i8, ptr %i.st, i64 4
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !22 ; 9 uses
  %i.sy = fcmp reassoc nsz arcp contract afn ogt float %i.sr, %i.sv
  %i.sz = select reassoc nsz arcp contract afn i1 %i.sy, float %i.sr, float %i.sv ; 4 uses
  %i.ta = fcmp reassoc nsz arcp contract afn ogt float %i.sv, 5.000000e-03
  %i.tb = fcmp reassoc nsz arcp contract afn ogt float %i.sz, f0x3C23D70A
  %or.cond.us.i.i.i = and i1 %i.ta, %i.tb
  br i1 %or.cond.us.i.i.i, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.tc = fcmp reassoc nsz arcp contract afn olt float %i.sr, %i.sv
  %i.td = select reassoc nsz arcp contract afn i1 %i.tc, float %i.sr, float %i.sv ; 2 uses
  %i.te = fmul reassoc nsz arcp contract afn float %i.td, %.1153204.us.i.i.i
  %i.tf = fcmp reassoc nsz arcp contract afn ogt float %i.sz, %i.te
  br i1 %i.tf, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.tg = fcmp reassoc nsz arcp contract afn oeq float %i.sz, %i.sr
  br i1 %i.tg, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.th = getelementptr inbounds i8, ptr %i.sq, i64 -8
  %i.ti = load float, ptr %i.th, align 4, !tbaa !22 ; 2 uses
  %i.tj = fcmp reassoc nsz arcp contract afn ogt float %i.ti, %i.sr
  %.183.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tj, float %i.ti, float %i.sr ; 3 uses
  %i.tk = getelementptr [4 x i8], ptr %i.sq, i64 %6 ; 2 uses
  %i.tl = getelementptr i8, ptr %i.tk, i64 -8
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !22 ; 3 uses
  %i.tn = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.tm
  %i.to = load float, ptr %i.tk, align 4, !tbaa !22 ; 4 uses
  br i1 %i.tn, label %bb.bb, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %bb.ba
  %i.tp = fcmp reassoc nsz arcp contract afn ogt float %i.tm, %i.to
  %spec.select200.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tp, float %i.tm, float %i.to
  br label %.thread196.us.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.tq = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.to
  %spec.select199.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tq, float %.183.us.i.i.i, float %i.to
  br label %.thread196.us.i.i.i

bb.bc:                                            ; preds = %bb.az
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.si
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !22 ; 2 uses
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.sk
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !22 ; 2 uses
  %i.tv = fcmp reassoc nsz arcp contract afn ogt float %i.ts, %i.tu
  %..us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tv, float %i.ts, float %i.tu ; 2 uses
  %i.tw = fcmp reassoc nsz arcp contract afn ogt float %..us.i.i.i, %i.sx
  %spec.select.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tw, float %..us.i.i.i, float %i.sx
  br label %.thread196.us.i.i.i

.thread196.us.i.i.i:                              ; preds = %bb.bc, %bb.bb, %.thread.us.i.i.i
  %.not.in.us.i.i.i = phi float [ %spec.select.us.i.i.i, %bb.bc ], [ %spec.select199.us.i.i.i, %bb.bb ], [ %spec.select200.us.i.i.i, %.thread.us.i.i.i ]
  %.not.us.i.i.i = fcmp ult float %.not.in.us.i.i.i, f0x3F666666
  %i.tx = fdiv reassoc nsz arcp contract afn float %i.sz, %i.td
  %spec.select188.us.i.i.i = select nsz i1 %.not.us.i.i.i, float %i.tx, float %.1153204.us.i.i.i
  br label %bb.bd

bb.bd:                                            ; preds = %.thread196.us.i.i.i, %bb.ay, %bb.ax
  %.4.us.i.i.i = phi nsz float [ %.1153204.us.i.i.i, %bb.ax ], [ %spec.select188.us.i.i.i, %.thread196.us.i.i.i ], [ %.1153204.us.i.i.i, %bb.ay ] ; 5 uses
  %i.ty = fcmp reassoc nsz arcp contract afn ogt float %i.sr, %i.sx
  %i.tz = select reassoc nsz arcp contract afn i1 %i.ty, float %i.sr, float %i.sx ; 4 uses
  %i.ua = fcmp reassoc nsz arcp contract afn ogt float %i.sx, 5.000000e-03
  %i.ub = fcmp reassoc nsz arcp contract afn ogt float %i.tz, f0x3C23D70A
  %or.cond4.us.i.i.i = select i1 %i.ua, i1 %i.ub, i1 false
  br i1 %or.cond4.us.i.i.i, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.uc = fcmp reassoc nsz arcp contract afn olt float %i.sr, %i.sx
  %i.ud = select reassoc nsz arcp contract afn i1 %i.uc, float %i.sr, float %i.sx ; 2 uses
  %i.ue = fmul reassoc nsz arcp contract afn float %.4.us.i.i.i, %i.ud
  %i.uf = fcmp reassoc nsz arcp contract afn ogt float %i.tz, %i.ue
  br i1 %i.uf, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ug = fcmp reassoc nsz arcp contract afn oeq float %i.tz, %i.sr
  br i1 %i.ug, label %bb.bg, label %.thread198.us.i.i.i

.thread198.us.i.i.i:                              ; preds = %bb.bf
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !22 ; 2 uses
  %i.uj = fcmp reassoc nsz arcp contract afn ogt float %i.sr, %i.ui
  %.191.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.uj, float %i.sr, float %i.ui ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %6 ; 2 uses
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !22 ; 2 uses
  %i.um = fcmp reassoc nsz arcp contract afn ogt float %.191.us.i.i.i, %i.ul
  %i.un = getelementptr i8, ptr %i.uk, i64 8
  %i.uo = load float, ptr %i.un, align 4, !tbaa !22 ; 2 uses
  %.191.us..i.i.i = select i1 %i.um, float %.191.us.i.i.i, float %i.ul ; 2 uses
  %i.up = fcmp reassoc nsz arcp contract afn ogt float %.191.us..i.i.i, %i.uo
  %spec.select202.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.up, float %.191.us..i.i.i, float %i.uo
  %i.uq = fcmp reassoc nsz arcp contract afn ult float %spec.select202.us.i.i.i, f0x3F666666
  br i1 %i.uq, label %bb.bh, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.si
  %i.us = load float, ptr %i.ur, align 4, !tbaa !22 ; 2 uses
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.sk
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !22 ; 2 uses
  %i.uv = fcmp reassoc nsz arcp contract afn ogt float %i.us, %i.uu
  %.189.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.uv, float %i.us, float %i.uu ; 2 uses
  %i.uw = fcmp reassoc nsz arcp contract afn ogt float %.189.us.i.i.i, %i.sx
  %spec.select201.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.uw, float %.189.us.i.i.i, float %i.sx
  %i.ux = fcmp reassoc nsz arcp contract afn ult float %spec.select201.us.i.i.i, f0x3F666666
  br i1 %i.ux, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %.thread198.us.i.i.i
  %i.uy = fdiv reassoc nsz arcp contract afn float %i.tz, %i.ud
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %.thread198.us.i.i.i, %bb.be, %bb.bd, %bb.aw
  %.10.us.i.i.i = phi nsz float [ %.1153204.us.i.i.i, %bb.aw ], [ %.4.us.i.i.i, %bb.bd ], [ %.4.us.i.i.i, %bb.bg ], [ %.4.us.i.i.i, %.thread198.us.i.i.i ], [ %i.uy, %bb.bh ], [ %.4.us.i.i.i, %bb.be ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.uz = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.sm
  br i1 %i.uz, label %bb.aw, label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %bb.bi
  %indvars.iv.next213.i.i.i = add nuw nsw i64 %indvars.iv212.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next213.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge208.loopexit.i.i.i, label %.preheader.us.i.i.i

._crit_edge208.loopexit.i.i.i:                    ; preds = %._crit_edge.us.i.i.i
  %i.va = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.10.us.i.i.i)
  br label %_calcRadiusMono.exit.i.i

_calcRadiusMono.exit.i.i:                         ; preds = %._crit_edge208.loopexit.i.i.i, %.preheader.lr.ph.i.i.i, %bb.av
  %.0152.lcssa.i.i.i = phi float [ 0.000000e+00, %bb.av ], [ %i.va, %._crit_edge208.loopexit.i.i.i ], [ 0.000000e+00, %.preheader.lr.ph.i.i.i ]
  %i.vb = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0152.lcssa.i.i.i
  %i.vc = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.vb)
  br label %bb.fg

bb.bj:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  %i.vd = and i32 %.fr1063, 3
  store i32 %i.vd, ptr %i.m, align 4, !tbaa !32
  %i.ve = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.vf = lshr i32 %.fr1063, 4
  %i.vg = and i32 %i.vf, 3
  store i32 %i.vg, ptr %i.ve, align 4, !tbaa !32
  %i.vh = icmp sgt i32 %i.ih, 8
  br i1 %i.vh, label %.lr.ph212.i.i.i, label %_calcRadiusBayer.exit.i.i

.lr.ph212.i.i.i:                                  ; preds = %bb.bj
  %i.vi = add nsw <2 x i32> %i.ia, splat (i32 -4) ; 2 uses
  %i.vj = add nsw i32 %i.ib, -4
  %i.vk = shl nsw i32 %i.ib, 1
  %i.vl = sext i32 %i.vk to i64                   ; 2 uses
  %i.vm = xor i32 %i.ib, -1
  %i.vn = sext i32 %i.vm to i64                   ; 2 uses
  %i.vo = sub i32 1, %i.ib
  %i.vp = sext i32 %i.vo to i64                   ; 2 uses
  %i.vq = extractelement <2 x i32> %i.vi, i64 1
  %i.vr = extractelement <2 x i32> %i.vi, i64 0
  %i.vs = sext i32 %i.vr to i64
  %i.vt = zext i32 %i.vq to i64
  br label %bb.bk

._crit_edge213.loopexit.i.i.i:                    ; preds = %._crit_edge.i.i.i
  %i.vu = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.1156.lcssa.i.i.i)
  br label %_calcRadiusBayer.exit.i.i

bb.bk:                                            ; preds = %._crit_edge.i.i.i, %.lr.ph212.i.i.i
  %indvars.iv216.i.i.i = phi i64 [ 4, %.lr.ph212.i.i.i ], [ %indvars.iv.next217.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.0155209.i.i.i = phi float [ 1.000000e+00, %.lr.ph212.i.i.i ], [ %.1156.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.vv = and i64 %indvars.iv216.i.i.i, 1
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.vv
end_hunk_0
begin_hunk_1_@process:bb.a
.lr.ph1508.i:                                     ; preds = %._crit_edge1509.i, %.lr.ph1508.preheader.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge1509.i ], [ 0, %.lr.ph1508.preheader.i ] ; 3 uses
  %indvars.iv1201 = phi i32 [ %indvars.iv.next1202, %._crit_edge1509.i ], [ 5, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1727.i = phi i32 [ %indvars.iv.next1728.i, %._crit_edge1509.i ], [ 109, %.lr.ph1508.preheader.i ] ; 3 uses
  %indvars.iv1660.i = phi i64 [ %indvars.iv.next1661.i, %._crit_edge1509.i ], [ -5, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1636.i = phi i64 [ %indvars.iv.next1637.i, %._crit_edge1509.i ], [ -7, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1608.i = phi i64 [ %indvars.iv.next1609.i, %._crit_edge1509.i ], [ -10, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1583.i = phi i64 [ %indvars.iv.next1584.i, %._crit_edge1509.i ], [ -13, %.lr.ph1508.preheader.i ] ; 15 uses
  %i.cbv = phi <4 x i32> [ %i.ceo, %._crit_edge1509.i ], [ <i32 7, i32 3, i32 4, i32 0>, %.lr.ph1508.preheader.i ] ; 3 uses
  %i.cbw = extractelement <4 x i32> %i.cbv, i64 3 ; 2 uses
  %i.cbx = mul i32 %i.auc, %indvar
  %smin2052 = call i32 @llvm.smin.i32(i32 %indvars.iv1727.i, i32 %i.cay)
  %i.cby = add i32 %smin2052, %i.cbw
  %smax2053 = call i32 @llvm.smax.i32(i32 %i.cby, i32 14)
  %i.cbz = zext nneg i32 %smax2053 to i64         ; 2 uses
  %i.cca = mul nuw nsw i64 %i.cbz, 1464
  %i.ccb = mul nuw nsw i64 %i.cbz, 122
  %i.ccc = mul i32 %i.aua, %indvar
  %smin1238 = call i32 @llvm.smin.i32(i32 %indvars.iv1727.i, i32 %i.cay) ; 6 uses
  %i.ccd = insertelement <4 x i32> poison, i32 %smin1238, i64 0
  %i.cce = shufflevector <4 x i32> %i.ccd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ccf = add <4 x i32> %i.cce, %i.cbv
  %i.ccg = add i32 %smin1238, %i.cbw
  %i.cch = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ccf, <4 x i32> <i32 7, i32 11, i32 10, i32 14>) ; 4 uses
  %i.cci = add i32 %smin1238, %indvars.iv1201
  %i.ccj = call i32 @llvm.smax.i32(i32 %i.cci, i32 9)
  %smax1203 = zext nneg i32 %i.ccj to i64
  %i.cck = add i32 %smin1238, -8
  %i.ccl = sext i32 %i.cck to i64
  %i.ccm = add i32 %smin1238, -6
  %i.ccn = sext i32 %i.ccm to i64
  %i.cco = add i32 %smin1238, -3
  %i.ccp = sext i32 %i.cco to i64
  %i.ccq = tail call i32 @llvm.smax.i32(i32 %i.ccg, i32 14)
  %smax1762.i = zext nneg i32 %i.ccq to i64       ; 6 uses
  %i.ccr = trunc i64 %indvars.iv1583.i to i32     ; 2 uses
  %i.ccs = add i32 %i.ccr, 122
  %i.cct = tail call i32 @llvm.smin.i32(i32 %i.ccs, i32 %i.cay) ; 6 uses
  %i.ccu = icmp slt i64 %indvars.iv1583.i, %i.cbh
  %i.ccv = add nuw nsw i64 %indvars.iv1583.i, 3   ; 3 uses
  %i.ccw = add nsw i32 %i.cct, -3                 ; 2 uses
  %i.ccx = sext i32 %i.ccw to i64
  %i.ccy = icmp slt i64 %i.ccv, %i.ccx
  %i.ccz = add nsw i32 %i.cct, -4
  %i.cda = sub i64 %indvars.iv1583.i, %i.cbe
  %i.cdb = trunc i64 %i.cda to i32
  %i.cdc = add i32 %i.cdb, 8                      ; 2 uses
  %i.cdd = srem i32 %i.cdc, 3
  %i.cde = add i32 %i.cdc, %i.brp
  %i.cdf = sub i32 %i.cde, %i.cdd                 ; 2 uses
  %i.cdg = add nsw i32 %i.cct, -6                 ; 2 uses
  %i.cdh = icmp slt i32 %i.cdf, %i.cdg
  %i.cdi = add nuw nsw i64 %indvars.iv1583.i, 6
  %i.cdj = sext i32 %i.cdg to i64                 ; 2 uses
  %i.cdk = icmp slt i64 %i.cdi, %i.cdj
  %i.cdl = add nuw nsw i64 %indvars.iv1583.i, 8
  %i.cdm = add nsw i32 %i.cct, -8
  %i.cdn = sext i32 %i.cdm to i64
  %i.cdo = icmp slt i64 %i.cdl, %i.cdn
  %i.cdp = sub nsw i32 %i.cct, %i.ccr             ; 5 uses
  %i.cdq = icmp sgt i32 %i.cdp, 16
  %i.cdr = icmp sgt i32 %i.cdp, 18
  %i.cds = icmp sgt i32 %i.cdp, 20
  %i.cdt = icmp sgt i32 %i.cdp, 26                ; 2 uses
  %i.cdu = icmp sgt i32 %i.cdp, 12
  %i.cdv = sext i32 %i.cct to i64
  %i.cdw = sext i32 %i.cdf to i64
  %i.cdx = trunc nsw i64 %i.ccv to i32
  %i.cdy = extractelement <4 x i32> %i.cch, i64 0
  %i.cdz = zext nneg i32 %i.cdy to i64
  %i.cea = add nsw i64 %i.cdz, -7
  %scevgep2054 = getelementptr i8, ptr %scevgep2051, i64 %i.cca
  %scevgep2058 = getelementptr i8, ptr %scevgep2057, i64 %i.ccb
  %i.ceb = add nsw i64 %smax1762.i, -13           ; 8 uses
  %i.cec = add nsw i64 %smax1762.i, -14           ; 4 uses
  %i.ced = extractelement <4 x i32> %i.cch, i64 2
  %i.cee = zext nneg i32 %i.ced to i64
  %i.cef = extractelement <4 x i32> %i.cch, i64 1
  %i.ceg = zext nneg i32 %i.cef to i64
  %xtraiter4774 = and i64 %i.ceb, 7               ; 3 uses
  %i.ceh = icmp ult i64 %i.cec, 7
  %unroll_iter4778 = and i64 %i.ceb, -8
  %lcmp.mod4776.not = icmp eq i64 %xtraiter4774, 0
  %lcmp.mod4777 = icmp ne i64 %xtraiter4774, 0
  %xtraiter4780 = and i64 %i.ceb, 7               ; 3 uses
  %i.cei = icmp ult i64 %i.cec, 7
  %unroll_iter4784 = and i64 %i.ceb, -8
  %lcmp.mod4782.not = icmp eq i64 %xtraiter4780, 0
  %lcmp.mod4783 = icmp ne i64 %xtraiter4780, 0
  %xtraiter4786 = and i64 %i.ceb, 7               ; 3 uses
  %i.cej = icmp ult i64 %i.cec, 7
  %unroll_iter4790 = and i64 %i.ceb, -8
  %lcmp.mod4788.not = icmp eq i64 %xtraiter4786, 0
  %lcmp.mod4789 = icmp ne i64 %xtraiter4786, 0
  %xtraiter4792 = and i64 %i.ceb, 7               ; 3 uses
  %i.cek = icmp ult i64 %i.cec, 7
  %unroll_iter4796 = and i64 %i.ceb, -8
  %lcmp.mod4794.not = icmp eq i64 %xtraiter4792, 0
  %lcmp.mod4795 = icmp ne i64 %xtraiter4792, 0
  %i.cel = extractelement <4 x i32> %i.cch, i64 3
  %i.cem = zext nneg i32 %i.cel to i64
  br label %bb.iu

._crit_edge1509.i:                                ; preds = %._crit_edge1503.split.i
  %indvars.iv.next1584.i = add nsw i64 %indvars.iv1583.i, 96 ; 2 uses
  %i.cen = icmp slt i64 %indvars.iv.next1584.i, %i.cbg
  %indvars.iv.next1609.i = add nsw i64 %indvars.iv1608.i, 96
  %indvars.iv.next1637.i = add nsw i64 %indvars.iv1636.i, 96
  %indvars.iv.next1661.i = add nsw i64 %indvars.iv1660.i, 96
  %indvars.iv.next1728.i = add nuw i32 %indvars.iv1727.i, 96
  %indvars.iv.next1202 = add i32 %indvars.iv1201, -96
  %i.ceo = add <4 x i32> %i.cbv, splat (i32 -96)
  %indvar.next = add i32 %indvar, 1
  br i1 %i.cen, label %.lr.ph1508.i, label %._crit_edge1513.split.i

bb.iu:                                            ; preds = %._crit_edge1503.split.i, %.lr.ph1508.i
  %indvar2021 = phi i32 [ %indvar.next2022, %._crit_edge1503.split.i ], [ 0, %.lr.ph1508.i ] ; 3 uses
  %indvars.iv1226 = phi i32 [ %indvars.iv.next1227, %._crit_edge1503.split.i ], [ 7, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1216 = phi i32 [ %indvars.iv.next1217, %._crit_edge1503.split.i ], [ 3, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1206 = phi i32 [ %indvars.iv.next1207, %._crit_edge1503.split.i ], [ 4, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1196 = phi i32 [ %indvars.iv.next1197, %._crit_edge1503.split.i ], [ 5, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1724.i = phi i32 [ %indvars.iv.next1725.i, %._crit_edge1503.split.i ], [ 0, %.lr.ph1508.i ] ; 4 uses
  %indvars.iv1722.i = phi i32 [ %indvars.iv.next1723.i, %._crit_edge1503.split.i ], [ 109, %.lr.ph1508.i ] ; 5 uses
  %indvars.iv1655.i = phi i64 [ %indvars.iv.next1656.i, %._crit_edge1503.split.i ], [ -5, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1631.i = phi i64 [ %indvars.iv.next1632.i, %._crit_edge1503.split.i ], [ -7, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1603.i = phi i64 [ %indvars.iv.next1604.i, %._crit_edge1503.split.i ], [ -10, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1578.i = phi i64 [ %indvars.iv.next1579.i, %._crit_edge1503.split.i ], [ -13, %.lr.ph1508.i ] ; 15 uses
  %smin4766 = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqf)
  %i.cep = add i32 %smin4766, %indvars.iv1196     ; 2 uses
  %smax4767 = call i32 @llvm.smax.i32(i32 %i.cep, i32 9) ; 2 uses
  %i.ceq = zext nneg i32 %smax4767 to i64         ; 2 uses
  %smin2032 = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqf)
  %i.cer = add i32 %smin2032, %indvars.iv1724.i
  %i.ces = call i32 @llvm.umax.i32(i32 %i.cer, i32 14)
  %umax2033 = zext i32 %i.ces to i64              ; 4 uses
  %i.cet = shl nuw nsw i64 %umax2033, 2           ; 3 uses
  %i.ceu = mul i32 %indvar2021, 384
  %i.cev = add i32 %i.cbx, %i.ceu
  %i.cew = shl nuw nsw i64 %umax2033, 4
  %i.cex = mul nuw nsw i64 %umax2033, 12
  %scevgep2055 = getelementptr i8, ptr %scevgep2054, i64 %i.cex
  %scevgep2059 = getelementptr i8, ptr %scevgep2058, i64 %umax2033
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqf)
  %i.cey = add i32 %smin, %indvars.iv1724.i
  %i.cez = zext i32 %i.cey to i64
  %i.cfa = call i64 @llvm.usub.sat.i64(i64 %i.cez, i64 14) ; 2 uses
  %i.cfb = mul i32 %indvar2021, 384
  %i.cfc = add i32 %i.ccc, %i.cfb
  %smin1235 = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqf) ; 7 uses
  %i.cfd = add i32 %smin1235, %indvars.iv1724.i   ; 3 uses
  %i.cfe = call i32 @llvm.umax.i32(i32 %i.cfd, i32 14)
  %umax1236 = zext i32 %i.cfe to i64
  %i.cff = add i32 %smin1235, %indvars.iv1226
  %i.cfg = call i32 @llvm.umax.i32(i32 %i.cff, i32 7)
  %umax1228 = zext i32 %i.cfg to i64
  %i.cfh = add i32 %smin1235, %indvars.iv1216
  %i.cfi = call i32 @llvm.umax.i32(i32 %i.cfh, i32 11)
  %umax1218 = zext i32 %i.cfi to i64
  %i.cfj = add i32 %smin1235, %indvars.iv1206     ; 2 uses
  %i.cfk = call i32 @llvm.smax.i32(i32 %i.cfj, i32 10)
  %smax1208 = zext nneg i32 %i.cfk to i64
  %i.cfl = add i32 %smin1235, -8
  %i.cfm = sext i32 %i.cfl to i64
  %i.cfn = add i32 %smin1235, -6
  %i.cfo = sext i32 %i.cfn to i64
  %i.cfp = add i32 %smin1235, -3
  %i.cfq = sext i32 %i.cfp to i64
  %i.cfr = tail call i32 @llvm.smax.i32(i32 %i.cfd, i32 10)
  %smax1756.i = zext nneg i32 %i.cfr to i64       ; 4 uses
  %i.cfs = trunc i64 %indvars.iv1578.i to i32     ; 3 uses
  %i.cft = add i32 %i.cfs, 122
  %i.cfu = tail call i32 @llvm.smin.i32(i32 %i.cft, i32 %i.aqf) ; 7 uses
  %i.cfv = icmp slt i64 %indvars.iv1578.i, %i.aqi
  %or.cond1515.i = and i1 %i.ccu, %i.cfv
  br i1 %or.cond1515.i, label %.preheader1263.preheader.i, label %.preheader1268.i

.preheader1263.preheader.i:                       ; preds = %bb.iu
  %i.cfw = sext i32 %i.cfu to i64
  br label %.preheader1263.i

.preheader1268.i:                                 ; preds = %._crit_edge.i493, %bb.iu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.cbi, ptr noundef nonnull align 64 dereferenceable(178608) %i.bqs, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(178608) %i.cbj, ptr noundef nonnull align 64 dereferenceable(178608) %i.bqs, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.cbk, ptr noundef nonnull align 64 dereferenceable(178608) %i.bqs, i64 178608, i1 false)
  br i1 %i.ccy, label %.lr.ph1325.i, label %._crit_edge1343.split.i

.preheader1263.i:                                 ; preds = %._crit_edge.i493, %.preheader1263.preheader.i
  %indvars.iv1585.i = phi i64 [ %indvars.iv1583.i, %.preheader1263.preheader.i ], [ %indvars.iv.next1586.i, %._crit_edge.i493 ] ; 5 uses
  %i.cfx = sub nsw i64 %indvars.iv1585.i, %indvars.iv1583.i ; 2 uses
  %i.cfy = getelementptr inbounds [1464 x i8], ptr %i.bqs, i64 %i.cfx
  %i.cfz = icmp slt i64 %indvars.iv1585.i, %i.cbd ; 2 uses
  %i.cga = trunc i64 %indvars.iv1585.i to i32     ; 7 uses
  %i.cgb = add i32 %i.cga, 600
  %i.cgc = srem i32 %i.cgb, 6
  %i.cgd = sext i32 %i.cgc to i64
  %i.cge = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cgd
  %i.cgf = sub i32 %i.cba, %i.cga                 ; 3 uses
  %i.cgg = tail call i32 @llvm.abs.i32(i32 %i.cga, i1 true) ; 3 uses
  %invariant.gep1310.idx.i = mul nuw nsw i64 %i.cfx, 488
  %invariant.gep1310.i = getelementptr i8, ptr %i.caw, i64 %invariant.gep1310.idx.i ; 2 uses
  %i.cgh = mul nsw i64 %indvars.iv1585.i, %i.aoc
  %i.cgi = add i32 %i.cga, -1                     ; 3 uses
  %.1514.i = select i1 %i.cfz, i32 %i.cgg, i32 %i.cgf ; 2 uses
  %i.cgj = add nsw i32 %.1514.i, 600
  %i.cgk = srem i32 %i.cgj, 6
  %i.cgl = sext i32 %i.cgk to i64
  %i.cgm = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cgl
  %i.cgn = mul nsw i32 %.1514.i, %i.bo
  %invariant.gep.i491 = getelementptr [4 x i8], ptr %i.axr, i64 %i.cgh
  %.not1140.i = icmp slt i32 %i.cgi, %i.axh
  %i.cgo = sub nsw i32 %i.cba, %i.cgi             ; 2 uses
  %i.cgp = add nsw i32 %i.cgo, 600
  %i.cgq = srem i32 %i.cgp, 6
  %i.cgr = sext i32 %i.cgq to i64
  %i.cgs = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cgr ; 3 uses
  %i.cgt = mul nsw i32 %i.cgo, %i.bo              ; 3 uses
  %i.cgu = tail call i32 @llvm.abs.i32(i32 %i.cgi, i1 true) ; 2 uses
  %i.cgv = add nuw nsw i32 %i.cgu, 600
  %i.cgw = urem i32 %i.cgv, 6
  %i.cgx = zext nneg i32 %i.cgw to i64
  %i.cgy = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cgx ; 3 uses
  %i.cgz = mul nuw nsw i32 %i.cgu, %i.bo          ; 3 uses
  %.not1140.i.1 = icmp sgt i32 %i.axh, %i.cga
  %i.cha = add nsw i32 %i.cgf, 600
  %i.chb = srem i32 %i.cha, 6
  %i.chc = sext i32 %i.chb to i64
  %i.chd = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.chc ; 3 uses
  %i.che = mul nsw i32 %i.cgf, %i.bo              ; 3 uses
  %i.chf = add nuw nsw i32 %i.cgg, 600
  %i.chg = urem i32 %i.chf, 6
  %i.chh = zext nneg i32 %i.chg to i64
  %i.chi = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.chh ; 3 uses
  %i.chj = mul nuw nsw i32 %i.cgg, %i.bo          ; 3 uses
  %i.chk = add i32 %i.cga, 1                      ; 3 uses
  %.not1140.i.2 = icmp slt i32 %i.chk, %i.axh
  %i.chl = sub nsw i32 %i.cba, %i.chk             ; 2 uses
  %i.chm = add nsw i32 %i.chl, 600
  %i.chn = srem i32 %i.chm, 6
  %i.cho = sext i32 %i.chn to i64
  %i.chp = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cho ; 3 uses
  %i.chq = mul nsw i32 %i.chl, %i.bo              ; 3 uses
  %i.chr = tail call i32 @llvm.abs.i32(i32 %i.chk, i1 true) ; 2 uses
  %i.chs = add nuw nsw i32 %i.chr, 600
  %i.cht = urem i32 %i.chs, 6
  %i.chu = zext nneg i32 %i.cht to i64
  %i.chv = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.chu ; 3 uses
  %i.chw = mul nuw nsw i32 %i.chr, %i.bo          ; 3 uses
  br label %bb.iv

._crit_edge.i493:                                 ; preds = %.loopexit1256.i
  %indvars.iv.next1586.i = add nsw i64 %indvars.iv1585.i, 1 ; 2 uses
  %i.chx = icmp slt i64 %indvars.iv.next1586.i, %i.cdv
  br i1 %i.chx, label %.preheader1263.i, label %.preheader1268.i

bb.iv:                                            ; preds = %.loopexit1256.i, %.preheader1263.i
  %indvars.iv1580.i = phi i64 [ %indvars.iv1578.i, %.preheader1263.i ], [ %indvars.iv.next1581.i.pre-phi, %.loopexit1256.i ] ; 7 uses
  %i.chy = sub nsw i64 %indvars.iv1580.i, %indvars.iv1578.i ; 3 uses
  %i.chz = getelementptr inbounds [12 x i8], ptr %i.cfy, i64 %i.chy ; 7 uses
  %i.cia = trunc i64 %indvars.iv1580.i to i32     ; 5 uses
  %i.cib = or i32 %i.cia, %i.cga
  %or.cond.i492 = icmp sgt i32 %i.cib, -1
  %i.cic = icmp slt i64 %indvars.iv1580.i, %i.aoc ; 2 uses
  %or.cond1143.i = and i1 %i.cic, %or.cond.i492
  %or.cond1144.i = and i1 %i.cfz, %or.cond1143.i
  %i.cid = add i32 %i.cia, 600
  %i.cie = srem i32 %i.cid, 6
  %i.cif = sext i32 %i.cie to i64
  %i.cig = getelementptr inbounds i8, ptr %i.cge, i64 %i.cif
  %i.cih = load i8, ptr %i.cig, align 1, !tbaa !169 ; 23 uses
  br i1 %or.cond1144.i, label %bb.iw, label %bb.jc

bb.iw:                                            ; preds = %bb.iv
  %gep.i495 = getelementptr [4 x i8], ptr %invariant.gep.i491, i64 %indvars.iv1580.i ; 4 uses
  %i.cii = icmp eq i8 %i.cih, 0
  br i1 %i.cii, label %.thread.i, label %bb.ix

.thread.i:                                        ; preds = %bb.iw
  %i.cij = load float, ptr %gep.i495, align 4, !tbaa !22
  store float %i.cij, ptr %i.chz, align 4, !tbaa !22
  br label %.thread2090.i

bb.ix:                                            ; preds = %bb.iw
  store float 0.000000e+00, ptr %i.chz, align 4, !tbaa !22
  %i.cik = icmp eq i8 %i.cih, 1
  br i1 %i.cik, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.cil = load float, ptr %gep.i495, align 4, !tbaa !22
  br label %.thread2090.i

.thread2090.i:                                    ; preds = %bb.iy, %.thread.i
  %.ph.i = phi float [ 0.000000e+00, %.thread.i ], [ %i.cil, %bb.iy ]
  %i.cim = getelementptr inbounds nuw i8, ptr %i.chz, i64 4
  store float %.ph.i, ptr %i.cim, align 4, !tbaa !22
  br label %bb.jb

bb.iz:                                            ; preds = %bb.ix
  %i.cin = getelementptr inbounds nuw i8, ptr %i.chz, i64 4
  store float 0.000000e+00, ptr %i.cin, align 4, !tbaa !22
  %i.cio = icmp eq i8 %i.cih, 2
  br i1 %i.cio, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.cip = load float, ptr %gep.i495, align 4, !tbaa !22
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz, %.thread2090.i
  %i.ciq = phi reassoc nsz arcp contract afn float [ %i.cip, %bb.ja ], [ 0.000000e+00, %bb.iz ], [ 0.000000e+00, %.thread2090.i ]
  %i.cir = getelementptr inbounds nuw i8, ptr %i.chz, i64 8
  store float %i.ciq, ptr %i.cir, align 4, !tbaa !22
  %i.cis = load float, ptr %gep.i495, align 4, !tbaa !22
  %i.cit = getelementptr inbounds [4 x i8], ptr %invariant.gep1310.i, i64 %i.chy
  store float %i.cis, ptr %i.cit, align 4, !tbaa !22
  %.pre1258 = add nsw i64 %indvars.iv1580.i, 1
  br label %.loopexit1256.i

bb.jc:                                            ; preds = %bb.iv
  %i.ciu = sub i32 %i.asl, %i.cia
  %i.civ = tail call i32 @llvm.abs.i32(i32 %i.cia, i1 true)
  %i.ciw = zext i8 %i.cih to i64                  ; 2 uses
  %i.cix = getelementptr inbounds nuw [4 x i8], ptr %i.chz, i64 %i.ciw ; 2 uses
  %gep1311.i = getelementptr [4 x i8], ptr %invariant.gep1310.i, i64 %i.chy ; 2 uses
  %i.ciy = select i1 %i.cic, i32 %i.civ, i32 %i.ciu ; 8 uses
  %i.ciz = add nsw i32 %i.ciy, 600
  %i.cja = srem i32 %i.ciz, 6
  %i.cjb = sext i32 %i.cja to i64                 ; 7 uses
  %i.cjc = getelementptr inbounds i8, ptr %i.cgm, i64 %i.cjb
  %.not1141.not.i = icmp sgt i64 %indvars.iv1580.i, %i.aoc
  %i.cjd = add i32 %i.cia, -1                     ; 2 uses
  %i.cje = tail call i32 @llvm.abs.i32(i32 %i.cjd, i1 true)
  %i.cjf = sub i32 %i.asl, %i.cjd
  %i.cjg = add nsw i64 %indvars.iv1580.i, 1       ; 3 uses
  %.not1141.2.i = icmp slt i64 %i.cjg, %i.aoc
  %i.cjh = trunc nsw i64 %i.cjg to i32            ; 2 uses
  %i.cji = sub i32 %i.asl, %i.cjh
  %i.cjj = tail call i32 @llvm.abs.i32(i32 %i.cjh, i1 true)
  %i.cjk = add nsw i32 %i.ciy, %i.cgn
  %i.cjl = sext i32 %i.cjk to i64
  %i.cjm = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.cjl
  %.2127.i = select i1 %.not1141.not.i, i32 %i.cjf, i32 %i.cje ; 7 uses
  %i.cjn = add nsw i32 %.2127.i, 600
  %i.cjo = srem i32 %i.cjn, 6
  %i.cjp = sext i32 %i.cjo to i64                 ; 6 uses
  %.2131.i = select i1 %.not1141.2.i, i32 %i.cjj, i32 %i.cji ; 4 uses
  %i.cjq = add nsw i32 %.2131.i, 600
  %i.cjr = srem i32 %i.cjq, 6
  %i.cjs = sext i32 %i.cjr to i64                 ; 6 uses
  %i.cjt = getelementptr inbounds i8, ptr %i.cgs, i64 %i.cjp
  %i.cju = add nsw i32 %i.cgt, %.2127.i
  %i.cjv = sext i32 %i.cju to i64
  %i.cjw = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.cjv
  %i.cjx = getelementptr inbounds i8, ptr %i.cgs, i64 %i.cjb
  %i.cjy = add nsw i32 %i.cgt, %i.ciy
  %i.cjz = sext i32 %i.cjy to i64
  %i.cka = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.cjz
  %i.ckb = getelementptr inbounds i8, ptr %i.cgs, i64 %i.cjs
  %i.ckc = getelementptr inbounds i8, ptr %i.cgy, i64 %i.cjp
  %i.ckd = add nsw i32 %i.cgz, %.2127.i
  %i.cke = sext i32 %i.ckd to i64
  %i.ckf = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.cke
  %i.ckg = getelementptr inbounds i8, ptr %i.cgy, i64 %i.cjb
  %i.ckh = add nsw i32 %i.cgz, %i.ciy
  %i.cki = sext i32 %i.ckh to i64
  %i.ckj = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.cki
  %i.ckk = getelementptr inbounds i8, ptr %i.cgy, i64 %i.cjs
  %i.ckl = getelementptr inbounds i8, ptr %i.chd, i64 %i.cjp
  %i.ckm = add nsw i32 %i.che, %.2127.i
  %i.ckn = sext i32 %i.ckm to i64
  %i.cko = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.ckn
  %i.ckp = getelementptr inbounds i8, ptr %i.chd, i64 %i.cjb
  %i.ckq = add nsw i32 %i.che, %i.ciy
  %i.ckr = sext i32 %i.ckq to i64
  %i.cks = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.ckr
  %i.ckt = getelementptr inbounds i8, ptr %i.chd, i64 %i.cjs
  %i.cku = getelementptr inbounds i8, ptr %i.chi, i64 %i.cjp
  %i.ckv = add nsw i32 %i.chj, %.2127.i
  %i.ckw = sext i32 %i.ckv to i64
  %i.ckx = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.ckw
  %i.cky = getelementptr inbounds i8, ptr %i.chi, i64 %i.cjb
  %i.ckz = add nsw i32 %i.chj, %i.ciy
  %i.cla = sext i32 %i.ckz to i64
  %i.clb = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.cla
  %i.clc = getelementptr inbounds i8, ptr %i.chi, i64 %i.cjs
  %i.cld = getelementptr inbounds i8, ptr %i.chp, i64 %i.cjp
  %i.cle = add nsw i32 %i.chq, %.2127.i
  %i.clf = sext i32 %i.cle to i64
  %i.clg = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.clf
  %i.clh = getelementptr inbounds i8, ptr %i.chp, i64 %i.cjb
  %i.cli = add nsw i32 %i.chq, %i.ciy
  %i.clj = sext i32 %i.cli to i64
  %i.clk = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.clj
  %i.cll = getelementptr inbounds i8, ptr %i.chp, i64 %i.cjs
  %i.clm = getelementptr inbounds i8, ptr %i.chv, i64 %i.cjp
  %i.cln = add nsw i32 %i.chw, %.2127.i
  %i.clo = sext i32 %i.cln to i64
  %i.clp = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.clo
  %i.clq = getelementptr inbounds i8, ptr %i.chv, i64 %i.cjb
  %i.clr = add nsw i32 %i.chw, %i.ciy
  %i.cls = sext i32 %i.clr to i64
  %i.clt = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.cls
  %i.clu = getelementptr inbounds i8, ptr %i.chv, i64 %i.cjs
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.ian = getelementptr inbounds nuw [4 x i8], ptr %i.iah, i64 %indvars.iv1464.i
  %i.iao = load float, ptr %i.ian, align 4, !tbaa !22
  %i.iap = fcmp reassoc nsz arcp contract afn ole float %i.iao, %i.hse
  %i.iaq = zext i1 %i.iap to i8
  %i.iar = add i8 %i.iam, %i.iaq
  %i.ias = getelementptr inbounds nuw [4 x i8], ptr %i.iah, i64 %i.hsg
  %i.iat = load float, ptr %i.ias, align 4, !tbaa !22
  %i.iau = fcmp reassoc nsz arcp contract afn ole float %i.iat, %i.hse
  %i.iav = zext i1 %i.iau to i8
  %i.iaw = add i8 %i.iar, %i.iav
  store i8 %i.iaw, ptr %gep1203.us.i, align 1, !tbaa !169
  %indvars.iv.next1460.i = add nuw nsw i64 %indvars.iv1459.i, 1 ; 2 uses
  %exitcond1463.not.i = icmp eq i64 %indvars.iv.next1460.i, %i.apy
  br i1 %exitcond1463.not.i, label %middle.block2719, label %.preheader1038.us.i, !llvm.loop !269

.preheader1042.us.i:                              ; preds = %bb.nh, %middle.block2593
  %.sroa.9.1.i513.lcssa = phi float [ %i.hyk, %middle.block2593 ], [ %.sroa.9.1.i513, %bb.nh ]
  %.sroa.12.1.i514.lcssa = phi float [ %i.hyl, %middle.block2593 ], [ %.sroa.12.1.i514, %bb.nh ] ; 2 uses
  %i.iax = phi <2 x float> [ %i.hyn, %middle.block2593 ], [ %i.hys, %bb.nh ]
  %i.iay = trunc nuw nsw i64 %indvars.iv1510.i to i32
  %i.iaz = add i32 %i.icu, %i.iay
  %i.iba = shl nsw i32 %i.iaz, 2
  %i.ibb = sext i32 %i.iba to i64
  %i.ibc = insertelement <2 x float> poison, float %.sroa.12.1.i514.lcssa, i64 0
  %i.ibd = shufflevector <2 x float> %i.ibc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ibe = fdiv reassoc nsz arcp contract afn <2 x float> %i.iax, %i.ibd
  %i.ibf = getelementptr inbounds [4 x i8], ptr %i.anv, i64 %i.ibb ; 2 uses
  %i.ibg = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ibe, <2 x float> zeroinitializer)
  store <2 x float> %i.ibg, ptr %i.ibf, align 4, !tbaa !22
  %i.ibh = fdiv reassoc nsz arcp contract afn float %.sroa.9.1.i513.lcssa, %.sroa.12.1.i514.lcssa
  %i.ibi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ibh, float 0.000000e+00)
  %i.ibj = getelementptr i8, ptr %i.ibf, i64 8
  store float %i.ibi, ptr %i.ibj, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %indvars.iv.next1511.i = add nuw nsw i64 %indvars.iv1510.i, 1 ; 2 uses
  %i.ibk = icmp samesign ult i64 %indvars.iv.next1511.i, %i.iwt
  br i1 %i.ibk, label %bb.ng, label %._crit_edge1239.us.i

.preheader1043.us.i:                              ; preds = %.preheader1054.us.i, %middle.block2719
  %indvars.iv1464.i = phi i64 [ %i.aqc, %.preheader1054.us.i ], [ %i.hsg, %middle.block2719 ] ; 10 uses
  %invariant.gep1190.us.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1188.us.i, i64 %indvars.iv1464.i ; 9 uses
  br i1 %i.aoz, label %.preheader1043.us.i.new, label %.epil.preheader4757

.preheader1044.us.i:                              ; preds = %.preheader1044.us.i.preheader, %._crit_edge1184.us.i
  %indvars.iv1441.i = phi i64 [ %indvars.iv.next1442.i, %._crit_edge1184.us.i ], [ %i.aqb, %.preheader1044.us.i.preheader ] ; 3 uses
  %i.ibl = getelementptr inbounds nuw [488 x i8], ptr %i.fyb, i64 %indvars.iv1441.i ; 2 uses
  %i.ibm = getelementptr inbounds nuw [488 x i8], ptr %i.ivb, i64 %indvars.iv1441.i ; 2 uses
  %brmerge4902 = select i1 %min.iters.check2741, i1 true, i1 %op.rdx4605
  br i1 %brmerge4902, label %scalar.ph2740.preheader, label %vector.body2744

vector.body2744:                                  ; preds = %.preheader1044.us.i, %vector.body2744
  %index2745 = phi i64 [ %index.next2755, %vector.body2744 ], [ 0, %.preheader1044.us.i ] ; 2 uses
  %i.ibn = add nuw i64 %index2745, %i.aqb         ; 2 uses
  %i.ibo = getelementptr inbounds nuw [4 x i8], ptr %i.ibl, i64 %i.ibn ; 5 uses
  %wide.load2746 = load <8 x float>, ptr %i.ibo, align 4, !tbaa !22
  %i.ibp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2746, splat (float 2.000000e+00)
  %i.ibq = getelementptr inbounds [4 x i8], ptr %i.ibo, i64 %i.hpw
  %wide.load2747 = load <8 x float>, ptr %i.ibq, align 4, !tbaa !22
  %i.ibr = getelementptr inbounds [4 x i8], ptr %i.ibo, i64 %i.iva
  %wide.load2748 = load <8 x float>, ptr %i.ibr, align 4, !tbaa !22
  %i.ibs = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2747, %wide.load2748
  %i.ibt = fsub reassoc nsz arcp contract afn <8 x float> %i.ibp, %i.ibs ; 2 uses
  %i.ibu = fmul reassoc nsz arcp contract afn <8 x float> %i.ibt, %i.ibt
  %i.ibv = getelementptr inbounds nuw i8, ptr %i.ibo, i64 59536 ; 3 uses
  %wide.load2749 = load <8 x float>, ptr %i.ibv, align 4, !tbaa !22
  %i.ibw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2749, splat (float 2.000000e+00)
  %i.ibx = getelementptr inbounds [4 x i8], ptr %i.ibv, i64 %i.hpw
  %wide.load2750 = load <8 x float>, ptr %i.ibx, align 4, !tbaa !22
  %i.iby = getelementptr inbounds [4 x i8], ptr %i.ibv, i64 %i.iva
  %wide.load2751 = load <8 x float>, ptr %i.iby, align 4, !tbaa !22
  %i.ibz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2750, %wide.load2751
  %i.ica = fsub reassoc nsz arcp contract afn <8 x float> %i.ibw, %i.ibz ; 2 uses
  %i.icb = fmul reassoc nsz arcp contract afn <8 x float> %i.ica, %i.ica
  %i.icc = fadd reassoc nsz arcp contract afn <8 x float> %i.icb, %i.ibu
  %i.icd = getelementptr inbounds nuw i8, ptr %i.ibo, i64 119072 ; 3 uses
  %wide.load2752 = load <8 x float>, ptr %i.icd, align 4, !tbaa !22
  %i.ice = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2752, splat (float 2.000000e+00)
  %i.icf = getelementptr inbounds [4 x i8], ptr %i.icd, i64 %i.hpw
  %wide.load2753 = load <8 x float>, ptr %i.icf, align 4, !tbaa !22
  %i.icg = getelementptr inbounds [4 x i8], ptr %i.icd, i64 %i.iva
  %wide.load2754 = load <8 x float>, ptr %i.icg, align 4, !tbaa !22
  %i.ich = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2753, %wide.load2754
  %i.ici = fsub reassoc nsz arcp contract afn <8 x float> %i.ice, %i.ich ; 2 uses
  %i.icj = fmul reassoc nsz arcp contract afn <8 x float> %i.ici, %i.ici
  %i.ick = fadd reassoc nsz arcp contract afn <8 x float> %i.icc, %i.icj
  %i.icl = getelementptr inbounds nuw [4 x i8], ptr %i.ibm, i64 %i.ibn
  store <8 x float> %i.ick, ptr %i.icl, align 4, !tbaa !22
  %index.next2755 = add nuw i64 %index2745, 8     ; 2 uses
  %i.icm = icmp eq i64 %index.next2755, %n.vec2743
  br i1 %i.icm, label %middle.block2756, label %vector.body2744, !llvm.loop !270

middle.block2756:                                 ; preds = %vector.body2744
  br i1 %cmp.n2757, label %._crit_edge1184.us.i, label %scalar.ph2740.preheader

scalar.ph2740.preheader:                          ; preds = %.preheader1044.us.i, %middle.block2756
  %indvars.iv1438.i.ph = phi i64 [ %i.hot, %middle.block2756 ], [ %i.aqb, %.preheader1044.us.i ]
  br label %scalar.ph2740

.preheader1045.us.i:                              ; preds = %.preheader1045.lr.ph.us.i, %._crit_edge1179.us.i
  %indvars.iv1435.i = phi i64 [ %indvars.iv.next1436.i, %._crit_edge1179.us.i ], [ %i.aqa, %.preheader1045.lr.ph.us.i ] ; 5 uses
  %i.icn = getelementptr inbounds nuw [1464 x i8], ptr %i.iuy, i64 %indvars.iv1435.i
  %i.ico = getelementptr inbounds nuw [488 x i8], ptr %i.fyb, i64 %indvars.iv1435.i
  %i.icp = getelementptr inbounds nuw [488 x i8], ptr %i.fyd, i64 %indvars.iv1435.i
  %i.icq = getelementptr inbounds nuw [488 x i8], ptr %i.fyk, i64 %indvars.iv1435.i
  br label %bb.nc

.preheader1052.us.i:                              ; preds = %.preheader1052.us.preheader.i, %._crit_edge1239.us.i
  %indvars.iv1513.i = phi i64 [ %i.aps, %.preheader1052.us.preheader.i ], [ %indvars.iv.next1514.i, %._crit_edge1239.us.i ] ; 4 uses
  %invariant.gep1220.us.i = getelementptr inbounds nuw [122 x i8], ptr %i.fye, i64 %indvars.iv1513.i
  %invariant.gep1232.us.i = getelementptr inbounds nuw [1464 x i8], ptr %i.fxb, i64 %indvars.iv1513.i
  %i.icr = trunc i64 %indvars.iv1513.i to i32
  %i.ics = add i32 %indvars.iv1341.i, %i.icr
  %i.ict = mul i32 %i.ics, %i.bo
  %i.icu = add i32 %i.ict, %indvars.iv1336.i
  br label %bb.ng

.preheader1053.us.i:                              ; preds = %.preheader1053.us.preheader.i, %._crit_edge1216.us.i.loopexit1008.3
  %indvars.iv1482.i = phi i64 [ %indvars.iv.next1483.i.3, %._crit_edge1216.us.i.loopexit1008.3 ], [ 0, %.preheader1053.us.preheader.i ] ; 5 uses
  %gep = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.nf

.preheader1054.us.i:                              ; preds = %.preheader1054.us.preheader.i, %._crit_edge1206.us.i
  %indvar2625 = phi i64 [ 0, %.preheader1054.us.preheader.i ], [ %indvar.next2626, %._crit_edge1206.us.i ] ; 3 uses
  %indvars.iv1467.i = phi i64 [ %i.aqc, %.preheader1054.us.preheader.i ], [ %i.icx, %._crit_edge1206.us.i ] ; 5 uses
  %i.icv = mul nuw nsw i64 %indvar2625, 122       ; 2 uses
  %scevgep2627 = getelementptr i8, ptr %i.fyv, i64 %i.icv ; 9 uses
  %scevgep2632 = getelementptr i8, ptr %i.ivy, i64 %i.icv ; 9 uses
  %i.icw = mul nuw nsw i64 %indvar2625, 488       ; 18 uses
  %scevgep2633 = getelementptr i8, ptr %i.fzb, i64 %i.icw
  %scevgep2634 = getelementptr i8, ptr %i.ivz, i64 %i.icw
  %scevgep2635 = getelementptr i8, ptr %i.fzg, i64 %i.icw
  %scevgep2636 = getelementptr i8, ptr %i.iwa, i64 %i.icw
  %scevgep2637 = getelementptr i8, ptr %i.fzl, i64 %i.icw
  %scevgep2638 = getelementptr i8, ptr %i.iwb, i64 %i.icw
  %scevgep2639 = getelementptr i8, ptr %i.fzq, i64 %i.icw
  %scevgep2640 = getelementptr i8, ptr %i.iwc, i64 %i.icw
  %scevgep2641 = getelementptr i8, ptr %i.fzv, i64 %i.icw
  %scevgep2642 = getelementptr i8, ptr %i.iwd, i64 %i.icw
  %scevgep2643 = getelementptr i8, ptr %i.gaa, i64 %i.icw
  %scevgep2644 = getelementptr i8, ptr %i.iwe, i64 %i.icw
  %scevgep2645 = getelementptr i8, ptr %i.gaf, i64 %i.icw
  %scevgep2646 = getelementptr i8, ptr %i.iwf, i64 %i.icw
  %scevgep2647 = getelementptr i8, ptr %i.gak, i64 %i.icw
  %scevgep2648 = getelementptr i8, ptr %i.iwg, i64 %i.icw
  %scevgep2649 = getelementptr i8, ptr %i.gap, i64 %i.icw
  %scevgep2650 = getelementptr i8, ptr %i.iwh, i64 %i.icw
  %invariant.gep1188.us.i = getelementptr inbounds nuw [488 x i8], ptr %i.fyc, i64 %indvars.iv1467.i
  %invariant.gep1200.us.i = getelementptr inbounds nuw [122 x i8], ptr %i.fyb, i64 %indvars.iv1467.i
  %i.icx = add nuw nsw i64 %indvars.iv1467.i, 1   ; 4 uses
  %bound02651 = icmp ult ptr %scevgep2627, %scevgep2634
  %bound12652 = icmp ult ptr %scevgep2633, %scevgep2632
  %found.conflict2653 = and i1 %bound02651, %bound12652
  %bound02654 = icmp ult ptr %scevgep2627, %scevgep2636
  %bound12655 = icmp ult ptr %scevgep2635, %scevgep2632
  %found.conflict2656 = and i1 %bound02654, %bound12655
  %conflict.rdx2657 = or i1 %found.conflict2653, %found.conflict2656
  %bound02658 = icmp ult ptr %scevgep2627, %scevgep2638
  %bound12659 = icmp ult ptr %scevgep2637, %scevgep2632
  %found.conflict2660 = and i1 %bound02658, %bound12659
  %conflict.rdx2661 = or i1 %conflict.rdx2657, %found.conflict2660
  %bound02662 = icmp ult ptr %scevgep2627, %scevgep2640
  %bound12663 = icmp ult ptr %scevgep2639, %scevgep2632
  %found.conflict2664 = and i1 %bound02662, %bound12663
  %conflict.rdx2665 = or i1 %conflict.rdx2661, %found.conflict2664
  %bound02666 = icmp ult ptr %scevgep2627, %scevgep2642
  %bound12667 = icmp ult ptr %scevgep2641, %scevgep2632
  %found.conflict2668 = and i1 %bound02666, %bound12667
  %conflict.rdx2669 = or i1 %conflict.rdx2665, %found.conflict2668
  %bound02670 = icmp ult ptr %scevgep2627, %scevgep2644
  %bound12671 = icmp ult ptr %scevgep2643, %scevgep2632
  %found.conflict2672 = and i1 %bound02670, %bound12671
  %conflict.rdx2673 = or i1 %conflict.rdx2669, %found.conflict2672
  %bound02674 = icmp ult ptr %scevgep2627, %scevgep2646
  %bound12675 = icmp ult ptr %scevgep2645, %scevgep2632
  %found.conflict2676 = and i1 %bound02674, %bound12675
  %conflict.rdx2677 = or i1 %conflict.rdx2673, %found.conflict2676
  %bound02678 = icmp ult ptr %scevgep2627, %scevgep2648
  %bound12679 = icmp ult ptr %scevgep2647, %scevgep2632
  %found.conflict2680 = and i1 %bound02678, %bound12679
  %conflict.rdx2681 = or i1 %conflict.rdx2677, %found.conflict2680
  %bound02682 = icmp ult ptr %scevgep2627, %scevgep2650
  %bound12683 = icmp ult ptr %scevgep2649, %scevgep2632
  %found.conflict2684 = and i1 %bound02682, %bound12683
  %conflict.rdx2685 = or i1 %conflict.rdx2681, %found.conflict2684
  br label %.preheader1043.us.i

.preheader1056.us.i:                              ; preds = %._crit_edge.us.i, %.preheader1056.us.preheader.i
  %indvars.iv1179 = phi i32 [ %indvars.iv.next1180, %._crit_edge.us.i ], [ %indvars.iv1177, %.preheader1056.us.preheader.i ] ; 2 uses
  %indvars.iv1343.i = phi i64 [ %indvars.iv.next1344.i, %._crit_edge.us.i ], [ %i.gba, %.preheader1056.us.preheader.i ] ; 6 uses
  %i.icy = sext i32 %indvars.iv1179 to i64
  %i.icz = sub nsw i64 %indvars.iv1343.i, %i.gba
  %i.ida = getelementptr inbounds [1464 x i8], ptr %i.fxb, i64 %i.icz
  %i.idb = icmp slt i64 %indvars.iv1343.i, %i.fyl ; 2 uses
  %i.idc = trunc i64 %indvars.iv1343.i to i32     ; 4 uses
  %i.idd = add i32 %i.idc, 600
  %i.ide = srem i32 %i.idd, 6
  %i.idf = sext i32 %i.ide to i64
  %i.idg = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.idf
  %i.idh = sub i32 %i.fyh, %i.idc
  %i.idi = tail call i32 @llvm.abs.i32(i32 %i.idc, i1 true)
  %i.idj = mul nsw i64 %indvars.iv1343.i, %i.aob
  %..i517 = select i1 %i.idb, i32 %i.idi, i32 %i.idh ; 2 uses
  %i.idk = add nsw i32 %..i517, 600
  %i.idl = srem i32 %i.idk, 6
  %i.idm = sext i32 %i.idl to i64
  %i.idn = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.idm
  %i.ido = mul nsw i32 %..i517, %i.bo
  %invariant.gep.i518 = getelementptr [4 x i8], ptr %i.axr, i64 %i.idj
  br label %bb.lm

.preheader1058.us.i:                              ; preds = %._crit_edge1206.us.i, %.preheader1054.lr.ph.us.i, %bb.nd
  %i.idp = sub nsw i32 %i.hok, %i.apg             ; 4 uses
  br i1 %i.gce, label %.preheader1053.us.preheader.i, label %._crit_edge1241.split.us.i

.preheader1053.us.preheader.i:                    ; preds = %.preheader1058.us.i
  %i.idq = icmp slt i32 %i.apt, %i.idp
  %i.idr = sext i32 %i.idp to i64
  br i1 %i.idq, label %.preheader1053.us.i.us, label %.preheader1053.us.i

.preheader1053.us.i.us:                           ; preds = %.preheader1053.us.preheader.i, %._crit_edge1216.us.i.loopexit.us
  %indvars.iv1482.i.us = phi i64 [ %indvars.iv.next1483.i.us, %._crit_edge1216.us.i.loopexit.us ], [ 0, %.preheader1053.us.preheader.i ] ; 4 uses
  %i.ids = mul i64 %indvars.iv1482.i.us, 14884
  %i.idt = getelementptr inbounds nuw [14884 x i8], ptr %i.fye, i64 %indvars.iv1482.i.us
  %i.idu = getelementptr inbounds nuw [14884 x i8], ptr %i.fyb, i64 %indvars.iv1482.i.us
  %i.idv = getelementptr i8, ptr %i.gav, i64 %i.ids
  br label %.preheader1037.lr.ph.us.us.i.us

.preheader1037.lr.ph.us.us.i.us:                  ; preds = %.preheader1053.us.i.us, %._crit_edge1213.us.us.i.us
  %indvar4539 = phi i64 [ 0, %.preheader1053.us.i.us ], [ %indvar.next4540, %._crit_edge1213.us.us.i.us ] ; 2 uses
  %indvars.iv1479.i.us = phi i64 [ %i.aps, %.preheader1053.us.i.us ], [ %i.iea, %._crit_edge1213.us.us.i.us ] ; 3 uses
  %i.idw = mul nuw nsw i64 %indvar4539, 122
  %scevgep4541 = getelementptr i8, ptr %i.idv, i64 %i.idw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.f, i8 0, i64 5, i1 false)
  %i.idx = getelementptr inbounds nuw [122 x i8], ptr %i.idt, i64 %indvars.iv1479.i.us ; 2 uses
  %i.idy = getelementptr i8, ptr %i.idx, i64 %i.aps
  %i.idz = getelementptr i8, ptr %i.idy, i64 -5
  store i8 0, ptr %i.idz, align 1, !tbaa !169
  %i.iea = add nuw nsw i64 %indvars.iv1479.i.us, 1 ; 3 uses
  %load_initial = load i8, ptr %scevgep4541, align 1
  br label %.preheader1037.us.us.i.us

.preheader1037.us.us.i.us:                        ; preds = %.preheader1037.us.us.i.us, %.preheader1037.lr.ph.us.us.i.us
  %store_forwarded = phi i8 [ %load_initial, %.preheader1037.lr.ph.us.us.i.us ], [ %i.iey, %.preheader1037.us.us.i.us ]
  %indvars.iv1476.i.us = phi i64 [ %i.aqd, %.preheader1037.lr.ph.us.us.i.us ], [ %indvars.iv.next1477.i.us, %.preheader1037.us.us.i.us ] ; 4 uses
  %invariant.gep1208.us.us.i.us = getelementptr i8, ptr %i.idu, i64 %indvars.iv1476.i.us ; 2 uses
  %i.ieb = getelementptr [122 x i8], ptr %invariant.gep1208.us.us.i.us, i64 %indvars.iv1479.i.us ; 4 uses
  %i.iec = getelementptr i8, ptr %i.ieb, i64 -242
  %i.ied = load i8, ptr %i.iec, align 1, !tbaa !169
  %i.iee = getelementptr i8, ptr %i.ieb, i64 -120
  %i.ief = load i8, ptr %i.iee, align 1, !tbaa !169
  %i.ieg = getelementptr i8, ptr %i.ieb, i64 2
  %i.ieh = load i8, ptr %i.ieg, align 1, !tbaa !169
  %gep1209.us.us.3.i.us = getelementptr [122 x i8], ptr %invariant.gep1208.us.us.i.us, i64 %i.iea
  %i.iei = getelementptr i8, ptr %gep1209.us.us.3.i.us, i64 2
  %i.iej = load i8, ptr %i.iei, align 1, !tbaa !169
  %i.iek = getelementptr i8, ptr %i.ieb, i64 246
  %i.iel = load i8, ptr %i.iek, align 1, !tbaa !169
  %i.iem = insertelement <4 x i8> poison, i8 %i.ief, i64 0
  %i.ien = insertelement <4 x i8> %i.iem, i8 %i.ied, i64 1
  %i.ieo = insertelement <4 x i8> %i.ien, i8 %i.ieh, i64 2
  %i.iep = insertelement <4 x i8> %i.ieo, i8 %i.iej, i64 3
  %i.ieq = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.iep)
  %op.rdx4600 = add i8 %i.ieq, %i.iel             ; 2 uses
  %i.ier = getelementptr i8, ptr %i.idx, i64 %indvars.iv1476.i.us
  %i.ies = trunc nsw i64 %indvars.iv1476.i.us to i32
  %i.iet = srem i32 %i.ies, 5
  %i.ieu = sext i32 %i.iet to i64
  %i.iev = getelementptr inbounds i8, ptr %i.f, i64 %i.ieu ; 2 uses
  %i.iew = load i8, ptr %i.iev, align 1, !tbaa !169
  %i.iex = add i8 %store_forwarded, %op.rdx4600
  %i.iey = sub i8 %i.iex, %i.iew                  ; 2 uses
  store i8 %i.iey, ptr %i.ier, align 1, !tbaa !169
  store i8 %op.rdx4600, ptr %i.iev, align 1, !tbaa !169
  %indvars.iv.next1477.i.us = add nsw i64 %indvars.iv1476.i.us, 1 ; 2 uses
  %i.iez = icmp slt i64 %indvars.iv.next1477.i.us, %i.idr
  br i1 %i.iez, label %.preheader1037.us.us.i.us, label %._crit_edge1213.us.us.i.us

._crit_edge1213.us.us.i.us:                       ; preds = %.preheader1037.us.us.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.ifa = icmp slt i64 %i.iea, %i.gco
  %indvar.next4540 = add i64 %indvar4539, 1
  br i1 %i.ifa, label %.preheader1037.lr.ph.us.us.i.us, label %._crit_edge1216.us.i.loopexit.us

._crit_edge1216.us.i.loopexit.us:                 ; preds = %._crit_edge1213.us.us.i.us
  %indvars.iv.next1483.i.us = add nuw nsw i64 %indvars.iv1482.i.us, 1 ; 2 uses
  %exitcond1486.not.i.us = icmp eq i64 %indvars.iv.next1483.i.us, %i.apy
  br i1 %exitcond1486.not.i.us, label %.preheader1057.split.us.i, label %.preheader1053.us.i.us

.preheader1059.us.i:                              ; preds = %._crit_edge1119.us.i, %.lr.ph1106.us.i, %.preheader1061.us.i
  %i.ifb = add nsw i32 %indvars.iv1336.i, 6
  %i.ifc = add nsw i32 %i.gdg, -6                 ; 2 uses
  %i.ifd = icmp sge i32 %i.ifb, %i.ifc
  %i.ife = sub nsw i32 %indvars.iv1336.i, %i.fyj
  %.fr967.us.i = freeze i32 %i.ife
  %i.iff = add i32 %.fr967.us.i, %i.apn           ; 2 uses
  %i.ifg = srem i32 %i.iff, 3
  %i.ifh = add i32 %i.iff, %i.fyj
  %i.ifi = sub i32 %i.ifh, %i.ifg                 ; 2 uses
  %i.ifj = sub nsw i32 %i.gdg, %i.apm             ; 3 uses
  %i.ifk = icmp sge i32 %i.ifi, %i.ifj
  %i.ifl = add nsw i32 %indvars.iv1336.i, %i.apm
  %i.ifm = icmp sge i32 %i.ifl, %i.ifj
  %i.ifn = add nsw i32 %indvars.iv1336.i, %i.apo
  %i.ifo = sub nsw i32 %i.gdg, %i.apo             ; 2 uses
  %i.ifp = icmp sge i32 %i.ifn, %i.ifo
  %i.ifq = sext i32 %i.ifc to i64
  %i.ifr = sext i32 %i.ifi to i64
  %i.ifs = sext i32 %i.ifj to i64                 ; 2 uses
  %i.ift = sext i32 %i.ifo to i64
  %brmerge1285.i = select i1 %i.gbv, i1 true, i1 %i.ifd
  %brmerge1288.i = select i1 %i.gbn, i1 true, i1 %i.ifk
  %brmerge1291.i = select i1 %i.gbp, i1 true, i1 %i.ifm
  br label %bb.mj

.preheader1061.us.i:                              ; preds = %._crit_edge.us.i, %bb.ll
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.fyo, ptr noundef nonnull %i.fxb, i64 noundef 44652) #27
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.fyp, ptr noundef nonnull %i.fxb, i64 noundef 44652) #27
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.fyq, ptr noundef nonnull %i.fxb, i64 noundef 44652) #27
  br i1 %i.gbf, label %.lr.ph1106.us.i, label %.preheader1059.us.i

iter.check2899:                                   ; preds = %.preheader.i520
  %i.ifu = sub i32 %i.fyh, %i.gex                 ; 2 uses
  %i.ifv = add nsw i32 %i.ifu, 600
  %i.ifw = srem i32 %i.ifv, 6
  %i.ifx = sext i32 %i.ifw to i64
  %i.ify = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.ifx ; 21 uses
  %i.ifz = mul nsw i32 %i.ifu, %i.bo              ; 3 uses
  br i1 %min.iters.check2851, label %vec.epilog.scalar.ph2900.preheader, label %vector.main.loop.iter.check2852

vector.main.loop.iter.check2852:                  ; preds = %iter.check2899
  br i1 %min.iters.check2853, label %vec.epilog.ph2903, label %vector.ph2854

vector.ph2854:                                    ; preds = %vector.main.loop.iter.check2852
  %i.iga = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.09001088.us.i, i64 0
  %i.igb = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.09031087.us.i, i64 0
  %broadcast.splatinsert2856 = insertelement <8 x i32> poison, i32 %i.ifz, i64 0
  %broadcast.splat2857 = shufflevector <8 x i32> %broadcast.splatinsert2856, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body2870

vector.body2870:                                  ; preds = %vector.body2870, %vector.ph2854
  %index2871 = phi i64 [ 0, %vector.ph2854 ], [ %index.next2888, %vector.body2870 ]
  %vec.ind2872 = phi <8 x i64> [ %induction2866, %vector.ph2854 ], [ %vec.ind.next2889, %vector.body2870 ] ; 3 uses
  %vec.phi2873 = phi <8 x i8> [ %i.iga, %vector.ph2854 ], [ %predphi2886, %vector.body2870 ]
  %vec.phi2874 = phi <8 x i8> [ zeroinitializer, %vector.ph2854 ], [ %predphi2887, %vector.body2870 ]
  %vec.phi2875 = phi <8 x float> [ %i.igb, %vector.ph2854 ], [ %predphi2884, %vector.body2870 ] ; 2 uses
  %vec.phi2876 = phi <8 x float> [ zeroinitializer, %vector.ph2854 ], [ %predphi2885, %vector.body2870 ] ; 2 uses
  %vec.ind2877 = phi <8 x i32> [ %induction2869, %vector.ph2854 ], [ %vec.ind.next2890, %vector.body2870 ] ; 4 uses
  %step.add2878 = add nsw <8 x i64> %vec.ind2872, splat (i64 8)
  %step.add2879 = add <8 x i32> %vec.ind2877, splat (i32 8) ; 2 uses
  %i.igc = icmp slt <8 x i64> %vec.ind2872, %broadcast.splat2859
  %i.igd = icmp slt <8 x i64> %step.add2878, %broadcast.splat2859
  %i.ige = sub <8 x i32> %broadcast.splat2861, %vec.ind2877
  %i.igf = sub <8 x i32> %broadcast.splat2861, %step.add2879
  %i.igg = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %vec.ind2877, i1 true)
  %i.igh = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %step.add2879, i1 true)
  %i.igi = select <8 x i1> %i.igc, <8 x i32> %i.igg, <8 x i32> %i.ige ; 2 uses
  %i.igj = select <8 x i1> %i.igd, <8 x i32> %i.igh, <8 x i32> %i.igf ; 2 uses
  %i.igk = add nsw <8 x i32> %i.igi, splat (i32 600)
  %i.igl = add nsw <8 x i32> %i.igj, splat (i32 600)
  %i.igm = srem <8 x i32> %i.igk, splat (i32 6)
  %i.ign = srem <8 x i32> %i.igl, splat (i32 6)
  %i.igo = sext <8 x i32> %i.igm to <8 x i64>     ; 8 uses
  %i.igp = sext <8 x i32> %i.ign to <8 x i64>     ; 8 uses
  %i.igq = extractelement <8 x i64> %i.igo, i64 0
  %i.igr = getelementptr inbounds i8, ptr %i.ify, i64 %i.igq
  %i.igs = extractelement <8 x i64> %i.igo, i64 1
  %i.igt = getelementptr inbounds i8, ptr %i.ify, i64 %i.igs
  %i.igu = extractelement <8 x i64> %i.igo, i64 2
  %i.igv = getelementptr inbounds i8, ptr %i.ify, i64 %i.igu
  %i.igw = extractelement <8 x i64> %i.igo, i64 3
  %i.igx = getelementptr inbounds i8, ptr %i.ify, i64 %i.igw
  %i.igy = extractelement <8 x i64> %i.igo, i64 4
  %i.igz = getelementptr inbounds i8, ptr %i.ify, i64 %i.igy
  %i.iha = extractelement <8 x i64> %i.igo, i64 5
  %i.ihb = getelementptr inbounds i8, ptr %i.ify, i64 %i.iha
  %i.ihc = extractelement <8 x i64> %i.igo, i64 6
  %i.ihd = getelementptr inbounds i8, ptr %i.ify, i64 %i.ihc
  %i.ihe = extractelement <8 x i64> %i.igo, i64 7
  %i.ihf = getelementptr inbounds i8, ptr %i.ify, i64 %i.ihe
  %i.ihg = extractelement <8 x i64> %i.igp, i64 0
  %i.ihh = getelementptr inbounds i8, ptr %i.ify, i64 %i.ihg
  %i.ihi = extractelement <8 x i64> %i.igp, i64 1
  %i.ihj = getelementptr inbounds i8, ptr %i.ify, i64 %i.ihi
  %i.ihk = extractelement <8 x i64> %i.igp, i64 2
  %i.ihl = getelementptr inbounds i8, ptr %i.ify, i64 %i.ihk
  %i.ihm = extractelement <8 x i64> %i.igp, i64 3
  %i.ihn = getelementptr inbounds i8, ptr %i.ify, i64 %i.ihm
  %i.iho = extractelement <8 x i64> %i.igp, i64 4
  %i.ihp = getelementptr inbounds i8, ptr %i.ify, i64 %i.iho
  %i.ihq = extractelement <8 x i64> %i.igp, i64 5
  %i.ihr = getelementptr inbounds i8, ptr %i.ify, i64 %i.ihq
  %i.ihs = extractelement <8 x i64> %i.igp, i64 6
  %i.iht = getelementptr inbounds i8, ptr %i.ify, i64 %i.ihs
  %i.ihu = extractelement <8 x i64> %i.igp, i64 7
  %i.ihv = getelementptr inbounds i8, ptr %i.ify, i64 %i.ihu
  %i.ihw = load i8, ptr %i.igr, align 1, !tbaa !169
  %i.ihx = load i8, ptr %i.igt, align 1, !tbaa !169
  %i.ihy = load i8, ptr %i.igv, align 1, !tbaa !169
  %i.ihz = load i8, ptr %i.igx, align 1, !tbaa !169
  %i.iia = load i8, ptr %i.igz, align 1, !tbaa !169
end_hunk_2
begin_hunk_3_@demosaic_ppg:bb.a
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
  %.0333 = phi ptr [ %1, %._crit_edge411.split ], [ %i.hq, %._crit_edge103.i.i ] ; 4 uses
  %i.oa = add nuw nsw i32 %6, 3                   ; 4 uses
  %i.ob = add nsw i32 %3, -3
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
  %.0333550 = phi ptr [ %i.hq, %bb.x ], [ %.0333, %pre_median.exit ], [ %.0333, %._crit_edge417 ] ; 2 uses
  br i1 %i.d, label %.lr.ph430, label %._crit_edge431.split

.lr.ph430:                                        ; preds = %.lr.ph420, %.preheader
  %.0333550553 = phi ptr [ %.0333550, %.preheader ], [ %.0333, %.lr.ph420 ] ; 2 uses
  %i.oz = sext i32 %2 to i64                      ; 2 uses
  %i.pa = shl nsw i64 %i.oz, 2
  %i.pb = icmp sgt i32 %2, 0
  %i.pc = sub nsw i32 %2, %6                      ; 3 uses
  %i.pd = add nsw i32 %2, -1
  %i.pe = shl nsw i32 %2, 2
  %7 = sext i32 %i.pe to i64                      ; 4 uses
  %i.pf = sub nsw i64 0, %7                       ; 3 uses
  br i1 %i.pb, label %.lr.ph425.preheader, label %._crit_edge431.split

.lr.ph425.preheader:                              ; preds = %.lr.ph430
  %i.pg = add nsw i32 %3, -1
  %i.ph = sub nsw i32 %3, %6
  %i.pi = zext nneg i32 %i.pg to i64
  %i.pj = sext i32 %i.ph to i64
  %i.pk = zext nneg i32 %6 to i64
  %i.pl = sext i32 %i.pc to i64
  %wide.trip.count465 = zext nneg i32 %3 to i64
  br label %.lr.ph425

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge417
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next456, %._crit_edge417 ] ; 6 uses
  %i.pm = mul nuw i64 %i.oe, %indvars.iv
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pm ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 48
  %i.pp = mul nuw nsw i64 %indvars.iv, %i.od      ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.0333, i64 %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  %.not347 = icmp samesign uge i64 %indvars.iv, %i.ox
  %i.ps = icmp slt i64 %indvars.iv, %i.ow
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.pn, i64 %i.oj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.pp
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.pu = shl i32 %indvars.iv.tr, 1
  %i.pv = and i32 %i.pu, 14
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph, %bb.cs
  %.0325415 = phi i32 [ 3, %.lr.ph ], [ %i.tp, %bb.cs ] ; 2 uses
  %.0327414 = phi ptr [ %i.pr, %.lr.ph ], [ %i.to, %bb.cs ]
  %.0329413 = phi ptr [ %i.po, %.lr.ph ], [ %i.tn, %bb.cs ]
  %i.pw = icmp eq i32 %.0325415, %i.oa
  %or.cond355.not372 = select i1 %i.pw, i1 %.not347, i1 false
  %or.cond357 = select i1 %or.cond355.not372, i1 %i.ps, i1 false ; 3 uses
  %.1330 = select i1 %or.cond357, ptr %i.pt, ptr %.0329413 ; 4 uses
  %.1328 = select i1 %or.cond357, ptr %gep, ptr %.0327414 ; 13 uses
  %.1326 = select i1 %or.cond357, i32 %i.oh, i32 %.0325415 ; 3 uses
  %i.px = icmp eq i32 %.1326, %2
  br i1 %i.px, label %._crit_edge417, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.py = and i32 %.1326, 1
  %.tr.i366 = or disjoint i32 %i.py, %i.pv
  %i.pz = shl nuw nsw i32 %.tr.i366, 1
  %i.qa = lshr i32 %4, %i.pz                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.qb = load float, ptr %.1328, align 4, !tbaa !22 ; 8 uses
  %i.qc = and i32 %i.qa, 1
  %or.cond5 = icmp eq i32 %i.qc, 0
  br i1 %or.cond5, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.qd = and i32 %i.qa, 2
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qe
  store float %i.qb, ptr %i.qf, align 8, !tbaa !22
  %i.qg = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.om
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !22 ; 5 uses
  %i.qi = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.oo
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !22 ; 2 uses
  %i.qk = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.oq
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !22
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.od
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !22 ; 5 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.os
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !22 ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.ou
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !22
  %i.qs = getelementptr inbounds i8, ptr %.1328, i64 -8
  %i.qt = getelementptr inbounds i8, ptr %.1328, i64 -12
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !22
  %i.qv = getelementptr inbounds nuw i8, ptr %.1328, i64 4
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !22 ; 5 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.1328, i64 8
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !22 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.1328, i64 12
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !22
  %i.rb = fsub reassoc nsz arcp contract afn float %i.qy, %i.qb
  %i.rc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rb)
  %i.rd = load <2 x float>, ptr %i.qs, align 4, !tbaa !22 ; 3 uses
  %i.re = insertelement <2 x float> poison, float %i.qb, i64 0
  %i.rf = insertelement <2 x float> %i.re, float %i.qw, i64 1
  %i.rg = fsub reassoc nsz arcp contract afn <2 x float> %i.rd, %i.rf
  %i.rh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.rg)
  %i.ri = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.rc, <2 x float> %i.rh)
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, 3.000000e+00
  %i.rk = fsub reassoc nsz arcp contract afn float %i.ra, %i.qw
  %i.rl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rk)
  %i.rm = extractelement <2 x float> %i.rd, i64 1 ; 4 uses
  %i.rn = fsub reassoc nsz arcp contract afn float %i.qu, %i.rm
  %i.ro = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rn)
  %i.rp = fadd reassoc nsz arcp contract afn float %i.rl, %i.ro
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, 2.000000e+00
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rj, %i.rq
  %i.rs = fsub reassoc nsz arcp contract afn float %i.qj, %i.qb
  %i.rt = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rs)
  %i.ru = fsub reassoc nsz arcp contract afn float %i.qp, %i.qb
  %i.rv = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ru)
  %i.rw = fsub reassoc nsz arcp contract afn float %i.qh, %i.qn
  %i.rx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rw)
  %i.ry = fadd reassoc nsz arcp contract afn float %i.rx, %i.rt
  %i.rz = fadd reassoc nsz arcp contract afn float %i.ry, %i.rv
  %i.sa = fmul reassoc nsz arcp contract afn float %i.rz, 3.000000e+00
  %i.sb = fsub reassoc nsz arcp contract afn float %i.qr, %i.qn
  %i.sc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.sb)
  %i.sd = fsub reassoc nsz arcp contract afn float %i.ql, %i.qh
  %i.se = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.sd)
  %i.sf = fadd reassoc nsz arcp contract afn float %i.sc, %i.se
  %i.sg = fmul reassoc nsz arcp contract afn float %i.sf, 2.000000e+00
  %i.sh = fadd reassoc nsz arcp contract afn float %i.sa, %i.sg
  %i.si = fcmp reassoc nsz arcp contract afn ogt float %i.rr, %i.sh
  br i1 %i.si, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.sj = fadd reassoc nsz arcp contract afn float %i.qh, %i.qb
  %i.sk = fadd reassoc nsz arcp contract afn float %i.sj, %i.qn
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sk, 2.000000e+00
  %i.sm = fadd reassoc nsz arcp contract afn float %i.qj, %i.qp
  %i.sn = fsub reassoc nsz arcp contract afn float %i.sl, %i.sm
  %i.so = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.qh, float %i.qn)
  %i.sp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qh, float %i.qn)
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sn, 2.500000e-01
  %i.sr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sq, float %i.sp)
  %i.ss = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sr, float %i.so)
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.st = fadd reassoc nsz arcp contract afn float %i.rm, %i.qb
  %i.su = fadd reassoc nsz arcp contract afn float %i.st, %i.qw
  %i.sv = fmul reassoc nsz arcp contract afn float %i.su, 2.000000e+00
  %i.sw = extractelement <2 x float> %i.rd, i64 0
  %i.sx = fadd reassoc nsz arcp contract afn float %i.sw, %i.qy
  %i.sy = fsub reassoc nsz arcp contract afn float %i.sv, %i.sx
  %i.sz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.rm, float %i.qw)
  %i.ta = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rm, float %i.qw)
  %i.tb = fmul reassoc nsz arcp contract afn float %i.sy, 2.500000e-01
  %i.tc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.tb, float %i.ta)
  %i.td = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tc, float %i.sz)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.co, %bb.cq, %bb.cr
  %i.te = phi float [ %i.ss, %bb.cq ], [ %i.td, %bb.cr ], [ %i.qb, %bb.co ]
  %i.tf = load <4 x float>, ptr %i.c, align 16
  %i.tg = shufflevector <4 x float> %i.tf, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.th = insertelement <2 x float> %i.tg, float %i.te, i64 1
  %i.ti = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.th, <2 x float> zeroinitializer)
  store <2 x float> %i.ti, ptr %.1330, align 4, !tbaa !22
  %i.tj = load float, ptr %i.oy, align 8, !tbaa !22
  %i.tk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tj, float 0.000000e+00)
  %i.tl = getelementptr inbounds nuw i8, ptr %.1330, i64 8
  store float %i.tk, ptr %i.tl, align 4, !tbaa !22
  %i.tm = getelementptr inbounds nuw i8, ptr %.1330, i64 12
  store float 0.000000e+00, ptr %i.tm, align 4, !tbaa !22
  %i.tn = getelementptr inbounds nuw i8, ptr %.1330, i64 16
  %i.to = getelementptr inbounds nuw i8, ptr %.1328, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.tp = add nsw i32 %.1326, 1                   ; 2 uses
  %i.tq = icmp slt i32 %i.tp, %i.of
  br i1 %i.tq, label %bb.cn, label %._crit_edge417

._crit_edge417:                                   ; preds = %bb.cs, %bb.cn
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %.preheader, label %.lr.ph

._crit_edge431.split:                             ; preds = %._crit_edge426, %.lr.ph430, %.preheader
  %.0333550552 = phi ptr [ %.0333550, %.preheader ], [ %.0333550553, %.lr.ph430 ], [ %.0333550553, %._crit_edge426 ]
  br i1 %i.al, label %bb.dj, label %bb.dk

.lr.ph425:                                        ; preds = %.lr.ph425.preheader, %._crit_edge426
  %indvars.iv462 = phi i64 [ 0, %.lr.ph425.preheader ], [ %indvars.iv.next463, %._crit_edge426 ] ; 8 uses
  %i.tr = mul nuw i64 %i.pa, %indvars.iv462
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tr ; 2 uses
  %.not = icmp samesign uge i64 %indvars.iv462, %i.pk ; 2 uses
  %i.tt = icmp slt i64 %indvars.iv462, %i.pj      ; 2 uses
  %i.tu = mul nuw nsw i64 %indvars.iv462, %i.oz
  %i.tv = add nsw i64 %i.tu, %i.pl
  %.idx = shl nsw i64 %i.tv, 4
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.tx = icmp ne i64 %indvars.iv462, 0
  %i.ty = icmp samesign ult i64 %indvars.iv462, %i.pi
  %indvars.iv462.tr = trunc i64 %indvars.iv462 to i32
  %i.tz = shl i32 %indvars.iv462.tr, 1
  %i.ua = and i32 %i.tz, 14
  %.fr427 = freeze i1 %i.ty
  %i.ub = and i1 %.fr427, %i.tx
  br i1 %i.ub, label %.lr.ph425.split, label %.lr.ph425.split.us

.lr.ph425.split.us:                               ; preds = %.lr.ph425, %.lr.ph425.split.us
  %.0316423.us = phi i32 [ %i.ug, %.lr.ph425.split.us ], [ 0, %.lr.ph425 ] ; 2 uses
  %.0317422.us = phi ptr [ %i.uf, %.lr.ph425.split.us ], [ %i.ts, %.lr.ph425 ]
  %i.uc = icmp eq i32 %.0316423.us, %6
  %or.cond358.not370.us = select i1 %i.uc, i1 %.not, i1 false
  %or.cond360.us = select i1 %or.cond358.not370.us, i1 %i.tt, i1 false ; 2 uses
  %spec.select432 = select i1 %or.cond360.us, ptr %i.tw, ptr %.0317422.us ; 3 uses
  %i.ud = load <4 x float>, ptr %spec.select432, align 4, !tbaa !22
  %i.ue = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ud, <4 x float> zeroinitializer)
end_hunk_3
begin_hunk_4_@_vng_lininterpolate:bb.a
.split252.us.us.us.us.2:                          ; preds = %bb.u, %fcol.exit230.us.us.us.us.2.2
  %.2.us.us.us.us.2.2 = phi ptr [ %i.ga, %bb.u ], [ %.2.us.us.us.us.1.2, %fcol.exit230.us.us.us.us.2.2 ] ; 3 uses
  %i.gf = zext i8 %i.bj to i32
  %i.gg = ptrtoint ptr %.2.us.us.us.us.2.2 to i64
  %i.gh = ptrtoint ptr %i.bc to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = ashr exact i64 %i.gi, 2
  %i.gk = sdiv i64 %i.gj, 3
  %i.gl = trunc i64 %i.gk to i32
  store i32 %i.gl, ptr %i.bc, align 4, !tbaa !32
  %i.gm = zext i8 %i.bj to i64                    ; 5 uses
  br i1 %i.e, label %.epil.preheader450, label %.split252.us.us.us.us.2.new

.split264.us.us:                                  ; preds = %.epilog-lcssa454
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond366.not = icmp eq i64 %indvars.iv.next360, 6
  br i1 %exitcond366.not, label %.preheader233, label %.preheader235.us

._crit_edge:                                      ; preds = %.loopexit
  %i.gn = add nuw nsw i32 %.0199247, 1            ; 2 uses
  %indvars.iv.next295 = add nsw i64 %indvars.iv, 1
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1
  %exitcond309.not = icmp eq i32 %i.gn, %3
  br i1 %exitcond309.not, label %._crit_edge248.split, label %.preheader236

bb.v:                                             ; preds = %.preheader236, %.loopexit
  %.0197246 = phi i32 [ 0, %.preheader236 ], [ %i.mq, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4
  %i.go = icmp eq i32 %.0197246, 1
  %or.cond = and i1 %i.o, %i.go
  %.1198 = select i1 %or.cond, i32 %spec.select, i32 %.0197246 ; 8 uses
  %i.gp = add i32 %.1198, -1                      ; 5 uses
  %i.gq = sext i32 %i.gp to i64                   ; 6 uses
  %i.gr = icmp slt i32 %i.gp, %2
  %i.gs = and i32 %i.gp, 1
  %invariant.gep413 = getelementptr [4 x i8], ptr %1, i64 %i.gq
  %indvars.iv.next = add nsw i64 %i.gq, 1         ; 3 uses
  %i.gt = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %i.gu = icmp slt i64 %indvars.iv.next, %i.k
  %i.gv = and i32 %i.gt, 1
  %i.gw = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next
  %indvars.iv.next.1 = add nsw i64 %i.gq, 2       ; 3 uses
  %i.gx = trunc nsw i64 %indvars.iv.next.1 to i32 ; 2 uses
  %i.gy = icmp slt i64 %indvars.iv.next.1, %i.k
  %i.gz = and i32 %i.gx, 1
  %i.ha = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.hb = icmp slt i32 %i.gp, %2
  %i.hc = add i32 %.1198, 599
  %i.hd = srem i32 %i.hc, 6
  %i.he = sext i32 %i.hd to i64
  %invariant.gep415 = getelementptr [4 x i8], ptr %1, i64 %i.gq
  %indvars.iv.next293 = add nsw i64 %i.gq, 1      ; 3 uses
  %i.hf = icmp slt i64 %indvars.iv.next293, %i.k
  %i.hg = add i32 %.1198, 600
  %i.hh = srem i32 %i.hg, 6
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next293
  %indvars.iv.next293.1 = add nsw i64 %i.gq, 2    ; 3 uses
  %i.hk = icmp slt i64 %indvars.iv.next293.1, %i.k
  %i.hl = add i32 %.1198, 601
  %i.hm = srem i32 %i.hl, 6
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next293.1
  br label %.backedge

bb.w:                                             ; preds = %.split239.us
  br i1 %i.e, label %.thread409, label %.thread

.thread409:                                       ; preds = %.split239.us.thread406, %bb.w
  %i.hp = add nsw i32 %.1198, 600
  %i.hq = srem i32 %i.hp, 6
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %i.v, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !169
  %i.hu = zext i8 %i.ht to i32
  br label %fcol.exit

.thread:                                          ; preds = %.split239.us.thread, %bb.w
  %i.hv = and i32 %.1198, 1
  %.tr.i.i = or disjoint i32 %i.hv, %i.r
  %i.hw = shl nuw nsw i32 %.tr.i.i, 1
  %i.hx = lshr i32 %4, %i.hw
  %i.hy = and i32 %i.hx, 3
  br label %fcol.exit

fcol.exit:                                        ; preds = %.thread409, %.thread
  %.0.i = phi i32 [ %i.hu, %.thread409 ], [ %i.hy, %.thread ]
  %i.hz = add i32 %.1198, %i.w                    ; 2 uses
  %i.ia = shl i32 %i.hz, 2
  %i.ib = sext i32 %i.hz to i64                   ; 2 uses
  %i.ic = getelementptr [4 x i8], ptr %1, i64 %i.ib ; 5 uses
  %i.id = sext i32 %i.ia to i64                   ; 5 uses
  %i.ie = zext nneg i32 %.0.i to i64              ; 4 uses
  br i1 %i.e, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %fcol.exit
  %i.if = shl nsw i64 %i.id, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.if
  %scevgep424 = getelementptr i8, ptr %scevgep423, i64 %i.if
  %i.ig = shl nsw i64 %i.ib, 2
  %scevgep426 = getelementptr i8, ptr %scevgep425, i64 %i.ig
  %bound0 = icmp ult ptr %scevgep, %scevgep426
  %bound1 = icmp ult ptr %i.ic, %scevgep424
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ih = getelementptr [4 x i8], ptr %0, i64 %i.id
  %broadcast.splatinsert = insertelement <4 x ptr> poison, ptr %i.ic, i64 0
  %broadcast.splat = shufflevector <4 x ptr> %broadcast.splatinsert, <4 x ptr> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert427 = insertelement <4 x i64> poison, i64 %i.ie, i64 0
  %broadcast.splat428 = shufflevector <4 x i64> %broadcast.splatinsert427, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ii = icmp eq <4 x i64> %vec.ind, %broadcast.splat428 ; 3 uses
  %i.ij = xor <4 x i1> %i.ii, splat (i1 true)
  %i.ik = getelementptr i8, ptr %i.b, i64 %index
  %wide.masked.load = call <4 x i8> @llvm.masked.load.v4i8.p0(ptr align 4 %i.ik, <4 x i1> %i.ij, <4 x i8> poison), !tbaa !169 ; 2 uses
  %i.il = icmp eq <4 x i8> %wide.masked.load, zeroinitializer ; 2 uses
  %i.im = select <4 x i1> %i.ii, <4 x i1> splat (i1 true), <4 x i1> %i.il
  %i.in = xor <4 x i1> %i.im, splat (i1 true)
  %i.io = getelementptr [4 x i8], ptr %i.a, i64 %index
  %wide.masked.load429 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 16 %i.io, <4 x i1> %i.in, <4 x float> poison), !tbaa !22
  %i.ip = uitofp <4 x i8> %wide.masked.load to <4 x float>
  %i.iq = fdiv reassoc nsz arcp contract afn <4 x float> %wide.masked.load429, %i.ip
  %i.ir = select <4 x i1> %i.ii, <4 x i1> splat (i1 true), <4 x i1> %i.il ; 2 uses
  %wide.masked.gather = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %broadcast.splat, <4 x i1> %i.ir, <4 x float> poison), !tbaa !22, !alias.scope !720
  %i.is = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.masked.gather, <4 x float> zeroinitializer)
  %predphi = select <4 x i1> %i.ir, <4 x float> %i.is, <4 x float> %i.iq
  %i.it = getelementptr [4 x i8], ptr %i.ih, i64 %index
  store <4 x float> %predphi, ptr %i.it, align 4, !tbaa !22, !alias.scope !723, !noalias !720
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.iu = icmp eq i64 %index.next, %n.vec
  br i1 %i.iu, label %middle.block, label %vector.body, !llvm.loop !725

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %fcol.exit, %middle.block
  %indvars.iv301.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %fcol.exit ], [ %n.vec, %middle.block ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.not214.prol = icmp eq i64 %indvars.iv301.ph, %i.ie
  br i1 %.not214.prol, label %bb.z, label %bb.x

bb.x:                                             ; preds = %scalar.ph.prol
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv301.ph
  %i.iw = load i8, ptr %i.iv, align 4, !tbaa !169 ; 2 uses
  %.not215.prol = icmp eq i8 %i.iw, 0
  br i1 %.not215.prol, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv301.ph
  %i.iy = load float, ptr %i.ix, align 16, !tbaa !22
  %i.iz = uitofp i8 %i.iw to float
  %i.ja = fdiv reassoc nsz arcp contract afn float %i.iy, %i.iz
  br label %scalar.ph.prol.loopexit.unr-lcssa

bb.z:                                             ; preds = %bb.x, %scalar.ph.prol
  %i.jb = load float, ptr %i.ic, align 4, !tbaa !22
  %i.jc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jb, float 0.000000e+00)
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.z, %bb.y
  %.sink.prol = phi float [ %i.ja, %bb.y ], [ %i.jc, %bb.z ]
  %invariant.gep417.sink.prol = getelementptr [4 x i8], ptr %0, i64 %i.id
  %gep418.prol = getelementptr [4 x i8], ptr %invariant.gep417.sink.prol, i64 %indvars.iv301.ph
  store float %.sink.prol, ptr %gep418.prol, align 4, !tbaa !22
  %indvars.iv.next302.prol = or disjoint i64 %indvars.iv301.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv301.unr = phi i64 [ %indvars.iv301.ph, %scalar.ph.preheader ], [ %indvars.iv.next302.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.jd = icmp eq i64 %indvars.iv301.ph, %i.n
  br i1 %i.jd, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.gep417.sink = getelementptr [4 x i8], ptr %0, i64 %i.id
  %invariant.gep417.sink.1 = getelementptr [4 x i8], ptr %0, i64 %i.id
  br label %scalar.ph

.backedge:                                        ; preds = %.backedge.backedge, %bb.v
  %indvars.iv296 = phi i64 [ %indvars.iv, %bb.v ], [ %indvars.iv296.be, %.backedge.backedge ] ; 9 uses
  %i.je = icmp slt i64 %indvars.iv296, %i.l
  %i.jf = trunc nsw i64 %indvars.iv296 to i32     ; 4 uses
  %i.jg = shl i32 %i.jf, 1
  %i.jh = and i32 %i.jg, 14                       ; 3 uses
  %i.ji = trunc i64 %indvars.iv296 to i32
  %i.jj = add i32 %i.ji, 600
  %i.jk = srem i32 %i.jj, 6
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [6 x i8], ptr %5, i64 %i.jl ; 3 uses
  %i.jn = mul nsw i64 %indvars.iv296, %i.k        ; 6 uses
  br i1 %i.je, label %.split, label %.split239.us

.split:                                           ; preds = %.backedge
  %i.jo = or i32 %i.gp, %i.jf
  %or.cond3.us = icmp sgt i32 %i.jo, -1           ; 2 uses
  br i1 %i.e, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  %or.cond218 = and i1 %i.gr, %or.cond3.us
  br i1 %or.cond218, label %fcol.exit224, label %.split.split.1

.split.split.us.preheader:                        ; preds = %.split
  %or.cond218.us = and i1 %i.hb, %or.cond3.us
  br i1 %or.cond218.us, label %fcol.exit224.us, label %.split.split.us.1

fcol.exit224.us:                                  ; preds = %.split.split.us.preheader
  %i.jp = getelementptr inbounds i8, ptr %i.jm, i64 %i.he
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !169
  %gep416 = getelementptr [4 x i8], ptr %invariant.gep415, i64 %i.jn
  %i.jr = load float, ptr %gep416, align 4, !tbaa !22
  %i.js = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jr, float 0.000000e+00)
  %i.jt = zext i8 %i.jq to i64                    ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jt ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !22
  %i.jw = fadd reassoc nsz arcp contract afn float %i.jv, %i.js
  store float %i.jw, ptr %i.ju, align 4, !tbaa !22
  %i.jx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jt ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !169
  %i.jz = add i8 %i.jy, 1
  store i8 %i.jz, ptr %i.jx, align 1, !tbaa !169
  br label %.split.split.us.1

.split.split.us.1:                                ; preds = %fcol.exit224.us, %.split.split.us.preheader
  %i.ka = or i64 %indvars.iv.next293, %indvars.iv296
  %i.kb = and i64 %i.ka, 2147483648
  %or.cond3.us.1 = icmp eq i64 %i.kb, 0
  %or.cond218.us.1 = and i1 %i.hf, %or.cond3.us.1
  br i1 %or.cond218.us.1, label %fcol.exit224.us.1, label %.split.split.us.2

fcol.exit224.us.1:                                ; preds = %.split.split.us.1
  %i.kc = getelementptr inbounds i8, ptr %i.jm, i64 %i.hi
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !169
  %i.ke = getelementptr [4 x i8], ptr %i.hj, i64 %i.jn
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !22
  %i.kg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kf, float 0.000000e+00)
  %i.kh = zext i8 %i.kd to i64                    ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kh ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !22
  %i.kk = fadd reassoc nsz arcp contract afn float %i.kj, %i.kg
  store float %i.kk, ptr %i.ki, align 4, !tbaa !22
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kh ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !169
  %i.kn = add i8 %i.km, 1
  store i8 %i.kn, ptr %i.kl, align 1, !tbaa !169
  br label %.split.split.us.2

.split.split.us.2:                                ; preds = %fcol.exit224.us.1, %.split.split.us.1
  %i.ko = or i64 %indvars.iv.next293.1, %indvars.iv296
  %i.kp = and i64 %i.ko, 2147483648
  %or.cond3.us.2 = icmp eq i64 %i.kp, 0
  %or.cond218.us.2 = and i1 %i.hk, %or.cond3.us.2
  br i1 %or.cond218.us.2, label %fcol.exit224.us.2, label %.split239.us.thread406

fcol.exit224.us.2:                                ; preds = %.split.split.us.2
  %i.kq = getelementptr inbounds i8, ptr %i.jm, i64 %i.hn
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !169
  %i.ks = getelementptr [4 x i8], ptr %i.ho, i64 %i.jn
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !22
  %i.ku = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kt, float 0.000000e+00)
  %i.kv = zext i8 %i.kr to i64                    ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kv ; 2 uses
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !22
  %i.ky = fadd reassoc nsz arcp contract afn float %i.kx, %i.ku
  store float %i.ky, ptr %i.kw, align 4, !tbaa !22
  %i.kz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kv ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !169
  %i.lb = add i8 %i.la, 1
  store i8 %i.lb, ptr %i.kz, align 1, !tbaa !169
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
  %.tr.i.i222 = or disjoint i32 %i.gs, %i.jh
  %i.lc = shl nuw nsw i32 %.tr.i.i222, 1
  %i.ld = lshr i32 %4, %i.lc
  %i.le = and i32 %i.ld, 3
  %gep414 = getelementptr [4 x i8], ptr %invariant.gep413, i64 %i.jn
  %i.lf = load float, ptr %gep414, align 4, !tbaa !22
  %i.lg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lf, float 0.000000e+00)
  %i.lh = zext nneg i32 %i.le to i64              ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lh ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !22
  %i.lk = fadd reassoc nsz arcp contract afn float %i.lj, %i.lg
  store float %i.lk, ptr %i.li, align 4, !tbaa !22
  %i.ll = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lh ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !169
  %i.ln = add i8 %i.lm, 1
  store i8 %i.ln, ptr %i.ll, align 1, !tbaa !169
  br label %.split.split.1

.split.split.1:                                   ; preds = %.split.split.preheader, %fcol.exit224
  %i.lo = or i32 %i.gt, %i.jf
  %or.cond3.1 = icmp sgt i32 %i.lo, -1
  %or.cond218.1 = and i1 %i.gu, %or.cond3.1
  br i1 %or.cond218.1, label %fcol.exit224.1, label %.split.split.2

fcol.exit224.1:                                   ; preds = %.split.split.1
  %.tr.i.i222.1 = or disjoint i32 %i.gv, %i.jh
  %i.lp = shl nuw nsw i32 %.tr.i.i222.1, 1
  %i.lq = lshr i32 %4, %i.lp
  %i.lr = and i32 %i.lq, 3
  %i.ls = getelementptr [4 x i8], ptr %i.gw, i64 %i.jn
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !22
  %i.lu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lt, float 0.000000e+00)
  %i.lv = zext nneg i32 %i.lr to i64              ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lv ; 2 uses
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !22
  %i.ly = fadd reassoc nsz arcp contract afn float %i.lx, %i.lu
  store float %i.ly, ptr %i.lw, align 4, !tbaa !22
  %i.lz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lv ; 2 uses
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !169
  %i.mb = add i8 %i.ma, 1
  store i8 %i.mb, ptr %i.lz, align 1, !tbaa !169
  br label %.split.split.2

.split.split.2:                                   ; preds = %fcol.exit224.1, %.split.split.1
  %i.mc = or i32 %i.gx, %i.jf
  %or.cond3.2 = icmp sgt i32 %i.mc, -1
  %or.cond218.2 = and i1 %i.gy, %or.cond3.2
  br i1 %or.cond218.2, label %fcol.exit224.2, label %.split239.us.thread

fcol.exit224.2:                                   ; preds = %.split.split.2
  %.tr.i.i222.2 = or disjoint i32 %i.gz, %i.jh
  %i.md = shl nuw nsw i32 %.tr.i.i222.2, 1
  %i.me = lshr i32 %4, %i.md
  %i.mf = and i32 %i.me, 3
  %i.mg = getelementptr [4 x i8], ptr %i.ha, i64 %i.jn
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !22
  %i.mi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mh, float 0.000000e+00)
  %i.mj = zext nneg i32 %i.mf to i64              ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mj ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !22
  %i.mm = fadd reassoc nsz arcp contract afn float %i.ml, %i.mi
  store float %i.mm, ptr %i.mk, align 4, !tbaa !22
  %i.mn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mj ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !169
  %i.mp = add i8 %i.mo, 1
  store i8 %i.mp, ptr %i.mn, align 1, !tbaa !169
  br label %.split239.us.thread

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %bb.ag, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.mq = add nsw i32 %.1198, 1                   ; 2 uses
  %i.mr = icmp slt i32 %i.mq, %2
  br i1 %i.mr, label %bb.v, label %._crit_edge

scalar.ph:                                        ; preds = %bb.ag, %scalar.ph.preheader.new
  %indvars.iv301 = phi i64 [ %indvars.iv301.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next302.1, %bb.ag ] ; 6 uses
  %.not214 = icmp eq i64 %indvars.iv301, %i.ie
  br i1 %.not214, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %scalar.ph
  %i.ms = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv301
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !169 ; 2 uses
  %.not215 = icmp eq i8 %i.mt, 0
  br i1 %.not215, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv301
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !22
  %i.mw = uitofp i8 %i.mt to float
  %i.mx = fdiv reassoc nsz arcp contract afn float %i.mv, %i.mw
  br label %scalar.ph.1

bb.ac:                                            ; preds = %bb.aa, %scalar.ph
  %i.my = load float, ptr %i.ic, align 4, !tbaa !22
  %i.mz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.my, float 0.000000e+00)
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.ab, %bb.ac
  %.sink = phi float [ %i.mx, %bb.ab ], [ %i.mz, %bb.ac ]
  %gep418 = getelementptr [4 x i8], ptr %invariant.gep417.sink, i64 %indvars.iv301
  store float %.sink, ptr %gep418, align 4, !tbaa !22
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 4 uses
  %.not214.1 = icmp eq i64 %indvars.iv.next302, %i.ie
  br i1 %.not214.1, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %scalar.ph.1
  %i.na = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next302
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !169 ; 2 uses
  %.not215.1 = icmp eq i8 %i.nb, 0
  br i1 %.not215.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next302
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !22
  %i.ne = uitofp i8 %i.nb to float
  %i.nf = fdiv reassoc nsz arcp contract afn float %i.nd, %i.ne
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %scalar.ph.1
  %i.ng = load float, ptr %i.ic, align 4, !tbaa !22
  %i.nh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ng, float 0.000000e+00)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.1 = phi float [ %i.nf, %bb.ae ], [ %i.nh, %bb.af ]
  %gep418.1 = getelementptr [4 x i8], ptr %invariant.gep417.sink.1, i64 %indvars.iv.next302
  store float %.sink.1, ptr %gep418.1, align 4, !tbaa !22
  %indvars.iv.next302.1 = add nuw nsw i64 %indvars.iv301, 2 ; 2 uses
  %exitcond305.not.1 = icmp eq i64 %indvars.iv.next302.1, %wide.trip.count304
  br i1 %exitcond305.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !726

.preheader235:                                    ; preds = %.preheader235.preheader, %.split264
  %indvars.iv327 = phi i64 [ %i.no, %.split264 ], [ 0, %.preheader235.preheader ] ; 4 uses
  %i.ni = getelementptr inbounds nuw [2048 x i8], ptr %i.x, i64 %indvars.iv327
  %indvars.iv327.tr = trunc i64 %indvars.iv327 to i32
  %i.nj = shl i32 %indvars.iv327.tr, 1
  %i.nk = and i32 %i.nj, 14                       ; 3 uses
  %indvars.iv327.tr403 = trunc i64 %indvars.iv327 to i32
  %i.nl = shl i32 %indvars.iv327.tr403, 1
  %i.nm = add i32 %i.nl, 14
  %i.nn = and i32 %i.nm, 14                       ; 3 uses
  %i.no = add nuw nsw i64 %indvars.iv327, 1       ; 3 uses
  %.tr = trunc i64 %i.no to i32
  %i.np = shl i32 %.tr, 1
  %i.nq = and i32 %i.np, 14                       ; 3 uses
  br label %fcol.exit227

.preheader233:                                    ; preds = %.split264, %.split264.us.us
  %i.nr = add nsw i32 %3, -1
  %i.ns = icmp sgt i32 %3, 2
  br i1 %i.ns, label %.lr.ph284, label %._crit_edge285.split

.lr.ph284:                                        ; preds = %.preheader233
  %i.nt = add nsw i32 %2, -1
  %i.nu = icmp sgt i32 %2, 2
  %i.nv = sub nsw i32 %2, %6                      ; 3 uses
  %i.nw = sext i32 %2 to i64                      ; 2 uses
  %i.nx = shl nsw i64 %i.nw, 2
  %i.ny = shl nsw i32 %i.nv, 2
  %7 = sext i32 %i.ny to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %7
  %i.nz = sext i32 %i.nv to i64
  %invariant.gep286 = getelementptr [4 x i8], ptr %1, i64 %i.nz
  %i.oa = add nsw i32 %i.f, -1
  br i1 %i.nu, label %.lr.ph280.preheader, label %._crit_edge285.split

.lr.ph280.preheader:                              ; preds = %.lr.ph284
  %i.ob = sub nsw i32 %3, %6
  %i.oc = shl nsw i32 %2, 2
  %i.od = sext i32 %i.ob to i64
  %i.oe = zext nneg i32 %6 to i64
  %i.of = zext nneg i32 %i.oc to i64
  %i.og = zext nneg i32 %2 to i64
  %wide.trip.count370 = zext nneg i32 %i.nr to i64
  br label %.lr.ph280

.split264:                                        ; preds = %.epilog-lcssa
  %exitcond331.not = icmp eq i64 %i.no, 16
  br i1 %exitcond331.not, label %.preheader233, label %.preheader235

fcol.exit227:                                     ; preds = %.preheader235, %.epilog-lcssa
  %indvars.iv322 = phi i64 [ 0, %.preheader235 ], [ %indvars.iv.next323, %.epilog-lcssa ] ; 4 uses
  %i.oh = getelementptr inbounds nuw [128 x i8], ptr %i.ni, i64 %indvars.iv322 ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.oj = trunc nuw nsw i64 %indvars.iv322 to i32
  %i.ok = and i32 %i.oj, 1                        ; 3 uses
  %.tr.i.i225 = or disjoint i32 %i.ok, %i.nk
  %i.ol = shl nuw nsw i32 %.tr.i.i225, 1
  %i.om = lshr i32 %4, %i.ol
  %i.on = and i32 %i.om, 3                        ; 10 uses
  %i.oo = trunc i64 %indvars.iv322 to i32
  %i.op = and i32 %i.oo, 1
  %i.oq = xor i32 %i.op, 1                        ; 3 uses
  %.tr.i.i228 = or disjoint i32 %i.oq, %i.nn
  %i.or = shl nuw nsw i32 %.tr.i.i228, 1
  %i.os = lshr i32 %4, %i.or
  %i.ot = and i32 %i.os, 3                        ; 3 uses
  %i.ou = icmp eq i32 %i.ot, %i.on
  br i1 %i.ou, label %fcol.exit230.1, label %bb.ah

bb.ah:                                            ; preds = %fcol.exit227
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  store <2 x i32> %i.ad, ptr %i.oi, align 4, !tbaa !32
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store i32 %i.ot, ptr %i.ov, align 4, !tbaa !32
  %i.ox = zext nneg i32 %i.ot to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ox ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !32
  %i.pa = add nsw i32 %i.oz, 1
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !32
  br label %fcol.exit230.1

fcol.exit230.1:                                   ; preds = %fcol.exit227, %bb.ah
  %.2 = phi ptr [ %i.ow, %bb.ah ], [ %i.oi, %fcol.exit227 ] ; 4 uses
  %.tr.i.i228.1 = or disjoint i32 %i.ok, %i.nn
  %i.pb = shl nuw nsw i32 %.tr.i.i228.1, 1
  %i.pc = lshr i32 %4, %i.pb
  %i.pd = and i32 %i.pc, 3                        ; 3 uses
  %i.pe = icmp eq i32 %i.pd, %i.on
  br i1 %i.pe, label %fcol.exit230.2, label %bb.ai

bb.ai:                                            ; preds = %fcol.exit230.1
  %i.pf = getelementptr inbounds nuw i8, ptr %.2, i64 8
  store <2 x i32> %i.ab, ptr %.2, align 4, !tbaa !32
  %i.pg = getelementptr inbounds nuw i8, ptr %.2, i64 12
  store i32 %i.pd, ptr %i.pf, align 4, !tbaa !32
  %i.ph = zext nneg i32 %i.pd to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ph ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !32
  %i.pk = add nsw i32 %i.pj, 2
  store i32 %i.pk, ptr %i.pi, align 4, !tbaa !32
  br label %fcol.exit230.2

fcol.exit230.2:                                   ; preds = %bb.ai, %fcol.exit230.1
  %.2.1 = phi ptr [ %i.pg, %bb.ai ], [ %.2, %fcol.exit230.1 ] ; 4 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 3 uses
  %i.pl = trunc nuw nsw i64 %indvars.iv.next323 to i32
  %i.pm = and i32 %i.pl, 1                        ; 3 uses
  %.tr.i.i228.2 = or disjoint i32 %i.pm, %i.nn
  %i.pn = shl nuw nsw i32 %.tr.i.i228.2, 1
  %i.po = lshr i32 %4, %i.pn
  %i.pp = and i32 %i.po, 3                        ; 3 uses
  %i.pq = icmp eq i32 %i.pp, %i.on
  br i1 %i.pq, label %.split252, label %bb.aj

bb.aj:                                            ; preds = %fcol.exit230.2
  %i.pr = getelementptr inbounds nuw i8, ptr %.2.1, i64 8
  store <2 x i32> %i.af, ptr %.2.1, align 4, !tbaa !32
  %i.ps = getelementptr inbounds nuw i8, ptr %.2.1, i64 12
  store i32 %i.pp, ptr %i.pr, align 4, !tbaa !32
  %i.pt = zext nneg i32 %i.pp to i64
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !32
  %i.pw = add nsw i32 %i.pv, 1
  store i32 %i.pw, ptr %i.pu, align 4, !tbaa !32
  br label %.split252

.split252:                                        ; preds = %bb.aj, %fcol.exit230.2
  %.2.2 = phi ptr [ %i.ps, %bb.aj ], [ %.2.1, %fcol.exit230.2 ] ; 5 uses
  %.tr.i.i228.1312 = or disjoint i32 %i.oq, %i.nk
  %i.px = shl nuw nsw i32 %.tr.i.i228.1312, 1
  %i.py = lshr i32 %4, %i.px
  %i.pz = and i32 %i.py, 3                        ; 3 uses
  %i.qa = icmp eq i32 %i.pz, %i.on
  br i1 %i.qa, label %fcol.exit230.2.1, label %bb.ak

bb.ak:                                            ; preds = %.split252
  %i.qb = getelementptr inbounds nuw i8, ptr %.2.2, i64 4
  store i32 -1, ptr %.2.2, align 4, !tbaa !32
  %i.qc = getelementptr inbounds nuw i8, ptr %.2.2, i64 8
  store i32 2, ptr %i.qb, align 4, !tbaa !32
  %i.qd = getelementptr inbounds nuw i8, ptr %.2.2, i64 12
  store i32 %i.pz, ptr %i.qc, align 4, !tbaa !32
  %i.qe = zext nneg i32 %i.pz to i64
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qe ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !32
  %i.qh = add nsw i32 %i.qg, 2
  store i32 %i.qh, ptr %i.qf, align 4, !tbaa !32
  br label %fcol.exit230.2.1

fcol.exit230.2.1:                                 ; preds = %.split252, %bb.ak
  %.2.1314 = phi ptr [ %i.qd, %bb.ak ], [ %.2.2, %.split252 ] ; 5 uses
  %.tr.i.i228.2.1 = or disjoint i32 %i.pm, %i.nk
  %i.qi = shl nuw nsw i32 %.tr.i.i228.2.1, 1
  %i.qj = lshr i32 %4, %i.qi
  %i.qk = and i32 %i.qj, 3                        ; 3 uses
  %i.ql = icmp eq i32 %i.qk, %i.on
  br i1 %i.ql, label %.split252.1, label %bb.al

bb.al:                                            ; preds = %fcol.exit230.2.1
  %i.qm = getelementptr inbounds nuw i8, ptr %.2.1314, i64 4
  store i32 1, ptr %.2.1314, align 4, !tbaa !32
  %i.qn = getelementptr inbounds nuw i8, ptr %.2.1314, i64 8
  store i32 2, ptr %i.qm, align 4, !tbaa !32
  %i.qo = getelementptr inbounds nuw i8, ptr %.2.1314, i64 12
  store i32 %i.qk, ptr %i.qn, align 4, !tbaa !32
  %i.qp = zext nneg i32 %i.qk to i64
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qp ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !32
  %i.qs = add nsw i32 %i.qr, 2
  store i32 %i.qs, ptr %i.qq, align 4, !tbaa !32
  br label %.split252.1

.split252.1:                                      ; preds = %bb.al, %fcol.exit230.2.1
  %.2.2.1 = phi ptr [ %i.qo, %bb.al ], [ %.2.1314, %fcol.exit230.2.1 ] ; 4 uses
  %.tr.i.i228.2315 = or disjoint i32 %i.oq, %i.nq
  %i.qt = shl nuw nsw i32 %.tr.i.i228.2315, 1
  %i.qu = lshr i32 %4, %i.qt
  %i.qv = and i32 %i.qu, 3                        ; 3 uses
  %i.qw = icmp eq i32 %i.qv, %i.on
  br i1 %i.qw, label %fcol.exit230.1.2, label %bb.am

bb.am:                                            ; preds = %.split252.1
  %i.qx = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 8
  store <2 x i32> %i.ah, ptr %.2.2.1, align 4, !tbaa !32
  %i.qy = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 12
  store i32 %i.qv, ptr %i.qx, align 4, !tbaa !32
  %i.qz = zext nneg i32 %i.qv to i64
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qz ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !32
  %i.rc = add nsw i32 %i.rb, 1
  store i32 %i.rc, ptr %i.ra, align 4, !tbaa !32
  br label %fcol.exit230.1.2

fcol.exit230.1.2:                                 ; preds = %bb.am, %.split252.1
  %.2.2317 = phi ptr [ %i.qy, %bb.am ], [ %.2.2.1, %.split252.1 ] ; 4 uses
  %.tr.i.i228.1.2 = or disjoint i32 %i.ok, %i.nq
  %i.rd = shl nuw nsw i32 %.tr.i.i228.1.2, 1
  %i.re = lshr i32 %4, %i.rd
  %i.rf = and i32 %i.re, 3                        ; 3 uses
  %i.rg = icmp eq i32 %i.rf, %i.on
  br i1 %i.rg, label %fcol.exit230.2.2, label %bb.an

bb.an:                                            ; preds = %fcol.exit230.1.2
  %i.rh = getelementptr inbounds nuw i8, ptr %.2.2317, i64 8
  store <2 x i32> %i.ak, ptr %.2.2317, align 4, !tbaa !32
  %i.ri = getelementptr inbounds nuw i8, ptr %.2.2317, i64 12
  store i32 %i.rf, ptr %i.rh, align 4, !tbaa !32
  %i.rj = zext nneg i32 %i.rf to i64
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rj ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !32
  %i.rm = add nsw i32 %i.rl, 2
  store i32 %i.rm, ptr %i.rk, align 4, !tbaa !32
  br label %fcol.exit230.2.2

fcol.exit230.2.2:                                 ; preds = %bb.an, %fcol.exit230.1.2
  %.2.1.2 = phi ptr [ %i.ri, %bb.an ], [ %.2.2317, %fcol.exit230.1.2 ] ; 4 uses
  %.tr.i.i228.2.2 = or disjoint i32 %i.pm, %i.nq
  %i.rn = shl nuw nsw i32 %.tr.i.i228.2.2, 1
  %i.ro = lshr i32 %4, %i.rn
  %i.rp = and i32 %i.ro, 3                        ; 3 uses
  %i.rq = icmp eq i32 %i.rp, %i.on
  br i1 %i.rq, label %.split252.2, label %bb.ao

bb.ao:                                            ; preds = %fcol.exit230.2.2
  %i.rr = getelementptr inbounds nuw i8, ptr %.2.1.2, i64 8
  store <2 x i32> %i.aj, ptr %.2.1.2, align 4, !tbaa !32
  %i.rs = getelementptr inbounds nuw i8, ptr %.2.1.2, i64 12
end_hunk_4
