inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@dradfg:bb.a
  br i1 %i.ab, label %.preheader678, label %.lr.ph

.preheader678:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader679
  %i.ac = icmp sgt i32 %1, 1                      ; 3 uses
  %i.ad = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.ac, %i.ad
  br i1 %or.cond, label %.lr.ph683.preheader, label %._crit_edge687.split

.lr.ph683.preheader:                              ; preds = %.preheader678
  %i.ae = sext i32 %0 to i64                      ; 5 uses
  %i.af = add nsw i32 %2, -1
  %xtraiter1585 = and i32 %2, 3                   ; 3 uses
  %i.ag = icmp ult i32 %i.af, 3
  %unroll_iter = and i32 %2, 2147483644
  %lcmp.mod1586.not = icmp eq i32 %xtraiter1585, 0
  %lcmp.mod1587 = icmp ne i32 %xtraiter1585, 0
  br label %.lr.ph683

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  store float %i.ai, ptr %i.aj, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next
  store float %i.al, ptr %i.am, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.1
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.1
  store float %i.ao, ptr %i.ap, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.2
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.2
  store float %i.ar, ptr %i.as, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader678, label %.lr.ph, !llvm.loop !973

.lr.ph683:                                        ; preds = %.lr.ph683.preheader, %._crit_edge
  %indvars.iv899 = phi i32 [ %i.n, %.lr.ph683.preheader ], [ %indvars.iv.next900, %._crit_edge ] ; 2 uses
  %.0550685 = phi i32 [ 1, %.lr.ph683.preheader ], [ %i.bj, %._crit_edge ]
  %i.at = sext i32 %indvars.iv899 to i64          ; 2 uses
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph683.new

.lr.ph683.new:                                    ; preds = %.lr.ph683, %.lr.ph683.new
  %indvars.iv901 = phi i64 [ %indvars.iv.next902.3, %.lr.ph683.new ], [ %i.at, %.lr.ph683 ] ; 3 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph683.new ], [ 0, %.lr.ph683 ]
  %i.au = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv901
  %i.av = load float, ptr %i.au, align 4
  %i.aw = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv901
  store float %i.av, ptr %i.aw, align 4
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, %i.ae ; 3 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next902
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next902
  store float %i.ay, ptr %i.az, align 4
  %indvars.iv.next902.1 = add nsw i64 %indvars.iv.next902, %i.ae ; 3 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next902.1
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next902.1
  store float %i.bb, ptr %i.bc, align 4
  %indvars.iv.next902.2 = add nsw i64 %indvars.iv.next902.1, %i.ae ; 3 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next902.2
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next902.2
  store float %i.be, ptr %i.bf, align 4
  %indvars.iv.next902.3 = add nsw i64 %indvars.iv.next902.2, %i.ae ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph683.new, !llvm.loop !974

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph683.new
  br i1 %lcmp.mod1586.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph683
  %indvars.iv901.epil.init = phi i64 [ %i.at, %.lr.ph683 ], [ %indvars.iv.next902.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1587)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv901.epil = phi i64 [ %indvars.iv901.epil.init, %.epil.preheader ], [ %indvars.iv.next902.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv901.epil
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv901.epil
  store float %i.bh, ptr %i.bi, align 4
  %indvars.iv.next902.epil = add nsw i64 %indvars.iv901.epil, %i.ae
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1585
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !975

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.bj = add nuw nsw i32 %.0550685, 1            ; 2 uses
  %indvars.iv.next900 = add i32 %indvars.iv899, %i.n
  %exitcond905.not = icmp eq i32 %i.bj, %1
  br i1 %exitcond905.not, label %._crit_edge687.split, label %.lr.ph683, !llvm.loop !976

._crit_edge687.split:                             ; preds = %._crit_edge, %.preheader678
  %i.bk = icmp sgt i32 %i.m, %2
  br i1 %i.bk, label %.preheader674, label %.preheader676

.preheader676:                                    ; preds = %._crit_edge687.split
  br i1 %i.ac, label %.lr.ph702, label %.loopexit675

.lr.ph702:                                        ; preds = %.preheader676
  %i.bl = icmp slt i32 %0, 3
  %i.bm = icmp slt i32 %2, 1
  %brmerge = or i1 %i.bl, %i.bm
  br i1 %brmerge, label %.loopexit675, label %.lr.ph697.preheader

.lr.ph697.preheader:                              ; preds = %.lr.ph702
  %i.bn = add i32 %i.n, 2
  %i.bo = zext nneg i32 %0 to i64
  br label %.lr.ph697

.preheader674:                                    ; preds = %._crit_edge687.split
  br i1 %i.ac, label %.lr.ph718, label %.loopexit675

.lr.ph718:                                        ; preds = %.preheader674
  %i.bp = icmp slt i32 %2, 1
  %i.bq = icmp slt i32 %0, 3
  %brmerge873 = or i1 %i.bp, %i.bq
  br i1 %brmerge873, label %.loopexit675, label %.lr.ph713.preheader

.lr.ph713.preheader:                              ; preds = %.lr.ph718
  %scevgep = getelementptr i8, ptr %7, i64 4
  %i.br = add nsw i32 %0, -3
  %i.bs = lshr i32 %i.br, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 12               ; 3 uses
  %scevgep1222 = getelementptr i8, ptr %7, i64 %i.bv
  %scevgep1224 = getelementptr i8, ptr %9, i64 4
  %scevgep1226 = getelementptr i8, ptr %9, i64 %i.bv
  %scevgep1228 = getelementptr i8, ptr %5, i64 4
  %scevgep1230 = getelementptr i8, ptr %5, i64 %i.bv
  %i.bw = add nsw i32 %0, -3                      ; 2 uses
  %i.bx = lshr i32 %i.bw, 1
  %narrow = add nuw i32 %i.bx, 1
  %i.by = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check1236 = icmp ult i32 %i.bw, 6
  %n.vec1239 = and i64 %i.by, 4294967292          ; 4 uses
  %i.bz = shl nuw nsw i64 %n.vec1239, 1           ; 2 uses
  %i.ca = trunc nuw i64 %n.vec1239 to i32
  %i.cb = shl i32 %i.ca, 1
  %i.cc = or disjoint i32 %i.cb, 2
  %cmp.n1254 = icmp eq i64 %n.vec1239, %i.by
  br label %.lr.ph713

.lr.ph713:                                        ; preds = %.lr.ph713.preheader, %._crit_edge714
  %indvars.iv924 = phi i32 [ %indvars.iv.next925, %._crit_edge714 ], [ %i.n, %.lr.ph713.preheader ] ; 2 uses
  %indvars.iv920 = phi i32 [ %indvars.iv.next921, %._crit_edge714 ], [ -1, %.lr.ph713.preheader ] ; 3 uses
  %.1551717 = phi i32 [ %i.dt, %._crit_edge714 ], [ 1, %.lr.ph713.preheader ]
  %i.cd = sext i32 %indvars.iv920 to i64
  %i.ce = shl nsw i64 %i.cd, 2                    ; 2 uses
  %scevgep1225 = getelementptr i8, ptr %scevgep1224, i64 %i.ce
  %scevgep1227 = getelementptr i8, ptr %scevgep1226, i64 %i.ce
  %i.cf = sext i32 %indvars.iv920 to i64          ; 4 uses
  %i.cg = add nsw i64 %i.bz, %i.cf
  %invariant.gep1614 = getelementptr [4 x i8], ptr %9, i64 %i.cf
  br label %.lr.ph708

.lr.ph708:                                        ; preds = %.lr.ph713, %._crit_edge709
  %indvars.iv926 = phi i32 [ %indvars.iv924, %.lr.ph713 ], [ %indvars.iv.next927, %._crit_edge709 ] ; 3 uses
  %.1559711 = phi i32 [ 0, %.lr.ph713 ], [ %i.ds, %._crit_edge709 ]
  %i.ch = sext i32 %indvars.iv926 to i64          ; 4 uses
  br i1 %min.iters.check1236, label %scalar.ph1235.preheader, label %vector.memcheck1220

vector.memcheck1220:                              ; preds = %.lr.ph708
  %i.ci = sext i32 %indvars.iv926 to i64
  %i.cj = shl nsw i64 %i.ci, 2                    ; 4 uses
  %scevgep1231 = getelementptr i8, ptr %scevgep1230, i64 %i.cj
  %scevgep1229 = getelementptr i8, ptr %scevgep1228, i64 %i.cj
  %scevgep1223 = getelementptr i8, ptr %scevgep1222, i64 %i.cj ; 2 uses
  %scevgep1221 = getelementptr i8, ptr %scevgep, i64 %i.cj ; 2 uses
  %bound0 = icmp ult ptr %scevgep1221, %scevgep1227
  %bound1 = icmp ult ptr %scevgep1225, %scevgep1223
  %found.conflict = and i1 %bound0, %bound1
  %bound01232 = icmp ult ptr %scevgep1221, %scevgep1231
  %bound11233 = icmp ult ptr %scevgep1229, %scevgep1223
  %found.conflict1234 = and i1 %bound01232, %bound11233
  %conflict.rdx = or i1 %found.conflict, %found.conflict1234
  br i1 %conflict.rdx, label %scalar.ph1235.preheader, label %vector.ph1237

vector.ph1237:                                    ; preds = %vector.memcheck1220
  %i.ck = add nsw i64 %i.bz, %i.ch
  %invariant.op = add i64 %i.ch, 1
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1237
  %index1241 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1252, %vector.body1240 ] ; 2 uses
  %i.cl = shl i64 %index1241, 1                   ; 2 uses
  %gep1615 = getelementptr [4 x i8], ptr %invariant.gep1614, i64 %i.cl
  %i.cm = getelementptr i8, ptr %gep1615, i64 4   ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.cm, align 4, !alias.scope !977 ; 2 uses
  %.reass = add i64 %i.cl, %invariant.op          ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass ; 2 uses
  %wide.vec1243 = load <8 x float>, ptr %i.cn, align 4, !alias.scope !980 ; 2 uses
  %10 = fmul <8 x float> %wide.vec, %wide.vec1243
  %11 = shufflevector <8 x float> %10, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %12 = fmul <8 x float> %wide.vec, %wide.vec1243
  %13 = shufflevector <8 x float> %12, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.co = fadd <4 x float> %11, %13
  %i.cp = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass
  %wide.vec1246 = load <8 x float>, ptr %i.cm, align 4, !alias.scope !977 ; 2 uses
  %strided.vec1247 = shufflevector <8 x float> %wide.vec1246, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1248 = shufflevector <8 x float> %wide.vec1246, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1249 = load <8 x float>, ptr %i.cn, align 4, !alias.scope !980 ; 2 uses
  %strided.vec1250 = shufflevector <8 x float> %wide.vec1249, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1251 = shufflevector <8 x float> %wide.vec1249, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cq = fmul <4 x float> %strided.vec1247, %strided.vec1251
  %i.cr = fmul <4 x float> %strided.vec1248, %strided.vec1250
  %i.cs = fsub <4 x float> %i.cq, %i.cr
  %interleaved.vec = shufflevector <4 x float> %i.co, <4 x float> %i.cs, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.cp, align 4, !alias.scope !982, !noalias !984
  %index.next1252 = add nuw i64 %index1241, 4     ; 2 uses
  %i.ct = icmp eq i64 %index.next1252, %n.vec1239
  br i1 %i.ct, label %middle.block1253, label %vector.body1240, !llvm.loop !985

