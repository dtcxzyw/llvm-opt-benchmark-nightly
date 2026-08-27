Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %gep.i.i.3 = getelementptr [4 x i8], ptr %gep190.i.i, i64 %indvars.iv.next.i.i.2
  %i.ow = load float, ptr %gep.i.i.3, align 4, !tbaa !22
  %i.ox = load float, ptr %i.oj, align 4, !tbaa !22
  %i.oy = fmul reassoc nsz arcp contract afn float %i.ox, %i.ow
  %i.oz = getelementptr [4 x i8], ptr %i.mn, i64 %indvars.iv.next.i.i.2
  store float %i.oy, ptr %i.oz, align 4, !tbaa !22
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !180

iter.check:                                       ; preds = %._crit_edge198.i.i, %.preheader.preheader.i.i
  %indvars.iv223.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next224.i.i, %._crit_edge198.i.i ] ; 4 uses
  %i.pa = trunc i64 %indvars.iv223.i.i to i32
  %i.pb = mul i32 %i.hg, %i.pa
  %i.pc = add i32 %i.pb, %i.jc
  %i.pd = sext i32 %i.pc to i64
  %i.pe = shl nsw i64 %i.pd, 4                    ; 2 uses
  %scevgep1645 = getelementptr i8, ptr %2, i64 %i.pe
  %scevgep1647 = getelementptr i8, ptr %scevgep1646, i64 %i.pe
  %i.pf = mul nuw nsw i64 %indvars.iv223.i.i, %i.in
  %i.pg = trunc i64 %indvars.iv223.i.i to i32
  %i.ph = add i32 %i.iz, %i.pg
  %i.pi = mul i32 %i.ph, %i.hg
  %i.pj = add i32 %i.pi, %i.jb                    ; 12 uses
  %i.pk = getelementptr [4 x i8], ptr %i.ir, i64 %i.pf ; 7 uses
  br i1 %min.iters.check1652, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.pl = add i32 %i.pj, %i.jf
  %i.pm = icmp slt i32 %i.pl, %i.pj
  %i.pn = or i1 %i.pm, %i.jg
  br i1 %i.pn, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck1643

vector.memcheck1643:                              ; preds = %vector.scevcheck
  %bound01648 = icmp ult ptr %i.ir, %scevgep1647
  %bound11649 = icmp ult ptr %scevgep1645, %scevgep1644
  %found.conflict1650 = and i1 %bound01648, %bound11649
  br i1 %found.conflict1650, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1643
  br i1 %min.iters.check1653, label %vec.epilog.ph, label %vector.body1656

