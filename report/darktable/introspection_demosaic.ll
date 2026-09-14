Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.oy = getelementptr [4 x i8], ptr %i.mm, i64 %indvars.iv.next.i.i.2
  store float %i.ox, ptr %i.oy, align 4, !tbaa !12
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !193

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
  %wide.vec = load <32 x float>, ptr %i.qd, align 4, !tbaa !12, !alias.scope !467
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1657 = load <32 x float>, ptr %i.qe, align 4, !tbaa !12, !alias.scope !467
  %strided.vec1658 = shufflevector <32 x float> %wide.vec1657, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1659 = load <32 x float>, ptr %i.qf, align 4, !tbaa !12, !alias.scope !467
  %strided.vec1660 = shufflevector <32 x float> %wide.vec1659, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1661 = load <32 x float>, ptr %i.qg, align 4, !tbaa !12, !alias.scope !467
  %strided.vec1662 = shufflevector <32 x float> %wide.vec1661, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.qh = getelementptr [4 x i8], ptr %i.pj, i64 %index1656 ; 4 uses
  %i.qi = getelementptr i8, ptr %i.qh, i64 32
  %i.qj = getelementptr i8, ptr %i.qh, i64 64
  %i.qk = getelementptr i8, ptr %i.qh, i64 96
  store <8 x float> %strided.vec, ptr %i.qh, align 4, !tbaa !12, !alias.scope !468, !noalias !467
  store <8 x float> %strided.vec1658, ptr %i.qi, align 4, !tbaa !12, !alias.scope !468, !noalias !467
  store <8 x float> %strided.vec1660, ptr %i.qj, align 4, !tbaa !12, !alias.scope !468, !noalias !467
  store <8 x float> %strided.vec1662, ptr %i.qk, align 4, !tbaa !12, !alias.scope !468, !noalias !467
  %index.next1663 = add nuw i64 %index1656, 32    ; 2 uses
  %i.ql = icmp eq i64 %index.next1663, %n.vec1654
  br i1 %i.ql, label %vec.epilog.iter.check, label %vector.body1655, !llvm.loop !197