middle.block1253:                                 ; preds = %vector.body1240
  br i1 %cmp.n1254, label %._crit_edge709, label %scalar.ph1235.preheader

scalar.ph1235.preheader:                          ; preds = %vector.memcheck1220, %.lr.ph708, %middle.block1253
  %indvars.iv928.ph = phi i64 [ %i.ch, %vector.memcheck1220 ], [ %i.ch, %.lr.ph708 ], [ %i.ck, %middle.block1253 ]
  %indvars.iv922.ph = phi i64 [ %i.cf, %vector.memcheck1220 ], [ %i.cf, %.lr.ph708 ], [ %i.cg, %middle.block1253 ]
  %.0548705.ph = phi i32 [ 2, %vector.memcheck1220 ], [ 2, %.lr.ph708 ], [ %i.cc, %middle.block1253 ]
  br label %scalar.ph1235

scalar.ph1235:                                    ; preds = %scalar.ph1235.preheader, %scalar.ph1235
  %indvars.iv928 = phi i64 [ %indvars.iv.next929, %scalar.ph1235 ], [ %indvars.iv928.ph, %scalar.ph1235.preheader ] ; 2 uses
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %scalar.ph1235 ], [ %indvars.iv922.ph, %scalar.ph1235.preheader ] ; 2 uses
  %.0548705 = phi i32 [ %i.dq, %scalar.ph1235 ], [ %.0548705.ph, %scalar.ph1235.preheader ]
  %indvars.iv.next923 = add nsw i64 %indvars.iv922, 2 ; 2 uses
  %indvars.iv.next929 = add nsw i64 %indvars.iv928, 2 ; 3 uses
  %i.cu = getelementptr [4 x i8], ptr %9, i64 %indvars.iv922
  %i.cv = getelementptr i8, ptr %i.cu, i64 4      ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = add nsw i64 %indvars.iv928, 1           ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cx ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4
  %i.da = fmul float %i.cw, %i.cz
  %i.db = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next923 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next929 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4
  %i.df = fmul float %i.dc, %i.de
  %i.dg = fadd float %i.da, %i.df
  %i.dh = getelementptr inbounds [4 x i8], ptr %7, i64 %i.cx
  store float %i.dg, ptr %i.dh, align 4
  %i.di = load float, ptr %i.cv, align 4
  %i.dj = load float, ptr %i.dd, align 4
  %i.dk = fmul float %i.di, %i.dj
  %i.dl = load float, ptr %i.db, align 4
  %i.dm = load float, ptr %i.cy, align 4
  %i.dn = fmul float %i.dl, %i.dm
  %i.do = fsub float %i.dk, %i.dn
  %i.dp = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next929
  store float %i.do, ptr %i.dp, align 4
  %i.dq = add nuw nsw i32 %.0548705, 2            ; 2 uses
  %i.dr = icmp slt i32 %i.dq, %0
  br i1 %i.dr, label %scalar.ph1235, label %._crit_edge709, !llvm.loop !986

._crit_edge709:                                   ; preds = %scalar.ph1235, %middle.block1253
  %i.ds = add nuw nsw i32 %.1559711, 1            ; 2 uses
  %indvars.iv.next927 = add i32 %indvars.iv926, %0
  %exitcond933.not = icmp eq i32 %i.ds, %2
  br i1 %exitcond933.not, label %._crit_edge714, label %.lr.ph708, !llvm.loop !987

._crit_edge714:                                   ; preds = %._crit_edge709
  %i.dt = add nuw nsw i32 %.1551717, 1            ; 2 uses
  %indvars.iv.next921 = add i32 %indvars.iv920, %0
  %indvars.iv.next925 = add i32 %indvars.iv924, %i.n
  %exitcond934.not = icmp eq i32 %i.dt, %1
  br i1 %exitcond934.not, label %.loopexit675, label %.lr.ph713, !llvm.loop !988

.lr.ph697:                                        ; preds = %.lr.ph697.preheader, %._crit_edge698
  %indvars.iv914 = phi i32 [ -1, %.lr.ph697.preheader ], [ %indvars.iv.next915, %._crit_edge698 ] ; 2 uses
  %indvars.iv906 = phi i32 [ %i.bn, %.lr.ph697.preheader ], [ %indvars.iv.next907, %._crit_edge698 ] ; 2 uses
  %.2552701 = phi i32 [ 1, %.lr.ph697.preheader ], [ %i.ev, %._crit_edge698 ]
  %i.du = sext i32 %indvars.iv914 to i64
  br label %.lr.ph691

.lr.ph691:                                        ; preds = %.lr.ph697, %._crit_edge692
  %indvars.iv916 = phi i64 [ %i.du, %.lr.ph697 ], [ %indvars.iv.next917, %._crit_edge692 ] ; 2 uses
  %indvars.iv908 = phi i32 [ %indvars.iv906, %.lr.ph697 ], [ %indvars.iv.next909, %._crit_edge692 ] ; 2 uses
  %.1549694 = phi i32 [ 2, %.lr.ph697 ], [ %i.et, %._crit_edge692 ]
  %i.dv = sext i32 %indvars.iv908 to i64
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, 2 ; 2 uses
  %i.dw = getelementptr [4 x i8], ptr %9, i64 %indvars.iv916
  %i.dx = getelementptr i8, ptr %i.dw, i64 4      ; 2 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next917 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph691, %bb.c
  %indvars.iv910 = phi i64 [ %i.dv, %.lr.ph691 ], [ %indvars.iv.next911, %bb.c ] ; 4 uses
  %.2560689 = phi i32 [ 0, %.lr.ph691 ], [ %i.es, %bb.c ]
  %i.dz = load float, ptr %i.dx, align 4
  %i.ea = add nsw i64 %indvars.iv910, -1          ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ea ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4
  %i.ed = fmul float %i.dz, %i.ec
  %i.ee = load float, ptr %i.dy, align 4
  %i.ef = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv910 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4
  %i.eh = fmul float %i.ee, %i.eg
  %i.ei = fadd float %i.ed, %i.eh
  %i.ej = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ea
  store float %i.ei, ptr %i.ej, align 4
  %i.ek = load float, ptr %i.dx, align 4
  %i.el = load float, ptr %i.ef, align 4
  %i.em = fmul float %i.ek, %i.el
  %i.en = load float, ptr %i.dy, align 4
  %i.eo = load float, ptr %i.eb, align 4
  %i.ep = fmul float %i.en, %i.eo
  %i.eq = fsub float %i.em, %i.ep
  %i.er = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv910
  store float %i.eq, ptr %i.er, align 4
  %indvars.iv.next911 = add nsw i64 %indvars.iv910, %i.bo
  %i.es = add nuw nsw i32 %.2560689, 1            ; 2 uses
  %exitcond913.not = icmp eq i32 %i.es, %2
  br i1 %exitcond913.not, label %._crit_edge692, label %bb.c, !llvm.loop !989