vector.body1656:                                  ; preds = %vector.main.loop.iter.check, %vector.body1656
  %index1657 = phi i64 [ %index.next1664, %vector.body1656 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.po = trunc i64 %index1657 to i32             ; 4 uses
  %i.pp = or disjoint i32 %i.po, 8
  %i.pq = or disjoint i32 %i.po, 16
  %i.pr = or disjoint i32 %i.po, 24
  %i.ps = add i32 %i.pj, %i.po
  %i.pt = add i32 %i.pj, %i.pp
  %i.pu = add i32 %i.pj, %i.pq
  %i.pv = add i32 %i.pj, %i.pr
  %i.pw = sext i32 %i.ps to i64
  %i.px = sext i32 %i.pt to i64
  %i.py = sext i32 %i.pu to i64
  %i.pz = sext i32 %i.pv to i64
  %i.qa = shl nsw i64 %i.pw, 4
  %i.qb = shl nsw i64 %i.px, 4
  %i.qc = shl nsw i64 %i.py, 4
  %i.qd = shl nsw i64 %i.pz, 4
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 %i.qa
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 %i.qb
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 %i.qc
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 %i.qd
  %wide.vec = load <32 x float>, ptr %i.qe, align 4, !tbaa !22, !alias.scope !181
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1658 = load <32 x float>, ptr %i.qf, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1659 = shufflevector <32 x float> %wide.vec1658, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1660 = load <32 x float>, ptr %i.qg, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1661 = shufflevector <32 x float> %wide.vec1660, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1662 = load <32 x float>, ptr %i.qh, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1663 = shufflevector <32 x float> %wide.vec1662, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.qi = getelementptr [4 x i8], ptr %i.pk, i64 %index1657 ; 4 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 32
  %i.qk = getelementptr i8, ptr %i.qi, i64 64
  %i.ql = getelementptr i8, ptr %i.qi, i64 96
  store <8 x float> %strided.vec, ptr %i.qi, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  store <8 x float> %strided.vec1659, ptr %i.qj, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  store <8 x float> %strided.vec1661, ptr %i.qk, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  store <8 x float> %strided.vec1663, ptr %i.ql, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  %index.next1664 = add nuw i64 %index1657, 32    ; 2 uses
  %i.qm = icmp eq i64 %index.next1664, %n.vec1655
  br i1 %i.qm, label %vec.epilog.iter.check, label %vector.body1656, !llvm.loop !186

vec.epilog.iter.check:                            ; preds = %vector.body1656
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !187

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %vector.memcheck1643, %vector.scevcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv218.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck1643 ], [ %n.vec1655, %vec.epilog.iter.check ], [ %n.vec1666, %vec.epilog.vector.body ] ; 4 uses
  %i.qn = sub i64 %wide.trip.count221.i.i, %indvars.iv218.i.i.ph
  %xtraiter4714 = and i64 %i.qn, 3                ; 2 uses
  %lcmp.mod4715.not = icmp eq i64 %xtraiter4714, 0
  br i1 %lcmp.mod4715.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv218.i.i.prol = phi i64 [ %indvars.iv.next219.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv218.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter4716 = phi i64 [ %prol.iter4716.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.qo = trunc nuw nsw i64 %indvars.iv218.i.i.prol to i32
  %i.qp = add i32 %i.pj, %i.qo
  %i.qq = sext i32 %i.qp to i64
  %.idx.i.i.prol = shl nsw i64 %i.qq, 4
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.prol
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !22
  %i.qt = getelementptr [4 x i8], ptr %i.pk, i64 %indvars.iv218.i.i.prol
  store float %i.qs, ptr %i.qt, align 4, !tbaa !22
  %indvars.iv.next219.i.i.prol = add nuw nsw i64 %indvars.iv218.i.i.prol, 1 ; 2 uses
  %prol.iter4716.next = add i64 %prol.iter4716, 1 ; 2 uses
  %prol.iter4716.cmp.not = icmp eq i64 %prol.iter4716.next, %xtraiter4714
  br i1 %prol.iter4716.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !188

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv218.i.i.unr = phi i64 [ %indvars.iv218.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next219.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.qu = sub i64 %indvars.iv218.i.i.ph, %wide.trip.count221.i.i
  %i.qv = icmp ugt i64 %i.qu, -4
  br i1 %i.qv, label %._crit_edge198.i.i, label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1655, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1667 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1670, %vec.epilog.vector.body ] ; 3 uses
  %i.qw = trunc i64 %index1667 to i32
  %i.qx = add i32 %i.pj, %i.qw
  %i.qy = sext i32 %i.qx to i64
  %i.qz = shl nsw i64 %i.qy, 4
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 %i.qz
  %wide.vec1668 = load <16 x float>, ptr %i.ra, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1669 = shufflevector <16 x float> %wide.vec1668, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.rb = getelementptr [4 x i8], ptr %i.pk, i64 %index1667
  store <4 x float> %strided.vec1669, ptr %i.rb, align 4, !tbaa !22, !alias.scope !184, !noalias !181
  %index.next1670 = add nuw i64 %index1667, 4     ; 2 uses
  %i.rc = icmp eq i64 %index.next1670, %n.vec1666
  br i1 %i.rc, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !189

._crit_edge198.i.i:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.prol.loopexit
  %indvars.iv.next224.i.i = add nuw nsw i64 %indvars.iv223.i.i, 1 ; 2 uses
  %exitcond227.not.i.i = icmp eq i64 %indvars.iv.next224.i.i, %wide.trip.count226.i.i
  br i1 %exitcond227.not.i.i, label %.loopexit.i.i, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv218.i.i = phi i64 [ %indvars.iv.next219.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv218.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.rd = trunc nuw nsw i64 %indvars.iv218.i.i to i32
  %i.re = add i32 %i.pj, %i.rd
  %i.rf = sext i32 %i.re to i64
  %.idx.i.i = shl nsw i64 %i.rf, 4
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !22
  %i.ri = getelementptr [4 x i8], ptr %i.pk, i64 %indvars.iv218.i.i
  store float %i.rh, ptr %i.ri, align 4, !tbaa !22
  %indvars.iv.next219.i.i = add nuw nsw i64 %indvars.iv218.i.i, 1 ; 2 uses
  %i.rj = trunc nuw nsw i64 %indvars.iv.next219.i.i to i32
  %i.rk = add i32 %i.pj, %i.rj
  %i.rl = sext i32 %i.rk to i64
  %.idx.i.i.1 = shl nsw i64 %i.rl, 4
  %i.rm = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.1
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !22
  %i.ro = getelementptr [4 x i8], ptr %i.pk, i64 %indvars.iv.next219.i.i
  store float %i.rn, ptr %i.ro, align 4, !tbaa !22
  %indvars.iv.next219.i.i.1 = add nuw nsw i64 %indvars.iv218.i.i, 2 ; 2 uses
  %i.rp = trunc nuw nsw i64 %indvars.iv.next219.i.i.1 to i32
  %i.rq = add i32 %i.pj, %i.rp
  %i.rr = sext i32 %i.rq to i64
  %.idx.i.i.2 = shl nsw i64 %i.rr, 4
  %i.rs = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.2
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !22
  %i.ru = getelementptr [4 x i8], ptr %i.pk, i64 %indvars.iv.next219.i.i.1
  store float %i.rt, ptr %i.ru, align 4, !tbaa !22
  %indvars.iv.next219.i.i.2 = add nuw nsw i64 %indvars.iv218.i.i, 3 ; 2 uses
  %i.rv = trunc nuw nsw i64 %indvars.iv.next219.i.i.2 to i32
  %i.rw = add i32 %i.pj, %i.rv
  %i.rx = sext i32 %i.rw to i64
  %.idx.i.i.3 = shl nsw i64 %i.rx, 4
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.3
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !22
  %i.sa = getelementptr [4 x i8], ptr %i.pk, i64 %indvars.iv.next219.i.i.2
  store float %i.rz, ptr %i.sa, align 4, !tbaa !22
  %indvars.iv.next219.i.i.3 = add nuw nsw i64 %indvars.iv218.i.i, 4 ; 2 uses
  %exitcond222.not.i.i.3 = icmp eq i64 %indvars.iv.next219.i.i.3, %wide.trip.count221.i.i
  br i1 %exitcond222.not.i.i.3, label %._crit_edge198.i.i, label %vec.epilog.scalar.ph, !llvm.loop !190

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i, %._crit_edge192.i.i, %._crit_edge198.i.i, %.preheader184.lr.ph.i.i, %.preheader185.i.i, %.preheader180.i.i
  switch i32 %.fr1043, label %bb.bq [
    i32 0, label %bb.av
    i32 9, label %.preheader.i.preheader.i.i
  ]

.preheader.i.preheader.i.i:                       ; preds = %.loopexit.i.i, %.preheader181.lr.ph.i.i, %.preheader182.i.i
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 510 ; 2 uses
  %i.sc = load i8, ptr %i.x, align 16, !tbaa !169 ; 4 uses
  %i.sd = icmp eq i8 %i.sc, 1                     ; 3 uses
  br i1 %i.sd, label %bb.cm, label %.preheader._crit_edge.i.i.i

bb.av:                                            ; preds = %.loopexit.i.i
  %i.se = add nsw i32 %i.ii, -4
  %i.sf = icmp sgt i32 %i.ii, 8
  br i1 %i.sf, label %.preheader.lr.ph.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.av
  %i.sg = icmp sgt i32 %i.ic, 9
  %i.sh = shl nuw nsw i32 %i.ic, 1
  %6 = zext nneg i32 %i.sh to i64                 ; 2 uses
  %i.si = xor i32 %i.ic, -1
  %i.sj = sext i32 %i.si to i64                   ; 2 uses
  %i.sk = sub i32 1, %i.ic
  %i.sl = sext i32 %i.sk to i64                   ; 2 uses
  br i1 %i.sg, label %.preheader.us.preheader.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.i.i.i
  %i.sm = add nsw i32 %i.ic, -4
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = zext nneg i32 %i.ic to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.se to i64
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvars.iv207.i.i.i = phi i64 [ 4, %.preheader.us.preheader.i.i.i ], [ %indvars.iv.next208.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.0152201.us.i.i.i = phi float [ 1.000000e+00, %.preheader.us.preheader.i.i.i ], [ %.10.us.i.i.i, %._crit_edge.us.i.i.i ]
  %i.sp = mul nuw nsw i64 %indvars.iv207.i.i.i, %i.so
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.sp
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bp, %.preheader.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 5, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bp ] ; 2 uses
  %.1153199.us.i.i.i = phi float [ %.0152201.us.i.i.i, %.preheader.us.i.i.i ], [ %.10.us.i.i.i, %bb.bp ] ; 6 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %indvars.iv.i.i.i ; 10 uses
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !22 ; 15 uses
  %i.st = fcmp reassoc nsz arcp contract afn ogt float %i.ss, 5.000000e-03
  br i1 %i.st, label %bb.ax, label %bb.bp

bb.ax:                                            ; preds = %bb.aw
  %i.su = getelementptr [4 x i8], ptr %i.sr, i64 %i.in ; 2 uses
  %i.sv = getelementptr i8, ptr %i.su, i64 -4
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !22 ; 5 uses
  %i.sx = getelementptr i8, ptr %i.su, i64 4
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !22 ; 9 uses
  %i.sz = fcmp reassoc nsz arcp contract afn ogt float %i.ss, %i.sw
  %i.ta = select reassoc nsz arcp contract afn i1 %i.sz, float %i.ss, float %i.sw ; 4 uses
  %i.tb = fcmp reassoc nsz arcp contract afn ogt float %i.sw, 5.000000e-03
  %i.tc = fcmp reassoc nsz arcp contract afn ogt float %i.ta, f0x3C23D70A
  %or.cond.us.i.i.i = and i1 %i.tb, %i.tc
  br i1 %or.cond.us.i.i.i, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.td = fcmp reassoc nsz arcp contract afn olt float %i.ss, %i.sw
  %i.te = select reassoc nsz arcp contract afn i1 %i.td, float %i.ss, float %i.sw ; 2 uses
  %i.tf = fmul reassoc nsz arcp contract afn float %i.te, %.1153199.us.i.i.i
  %i.tg = fcmp reassoc nsz arcp contract afn ogt float %i.ta, %i.tf
  br i1 %i.tg, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.th = fcmp reassoc nsz arcp contract afn oeq float %i.ta, %i.ss
  br i1 %i.th, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ti = getelementptr inbounds i8, ptr %i.sr, i64 -8
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !22 ; 2 uses
  %i.tk = fcmp reassoc nsz arcp contract afn ogt float %i.tj, %i.ss
  %.183.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tk, float %i.tj, float %i.ss ; 3 uses
  %i.tl = getelementptr [4 x i8], ptr %i.sr, i64 %6 ; 2 uses
  %i.tm = getelementptr i8, ptr %i.tl, i64 -8
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !22 ; 3 uses
  %i.to = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.tn
  %i.tp = load float, ptr %i.tl, align 4, !tbaa !22 ; 4 uses
  br i1 %i.to, label %bb.bb, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %bb.ba
  %i.tq = fcmp reassoc nsz arcp contract afn ogt float %i.tn, %i.tp
  br i1 %i.tq, label %.thread194.us.i.i.i, label %bb.bd

.thread194.us.i.i.i:                              ; preds = %.thread.us.i.i.i
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.tr = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.tp
  br i1 %i.tr, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %.thread194.us.i.i.i, %.thread.us.i.i.i
  %i.ts = phi reassoc nsz arcp contract afn float [ %i.tn, %.thread194.us.i.i.i ], [ %.183.us.i.i.i, %bb.bc ], [ %i.tp, %bb.bb ], [ %i.tp, %.thread.us.i.i.i ]
  %i.tt = fcmp reassoc nsz arcp contract afn ult float %i.ts, f0x3F666666
  br i1 %i.tt, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %bb.az
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.sj
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !22 ; 2 uses
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.sl
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !22 ; 2 uses
  %i.ty = fcmp reassoc nsz arcp contract afn ogt float %i.tv, %i.tx
  %..us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ty, float %i.tv, float %i.tx ; 2 uses
  %i.tz = fcmp reassoc nsz arcp contract afn ogt float %..us.i.i.i, %i.sy
  %i.ua = select reassoc nsz arcp contract afn i1 %i.tz, float %..us.i.i.i, float %i.sy
  %i.ub = fcmp reassoc nsz arcp contract afn ult float %i.ua, f0x3F666666
  br i1 %i.ub, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.uc = fdiv reassoc nsz arcp contract afn float %i.ta, %i.te
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.ay, %bb.ax
  %.4.us.i.i.i = phi nsz float [ %.1153199.us.i.i.i, %bb.ax ], [ %.1153199.us.i.i.i, %bb.ay ], [ %i.uc, %bb.bf ], [ %.1153199.us.i.i.i, %bb.bd ], [ %.1153199.us.i.i.i, %bb.be ] ; 5 uses
  %i.ud = fcmp reassoc nsz arcp contract afn ogt float %i.ss, %i.sy
  %i.ue = select reassoc nsz arcp contract afn i1 %i.ud, float %i.ss, float %i.sy ; 4 uses
  %i.uf = fcmp reassoc nsz arcp contract afn ogt float %i.sy, 5.000000e-03
  %i.ug = fcmp reassoc nsz arcp contract afn ogt float %i.ue, f0x3C23D70A
  %or.cond4.us.i.i.i = select i1 %i.uf, i1 %i.ug, i1 false
  br i1 %or.cond4.us.i.i.i, label %bb.bh, label %bb.bp

bb.bh:                                            ; preds = %bb.bg
  %i.uh = fcmp reassoc nsz arcp contract afn olt float %i.ss, %i.sy
  %i.ui = select reassoc nsz arcp contract afn i1 %i.uh, float %i.ss, float %i.sy ; 2 uses
  %i.uj = fmul reassoc nsz arcp contract afn float %.4.us.i.i.i, %i.ui
  %i.uk = fcmp reassoc nsz arcp contract afn ogt float %i.ue, %i.uj
  br i1 %i.uk, label %bb.bi, label %bb.bp

bb.bi:                                            ; preds = %bb.bh
  %i.ul = fcmp reassoc nsz arcp contract afn oeq float %i.ue, %i.ss
  br i1 %i.ul, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.um = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.un = load float, ptr %i.um, align 4, !tbaa !22 ; 2 uses
  %i.uo = fcmp reassoc nsz arcp contract afn ogt float %i.ss, %i.un
  %.189.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.uo, float %i.ss, float %i.un ; 3 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %6 ; 2 uses
  %i.uq = load float, ptr %i.up, align 4, !tbaa !22 ; 3 uses
  %i.ur = fcmp reassoc nsz arcp contract afn ogt float %.189.us.i.i.i, %i.uq
  %i.us = getelementptr i8, ptr %i.up, i64 8
  %i.ut = load float, ptr %i.us, align 4, !tbaa !22 ; 4 uses
  br i1 %i.ur, label %bb.bk, label %.thread197.us.i.i.i

.thread197.us.i.i.i:                              ; preds = %bb.bj
  %i.uu = fcmp reassoc nsz arcp contract afn ogt float %i.uq, %i.ut
  br i1 %i.uu, label %.thread198.us.i.i.i, label %bb.bm

.thread198.us.i.i.i:                              ; preds = %.thread197.us.i.i.i
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.uv = fcmp reassoc nsz arcp contract afn ogt float %.189.us.i.i.i, %i.ut
  br i1 %i.uv, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %.thread198.us.i.i.i, %.thread197.us.i.i.i
  %i.uw = phi reassoc nsz arcp contract afn float [ %i.uq, %.thread198.us.i.i.i ], [ %.189.us.i.i.i, %bb.bl ], [ %i.ut, %bb.bk ], [ %i.ut, %.thread197.us.i.i.i ]
  %i.ux = fcmp reassoc nsz arcp contract afn ult float %i.uw, f0x3F666666
  br i1 %i.ux, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bi
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.sj
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !22 ; 2 uses
  %i.va = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.sl
  %i.vb = load float, ptr %i.va, align 4, !tbaa !22 ; 2 uses
  %i.vc = fcmp reassoc nsz arcp contract afn ogt float %i.uz, %i.vb
  %.187.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.vc, float %i.uz, float %i.vb ; 2 uses
  %i.vd = fcmp reassoc nsz arcp contract afn ogt float %.187.us.i.i.i, %i.sy
  %i.ve = select reassoc nsz arcp contract afn i1 %i.vd, float %.187.us.i.i.i, float %i.sy
  %i.vf = fcmp reassoc nsz arcp contract afn ult float %i.ve, f0x3F666666
  br i1 %i.vf, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.vg = fdiv reassoc nsz arcp contract afn float %i.ue, %i.ui
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bh, %bb.bg, %bb.aw
  %.10.us.i.i.i = phi nsz float [ %.1153199.us.i.i.i, %bb.aw ], [ %.4.us.i.i.i, %bb.bg ], [ %.4.us.i.i.i, %bb.bn ], [ %.4.us.i.i.i, %bb.bm ], [ %i.vg, %bb.bo ], [ %.4.us.i.i.i, %bb.bh ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.vh = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.sn
  br i1 %i.vh, label %bb.aw, label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %bb.bp
  %indvars.iv.next208.i.i.i = add nuw nsw i64 %indvars.iv207.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next208.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge203.loopexit.i.i.i, label %.preheader.us.i.i.i

._crit_edge203.loopexit.i.i.i:                    ; preds = %._crit_edge.us.i.i.i
  %i.vi = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.10.us.i.i.i)
  br label %_calcRadiusMono.exit.i.i

_calcRadiusMono.exit.i.i:                         ; preds = %._crit_edge203.loopexit.i.i.i, %.preheader.lr.ph.i.i.i, %bb.av
  %.0152.lcssa.i.i.i = phi float [ 0.000000e+00, %bb.av ], [ %i.vi, %._crit_edge203.loopexit.i.i.i ], [ 0.000000e+00, %.preheader.lr.ph.i.i.i ]
  %i.vj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0152.lcssa.i.i.i
  %i.vk = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.vj)
  br label %bb.gc

bb.bq:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  %i.vl = and i32 %.fr1043, 3
  store i32 %i.vl, ptr %i.m, align 4, !tbaa !32
  %i.vm = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.vn = lshr i32 %.fr1043, 4
  %i.vo = and i32 %i.vn, 3
  store i32 %i.vo, ptr %i.vm, align 4, !tbaa !32
  %i.vp = icmp sgt i32 %i.ii, 8
  br i1 %i.vp, label %.lr.ph207.i.i.i, label %_calcRadiusBayer.exit.i.i

.lr.ph207.i.i.i:                                  ; preds = %bb.bq
  %i.vq = add nsw <2 x i32> %i.ib, splat (i32 -4) ; 2 uses
end_hunk_0
begin_hunk_1_@process:bb.a
.lr.ph1491.i:                                     ; preds = %._crit_edge1492.i, %.lr.ph1491.preheader.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge1492.i ], [ 0, %.lr.ph1491.preheader.i ] ; 3 uses
  %indvars.iv1181 = phi i32 [ %indvars.iv.next1182, %._crit_edge1492.i ], [ 5, %.lr.ph1491.preheader.i ] ; 2 uses
  %indvars.iv1708.i = phi i32 [ %indvars.iv.next1709.i, %._crit_edge1492.i ], [ 109, %.lr.ph1491.preheader.i ] ; 3 uses
  %indvars.iv1641.i = phi i64 [ %indvars.iv.next1642.i, %._crit_edge1492.i ], [ -5, %.lr.ph1491.preheader.i ] ; 2 uses
  %indvars.iv1619.i = phi i64 [ %indvars.iv.next1620.i, %._crit_edge1492.i ], [ -7, %.lr.ph1491.preheader.i ] ; 2 uses
  %indvars.iv1591.i = phi i64 [ %indvars.iv.next1592.i, %._crit_edge1492.i ], [ -10, %.lr.ph1491.preheader.i ] ; 2 uses
  %indvars.iv1566.i = phi i64 [ %indvars.iv.next1567.i, %._crit_edge1492.i ], [ -13, %.lr.ph1491.preheader.i ] ; 15 uses
  %i.cdg = phi <4 x i32> [ %i.cfz, %._crit_edge1492.i ], [ <i32 7, i32 3, i32 4, i32 0>, %.lr.ph1491.preheader.i ] ; 3 uses
  %i.cdh = extractelement <4 x i32> %i.cdg, i64 3 ; 2 uses
  %i.cdi = mul i32 %i.auv, %indvar
  %smin2054 = call i32 @llvm.smin.i32(i32 %indvars.iv1708.i, i32 %i.ccj)
  %i.cdj = add i32 %smin2054, %i.cdh
  %smax2055 = call i32 @llvm.smax.i32(i32 %i.cdj, i32 14)
  %i.cdk = zext nneg i32 %smax2055 to i64         ; 2 uses
  %i.cdl = mul nuw nsw i64 %i.cdk, 1464
  %i.cdm = mul nuw nsw i64 %i.cdk, 122
  %i.cdn = mul i32 %i.aut, %indvar
  %smin1218 = call i32 @llvm.smin.i32(i32 %indvars.iv1708.i, i32 %i.ccj) ; 6 uses
  %i.cdo = insertelement <4 x i32> poison, i32 %smin1218, i64 0
  %i.cdp = shufflevector <4 x i32> %i.cdo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cdq = add <4 x i32> %i.cdp, %i.cdg
  %i.cdr = add i32 %smin1218, %i.cdh
  %i.cds = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cdq, <4 x i32> <i32 7, i32 11, i32 10, i32 14>) ; 4 uses
  %i.cdt = add i32 %smin1218, %indvars.iv1181
  %i.cdu = call i32 @llvm.smax.i32(i32 %i.cdt, i32 9)
  %smax1183 = zext nneg i32 %i.cdu to i64
  %i.cdv = add i32 %smin1218, -8
  %i.cdw = sext i32 %i.cdv to i64
  %i.cdx = add i32 %smin1218, -6
  %i.cdy = sext i32 %i.cdx to i64
  %i.cdz = add i32 %smin1218, -3
  %i.cea = sext i32 %i.cdz to i64
  %i.ceb = tail call i32 @llvm.smax.i32(i32 %i.cdr, i32 14)
  %smax1743.i = zext nneg i32 %i.ceb to i64       ; 6 uses
  %i.cec = trunc i64 %indvars.iv1566.i to i32     ; 2 uses
  %i.ced = add i32 %i.cec, 122
  %i.cee = tail call i32 @llvm.smin.i32(i32 %i.ced, i32 %i.ccj) ; 6 uses
  %i.cef = icmp slt i64 %indvars.iv1566.i, %i.ccs
  %i.ceg = add nuw nsw i64 %indvars.iv1566.i, 3   ; 3 uses
  %i.ceh = add nsw i32 %i.cee, -3                 ; 2 uses
  %i.cei = sext i32 %i.ceh to i64
  %i.cej = icmp slt i64 %i.ceg, %i.cei
  %i.cek = add nsw i32 %i.cee, -4
  %i.cel = sub i64 %indvars.iv1566.i, %i.ccp
  %i.cem = trunc i64 %i.cel to i32
  %i.cen = add i32 %i.cem, 8                      ; 2 uses
  %i.ceo = srem i32 %i.cen, 3
  %i.cep = add i32 %i.cen, %i.bta
  %i.ceq = sub i32 %i.cep, %i.ceo                 ; 2 uses
  %i.cer = add nsw i32 %i.cee, -6                 ; 2 uses
  %i.ces = icmp slt i32 %i.ceq, %i.cer
  %i.cet = add nuw nsw i64 %indvars.iv1566.i, 6
  %i.ceu = sext i32 %i.cer to i64                 ; 2 uses
  %i.cev = icmp slt i64 %i.cet, %i.ceu
  %i.cew = add nuw nsw i64 %indvars.iv1566.i, 8
  %i.cex = add nsw i32 %i.cee, -8
  %i.cey = sext i32 %i.cex to i64
  %i.cez = icmp slt i64 %i.cew, %i.cey
  %i.cfa = sub nsw i32 %i.cee, %i.cec             ; 5 uses
  %i.cfb = icmp sgt i32 %i.cfa, 16
  %i.cfc = icmp sgt i32 %i.cfa, 18
  %i.cfd = icmp sgt i32 %i.cfa, 20
  %i.cfe = icmp sgt i32 %i.cfa, 26                ; 2 uses
  %i.cff = icmp sgt i32 %i.cfa, 12
  %i.cfg = sext i32 %i.cee to i64
  %i.cfh = sext i32 %i.ceq to i64
  %i.cfi = trunc nsw i64 %i.ceg to i32
  %i.cfj = extractelement <4 x i32> %i.cds, i64 0
  %i.cfk = zext nneg i32 %i.cfj to i64
  %i.cfl = add nsw i64 %i.cfk, -7
  %scevgep2056 = getelementptr i8, ptr %scevgep2053, i64 %i.cdl
  %scevgep2060 = getelementptr i8, ptr %scevgep2059, i64 %i.cdm
  %i.cfm = add nsw i64 %smax1743.i, -13           ; 8 uses
  %i.cfn = add nsw i64 %smax1743.i, -14           ; 4 uses
  %i.cfo = extractelement <4 x i32> %i.cds, i64 2
  %i.cfp = zext nneg i32 %i.cfo to i64
  %i.cfq = extractelement <4 x i32> %i.cds, i64 1
  %i.cfr = zext nneg i32 %i.cfq to i64
  %xtraiter4787 = and i64 %i.cfm, 7               ; 3 uses
  %i.cfs = icmp ult i64 %i.cfn, 7
  %unroll_iter4791 = and i64 %i.cfm, -8
  %lcmp.mod4789.not = icmp eq i64 %xtraiter4787, 0
  %lcmp.mod4790 = icmp ne i64 %xtraiter4787, 0
  %xtraiter4793 = and i64 %i.cfm, 7               ; 3 uses
  %i.cft = icmp ult i64 %i.cfn, 7
  %unroll_iter4797 = and i64 %i.cfm, -8
  %lcmp.mod4795.not = icmp eq i64 %xtraiter4793, 0
  %lcmp.mod4796 = icmp ne i64 %xtraiter4793, 0
  %xtraiter4799 = and i64 %i.cfm, 7               ; 3 uses
  %i.cfu = icmp ult i64 %i.cfn, 7
  %unroll_iter4803 = and i64 %i.cfm, -8
  %lcmp.mod4801.not = icmp eq i64 %xtraiter4799, 0
  %lcmp.mod4802 = icmp ne i64 %xtraiter4799, 0
  %xtraiter4805 = and i64 %i.cfm, 7               ; 3 uses
  %i.cfv = icmp ult i64 %i.cfn, 7
  %unroll_iter4809 = and i64 %i.cfm, -8
  %lcmp.mod4807.not = icmp eq i64 %xtraiter4805, 0
  %lcmp.mod4808 = icmp ne i64 %xtraiter4805, 0
  %i.cfw = extractelement <4 x i32> %i.cds, i64 3
  %i.cfx = zext nneg i32 %i.cfw to i64
  br label %bb.jq