vec.epilog.iter.check:                            ; preds = %vector.body1655
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !469

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %vector.memcheck1642, %vector.scevcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv220.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck1642 ], [ %n.vec1654, %vec.epilog.iter.check ], [ %n.vec1665, %vec.epilog.vector.body ] ; 4 uses
  %i.qm = sub i64 %wide.trip.count223.i.i, %indvars.iv220.i.i.ph
  %xtraiter4689 = and i64 %i.qm, 3                ; 2 uses
  %lcmp.mod4690.not = icmp eq i64 %xtraiter4689, 0
  br i1 %lcmp.mod4690.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv220.i.i.prol = phi i64 [ %indvars.iv.next221.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv220.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter4691 = phi i64 [ %prol.iter4691.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.qn = trunc nuw nsw i64 %indvars.iv220.i.i.prol to i32
  %i.qo = add i32 %i.pi, %i.qn
  %i.qp = sext i32 %i.qo to i64
  %.idx.i.i.prol = shl nsw i64 %i.qp, 4
  %i.qq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.prol
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !12
  %i.qs = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv220.i.i.prol
  store float %i.qr, ptr %i.qs, align 4, !tbaa !12
  %indvars.iv.next221.i.i.prol = add nuw nsw i64 %indvars.iv220.i.i.prol, 1 ; 2 uses
  %prol.iter4691.next = add i64 %prol.iter4691, 1 ; 2 uses
  %prol.iter4691.cmp.not = icmp eq i64 %prol.iter4691.next, %xtraiter4689
  br i1 %prol.iter4691.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !198

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
  %wide.vec1667 = load <16 x float>, ptr %i.qz, align 4, !tbaa !12, !alias.scope !467
  %strided.vec1668 = shufflevector <16 x float> %wide.vec1667, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ra = getelementptr [4 x i8], ptr %i.pj, i64 %index1666
  store <4 x float> %strided.vec1668, ptr %i.ra, align 4, !tbaa !12, !alias.scope !468, !noalias !467
  %index.next1669 = add nuw i64 %index1666, 4     ; 2 uses
  %i.rb = icmp eq i64 %index.next1669, %n.vec1665
  br i1 %i.rb, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !199

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
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !12
  %i.rh = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv220.i.i
  store float %i.rg, ptr %i.rh, align 4, !tbaa !12
  %indvars.iv.next221.i.i = add nuw nsw i64 %indvars.iv220.i.i, 1 ; 2 uses
  %i.ri = trunc nuw nsw i64 %indvars.iv.next221.i.i to i32
  %i.rj = add i32 %i.pi, %i.ri
  %i.rk = sext i32 %i.rj to i64
  %.idx.i.i.1 = shl nsw i64 %i.rk, 4
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.1
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !12
  %i.rn = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv.next221.i.i
  store float %i.rm, ptr %i.rn, align 4, !tbaa !12
  %indvars.iv.next221.i.i.1 = add nuw nsw i64 %indvars.iv220.i.i, 2 ; 2 uses
  %i.ro = trunc nuw nsw i64 %indvars.iv.next221.i.i.1 to i32
  %i.rp = add i32 %i.pi, %i.ro
  %i.rq = sext i32 %i.rp to i64
  %.idx.i.i.2 = shl nsw i64 %i.rq, 4
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.2
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !12
  %i.rt = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv.next221.i.i.1
  store float %i.rs, ptr %i.rt, align 4, !tbaa !12
  %indvars.iv.next221.i.i.2 = add nuw nsw i64 %indvars.iv220.i.i, 3 ; 2 uses
  %i.ru = trunc nuw nsw i64 %indvars.iv.next221.i.i.2 to i32
  %i.rv = add i32 %i.pi, %i.ru
  %i.rw = sext i32 %i.rv to i64
  %.idx.i.i.3 = shl nsw i64 %i.rw, 4
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.3
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !12
  %i.rz = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv.next221.i.i.2
  store float %i.ry, ptr %i.rz, align 4, !tbaa !12
  %indvars.iv.next221.i.i.3 = add nuw nsw i64 %indvars.iv220.i.i, 4 ; 2 uses
  %exitcond224.not.i.i.3 = icmp eq i64 %indvars.iv.next221.i.i.3, %wide.trip.count223.i.i
  br i1 %exitcond224.not.i.i.3, label %._crit_edge200.i.i, label %vec.epilog.scalar.ph, !llvm.loop !200

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i, %._crit_edge194.i.i, %._crit_edge200.i.i, %.preheader186.lr.ph.i.i, %.preheader187.i.i, %.preheader182.i.i
  switch i32 %.fr1063, label %bb.bj [
    i32 0, label %bb.av
    i32 9, label %.preheader.i.preheader.i.i
  ]

.preheader.i.preheader.i.i:                       ; preds = %.loopexit.i.i, %.preheader183.lr.ph.i.i, %.preheader184.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 510 ; 2 uses
  %i.sb = load i8, ptr %i.x, align 16, !tbaa !133 ; 4 uses
  %i.sc = icmp eq i8 %i.sb, 1                     ; 3 uses
  br i1 %i.sc, label %bb.by, label %.preheader._crit_edge.i.i.i

bb.av:                                            ; preds = %.loopexit.i.i
  %i.sd = add nsw i32 %i.ih, -4
  %i.se = icmp sgt i32 %i.ih, 8
  br i1 %i.se, label %.preheader.lr.ph.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.av
  %i.sf = icmp sgt i32 %i.ib, 9
  %i.sg = shl nuw nsw i32 %i.ib, 1
  %i.sh = zext nneg i32 %i.sg to i64              ; 2 uses
  %i.si = xor i32 %i.ib, -1
  %i.sj = sext i32 %i.si to i64                   ; 2 uses
  %i.sk = sub i32 1, %i.ib
  %i.sl = sext i32 %i.sk to i64                   ; 2 uses
  br i1 %i.sf, label %.preheader.us.preheader.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.i.i.i
  %i.sm = add nsw i32 %i.ib, -4
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = zext nneg i32 %i.ib to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.sd to i64
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvars.iv212.i.i.i = phi i64 [ 4, %.preheader.us.preheader.i.i.i ], [ %indvars.iv.next213.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.0152206.us.i.i.i = phi float [ 1.000000e+00, %.preheader.us.preheader.i.i.i ], [ %.10.us.i.i.i, %._crit_edge.us.i.i.i ]
  %i.sp = mul nuw nsw i64 %indvars.iv212.i.i.i, %i.so
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.sp
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bi, %.preheader.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 5, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bi ] ; 2 uses
  %.1153204.us.i.i.i = phi float [ %.0152206.us.i.i.i, %.preheader.us.i.i.i ], [ %.10.us.i.i.i, %bb.bi ] ; 5 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %indvars.iv.i.i.i ; 10 uses
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !12 ; 15 uses
  %i.st = fcmp reassoc nsz arcp contract afn ogt float %i.ss, 5.000000e-03
  br i1 %i.st, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %bb.aw
  %i.su = getelementptr [4 x i8], ptr %i.sr, i64 %i.im ; 2 uses
  %i.sv = getelementptr i8, ptr %i.su, i64 -4
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !12 ; 5 uses
  %i.sx = getelementptr i8, ptr %i.su, i64 4
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !12 ; 9 uses
  %i.sz = fcmp reassoc nsz arcp contract afn ogt float %i.ss, %i.sw
  %i.ta = select reassoc nsz arcp contract afn i1 %i.sz, float %i.ss, float %i.sw ; 4 uses
  %i.tb = fcmp reassoc nsz arcp contract afn ogt float %i.sw, 5.000000e-03
  %i.tc = fcmp reassoc nsz arcp contract afn ogt float %i.ta, f0x3C23D70A
  %or.cond.us.i.i.i = and i1 %i.tb, %i.tc
  br i1 %or.cond.us.i.i.i, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.td = fcmp reassoc nsz arcp contract afn olt float %i.ss, %i.sw
  %i.te = select reassoc nsz arcp contract afn i1 %i.td, float %i.ss, float %i.sw ; 2 uses
  %i.tf = fmul reassoc nsz arcp contract afn float %i.te, %.1153204.us.i.i.i
  %i.tg = fcmp reassoc nsz arcp contract afn ogt float %i.ta, %i.tf
  br i1 %i.tg, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.th = fcmp reassoc nsz arcp contract afn oeq float %i.ta, %i.ss
  br i1 %i.th, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ti = getelementptr inbounds i8, ptr %i.sr, i64 -8
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !12 ; 2 uses
  %i.tk = fcmp reassoc nsz arcp contract afn ogt float %i.tj, %i.ss
  %.183.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tk, float %i.tj, float %i.ss ; 3 uses
  %i.tl = getelementptr [4 x i8], ptr %i.sr, i64 %i.sh ; 2 uses
  %i.tm = getelementptr i8, ptr %i.tl, i64 -8
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !12 ; 3 uses
  %i.to = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.tn
  %i.tp = load float, ptr %i.tl, align 4, !tbaa !12 ; 4 uses
  br i1 %i.to, label %bb.bb, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %bb.ba
  %i.tq = fcmp reassoc nsz arcp contract afn ogt float %i.tn, %i.tp
  %spec.select200.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tq, float %i.tn, float %i.tp
  br label %.thread196.us.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.tr = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.tp
  %spec.select199.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tr, float %.183.us.i.i.i, float %i.tp
  br label %.thread196.us.i.i.i

bb.bc:                                            ; preds = %bb.az
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.sj
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !12 ; 2 uses
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.sl
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !12 ; 2 uses
  %i.tw = fcmp reassoc nsz arcp contract afn ogt float %i.tt, %i.tv
  %..us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tw, float %i.tt, float %i.tv ; 2 uses
  %i.tx = fcmp reassoc nsz arcp contract afn ogt float %..us.i.i.i, %i.sy
  %spec.select.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tx, float %..us.i.i.i, float %i.sy
  br label %.thread196.us.i.i.i

.thread196.us.i.i.i:                              ; preds = %bb.bc, %bb.bb, %.thread.us.i.i.i
  %.not.in.us.i.i.i = phi float [ %spec.select.us.i.i.i, %bb.bc ], [ %spec.select199.us.i.i.i, %bb.bb ], [ %spec.select200.us.i.i.i, %.thread.us.i.i.i ]
  %.not.us.i.i.i = fcmp ult float %.not.in.us.i.i.i, f0x3F666666
  %i.ty = fdiv reassoc nsz arcp contract afn float %i.ta, %i.te
  %spec.select188.us.i.i.i = select nsz i1 %.not.us.i.i.i, float %i.ty, float %.1153204.us.i.i.i
  br label %bb.bd

bb.bd:                                            ; preds = %.thread196.us.i.i.i, %bb.ay, %bb.ax
  %.4.us.i.i.i = phi nsz float [ %.1153204.us.i.i.i, %bb.ax ], [ %spec.select188.us.i.i.i, %.thread196.us.i.i.i ], [ %.1153204.us.i.i.i, %bb.ay ] ; 5 uses
  %i.tz = fcmp reassoc nsz arcp contract afn ogt float %i.ss, %i.sy
  %i.ua = select reassoc nsz arcp contract afn i1 %i.tz, float %i.ss, float %i.sy ; 4 uses
  %i.ub = fcmp reassoc nsz arcp contract afn ogt float %i.sy, 5.000000e-03
  %i.uc = fcmp reassoc nsz arcp contract afn ogt float %i.ua, f0x3C23D70A
  %or.cond4.us.i.i.i = select i1 %i.ub, i1 %i.uc, i1 false
  br i1 %or.cond4.us.i.i.i, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.ud = fcmp reassoc nsz arcp contract afn olt float %i.ss, %i.sy
  %i.ue = select reassoc nsz arcp contract afn i1 %i.ud, float %i.ss, float %i.sy ; 2 uses
  %i.uf = fmul reassoc nsz arcp contract afn float %.4.us.i.i.i, %i.ue
  %i.ug = fcmp reassoc nsz arcp contract afn ogt float %i.ua, %i.uf
  br i1 %i.ug, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.uh = fcmp reassoc nsz arcp contract afn oeq float %i.ua, %i.ss
  br i1 %i.uh, label %bb.bg, label %.thread198.us.i.i.i

.thread198.us.i.i.i:                              ; preds = %bb.bf
  %i.ui = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !12 ; 2 uses
  %i.uk = fcmp reassoc nsz arcp contract afn ogt float %i.ss, %i.uj
  %.191.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.uk, float %i.ss, float %i.uj ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %i.sh ; 2 uses
  %i.um = load float, ptr %i.ul, align 4, !tbaa !12 ; 2 uses
  %i.un = fcmp reassoc nsz arcp contract afn ogt float %.191.us.i.i.i, %i.um
  %i.uo = getelementptr i8, ptr %i.ul, i64 8
  %i.up = load float, ptr %i.uo, align 4, !tbaa !12 ; 2 uses
  %.191.us..i.i.i = select i1 %i.un, float %.191.us.i.i.i, float %i.um ; 2 uses
  %i.uq = fcmp reassoc nsz arcp contract afn ogt float %.191.us..i.i.i, %i.up
  %spec.select202.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.uq, float %.191.us..i.i.i, float %i.up
  %i.ur = fcmp reassoc nsz arcp contract afn ult float %spec.select202.us.i.i.i, f0x3F666666
  br i1 %i.ur, label %bb.bh, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.us = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.sj
  %i.ut = load float, ptr %i.us, align 4, !tbaa !12 ; 2 uses
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.sl
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !12 ; 2 uses
  %i.uw = fcmp reassoc nsz arcp contract afn ogt float %i.ut, %i.uv
  %.189.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.uw, float %i.ut, float %i.uv ; 2 uses
  %i.ux = fcmp reassoc nsz arcp contract afn ogt float %.189.us.i.i.i, %i.sy
  %spec.select201.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ux, float %.189.us.i.i.i, float %i.sy
  %i.uy = fcmp reassoc nsz arcp contract afn ult float %spec.select201.us.i.i.i, f0x3F666666
  br i1 %i.uy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %.thread198.us.i.i.i
  %i.uz = fdiv reassoc nsz arcp contract afn float %i.ua, %i.ue
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %.thread198.us.i.i.i, %bb.be, %bb.bd, %bb.aw
  %.10.us.i.i.i = phi nsz float [ %.1153204.us.i.i.i, %bb.aw ], [ %.4.us.i.i.i, %bb.bd ], [ %.4.us.i.i.i, %bb.bg ], [ %.4.us.i.i.i, %.thread198.us.i.i.i ], [ %i.uz, %bb.bh ], [ %.4.us.i.i.i, %bb.be ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.va = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.sn
  br i1 %i.va, label %bb.aw, label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %bb.bi
  %indvars.iv.next213.i.i.i = add nuw nsw i64 %indvars.iv212.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next213.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge208.loopexit.i.i.i, label %.preheader.us.i.i.i

._crit_edge208.loopexit.i.i.i:                    ; preds = %._crit_edge.us.i.i.i
  %i.vb = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.10.us.i.i.i)
  br label %_calcRadiusMono.exit.i.i

_calcRadiusMono.exit.i.i:                         ; preds = %._crit_edge208.loopexit.i.i.i, %.preheader.lr.ph.i.i.i, %bb.av
  %.0152.lcssa.i.i.i = phi float [ 0.000000e+00, %bb.av ], [ %i.vb, %._crit_edge208.loopexit.i.i.i ], [ 0.000000e+00, %.preheader.lr.ph.i.i.i ]
  %i.vc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0152.lcssa.i.i.i
  %i.vd = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.vc)
  br label %bb.fg

bb.bj:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  %i.ve = and i32 %.fr1063, 3
  store i32 %i.ve, ptr %i.m, align 4, !tbaa !15
  %i.vf = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.vg = lshr i32 %.fr1063, 4
  %i.vh = and i32 %i.vg, 3
  store i32 %i.vh, ptr %i.vf, align 4, !tbaa !15
  %i.vi = icmp sgt i32 %i.ih, 8
  br i1 %i.vi, label %.lr.ph212.i.i.i, label %_calcRadiusBayer.exit.i.i

.lr.ph212.i.i.i:                                  ; preds = %bb.bj
  %i.vj = add nsw <2 x i32> %i.ia, splat (i32 -4) ; 2 uses
  %i.vk = add nsw i32 %i.ib, -4
  %i.vl = shl nsw i32 %i.ib, 1
  %i.vm = sext i32 %i.vl to i64                   ; 2 uses
  %i.vn = xor i32 %i.ib, -1
  %i.vo = sext i32 %i.vn to i64                   ; 2 uses
  %i.vp = sub i32 1, %i.ib
  %i.vq = sext i32 %i.vp to i64                   ; 2 uses
  %i.vr = extractelement <2 x i32> %i.vj, i64 1
  %i.vs = extractelement <2 x i32> %i.vj, i64 0
  %i.vt = sext i32 %i.vs to i64
  %i.vu = zext i32 %i.vr to i64
  br label %bb.bk

._crit_edge213.loopexit.i.i.i:                    ; preds = %._crit_edge.i.i.i
  %i.vv = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.1156.lcssa.i.i.i)
  br label %_calcRadiusBayer.exit.i.i