._crit_edge692:                                   ; preds = %bb.c
  %i.et = add nuw nsw i32 %.1549694, 2            ; 2 uses
  %i.eu = icmp slt i32 %i.et, %0
  %indvars.iv.next909 = add i32 %indvars.iv908, 2
  br i1 %i.eu, label %.lr.ph691, label %._crit_edge698, !llvm.loop !990

._crit_edge698:                                   ; preds = %._crit_edge692
  %i.ev = add nuw nsw i32 %.2552701, 1            ; 2 uses
  %indvars.iv.next907 = add i32 %indvars.iv906, %i.n
  %indvars.iv.next915 = add i32 %indvars.iv914, %0
  %exitcond919.not = icmp eq i32 %i.ev, %1
  br i1 %exitcond919.not, label %.loopexit675, label %.lr.ph697, !llvm.loop !991

.loopexit675:                                     ; preds = %._crit_edge698, %._crit_edge714, %.lr.ph718, %.lr.ph702, %.preheader676, %.preheader674
  %i.ew = icmp slt i32 %i.m, %2
  %i.ex = icmp sgt i32 %i.k, 1                    ; 2 uses
  br i1 %i.ew, label %.preheader669, label %.preheader672

.preheader672:                                    ; preds = %.loopexit675
  br i1 %i.ex, label %.lr.ph732, label %.loopexit670

.lr.ph732:                                        ; preds = %.preheader672
  %i.ey = icmp slt i32 %2, 1
  %i.ez = icmp slt i32 %0, 3
  %brmerge876 = or i1 %i.ey, %i.ez
  br i1 %brmerge876, label %.loopexit670, label %.preheader671.lr.ph.preheader

.preheader671.lr.ph.preheader:                    ; preds = %.lr.ph732
  %i.fa = add i32 %1, -1
  %i.fb = mul i32 %i.n, %i.fa
  %i.fc = zext nneg i32 %0 to i64                 ; 3 uses
  %scevgep1259 = getelementptr i8, ptr %5, i64 4
  %i.fd = add nsw i32 %2, -1
  %i.fe = zext i32 %i.fd to i64
  %i.ff = mul nuw nsw i64 %i.fc, %i.fe
  %i.fg = shl i64 %i.ff, 2
  %i.fh = add nsw i32 %0, -3
  %i.fi = lshr i32 %i.fh, 1
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = add i64 %i.fg, %i.fk                    ; 2 uses
  %i.fm = add i64 %i.fl, 8                        ; 2 uses
  %scevgep1261 = getelementptr i8, ptr %5, i64 %i.fm
  %scevgep1263 = getelementptr i8, ptr %5, i64 4
  %scevgep1265 = getelementptr i8, ptr %5, i64 %i.fm
  %scevgep1267 = getelementptr i8, ptr %5, i64 8
  %i.fn = add i64 %i.fl, 12                       ; 4 uses
  %scevgep1269 = getelementptr i8, ptr %5, i64 %i.fn
  %scevgep1271 = getelementptr i8, ptr %5, i64 8
  %scevgep1273 = getelementptr i8, ptr %5, i64 %i.fn
  %scevgep1275 = getelementptr i8, ptr %7, i64 4
  %scevgep1277 = getelementptr i8, ptr %7, i64 %i.fn
  %scevgep1279 = getelementptr i8, ptr %7, i64 4
  %scevgep1281 = getelementptr i8, ptr %7, i64 %i.fn
  %i.fo = add nsw i32 %0, -3                      ; 2 uses
  %i.fp = lshr i32 %i.fo, 1
  %narrow1569 = add nuw i32 %i.fp, 1
  %i.fq = zext i32 %narrow1569 to i64             ; 2 uses
  %min.iters.check1339 = icmp ult i32 %i.fo, 22
  %n.vec1342 = and i64 %i.fq, 4294967292          ; 4 uses
  %i.fr = shl nuw nsw i64 %n.vec1342, 1           ; 2 uses
  %i.fs = trunc nuw i64 %n.vec1342 to i32
  %i.ft = shl i32 %i.fs, 1
  %i.fu = or disjoint i32 %i.ft, 2
  %cmp.n1361 = icmp eq i64 %n.vec1342, %i.fq
  br label %.preheader671.lr.ph

.preheader669:                                    ; preds = %.loopexit675
  br i1 %i.ex, label %.lr.ph749, label %.loopexit670

.lr.ph749:                                        ; preds = %.preheader669
  %i.fv = icmp slt i32 %0, 3
  %i.fw = icmp slt i32 %2, 1
  %brmerge879 = or i1 %i.fv, %i.fw
  br i1 %brmerge879, label %.loopexit670, label %.lr.ph744.preheader

.lr.ph744.preheader:                              ; preds = %.lr.ph749
  %i.fx = add i32 %1, -1
  %i.fy = mul i32 %2, %i.fx
  %i.fz = add i32 %i.fy, -1
  %i.ga = mul i32 %0, %i.fz
  %i.gb = add i32 %i.ga, 2
  %i.gc = zext nneg i32 %0 to i64                 ; 2 uses
  %i.gd = add nsw i32 %2, -1
  %i.ge = mul i32 %0, %i.gd
  %i.gf = add i32 %i.ge, 2
  br label %.lr.ph744

.lr.ph744:                                        ; preds = %.lr.ph744.preheader, %._crit_edge745
  %indvars.iv961 = phi i32 [ %i.gf, %.lr.ph744.preheader ], [ %indvars.iv.next962, %._crit_edge745 ] ; 2 uses
  %indvars.iv955 = phi i32 [ %i.gb, %.lr.ph744.preheader ], [ %indvars.iv.next956, %._crit_edge745 ] ; 2 uses
  %.3553748 = phi i32 [ 1, %.lr.ph744.preheader ], [ %i.hh, %._crit_edge745 ]
  br label %.lr.ph738

.lr.ph738:                                        ; preds = %.lr.ph744, %._crit_edge739
  %indvars.iv963 = phi i32 [ %indvars.iv961, %.lr.ph744 ], [ %indvars.iv.next964, %._crit_edge739 ] ; 2 uses
  %indvars.iv957 = phi i32 [ %indvars.iv955, %.lr.ph744 ], [ %indvars.iv.next958, %._crit_edge739 ] ; 2 uses
  %.2742 = phi i32 [ 2, %.lr.ph744 ], [ %i.hf, %._crit_edge739 ]
  %i.gg = sext i32 %indvars.iv957 to i64
  %i.gh = sext i32 %indvars.iv963 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph738, %bb.d
  %indvars.iv965 = phi i64 [ %i.gh, %.lr.ph738 ], [ %indvars.iv.next966, %bb.d ]
  %indvars.iv959 = phi i64 [ %i.gg, %.lr.ph738 ], [ %indvars.iv.next960, %bb.d ]
  %.3561736 = phi i32 [ 0, %.lr.ph738 ], [ %i.he, %bb.d ]
  %indvars.iv.next966 = add nsw i64 %indvars.iv965, %i.gc ; 4 uses
  %indvars.iv.next960 = add nsw i64 %indvars.iv959, %i.gc ; 4 uses
  %i.gi = add nsw i64 %indvars.iv.next966, -1     ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %7, i64 %i.gi ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4
  %i.gl = add nsw i64 %indvars.iv.next960, -1     ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %7, i64 %i.gl ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4
  %i.go = fadd float %i.gk, %i.gn
  %i.gp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gi
  store float %i.go, ptr %i.gp, align 4
  %i.gq = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next966 ; 2 uses
  %i.gr = load float, ptr %i.gq, align 4
  %i.gs = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next960 ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4
  %i.gu = fsub float %i.gr, %i.gt
  %i.gv = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gl
  store float %i.gu, ptr %i.gv, align 4
  %i.gw = load float, ptr %i.gq, align 4
  %i.gx = load float, ptr %i.gs, align 4
  %i.gy = fadd float %i.gw, %i.gx
  %i.gz = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next966
  store float %i.gy, ptr %i.gz, align 4
  %i.ha = load float, ptr %i.gm, align 4
  %i.hb = load float, ptr %i.gj, align 4
  %i.hc = fsub float %i.ha, %i.hb
  %i.hd = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next960
  store float %i.hc, ptr %i.hd, align 4
  %i.he = add nuw nsw i32 %.3561736, 1            ; 2 uses
  %exitcond970.not = icmp eq i32 %i.he, %2
  br i1 %exitcond970.not, label %._crit_edge739, label %bb.d, !llvm.loop !992