._crit_edge1492.i:                                ; preds = %._crit_edge1486.split.i
  %indvars.iv.next1567.i = add nsw i64 %indvars.iv1566.i, 96 ; 2 uses
  %i.cfy = icmp slt i64 %indvars.iv.next1567.i, %i.ccr
  %indvars.iv.next1592.i = add nsw i64 %indvars.iv1591.i, 96
  %indvars.iv.next1620.i = add nsw i64 %indvars.iv1619.i, 96
  %indvars.iv.next1642.i = add nsw i64 %indvars.iv1641.i, 96
  %indvars.iv.next1709.i = add nuw i32 %indvars.iv1708.i, 96
  %indvars.iv.next1182 = add i32 %indvars.iv1181, -96
  %i.cfz = add <4 x i32> %i.cdg, splat (i32 -96)
  %indvar.next = add i32 %indvar, 1
  br i1 %i.cfy, label %.lr.ph1491.i, label %._crit_edge1496.split.i

bb.jq:                                            ; preds = %._crit_edge1486.split.i, %.lr.ph1491.i
  %indvar2023 = phi i32 [ %indvar.next2024, %._crit_edge1486.split.i ], [ 0, %.lr.ph1491.i ] ; 3 uses
  %indvars.iv1206 = phi i32 [ %indvars.iv.next1207, %._crit_edge1486.split.i ], [ 7, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1196 = phi i32 [ %indvars.iv.next1197, %._crit_edge1486.split.i ], [ 3, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1186 = phi i32 [ %indvars.iv.next1187, %._crit_edge1486.split.i ], [ 4, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1176 = phi i32 [ %indvars.iv.next1177, %._crit_edge1486.split.i ], [ 5, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1705.i = phi i32 [ %indvars.iv.next1706.i, %._crit_edge1486.split.i ], [ 0, %.lr.ph1491.i ] ; 4 uses
  %indvars.iv1703.i = phi i32 [ %indvars.iv.next1704.i, %._crit_edge1486.split.i ], [ 109, %.lr.ph1491.i ] ; 5 uses
  %indvars.iv1636.i = phi i64 [ %indvars.iv.next1637.i, %._crit_edge1486.split.i ], [ -5, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1614.i = phi i64 [ %indvars.iv.next1615.i, %._crit_edge1486.split.i ], [ -7, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1586.i = phi i64 [ %indvars.iv.next1587.i, %._crit_edge1486.split.i ], [ -10, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1561.i = phi i64 [ %indvars.iv.next1562.i, %._crit_edge1486.split.i ], [ -13, %.lr.ph1491.i ] ; 15 uses
  %smin4779 = call i32 @llvm.smin.i32(i32 %indvars.iv1703.i, i32 %i.aqy)
  %i.cga = add i32 %smin4779, %indvars.iv1176     ; 2 uses
  %smax4780 = call i32 @llvm.smax.i32(i32 %i.cga, i32 9) ; 2 uses
  %i.cgb = zext nneg i32 %smax4780 to i64         ; 2 uses
  %smin2034 = call i32 @llvm.smin.i32(i32 %indvars.iv1703.i, i32 %i.aqy)
  %i.cgc = add i32 %smin2034, %indvars.iv1705.i
  %i.cgd = call i32 @llvm.umax.i32(i32 %i.cgc, i32 14)
  %umax2035 = zext i32 %i.cgd to i64              ; 4 uses
  %i.cge = shl nuw nsw i64 %umax2035, 2           ; 3 uses
  %i.cgf = mul i32 %indvar2023, 384
  %i.cgg = add i32 %i.cdi, %i.cgf
  %i.cgh = shl nuw nsw i64 %umax2035, 4
  %i.cgi = mul nuw nsw i64 %umax2035, 12
  %scevgep2057 = getelementptr i8, ptr %scevgep2056, i64 %i.cgi
  %scevgep2061 = getelementptr i8, ptr %scevgep2060, i64 %umax2035
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv1703.i, i32 %i.aqy)
  %i.cgj = add i32 %smin, %indvars.iv1705.i
  %i.cgk = zext i32 %i.cgj to i64
  %i.cgl = call i64 @llvm.usub.sat.i64(i64 %i.cgk, i64 14) ; 2 uses
  %i.cgm = mul i32 %indvar2023, 384
  %i.cgn = add i32 %i.cdn, %i.cgm
  %smin1215 = call i32 @llvm.smin.i32(i32 %indvars.iv1703.i, i32 %i.aqy) ; 7 uses
  %i.cgo = add i32 %smin1215, %indvars.iv1705.i   ; 3 uses
  %i.cgp = call i32 @llvm.umax.i32(i32 %i.cgo, i32 14)
  %umax1216 = zext i32 %i.cgp to i64
  %i.cgq = add i32 %smin1215, %indvars.iv1206
  %i.cgr = call i32 @llvm.umax.i32(i32 %i.cgq, i32 7)
  %umax1208 = zext i32 %i.cgr to i64
  %i.cgs = add i32 %smin1215, %indvars.iv1196
  %i.cgt = call i32 @llvm.umax.i32(i32 %i.cgs, i32 11)
  %umax1198 = zext i32 %i.cgt to i64
  %i.cgu = add i32 %smin1215, %indvars.iv1186     ; 2 uses
  %i.cgv = call i32 @llvm.smax.i32(i32 %i.cgu, i32 10)
  %smax1188 = zext nneg i32 %i.cgv to i64
  %i.cgw = add i32 %smin1215, -8
  %i.cgx = sext i32 %i.cgw to i64
  %i.cgy = add i32 %smin1215, -6
  %i.cgz = sext i32 %i.cgy to i64
  %i.cha = add i32 %smin1215, -3
  %i.chb = sext i32 %i.cha to i64
  %i.chc = tail call i32 @llvm.smax.i32(i32 %i.cgo, i32 10)
  %smax1737.i = zext nneg i32 %i.chc to i64       ; 4 uses
  %i.chd = trunc i64 %indvars.iv1561.i to i32     ; 3 uses
  %i.che = add i32 %i.chd, 122
  %i.chf = tail call i32 @llvm.smin.i32(i32 %i.che, i32 %i.aqy) ; 7 uses
  %i.chg = icmp slt i64 %indvars.iv1561.i, %i.arb
  %or.cond1498.i = and i1 %i.cef, %i.chg
  br i1 %or.cond1498.i, label %.preheader1246.preheader.i, label %.preheader1251.i

.preheader1246.preheader.i:                       ; preds = %bb.jq
  %i.chh = sext i32 %i.chf to i64
  br label %.preheader1246.i

.preheader1251.i:                                 ; preds = %._crit_edge.i492, %bb.jq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.cct, ptr noundef nonnull align 64 dereferenceable(178608) %i.bsd, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(178608) %i.ccu, ptr noundef nonnull align 64 dereferenceable(178608) %i.bsd, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.ccv, ptr noundef nonnull align 64 dereferenceable(178608) %i.bsd, i64 178608, i1 false)
  br i1 %i.cej, label %.lr.ph1308.i, label %._crit_edge1326.split.i

.preheader1246.i:                                 ; preds = %._crit_edge.i492, %.preheader1246.preheader.i
  %indvars.iv1568.i = phi i64 [ %indvars.iv1566.i, %.preheader1246.preheader.i ], [ %indvars.iv.next1569.i, %._crit_edge.i492 ] ; 5 uses
  %i.chi = sub nsw i64 %indvars.iv1568.i, %indvars.iv1566.i ; 2 uses
  %i.chj = getelementptr inbounds [1464 x i8], ptr %i.bsd, i64 %i.chi
  %i.chk = icmp slt i64 %indvars.iv1568.i, %i.cco ; 2 uses
  %i.chl = trunc i64 %indvars.iv1568.i to i32     ; 7 uses
  %i.chm = add i32 %i.chl, 600
  %i.chn = srem i32 %i.chm, 6
  %i.cho = sext i32 %i.chn to i64
  %i.chp = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cho
  %i.chq = sub i32 %i.ccl, %i.chl                 ; 3 uses
  %i.chr = tail call i32 @llvm.abs.i32(i32 %i.chl, i1 true) ; 3 uses
  %invariant.gep1293.idx.i = mul nuw nsw i64 %i.chi, 488
  %invariant.gep1293.i = getelementptr i8, ptr %i.cch, i64 %invariant.gep1293.idx.i ; 2 uses
  %i.chs = mul nuw nsw i64 %indvars.iv1568.i, %i.aov
  %i.cht = add i32 %i.chl, -1                     ; 3 uses
  %.1497.i = select i1 %i.chk, i32 %i.chr, i32 %i.chq ; 2 uses
  %i.chu = add nsw i32 %.1497.i, 600
  %i.chv = srem i32 %i.chu, 6
  %i.chw = sext i32 %i.chv to i64
  %i.chx = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.chw
  %i.chy = mul nsw i32 %.1497.i, %i.bo
  %invariant.gep.i490 = getelementptr [4 x i8], ptr %i.ayk, i64 %i.chs
  %.not1140.i = icmp slt i32 %i.cht, %i.aya
  %i.chz = sub nsw i32 %i.ccl, %i.cht             ; 2 uses
  %i.cia = add nsw i32 %i.chz, 600
  %i.cib = srem i32 %i.cia, 6
  %i.cic = sext i32 %i.cib to i64
  %i.cid = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cic ; 3 uses
  %i.cie = mul nsw i32 %i.chz, %i.bo              ; 3 uses
  %i.cif = tail call i32 @llvm.abs.i32(i32 %i.cht, i1 true) ; 2 uses
  %i.cig = add nuw nsw i32 %i.cif, 600
  %i.cih = urem i32 %i.cig, 6
  %i.cii = zext nneg i32 %i.cih to i64
  %i.cij = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cii ; 3 uses
  %i.cik = mul nuw nsw i32 %i.cif, %i.bo          ; 3 uses
  %.not1140.i.1 = icmp sgt i32 %i.aya, %i.chl
  %i.cil = add nsw i32 %i.chq, 600
  %i.cim = srem i32 %i.cil, 6
  %i.cin = sext i32 %i.cim to i64
  %i.cio = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cin ; 3 uses
  %i.cip = mul nsw i32 %i.chq, %i.bo              ; 3 uses
  %i.ciq = add nuw nsw i32 %i.chr, 600
  %i.cir = urem i32 %i.ciq, 6
  %i.cis = zext nneg i32 %i.cir to i64
  %i.cit = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cis ; 3 uses
  %i.ciu = mul nuw nsw i32 %i.chr, %i.bo          ; 3 uses
  %i.civ = add i32 %i.chl, 1                      ; 3 uses
  %.not1140.i.2 = icmp slt i32 %i.civ, %i.aya
  %i.ciw = sub nsw i32 %i.ccl, %i.civ             ; 2 uses
  %i.cix = add nsw i32 %i.ciw, 600
  %i.ciy = srem i32 %i.cix, 6
  %i.ciz = sext i32 %i.ciy to i64
  %i.cja = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.ciz ; 3 uses
  %i.cjb = mul nsw i32 %i.ciw, %i.bo              ; 3 uses
  %i.cjc = tail call i32 @llvm.abs.i32(i32 %i.civ, i1 true) ; 2 uses
  %i.cjd = add nuw nsw i32 %i.cjc, 600
  %i.cje = urem i32 %i.cjd, 6
  %i.cjf = zext nneg i32 %i.cje to i64
  %i.cjg = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cjf ; 3 uses
  %i.cjh = mul nuw nsw i32 %i.cjc, %i.bo          ; 3 uses
  br label %bb.jr

._crit_edge.i492:                                 ; preds = %.loopexit1239.i
  %indvars.iv.next1569.i = add nsw i64 %indvars.iv1568.i, 1 ; 2 uses
  %i.cji = icmp slt i64 %indvars.iv.next1569.i, %i.cfg
  br i1 %i.cji, label %.preheader1246.i, label %.preheader1251.i

bb.jr:                                            ; preds = %.loopexit1239.i, %.preheader1246.i
  %indvars.iv1563.i = phi i64 [ %indvars.iv1561.i, %.preheader1246.i ], [ %indvars.iv.next1564.i.pre-phi, %.loopexit1239.i ] ; 7 uses
  %i.cjj = sub nsw i64 %indvars.iv1563.i, %indvars.iv1561.i ; 3 uses
  %i.cjk = getelementptr inbounds [12 x i8], ptr %i.chj, i64 %i.cjj ; 7 uses
  %i.cjl = trunc i64 %indvars.iv1563.i to i32     ; 5 uses
  %i.cjm = or i32 %i.cjl, %i.chl
  %or.cond.i491 = icmp sgt i32 %i.cjm, -1
  %i.cjn = icmp slt i64 %indvars.iv1563.i, %i.aov ; 2 uses
  %or.cond1143.i = and i1 %i.cjn, %or.cond.i491
  %or.cond1144.i = and i1 %i.chk, %or.cond1143.i
  %i.cjo = add i32 %i.cjl, 600
  %i.cjp = srem i32 %i.cjo, 6
  %i.cjq = sext i32 %i.cjp to i64
  %i.cjr = getelementptr inbounds i8, ptr %i.chp, i64 %i.cjq
  %i.cjs = load i8, ptr %i.cjr, align 1, !tbaa !169 ; 23 uses
  br i1 %or.cond1144.i, label %bb.js, label %bb.jy

bb.js:                                            ; preds = %bb.jr
  %gep.i494 = getelementptr [4 x i8], ptr %invariant.gep.i490, i64 %indvars.iv1563.i ; 4 uses
  %i.cjt = icmp eq i8 %i.cjs, 0
  br i1 %i.cjt, label %.thread.i, label %bb.jt

.thread.i:                                        ; preds = %bb.js
  %i.cju = load float, ptr %gep.i494, align 4, !tbaa !22
  store float %i.cju, ptr %i.cjk, align 4, !tbaa !22
  br label %.thread2065.i

bb.jt:                                            ; preds = %bb.js
  store float 0.000000e+00, ptr %i.cjk, align 4, !tbaa !22
  %i.cjv = icmp eq i8 %i.cjs, 1
  br i1 %i.cjv, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.cjw = load float, ptr %gep.i494, align 4, !tbaa !22
  br label %.thread2065.i

.thread2065.i:                                    ; preds = %bb.ju, %.thread.i
  %.ph.i = phi float [ 0.000000e+00, %.thread.i ], [ %i.cjw, %bb.ju ]
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cjk, i64 4
  store float %.ph.i, ptr %i.cjx, align 4, !tbaa !22
  br label %bb.jx

bb.jv:                                            ; preds = %bb.jt
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cjk, i64 4
  store float 0.000000e+00, ptr %i.cjy, align 4, !tbaa !22
  %i.cjz = icmp eq i8 %i.cjs, 2
  br i1 %i.cjz, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  %i.cka = load float, ptr %gep.i494, align 4, !tbaa !22
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv, %.thread2065.i
  %i.ckb = phi reassoc nsz arcp contract afn float [ %i.cka, %bb.jw ], [ 0.000000e+00, %bb.jv ], [ 0.000000e+00, %.thread2065.i ]
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.cjk, i64 8
  store float %i.ckb, ptr %i.ckc, align 4, !tbaa !22
  %i.ckd = load float, ptr %gep.i494, align 4, !tbaa !22
  %i.cke = getelementptr inbounds [4 x i8], ptr %invariant.gep1293.i, i64 %i.cjj
  store float %i.ckd, ptr %i.cke, align 4, !tbaa !22
  %.pre1238 = add nsw i64 %indvars.iv1563.i, 1
  br label %.loopexit1239.i

bb.jy:                                            ; preds = %bb.jr
  %i.ckf = sub i32 %i.ate, %i.cjl
  %i.ckg = tail call i32 @llvm.abs.i32(i32 %i.cjl, i1 true)
  %i.ckh = zext i8 %i.cjs to i64                  ; 2 uses
  %i.cki = getelementptr inbounds nuw [4 x i8], ptr %i.cjk, i64 %i.ckh ; 2 uses
  %gep1294.i = getelementptr [4 x i8], ptr %invariant.gep1293.i, i64 %i.cjj ; 2 uses
  %i.ckj = select i1 %i.cjn, i32 %i.ckg, i32 %i.ckf ; 8 uses
  %i.ckk = add nsw i32 %i.ckj, 600
  %i.ckl = srem i32 %i.ckk, 6
  %i.ckm = sext i32 %i.ckl to i64                 ; 7 uses
  %i.ckn = getelementptr inbounds i8, ptr %i.chx, i64 %i.ckm
  %.not1141.not.i = icmp sgt i64 %indvars.iv1563.i, %i.aov
  %i.cko = add i32 %i.cjl, -1                     ; 2 uses
  %i.ckp = tail call i32 @llvm.abs.i32(i32 %i.cko, i1 true)
  %i.ckq = sub i32 %i.ate, %i.cko
  %i.ckr = add nsw i64 %indvars.iv1563.i, 1       ; 3 uses
  %.not1141.2.i = icmp slt i64 %i.ckr, %i.aov
  %i.cks = trunc nsw i64 %i.ckr to i32            ; 2 uses
  %i.ckt = sub i32 %i.ate, %i.cks
  %i.cku = tail call i32 @llvm.abs.i32(i32 %i.cks, i1 true)
  %i.ckv = add nsw i32 %i.ckj, %i.chy
  %i.ckw = sext i32 %i.ckv to i64
  %i.ckx = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.ckw
  %.2102.i = select i1 %.not1141.not.i, i32 %i.ckq, i32 %i.ckp ; 7 uses
  %i.cky = add nsw i32 %.2102.i, 600
  %i.ckz = srem i32 %i.cky, 6
  %i.cla = sext i32 %i.ckz to i64                 ; 6 uses
  %.2106.i = select i1 %.not1141.2.i, i32 %i.cku, i32 %i.ckt ; 4 uses
  %i.clb = add nsw i32 %.2106.i, 600
  %i.clc = srem i32 %i.clb, 6
  %i.cld = sext i32 %i.clc to i64                 ; 6 uses
  %i.cle = getelementptr inbounds i8, ptr %i.cid, i64 %i.cla
  %i.clf = add nsw i32 %i.cie, %.2102.i
  %i.clg = sext i32 %i.clf to i64
  %i.clh = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.clg
  %i.cli = getelementptr inbounds i8, ptr %i.cid, i64 %i.ckm
  %i.clj = add nsw i32 %i.cie, %i.ckj
  %i.clk = sext i32 %i.clj to i64
  %i.cll = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.clk
  %i.clm = getelementptr inbounds i8, ptr %i.cid, i64 %i.cld
  %i.cln = getelementptr inbounds i8, ptr %i.cij, i64 %i.cla
  %i.clo = add nsw i32 %i.cik, %.2102.i
  %i.clp = sext i32 %i.clo to i64
  %i.clq = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.clp
  %i.clr = getelementptr inbounds i8, ptr %i.cij, i64 %i.ckm
  %i.cls = add nsw i32 %i.cik, %i.ckj
  %i.clt = sext i32 %i.cls to i64
  %i.clu = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.clt
  %i.clv = getelementptr inbounds i8, ptr %i.cij, i64 %i.cld
  %i.clw = getelementptr inbounds i8, ptr %i.cio, i64 %i.cla
  %i.clx = add nsw i32 %i.cip, %.2102.i
  %i.cly = sext i32 %i.clx to i64
  %i.clz = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.cly
  %i.cma = getelementptr inbounds i8, ptr %i.cio, i64 %i.ckm
  %i.cmb = add nsw i32 %i.cip, %i.ckj
  %i.cmc = sext i32 %i.cmb to i64
  %i.cmd = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.cmc
  %i.cme = getelementptr inbounds i8, ptr %i.cio, i64 %i.cld
  %i.cmf = getelementptr inbounds i8, ptr %i.cit, i64 %i.cla
  %i.cmg = add nsw i32 %i.ciu, %.2102.i
  %i.cmh = sext i32 %i.cmg to i64
  %i.cmi = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.cmh
  %i.cmj = getelementptr inbounds i8, ptr %i.cit, i64 %i.ckm
  %i.cmk = add nsw i32 %i.ciu, %i.ckj
  %i.cml = sext i32 %i.cmk to i64
  %i.cmm = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.cml
  %i.cmn = getelementptr inbounds i8, ptr %i.cit, i64 %i.cld
  %i.cmo = getelementptr inbounds i8, ptr %i.cja, i64 %i.cla
  %i.cmp = add nsw i32 %i.cjb, %.2102.i
  %i.cmq = sext i32 %i.cmp to i64
  %i.cmr = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.cmq
  %i.cms = getelementptr inbounds i8, ptr %i.cja, i64 %i.ckm
  %i.cmt = add nsw i32 %i.cjb, %i.ckj
  %i.cmu = sext i32 %i.cmt to i64
  %i.cmv = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.cmu
  %i.cmw = getelementptr inbounds i8, ptr %i.cja, i64 %i.cld
  %i.cmx = getelementptr inbounds i8, ptr %i.cjg, i64 %i.cla
  %i.cmy = add nsw i32 %i.cjh, %.2102.i
  %i.cmz = sext i32 %i.cmy to i64
  %i.cna = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.cmz
  %i.cnb = getelementptr inbounds i8, ptr %i.cjg, i64 %i.ckm
  %i.cnc = add nsw i32 %i.cjh, %i.ckj
  %i.cnd = sext i32 %i.cnc to i64
  %i.cne = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.cnd
  %i.cnf = getelementptr inbounds i8, ptr %i.cjg, i64 %i.cld
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.ide = getelementptr inbounds nuw [4 x i8], ptr %i.icy, i64 %indvars.iv1458.i
  %i.idf = load float, ptr %i.ide, align 4, !tbaa !22
  %i.idg = fcmp reassoc nsz arcp contract afn ole float %i.idf, %i.huv
  %i.idh = zext i1 %i.idg to i8
  %i.idi = add i8 %i.idd, %i.idh
  %i.idj = getelementptr inbounds nuw [4 x i8], ptr %i.icy, i64 %i.hux
  %i.idk = load float, ptr %i.idj, align 4, !tbaa !22
  %i.idl = fcmp reassoc nsz arcp contract afn ole float %i.idk, %i.huv
  %i.idm = zext i1 %i.idl to i8
  %i.idn = add i8 %i.idi, %i.idm
  store i8 %i.idn, ptr %gep1197.us.i, align 1, !tbaa !169
  %indvars.iv.next1454.i = add nuw nsw i64 %indvars.iv1453.i, 1 ; 2 uses
  %exitcond1457.not.i = icmp eq i64 %indvars.iv.next1454.i, %i.aqr
  br i1 %exitcond1457.not.i, label %middle.block2722, label %.preheader1032.us.i, !llvm.loop !269

.preheader1036.us.i:                              ; preds = %bb.oh, %middle.block2596
  %.sroa.9.1.i513.lcssa = phi float [ %i.ibb, %middle.block2596 ], [ %.sroa.9.1.i513, %bb.oh ]
  %.sroa.12.1.i514.lcssa = phi float [ %i.ibc, %middle.block2596 ], [ %.sroa.12.1.i514, %bb.oh ] ; 2 uses
  %i.ido = phi <2 x float> [ %i.ibe, %middle.block2596 ], [ %i.ibj, %bb.oh ]
  %i.idp = trunc nuw nsw i64 %indvars.iv1504.i to i32
  %i.idq = add i32 %i.ifl, %i.idp
  %i.idr = shl nsw i32 %i.idq, 2
  %i.ids = sext i32 %i.idr to i64
  %i.idt = insertelement <2 x float> poison, float %.sroa.12.1.i514.lcssa, i64 0
  %i.idu = shufflevector <2 x float> %i.idt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.idv = fdiv reassoc nsz arcp contract afn <2 x float> %i.ido, %i.idu
  %i.idw = getelementptr inbounds [4 x i8], ptr %i.aoo, i64 %i.ids ; 2 uses
  %i.idx = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.idv, <2 x float> zeroinitializer)
  store <2 x float> %i.idx, ptr %i.idw, align 4, !tbaa !22
  %i.idy = fdiv reassoc nsz arcp contract afn float %.sroa.9.1.i513.lcssa, %.sroa.12.1.i514.lcssa
  %i.idz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.idy, float 0.000000e+00)
  %i.iea = getelementptr i8, ptr %i.idw, i64 8
  store float %i.idz, ptr %i.iea, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %indvars.iv.next1505.i = add nuw nsw i64 %indvars.iv1504.i, 1 ; 2 uses
  %i.ieb = icmp samesign ult i64 %indvars.iv.next1505.i, %i.izk
  br i1 %i.ieb, label %bb.og, label %._crit_edge1233.us.i

.preheader1037.us.i:                              ; preds = %.preheader1048.us.i, %middle.block2722
  %indvars.iv1458.i = phi i64 [ %i.aqv, %.preheader1048.us.i ], [ %i.hux, %middle.block2722 ] ; 10 uses
  %invariant.gep1184.us.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1182.us.i, i64 %indvars.iv1458.i ; 9 uses
  br i1 %i.aps, label %.preheader1037.us.i.new, label %.epil.preheader4770

.preheader1038.us.i:                              ; preds = %.preheader1038.us.i.preheader, %._crit_edge1178.us.i
  %indvars.iv1435.i = phi i64 [ %indvars.iv.next1436.i, %._crit_edge1178.us.i ], [ %i.aqu, %.preheader1038.us.i.preheader ] ; 3 uses
  %i.iec = getelementptr inbounds nuw [488 x i8], ptr %i.gaj, i64 %indvars.iv1435.i ; 2 uses
  %i.ied = getelementptr inbounds nuw [488 x i8], ptr %i.ixs, i64 %indvars.iv1435.i ; 2 uses
  %brmerge4918 = select i1 %min.iters.check2744, i1 true, i1 %op.rdx4615
  br i1 %brmerge4918, label %scalar.ph2743.preheader, label %vector.body2747

vector.body2747:                                  ; preds = %.preheader1038.us.i, %vector.body2747
  %index2748 = phi i64 [ %index.next2758, %vector.body2747 ], [ 0, %.preheader1038.us.i ] ; 2 uses
  %i.iee = add nuw i64 %index2748, %i.aqu         ; 2 uses
  %i.ief = getelementptr inbounds nuw [4 x i8], ptr %i.iec, i64 %i.iee ; 5 uses
  %wide.load2749 = load <8 x float>, ptr %i.ief, align 4, !tbaa !22
  %i.ieg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2749, splat (float 2.000000e+00)
  %i.ieh = getelementptr inbounds [4 x i8], ptr %i.ief, i64 %i.hsn
  %wide.load2750 = load <8 x float>, ptr %i.ieh, align 4, !tbaa !22
  %i.iei = getelementptr inbounds [4 x i8], ptr %i.ief, i64 %i.ixr
  %wide.load2751 = load <8 x float>, ptr %i.iei, align 4, !tbaa !22
  %i.iej = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2750, %wide.load2751
  %i.iek = fsub reassoc nsz arcp contract afn <8 x float> %i.ieg, %i.iej ; 2 uses
  %i.iel = fmul reassoc nsz arcp contract afn <8 x float> %i.iek, %i.iek
  %i.iem = getelementptr inbounds nuw i8, ptr %i.ief, i64 59536 ; 3 uses
  %wide.load2752 = load <8 x float>, ptr %i.iem, align 4, !tbaa !22
  %i.ien = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2752, splat (float 2.000000e+00)
  %i.ieo = getelementptr inbounds [4 x i8], ptr %i.iem, i64 %i.hsn
  %wide.load2753 = load <8 x float>, ptr %i.ieo, align 4, !tbaa !22
  %i.iep = getelementptr inbounds [4 x i8], ptr %i.iem, i64 %i.ixr
  %wide.load2754 = load <8 x float>, ptr %i.iep, align 4, !tbaa !22
  %i.ieq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2753, %wide.load2754
  %i.ier = fsub reassoc nsz arcp contract afn <8 x float> %i.ien, %i.ieq ; 2 uses
  %i.ies = fmul reassoc nsz arcp contract afn <8 x float> %i.ier, %i.ier
  %i.iet = fadd reassoc nsz arcp contract afn <8 x float> %i.ies, %i.iel
  %i.ieu = getelementptr inbounds nuw i8, ptr %i.ief, i64 119072 ; 3 uses
  %wide.load2755 = load <8 x float>, ptr %i.ieu, align 4, !tbaa !22
  %i.iev = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2755, splat (float 2.000000e+00)
  %i.iew = getelementptr inbounds [4 x i8], ptr %i.ieu, i64 %i.hsn
  %wide.load2756 = load <8 x float>, ptr %i.iew, align 4, !tbaa !22
  %i.iex = getelementptr inbounds [4 x i8], ptr %i.ieu, i64 %i.ixr
  %wide.load2757 = load <8 x float>, ptr %i.iex, align 4, !tbaa !22
  %i.iey = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2756, %wide.load2757
  %i.iez = fsub reassoc nsz arcp contract afn <8 x float> %i.iev, %i.iey ; 2 uses
  %i.ifa = fmul reassoc nsz arcp contract afn <8 x float> %i.iez, %i.iez
  %i.ifb = fadd reassoc nsz arcp contract afn <8 x float> %i.iet, %i.ifa
  %i.ifc = getelementptr inbounds nuw [4 x i8], ptr %i.ied, i64 %i.iee
  store <8 x float> %i.ifb, ptr %i.ifc, align 4, !tbaa !22
  %index.next2758 = add nuw i64 %index2748, 8     ; 2 uses
  %i.ifd = icmp eq i64 %index.next2758, %n.vec2746
  br i1 %i.ifd, label %middle.block2759, label %vector.body2747, !llvm.loop !270

middle.block2759:                                 ; preds = %vector.body2747
  br i1 %cmp.n2760, label %._crit_edge1178.us.i, label %scalar.ph2743.preheader

scalar.ph2743.preheader:                          ; preds = %.preheader1038.us.i, %middle.block2759
  %indvars.iv1432.i.ph = phi i64 [ %i.hrk, %middle.block2759 ], [ %i.aqu, %.preheader1038.us.i ]
  br label %scalar.ph2743

.preheader1039.us.i:                              ; preds = %.preheader1039.lr.ph.us.i, %._crit_edge1173.us.i
  %indvars.iv1429.i = phi i64 [ %indvars.iv.next1430.i, %._crit_edge1173.us.i ], [ %i.aqt, %.preheader1039.lr.ph.us.i ] ; 5 uses
  %i.ife = getelementptr inbounds nuw [1464 x i8], ptr %i.ixp, i64 %indvars.iv1429.i
  %i.iff = getelementptr inbounds nuw [488 x i8], ptr %i.gaj, i64 %indvars.iv1429.i
  %i.ifg = getelementptr inbounds nuw [488 x i8], ptr %i.gal, i64 %indvars.iv1429.i
  %i.ifh = getelementptr inbounds nuw [488 x i8], ptr %i.gas, i64 %indvars.iv1429.i
  br label %bb.oc

.preheader1046.us.i:                              ; preds = %.preheader1046.us.preheader.i, %._crit_edge1233.us.i
  %indvars.iv1507.i = phi i64 [ %i.aql, %.preheader1046.us.preheader.i ], [ %indvars.iv.next1508.i, %._crit_edge1233.us.i ] ; 4 uses
  %invariant.gep1214.us.i = getelementptr inbounds nuw [122 x i8], ptr %i.gam, i64 %indvars.iv1507.i
  %invariant.gep1226.us.i = getelementptr inbounds nuw [1464 x i8], ptr %i.fzj, i64 %indvars.iv1507.i
  %i.ifi = trunc i64 %indvars.iv1507.i to i32
  %i.ifj = add i32 %indvars.iv1335.i, %i.ifi
  %i.ifk = mul i32 %i.ifj, %i.bo
  %i.ifl = add i32 %i.ifk, %indvars.iv1330.i
  br label %bb.og

.preheader1047.us.i:                              ; preds = %.preheader1047.us.preheader.i, %._crit_edge1210.us.i.loopexit988.3
  %indvars.iv1476.i = phi i64 [ %indvars.iv.next1477.i.3, %._crit_edge1210.us.i.loopexit988.3 ], [ 0, %.preheader1047.us.preheader.i ] ; 5 uses
  %gep = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1476.i
  br label %bb.of

.preheader1048.us.i:                              ; preds = %.preheader1048.us.preheader.i, %._crit_edge1200.us.i
  %indvar2628 = phi i64 [ 0, %.preheader1048.us.preheader.i ], [ %indvar.next2629, %._crit_edge1200.us.i ] ; 3 uses
  %indvars.iv1461.i = phi i64 [ %i.aqv, %.preheader1048.us.preheader.i ], [ %i.ifo, %._crit_edge1200.us.i ] ; 5 uses
  %i.ifm = mul nuw nsw i64 %indvar2628, 122       ; 2 uses
  %scevgep2630 = getelementptr i8, ptr %i.gbd, i64 %i.ifm ; 9 uses
  %scevgep2635 = getelementptr i8, ptr %i.iyp, i64 %i.ifm ; 9 uses
  %i.ifn = mul nuw nsw i64 %indvar2628, 488       ; 18 uses
  %scevgep2636 = getelementptr i8, ptr %i.gbj, i64 %i.ifn
  %scevgep2637 = getelementptr i8, ptr %i.iyq, i64 %i.ifn
  %scevgep2638 = getelementptr i8, ptr %i.gbo, i64 %i.ifn
  %scevgep2639 = getelementptr i8, ptr %i.iyr, i64 %i.ifn
  %scevgep2640 = getelementptr i8, ptr %i.gbt, i64 %i.ifn
  %scevgep2641 = getelementptr i8, ptr %i.iys, i64 %i.ifn
  %scevgep2642 = getelementptr i8, ptr %i.gby, i64 %i.ifn
  %scevgep2643 = getelementptr i8, ptr %i.iyt, i64 %i.ifn
  %scevgep2644 = getelementptr i8, ptr %i.gcd, i64 %i.ifn
  %scevgep2645 = getelementptr i8, ptr %i.iyu, i64 %i.ifn
  %scevgep2646 = getelementptr i8, ptr %i.gci, i64 %i.ifn
  %scevgep2647 = getelementptr i8, ptr %i.iyv, i64 %i.ifn
  %scevgep2648 = getelementptr i8, ptr %i.gcn, i64 %i.ifn
  %scevgep2649 = getelementptr i8, ptr %i.iyw, i64 %i.ifn
  %scevgep2650 = getelementptr i8, ptr %i.gcs, i64 %i.ifn
  %scevgep2651 = getelementptr i8, ptr %i.iyx, i64 %i.ifn
  %scevgep2652 = getelementptr i8, ptr %i.gcx, i64 %i.ifn
  %scevgep2653 = getelementptr i8, ptr %i.iyy, i64 %i.ifn
  %invariant.gep1182.us.i = getelementptr inbounds nuw [488 x i8], ptr %i.gak, i64 %indvars.iv1461.i
  %invariant.gep1194.us.i = getelementptr inbounds nuw [122 x i8], ptr %i.gaj, i64 %indvars.iv1461.i
  %i.ifo = add nuw nsw i64 %indvars.iv1461.i, 1   ; 4 uses
  %bound02654 = icmp ult ptr %scevgep2630, %scevgep2637
  %bound12655 = icmp ult ptr %scevgep2636, %scevgep2635
  %found.conflict2656 = and i1 %bound02654, %bound12655
  %bound02657 = icmp ult ptr %scevgep2630, %scevgep2639
  %bound12658 = icmp ult ptr %scevgep2638, %scevgep2635
  %found.conflict2659 = and i1 %bound02657, %bound12658
  %conflict.rdx2660 = or i1 %found.conflict2656, %found.conflict2659
  %bound02661 = icmp ult ptr %scevgep2630, %scevgep2641
  %bound12662 = icmp ult ptr %scevgep2640, %scevgep2635
  %found.conflict2663 = and i1 %bound02661, %bound12662
  %conflict.rdx2664 = or i1 %conflict.rdx2660, %found.conflict2663
  %bound02665 = icmp ult ptr %scevgep2630, %scevgep2643
  %bound12666 = icmp ult ptr %scevgep2642, %scevgep2635
  %found.conflict2667 = and i1 %bound02665, %bound12666
  %conflict.rdx2668 = or i1 %conflict.rdx2664, %found.conflict2667
  %bound02669 = icmp ult ptr %scevgep2630, %scevgep2645
  %bound12670 = icmp ult ptr %scevgep2644, %scevgep2635
  %found.conflict2671 = and i1 %bound02669, %bound12670
  %conflict.rdx2672 = or i1 %conflict.rdx2668, %found.conflict2671
  %bound02673 = icmp ult ptr %scevgep2630, %scevgep2647
  %bound12674 = icmp ult ptr %scevgep2646, %scevgep2635
  %found.conflict2675 = and i1 %bound02673, %bound12674
  %conflict.rdx2676 = or i1 %conflict.rdx2672, %found.conflict2675
  %bound02677 = icmp ult ptr %scevgep2630, %scevgep2649
  %bound12678 = icmp ult ptr %scevgep2648, %scevgep2635
  %found.conflict2679 = and i1 %bound02677, %bound12678
  %conflict.rdx2680 = or i1 %conflict.rdx2676, %found.conflict2679
  %bound02681 = icmp ult ptr %scevgep2630, %scevgep2651
  %bound12682 = icmp ult ptr %scevgep2650, %scevgep2635
  %found.conflict2683 = and i1 %bound02681, %bound12682
  %conflict.rdx2684 = or i1 %conflict.rdx2680, %found.conflict2683
  %bound02685 = icmp ult ptr %scevgep2630, %scevgep2653
  %bound12686 = icmp ult ptr %scevgep2652, %scevgep2635
  %found.conflict2687 = and i1 %bound02685, %bound12686
  %conflict.rdx2688 = or i1 %conflict.rdx2684, %found.conflict2687
  br label %.preheader1037.us.i

.preheader1050.us.i:                              ; preds = %._crit_edge.us.i, %.preheader1050.us.preheader.i
  %indvars.iv1159 = phi i32 [ %indvars.iv.next1160, %._crit_edge.us.i ], [ %indvars.iv1157, %.preheader1050.us.preheader.i ] ; 2 uses
  %indvars.iv1337.i = phi i64 [ %indvars.iv.next1338.i, %._crit_edge.us.i ], [ %i.gdi, %.preheader1050.us.preheader.i ] ; 6 uses
  %i.ifp = sext i32 %indvars.iv1159 to i64
  %i.ifq = sub nsw i64 %indvars.iv1337.i, %i.gdi
  %i.ifr = getelementptr inbounds [1464 x i8], ptr %i.fzj, i64 %i.ifq
  %i.ifs = icmp slt i64 %indvars.iv1337.i, %i.gat ; 2 uses
  %i.ift = trunc i64 %indvars.iv1337.i to i32     ; 4 uses
  %i.ifu = add i32 %i.ift, 600
  %i.ifv = srem i32 %i.ifu, 6
  %i.ifw = sext i32 %i.ifv to i64
  %i.ifx = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.ifw
  %i.ify = sub i32 %i.gap, %i.ift
  %i.ifz = tail call i32 @llvm.abs.i32(i32 %i.ift, i1 true)
  %i.iga = mul nuw nsw i64 %indvars.iv1337.i, %i.aou
  %..i517 = select i1 %i.ifs, i32 %i.ifz, i32 %i.ify ; 2 uses
  %i.igb = add nsw i32 %..i517, 600
  %i.igc = srem i32 %i.igb, 6
  %i.igd = sext i32 %i.igc to i64
  %i.ige = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.igd
  %i.igf = mul nsw i32 %..i517, %i.bo
  %invariant.gep.i518 = getelementptr [4 x i8], ptr %i.ayk, i64 %i.iga
  br label %bb.mk

.preheader1052.us.i:                              ; preds = %._crit_edge1200.us.i, %.preheader1048.lr.ph.us.i, %bb.od
  %i.igg = sub nsw i32 %i.hrb, %i.apz             ; 4 uses
  br i1 %i.gem, label %.preheader1047.us.preheader.i, label %._crit_edge1235.split.us.i

.preheader1047.us.preheader.i:                    ; preds = %.preheader1052.us.i
  %i.igh = icmp slt i32 %i.aqm, %i.igg
  %i.igi = sext i32 %i.igg to i64
  br i1 %i.igh, label %.preheader1047.us.i.us, label %.preheader1047.us.i

.preheader1047.us.i.us:                           ; preds = %.preheader1047.us.preheader.i, %._crit_edge1210.us.i.loopexit.us
  %indvars.iv1476.i.us = phi i64 [ %indvars.iv.next1477.i.us, %._crit_edge1210.us.i.loopexit.us ], [ 0, %.preheader1047.us.preheader.i ] ; 4 uses
  %i.igj = mul i64 %indvars.iv1476.i.us, 14884
  %i.igk = getelementptr inbounds nuw [14884 x i8], ptr %i.gam, i64 %indvars.iv1476.i.us
  %i.igl = getelementptr inbounds nuw [14884 x i8], ptr %i.gaj, i64 %indvars.iv1476.i.us
  %i.igm = getelementptr i8, ptr %i.gdd, i64 %i.igj
  br label %.preheader1031.lr.ph.us.us.i.us

.preheader1031.lr.ph.us.us.i.us:                  ; preds = %.preheader1047.us.i.us, %._crit_edge1207.us.us.i.us
  %indvar4548 = phi i64 [ 0, %.preheader1047.us.i.us ], [ %indvar.next4549, %._crit_edge1207.us.us.i.us ] ; 2 uses
  %indvars.iv1473.i.us = phi i64 [ %i.aql, %.preheader1047.us.i.us ], [ %i.igr, %._crit_edge1207.us.us.i.us ] ; 3 uses
  %i.ign = mul nuw nsw i64 %indvar4548, 122
  %scevgep4550 = getelementptr i8, ptr %i.igm, i64 %i.ign
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.f, i8 0, i64 5, i1 false)
  %i.igo = getelementptr inbounds nuw [122 x i8], ptr %i.igk, i64 %indvars.iv1473.i.us ; 2 uses
  %i.igp = getelementptr i8, ptr %i.igo, i64 %i.aql
  %i.igq = getelementptr i8, ptr %i.igp, i64 -5
  store i8 0, ptr %i.igq, align 1, !tbaa !169
  %i.igr = add nuw nsw i64 %indvars.iv1473.i.us, 1 ; 3 uses
  %load_initial = load i8, ptr %scevgep4550, align 1
  br label %.preheader1031.us.us.i.us

.preheader1031.us.us.i.us:                        ; preds = %.preheader1031.us.us.i.us, %.preheader1031.lr.ph.us.us.i.us
  %store_forwarded = phi i8 [ %load_initial, %.preheader1031.lr.ph.us.us.i.us ], [ %i.ihp, %.preheader1031.us.us.i.us ]
  %indvars.iv1470.i.us = phi i64 [ %i.aqw, %.preheader1031.lr.ph.us.us.i.us ], [ %indvars.iv.next1471.i.us, %.preheader1031.us.us.i.us ] ; 4 uses
  %invariant.gep1202.us.us.i.us = getelementptr i8, ptr %i.igl, i64 %indvars.iv1470.i.us ; 2 uses
  %i.igs = getelementptr [122 x i8], ptr %invariant.gep1202.us.us.i.us, i64 %indvars.iv1473.i.us ; 4 uses
  %i.igt = getelementptr i8, ptr %i.igs, i64 -242
  %i.igu = load i8, ptr %i.igt, align 1, !tbaa !169
  %i.igv = getelementptr i8, ptr %i.igs, i64 -120
  %i.igw = load i8, ptr %i.igv, align 1, !tbaa !169
  %i.igx = getelementptr i8, ptr %i.igs, i64 2
  %i.igy = load i8, ptr %i.igx, align 1, !tbaa !169
  %gep1203.us.us.3.i.us = getelementptr [122 x i8], ptr %invariant.gep1202.us.us.i.us, i64 %i.igr
  %i.igz = getelementptr i8, ptr %gep1203.us.us.3.i.us, i64 2
  %i.iha = load i8, ptr %i.igz, align 1, !tbaa !169
  %i.ihb = getelementptr i8, ptr %i.igs, i64 246
  %i.ihc = load i8, ptr %i.ihb, align 1, !tbaa !169
  %i.ihd = insertelement <4 x i8> poison, i8 %i.igw, i64 0
  %i.ihe = insertelement <4 x i8> %i.ihd, i8 %i.igu, i64 1
  %i.ihf = insertelement <4 x i8> %i.ihe, i8 %i.igy, i64 2
  %i.ihg = insertelement <4 x i8> %i.ihf, i8 %i.iha, i64 3
  %i.ihh = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.ihg)
  %op.rdx4610 = add i8 %i.ihh, %i.ihc             ; 2 uses
  %i.ihi = getelementptr i8, ptr %i.igo, i64 %indvars.iv1470.i.us
  %i.ihj = trunc nsw i64 %indvars.iv1470.i.us to i32
  %i.ihk = srem i32 %i.ihj, 5
  %i.ihl = sext i32 %i.ihk to i64
  %i.ihm = getelementptr inbounds i8, ptr %i.f, i64 %i.ihl ; 2 uses
  %i.ihn = load i8, ptr %i.ihm, align 1, !tbaa !169
  %i.iho = add i8 %store_forwarded, %op.rdx4610
  %i.ihp = sub i8 %i.iho, %i.ihn                  ; 2 uses
  store i8 %i.ihp, ptr %i.ihi, align 1, !tbaa !169
  store i8 %op.rdx4610, ptr %i.ihm, align 1, !tbaa !169
  %indvars.iv.next1471.i.us = add nsw i64 %indvars.iv1470.i.us, 1 ; 2 uses
  %i.ihq = icmp slt i64 %indvars.iv.next1471.i.us, %i.igi
  br i1 %i.ihq, label %.preheader1031.us.us.i.us, label %._crit_edge1207.us.us.i.us

._crit_edge1207.us.us.i.us:                       ; preds = %.preheader1031.us.us.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.ihr = icmp slt i64 %i.igr, %i.gew
  %indvar.next4549 = add i64 %indvar4548, 1
  br i1 %i.ihr, label %.preheader1031.lr.ph.us.us.i.us, label %._crit_edge1210.us.i.loopexit.us

._crit_edge1210.us.i.loopexit.us:                 ; preds = %._crit_edge1207.us.us.i.us
  %indvars.iv.next1477.i.us = add nuw nsw i64 %indvars.iv1476.i.us, 1 ; 2 uses
  %exitcond1480.not.i.us = icmp eq i64 %indvars.iv.next1477.i.us, %i.aqr
  br i1 %exitcond1480.not.i.us, label %.preheader1051.split.us.i, label %.preheader1047.us.i.us

.preheader1053.us.i:                              ; preds = %._crit_edge1113.us.i, %.lr.ph1100.us.i, %.preheader1055.us.i
  %i.ihs = add nsw i32 %indvars.iv1330.i, 6
  %i.iht = add nsw i32 %i.gfo, -6                 ; 2 uses
  %i.ihu = icmp sge i32 %i.ihs, %i.iht
  %i.ihv = sub nsw i32 %indvars.iv1330.i, %i.gar
  %.fr967.us.i = freeze i32 %i.ihv
  %i.ihw = add i32 %.fr967.us.i, %i.aqg           ; 2 uses
  %i.ihx = srem i32 %i.ihw, 3
  %i.ihy = add i32 %i.ihw, %i.gar
  %i.ihz = sub i32 %i.ihy, %i.ihx                 ; 2 uses
  %i.iia = sub nsw i32 %i.gfo, %i.aqf             ; 3 uses
  %i.iib = icmp sge i32 %i.ihz, %i.iia
  %i.iic = add nsw i32 %indvars.iv1330.i, %i.aqf
  %i.iid = icmp sge i32 %i.iic, %i.iia
  %i.iie = add nsw i32 %indvars.iv1330.i, %i.aqh
  %i.iif = sub nsw i32 %i.gfo, %i.aqh             ; 2 uses
  %i.iig = icmp sge i32 %i.iie, %i.iif
  %i.iih = sext i32 %i.iht to i64
  %i.iii = sext i32 %i.ihz to i64
  %i.iij = sext i32 %i.iia to i64                 ; 2 uses
  %i.iik = sext i32 %i.iif to i64
  %brmerge1279.i = select i1 %i.ged, i1 true, i1 %i.ihu
  %brmerge1282.i = select i1 %i.gdv, i1 true, i1 %i.iib
  %brmerge1285.i = select i1 %i.gdx, i1 true, i1 %i.iid
  br label %bb.nh

.preheader1055.us.i:                              ; preds = %._crit_edge.us.i, %bb.mj
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.gaw, ptr noundef nonnull %i.fzj, i64 noundef 44652) #27
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.gax, ptr noundef nonnull %i.fzj, i64 noundef 44652) #27
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.gay, ptr noundef nonnull %i.fzj, i64 noundef 44652) #27
  br i1 %i.gdn, label %.lr.ph1100.us.i, label %.preheader1053.us.i