bb.bk:                                            ; preds = %._crit_edge.i.i.i, %.lr.ph212.i.i.i
  %indvars.iv216.i.i.i = phi i64 [ 4, %.lr.ph212.i.i.i ], [ %indvars.iv.next217.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.0155209.i.i.i = phi float [ 1.000000e+00, %.lr.ph212.i.i.i ], [ %.1156.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.vw = and i64 %indvars.iv216.i.i.i, 1
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !15
  %i.vz = and i32 %i.vy, 1
  %i.wa = add nuw nsw i32 %i.vz, 5                ; 2 uses
  %i.wb = icmp slt i32 %i.wa, %i.vk
  br i1 %i.wb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bk
  %i.wc = mul nsw i64 %indvars.iv216.i.i.i, %i.im
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.wc
  %i.we = zext nneg i32 %i.wa to i64
  br label %bb.bl

._crit_edge.i.i.i:                                ; preds = %bb.bx, %bb.bk
  %.1156.lcssa.i.i.i = phi float [ %.0155209.i.i.i, %bb.bk ], [ %.10.i.i.i, %bb.bx ] ; 2 uses
  %indvars.iv.next217.i.i.i = add nuw nsw i64 %indvars.iv216.i.i.i, 1 ; 2 uses
  %exitcond.not.i164.i.i = icmp eq i64 %indvars.iv.next217.i.i.i, %i.vu
  br i1 %exitcond.not.i164.i.i, label %._crit_edge213.loopexit.i.i.i, label %bb.bk

bb.bl:                                            ; preds = %bb.bx, %.lr.ph.i.i.i
  %indvars.iv.i165.i.i = phi i64 [ %i.we, %.lr.ph.i.i.i ], [ %indvars.iv.next.i166.i.i, %bb.bx ] ; 2 uses
  %.1156207.i.i.i = phi float [ %.0155209.i.i.i, %.lr.ph.i.i.i ], [ %.10.i.i.i, %bb.bx ] ; 5 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %indvars.iv.i165.i.i ; 10 uses
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !12 ; 15 uses
  %i.wh = fcmp reassoc nsz arcp contract afn ogt float %i.wg, 5.000000e-03
  br i1 %i.wh, label %bb.bm, label %bb.bx

bb.bm:                                            ; preds = %bb.bl
  %i.wi = getelementptr [4 x i8], ptr %i.wf, i64 %i.im ; 2 uses
  %i.wj = getelementptr i8, ptr %i.wi, i64 -4
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !12 ; 5 uses
  %i.wl = getelementptr i8, ptr %i.wi, i64 4
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !12 ; 9 uses
  %i.wn = fcmp reassoc nsz arcp contract afn ogt float %i.wg, %i.wk
  %i.wo = select reassoc nsz arcp contract afn i1 %i.wn, float %i.wg, float %i.wk ; 4 uses
  %i.wp = fcmp reassoc nsz arcp contract afn ogt float %i.wk, 5.000000e-03
  %i.wq = fcmp reassoc nsz arcp contract afn ogt float %i.wo, f0x3C23D70A
  %or.cond.i.i.i = and i1 %i.wp, %i.wq
  br i1 %or.cond.i.i.i, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  %i.wr = fcmp reassoc nsz arcp contract afn olt float %i.wg, %i.wk
  %i.ws = select reassoc nsz arcp contract afn i1 %i.wr, float %i.wg, float %i.wk ; 2 uses
  %i.wt = fmul reassoc nsz arcp contract afn float %i.ws, %.1156207.i.i.i
  %i.wu = fcmp reassoc nsz arcp contract afn ogt float %i.wo, %i.wt
  br i1 %i.wu, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.wv = fcmp reassoc nsz arcp contract afn oeq float %i.wo, %i.wg
  br i1 %i.wv, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.wf, i64 %i.vo
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !12 ; 2 uses
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.wf, i64 %i.vq
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !12 ; 2 uses
  %i.xa = fcmp reassoc nsz arcp contract afn ogt float %i.wx, %i.wz
  %..i.i.i = select reassoc nsz arcp contract afn i1 %i.xa, float %i.wx, float %i.wz ; 2 uses
  %i.xb = fcmp reassoc nsz arcp contract afn ogt float %..i.i.i, %i.wm
  %spec.select.i.i.i = select reassoc nsz arcp contract afn i1 %i.xb, float %..i.i.i, float %i.wm
  br label %.thread199.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.xc = getelementptr inbounds i8, ptr %i.wf, i64 -8
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !12 ; 2 uses
  %i.xe = fcmp reassoc nsz arcp contract afn ogt float %i.xd, %i.wg
  %.186.i.i.i = select reassoc nsz arcp contract afn i1 %i.xe, float %i.xd, float %i.wg ; 3 uses
  %i.xf = getelementptr [4 x i8], ptr %i.wf, i64 %i.vm ; 2 uses
  %i.xg = getelementptr i8, ptr %i.xf, i64 -8
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !12 ; 3 uses
  %i.xi = fcmp reassoc nsz arcp contract afn ogt float %.186.i.i.i, %i.xh
  %i.xj = load float, ptr %i.xf, align 4, !tbaa !12 ; 4 uses
  br i1 %i.xi, label %bb.br, label %.thread.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.xk = fcmp reassoc nsz arcp contract afn ogt float %.186.i.i.i, %i.xj
  %spec.select202.i.i.i = select reassoc nsz arcp contract afn i1 %i.xk, float %.186.i.i.i, float %i.xj
  br label %.thread199.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bq
  %i.xl = fcmp reassoc nsz arcp contract afn ogt float %i.xh, %i.xj
  %spec.select203.i.i.i = select reassoc nsz arcp contract afn i1 %i.xl, float %i.xh, float %i.xj
  br label %.thread199.i.i.i

.thread199.i.i.i:                                 ; preds = %.thread.i.i.i, %bb.br, %bb.bp
  %.not.in.i.i.i = phi float [ %spec.select.i.i.i, %bb.bp ], [ %spec.select202.i.i.i, %bb.br ], [ %spec.select203.i.i.i, %.thread.i.i.i ]
  %.not.i.i.i = fcmp ult float %.not.in.i.i.i, f0x3F666666
  %i.xm = fdiv reassoc nsz arcp contract afn float %i.wo, %i.ws
  %spec.select191.i.i.i = select nsz i1 %.not.i.i.i, float %i.xm, float %.1156207.i.i.i
  br label %bb.bs

bb.bs:                                            ; preds = %.thread199.i.i.i, %bb.bn, %bb.bm
  %.4.i.i.i = phi nsz float [ %.1156207.i.i.i, %bb.bm ], [ %spec.select191.i.i.i, %.thread199.i.i.i ], [ %.1156207.i.i.i, %bb.bn ] ; 5 uses
  %i.xn = fcmp reassoc nsz arcp contract afn ogt float %i.wg, %i.wm
  %i.xo = select reassoc nsz arcp contract afn i1 %i.xn, float %i.wg, float %i.wm ; 4 uses
  %i.xp = fcmp reassoc nsz arcp contract afn ogt float %i.wm, 5.000000e-03
  %i.xq = fcmp reassoc nsz arcp contract afn ogt float %i.xo, f0x3C23D70A
  %or.cond4.i.i.i = select i1 %i.xp, i1 %i.xq, i1 false
  br i1 %or.cond4.i.i.i, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.xr = fcmp reassoc nsz arcp contract afn olt float %i.wg, %i.wm
  %i.xs = select reassoc nsz arcp contract afn i1 %i.xr, float %i.wg, float %i.wm ; 2 uses
  %i.xt = fmul reassoc nsz arcp contract afn float %.4.i.i.i, %i.xs
  %i.xu = fcmp reassoc nsz arcp contract afn ogt float %i.xo, %i.xt
  br i1 %i.xu, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.xv = fcmp reassoc nsz arcp contract afn oeq float %i.xo, %i.wg
  br i1 %i.xv, label %bb.bv, label %.thread201.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.wf, i64 %i.vo
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !12 ; 2 uses
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.wf, i64 %i.vq
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !12 ; 2 uses
  %i.ya = fcmp reassoc nsz arcp contract afn ogt float %i.xx, %i.xz
  %.192.i.i.i = select reassoc nsz arcp contract afn i1 %i.ya, float %i.xx, float %i.xz ; 2 uses
  %i.yb = fcmp reassoc nsz arcp contract afn ogt float %.192.i.i.i, %i.wm
  %spec.select204.i.i.i = select reassoc nsz arcp contract afn i1 %i.yb, float %.192.i.i.i, float %i.wm
  %i.yc = fcmp reassoc nsz arcp contract afn ult float %spec.select204.i.i.i, f0x3F666666
  br i1 %i.yc, label %bb.bw, label %bb.bx

.thread201.i.i.i:                                 ; preds = %bb.bu
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !12 ; 2 uses
  %i.yf = fcmp reassoc nsz arcp contract afn ogt float %i.wg, %i.ye
  %.194.i.i.i = select reassoc nsz arcp contract afn i1 %i.yf, float %i.wg, float %i.ye ; 2 uses
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.wf, i64 %i.vm ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !12 ; 2 uses
  %i.yi = fcmp reassoc nsz arcp contract afn ogt float %.194.i.i.i, %i.yh
  %i.yj = getelementptr i8, ptr %i.yg, i64 8
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !12 ; 2 uses
  %.194..i.i.i = select i1 %i.yi, float %.194.i.i.i, float %i.yh ; 2 uses
  %i.yl = fcmp reassoc nsz arcp contract afn ogt float %.194..i.i.i, %i.yk
  %spec.select206.i.i.i = select reassoc nsz arcp contract afn i1 %i.yl, float %.194..i.i.i, float %i.yk
  %i.ym = fcmp reassoc nsz arcp contract afn ult float %spec.select206.i.i.i, f0x3F666666
  br i1 %i.ym, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.thread201.i.i.i, %bb.bv
  %i.yn = fdiv reassoc nsz arcp contract afn float %i.xo, %i.xs
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.thread201.i.i.i, %bb.bv, %bb.bt, %bb.bs, %bb.bl
  %.10.i.i.i = phi nsz float [ %.1156207.i.i.i, %bb.bl ], [ %.4.i.i.i, %bb.bs ], [ %.4.i.i.i, %bb.bv ], [ %.4.i.i.i, %.thread201.i.i.i ], [ %i.yn, %bb.bw ], [ %.4.i.i.i, %bb.bt ] ; 2 uses
  %indvars.iv.next.i166.i.i = add nuw nsw i64 %indvars.iv.i165.i.i, 2 ; 2 uses
  %i.yo = icmp slt i64 %indvars.iv.next.i166.i.i, %i.vt
  br i1 %i.yo, label %bb.bl, label %._crit_edge.i.i.i

_calcRadiusBayer.exit.i.i:                        ; preds = %._crit_edge213.loopexit.i.i.i, %bb.bj
  %.0155.lcssa.i.i.i = phi float [ 0.000000e+00, %bb.bj ], [ %i.vv, %._crit_edge213.loopexit.i.i.i ]
  %i.yp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0155.lcssa.i.i.i
  %i.yq = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.yp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  br label %bb.fg

.preheader._crit_edge.i.i.i:                      ; preds = %.preheader.i.preheader.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 481
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !tbaa !133
  br label %bb.ca

bb.by:                                            ; preds = %.preheader.i.preheader.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 485
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !133 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 481
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !133 ; 2 uses
  %.not317.i.i.i = icmp eq i8 %i.ys, %i.yu
  br i1 %.not317.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.yv = load i8, ptr %i.sa, align 2, !tbaa !133
  %.not318.i.i.i = icmp eq i8 %i.yv, 1
  %.not319.i.i.i = icmp eq i8 %i.ys, 1
  %or.cond345.i.i.i = or i1 %.not319.i.i.i, %.not318.i.i.i
  br i1 %or.cond345.i.i.i, label %bb.ca, label %.critedge.i.i.i

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.preheader._crit_edge.i.i.i
  %i.yw = phi i8 [ %.pre.i.i.i, %.preheader._crit_edge.i.i.i ], [ %i.yu, %bb.bz ], [ %i.ys, %bb.by ] ; 3 uses
  %i.yx = icmp eq i8 %i.yw, 1                     ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 482
  %i.yz = load i8, ptr %i.yy, align 2, !tbaa !133 ; 4 uses
  br i1 %i.yx, label %bb.cb, label %._crit_edge.i167.i.i

bb.cb:                                            ; preds = %bb.ca
  %.not317.1.i.i.i = icmp eq i8 %i.sb, %i.yz
end_hunk_0
begin_hunk_1_@process:bb.a

.preheader._crit_edge.i.4.i.i:                    ; preds = %.critedge2.i.3.i.i
  %.phi.trans.insert.i.4.i.i = getelementptr inbounds nuw i8, ptr %1, i64 505
  %.pre.i.4.i.i = load i8, ptr %.phi.trans.insert.i.4.i.i, align 1, !tbaa !133
  br label %bb.dq

bb.do:                                            ; preds = %.critedge2.i.3.i.i
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 509
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !133 ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 505
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !133 ; 2 uses
  %.not317.i.4.i.i = icmp eq i8 %i.acw, %i.acy
  br i1 %.not317.i.4.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.not319.i.4.i.i = icmp eq i8 %i.acw, 1
  %or.cond345.i.4.i.i = or i1 %i.abw, %.not319.i.4.i.i
  br i1 %or.cond345.i.4.i.i, label %bb.dq, label %.critedge.i.i.i

bb.dq:                                            ; preds = %bb.dp, %bb.do, %.preheader._crit_edge.i.4.i.i
  %i.acz = phi i8 [ %.pre.i.4.i.i, %.preheader._crit_edge.i.4.i.i ], [ %i.acy, %bb.dp ], [ %i.acw, %bb.do ] ; 3 uses
  %i.ada = icmp eq i8 %i.acz, 1                   ; 3 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 506
  %i.adc = load i8, ptr %i.adb, align 2, !tbaa !133 ; 4 uses
  br i1 %i.ada, label %bb.dr, label %._crit_edge.i167.4.i.i

bb.dr:                                            ; preds = %bb.dq
  %.not317.1.i.4.i.i = icmp eq i8 %i.act, %i.adc
  br i1 %.not317.1.i.4.i.i, label %._crit_edge.i167.4.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %or.cond345.1.i.4.i.i = or i1 %i.acc, %i.acu
  br i1 %or.cond345.1.i.4.i.i, label %._crit_edge.i167.4.i.i, label %.critedge.i.i.i

._crit_edge.i167.4.i.i:                           ; preds = %bb.ds, %bb.dr, %bb.dq
  %i.add = phi i8 [ %i.act, %bb.dr ], [ %i.adc, %bb.ds ], [ %i.adc, %bb.dq ] ; 3 uses
  %i.ade = icmp eq i8 %i.add, 1                   ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 507
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !133 ; 4 uses
  br i1 %i.ade, label %bb.dt, label %._crit_edge372.i.4.i.i

bb.dt:                                            ; preds = %._crit_edge.i167.4.i.i
  %.not317.2.i.4.i.i = icmp eq i8 %i.acz, %i.adg
  br i1 %.not317.2.i.4.i.i, label %._crit_edge372.i.4.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.not318.2.i.4.i.i = icmp eq i8 %i.ace, 1
  %or.cond345.2.i.4.i.i = or i1 %.not318.2.i.4.i.i, %i.ada
  br i1 %or.cond345.2.i.4.i.i, label %._crit_edge372.i.4.i.i, label %.critedge.i.i.i

._crit_edge372.i.4.i.i:                           ; preds = %bb.du, %bb.dt, %._crit_edge.i167.4.i.i
  %i.adh = phi i8 [ %i.acz, %bb.dt ], [ %i.adg, %bb.du ], [ %i.adg, %._crit_edge.i167.4.i.i ] ; 2 uses
  %i.adi = icmp eq i8 %i.adh, 1                   ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.adk = load i8, ptr %i.adj, align 4, !tbaa !133 ; 4 uses
  br i1 %i.adi, label %bb.dv, label %._crit_edge375.i.4.i.i

bb.dv:                                            ; preds = %._crit_edge372.i.4.i.i
  %.not317.3.i.4.i.i = icmp eq i8 %i.add, %i.adk
  br i1 %.not317.3.i.4.i.i, label %._crit_edge375.i.4.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.not318.3.i.4.i.i = icmp eq i8 %i.aci, 1
  %or.cond345.3.i.4.i.i = or i1 %.not318.3.i.4.i.i, %i.ade
  br i1 %or.cond345.3.i.4.i.i, label %._crit_edge375.i.4.i.i, label %.critedge.i.i.i

._crit_edge375.i.4.i.i:                           ; preds = %bb.dw, %bb.dv, %._crit_edge372.i.4.i.i
  %i.adl = phi i8 [ %i.add, %bb.dv ], [ %i.adk, %bb.dw ], [ %i.adk, %._crit_edge372.i.4.i.i ] ; 2 uses
  %i.adm = icmp eq i8 %i.adl, 1
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 509
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !133 ; 3 uses
  br i1 %i.adm, label %bb.dx, label %._crit_edge378.i.4.i.i

bb.dx:                                            ; preds = %._crit_edge375.i.4.i.i
  %.not317.4.i.4.i.i = icmp eq i8 %i.adh, %i.ado
  %.not318.4.i.4.i.i = icmp eq i8 %i.acm, 1
  %or.cond345.4.i.4.i.i = or i1 %.not318.4.i.4.i.i, %i.adi
  %or.cond29.i = select i1 %.not317.4.i.4.i.i, i1 true, i1 %or.cond345.4.i.4.i.i
  br i1 %or.cond29.i, label %.critedge2.i.4.i.i, label %.critedge.i.i.i

._crit_edge378.i.4.i.i:                           ; preds = %._crit_edge375.i.4.i.i
  %i.adp = icmp ne i8 %i.ado, 1
  %.not317.5.i.4.i.i = icmp eq i8 %i.adl, %i.act
  %or.cond.i168.4.i.i = or i1 %.not317.5.i.4.i.i, %i.adp
  %.not318.5.i.4.i.i = icmp eq i8 %i.acq, 1
  %or.cond340.i.i = select i1 %or.cond.i168.4.i.i, i1 true, i1 %.not318.5.i.4.i.i
  br i1 %or.cond340.i.i, label %.critedge2.i.4.i.i, label %.critedge.i.i.i

.critedge2.i.4.i.i:                               ; preds = %._crit_edge378.i.4.i.i, %bb.dx
  %i.adq = load i8, ptr %i.sa, align 2, !tbaa !133 ; 4 uses
  %i.adr = icmp eq i8 %i.adq, 1                   ; 2 uses
  br i1 %i.adr, label %bb.dy, label %.preheader._crit_edge.i.5.i.i

.preheader._crit_edge.i.5.i.i:                    ; preds = %.critedge2.i.4.i.i
  %.phi.trans.insert.i.5.i.i = getelementptr inbounds nuw i8, ptr %1, i64 511
  %.pre.i.5.i.i = load i8, ptr %.phi.trans.insert.i.5.i.i, align 1, !tbaa !133
  br label %bb.ea

bb.dy:                                            ; preds = %.critedge2.i.4.i.i
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 515
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !133 ; 3 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %1, i64 511
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !133 ; 2 uses
  %.not317.i.5.i.i = icmp eq i8 %i.adt, %i.adv
  br i1 %.not317.i.5.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.not319.i.5.i.i = icmp eq i8 %i.adt, 1
  %or.cond345.i.5.i.i = or i1 %i.acu, %.not319.i.5.i.i
  br i1 %or.cond345.i.5.i.i, label %bb.ea, label %.critedge.i.i.i

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %.preheader._crit_edge.i.5.i.i
  %i.adw = phi i8 [ %.pre.i.5.i.i, %.preheader._crit_edge.i.5.i.i ], [ %i.adv, %bb.dz ], [ %i.adt, %bb.dy ] ; 3 uses
  %i.adx = icmp eq i8 %i.adw, 1                   ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.adz = load i8, ptr %i.ady, align 16, !tbaa !133 ; 3 uses
  br i1 %i.adx, label %bb.eb, label %._crit_edge.i167.5.i.i

bb.eb:                                            ; preds = %bb.ea
  %.not317.1.i.5.i.i = icmp eq i8 %i.adq, %i.adz
  br i1 %.not317.1.i.5.i.i, label %._crit_edge.i167.5.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %or.cond345.1.i.5.i.i = or i1 %i.ada, %i.adr
  br i1 %or.cond345.1.i.5.i.i, label %._crit_edge.i167.5.i.i, label %.critedge.i.i.i

._crit_edge.i167.5.i.i:                           ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.aea = phi i8 [ %i.adq, %bb.eb ], [ %i.adz, %bb.ec ], [ %i.adz, %bb.ea ] ; 3 uses
  %i.aeb = icmp eq i8 %i.aea, 1                   ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %1, i64 513
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !133 ; 3 uses
  br i1 %i.aeb, label %bb.ed, label %._crit_edge372.i.5.i.i

bb.ed:                                            ; preds = %._crit_edge.i167.5.i.i
  %.not317.2.i.5.i.i = icmp eq i8 %i.adw, %i.aed
  br i1 %.not317.2.i.5.i.i, label %._crit_edge372.i.5.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.not318.2.i.5.i.i = icmp eq i8 %i.adc, 1
  %or.cond345.2.i.5.i.i = or i1 %.not318.2.i.5.i.i, %i.adx
  br i1 %or.cond345.2.i.5.i.i, label %._crit_edge372.i.5.i.i, label %.critedge.i.i.i

._crit_edge372.i.5.i.i:                           ; preds = %bb.ee, %bb.ed, %._crit_edge.i167.5.i.i
  %i.aee = phi i8 [ %i.adw, %bb.ed ], [ %i.aed, %bb.ee ], [ %i.aed, %._crit_edge.i167.5.i.i ] ; 3 uses
  %i.aef = icmp eq i8 %i.aee, 1                   ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 514
  %i.aeh = load i8, ptr %i.aeg, align 2, !tbaa !133 ; 3 uses
  br i1 %i.aef, label %bb.ef, label %._crit_edge375.i.5.i.i

bb.ef:                                            ; preds = %._crit_edge372.i.5.i.i
  %.not317.3.i.5.i.i = icmp eq i8 %i.aea, %i.aeh
  br i1 %.not317.3.i.5.i.i, label %._crit_edge375.i.5.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %.not318.3.i.5.i.i = icmp eq i8 %i.adg, 1
  %or.cond345.3.i.5.i.i = or i1 %.not318.3.i.5.i.i, %i.aeb
  br i1 %or.cond345.3.i.5.i.i, label %._crit_edge375.i.5.i.i, label %.critedge.i.i.i

._crit_edge375.i.5.i.i:                           ; preds = %bb.eg, %bb.ef, %._crit_edge372.i.5.i.i
  %i.aei = phi i8 [ %i.aea, %bb.ef ], [ %i.aeh, %bb.eg ], [ %i.aeh, %._crit_edge372.i.5.i.i ] ; 2 uses
  %i.aej = icmp eq i8 %i.aei, 1                   ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 515
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !133 ; 3 uses
  br i1 %i.aej, label %bb.eh, label %._crit_edge378.i.5.i.i

bb.eh:                                            ; preds = %._crit_edge375.i.5.i.i
  %.not317.4.i.5.i.i = icmp eq i8 %i.aee, %i.ael
  br i1 %.not317.4.i.5.i.i, label %._crit_edge378.i.5.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.not318.4.i.5.i.i = icmp eq i8 %i.adk, 1
  %or.cond345.4.i.5.i.i = or i1 %.not318.4.i.5.i.i, %i.aef
  br i1 %or.cond345.4.i.5.i.i, label %._crit_edge378.i.5.i.i, label %.critedge.i.i.i

._crit_edge378.i.5.i.i:                           ; preds = %bb.ei, %bb.eh, %._crit_edge375.i.5.i.i
  %i.aem = phi i8 [ %i.aee, %bb.eh ], [ %i.ael, %bb.ei ], [ %i.ael, %._crit_edge375.i.5.i.i ]
  %i.aen = icmp ne i8 %i.aem, 1
  %.not317.5.i.5.i.i = icmp eq i8 %i.aei, %i.adq
  %or.cond.i168.5.i.i = or i1 %.not317.5.i.5.i.i, %i.aen
  %.not318.5.i.5.i.i = icmp eq i8 %i.ado, 1
  %or.cond345.5.i.5.i.i = or i1 %.not318.5.i.5.i.i, %i.aej
  %or.cond341.i.i = select i1 %or.cond.i168.5.i.i, i1 true, i1 %or.cond345.5.i.5.i.i
  %spec.select342.i.i = select i1 %or.cond341.i.i, i32 14, i32 13
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %._crit_edge378.i.5.i.i, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.dz, %._crit_edge378.i.4.i.i, %bb.dx, %bb.dw, %bb.du, %bb.ds, %bb.dp, %._crit_edge378.i.3.i.i, %bb.dn, %bb.dm, %bb.dk, %bb.di, %bb.df, %._crit_edge378.i.2.i.i, %bb.dd, %bb.dc, %bb.da, %bb.cy, %bb.cv, %._crit_edge378.i.1.i.i, %bb.ct, %bb.cs, %bb.cq, %bb.co, %bb.cl, %bb.cj, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.bz
  %indvars.iv365.i.lcssa.i.i = phi i64 [ 14, %bb.ec ], [ 9, %bb.cj ], [ 9, %bb.ci ], [ 9, %bb.cg ], [ 9, %bb.ce ], [ 9, %bb.cc ], [ 9, %bb.bz ], [ 10, %bb.cl ], [ 10, %bb.co ], [ 10, %bb.cq ], [ 10, %bb.cs ], [ 10, %bb.ct ], [ 10, %._crit_edge378.i.1.i.i ], [ 14, %._crit_edge378.i.5.i.i ], [ 11, %bb.cv ], [ 11, %bb.cy ], [ 11, %bb.da ], [ 11, %bb.dc ], [ 11, %bb.dd ], [ 11, %._crit_edge378.i.2.i.i ], [ 14, %bb.ei ], [ 12, %bb.df ], [ 12, %bb.di ], [ 12, %bb.dk ], [ 12, %bb.dm ], [ 12, %bb.dn ], [ 12, %._crit_edge378.i.3.i.i ], [ 14, %bb.eg ], [ 13, %bb.dp ], [ 13, %bb.ds ], [ 13, %bb.du ], [ 13, %bb.dw ], [ 13, %bb.dx ], [ 13, %._crit_edge378.i.4.i.i ], [ 14, %bb.ee ], [ 14, %bb.dz ]
  %.0269353.i.lcssa.i.i = phi i32 [ 14, %bb.ec ], [ 9, %bb.cj ], [ 9, %bb.ci ], [ 9, %bb.cg ], [ 9, %bb.ce ], [ 9, %bb.cc ], [ 9, %bb.bz ], [ 10, %bb.cl ], [ 10, %bb.co ], [ 10, %bb.cq ], [ 10, %bb.cs ], [ 10, %bb.ct ], [ 10, %._crit_edge378.i.1.i.i ], [ 14, %._crit_edge378.i.5.i.i ], [ 11, %bb.cv ], [ 11, %bb.cy ], [ 11, %bb.da ], [ 11, %bb.dc ], [ 11, %bb.dd ], [ 11, %._crit_edge378.i.2.i.i ], [ 14, %bb.ei ], [ 12, %bb.df ], [ 12, %bb.di ], [ 12, %bb.dk ], [ 12, %bb.dm ], [ 12, %bb.dn ], [ 12, %._crit_edge378.i.3.i.i ], [ 14, %bb.eg ], [ 13, %bb.dp ], [ 13, %bb.ds ], [ 13, %bb.du ], [ 13, %bb.dw ], [ 13, %bb.dx ], [ 13, %._crit_edge378.i.4.i.i ], [ 14, %bb.ee ], [ 14, %bb.dz ]
  %.1271.lcssa412.i.i.i = phi i32 [ 9, %bb.ec ], [ 13, %bb.cj ], [ 12, %bb.ci ], [ 11, %bb.cg ], [ 10, %bb.ce ], [ 9, %bb.cc ], [ 8, %bb.bz ], [ 8, %bb.cl ], [ 9, %bb.co ], [ 10, %bb.cq ], [ 11, %bb.cs ], [ 12, %bb.ct ], [ 13, %._crit_edge378.i.1.i.i ], [ %spec.select342.i.i, %._crit_edge378.i.5.i.i ], [ 8, %bb.cv ], [ 9, %bb.cy ], [ 10, %bb.da ], [ 11, %bb.dc ], [ 12, %bb.dd ], [ 13, %._crit_edge378.i.2.i.i ], [ 12, %bb.ei ], [ 8, %bb.df ], [ 9, %bb.di ], [ 10, %bb.dk ], [ 11, %bb.dm ], [ 12, %bb.dn ], [ 13, %._crit_edge378.i.3.i.i ], [ 11, %bb.eg ], [ 8, %bb.dp ], [ 9, %bb.ds ], [ 10, %bb.du ], [ 11, %bb.dw ], [ 12, %bb.dx ], [ 13, %._crit_edge378.i.4.i.i ], [ 10, %bb.ee ], [ 8, %bb.dz ] ; 2 uses
  %i.aeo = add nsw i32 %i.ih, -4                  ; 2 uses
  %i.aep = icmp slt i32 %.0269353.i.lcssa.i.i, %i.aeo
  br i1 %i.aep, label %.lr.ph359.i.i.i, label %_calcRadiusXtrans.exit.i.i

.lr.ph359.i.i.i:                                  ; preds = %.critedge.i.i.i
  %i.aeq = add nsw i32 %i.ib, -4                  ; 2 uses
  %i.aer = icmp slt i32 %.1271.lcssa412.i.i.i, %i.aeq
  %i.aes = shl nsw i32 %i.ib, 1
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = xor i32 %i.ib, -1
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = sub i32 1, %i.ib
  %i.aex = sext i32 %i.aew to i64
  %i.aey = mul nsw i32 %i.ib, 3
  %i.aez = sext i32 %i.aey to i64                 ; 2 uses
  %i.afa = shl nsw i32 %i.ib, 2
  %i.afb = sext i32 %i.afa to i64                 ; 2 uses
  br i1 %i.aer, label %.lr.ph.us.preheader.i.i.i, label %_calcRadiusXtrans.exit.i.i

.lr.ph.us.preheader.i.i.i:                        ; preds = %.lr.ph359.i.i.i
  %i.afc = zext nneg i32 %.1271.lcssa412.i.i.i to i64
  %i.afd = zext nneg i32 %i.aeq to i64
  %i.afe = zext nneg i32 %i.aeo to i64
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %._crit_edge.us.i172.i.i, %.lr.ph.us.preheader.i.i.i
  %indvars.iv367.i.i.i = phi i64 [ %indvars.iv365.i.lcssa.i.i, %.lr.ph.us.preheader.i.i.i ], [ %indvars.iv.next368.i.i.i, %._crit_edge.us.i172.i.i ] ; 2 uses
  %.0266357.us.i.i.i = phi float [ 1.000000e+00, %.lr.ph.us.preheader.i.i.i ], [ %.23.us.i.i.i, %._crit_edge.us.i172.i.i ]
  %i.aff = mul nsw i64 %indvars.iv367.i.i.i, %i.im
  %i.afg = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.aff
  br label %.thread338.us.i.i.i

.thread338.us.i.i.i:                              ; preds = %bb.ff, %.lr.ph.us.i.i.i
  %indvars.iv.i169.i.i = phi i64 [ %i.afc, %.lr.ph.us.i.i.i ], [ %indvars.iv.next.i171.i.i, %bb.ff ] ; 2 uses
  %.1355.us.i.i.i = phi float [ %.0266357.us.i.i.i, %.lr.ph.us.i.i.i ], [ %.23.us.i.i.i, %bb.ff ] ; 7 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %indvars.iv.i169.i.i ; 9 uses
  %i.afi = getelementptr [4 x i8], ptr %i.afh, i64 %i.im ; 4 uses
  %i.afj = getelementptr i8, ptr %i.afi, i64 4
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !12 ; 12 uses
  %i.afl = getelementptr i8, ptr %i.afi, i64 8
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !12 ; 7 uses
  %i.afn = fcmp reassoc nsz arcp contract afn ogt float %i.afk, %i.afm
  %..us.i170.i.i = select reassoc nsz arcp contract afn i1 %i.afn, float %i.afk, float %i.afm ; 2 uses
  %i.afo = getelementptr [4 x i8], ptr %i.afh, i64 %i.aet ; 3 uses
  %i.afp = getelementptr i8, ptr %i.afo, i64 4
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !12 ; 11 uses
  %i.afr = fcmp reassoc nsz arcp contract afn ogt float %..us.i170.i.i, %i.afq
  %i.afs = getelementptr i8, ptr %i.afo, i64 8
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !12 ; 11 uses
  %..us..i.i.i = select i1 %i.afr, float %..us.i170.i.i, float %i.afq ; 2 uses
  %i.afu = fcmp reassoc nsz arcp contract afn ogt float %..us..i.i.i, %i.aft
  %spec.select346.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.afu, float %..us..i.i.i, float %i.aft
  %i.afv = fcmp reassoc nsz arcp contract afn oge float %spec.select346.us.i.i.i, f0x3F666666 ; 2 uses
  %i.afw = load float, ptr %i.afh, align 4, !tbaa !12 ; 10 uses
  %i.afx = fcmp reassoc nsz arcp contract afn ogt float %i.afw, 5.000000e-03
  br i1 %i.afx, label %bb.ej, label %bb.eq

bb.ej:                                            ; preds = %.thread338.us.i.i.i
  %i.afy = getelementptr inbounds [4 x i8], ptr %i.afh, i64 %i.aev
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !12 ; 2 uses
  %i.aga = getelementptr inbounds [4 x i8], ptr %i.afh, i64 %i.aex
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !12 ; 2 uses
  %i.agc = fcmp reassoc nsz arcp contract afn ogt float %i.afz, %i.agb
  %.324.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.agc, float %i.afz, float %i.agb
  %i.agd = fcmp reassoc nsz arcp contract afn olt float %.324.us.i.i.i, f0x3F666666
  %i.age = fcmp reassoc nsz arcp contract afn olt float %i.afw, f0x3F666666
  %or.cond5.us.i.i.i = and i1 %i.age, %i.agd
  br i1 %or.cond5.us.i.i.i, label %bb.ek, label %bb.eq

bb.ek:                                            ; preds = %bb.ej
  %i.agf = getelementptr i8, ptr %i.afi, i64 -4
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !12 ; 9 uses
  %i.agh = fcmp reassoc nsz arcp contract afn ogt float %i.agg, 5.000000e-03
  br i1 %i.agh, label %.thread340.us.i.i.i, label %bb.en

.thread340.us.i.i.i:                              ; preds = %bb.ek
  %i.agi = getelementptr i8, ptr %i.afi, i64 -8
  %i.agj = load float, ptr %i.agi, align 4, !tbaa !12 ; 2 uses
  %i.agk = fcmp reassoc nsz arcp contract afn ogt float %i.agj, %i.agg
  %.325.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.agk, float %i.agj, float %i.agg ; 2 uses
  %i.agl = getelementptr i8, ptr %i.afo, i64 -8
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !12 ; 3 uses
  %i.agn = fcmp reassoc nsz arcp contract afn ogt float %.325.us.i.i.i, %i.agm
  %i.ago = fcmp reassoc nsz arcp contract afn ogt float %i.agm, %i.agg
  %spec.select349.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ago, float %i.agm, float %i.agg
  %i.agp = select reassoc nsz arcp contract afn i1 %i.agn, float %.325.us.i.i.i, float %spec.select349.us.i.i.i
  %i.agq = fcmp reassoc nsz arcp contract afn olt float %i.agp, f0x3F666666
  br i1 %i.agq, label %bb.el, label %bb.en

bb.el:                                            ; preds = %.thread340.us.i.i.i
  %i.agr = fcmp reassoc nsz arcp contract afn ogt float %i.afw, %i.agg
  %i.ags = select reassoc nsz arcp contract afn i1 %i.agr, float %i.afw, float %i.agg ; 3 uses
  %i.agt = fcmp reassoc nsz arcp contract afn ogt float %i.ags, f0x3C23D70A
  br i1 %i.agt, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.agu = fcmp reassoc nsz arcp contract afn olt float %i.afw, %i.agg
  %i.agv = select reassoc nsz arcp contract afn i1 %i.agu, float %i.afw, float %i.agg ; 2 uses
  %i.agw = fmul reassoc nsz arcp contract afn float %i.agv, %.1355.us.i.i.i
  %i.agx = fcmp reassoc nsz arcp contract afn ogt float %i.ags, %i.agw
  %i.agy = fdiv reassoc nsz arcp contract afn float %i.ags, %i.agv
  %spec.select.us.i175.i.i = select nsz i1 %i.agx, float %i.agy, float %.1355.us.i.i.i
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %.thread340.us.i.i.i, %bb.ek
  %.4.us.i173.i.i = phi nsz float [ %.1355.us.i.i.i, %bb.ek ], [ %.1355.us.i.i.i, %.thread340.us.i.i.i ], [ %spec.select.us.i175.i.i, %bb.em ], [ %.1355.us.i.i.i, %bb.el ] ; 4 uses
  %i.agz = fcmp reassoc nsz arcp contract afn ule float %i.afk, 5.000000e-03
  %or.cond.us.i174.i.i = or i1 %i.agz, %i.afv
  br i1 %or.cond.us.i174.i.i, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aha = fcmp reassoc nsz arcp contract afn ogt float %i.afw, %i.afk
  %i.ahb = select reassoc nsz arcp contract afn i1 %i.aha, float %i.afw, float %i.afk ; 3 uses
  %i.ahc = fcmp reassoc nsz arcp contract afn ogt float %i.ahb, f0x3C23D70A
  br i1 %i.ahc, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.ahd = fcmp reassoc nsz arcp contract afn olt float %i.afw, %i.afk
  %i.ahe = select reassoc nsz arcp contract afn i1 %i.ahd, float %i.afw, float %i.afk ; 2 uses
  %i.ahf = fmul reassoc nsz arcp contract afn float %.4.us.i173.i.i, %i.ahe
  %i.ahg = fcmp reassoc nsz arcp contract afn ogt float %i.ahb, %i.ahf
  %i.ahh = fdiv reassoc nsz arcp contract afn float %i.ahb, %i.ahe
  %spec.select329.us.i.i.i = select nsz i1 %i.ahg, float %i.ahh, float %.4.us.i173.i.i
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en, %bb.ej, %.thread338.us.i.i.i
  %.8.us.i.i.i = phi nsz float [ %.1355.us.i.i.i, %.thread338.us.i.i.i ], [ %.1355.us.i.i.i, %bb.ej ], [ %.4.us.i173.i.i, %bb.en ], [ %spec.select329.us.i.i.i, %bb.ep ], [ %.4.us.i173.i.i, %bb.eo ] ; 6 uses
  br i1 %i.afv, label %bb.ff, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ahi = fcmp reassoc nsz arcp contract afn ogt float %i.aft, 5.000000e-03
  br i1 %i.ahi, label %bb.es, label %bb.ey

bb.es:                                            ; preds = %bb.er
  %i.ahj = fcmp reassoc nsz arcp contract afn ogt float %i.afk, 5.000000e-03
  br i1 %i.ahj, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.ahk = fcmp reassoc nsz arcp contract afn ogt float %i.afk, %i.aft
  %i.ahl = select reassoc nsz arcp contract afn i1 %i.ahk, float %i.afk, float %i.aft ; 3 uses
  %i.ahm = fcmp reassoc nsz arcp contract afn ogt float %i.ahl, f0x3C23D70A
  br i1 %i.ahm, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.ahn = fcmp reassoc nsz arcp contract afn olt float %i.afk, %i.aft
  %i.aho = select reassoc nsz arcp contract afn i1 %i.ahn, float %i.afk, float %i.aft ; 2 uses
  %i.ahp = fmul reassoc nsz arcp contract afn float %.8.us.i.i.i, %i.aho
  %i.ahq = fcmp reassoc nsz arcp contract afn ogt float %i.ahl, %i.ahp
  %i.ahr = fdiv reassoc nsz arcp contract afn float %i.ahl, %i.aho
  %spec.select330.us.i.i.i = select nsz i1 %i.ahq, float %i.ahr, float %.8.us.i.i.i
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es
  %.11.us.i.i.i = phi nsz float [ %.8.us.i.i.i, %bb.es ], [ %spec.select330.us.i.i.i, %bb.eu ], [ %.8.us.i.i.i, %bb.et ] ; 4 uses
  %i.ahs = getelementptr [4 x i8], ptr %i.afh, i64 %i.aez
  %i.aht = getelementptr i8, ptr %i.ahs, i64 12
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !12 ; 7 uses
  %i.ahv = getelementptr [4 x i8], ptr %i.afh, i64 %i.afb ; 2 uses
  %i.ahw = getelementptr i8, ptr %i.ahv, i64 8
  %i.ahx = load float, ptr %i.ahw, align 4, !tbaa !12 ; 2 uses
  %i.ahy = fcmp reassoc nsz arcp contract afn ogt float %i.ahu, %i.ahx
  %.331.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ahy, float %i.ahu, float %i.ahx ; 2 uses
  %i.ahz = getelementptr i8, ptr %i.ahv, i64 16
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !12 ; 2 uses
  %i.aib = fcmp reassoc nsz arcp contract afn ogt float %.331.us.i.i.i, %i.aia
  %spec.select350.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.aib, float %.331.us.i.i.i, float %i.aia
  %i.aic = fcmp reassoc nsz arcp contract afn olt float %spec.select350.us.i.i.i, f0x3F666666
  %i.aid = fcmp reassoc nsz arcp contract afn ogt float %i.ahu, 5.000000e-03
  %or.cond7.us.i.i.i = and i1 %i.aid, %i.aic
  br i1 %or.cond7.us.i.i.i, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.aie = fcmp reassoc nsz arcp contract afn ogt float %i.ahu, %i.aft
  %i.aif = select reassoc nsz arcp contract afn i1 %i.aie, float %i.ahu, float %i.aft ; 3 uses
  %i.aig = fcmp reassoc nsz arcp contract afn ogt float %i.aif, f0x3C23D70A
  br i1 %i.aig, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.aih = fcmp reassoc nsz arcp contract afn olt float %i.ahu, %i.aft
  %i.aii = select reassoc nsz arcp contract afn i1 %i.aih, float %i.ahu, float %i.aft ; 2 uses
  %i.aij = fmul reassoc nsz arcp contract afn float %i.aii, %.11.us.i.i.i
  %i.aik = fcmp reassoc nsz arcp contract afn ogt float %i.aif, %i.aij
  %i.ail = fdiv reassoc nsz arcp contract afn float %i.aif, %i.aii
  %spec.select333.us.i.i.i = select nsz i1 %i.aik, float %i.ail, float %.11.us.i.i.i
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.er
  %.15.us.i.i.i = phi nsz float [ %.8.us.i.i.i, %bb.er ], [ %.11.us.i.i.i, %bb.ev ], [ %spec.select333.us.i.i.i, %bb.ex ], [ %.11.us.i.i.i, %bb.ew ] ; 5 uses
  %i.aim = fcmp reassoc nsz arcp contract afn ogt float %i.afq, 5.000000e-03
  br i1 %i.aim, label %bb.ez, label %bb.ff

bb.ez:                                            ; preds = %bb.ey
  %i.ain = fcmp reassoc nsz arcp contract afn ogt float %i.afm, 5.000000e-03
  br i1 %i.ain, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.aio = fcmp reassoc nsz arcp contract afn ogt float %i.afm, %i.afq
  %i.aip = select reassoc nsz arcp contract afn i1 %i.aio, float %i.afm, float %i.afq ; 3 uses
  %i.aiq = fcmp reassoc nsz arcp contract afn ogt float %i.aip, f0x3C23D70A
  br i1 %i.aiq, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.air = fcmp reassoc nsz arcp contract afn olt float %i.afm, %i.afq
  %i.ais = select reassoc nsz arcp contract afn i1 %i.air, float %i.afm, float %i.afq ; 2 uses
  %i.ait = fmul reassoc nsz arcp contract afn float %.15.us.i.i.i, %i.ais
  %i.aiu = fcmp reassoc nsz arcp contract afn ogt float %i.aip, %i.ait
  %i.aiv = fdiv reassoc nsz arcp contract afn float %i.aip, %i.ais
  %spec.select334.us.i.i.i = select nsz i1 %i.aiu, float %i.aiv, float %.15.us.i.i.i
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %.18.us.i.i.i = phi nsz float [ %.15.us.i.i.i, %bb.ez ], [ %spec.select334.us.i.i.i, %bb.fb ], [ %.15.us.i.i.i, %bb.fa ] ; 4 uses
end_hunk_1