._crit_edge739:                                   ; preds = %bb.d
  %i.hf = add nuw nsw i32 %.2742, 2               ; 2 uses
  %i.hg = icmp slt i32 %i.hf, %0
  %indvars.iv.next958 = add i32 %indvars.iv957, 2
  %indvars.iv.next964 = add i32 %indvars.iv963, 2
  br i1 %i.hg, label %.lr.ph738, label %._crit_edge745, !llvm.loop !993

._crit_edge745:                                   ; preds = %._crit_edge739
  %i.hh = add nuw nsw i32 %.3553748, 1            ; 2 uses
  %indvars.iv.next956 = sub i32 %indvars.iv955, %i.n
  %indvars.iv.next962 = add i32 %indvars.iv961, %i.n
  %exitcond971.not = icmp eq i32 %i.hh, %i.k
  br i1 %exitcond971.not, label %.loopexit670, label %.lr.ph744, !llvm.loop !994

.preheader671.lr.ph:                              ; preds = %.preheader671.lr.ph.preheader, %._crit_edge728
  %indvars.iv941 = phi i32 [ %i.n, %.preheader671.lr.ph.preheader ], [ %indvars.iv.next942, %._crit_edge728 ] ; 3 uses
  %indvars.iv935 = phi i32 [ %i.fb, %.preheader671.lr.ph.preheader ], [ %indvars.iv.next936, %._crit_edge728 ] ; 3 uses
  %.4554731 = phi i32 [ 1, %.preheader671.lr.ph.preheader ], [ %i.kh, %._crit_edge728 ]
  %i.hi = sext i32 %indvars.iv941 to i64
  %i.hj = shl nsw i64 %i.hi, 2                    ; 6 uses
  %scevgep1260 = getelementptr i8, ptr %scevgep1259, i64 %i.hj ; 5 uses
  %scevgep1262 = getelementptr i8, ptr %scevgep1261, i64 %i.hj ; 5 uses
  %i.hk = sext i32 %indvars.iv935 to i64
  %i.hl = shl nsw i64 %i.hk, 2                    ; 6 uses
  %scevgep1264 = getelementptr i8, ptr %scevgep1263, i64 %i.hl ; 5 uses
  %scevgep1266 = getelementptr i8, ptr %scevgep1265, i64 %i.hl ; 5 uses
  %scevgep1268 = getelementptr i8, ptr %scevgep1267, i64 %i.hj ; 5 uses
  %scevgep1270 = getelementptr i8, ptr %scevgep1269, i64 %i.hj ; 5 uses
  %scevgep1272 = getelementptr i8, ptr %scevgep1271, i64 %i.hl ; 5 uses
  %scevgep1274 = getelementptr i8, ptr %scevgep1273, i64 %i.hl ; 5 uses
  %scevgep1276 = getelementptr i8, ptr %scevgep1275, i64 %i.hl ; 3 uses
  %scevgep1278 = getelementptr i8, ptr %scevgep1277, i64 %i.hl ; 3 uses
  %scevgep1280 = getelementptr i8, ptr %scevgep1279, i64 %i.hj ; 4 uses
  %scevgep1282 = getelementptr i8, ptr %scevgep1281, i64 %i.hj ; 4 uses
  %i.hm = sext i32 %indvars.iv935 to i64
  %i.hn = sext i32 %indvars.iv941 to i64
  %i.ho = insertelement <4 x ptr> poison, ptr %scevgep1276, i64 0 ; 2 uses
  %i.hp = insertelement <4 x ptr> %i.ho, ptr %scevgep1260, i64 1
  %i.hq = insertelement <4 x ptr> %i.hp, ptr %scevgep1268, i64 2
  %i.hr = insertelement <4 x ptr> %i.hq, ptr %scevgep1264, i64 3
  %i.hs = insertelement <4 x ptr> poison, ptr %scevgep1262, i64 0
  %i.ht = insertelement <4 x ptr> %i.hs, ptr %scevgep1282, i64 1
  %i.hu = insertelement <4 x ptr> %i.ht, ptr %scevgep1266, i64 2
  %i.hv = insertelement <4 x ptr> %i.hu, ptr %scevgep1274, i64 3
  %i.hw = insertelement <4 x ptr> poison, ptr %scevgep1260, i64 0
  %i.hx = insertelement <4 x ptr> %i.hw, ptr %scevgep1280, i64 1
  %i.hy = insertelement <4 x ptr> %i.hx, ptr %scevgep1264, i64 2
  %i.hz = insertelement <4 x ptr> %i.hy, ptr %scevgep1272, i64 3
  %i.ia = insertelement <4 x ptr> poison, ptr %scevgep1278, i64 0 ; 2 uses
  %i.ib = insertelement <4 x ptr> %i.ia, ptr %scevgep1262, i64 1
  %i.ic = insertelement <4 x ptr> %i.ib, ptr %scevgep1270, i64 2
  %i.id = insertelement <4 x ptr> %i.ic, ptr %scevgep1266, i64 3
  %i.ie = insertelement <4 x ptr> %i.ho, ptr %scevgep1264, i64 1
  %i.if = insertelement <4 x ptr> %i.ie, ptr %scevgep1272, i64 2
  %i.ig = insertelement <4 x ptr> %i.if, ptr %scevgep1268, i64 3
  %i.ih = insertelement <4 x ptr> poison, ptr %scevgep1266, i64 0
  %i.ii = insertelement <4 x ptr> %i.ih, ptr %scevgep1282, i64 1
  %i.ij = insertelement <4 x ptr> %i.ii, ptr %scevgep1270, i64 2
  %i.ik = insertelement <4 x ptr> %i.ij, ptr %scevgep1278, i64 3
  %i.il = insertelement <4 x ptr> poison, ptr %scevgep1264, i64 0
  %i.im = insertelement <4 x ptr> %i.il, ptr %scevgep1280, i64 1
  %i.in = insertelement <4 x ptr> %i.im, ptr %scevgep1268, i64 2
  %i.io = insertelement <4 x ptr> %i.in, ptr %scevgep1276, i64 3
  %i.ip = insertelement <4 x ptr> %i.ia, ptr %scevgep1266, i64 1
  %i.iq = insertelement <4 x ptr> %i.ip, ptr %scevgep1274, i64 2
  %i.ir = insertelement <4 x ptr> %i.iq, ptr %scevgep1270, i64 3
  %bound01283 = icmp ult ptr %scevgep1260, %scevgep1266
  %bound11284 = icmp ult ptr %scevgep1264, %scevgep1262
  %found.conflict1285 = and i1 %bound01283, %bound11284
  %bound01286 = icmp ult ptr %scevgep1260, %scevgep1270
  %bound11287 = icmp ult ptr %scevgep1268, %scevgep1262
  %found.conflict1288 = and i1 %bound01286, %bound11287
  %bound01290 = icmp ult ptr %scevgep1260, %scevgep1274
  %bound11291 = icmp ult ptr %scevgep1272, %scevgep1262
  %found.conflict1292 = and i1 %bound01290, %bound11291
  %i.is = icmp ult <4 x ptr> %i.hz, %i.id
  %i.it = icmp ult <4 x ptr> %i.hr, %i.hv
  %i.iu = and <4 x i1> %i.it, %i.is
  %i.iv = icmp ult <4 x ptr> %i.io, %i.ir
  %i.iw = icmp ult <4 x ptr> %i.ig, %i.ik
  %i.ix = and <4 x i1> %i.iw, %i.iv
  %bound01326 = icmp ult ptr %scevgep1268, %scevgep1282
  %bound11327 = icmp ult ptr %scevgep1280, %scevgep1270
  %found.conflict1328 = and i1 %bound01326, %bound11327
  %bound01330 = icmp ult ptr %scevgep1272, %scevgep1278
  %bound11331 = icmp ult ptr %scevgep1276, %scevgep1274
  %found.conflict1332 = and i1 %bound01330, %bound11331
  %bound01334 = icmp ult ptr %scevgep1272, %scevgep1282
  %bound11335 = icmp ult ptr %scevgep1280, %scevgep1274
  %found.conflict1336 = and i1 %bound01334, %bound11335
  %rdx.op = or <4 x i1> %i.iu, %i.ix
  %i.iy = bitcast <4 x i1> %rdx.op to i4
  %i.iz = icmp ne i4 %i.iy, 0
  %op.rdx = or i1 %i.iz, %found.conflict1285
  %op.rdx1573 = or i1 %found.conflict1288, %found.conflict1292
  %op.rdx1574 = or i1 %found.conflict1328, %found.conflict1332
  %op.rdx1575 = or i1 %op.rdx, %op.rdx1573
  %op.rdx1576 = or i1 %op.rdx1574, %found.conflict1336
  %op.rdx1577 = or i1 %op.rdx1575, %op.rdx1576
  br label %.preheader671