iter.check2902:                                   ; preds = %.preheader.i520
  %i.iil = sub i32 %i.gap, %i.ghf                 ; 2 uses
  %i.iim = add nsw i32 %i.iil, 600
  %i.iin = srem i32 %i.iim, 6
  %i.iio = sext i32 %i.iin to i64
  %i.iip = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.iio ; 21 uses
  %i.iiq = mul nsw i32 %i.iil, %i.bo              ; 3 uses
  br i1 %min.iters.check2854, label %vec.epilog.scalar.ph2903.preheader, label %vector.main.loop.iter.check2855

vector.main.loop.iter.check2855:                  ; preds = %iter.check2902
  br i1 %min.iters.check2856, label %vec.epilog.ph2906, label %vector.ph2857

vector.ph2857:                                    ; preds = %vector.main.loop.iter.check2855
  %i.iir = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.09001082.us.i, i64 0
  %i.iis = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.09031081.us.i, i64 0
  %broadcast.splatinsert2859 = insertelement <8 x i32> poison, i32 %i.iiq, i64 0
  %broadcast.splat2860 = shufflevector <8 x i32> %broadcast.splatinsert2859, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body2873

vector.body2873:                                  ; preds = %vector.body2873, %vector.ph2857
  %index2874 = phi i64 [ 0, %vector.ph2857 ], [ %index.next2891, %vector.body2873 ]
  %vec.ind2875 = phi <8 x i64> [ %induction2869, %vector.ph2857 ], [ %vec.ind.next2892, %vector.body2873 ] ; 3 uses
  %vec.phi2876 = phi <8 x i8> [ %i.iir, %vector.ph2857 ], [ %predphi2889, %vector.body2873 ]
  %vec.phi2877 = phi <8 x i8> [ zeroinitializer, %vector.ph2857 ], [ %predphi2890, %vector.body2873 ]
  %vec.phi2878 = phi <8 x float> [ %i.iis, %vector.ph2857 ], [ %predphi2887, %vector.body2873 ] ; 2 uses
  %vec.phi2879 = phi <8 x float> [ zeroinitializer, %vector.ph2857 ], [ %predphi2888, %vector.body2873 ] ; 2 uses
  %vec.ind2880 = phi <8 x i32> [ %induction2872, %vector.ph2857 ], [ %vec.ind.next2893, %vector.body2873 ] ; 4 uses
  %step.add2881 = add nsw <8 x i64> %vec.ind2875, splat (i64 8)
  %step.add2882 = add <8 x i32> %vec.ind2880, splat (i32 8) ; 2 uses
  %i.iit = icmp slt <8 x i64> %vec.ind2875, %broadcast.splat2862
  %i.iiu = icmp slt <8 x i64> %step.add2881, %broadcast.splat2862
  %i.iiv = sub <8 x i32> %broadcast.splat2864, %vec.ind2880
  %i.iiw = sub <8 x i32> %broadcast.splat2864, %step.add2882
  %i.iix = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %vec.ind2880, i1 true)
  %i.iiy = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %step.add2882, i1 true)
  %i.iiz = select <8 x i1> %i.iit, <8 x i32> %i.iix, <8 x i32> %i.iiv ; 2 uses
  %i.ija = select <8 x i1> %i.iiu, <8 x i32> %i.iiy, <8 x i32> %i.iiw ; 2 uses
  %i.ijb = add nsw <8 x i32> %i.iiz, splat (i32 600)
  %i.ijc = add nsw <8 x i32> %i.ija, splat (i32 600)
  %i.ijd = srem <8 x i32> %i.ijb, splat (i32 6)
  %i.ije = srem <8 x i32> %i.ijc, splat (i32 6)
  %i.ijf = sext <8 x i32> %i.ijd to <8 x i64>     ; 8 uses
  %i.ijg = sext <8 x i32> %i.ije to <8 x i64>     ; 8 uses
  %i.ijh = extractelement <8 x i64> %i.ijf, i64 0
  %i.iji = getelementptr inbounds i8, ptr %i.iip, i64 %i.ijh
  %i.ijj = extractelement <8 x i64> %i.ijf, i64 1
  %i.ijk = getelementptr inbounds i8, ptr %i.iip, i64 %i.ijj
  %i.ijl = extractelement <8 x i64> %i.ijf, i64 2
  %i.ijm = getelementptr inbounds i8, ptr %i.iip, i64 %i.ijl
  %i.ijn = extractelement <8 x i64> %i.ijf, i64 3
  %i.ijo = getelementptr inbounds i8, ptr %i.iip, i64 %i.ijn
  %i.ijp = extractelement <8 x i64> %i.ijf, i64 4
  %i.ijq = getelementptr inbounds i8, ptr %i.iip, i64 %i.ijp
  %i.ijr = extractelement <8 x i64> %i.ijf, i64 5
  %i.ijs = getelementptr inbounds i8, ptr %i.iip, i64 %i.ijr
  %i.ijt = extractelement <8 x i64> %i.ijf, i64 6
  %i.iju = getelementptr inbounds i8, ptr %i.iip, i64 %i.ijt
  %i.ijv = extractelement <8 x i64> %i.ijf, i64 7
  %i.ijw = getelementptr inbounds i8, ptr %i.iip, i64 %i.ijv
  %i.ijx = extractelement <8 x i64> %i.ijg, i64 0
  %i.ijy = getelementptr inbounds i8, ptr %i.iip, i64 %i.ijx
  %i.ijz = extractelement <8 x i64> %i.ijg, i64 1
  %i.ika = getelementptr inbounds i8, ptr %i.iip, i64 %i.ijz
  %i.ikb = extractelement <8 x i64> %i.ijg, i64 2
  %i.ikc = getelementptr inbounds i8, ptr %i.iip, i64 %i.ikb
  %i.ikd = extractelement <8 x i64> %i.ijg, i64 3
  %i.ike = getelementptr inbounds i8, ptr %i.iip, i64 %i.ikd
  %i.ikf = extractelement <8 x i64> %i.ijg, i64 4
  %i.ikg = getelementptr inbounds i8, ptr %i.iip, i64 %i.ikf
  %i.ikh = extractelement <8 x i64> %i.ijg, i64 5
  %i.iki = getelementptr inbounds i8, ptr %i.iip, i64 %i.ikh
  %i.ikj = extractelement <8 x i64> %i.ijg, i64 6
  %i.ikk = getelementptr inbounds i8, ptr %i.iip, i64 %i.ikj
  %i.ikl = extractelement <8 x i64> %i.ijg, i64 7
  %i.ikm = getelementptr inbounds i8, ptr %i.iip, i64 %i.ikl
  %i.ikn = load i8, ptr %i.iji, align 1, !tbaa !169
  %i.iko = load i8, ptr %i.ijk, align 1, !tbaa !169
  %i.ikp = load i8, ptr %i.ijm, align 1, !tbaa !169
  %i.ikq = load i8, ptr %i.ijo, align 1, !tbaa !169
  %i.ikr = load i8, ptr %i.ijq, align 1, !tbaa !169
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
  %i.pe = shl nuw nsw i32 %2, 2
  %7 = zext nneg i32 %i.pe to i64                 ; 4 uses
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
  %i.jn = mul nuw nsw i64 %indvars.iv296, %i.k    ; 6 uses
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
  %i.ny = shl nuw nsw i32 %i.nv, 2
  %7 = zext nneg i32 %i.ny to i64
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