.preheader671:                                    ; preds = %.preheader671.lr.ph, %._crit_edge724
  %indvars.iv943 = phi i64 [ %i.hn, %.preheader671.lr.ph ], [ %indvars.iv.next944, %._crit_edge724 ] ; 4 uses
  %indvars.iv937 = phi i64 [ %i.hm, %.preheader671.lr.ph ], [ %indvars.iv.next938, %._crit_edge724 ] ; 4 uses
  %.4562727 = phi i32 [ 0, %.preheader671.lr.ph ], [ %i.kg, %._crit_edge724 ]
  %brmerge1654 = select i1 %min.iters.check1339, i1 true, i1 %op.rdx1577
  br i1 %brmerge1654, label %scalar.ph1338.preheader, label %vector.ph1340

vector.ph1340:                                    ; preds = %.preheader671
  %i.ja = add i64 %indvars.iv943, %i.fr
  %i.jb = add i64 %indvars.iv937, %i.fr
  %invariant.op1616 = add i64 %indvars.iv943, 1
  %invariant.op1618 = add i64 %indvars.iv937, 1
  br label %vector.body1343

vector.body1343:                                  ; preds = %vector.body1343, %vector.ph1340
  %index1344 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1359, %vector.body1343 ] ; 2 uses
  %i.jc = shl i64 %index1344, 1                   ; 2 uses
  %.reass1617 = add i64 %i.jc, %invariant.op1616  ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1617 ; 2 uses
  %wide.vec1345 = load <8 x float>, ptr %i.jd, align 4, !alias.scope !995 ; 2 uses
  %.reass1619 = add i64 %i.jc, %invariant.op1618  ; 2 uses
  %i.je = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1619
  %wide.vec1348 = load <8 x float>, ptr %i.je, align 4, !alias.scope !998 ; 4 uses
  %14 = fadd <8 x float> %wide.vec1345, %wide.vec1348
  %i.jf = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1617
  %15 = fsub <8 x float> %wide.vec1345, %wide.vec1348
  %i.jg = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1619
  %wide.vec1351.a = load <8 x float>, ptr %i.jd, align 4, !alias.scope !995 ; 2 uses
  %16 = fadd <8 x float> %wide.vec1351.a, %wide.vec1348
  %interleaved.vec1357 = shufflevector <8 x float> %14, <8 x float> %16, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  store <8 x float> %interleaved.vec1357, ptr %i.jf, align 4
  %17 = fsub <8 x float> %wide.vec1348, %wide.vec1351.a
  %interleaved.vec1358 = shufflevector <8 x float> %15, <8 x float> %17, <8 x i32> <i32 1, i32 8, i32 3, i32 10, i32 5, i32 12, i32 7, i32 14>
  store <8 x float> %interleaved.vec1358, ptr %i.jg, align 4
  %index.next1359 = add nuw i64 %index1344, 4     ; 2 uses
  %i.jh = icmp eq i64 %index.next1359, %n.vec1342
  br i1 %i.jh, label %middle.block1360, label %vector.body1343, !llvm.loop !1000

middle.block1360:                                 ; preds = %vector.body1343
  br i1 %cmp.n1361, label %._crit_edge724, label %scalar.ph1338.preheader

scalar.ph1338.preheader:                          ; preds = %.preheader671, %middle.block1360
  %indvars.iv945.ph = phi i64 [ %i.ja, %middle.block1360 ], [ %indvars.iv943, %.preheader671 ]
  %indvars.iv939.ph = phi i64 [ %i.jb, %middle.block1360 ], [ %indvars.iv937, %.preheader671 ]
  %.3722.ph = phi i32 [ %i.fu, %middle.block1360 ], [ 2, %.preheader671 ]
  br label %scalar.ph1338

scalar.ph1338:                                    ; preds = %scalar.ph1338.preheader, %scalar.ph1338
  %indvars.iv945 = phi i64 [ %indvars.iv.next946, %scalar.ph1338 ], [ %indvars.iv945.ph, %scalar.ph1338.preheader ] ; 2 uses
  %indvars.iv939 = phi i64 [ %indvars.iv.next940, %scalar.ph1338 ], [ %indvars.iv939.ph, %scalar.ph1338.preheader ] ; 2 uses
  %.3722 = phi i32 [ %i.ke, %scalar.ph1338 ], [ %.3722.ph, %scalar.ph1338.preheader ]
  %indvars.iv.next946 = add nuw nsw i64 %indvars.iv945, 2 ; 3 uses
  %indvars.iv.next940 = add nsw i64 %indvars.iv939, 2 ; 3 uses
  %i.ji = add nuw nsw i64 %indvars.iv945, 1       ; 2 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ji ; 2 uses
  %i.jk = load float, ptr %i.jj, align 4
  %i.jl = add nsw i64 %indvars.iv939, 1           ; 2 uses
  %i.jm = getelementptr inbounds [4 x i8], ptr %7, i64 %i.jl ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4
  %i.jo = fadd float %i.jk, %i.jn
  %i.jp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ji
  store float %i.jo, ptr %i.jp, align 4
  %i.jq = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next946 ; 2 uses
  %i.jr = load float, ptr %i.jq, align 4
  %i.js = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next940 ; 2 uses
  %i.jt = load float, ptr %i.js, align 4
  %i.ju = fsub float %i.jr, %i.jt
  %i.jv = getelementptr inbounds [4 x i8], ptr %5, i64 %i.jl
  store float %i.ju, ptr %i.jv, align 4
  %i.jw = load float, ptr %i.jq, align 4
  %i.jx = load float, ptr %i.js, align 4
  %i.jy = fadd float %i.jw, %i.jx
  %i.jz = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next946
  store float %i.jy, ptr %i.jz, align 4
  %i.ka = load float, ptr %i.jm, align 4
  %i.kb = load float, ptr %i.jj, align 4
  %i.kc = fsub float %i.ka, %i.kb
  %i.kd = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next940
  store float %i.kc, ptr %i.kd, align 4
  %i.ke = add nuw nsw i32 %.3722, 2               ; 2 uses
  %i.kf = icmp slt i32 %i.ke, %0
  br i1 %i.kf, label %scalar.ph1338, label %._crit_edge724, !llvm.loop !1001

._crit_edge724:                                   ; preds = %scalar.ph1338, %middle.block1360
  %indvars.iv.next944 = add i64 %indvars.iv943, %i.fc
  %indvars.iv.next938 = add i64 %indvars.iv937, %i.fc
  %i.kg = add nuw nsw i32 %.4562727, 1            ; 2 uses
  %exitcond953.not = icmp eq i32 %i.kg, %2
  br i1 %exitcond953.not, label %._crit_edge728, label %.preheader671, !llvm.loop !1002

._crit_edge728:                                   ; preds = %._crit_edge724
  %i.kh = add nuw nsw i32 %.4554731, 1            ; 2 uses
  %indvars.iv.next936 = sub i32 %indvars.iv935, %i.n
  %indvars.iv.next942 = add i32 %indvars.iv941, %i.n
  %exitcond954.not = icmp eq i32 %i.kh, %i.k
  br i1 %exitcond954.not, label %.loopexit670, label %.preheader671.lr.ph, !llvm.loop !1003

.loopexit670:                                     ; preds = %._crit_edge728, %._crit_edge745, %.lr.ph749, %.lr.ph732, %.preheader672, %.preheader669, %bb.a
  %i.ki = icmp sgt i32 %3, 0                      ; 3 uses
  br i1 %i.ki, label %.lr.ph753.preheader, label %._crit_edge754

.lr.ph753.preheader:                              ; preds = %.loopexit670
  %wide.trip.count975 = zext nneg i32 %3 to i64   ; 5 uses
  %min.iters.check1368 = icmp ult i32 %3, 8
  %i.kj = sub i64 %i.b, %i.a
  %diff.check1366 = icmp ugt i64 %i.kj, -32
  %or.cond1571 = or i1 %min.iters.check1368, %diff.check1366
  br i1 %or.cond1571, label %.lr.ph753.preheader1581, label %vector.ph1369

vector.ph1369:                                    ; preds = %.lr.ph753.preheader
  %n.vec1371 = and i64 %wide.trip.count975, 2147483640 ; 3 uses
  br label %vector.body1372

vector.body1372:                                  ; preds = %vector.body1372, %vector.ph1369
  %index1373 = phi i64 [ 0, %vector.ph1369 ], [ %index.next1376, %vector.body1372 ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1373 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %wide.load1374 = load <4 x float>, ptr %i.kk, align 4
  %wide.load1375 = load <4 x float>, ptr %i.kl, align 4
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index1373 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store <4 x float> %wide.load1374, ptr %i.km, align 4
  store <4 x float> %wide.load1375, ptr %i.kn, align 4
  %index.next1376 = add nuw i64 %index1373, 8     ; 2 uses
  %i.ko = icmp eq i64 %index.next1376, %n.vec1371
  br i1 %i.ko, label %middle.block1377, label %vector.body1372, !llvm.loop !1004

middle.block1377:                                 ; preds = %vector.body1372
  %cmp.n1378 = icmp eq i64 %n.vec1371, %wide.trip.count975
  br i1 %cmp.n1378, label %._crit_edge754, label %.lr.ph753.preheader1581

.lr.ph753.preheader1581:                          ; preds = %.lr.ph753.preheader, %middle.block1377
  %indvars.iv972.ph = phi i64 [ 0, %.lr.ph753.preheader ], [ %n.vec1371, %middle.block1377 ] ; 3 uses
  %xtraiter1588 = and i64 %wide.trip.count975, 3  ; 2 uses
  %lcmp.mod1589.not = icmp eq i64 %xtraiter1588, 0
  br i1 %lcmp.mod1589.not, label %.lr.ph753.prol.loopexit, label %.lr.ph753.prol

.lr.ph753.prol:                                   ; preds = %.lr.ph753.preheader1581, %.lr.ph753.prol
  %indvars.iv972.prol = phi i64 [ %indvars.iv.next973.prol, %.lr.ph753.prol ], [ %indvars.iv972.ph, %.lr.ph753.preheader1581 ] ; 3 uses
  %prol.iter1590 = phi i64 [ %prol.iter1590.next, %.lr.ph753.prol ], [ 0, %.lr.ph753.preheader1581 ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv972.prol
  %i.kq = load float, ptr %i.kp, align 4
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv972.prol
  store float %i.kq, ptr %i.kr, align 4
  %indvars.iv.next973.prol = add nuw nsw i64 %indvars.iv972.prol, 1 ; 2 uses
  %prol.iter1590.next = add i64 %prol.iter1590, 1 ; 2 uses
  %prol.iter1590.cmp.not = icmp eq i64 %prol.iter1590.next, %xtraiter1588
  br i1 %prol.iter1590.cmp.not, label %.lr.ph753.prol.loopexit, label %.lr.ph753.prol, !llvm.loop !1005

.lr.ph753.prol.loopexit:                          ; preds = %.lr.ph753.prol, %.lr.ph753.preheader1581
  %indvars.iv972.unr = phi i64 [ %indvars.iv972.ph, %.lr.ph753.preheader1581 ], [ %indvars.iv.next973.prol, %.lr.ph753.prol ]
  %i.ks = sub nsw i64 %indvars.iv972.ph, %wide.trip.count975
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %._crit_edge754, label %.lr.ph753

.lr.ph753:                                        ; preds = %.lr.ph753.prol.loopexit, %.lr.ph753
  %indvars.iv972 = phi i64 [ %indvars.iv.next973.3, %.lr.ph753 ], [ %indvars.iv972.unr, %.lr.ph753.prol.loopexit ] ; 6 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv972
  %i.kv = load float, ptr %i.ku, align 4
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv972
  store float %i.kv, ptr %i.kw, align 4
  %indvars.iv.next973 = add nuw nsw i64 %indvars.iv972, 1 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973
  %i.ky = load float, ptr %i.kx, align 4
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973
  store float %i.ky, ptr %i.kz, align 4
  %indvars.iv.next973.1 = add nuw nsw i64 %indvars.iv972, 2 ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973.1
  %i.lb = load float, ptr %i.la, align 4
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973.1
  store float %i.lb, ptr %i.lc, align 4
  %indvars.iv.next973.2 = add nuw nsw i64 %indvars.iv972, 3 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973.2
  %i.le = load float, ptr %i.ld, align 4
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973.2
  store float %i.le, ptr %i.lf, align 4
  %indvars.iv.next973.3 = add nuw nsw i64 %indvars.iv972, 4 ; 2 uses
  %exitcond976.not.3 = icmp eq i64 %indvars.iv.next973.3, %wide.trip.count975
  br i1 %exitcond976.not.3, label %._crit_edge754, label %.lr.ph753, !llvm.loop !1006

._crit_edge754:                                   ; preds = %.lr.ph753.prol.loopexit, %.lr.ph753, %middle.block1377, %.loopexit670
  %i.lg = icmp sgt i32 %i.k, 1                    ; 4 uses
  %i.lh = icmp sgt i32 %2, 0                      ; 2 uses
  %or.cond880 = and i1 %i.lg, %i.lh               ; 2 uses
  br i1 %or.cond880, label %.lr.ph759.preheader, label %._crit_edge766.split

.lr.ph759.preheader:                              ; preds = %._crit_edge754
  %i.li = mul i32 %3, %1                          ; 2 uses
  %i.lj = add nsw i32 %2, -1                      ; 3 uses
  %i.lk = mul i32 %0, %i.lj
  %i.ll = sext i32 %0 to i64                      ; 6 uses
  %i.lm = xor i32 %2, -1
  %i.ln = mul i32 %0, %i.lm
  %i.lo = add i32 %i.li, %i.ln
  %scevgep1383 = getelementptr i8, ptr %5, i64 4
  %i.lp = zext i32 %i.lj to i64
  %i.lq = shl nuw nsw i64 %i.lp, 2
  %i.lr = add nuw nsw i64 %i.lq, 8                ; 4 uses
  %scevgep1385 = getelementptr i8, ptr %5, i64 %i.lr
  %scevgep1387 = getelementptr i8, ptr %5, i64 4
  %i.ls = xor i32 %2, -1
  %i.lt = add i32 %i.li, %i.ls
  %scevgep1389 = getelementptr i8, ptr %5, i64 %i.lr
  %scevgep1391 = getelementptr i8, ptr %7, i64 4
  %scevgep1393 = getelementptr i8, ptr %7, i64 %i.lr
  %scevgep1395 = getelementptr i8, ptr %7, i64 4
  %scevgep1397 = getelementptr i8, ptr %7, i64 %i.lr
  %i.lu = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1419 = icmp ugt i32 %2, 7
  %ident.check1381.not = icmp eq i32 %0, 1
  %or.cond1572 = and i1 %min.iters.check1419, %ident.check1381.not
  %n.vec1422 = and i64 %i.lu, 2147483644          ; 5 uses
  %i.lv = trunc nuw nsw i64 %n.vec1422 to i32
  %cmp.n1431 = icmp eq i64 %n.vec1422, %i.lu
  br label %.lr.ph759

.lr.ph759:                                        ; preds = %.lr.ph759.preheader, %._crit_edge760
  %indvar = phi i32 [ 0, %.lr.ph759.preheader ], [ %indvar.next, %._crit_edge760 ] ; 3 uses
  %indvars.iv981 = phi i32 [ %i.lo, %.lr.ph759.preheader ], [ %indvars.iv.next982, %._crit_edge760 ] ; 2 uses
  %indvars.iv977 = phi i32 [ %i.lk, %.lr.ph759.preheader ], [ %indvars.iv.next978, %._crit_edge760 ] ; 2 uses
  %.5555763 = phi i32 [ 1, %.lr.ph759.preheader ], [ %i.nx, %._crit_edge760 ]
  %i.lw = sext i32 %indvars.iv977 to i64          ; 4 uses
  %i.lx = sext i32 %indvars.iv981 to i64          ; 4 uses
  br i1 %or.cond1572, label %vector.memcheck1382, label %scalar.ph1418.preheader

vector.memcheck1382:                              ; preds = %.lr.ph759
  %i.ly = mul i32 %2, %indvar
  %i.lz = add i32 %i.lj, %i.ly
  %i.ma = sext i32 %i.lz to i64
  %i.mb = shl nsw i64 %i.ma, 2                    ; 4 uses
  %scevgep1398 = getelementptr i8, ptr %scevgep1397, i64 %i.mb ; 2 uses
  %scevgep1396 = getelementptr i8, ptr %scevgep1395, i64 %i.mb ; 2 uses
  %i.mc = mul i32 %2, %indvar
end_hunk_0
begin_hunk_1_@dradbg:bb.a
  store float %i.aeu, ptr %i.aev, align 4
  %indvars.iv.next1123.2 = add nsw i64 %indvars.iv.next1123.1, %i.adx ; 3 uses
  %i.aew = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1123.2
  %i.aex = load float, ptr %i.aew, align 4
  %i.aey = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1123.2
  store float %i.aex, ptr %i.aey, align 4
  %indvars.iv.next1123.3 = add nsw i64 %indvars.iv.next1123.2, %i.adx ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge825.unr-lcssa, label %.lr.ph824.new, !llvm.loop !1253

._crit_edge825.unr-lcssa:                         ; preds = %.lr.ph824.new
  br i1 %lcmp.mod1816.not, label %._crit_edge825, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge825.unr-lcssa, %.lr.ph824
  %indvars.iv1122.epil.init = phi i64 [ %i.aem, %.lr.ph824 ], [ %indvars.iv.next1123.3, %._crit_edge825.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1817)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv1122.epil = phi i64 [ %indvars.iv1122.epil.init, %.epil.preheader ], [ %indvars.iv.next1123.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.aez = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1122.epil
  %i.afa = load float, ptr %i.aez, align 4
  %i.afb = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1122.epil
  store float %i.afa, ptr %i.afb, align 4
  %indvars.iv.next1123.epil = add nsw i64 %indvars.iv1122.epil, %i.adx
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1815
  br i1 %epil.iter.cmp.not, label %._crit_edge825, label %bb.g, !llvm.loop !1254

._crit_edge825:                                   ; preds = %bb.g, %._crit_edge825.unr-lcssa
  %i.afc = add nuw nsw i32 %.8827, 1              ; 2 uses
  %indvars.iv.next1121 = add i32 %indvars.iv1120, %i.d
  %exitcond1126.not = icmp eq i32 %i.afc, %1
  br i1 %exitcond1126.not, label %._crit_edge829.split, label %.lr.ph824, !llvm.loop !1255

._crit_edge829.split:                             ; preds = %._crit_edge825, %.preheader653
  %i.afd = icmp sgt i32 %i.m, %2
  br i1 %i.afd, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge829.split
  br i1 %i.adw, label %.lr.ph845, label %.critedge

.lr.ph845:                                        ; preds = %bb.h
  %i.afe = icmp slt i32 %0, 3
  %i.aff = icmp slt i32 %2, 1
  %brmerge881 = or i1 %i.afe, %i.aff
  br i1 %brmerge881, label %.critedge, label %.lr.ph839.preheader

.lr.ph839.preheader:                              ; preds = %.lr.ph845
  %i.afg = add i32 %i.d, 2
  %i.afh = zext nneg i32 %0 to i64
  br label %.lr.ph839

.lr.ph839:                                        ; preds = %.lr.ph839.preheader, %._crit_edge840
  %indvars.iv1135 = phi i32 [ -1, %.lr.ph839.preheader ], [ %indvars.iv.next1136, %._crit_edge840 ] ; 2 uses
  %indvars.iv1127 = phi i32 [ %i.afg, %.lr.ph839.preheader ], [ %indvars.iv.next1128, %._crit_edge840 ] ; 2 uses
  %.9843 = phi i32 [ 1, %.lr.ph839.preheader ], [ %i.agj, %._crit_edge840 ]
  %i.afi = sext i32 %indvars.iv1135 to i64
  br label %.lr.ph833

.lr.ph833:                                        ; preds = %.lr.ph839, %._crit_edge834
  %indvars.iv1137 = phi i64 [ %i.afi, %.lr.ph839 ], [ %indvars.iv.next1138, %._crit_edge834 ] ; 2 uses
  %indvars.iv1129 = phi i32 [ %indvars.iv1127, %.lr.ph839 ], [ %indvars.iv.next1130, %._crit_edge834 ] ; 2 uses
  %.6836 = phi i32 [ 2, %.lr.ph839 ], [ %i.agh, %._crit_edge834 ]
  %i.afj = sext i32 %indvars.iv1129 to i64
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, 2 ; 2 uses
  %i.afk = getelementptr [4 x i8], ptr %9, i64 %indvars.iv1137
  %i.afl = getelementptr i8, ptr %i.afk, i64 4    ; 2 uses
  %i.afm = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next1138 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph833, %bb.i
  %indvars.iv1131 = phi i64 [ %i.afj, %.lr.ph833 ], [ %indvars.iv.next1132, %bb.i ] ; 4 uses
  %.9552831 = phi i32 [ 0, %.lr.ph833 ], [ %i.agg, %bb.i ]
  %i.afn = load float, ptr %i.afl, align 4
  %i.afo = add nsw i64 %indvars.iv1131, -1        ; 2 uses
  %i.afp = getelementptr inbounds [4 x i8], ptr %7, i64 %i.afo ; 2 uses
  %i.afq = load float, ptr %i.afp, align 4
  %i.afr = fmul float %i.afn, %i.afq
  %i.afs = load float, ptr %i.afm, align 4
  %i.aft = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1131 ; 2 uses
  %i.afu = load float, ptr %i.aft, align 4
  %i.afv = fmul float %i.afs, %i.afu
  %i.afw = fsub float %i.afr, %i.afv
  %i.afx = getelementptr inbounds [4 x i8], ptr %5, i64 %i.afo
  store float %i.afw, ptr %i.afx, align 4
  %i.afy = load float, ptr %i.afl, align 4
  %i.afz = load float, ptr %i.aft, align 4
  %i.aga = fmul float %i.afy, %i.afz
  %i.agb = load float, ptr %i.afm, align 4
  %i.agc = load float, ptr %i.afp, align 4
  %i.agd = fmul float %i.agb, %i.agc
  %i.age = fadd float %i.aga, %i.agd
  %i.agf = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1131
  store float %i.age, ptr %i.agf, align 4
  %indvars.iv.next1132 = add nsw i64 %indvars.iv1131, %i.afh
  %i.agg = add nuw nsw i32 %.9552831, 1           ; 2 uses
  %exitcond1134.not = icmp eq i32 %i.agg, %2
  br i1 %exitcond1134.not, label %._crit_edge834, label %bb.i, !llvm.loop !1256

._crit_edge834:                                   ; preds = %bb.i
  %i.agh = add nuw nsw i32 %.6836, 2              ; 2 uses
  %i.agi = icmp slt i32 %i.agh, %0
  %indvars.iv.next1130 = add i32 %indvars.iv1129, 2
  br i1 %i.agi, label %.lr.ph833, label %._crit_edge840, !llvm.loop !1257

._crit_edge840:                                   ; preds = %._crit_edge834
  %i.agj = add nuw nsw i32 %.9843, 1              ; 2 uses
  %indvars.iv.next1128 = add i32 %indvars.iv1127, %i.d
  %indvars.iv.next1136 = add i32 %indvars.iv1135, %0
  %exitcond1140.not = icmp eq i32 %i.agj, %1
  br i1 %exitcond1140.not, label %.critedge, label %.lr.ph839, !llvm.loop !1258

bb.j:                                             ; preds = %._crit_edge829.split
  br i1 %i.adw, label %.lr.ph859, label %.critedge

.lr.ph859:                                        ; preds = %bb.j
  %i.agk = icmp slt i32 %2, 1
  %i.agl = icmp slt i32 %0, 3
  %brmerge884 = or i1 %i.agk, %i.agl
  br i1 %brmerge884, label %.critedge, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph859
  %i.agm = zext nneg i32 %0 to i64                ; 2 uses
  %scevgep1718 = getelementptr i8, ptr %5, i64 4
  %i.agn = add nsw i32 %2, -1
  %i.ago = zext i32 %i.agn to i64
  %i.agp = mul nuw nsw i64 %i.agm, %i.ago
  %i.agq = shl i64 %i.agp, 2
  %i.agr = add nsw i32 %0, -3
  %i.ags = lshr i32 %i.agr, 1
  %i.agt = zext nneg i32 %i.ags to i64
  %i.agu = shl nuw nsw i64 %i.agt, 3              ; 2 uses
  %i.agv = add i64 %i.agq, %i.agu
  %i.agw = add i64 %i.agv, 12                     ; 2 uses
  %scevgep1720 = getelementptr i8, ptr %5, i64 %i.agw
  %scevgep1722 = getelementptr i8, ptr %9, i64 4
  %i.agx = getelementptr i8, ptr %9, i64 %i.agu
  %scevgep1724 = getelementptr i8, ptr %i.agx, i64 12
  %scevgep1726 = getelementptr i8, ptr %7, i64 4
  %scevgep1728 = getelementptr i8, ptr %7, i64 %i.agw
  %i.agy = add nsw i32 %0, -3                     ; 2 uses
  %i.agz = lshr i32 %i.agy, 1
  %narrow1767 = add nuw i32 %i.agz, 1
  %i.aha = zext i32 %narrow1767 to i64            ; 2 uses
  %min.iters.check1738 = icmp ult i32 %i.agy, 6
  %n.vec1741 = and i64 %i.aha, 4294967292         ; 4 uses
  %i.ahb = shl nuw nsw i64 %n.vec1741, 1          ; 2 uses
  %i.ahc = trunc nuw i64 %n.vec1741 to i32
  %i.ahd = shl i32 %i.ahc, 1
  %i.ahe = or disjoint i32 %i.ahd, 2
  %cmp.n1759 = icmp eq i64 %n.vec1741, %i.aha
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge854
  %indvars.iv1145 = phi i32 [ %i.d, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1146, %._crit_edge854 ] ; 3 uses
  %indvars.iv1141 = phi i32 [ -1, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1142, %._crit_edge854 ] ; 3 uses
  %.10857 = phi i32 [ 1, %.preheader.lr.ph.preheader ], [ %i.aiv, %._crit_edge854 ]
  %i.ahf = sext i32 %indvars.iv1145 to i64
  %i.ahg = shl nsw i64 %i.ahf, 2                  ; 4 uses
  %scevgep1719 = getelementptr i8, ptr %scevgep1718, i64 %i.ahg ; 2 uses
  %scevgep1721 = getelementptr i8, ptr %scevgep1720, i64 %i.ahg ; 2 uses
  %i.ahh = sext i32 %indvars.iv1141 to i64
  %i.ahi = shl nsw i64 %i.ahh, 2                  ; 2 uses
  %scevgep1723 = getelementptr i8, ptr %scevgep1722, i64 %i.ahi
  %scevgep1725 = getelementptr i8, ptr %scevgep1724, i64 %i.ahi
  %scevgep1727 = getelementptr i8, ptr %scevgep1726, i64 %i.ahg
  %scevgep1729 = getelementptr i8, ptr %scevgep1728, i64 %i.ahg
  %i.ahj = sext i32 %indvars.iv1141 to i64        ; 3 uses
  %i.ahk = sext i32 %indvars.iv1145 to i64
  %bound01730 = icmp ult ptr %scevgep1719, %scevgep1725
  %bound11731 = icmp ult ptr %scevgep1723, %scevgep1721
  %found.conflict1732 = and i1 %bound01730, %bound11731
  %bound01733 = icmp ult ptr %scevgep1719, %scevgep1729
  %bound11734 = icmp ult ptr %scevgep1727, %scevgep1721
  %found.conflict1735 = and i1 %bound01733, %bound11734
  %conflict.rdx1736 = or i1 %found.conflict1732, %found.conflict1735
  %i.ahl = add nsw i64 %i.ahb, %i.ahj
  %invariant.gep1866 = getelementptr [4 x i8], ptr %9, i64 %i.ahj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge851
  %indvars.iv1147 = phi i64 [ %i.ahk, %.preheader.lr.ph ], [ %indvars.iv.next1148, %._crit_edge851 ] ; 4 uses
  %.10553853 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aiu, %._crit_edge851 ]
  %brmerge1872 = select i1 %min.iters.check1738, i1 true, i1 %conflict.rdx1736
  br i1 %brmerge1872, label %scalar.ph1737.preheader, label %vector.ph1739

vector.ph1739:                                    ; preds = %.preheader
  %i.ahm = add i64 %indvars.iv1147, %i.ahb
  %invariant.op1868 = add i64 %indvars.iv1147, 1
  br label %vector.body1742

vector.body1742:                                  ; preds = %vector.body1742, %vector.ph1739
  %index1743 = phi i64 [ 0, %vector.ph1739 ], [ %index.next1757, %vector.body1742 ] ; 2 uses
  %i.ahn = shl i64 %index1743, 1                  ; 2 uses
  %gep1867 = getelementptr [4 x i8], ptr %invariant.gep1866, i64 %i.ahn
  %i.aho = getelementptr i8, ptr %gep1867, i64 4  ; 2 uses
  %wide.vec1744 = load <8 x float>, ptr %i.aho, align 4, !alias.scope !1259 ; 2 uses
  %.reass1869 = add i64 %i.ahn, %invariant.op1868 ; 2 uses
  %i.ahp = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1869 ; 2 uses
  %wide.vec1747 = load <8 x float>, ptr %i.ahp, align 4, !alias.scope !1262 ; 2 uses
  %10 = fmul <8 x float> %wide.vec1744, %wide.vec1747
  %11 = shufflevector <8 x float> %10, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %12 = fmul <8 x float> %wide.vec1744, %wide.vec1747
  %13 = shufflevector <8 x float> %12, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ahq = fsub <4 x float> %11, %13
  %i.ahr = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1869
  %wide.vec1750 = load <8 x float>, ptr %i.aho, align 4, !alias.scope !1259 ; 2 uses
  %strided.vec1751 = shufflevector <8 x float> %wide.vec1750, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1752 = shufflevector <8 x float> %wide.vec1750, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1753 = load <8 x float>, ptr %i.ahp, align 4, !alias.scope !1262 ; 2 uses
  %strided.vec1754 = shufflevector <8 x float> %wide.vec1753, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1755 = shufflevector <8 x float> %wide.vec1753, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ahs = fmul <4 x float> %strided.vec1751, %strided.vec1755
  %i.aht = fmul <4 x float> %strided.vec1752, %strided.vec1754
  %i.ahu = fadd <4 x float> %i.ahs, %i.aht
  %interleaved.vec1756 = shufflevector <4 x float> %i.ahq, <4 x float> %i.ahu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1756, ptr %i.ahr, align 4, !alias.scope !1264, !noalias !1266
  %index.next1757 = add nuw i64 %index1743, 4     ; 2 uses
  %i.ahv = icmp eq i64 %index.next1757, %n.vec1741
  br i1 %i.ahv, label %middle.block1758, label %vector.body1742, !llvm.loop !1267

middle.block1758:                                 ; preds = %vector.body1742
  br i1 %cmp.n1759, label %._crit_edge851, label %scalar.ph1737.preheader

scalar.ph1737.preheader:                          ; preds = %.preheader, %middle.block1758
  %indvars.iv1149.ph = phi i64 [ %i.ahm, %middle.block1758 ], [ %indvars.iv1147, %.preheader ]
  %indvars.iv1143.ph = phi i64 [ %i.ahl, %middle.block1758 ], [ %i.ahj, %.preheader ]
  %.7848.ph = phi i32 [ %i.ahe, %middle.block1758 ], [ 2, %.preheader ]
  br label %scalar.ph1737

scalar.ph1737:                                    ; preds = %scalar.ph1737.preheader, %scalar.ph1737
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %scalar.ph1737 ], [ %indvars.iv1149.ph, %scalar.ph1737.preheader ] ; 2 uses
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %scalar.ph1737 ], [ %indvars.iv1143.ph, %scalar.ph1737.preheader ] ; 2 uses
  %.7848 = phi i32 [ %i.ais, %scalar.ph1737 ], [ %.7848.ph, %scalar.ph1737.preheader ]
  %indvars.iv.next1144 = add nsw i64 %indvars.iv1143, 2 ; 2 uses
  %indvars.iv.next1150 = add nuw nsw i64 %indvars.iv1149, 2 ; 3 uses
  %i.ahw = getelementptr [4 x i8], ptr %9, i64 %indvars.iv1143
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 4    ; 2 uses
  %i.ahy = load float, ptr %i.ahx, align 4
  %i.ahz = add nuw nsw i64 %indvars.iv1149, 1     ; 2 uses
  %i.aia = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ahz ; 2 uses
  %i.aib = load float, ptr %i.aia, align 4
  %i.aic = fmul float %i.ahy, %i.aib
  %i.aid = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next1144 ; 2 uses
  %i.aie = load float, ptr %i.aid, align 4
  %i.aif = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1150 ; 2 uses
  %i.aig = load float, ptr %i.aif, align 4
  %i.aih = fmul float %i.aie, %i.aig
  %i.aii = fsub float %i.aic, %i.aih
  %i.aij = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ahz
  store float %i.aii, ptr %i.aij, align 4
  %i.aik = load float, ptr %i.ahx, align 4
  %i.ail = load float, ptr %i.aif, align 4
  %i.aim = fmul float %i.aik, %i.ail
  %i.ain = load float, ptr %i.aid, align 4
  %i.aio = load float, ptr %i.aia, align 4
  %i.aip = fmul float %i.ain, %i.aio
  %i.aiq = fadd float %i.aim, %i.aip
  %i.air = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1150
  store float %i.aiq, ptr %i.air, align 4
  %i.ais = add nuw nsw i32 %.7848, 2              ; 2 uses
  %i.ait = icmp slt i32 %i.ais, %0
  br i1 %i.ait, label %scalar.ph1737, label %._crit_edge851, !llvm.loop !1268

._crit_edge851:                                   ; preds = %scalar.ph1737, %middle.block1758
  %indvars.iv.next1148 = add i64 %indvars.iv1147, %i.agm
  %i.aiu = add nuw nsw i32 %.10553853, 1          ; 2 uses
  %exitcond1155.not = icmp eq i32 %i.aiu, %2
  br i1 %exitcond1155.not, label %._crit_edge854, label %.preheader, !llvm.loop !1269

._crit_edge854:                                   ; preds = %._crit_edge851
  %i.aiv = add nuw nsw i32 %.10857, 1             ; 2 uses
  %indvars.iv.next1142 = add i32 %indvars.iv1141, %0
  %indvars.iv.next1146 = add i32 %indvars.iv1145, %i.d
  %exitcond1156.not = icmp eq i32 %i.aiv, %1
  br i1 %exitcond1156.not, label %.critedge, label %.preheader.lr.ph, !llvm.loop !1270

.critedge:                                        ; preds = %._crit_edge840, %._crit_edge854, %.lr.ph859, %.lr.ph845, %bb.h, %bb.j, %._crit_edge786.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @icomp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load i32, ptr %i.a, align 4
  %i.c = load ptr, ptr %1, align 8
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 %i.b, %i.d
  ret i32 %i.e
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptosi.sat.i8.f64(double) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fptosi.sat.i16.f64(double) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #61

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bitreverse.v2i32(<2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.rint.v4f32(<4 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #30

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
