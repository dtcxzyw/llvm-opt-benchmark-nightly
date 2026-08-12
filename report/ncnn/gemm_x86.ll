inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii:bb.a
  %i.ld = getelementptr inbounds nuw i8, ptr %.0587118.us, i64 16 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.0585119.us, i64 16 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.0583120.us, i64 16 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.0581121.us, i64 16 ; 2 uses
  %i.lh = add nuw nsw i32 %.0579122.us, 4         ; 2 uses
  %i.li = or disjoint i32 %i.lh, 3
  %i.lj = icmp slt i32 %i.li, %4
  br i1 %i.lj, label %.lr.ph124.us, label %.preheader4.us, !llvm.loop !177

.lr.ph137.us:                                     ; preds = %.lr.ph137.us.prol.loopexit, %.lr.ph137.us
  %.16136.us = phi ptr [ %i.md, %.lr.ph137.us ], [ %.16136.us.unr, %.lr.ph137.us.prol.loopexit ] ; 9 uses
  %.1580135.us = phi i32 [ %i.mi, %.lr.ph137.us ], [ %.1580135.us.unr, %.lr.ph137.us.prol.loopexit ]
  %.1582134.us = phi ptr [ %i.mh, %.lr.ph137.us ], [ %.1582134.us.unr, %.lr.ph137.us.prol.loopexit ] ; 3 uses
  %.1584133.us = phi ptr [ %i.mg, %.lr.ph137.us ], [ %.1584133.us.unr, %.lr.ph137.us.prol.loopexit ] ; 3 uses
  %.1586132.us = phi ptr [ %i.mf, %.lr.ph137.us ], [ %.1586132.us.unr, %.lr.ph137.us.prol.loopexit ] ; 3 uses
  %.1588131.us = phi ptr [ %i.me, %.lr.ph137.us ], [ %.1588131.us.unr, %.lr.ph137.us.prol.loopexit ] ; 3 uses
  %i.lk = load float, ptr %.1588131.us, align 4, !tbaa !68
  store float %i.lk, ptr %.16136.us, align 4, !tbaa !68
  %i.ll = load float, ptr %.1586132.us, align 4, !tbaa !68
  %i.lm = getelementptr inbounds nuw i8, ptr %.16136.us, i64 4
  store float %i.ll, ptr %i.lm, align 4, !tbaa !68
  %i.ln = load float, ptr %.1584133.us, align 4, !tbaa !68
  %i.lo = getelementptr inbounds nuw i8, ptr %.16136.us, i64 8
  store float %i.ln, ptr %i.lo, align 4, !tbaa !68
  %i.lp = load float, ptr %.1582134.us, align 4, !tbaa !68
  %i.lq = getelementptr inbounds nuw i8, ptr %.16136.us, i64 12
  store float %i.lp, ptr %i.lq, align 4, !tbaa !68
  %i.lr = getelementptr inbounds nuw i8, ptr %.16136.us, i64 16
  %i.ls = getelementptr inbounds nuw i8, ptr %.1588131.us, i64 4
  %i.lt = getelementptr inbounds nuw i8, ptr %.1586132.us, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %.1584133.us, i64 4
  %i.lv = getelementptr inbounds nuw i8, ptr %.1582134.us, i64 4
  %i.lw = load float, ptr %i.ls, align 4, !tbaa !68
  store float %i.lw, ptr %i.lr, align 4, !tbaa !68
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !68
  %i.ly = getelementptr inbounds nuw i8, ptr %.16136.us, i64 20
  store float %i.lx, ptr %i.ly, align 4, !tbaa !68
  %i.lz = load float, ptr %i.lu, align 4, !tbaa !68
  %i.ma = getelementptr inbounds nuw i8, ptr %.16136.us, i64 24
  store float %i.lz, ptr %i.ma, align 4, !tbaa !68
  %i.mb = load float, ptr %i.lv, align 4, !tbaa !68
  %i.mc = getelementptr inbounds nuw i8, ptr %.16136.us, i64 28
  store float %i.mb, ptr %i.mc, align 4, !tbaa !68
  %i.md = getelementptr inbounds nuw i8, ptr %.16136.us, i64 32 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.1588131.us, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %.1586132.us, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %.1584133.us, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %.1582134.us, i64 8
  %i.mi = add nuw nsw i32 %.1580135.us, 2         ; 2 uses
  %exitcond268.not.1 = icmp eq i32 %i.mi, %4
  br i1 %exitcond268.not.1, label %.loopexit.us, label %.lr.ph137.us, !llvm.loop !178

.preheader4.us:                                   ; preds = %.lr.ph124.us, %.loopexit5.us.thread, %.loopexit5.us
  %.0587.lcssa.us = phi ptr [ %i.ka, %.loopexit5.us ], [ %i.ij, %.loopexit5.us.thread ], [ %i.ld, %.lr.ph124.us ] ; 6 uses
  %.0585.lcssa.us = phi ptr [ %i.ke, %.loopexit5.us ], [ %i.in, %.loopexit5.us.thread ], [ %i.le, %.lr.ph124.us ] ; 6 uses
  %.0583.lcssa.us = phi ptr [ %i.ki, %.loopexit5.us ], [ %i.ir, %.loopexit5.us.thread ], [ %i.lf, %.lr.ph124.us ] ; 6 uses
  %.0581.lcssa.us = phi ptr [ %i.km, %.loopexit5.us ], [ %i.iv, %.loopexit5.us.thread ], [ %i.lg, %.lr.ph124.us ] ; 6 uses
  %.0579.lcssa.us = phi i32 [ 0, %.loopexit5.us ], [ 0, %.loopexit5.us.thread ], [ %i.ia, %.lr.ph124.us ] ; 6 uses
  %.15.lcssa.us = phi ptr [ %.14.us, %.loopexit5.us ], [ %.12140.us, %.loopexit5.us.thread ], [ %i.lc, %.lr.ph124.us ] ; 10 uses
  %i.mj = icmp slt i32 %.0579.lcssa.us, %4
  br i1 %i.mj, label %.lr.ph137.us.preheader, label %.loopexit.us

.lr.ph137.us.preheader:                           ; preds = %.preheader4.us
  %i.mk = xor i32 %.0579.lcssa.us, -1
  %i.ml = add i32 %4, %i.mk                       ; 2 uses
  %i.mm = zext i32 %i.ml to i64
  %i.mn = add nuw nsw i64 %i.mm, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ml, 39
  br i1 %min.iters.check, label %.lr.ph137.us.preheader482, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph137.us.preheader
  %scevgep = getelementptr i8, ptr %.15.lcssa.us, i64 16
  %i.mo = xor i32 %.0579.lcssa.us, -1
  %i.mp = add i32 %4, %i.mo
  %i.mq = zext i32 %i.mp to i64                   ; 2 uses
  %i.mr = shl nuw nsw i64 %i.mq, 4
  %scevgep386 = getelementptr i8, ptr %scevgep, i64 %i.mr ; 4 uses
  %scevgep387 = getelementptr i8, ptr %.0581.lcssa.us, i64 4
  %i.ms = shl nuw nsw i64 %i.mq, 2                ; 4 uses
  %scevgep388 = getelementptr i8, ptr %scevgep387, i64 %i.ms
  %scevgep389 = getelementptr i8, ptr %.0583.lcssa.us, i64 4
  %scevgep390 = getelementptr i8, ptr %scevgep389, i64 %i.ms
  %scevgep391 = getelementptr i8, ptr %.0585.lcssa.us, i64 4
  %scevgep392 = getelementptr i8, ptr %scevgep391, i64 %i.ms
  %scevgep393 = getelementptr i8, ptr %.0587.lcssa.us, i64 4
  %scevgep394 = getelementptr i8, ptr %scevgep393, i64 %i.ms
  %bound0 = icmp ult ptr %.15.lcssa.us, %scevgep388
  %bound1 = icmp ult ptr %.0581.lcssa.us, %scevgep386
  %found.conflict = and i1 %bound0, %bound1
  %bound0395 = icmp ult ptr %.15.lcssa.us, %scevgep390
  %bound1396 = icmp ult ptr %.0583.lcssa.us, %scevgep386
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx = or i1 %found.conflict, %found.conflict397
  %bound0398 = icmp ult ptr %.15.lcssa.us, %scevgep392
  %bound1399 = icmp ult ptr %.0585.lcssa.us, %scevgep386
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx401 = or i1 %conflict.rdx, %found.conflict400
  %bound0402 = icmp ult ptr %.15.lcssa.us, %scevgep394
  %bound1403 = icmp ult ptr %.0587.lcssa.us, %scevgep386
  %found.conflict404 = and i1 %bound0402, %bound1403
  %conflict.rdx405 = or i1 %conflict.rdx401, %found.conflict404
  br i1 %conflict.rdx405, label %.lr.ph137.us.preheader482, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mn, 8589934588              ; 5 uses
  %i.mt = shl nuw nsw i64 %n.vec, 4
  %i.mu = getelementptr i8, ptr %.15.lcssa.us, i64 %i.mt ; 2 uses
  %i.mv = trunc i64 %n.vec to i32
  %i.mw = add i32 %.0579.lcssa.us, %i.mv
  %i.mx = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %i.my = getelementptr i8, ptr %.0581.lcssa.us, i64 %i.mx
  %i.mz = getelementptr i8, ptr %.0583.lcssa.us, i64 %i.mx
  %i.na = getelementptr i8, ptr %.0585.lcssa.us, i64 %i.mx
  %i.nb = getelementptr i8, ptr %.0587.lcssa.us, i64 %i.mx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nc = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.15.lcssa.us, i64 %i.nc
  %i.nd = shl i64 %index, 2                       ; 4 uses
  %next.gep406 = getelementptr i8, ptr %.0581.lcssa.us, i64 %i.nd
  %next.gep407 = getelementptr i8, ptr %.0583.lcssa.us, i64 %i.nd
  %next.gep408 = getelementptr i8, ptr %.0585.lcssa.us, i64 %i.nd
  %next.gep409 = getelementptr i8, ptr %.0587.lcssa.us, i64 %i.nd
  %wide.load = load <4 x float>, ptr %next.gep409, align 4, !tbaa !68, !alias.scope !179
  %wide.load410 = load <4 x float>, ptr %next.gep408, align 4, !tbaa !68, !alias.scope !182
  %wide.load411 = load <4 x float>, ptr %next.gep407, align 4, !tbaa !68, !alias.scope !184
  %wide.load412 = load <4 x float>, ptr %next.gep406, align 4, !tbaa !68, !alias.scope !186
  %i.ne = shufflevector <4 x float> %wide.load, <4 x float> %wide.load410, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nf = shufflevector <4 x float> %wide.load411, <4 x float> %wide.load412, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ne, <8 x float> %i.nf, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !68, !alias.scope !188, !noalias !190
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mn, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph137.us.preheader482

.lr.ph137.us.preheader482:                        ; preds = %vector.memcheck, %.lr.ph137.us.preheader, %middle.block
  %.16136.us.ph = phi ptr [ %.15.lcssa.us, %vector.memcheck ], [ %.15.lcssa.us, %.lr.ph137.us.preheader ], [ %i.mu, %middle.block ] ; 6 uses
  %.1580135.us.ph = phi i32 [ %.0579.lcssa.us, %vector.memcheck ], [ %.0579.lcssa.us, %.lr.ph137.us.preheader ], [ %i.mw, %middle.block ] ; 4 uses
  %.1582134.us.ph = phi ptr [ %.0581.lcssa.us, %vector.memcheck ], [ %.0581.lcssa.us, %.lr.ph137.us.preheader ], [ %i.my, %middle.block ] ; 3 uses
  %.1584133.us.ph = phi ptr [ %.0583.lcssa.us, %vector.memcheck ], [ %.0583.lcssa.us, %.lr.ph137.us.preheader ], [ %i.mz, %middle.block ] ; 3 uses
  %.1586132.us.ph = phi ptr [ %.0585.lcssa.us, %vector.memcheck ], [ %.0585.lcssa.us, %.lr.ph137.us.preheader ], [ %i.na, %middle.block ] ; 3 uses
  %.1588131.us.ph = phi ptr [ %.0587.lcssa.us, %vector.memcheck ], [ %.0587.lcssa.us, %.lr.ph137.us.preheader ], [ %i.nb, %middle.block ] ; 3 uses
  %i.nh = sub i32 %4, %.1580135.us.ph
  %.neg = add i32 %.1580135.us.ph, 1
  %xtraiter541 = and i32 %i.nh, 1
  %lcmp.mod542.not = icmp eq i32 %xtraiter541, 0
  br i1 %lcmp.mod542.not, label %.lr.ph137.us.prol.loopexit, label %.lr.ph137.us.prol

.lr.ph137.us.prol:                                ; preds = %.lr.ph137.us.preheader482
  %i.ni = load float, ptr %.1588131.us.ph, align 4, !tbaa !68
  store float %i.ni, ptr %.16136.us.ph, align 4, !tbaa !68
  %i.nj = load float, ptr %.1586132.us.ph, align 4, !tbaa !68
  %i.nk = getelementptr inbounds nuw i8, ptr %.16136.us.ph, i64 4
  store float %i.nj, ptr %i.nk, align 4, !tbaa !68
  %i.nl = load float, ptr %.1584133.us.ph, align 4, !tbaa !68
  %i.nm = getelementptr inbounds nuw i8, ptr %.16136.us.ph, i64 8
  store float %i.nl, ptr %i.nm, align 4, !tbaa !68
  %i.nn = load float, ptr %.1582134.us.ph, align 4, !tbaa !68
  %i.no = getelementptr inbounds nuw i8, ptr %.16136.us.ph, i64 12
  store float %i.nn, ptr %i.no, align 4, !tbaa !68
  %i.np = getelementptr inbounds nuw i8, ptr %.16136.us.ph, i64 16 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.1588131.us.ph, i64 4
  %i.nr = getelementptr inbounds nuw i8, ptr %.1586132.us.ph, i64 4
  %i.ns = getelementptr inbounds nuw i8, ptr %.1584133.us.ph, i64 4
  %i.nt = getelementptr inbounds nuw i8, ptr %.1582134.us.ph, i64 4
  %i.nu = add nuw nsw i32 %.1580135.us.ph, 1
  br label %.lr.ph137.us.prol.loopexit

.lr.ph137.us.prol.loopexit:                       ; preds = %.lr.ph137.us.prol, %.lr.ph137.us.preheader482
  %.lcssa489.unr = phi ptr [ poison, %.lr.ph137.us.preheader482 ], [ %i.np, %.lr.ph137.us.prol ]
  %.16136.us.unr = phi ptr [ %.16136.us.ph, %.lr.ph137.us.preheader482 ], [ %i.np, %.lr.ph137.us.prol ]
  %.1580135.us.unr = phi i32 [ %.1580135.us.ph, %.lr.ph137.us.preheader482 ], [ %i.nu, %.lr.ph137.us.prol ]
  %.1582134.us.unr = phi ptr [ %.1582134.us.ph, %.lr.ph137.us.preheader482 ], [ %i.nt, %.lr.ph137.us.prol ]
  %.1584133.us.unr = phi ptr [ %.1584133.us.ph, %.lr.ph137.us.preheader482 ], [ %i.ns, %.lr.ph137.us.prol ]
  %.1586132.us.unr = phi ptr [ %.1586132.us.ph, %.lr.ph137.us.preheader482 ], [ %i.nr, %.lr.ph137.us.prol ]
  %.1588131.us.unr = phi ptr [ %.1588131.us.ph, %.lr.ph137.us.preheader482 ], [ %i.nq, %.lr.ph137.us.prol ]
  %i.nv = icmp eq i32 %4, %.neg
  br i1 %i.nv, label %.loopexit.us, label %.lr.ph137.us

.loopexit.us:                                     ; preds = %.lr.ph137.us.prol.loopexit, %.lr.ph137.us, %middle.block, %.preheader4.us
  %.16.lcssa.us = phi ptr [ %.15.lcssa.us, %.preheader4.us ], [ %i.mu, %middle.block ], [ %.lcssa489.unr, %.lr.ph137.us.prol.loopexit ], [ %i.md, %.lr.ph137.us ] ; 2 uses
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 4 ; 3 uses
  %i.nw = icmp slt i64 %indvars.iv.next270, %invariant.op342
  br i1 %i.nw, label %.lr.ph141.split.us, label %.preheader3.loopexit, !llvm.loop !192

.lr.ph141.split:                                  ; preds = %.lr.ph141
  br i1 %i.ht, label %.lr.ph141.split.split.us, label %.lr.ph141.split.split.preheader

.lr.ph141.split.split.preheader:                  ; preds = %.lr.ph141.split
  %i.nx = add nuw i32 %.1553.lcssa, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.nx)
  %i.ny = add i32 %smax, -4
  %i.nz = sub i32 %i.ny, %.1553.lcssa
  %i.oa = and i32 %i.nz, -4
  %i.ob = add i32 %.1553.lcssa, %i.oa
  %i.oc = add i32 %i.ob, 4
  br label %.preheader3

.lr.ph141.split.split.us:                         ; preds = %.lr.ph141.split
  br i1 %i.hw, label %.lr.ph116.us153.us.preheader, label %.loopexit5.us151.preheader

.loopexit5.us151.preheader:                       ; preds = %.lr.ph141.split.split.us
  %i.od = add nuw i32 %.1553.lcssa, 7
  %smax262 = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.od)
  %i.oe = add i32 %smax262, -4
  %i.of = sub i32 %i.oe, %.1553.lcssa
  %i.og = and i32 %i.of, -4
  %i.oh = add i32 %.1553.lcssa, %i.og
  %i.oi = add i32 %i.oh, 4
  br label %.preheader3

.lr.ph116.us153.us.preheader:                     ; preds = %.lr.ph141.split.split.us
  %i.oj = sext i32 %.1553.lcssa to i64
  %i.ok = sext i32 %1 to i64
  %i.ol = sext i32 %2 to i64
  %invariant.op341 = add nsw i64 %i.ol, -3
  %i.om = add nsw i32 %4, -1
  %xtraiter527 = and i32 %4, 7                    ; 3 uses
  %i.on = icmp ult i32 %i.om, 7
  %unroll_iter532 = and i32 %4, 2147483640
  %lcmp.mod529.not = icmp eq i32 %xtraiter527, 0
  %lcmp.mod531 = icmp ne i32 %xtraiter527, 0
  br label %.lr.ph116.us153.us

.lr.ph116.us153.us:                               ; preds = %.lr.ph116.us153.us.preheader, %..loopexit5_crit_edge.us154.us
  %indvars.iv264 = phi i64 [ %i.oj, %.lr.ph116.us153.us.preheader ], [ %indvars.iv.next265, %..loopexit5_crit_edge.us154.us ] ; 2 uses
  %.12140.us145.us = phi ptr [ %.6.lcssa, %.lr.ph116.us153.us.preheader ], [ %.lcssa490, %..loopexit5_crit_edge.us154.us ] ; 2 uses
  %i.oo = load ptr, ptr %0, align 8, !tbaa !18
  %i.op = add nsw i64 %indvars.iv264, %i.ok
  %i.oq = mul i64 %i.k, %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.oq
  %i.os = getelementptr inbounds [4 x i8], ptr %i.or, i64 %i.hv ; 2 uses
  br i1 %i.on, label %.epil.preheader, label %.lr.ph116.us153.us.new

.lr.ph116.us153.us.new:                           ; preds = %.lr.ph116.us153.us, %.lr.ph116.us153.us.new
  %.13115.us147.us = phi ptr [ %i.pp, %.lr.ph116.us153.us.new ], [ %.12140.us145.us, %.lr.ph116.us153.us ] ; 9 uses
  %.0590113.us149.us = phi ptr [ %i.pq, %.lr.ph116.us153.us.new ], [ %i.os, %.lr.ph116.us153.us ] ; 9 uses
  %niter533 = phi i32 [ %niter533.next.7, %.lr.ph116.us153.us.new ], [ 0, %.lr.ph116.us153.us ]
  %i.ot = load <4 x float>, ptr %.0590113.us149.us, align 16, !tbaa !113
  store <4 x float> %i.ot, ptr %.13115.us147.us, align 16, !tbaa !113
  %i.ou = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %.0590113.us149.us, i64 16
  %i.ow = load <4 x float>, ptr %i.ov, align 16, !tbaa !113
  store <4 x float> %i.ow, ptr %i.ou, align 16, !tbaa !113
  %i.ox = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 32
  %i.oy = getelementptr inbounds nuw i8, ptr %.0590113.us149.us, i64 32
  %i.oz = load <4 x float>, ptr %i.oy, align 16, !tbaa !113
  store <4 x float> %i.oz, ptr %i.ox, align 16, !tbaa !113
  %i.pa = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 48
  %i.pb = getelementptr inbounds nuw i8, ptr %.0590113.us149.us, i64 48
  %i.pc = load <4 x float>, ptr %i.pb, align 16, !tbaa !113
  store <4 x float> %i.pc, ptr %i.pa, align 16, !tbaa !113
  %i.pd = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 64
  %i.pe = getelementptr inbounds nuw i8, ptr %.0590113.us149.us, i64 64
  %i.pf = load <4 x float>, ptr %i.pe, align 16, !tbaa !113
  store <4 x float> %i.pf, ptr %i.pd, align 16, !tbaa !113
  %i.pg = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 80
  %i.ph = getelementptr inbounds nuw i8, ptr %.0590113.us149.us, i64 80
  %i.pi = load <4 x float>, ptr %i.ph, align 16, !tbaa !113
  store <4 x float> %i.pi, ptr %i.pg, align 16, !tbaa !113
  %i.pj = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 96
  %i.pk = getelementptr inbounds nuw i8, ptr %.0590113.us149.us, i64 96
  %i.pl = load <4 x float>, ptr %i.pk, align 16, !tbaa !113
  store <4 x float> %i.pl, ptr %i.pj, align 16, !tbaa !113
  %i.pm = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 112
  %i.pn = getelementptr inbounds nuw i8, ptr %.0590113.us149.us, i64 112
  %i.po = load <4 x float>, ptr %i.pn, align 16, !tbaa !113
  store <4 x float> %i.po, ptr %i.pm, align 16, !tbaa !113
  %i.pp = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 128 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.0590113.us149.us, i64 128 ; 2 uses
  %niter533.next.7 = add nuw nsw i32 %niter533, 8 ; 2 uses
  %niter533.ncmp.7 = icmp eq i32 %niter533.next.7, %unroll_iter532
  br i1 %niter533.ncmp.7, label %..loopexit5_crit_edge.us154.us.unr-lcssa, label %.lr.ph116.us153.us.new, !llvm.loop !175

..loopexit5_crit_edge.us154.us.unr-lcssa:         ; preds = %.lr.ph116.us153.us.new
  br i1 %lcmp.mod529.not, label %..loopexit5_crit_edge.us154.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit5_crit_edge.us154.us.unr-lcssa, %.lr.ph116.us153.us
  %.13115.us147.us.epil.init = phi ptr [ %.12140.us145.us, %.lr.ph116.us153.us ], [ %i.pp, %..loopexit5_crit_edge.us154.us.unr-lcssa ]
  %.0590113.us149.us.epil.init = phi ptr [ %i.os, %.lr.ph116.us153.us ], [ %i.pq, %..loopexit5_crit_edge.us154.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod531)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.13115.us147.us.epil = phi ptr [ %.13115.us147.us.epil.init, %.epil.preheader ], [ %i.ps, %bb.f ] ; 2 uses
  %.0590113.us149.us.epil = phi ptr [ %.0590113.us149.us.epil.init, %.epil.preheader ], [ %i.pt, %bb.f ] ; 2 uses
  %epil.iter528 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter528.next, %bb.f ]
  %i.pr = load <4 x float>, ptr %.0590113.us149.us.epil, align 16, !tbaa !113
  store <4 x float> %i.pr, ptr %.13115.us147.us.epil, align 16, !tbaa !113
  %i.ps = getelementptr inbounds nuw i8, ptr %.13115.us147.us.epil, i64 16 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.0590113.us149.us.epil, i64 16
  %epil.iter528.next = add i32 %epil.iter528, 1   ; 2 uses
  %epil.iter528.cmp.not = icmp eq i32 %epil.iter528.next, %xtraiter527
  br i1 %epil.iter528.cmp.not, label %..loopexit5_crit_edge.us154.us, label %bb.f, !llvm.loop !193

..loopexit5_crit_edge.us154.us:                   ; preds = %bb.f, %..loopexit5_crit_edge.us154.us.unr-lcssa
  %.lcssa490 = phi ptr [ %i.pp, %..loopexit5_crit_edge.us154.us.unr-lcssa ], [ %i.ps, %bb.f ] ; 2 uses
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 4 ; 3 uses
  %i.pu = icmp slt i64 %indvars.iv.next265, %invariant.op341
  br i1 %i.pu, label %.lr.ph116.us153.us, label %.preheader3.loopexit200, !llvm.loop !192

bb.g:                                             ; preds = %.lr.ph110, %.loopexit8
  %indvars.iv259 = phi i64 [ %i.ae, %.lr.ph110 ], [ %indvars.iv.next260, %.loopexit8 ] ; 4 uses
  %.6109 = phi ptr [ %.0550.lcssa, %.lr.ph110 ], [ %.11, %.loopexit8 ] ; 6 uses
  switch i32 %i.b, label %.loopexit8 [
    i32 4, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %i.aa, label %.lr.ph73.preheader, label %.loopexit8

.lr.ph73.preheader:                               ; preds = %bb.h
  %i.pv = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.pw = add nsw i64 %indvars.iv259, %i.af       ; 2 uses
  %i.px = add nsw i64 %i.pw, 4
  %i.py = mul i64 %i.k, %i.px
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %i.py
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.pz, i64 %i.z ; 2 uses
  %i.qb = mul i64 %i.k, %i.pw
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %i.qb
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.z ; 2 uses
  br i1 %i.ai, label %.lr.ph73.epil.preheader, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %.lr.ph73
  %.772 = phi ptr [ %i.qz, %.lr.ph73 ], [ %.6109, %.lr.ph73.preheader ] ; 9 uses
  %.060571 = phi ptr [ %i.ra, %.lr.ph73 ], [ %i.qd, %.lr.ph73.preheader ] ; 5 uses
  %.060670 = phi ptr [ %i.rb, %.lr.ph73 ], [ %i.qa, %.lr.ph73.preheader ] ; 5 uses
  %niter526 = phi i32 [ %niter526.next.3, %.lr.ph73 ], [ 0, %.lr.ph73.preheader ]
  %i.qe = load <4 x float>, ptr %.060571, align 16, !tbaa !113
  store <4 x float> %i.qe, ptr %.772, align 16, !tbaa !113
  %i.qf = getelementptr inbounds nuw i8, ptr %.772, i64 16
  %i.qg = load <4 x float>, ptr %.060670, align 16, !tbaa !113
  store <4 x float> %i.qg, ptr %i.qf, align 16, !tbaa !113
  %i.qh = getelementptr inbounds nuw i8, ptr %.772, i64 32
  %i.qi = getelementptr inbounds nuw i8, ptr %.060571, i64 16
  %i.qj = getelementptr inbounds nuw i8, ptr %.060670, i64 16
  %i.qk = load <4 x float>, ptr %i.qi, align 16, !tbaa !113
  store <4 x float> %i.qk, ptr %i.qh, align 16, !tbaa !113
  %i.ql = getelementptr inbounds nuw i8, ptr %.772, i64 48
  %i.qm = load <4 x float>, ptr %i.qj, align 16, !tbaa !113
  store <4 x float> %i.qm, ptr %i.ql, align 16, !tbaa !113
  %i.qn = getelementptr inbounds nuw i8, ptr %.772, i64 64
  %i.qo = getelementptr inbounds nuw i8, ptr %.060571, i64 32
  %i.qp = getelementptr inbounds nuw i8, ptr %.060670, i64 32
  %i.qq = load <4 x float>, ptr %i.qo, align 16, !tbaa !113
  store <4 x float> %i.qq, ptr %i.qn, align 16, !tbaa !113
  %i.qr = getelementptr inbounds nuw i8, ptr %.772, i64 80
  %i.qs = load <4 x float>, ptr %i.qp, align 16, !tbaa !113
  store <4 x float> %i.qs, ptr %i.qr, align 16, !tbaa !113
  %i.qt = getelementptr inbounds nuw i8, ptr %.772, i64 96
  %i.qu = getelementptr inbounds nuw i8, ptr %.060571, i64 48
  %i.qv = getelementptr inbounds nuw i8, ptr %.060670, i64 48
  %i.qw = load <4 x float>, ptr %i.qu, align 16, !tbaa !113
  store <4 x float> %i.qw, ptr %i.qt, align 16, !tbaa !113
  %i.qx = getelementptr inbounds nuw i8, ptr %.772, i64 112
  %i.qy = load <4 x float>, ptr %i.qv, align 16, !tbaa !113
  store <4 x float> %i.qy, ptr %i.qx, align 16, !tbaa !113
  %i.qz = getelementptr inbounds nuw i8, ptr %.772, i64 128 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.060571, i64 64 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.060670, i64 64 ; 2 uses
  %niter526.next.3 = add nuw nsw i32 %niter526, 4 ; 2 uses
  %niter526.ncmp.3 = icmp eq i32 %niter526.next.3, %unroll_iter525
  br i1 %niter526.ncmp.3, label %.loopexit8.loopexit.unr-lcssa, label %.lr.ph73, !llvm.loop !194

bb.i:                                             ; preds = %bb.g
  %i.rc = load ptr, ptr %0, align 8, !tbaa !18    ; 8 uses
  %i.rd = add nsw i64 %indvars.iv259, %i.af       ; 8 uses
  %i.re = mul i64 %i.k, %i.rd
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.re
  %i.rg = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.ab ; 2 uses
  %i.rh = add nsw i64 %i.rd, 1
  %i.ri = mul i64 %i.k, %i.rh
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.ri
  %i.rk = getelementptr inbounds [4 x i8], ptr %i.rj, i64 %i.ab ; 2 uses
  %i.rl = add nsw i64 %i.rd, 2
  %i.rm = mul i64 %i.k, %i.rl
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.rm
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.rn, i64 %i.ab ; 2 uses
  %i.rp = add nsw i64 %i.rd, 3
  %i.rq = mul i64 %i.k, %i.rp
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.rq
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.ab ; 2 uses
  %i.rt = add nsw i64 %i.rd, 4
  %i.ru = mul i64 %i.k, %i.rt
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.ru
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.ab ; 2 uses
  %i.rx = add nsw i64 %i.rd, 5
  %i.ry = mul i64 %i.k, %i.rx
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.ry
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.rz, i64 %i.ab ; 2 uses
  %i.sb = add nsw i64 %i.rd, 6
  %i.sc = mul i64 %i.k, %i.sb
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.sc
  %i.se = getelementptr inbounds [4 x i8], ptr %i.sd, i64 %i.ab ; 2 uses
  %i.sf = add nsw i64 %i.rd, 7
  %i.sg = mul i64 %i.k, %i.sf
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.sg
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.ab ; 2 uses
  br i1 %i.ac, label %.lr.ph85, label %.preheader7

.preheader7:                                      ; preds = %.lr.ph85, %bb.i
  %.0624.lcssa = phi ptr [ %i.se, %bb.i ], [ %i.tw, %.lr.ph85 ]
  %.0622.lcssa = phi ptr [ %i.si, %bb.i ], [ %i.tx, %.lr.ph85 ]
  %.0620.lcssa = phi i32 [ 0, %bb.i ], [ %i.ad, %.lr.ph85 ] ; 2 uses
  %.0618.lcssa = phi ptr [ %i.sa, %bb.i ], [ %i.tv, %.lr.ph85 ]
  %.0616.lcssa = phi ptr [ %i.rw, %bb.i ], [ %i.tu, %.lr.ph85 ]
  %.0614.lcssa = phi ptr [ %i.rs, %bb.i ], [ %i.tt, %.lr.ph85 ]
  %.0612.lcssa = phi ptr [ %i.ro, %bb.i ], [ %i.ts, %.lr.ph85 ]
end_hunk_0
begin_hunk_1_@_ZN4ncnnL14gemm_AT_BT_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  %i.au = load i32, ptr %8, align 4, !tbaa !45
  %i.av = load i32, ptr %9, align 4, !tbaa !45
  %i.aw = icmp sgt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load i32, ptr %10, align 4, !tbaa !45
  %i.ay = icmp eq i32 %i.ax, 3
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr %11, align 4, !tbaa !45
  %.not61 = icmp eq i32 %i.az, 0
  br i1 %.not61, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ba = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc100 unwind label %bb.j

.noexc100:                                        ; preds = %bb.f
  %i.bb = load i32, ptr %i.v, align 4, !tbaa !86, !noalias !282 ; 2 uses
  %i.bc = load i32, ptr %i.w, align 8, !tbaa !88, !noalias !282 ; 2 uses
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !285, !noalias !282
  %i.be = load ptr, ptr %12, align 8, !tbaa !18, !noalias !282
  %i.bf = load i64, ptr %i.y, align 8, !tbaa !20, !noalias !282
  %i.bg = sext i32 %i.ba to i64
  %i.bh = mul i64 %i.bf, %i.bg
  %i.bi = load i64, ptr %i.z, align 8, !tbaa !59, !noalias !282 ; 4 uses
  %i.bj = mul i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj ; 4 uses
  %i.bl = load i32, ptr %i.aa, align 8, !tbaa !60, !noalias !282
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !17, !noalias !282
  %i.bn = sext i32 %i.bb to i64
  %i.bo = sext i32 %i.bc to i64
  %i.bp = mul nsw i64 %i.bo, %i.bn                ; 2 uses
  %i.bq = mul i64 %i.bi, %i.bp
  %i.br = add i64 %i.bq, 15
  %i.bs = and i64 %i.br, -16
  %i.bt = udiv i64 %i.bs, %i.bi
  %i.bu = load i32, ptr %i.ac, align 8, !tbaa !85, !noalias !282 ; 2 uses
  %i.bv = add nsw i32 %i.bu, -1
  %i.bw = icmp eq i32 %i.bu, 4
  %spec.select = select i1 %i.bw, i64 %i.bp, i64 %i.bt
  store ptr %i.bk, ptr %17, align 8, !tbaa !18
  store ptr null, ptr %i.l, align 8, !tbaa !11
  store i64 %i.bi, ptr %i.m, align 8, !tbaa !59
  store i32 %i.bl, ptr %i.n, align 8, !tbaa !60
  store ptr %i.bm, ptr %i.o, align 8, !tbaa !17
  store i32 %i.bv, ptr %i.p, align 8, !tbaa !85
  store i32 %i.bb, ptr %i.q, align 4, !tbaa !86
  store i32 %i.bc, ptr %i.r, align 8, !tbaa !88
  store i32 1, ptr %i.s, align 4, !tbaa !285
  store i32 %i.bd, ptr %i.t, align 8, !tbaa !51
  store i64 %spec.select, ptr %i.u, align 8, !tbaa !20
  %.pr = load i32, ptr %10, align 4, !tbaa !45
  %i.bx = icmp eq i32 %.pr, 3
  br i1 %i.bx, label %bb.g, label %.thread

bb.g:                                             ; preds = %.noexc100
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr %i.bk, i32 noundef %i.an, i32 noundef %.sroa.speculated183, i32 noundef %i.ap, i32 noundef %.sroa.speculated179)
  %.pre = load i32, ptr %10, align 4, !tbaa !45
  %i.by = icmp eq i32 %.pre, 3
  %i.bz = select i1 %i.by, ptr %17, ptr %13
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %.noexc100
  %.val107 = phi ptr [ %i.bk, %bb.g ], [ null, %bb.e ], [ %i.bk, %.noexc100 ] ; 2 uses
  %i.ca = phi ptr [ %i.bz, %bb.g ], [ %13, %bb.e ], [ %13, %.noexc100 ]
  %i.cb = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %_ZN4ncnn3MatD2Ev.exit67.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit67.lr.ph:                    ; preds = %.thread
  %.pre192 = load i32, ptr %9, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit67

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit67, %.thread
  %i.cd = load i32, ptr %11, align 4, !tbaa !45
  %.not62 = icmp eq i32 %i.cd, 0
  br i1 %.not62, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

_ZN4ncnn3MatD2Ev.exit67:                          ; preds = %_ZN4ncnn3MatD2Ev.exit67.lr.ph, %_ZN4ncnn3MatD2Ev.exit67
  %i.ce = phi i32 [ %.pre192, %_ZN4ncnn3MatD2Ev.exit67.lr.ph ], [ %i.dq, %_ZN4ncnn3MatD2Ev.exit67 ] ; 3 uses
  %i.cf = phi i32 [ %i.cb, %_ZN4ncnn3MatD2Ev.exit67.lr.ph ], [ %i.ds, %_ZN4ncnn3MatD2Ev.exit67 ] ; 2 uses
  %.060186 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit67.lr.ph ], [ %i.dr, %_ZN4ncnn3MatD2Ev.exit67 ] ; 5 uses
  %i.cg = sub nsw i32 %i.cf, %.060186
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.cg)
  %i.ch = load i32, ptr %4, align 4, !tbaa !45
  %i.ci = sdiv i32 %i.an, %i.ch
  %i.cj = load i32, ptr %i.ad, align 4, !tbaa !86, !noalias !286
  %i.ck = load ptr, ptr %14, align 8, !tbaa !18, !noalias !286
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !286
  %i.cm = sext i32 %i.ci to i64
  %i.cn = mul i64 %i.cl, %i.cm
  %i.co = load i64, ptr %i.af, align 8, !tbaa !59, !noalias !286 ; 2 uses
  %i.cp = mul i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp
  %i.cr = sext i32 %i.cj to i64
  %i.cs = sdiv i32 %.060186, %i.ce
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = mul i64 %i.co, %i.cr
  %i.cv = mul i64 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cv
  %i.cx = load i32, ptr %5, align 4, !tbaa !45
  %i.cy = sdiv i32 %i.ap, %i.cx
  %i.cz = load i32, ptr %i.ag, align 4, !tbaa !86, !noalias !289
  %i.da = load ptr, ptr %15, align 8, !tbaa !18, !noalias !289
  %i.db = load i64, ptr %i.ah, align 8, !tbaa !20, !noalias !289
  %i.dc = sext i32 %i.cy to i64
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = load i64, ptr %i.ai, align 8, !tbaa !59, !noalias !289 ; 2 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df
  %i.dh = sext i32 %i.cz to i64
  %i.di = mul i64 %i.de, %i.dh
  %i.dj = mul i64 %i.di, %i.ct
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dj
  %i.dl = load i32, ptr %11, align 4, !tbaa !45
  %.not63 = icmp eq i32 %i.dl, 0
  %i.dm = add nsw i32 %i.ce, %.060186
  %i.dn = icmp sge i32 %i.dm, %i.cf
  %i.do = select i1 %.not63, i1 %i.dn, i1 false
  %i.dp = load i32, ptr %10, align 4, !tbaa !45
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib(ptr %i.cw, ptr %i.dk, ptr noundef nonnull align 8 dereferenceable(72) %i.ca, ptr %.val107, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.dp, i32 noundef %i.an, i32 noundef %.sroa.speculated183, i32 noundef %i.ap, i32 noundef %.sroa.speculated179, i32 noundef %.060186, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.do)
  %i.dq = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.dr = add nsw i32 %i.dq, %.060186             ; 2 uses
  %i.ds = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.dt = icmp slt i32 %i.dr, %i.ds
  br i1 %i.dt, label %_ZN4ncnn3MatD2Ev.exit67, label %._crit_edge, !llvm.loop !292

bb.h:                                             ; preds = %._crit_edge
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val107, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.an, i32 noundef %.sroa.speculated183, i32 noundef %i.ap, i32 noundef %.sroa.speculated179)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.h, %._crit_edge
  %.pre196 = load i32, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #9
  %i.du = add nsw i32 %.0188, 1
  %.not.not = icmp slt i32 %.0188, %.pre196
  br i1 %.not.not, label %bb.c, label %._crit_edge190

._crit_edge190:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge190, %bb.a
  ret void

bb.j:                                             ; preds = %bb.f
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #23
  unreachable
}

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib(ptr nofree readonly %.0.val, ptr nofree readonly %.0.val1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree %.0.val3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 15 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.m = icmp sgt i32 %4, 3
  br i1 %i.m, label %.lr.ph1063, label %.preheader918

.lr.ph1063:                                       ; preds = %bb.a
  %i.n = mul nsw i32 %i.b, %5
  %i.o = sext i32 %i.n to i64
  %i.p = add i32 %2, -1
  %or.cond = icmp ult i32 %i.p, 2                 ; 6 uses
  %i.q = icmp eq i32 %2, 4
  %i.r = sext i32 %5 to i64
  %i.s = sext i32 %3 to i64                       ; 2 uses
  %i.t = icmp sgt i32 %6, 11
  %i.u = icmp eq i32 %7, 0                        ; 5 uses
  %i.v = icmp eq i32 %2, 0                        ; 5 uses
  %i.w = icmp sgt i32 %8, 0                       ; 5 uses
  %.idx1413 = shl i64 %i.k, 3                     ; 5 uses
  %.idx1414 = mul i64 %i.k, 12                    ; 5 uses
  %i.x = shl nsw i32 %8, 2
  %i.y = sext i32 %i.x to i64
  %i.z = add i32 %6, -12                          ; 2 uses
  %i.aa = urem i32 %i.z, 12
  %i.ab = sub nuw i32 %i.z, %i.aa
  %i.ac = add i32 %i.ab, 12
  %i.ad = add i32 %8, -1                          ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 4 uses
  %i.af = shl nuw nsw i64 %i.ae, 5
  %i.ag = shl nuw nsw i64 %i.ae, 4
  %i.ah = shl nuw nsw i64 %i.ae, 3
  %i.ai = shl nuw nsw i64 %i.ae, 2
  %i.aj = zext nneg i32 %4 to i64
  %xtraiter = and i32 %8, 1
  %i.ak = icmp eq i32 %8, 1
  %unroll_iter = and i32 %8, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod2237 = trunc i32 %8 to i1
  %xtraiter2238 = and i32 %8, 3                   ; 3 uses
  %i.al = icmp ult i32 %i.ad, 3
  %unroll_iter2242 = and i32 %8, 2147483644
  %lcmp.mod2239.not = icmp eq i32 %xtraiter2238, 0
  %lcmp.mod2241 = icmp ne i32 %xtraiter2238, 0
  br label %bb.b

.preheader918.loopexit:                           ; preds = %._crit_edge1055
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader918

.preheader918:                                    ; preds = %.preheader918.loopexit, %bb.a
  %.01314.lcssa = phi i32 [ 0, %bb.a ], [ %i.am, %.preheader918.loopexit ] ; 3 uses
  %.01296.lcssa = phi ptr [ %.0.val3, %bb.a ], [ %.51301.lcssa, %.preheader918.loopexit ] ; 2 uses
  %.01279.lcssa = phi ptr [ %i.l, %bb.a ], [ %.15.lcssa, %.preheader918.loopexit ] ; 2 uses
  %.01276.lcssa = phi ptr [ %.0.val, %bb.a ], [ %i.aaf, %.preheader918.loopexit ] ; 2 uses
  %i.an = or disjoint i32 %.01314.lcssa, 1
  %i.ao = icmp slt i32 %i.an, %4
  br i1 %i.ao, label %.lr.ph1192, label %.preheader913

.lr.ph1192:                                       ; preds = %.preheader918
  %i.ap = sext i32 %5 to i64                      ; 2 uses
  %i.aq = add i32 %2, -1
  %or.cond13 = icmp ult i32 %i.aq, 2
  %i.ar = icmp eq i32 %2, 4
  %i.as = sext i32 %3 to i64                      ; 2 uses
  %i.at = icmp sgt i32 %6, 11
  %i.au = icmp eq i32 %7, 0                       ; 5 uses
  %i.av = icmp eq i32 %2, 0                       ; 5 uses
  %or.cond15 = icmp ult i32 %2, 3                 ; 5 uses
  %i.aw = icmp sgt i32 %8, 0                      ; 5 uses
  %i.ax = shl nsw i32 %8, 1
  %i.ay = sext i32 %i.ax to i64
  %i.az = add i32 %6, -12                         ; 2 uses
  %i.ba = urem i32 %i.az, 12
  %i.bb = sub nuw i32 %i.az, %i.ba
  %i.bc = add i32 %i.bb, 12
  %i.bd = add i32 %8, -1
  %i.be = zext i32 %i.bd to i64                   ; 4 uses
  %i.bf = shl nuw nsw i64 %i.be, 5
  %i.bg = shl nuw nsw i64 %i.be, 4
  %i.bh = shl nuw nsw i64 %i.be, 3
  %i.bi = shl nuw nsw i64 %i.be, 2
  %i.bj = zext nneg i32 %.01314.lcssa to i64
  %i.bk = sext i32 %4 to i64
  %invariant.op = add nsw i64 %i.bk, -1
  %xtraiter2244 = and i32 %8, 1
  %i.bl = icmp eq i32 %8, 1
  %unroll_iter2250 = and i32 %8, 2147483646
  %lcmp.mod2246.not = icmp eq i32 %xtraiter2244, 0
  %lcmp.mod2249 = trunc i32 %8 to i1
  %i.bm = zext nneg i32 %8 to i64                 ; 2 uses
  %min.iters.check1916 = icmp ult i32 %8, 4
  %n.vec1918 = and i64 %i.bm, 2147483644          ; 4 uses
  %i.bn = trunc nuw nsw i64 %n.vec1918 to i32
  %i.bo = shl nuw nsw i64 %n.vec1918, 3           ; 2 uses
  %cmp.n1935 = icmp eq i64 %n.vec1918, %i.bm
  %i.bp = zext nneg i32 %8 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %8, 8
  %n.vec = and i64 %i.bp, 2147483640              ; 5 uses
  %i.bq = trunc nuw nsw i64 %n.vec to i32
  %i.br = shl nuw nsw i64 %n.vec, 3
  %i.bs = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.bp
  br label %bb.bo

bb.b:                                             ; preds = %.lr.ph1063, %._crit_edge1055
  %indvars.iv = phi i64 [ 0, %.lr.ph1063 ], [ %indvars.iv.next, %._crit_edge1055 ] ; 3 uses
  %.012761061 = phi ptr [ %.0.val, %.lr.ph1063 ], [ %i.aaf, %._crit_edge1055 ] ; 8 uses
  %.012791060 = phi ptr [ %i.l, %.lr.ph1063 ], [ %.15.lcssa, %._crit_edge1055 ] ; 2 uses
  %.012961059 = phi ptr [ %.0.val3, %.lr.ph1063 ], [ %.51301.lcssa, %._crit_edge1055 ] ; 2 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !18
  %i.bu = add nsw i64 %indvars.iv, %i.s
  %i.bv = mul i64 %i.k, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.o ; 2 uses
  %.not1402 = icmp eq ptr %.012791060, null
  br i1 %.not1402, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.by = load ptr, ptr %0, align 8, !tbaa !18
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.s
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cb = load ptr, ptr %0, align 8, !tbaa !18
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.r
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.21281 = phi ptr [ %i.cc, %bb.e ], [ %.012791060, %bb.d ], [ null, %bb.b ], [ %i.ca, %.thread ] ; 2 uses
  br i1 %i.t, label %.lr.ph956, label %.preheader922

.preheader922:                                    ; preds = %bb.r, %bb.f
  %.01342.lcssa = phi i32 [ 0, %bb.f ], [ %i.ac, %bb.r ] ; 3 uses
  %.01332.lcssa = phi ptr [ %.0.val1, %bb.f ], [ %.11333.lcssa, %bb.r ] ; 2 uses
  %.01317.lcssa = phi ptr [ %i.bx, %bb.f ], [ %.21319, %bb.r ] ; 2 uses
  %.11297.lcssa = phi ptr [ %.012961059, %bb.f ], [ %i.le, %bb.r ] ; 2 uses
  %.31282.lcssa = phi ptr [ %.21281, %bb.f ], [ %.51284, %bb.r ] ; 2 uses
  %i.cd = add nuw nsw i32 %.01342.lcssa, 7
  %i.ce = icmp slt i32 %i.cd, %6
  br i1 %i.ce, label %.lr.ph989, label %.preheader921

.lr.ph956:                                        ; preds = %bb.f, %bb.r
  %.31282954 = phi ptr [ %.51284, %bb.r ], [ %.21281, %bb.f ] ; 33 uses
  %.11297953 = phi ptr [ %i.le, %bb.r ], [ %.012961059, %bb.f ] ; 25 uses
  %.01317952 = phi ptr [ %.21319, %bb.r ], [ %i.bx, %bb.f ] ; 22 uses
  %.01332951 = phi ptr [ %.11333.lcssa, %bb.r ], [ %.0.val1, %bb.f ] ; 2 uses
  %.01342950 = phi i32 [ %i.lf, %bb.r ], [ 0, %bb.f ] ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.lr.ph956
  %.not1412 = icmp eq ptr %.31282954, null
  br i1 %.not1412, label %.thread706, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %.thread678, label %bb.i

.thread678:                                       ; preds = %bb.h
  %i.cf = load float, ptr %.31282954, align 4, !tbaa !68
  %i.cg = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> zeroinitializer ; 12 uses
  br label %.thread706

bb.i:                                             ; preds = %bb.h
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ci = load <4 x float>, ptr %.31282954, align 1, !tbaa !113 ; 12 uses
  br label %.thread706

bb.k:                                             ; preds = %bb.i
  switch i32 %2, label %.thread706 [
    i32 3, label %bb.l
    i32 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.cj = load <4 x float>, ptr %.31282954, align 1, !tbaa !113
  %i.ck = getelementptr inbounds nuw i8, ptr %.31282954, i64 16
  %i.cl = load <4 x float>, ptr %i.ck, align 1, !tbaa !113
  %i.cm = getelementptr inbounds nuw i8, ptr %.31282954, i64 32
  %i.cn = load <4 x float>, ptr %i.cm, align 1, !tbaa !113
  %i.co = getelementptr inbounds nuw i8, ptr %.31282954, i64 48
  %i.cp = load <4 x float>, ptr %i.co, align 1, !tbaa !113
  %i.cq = getelementptr inbounds nuw i8, ptr %.31282954, i64 64
  %i.cr = load <4 x float>, ptr %i.cq, align 1, !tbaa !113
  %i.cs = getelementptr inbounds nuw i8, ptr %.31282954, i64 80
  %i.ct = load <4 x float>, ptr %i.cs, align 1, !tbaa !113
  %i.cu = getelementptr inbounds nuw i8, ptr %.31282954, i64 96
  %i.cv = load <4 x float>, ptr %i.cu, align 1, !tbaa !113
  %i.cw = getelementptr inbounds nuw i8, ptr %.31282954, i64 112
  %i.cx = load <4 x float>, ptr %i.cw, align 1, !tbaa !113
  %i.cy = getelementptr inbounds nuw i8, ptr %.31282954, i64 128
  %i.cz = load <4 x float>, ptr %i.cy, align 1, !tbaa !113
  %i.da = getelementptr inbounds nuw i8, ptr %.31282954, i64 144
  %i.db = load <4 x float>, ptr %i.da, align 1, !tbaa !113
  %i.dc = getelementptr inbounds nuw i8, ptr %.31282954, i64 160
  %i.dd = load <4 x float>, ptr %i.dc, align 1, !tbaa !113
  %i.de = getelementptr inbounds nuw i8, ptr %.31282954, i64 176
  %i.df = load <4 x float>, ptr %i.de, align 1, !tbaa !113
  %i.dg = getelementptr inbounds nuw i8, ptr %.31282954, i64 192
  br label %.thread706

bb.m:                                             ; preds = %bb.k
  %i.dh = load float, ptr %.31282954, align 4, !tbaa !68
  %i.di = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = getelementptr inbounds nuw i8, ptr %.31282954, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !68
  %i.dm = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = getelementptr inbounds nuw i8, ptr %.31282954, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !68
  %i.dq = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = getelementptr inbounds nuw i8, ptr %.31282954, i64 12
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !68
  %i.du = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = getelementptr inbounds nuw i8, ptr %.31282954, i64 16
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !68
  %i.dy = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = getelementptr inbounds nuw i8, ptr %.31282954, i64 20
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !68
  %i.ec = insertelement <4 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = getelementptr inbounds nuw i8, ptr %.31282954, i64 24
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !68
  %i.eg = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ei = getelementptr inbounds nuw i8, ptr %.31282954, i64 28
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !68
  %i.ek = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = getelementptr inbounds nuw i8, ptr %.31282954, i64 32
  %i.en = load float, ptr %i.em, align 4, !tbaa !68
  %i.eo = insertelement <4 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = getelementptr inbounds nuw i8, ptr %.31282954, i64 36
  %i.er = load float, ptr %i.eq, align 4, !tbaa !68
  %i.es = insertelement <4 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = getelementptr inbounds nuw i8, ptr %.31282954, i64 40
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !68
  %i.ew = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = getelementptr inbounds nuw i8, ptr %.31282954, i64 44
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !68
  %i.fa = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fc = getelementptr inbounds nuw i8, ptr %.31282954, i64 48
  br label %.thread706

bb.n:                                             ; preds = %.lr.ph956
  %i.fd = load <4 x float>, ptr %.11297953, align 16, !tbaa !113
  %i.fe = getelementptr inbounds nuw i8, ptr %.11297953, i64 16
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !tbaa !113
  %i.fg = getelementptr inbounds nuw i8, ptr %.11297953, i64 32
  %i.fh = load <4 x float>, ptr %i.fg, align 16, !tbaa !113
  %i.fi = getelementptr inbounds nuw i8, ptr %.11297953, i64 48
  %i.fj = load <4 x float>, ptr %i.fi, align 16, !tbaa !113
  %i.fk = getelementptr inbounds nuw i8, ptr %.11297953, i64 64
  %i.fl = load <4 x float>, ptr %i.fk, align 16, !tbaa !113
  %i.fm = getelementptr inbounds nuw i8, ptr %.11297953, i64 80
  %i.fn = load <4 x float>, ptr %i.fm, align 16, !tbaa !113
  %i.fo = getelementptr inbounds nuw i8, ptr %.11297953, i64 96
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !113
  %i.fq = getelementptr inbounds nuw i8, ptr %.11297953, i64 112
end_hunk_1
begin_hunk_2_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a
  br i1 %.not1403, label %.thread798, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.v, label %.thread791, label %bb.be

.thread791:                                       ; preds = %bb.bd
  %i.xy = load float, ptr %.151053, align 4, !tbaa !68
  %i.xz = insertelement <4 x float> poison, float %i.xy, i64 0
  %i.ya = shufflevector <4 x float> %i.xz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread798

bb.be:                                            ; preds = %bb.bd
  br i1 %or.cond, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.yb = load <4 x float>, ptr %.151053, align 1, !tbaa !113
  br label %.thread798

bb.bg:                                            ; preds = %bb.be
  switch i32 %2, label %.thread798 [
    i32 3, label %bb.bh
    i32 4, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.yc = load <4 x float>, ptr %.151053, align 1, !tbaa !113
  %i.yd = getelementptr inbounds nuw i8, ptr %.151053, i64 16
  br label %.thread798

bb.bi:                                            ; preds = %bb.bg
  %i.ye = load float, ptr %.151053, align 4, !tbaa !68
  %i.yf = insertelement <4 x float> poison, float %i.ye, i64 0
  %i.yg = shufflevector <4 x float> %i.yf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yh = getelementptr inbounds nuw i8, ptr %.151053, i64 4
  br label %.thread798

bb.bj:                                            ; preds = %.lr.ph1054
  %i.yi = load <4 x float>, ptr %.513011052, align 16, !tbaa !113
  br label %.thread798

.thread798:                                       ; preds = %bb.bg, %bb.bf, %.thread791, %bb.bh, %bb.bc, %bb.bi, %bb.bj
  %.3594 = phi nsz <4 x float> [ zeroinitializer, %bb.bc ], [ %i.yg, %bb.bi ], [ zeroinitializer, %bb.bg ], [ %i.yi, %bb.bj ], [ %i.yc, %bb.bh ], [ %i.ya, %.thread791 ], [ %i.yb, %bb.bf ] ; 3 uses
  %.17 = phi ptr [ null, %bb.bc ], [ %i.yh, %bb.bi ], [ %.151053, %bb.bg ], [ %.151053, %bb.bj ], [ %i.yd, %bb.bh ], [ %.151053, %.thread791 ], [ %.151053, %bb.bf ] ; 2 uses
  br i1 %i.w, label %.lr.ph1045.preheader, label %._crit_edge1046

.lr.ph1045.preheader:                             ; preds = %.thread798
  br i1 %i.al, label %.lr.ph1045.epil.preheader, label %.lr.ph1045

.lr.ph1045:                                       ; preds = %.lr.ph1045.preheader, %.lr.ph1045
  %.913411044 = phi ptr [ %i.zo, %.lr.ph1045 ], [ %.813401050, %.lr.ph1045.preheader ] ; 5 uses
  %.013571043 = phi ptr [ %i.zn, %.lr.ph1045 ], [ %.012761061, %.lr.ph1045.preheader ] ; 5 uses
  %.45951041 = phi <4 x float> [ %i.zm, %.lr.ph1045 ], [ %.3594, %.lr.ph1045.preheader ]
  %niter2243 = phi i32 [ %niter2243.next.3, %.lr.ph1045 ], [ 0, %.lr.ph1045.preheader ]
  %i.yj = load <4 x float>, ptr %.013571043, align 16, !tbaa !113
  %i.yk = load float, ptr %.913411044, align 4, !tbaa !68
  %i.yl = insertelement <4 x float> poison, float %i.yk, i64 0
  %i.ym = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yn = fmul fast <4 x float> %i.ym, %i.yj
  %i.yo = fadd fast <4 x float> %i.yn, %.45951041
  %i.yp = getelementptr inbounds nuw i8, ptr %.013571043, i64 16
  %i.yq = getelementptr inbounds nuw i8, ptr %.913411044, i64 4
  %i.yr = load <4 x float>, ptr %i.yp, align 16, !tbaa !113
  %i.ys = load float, ptr %i.yq, align 4, !tbaa !68
  %i.yt = insertelement <4 x float> poison, float %i.ys, i64 0
  %i.yu = shufflevector <4 x float> %i.yt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yv = fmul fast <4 x float> %i.yu, %i.yr
  %i.yw = fadd fast <4 x float> %i.yv, %i.yo
  %i.yx = getelementptr inbounds nuw i8, ptr %.013571043, i64 32
  %i.yy = getelementptr inbounds nuw i8, ptr %.913411044, i64 8
  %i.yz = load <4 x float>, ptr %i.yx, align 16, !tbaa !113
  %i.za = load float, ptr %i.yy, align 4, !tbaa !68
  %i.zb = insertelement <4 x float> poison, float %i.za, i64 0
  %i.zc = shufflevector <4 x float> %i.zb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zd = fmul fast <4 x float> %i.zc, %i.yz
  %i.ze = fadd fast <4 x float> %i.zd, %i.yw
  %i.zf = getelementptr inbounds nuw i8, ptr %.013571043, i64 48
  %i.zg = getelementptr inbounds nuw i8, ptr %.913411044, i64 12
  %i.zh = load <4 x float>, ptr %i.zf, align 16, !tbaa !113
  %i.zi = load float, ptr %i.zg, align 4, !tbaa !68
  %i.zj = insertelement <4 x float> poison, float %i.zi, i64 0
  %i.zk = shufflevector <4 x float> %i.zj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zl = fmul fast <4 x float> %i.zk, %i.zh
  %i.zm = fadd fast <4 x float> %i.zl, %i.ze      ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.013571043, i64 64 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.913411044, i64 16 ; 2 uses
  %niter2243.next.3 = add nuw nsw i32 %niter2243, 4 ; 2 uses
  %niter2243.ncmp.3 = icmp eq i32 %niter2243.next.3, %unroll_iter2242
  br i1 %niter2243.ncmp.3, label %._crit_edge1046.loopexit.unr-lcssa, label %.lr.ph1045, !llvm.loop !301

._crit_edge1046.loopexit.unr-lcssa:               ; preds = %.lr.ph1045
  br i1 %lcmp.mod2239.not, label %._crit_edge1046.loopexit, label %.lr.ph1045.epil.preheader

.lr.ph1045.epil.preheader:                        ; preds = %._crit_edge1046.loopexit.unr-lcssa, %.lr.ph1045.preheader
  %.913411044.epil.init = phi ptr [ %.813401050, %.lr.ph1045.preheader ], [ %i.zo, %._crit_edge1046.loopexit.unr-lcssa ]
  %.013571043.epil.init = phi ptr [ %.012761061, %.lr.ph1045.preheader ], [ %i.zn, %._crit_edge1046.loopexit.unr-lcssa ]
  %.45951041.epil.init = phi <4 x float> [ %.3594, %.lr.ph1045.preheader ], [ %i.zm, %._crit_edge1046.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2241)
  br label %.lr.ph1045.epil

.lr.ph1045.epil:                                  ; preds = %.lr.ph1045.epil, %.lr.ph1045.epil.preheader
  %.913411044.epil = phi ptr [ %i.zw, %.lr.ph1045.epil ], [ %.913411044.epil.init, %.lr.ph1045.epil.preheader ] ; 2 uses
  %.013571043.epil = phi ptr [ %i.zv, %.lr.ph1045.epil ], [ %.013571043.epil.init, %.lr.ph1045.epil.preheader ] ; 2 uses
  %.45951041.epil = phi <4 x float> [ %i.zu, %.lr.ph1045.epil ], [ %.45951041.epil.init, %.lr.ph1045.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph1045.epil ], [ 0, %.lr.ph1045.epil.preheader ]
  %i.zp = load <4 x float>, ptr %.013571043.epil, align 16, !tbaa !113
  %i.zq = load float, ptr %.913411044.epil, align 4, !tbaa !68
  %i.zr = insertelement <4 x float> poison, float %i.zq, i64 0
  %i.zs = shufflevector <4 x float> %i.zr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zt = fmul fast <4 x float> %i.zs, %i.zp
  %i.zu = fadd fast <4 x float> %i.zt, %.45951041.epil ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.013571043.epil, i64 16
  %i.zw = getelementptr inbounds nuw i8, ptr %.913411044.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter2238
  br i1 %epil.iter.cmp.not, label %._crit_edge1046.loopexit, label %.lr.ph1045.epil, !llvm.loop !302

._crit_edge1046.loopexit:                         ; preds = %.lr.ph1045.epil, %._crit_edge1046.loopexit.unr-lcssa
  %.lcssa2232 = phi <4 x float> [ %i.zm, %._crit_edge1046.loopexit.unr-lcssa ], [ %i.zu, %.lr.ph1045.epil ]
  %i.zx = getelementptr i8, ptr %.813401050, i64 %i.ai
  %scevgep1582 = getelementptr i8, ptr %i.zx, i64 4
  br label %._crit_edge1046

._crit_edge1046:                                  ; preds = %._crit_edge1046.loopexit, %.thread798
  %.4595.lcssa = phi <4 x float> [ %.3594, %.thread798 ], [ %.lcssa2232, %._crit_edge1046.loopexit ] ; 6 uses
  %.91341.lcssa = phi ptr [ %.813401050, %.thread798 ], [ %scevgep1582, %._crit_edge1046.loopexit ]
  br i1 %9, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %._crit_edge1046
  switch i32 %i.b, label %bb.bn [
    i32 4, label %.thread801
    i32 1, label %bb.bl
  ]

.thread801:                                       ; preds = %bb.bk
  store <4 x float> %.4595.lcssa, ptr %.1213291051, align 16, !tbaa !113
  %i.zy = getelementptr inbounds nuw i8, ptr %.1213291051, i64 16
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.4595.lcssa, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1213291051, align 4, !tbaa !68
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.4595.lcssa, i64 1
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.1213291051, i64 %i.k
  store float %.sroa.0.4.vec.extract, ptr %i.zz, align 4, !tbaa !68
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.4595.lcssa, i64 2
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1213291051, i64 %.idx1413
  store float %.sroa.0.8.vec.extract, ptr %i.aaa, align 4, !tbaa !68
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.4595.lcssa, i64 3
  %i.aab = getelementptr inbounds nuw i8, ptr %.1213291051, i64 %.idx1414
  store float %.sroa.0.12.vec.extract, ptr %i.aab, align 4, !tbaa !68
  %i.aac = getelementptr inbounds nuw i8, ptr %.1213291051, i64 4
  br label %bb.bn

bb.bm:                                            ; preds = %._crit_edge1046
  store <4 x float> %.4595.lcssa, ptr %.513011052, align 16, !tbaa !113
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %.thread801, %bb.bl, %bb.bm
  %.141331 = phi ptr [ %i.aac, %bb.bl ], [ %.1213291051, %bb.bk ], [ %.1213291051, %bb.bm ], [ %i.zy, %.thread801 ]
  %i.aad = getelementptr inbounds nuw i8, ptr %.513011052, i64 16 ; 2 uses
  %i.aae = add nuw nsw i32 %.413461049, 1         ; 2 uses
  %exitcond1584.not = icmp eq i32 %i.aae, %6
  br i1 %exitcond1584.not, label %._crit_edge1055, label %.lr.ph1054, !llvm.loop !303

._crit_edge1055:                                  ; preds = %bb.bn, %.preheader919
  %.51301.lcssa = phi ptr [ %.41300.lcssa, %.preheader919 ], [ %i.aad, %bb.bn ] ; 2 uses
  %.15.lcssa = phi ptr [ %.121291.lcssa, %.preheader919 ], [ %.17, %bb.bn ] ; 2 uses
  %i.aaf = getelementptr inbounds [4 x i8], ptr %.012761061, i64 %i.y ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.aag = or disjoint i64 %indvars.iv.next, 3
  %i.aah = icmp samesign ult i64 %i.aag, %i.aj
  br i1 %i.aah, label %bb.b, label %.preheader918.loopexit, !llvm.loop !304

.preheader913.loopexit:                           ; preds = %._crit_edge1185
  %i.aai = trunc nuw nsw i64 %indvars.iv.next1597 to i32
  br label %.preheader913

.preheader913:                                    ; preds = %.preheader913.loopexit, %.preheader918
  %.11315.lcssa = phi i32 [ %.01314.lcssa, %.preheader918 ], [ %i.aai, %.preheader913.loopexit ] ; 2 uses
  %.61302.lcssa = phi ptr [ %.01296.lcssa, %.preheader918 ], [ %.111307.lcssa, %.preheader913.loopexit ]
  %.18.lcssa = phi ptr [ %.01279.lcssa, %.preheader918 ], [ %.33.lcssa, %.preheader913.loopexit ]
  %.11277.lcssa = phi ptr [ %.01276.lcssa, %.preheader918 ], [ %i.aqd, %.preheader913.loopexit ]
  %i.aaj = icmp slt i32 %.11315.lcssa, %4
  br i1 %i.aaj, label %.lr.ph1425, label %._crit_edge1426

.lr.ph1425:                                       ; preds = %.preheader913
  %i.aak = sext i32 %5 to i64                     ; 2 uses
  %i.aal = add i32 %2, -1
  %or.cond25 = icmp ult i32 %i.aal, 2
  %i.aam = icmp eq i32 %2, 4
  %i.aan = sext i32 %3 to i64                     ; 2 uses
  %i.aao = icmp sgt i32 %6, 11
  %i.aap = icmp eq i32 %7, 0                      ; 5 uses
  %or.cond29 = icmp ult i32 %2, 3                 ; 5 uses
  %i.aaq = add i32 %2, -3
  %or.cond31 = icmp ult i32 %i.aaq, 2             ; 5 uses
  %i.aar = icmp sgt i32 %8, 3                     ; 5 uses
  %i.aas = sext i32 %8 to i64
  %i.aat = add i32 %8, -4                         ; 4 uses
  %i.aau = and i32 %i.aat, -4
  %i.aav = add i32 %i.aau, 4                      ; 5 uses
  %i.aaw = add i32 %6, -12                        ; 2 uses
  %i.aax = urem i32 %i.aaw, 12
  %i.aay = sub nuw i32 %i.aaw, %i.aax
  %i.aaz = add i32 %i.aay, 12
  %i.aba = lshr i32 %i.aat, 2
  %i.abb = zext nneg i32 %i.aba to i64            ; 6 uses
  %i.abc = shl nuw nsw i64 %i.abb, 7
  %i.abd = shl nuw nsw i64 %i.abb, 6
  %i.abe = shl nuw nsw i64 %i.abb, 5
  %i.abf = shl nuw nsw i64 %i.abb, 4
  %i.abg = zext nneg i32 %.11315.lcssa to i64
  %wide.trip.count = zext i32 %4 to i64
  %i.abh = add nuw nsw i64 %i.abb, 1              ; 2 uses
  %min.iters.check2041 = icmp ult i32 %i.aat, 12
  %n.vec2043 = and i64 %i.abh, 2147483644         ; 5 uses
  %i.abi = trunc nuw nsw i64 %n.vec2043 to i32
  %i.abj = shl i32 %i.abi, 2
  %i.abk = shl nuw nsw i64 %n.vec2043, 4
  %i.abl = shl nuw nsw i64 %n.vec2043, 5
  %cmp.n2064 = icmp eq i64 %i.abh, %n.vec2043
  %i.abm = add nuw nsw i64 %i.abb, 1              ; 2 uses
  %min.iters.check1966 = icmp ult i32 %i.aat, 28
  %n.vec1968 = and i64 %i.abm, 2147483640         ; 4 uses
  %i.abn = trunc nuw nsw i64 %n.vec1968 to i32
  %i.abo = shl i32 %i.abn, 2
  %i.abp = shl nuw nsw i64 %n.vec1968, 4          ; 2 uses
  %cmp.n2001 = icmp eq i64 %i.abm, %n.vec1968
  br label %bb.dw

bb.bo:                                            ; preds = %.lr.ph1192, %._crit_edge1185
  %indvars.iv1596 = phi i64 [ %i.bj, %.lr.ph1192 ], [ %indvars.iv.next1597, %._crit_edge1185 ] ; 3 uses
  %.112771191 = phi ptr [ %.01276.lcssa, %.lr.ph1192 ], [ %i.aqd, %._crit_edge1185 ] ; 12 uses
  %.181190 = phi ptr [ %.01279.lcssa, %.lr.ph1192 ], [ %.33.lcssa, %._crit_edge1185 ] ; 2 uses
  %.613021189 = phi ptr [ %.01296.lcssa, %.lr.ph1192 ], [ %.111307.lcssa, %._crit_edge1185 ] ; 2 uses
  %i.abq = load ptr, ptr %1, align 8, !tbaa !18
  %i.abr = add nsw i64 %indvars.iv1596, %i.as
  %i.abs = mul i64 %i.k, %i.abr
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %i.abs
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %i.ap ; 2 uses
  %.not1396 = icmp eq ptr %.181190, null
  br i1 %.not1396, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %or.cond13, label %.thread803, label %bb.bq

.thread803:                                       ; preds = %bb.bp
  %i.abv = load ptr, ptr %0, align 8, !tbaa !18
  %i.abw = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.as
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abw, i64 %indvars.iv1596
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.ar, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.aby = load ptr, ptr %0, align 8, !tbaa !18
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.aby, i64 %i.ap
  br label %bb.bs

bb.bs:                                            ; preds = %.thread803, %bb.bq, %bb.br, %bb.bo
  %.20 = phi ptr [ %i.abz, %bb.br ], [ %.181190, %bb.bq ], [ null, %bb.bo ], [ %i.abx, %.thread803 ] ; 2 uses
  br i1 %i.at, label %.lr.ph1092, label %.preheader917

.preheader917:                                    ; preds = %bb.cd, %bb.bs
  %.01379.lcssa = phi i32 [ 0, %bb.bs ], [ %i.bc, %bb.cd ] ; 3 uses
  %.01369.lcssa = phi ptr [ %.0.val1, %bb.bs ], [ %.11370.lcssa, %bb.cd ] ; 2 uses
  %.01359.lcssa = phi ptr [ %i.abu, %bb.bs ], [ %.11360, %bb.cd ] ; 2 uses
  %.71303.lcssa = phi ptr [ %.613021189, %bb.bs ], [ %i.aft, %bb.cd ] ; 2 uses
  %.21.lcssa = phi ptr [ %.20, %bb.bs ], [ %.23, %bb.cd ] ; 2 uses
  %i.aca = add nuw nsw i32 %.01379.lcssa, 7
  %i.acb = icmp slt i32 %i.aca, %6
  br i1 %i.acb, label %.lr.ph1117, label %.preheader916

.lr.ph1092:                                       ; preds = %bb.bs, %bb.cd
  %.211090 = phi ptr [ %.23, %bb.cd ], [ %.20, %bb.bs ] ; 19 uses
  %.713031089 = phi ptr [ %i.aft, %bb.cd ], [ %.613021189, %bb.bs ] ; 13 uses
  %.013591088 = phi ptr [ %.11360, %bb.cd ], [ %i.abu, %bb.bs ] ; 6 uses
  %.013691087 = phi ptr [ %.11370.lcssa, %bb.cd ], [ %.0.val1, %bb.bs ] ; 2 uses
  %.013791086 = phi i32 [ %i.afu, %bb.cd ], [ 0, %bb.bs ] ; 2 uses
  br i1 %i.au, label %bb.bt, label %bb.ca

bb.bt:                                            ; preds = %.lr.ph1092
  %.not1401 = icmp eq ptr %.211090, null
  br i1 %.not1401, label %.thread822, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.av, label %.thread805, label %bb.bv

.thread805:                                       ; preds = %bb.bu
  %i.acc = load float, ptr %.211090, align 4, !tbaa !68
  %i.acd = insertelement <4 x float> poison, float %i.acc, i64 0
  %i.ace = shufflevector <4 x float> %i.acd, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.thread822

bb.bv:                                            ; preds = %bb.bu
  br i1 %or.cond15, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.acf = load float, ptr %.211090, align 4, !tbaa !68
  %i.acg = insertelement <4 x float> poison, float %i.acf, i64 0
  %i.ach = shufflevector <4 x float> %i.acg, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.211090, i64 4
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !68
  %i.ack = insertelement <4 x float> poison, float %i.acj, i64 0
  %i.acl = shufflevector <4 x float> %i.ack, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.thread822

bb.bx:                                            ; preds = %bb.bv
  switch i32 %2, label %.thread822 [
    i32 3, label %bb.by
    i32 4, label %bb.bz
  ]

bb.by:                                            ; preds = %bb.bx
  %i.acm = load <4 x float>, ptr %.211090, align 1, !tbaa !113 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.211090, i64 16
  %i.aco = load <4 x float>, ptr %i.acn, align 1, !tbaa !113 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.211090, i64 32
  %i.acq = load <4 x float>, ptr %i.acp, align 1, !tbaa !113 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.211090, i64 48
  %i.acs = load <4 x float>, ptr %i.acr, align 1, !tbaa !113 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.211090, i64 64
  %i.acu = load <4 x float>, ptr %i.act, align 1, !tbaa !113 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %.211090, i64 80
  %i.acw = load <4 x float>, ptr %i.acv, align 1, !tbaa !113 ; 2 uses
  %i.acx = shufflevector <4 x float> %i.acm, <4 x float> %i.aco, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.acy = shufflevector <4 x float> %i.acq, <4 x float> %i.acs, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.acz = shufflevector <4 x float> %i.acu, <4 x float> %i.acw, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ada = shufflevector <4 x float> %i.acm, <4 x float> %i.aco, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.adb = shufflevector <4 x float> %i.acq, <4 x float> %i.acs, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.adc = shufflevector <4 x float> %i.acu, <4 x float> %i.acw, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.add = getelementptr inbounds nuw i8, ptr %.211090, i64 96
  br label %.thread822

bb.bz:                                            ; preds = %bb.bx
  %i.ade = load <4 x float>, ptr %.211090, align 1, !tbaa !113 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.211090, i64 16
  %i.adg = load <4 x float>, ptr %i.adf, align 1, !tbaa !113 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.211090, i64 32
  %i.adi = load <4 x float>, ptr %i.adh, align 1, !tbaa !113 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.211090, i64 48
  br label %.thread822

bb.ca:                                            ; preds = %.lr.ph1092
  %i.adk = load <4 x float>, ptr %.713031089, align 1, !tbaa !113 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.713031089, i64 16
  %i.adm = load <4 x float>, ptr %i.adl, align 1, !tbaa !113 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.713031089, i64 32
  %i.ado = load <4 x float>, ptr %i.adn, align 1, !tbaa !113 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.713031089, i64 48
  %i.adq = load <4 x float>, ptr %i.adp, align 1, !tbaa !113 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.713031089, i64 64
  %i.ads = load <4 x float>, ptr %i.adr, align 1, !tbaa !113 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %.713031089, i64 80
  %i.adu = load <4 x float>, ptr %i.adt, align 1, !tbaa !113 ; 2 uses
  %i.adv = shufflevector <4 x float> %i.adk, <4 x float> %i.adm, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.adw = shufflevector <4 x float> %i.ado, <4 x float> %i.adq, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.adx = shufflevector <4 x float> %i.ads, <4 x float> %i.adu, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ady = shufflevector <4 x float> %i.adk, <4 x float> %i.adm, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.adz = shufflevector <4 x float> %i.ado, <4 x float> %i.adq, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aea = shufflevector <4 x float> %i.ads, <4 x float> %i.adu, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  br label %.thread822

.thread822:                                       ; preds = %bb.bx, %bb.bw, %.thread805, %bb.by, %bb.bt, %bb.bz, %bb.ca
  %.3624 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.adi, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.aea, %bb.ca ], [ %i.adc, %bb.by ], [ %i.ace, %.thread805 ], [ %i.acl, %bb.bw ] ; 2 uses
  %.3619 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.adg, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.adz, %bb.ca ], [ %i.adb, %bb.by ], [ %i.ace, %.thread805 ], [ %i.acl, %bb.bw ] ; 2 uses
  %.3614 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.ade, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.ady, %bb.ca ], [ %i.ada, %bb.by ], [ %i.ace, %.thread805 ], [ %i.acl, %bb.bw ] ; 2 uses
  %.3609 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.adi, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.adx, %bb.ca ], [ %i.acz, %bb.by ], [ %i.ace, %.thread805 ], [ %i.ach, %bb.bw ] ; 2 uses
  %.3604 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.adg, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.adw, %bb.ca ], [ %i.acy, %bb.by ], [ %i.ace, %.thread805 ], [ %i.ach, %bb.bw ] ; 2 uses
  %.3599 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.ade, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.adv, %bb.ca ], [ %i.acx, %bb.by ], [ %i.ace, %.thread805 ], [ %i.ach, %bb.bw ] ; 2 uses
  %.23 = phi ptr [ null, %bb.bt ], [ %i.adj, %bb.bz ], [ %.211090, %bb.bx ], [ %.211090, %bb.ca ], [ %i.add, %bb.by ], [ %.211090, %.thread805 ], [ %.211090, %bb.bw ] ; 2 uses
  br i1 %i.aw, label %.lr.ph1077, label %._crit_edge1078

.lr.ph1077:                                       ; preds = %.thread822, %.lr.ph1077
  %.113701076 = phi ptr [ %i.afa, %.lr.ph1077 ], [ %.013691087, %.thread822 ] ; 4 uses
  %.013841075 = phi ptr [ %i.aez, %.lr.ph1077 ], [ %.112771191, %.thread822 ] ; 3 uses
  %.013851074 = phi i32 [ %i.afb, %.lr.ph1077 ], [ 0, %.thread822 ]
  %.46001073 = phi <4 x float> [ %i.aek, %.lr.ph1077 ], [ %.3599, %.thread822 ]
  %.46051072 = phi <4 x float> [ %i.aem, %.lr.ph1077 ], [ %.3604, %.thread822 ]
  %.46101071 = phi <4 x float> [ %i.aeo, %.lr.ph1077 ], [ %.3609, %.thread822 ]
  %.46151070 = phi <4 x float> [ %i.aeu, %.lr.ph1077 ], [ %.3614, %.thread822 ]
  %.46201069 = phi <4 x float> [ %i.aew, %.lr.ph1077 ], [ %.3619, %.thread822 ]
  %.46251068 = phi <4 x float> [ %i.aey, %.lr.ph1077 ], [ %.3624, %.thread822 ]
  %i.aeb = load <4 x float>, ptr %.113701076, align 16, !tbaa !113 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.113701076, i64 16
  %i.aed = load <4 x float>, ptr %i.aec, align 16, !tbaa !113 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.113701076, i64 32
  %i.aef = load <4 x float>, ptr %i.aee, align 16, !tbaa !113 ; 2 uses
  %i.aeg = load float, ptr %.013841075, align 4, !tbaa !68
  %i.aeh = insertelement <4 x float> poison, float %i.aeg, i64 0
  %i.aei = shufflevector <4 x float> %i.aeh, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aej = fmul fast <4 x float> %i.aei, %i.aeb
  %i.aek = fadd fast <4 x float> %i.aej, %.46001073 ; 2 uses
  %i.ael = fmul fast <4 x float> %i.aei, %i.aed
  %i.aem = fadd fast <4 x float> %i.ael, %.46051072 ; 2 uses
  %i.aen = fmul fast <4 x float> %i.aei, %i.aef
  %i.aeo = fadd fast <4 x float> %i.aen, %.46101071 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.013841075, i64 4
  %i.aeq = load float, ptr %i.aep, align 4, !tbaa !68
  %i.aer = insertelement <4 x float> poison, float %i.aeq, i64 0
  %i.aes = shufflevector <4 x float> %i.aer, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aet = fmul fast <4 x float> %i.aes, %i.aeb
  %i.aeu = fadd fast <4 x float> %i.aet, %.46151070 ; 2 uses
  %i.aev = fmul fast <4 x float> %i.aes, %i.aed
end_hunk_2
begin_hunk_3_@_ZN4ncnnL19gemm_AT_BT_x86_int8ERKNS_3MatES2_S2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eb
  %i.ed = load i32, ptr %i.bb, align 8, !tbaa !60, !noalias !512
  %i.ee = load ptr, ptr %i.bc, align 8, !tbaa !17, !noalias !512
  %i.ef = sext i32 %i.dw to i64                   ; 2 uses
  %i.eg = mul nsw i64 %i.ef, %i.ds
  %i.eh = mul i64 %i.eg, %i.ea
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eh
  store ptr %i.ei, ptr %16, align 8, !tbaa !18, !alias.scope !515
  store ptr null, ptr %i.bd, align 8, !tbaa !11, !alias.scope !515
  store i64 %i.ea, ptr %i.be, align 8, !tbaa !59, !alias.scope !515
  store i32 %i.ed, ptr %i.bf, align 8, !tbaa !60, !alias.scope !515
  store ptr %i.ee, ptr %i.bg, align 8, !tbaa !17, !alias.scope !515
  store i32 2, ptr %i.bh, align 8, !tbaa !85, !alias.scope !515
  store i32 %i.dw, ptr %i.bi, align 4, !tbaa !86, !alias.scope !515
  store i32 1, ptr %i.bj, align 8, !tbaa !88, !alias.scope !515
  store i32 1, ptr %i.bk, align 4, !tbaa !285, !alias.scope !515
  store i32 1, ptr %i.bl, align 8, !tbaa !51, !alias.scope !515
  store i64 %i.ef, ptr %i.bm, align 8, !tbaa !20, !alias.scope !515
  invoke fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.bx, i32 noundef %.sroa.speculated121, i32 noundef %i.by, i32 noundef %.sroa.speculated117, i32 noundef %.052137, i32 noundef %.sroa.speculated)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit56
  %i.ej = load ptr, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %.not.i61 = icmp eq ptr %i.ej, null
  br i1 %.not.i61, label %_ZN4ncnn3MatD2Ev.exit54, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ek = atomicrmw add ptr %i.ej, i32 -1 acq_rel, align 4
  %i.el = icmp eq i32 %i.ek, 1
  br i1 %i.el, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit54

bb.g:                                             ; preds = %bb.f
  %i.em = load ptr, ptr %i.bg, align 8, !tbaa !17 ; 3 uses
  %.not3.i62 = icmp eq ptr %i.em, null
  %i.en = load ptr, ptr %16, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eo = load ptr, ptr %i.em, align 8, !tbaa !9
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef %i.en)
          to label %_ZN4ncnn3MatD2Ev.exit54 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i76 = icmp eq ptr %i.en, null
  br i1 %.not.i76, label %_ZN4ncnn3MatD2Ev.exit54, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.en) #9
  br label %_ZN4ncnn3MatD2Ev.exit54

bb.k:                                             ; preds = %bb.h
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit54:                          ; preds = %bb.f, %bb.e, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.et = load ptr, ptr %i.ao, align 8, !tbaa !11 ; 2 uses
  %.not.i65 = icmp eq ptr %i.et, null
  br i1 %.not.i65, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit54
  %i.eu = atomicrmw add ptr %i.et, i32 -1 acq_rel, align 4
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit53

bb.m:                                             ; preds = %bb.l
  %i.ew = load ptr, ptr %i.ar, align 8, !tbaa !17 ; 3 uses
  %.not3.i66 = icmp eq ptr %i.ew, null
  %i.ex = load ptr, ptr %15, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i66, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  invoke void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef %i.ex)
          to label %_ZN4ncnn3MatD2Ev.exit53 unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i74 = icmp eq ptr %i.ex, null
  br i1 %.not.i74, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.ex) #9
  br label %_ZN4ncnn3MatD2Ev.exit53

bb.q:                                             ; preds = %bb.n
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit53:                          ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit54, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.fd = add nsw i32 %.052137, %i.bp             ; 2 uses
  %i.fe = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.ff = icmp slt i32 %i.fd, %i.fe
  br i1 %i.ff, label %_ZN4ncnn3MatD2Ev.exit56, label %._crit_edge.loopexit, !llvm.loop !518

bb.r:                                             ; preds = %._crit_edge
  %i.fg = atomicrmw add ptr %i.de, i32 -1 acq_rel, align 4
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.s, label %_ZN4ncnn3MatD2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.fi = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.fi, null
  %i.fj = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i70, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef %i.fj)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.w, !inline_history !19

bb.u:                                             ; preds = %bb.s
  %.not.i73 = icmp eq ptr %i.fj, null
  br i1 %.not.i73, label %_ZN4ncnn3MatD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.fj) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.w:                                             ; preds = %bb.t
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.r, %._crit_edge, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.fp = add nsw i32 %.0139, 1
  %i.fq = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.0139, %i.fq
  br i1 %.not.not, label %bb.c, label %._crit_edge141

._crit_edge141:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge141, %bb.a
  ret void

.loopexit:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit56
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fr = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.fr) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #12 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn19cpu_support_x86_xopEv()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn32gemm_transB_packed_tile_int8_xopERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !18     ; 6 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.e = icmp sgt i32 %4, 3
  br i1 %i.e, label %.preheader1104.lr.ph, label %.preheader1096

.preheader1104.lr.ph:                             ; preds = %bb.c
  %i.f = icmp sgt i32 %6, 7
  %i.g = icmp eq i32 %7, 0                        ; 4 uses
  %i.h = icmp sgt i32 %8, 1                       ; 4 uses
  %i.i = shl i32 %8, 2
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = add i32 %8, -2                           ; 2 uses
  %i.l = and i32 %i.k, -2
  %i.m = add i32 %i.l, 2                          ; 4 uses
  %i.n = and i32 %6, -8
  %i.o = zext i32 %i.k to i64                     ; 2 uses
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 8                  ; 2 uses
  %scevgep1683 = getelementptr i8, ptr %i.b, i64 %i.r
  %i.s = shl nuw nsw i64 %i.p, 2
  %i.t = and i64 %i.o, 4294967294
  br label %.preheader1104

.preheader1104:                                   ; preds = %.preheader1104.lr.ph, %._crit_edge1259
  %indvars.iv = phi ptr [ %scevgep1683, %.preheader1104.lr.ph ], [ %scevgep1684, %._crit_edge1259 ] ; 3 uses
  %.06951263 = phi ptr [ %i.b, %.preheader1104.lr.ph ], [ %i.ns, %._crit_edge1259 ] ; 9 uses
  %.06981262 = phi ptr [ %i.d, %.preheader1104.lr.ph ], [ %.4.lcssa, %._crit_edge1259 ] ; 2 uses
  %.07011261 = phi i32 [ 0, %.preheader1104.lr.ph ], [ %i.nt, %._crit_edge1259 ]
  br i1 %i.f, label %.lr.ph1181, label %.preheader1103

.preheader1096.loopexit:                          ; preds = %._crit_edge1259
  %i.u = and i32 %4, 2147483644
  br label %.preheader1096

.preheader1096:                                   ; preds = %.preheader1096.loopexit, %bb.c
  %.0701.lcssa = phi i32 [ 0, %bb.c ], [ %i.u, %.preheader1096.loopexit ] ; 3 uses
  %.0698.lcssa = phi ptr [ %i.d, %bb.c ], [ %.4.lcssa, %.preheader1096.loopexit ] ; 2 uses
  %.0695.lcssa = phi ptr [ %i.b, %bb.c ], [ %i.ns, %.preheader1096.loopexit ] ; 3 uses
  %i.v = or disjoint i32 %.0701.lcssa, 1
  %i.w = icmp slt i32 %i.v, %4
  br i1 %i.w, label %.preheader1095.lr.ph, label %.preheader1087

.preheader1095.lr.ph:                             ; preds = %.preheader1096
  %i.x = icmp sgt i32 %6, 7
  %i.y = icmp eq i32 %7, 0                        ; 4 uses
  %i.z = icmp sgt i32 %8, 1                       ; 4 uses
  %i.aa = shl i32 %8, 1
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = add i32 %8, -2                          ; 2 uses
  %i.ad = and i32 %i.ac, -2
  %i.ae = add i32 %i.ad, 2                        ; 4 uses
  %i.af = and i32 %6, -8
  %i.ag = zext i32 %i.ac to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 1                       ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = shl nuw nsw i64 %i.ah, 2
  %i.ak = add nuw nsw i64 %i.aj, 4                ; 2 uses
  %scevgep1693 = getelementptr i8, ptr %.0695.lcssa, i64 %i.ak
  %i.al = and i64 %i.ag, 4294967294
  br label %.preheader1095

.preheader1103:                                   ; preds = %._crit_edge, %.preheader1104
  %.0716.lcssa = phi i32 [ 0, %.preheader1104 ], [ %i.n, %._crit_edge ] ; 3 uses
  %.0704.lcssa = phi ptr [ %i.c, %.preheader1104 ], [ %.2706.lcssa, %._crit_edge ] ; 2 uses
  %.1699.lcssa = phi ptr [ %.06981262, %.preheader1104 ], [ %i.fx, %._crit_edge ] ; 2 uses
  %i.am = or disjoint i32 %.0716.lcssa, 3
  %i.an = icmp slt i32 %i.am, %6
  br i1 %i.an, label %.lr.ph1210, label %.preheader1102

.lr.ph1181:                                       ; preds = %.preheader1104, %._crit_edge
  %.16991180 = phi ptr [ %i.fx, %._crit_edge ], [ %.06981262, %.preheader1104 ] ; 17 uses
  %.07041179 = phi ptr [ %.2706.lcssa, %._crit_edge ], [ %i.c, %.preheader1104 ] ; 2 uses
  %.07161178 = phi i32 [ %i.fy, %._crit_edge ], [ 0, %.preheader1104 ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph1181
  %i.ao = load <4 x i32>, ptr %.16991180, align 16, !tbaa !113
  %i.ap = getelementptr inbounds nuw i8, ptr %.16991180, i64 16
  %i.aq = load <4 x i32>, ptr %i.ap, align 16, !tbaa !113
  %i.ar = getelementptr inbounds nuw i8, ptr %.16991180, i64 32
  %i.as = load <4 x i32>, ptr %i.ar, align 16, !tbaa !113
  %i.at = getelementptr inbounds nuw i8, ptr %.16991180, i64 48
  %i.au = load <4 x i32>, ptr %i.at, align 16, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %.16991180, i64 64
  %i.aw = load <4 x i32>, ptr %i.av, align 16, !tbaa !113
  %i.ax = getelementptr inbounds nuw i8, ptr %.16991180, i64 80
  %i.ay = load <4 x i32>, ptr %i.ax, align 16, !tbaa !113
  %i.az = getelementptr inbounds nuw i8, ptr %.16991180, i64 96
  %i.ba = load <4 x i32>, ptr %i.az, align 16, !tbaa !113
  %i.bb = getelementptr inbounds nuw i8, ptr %.16991180, i64 112
  %i.bc = load <4 x i32>, ptr %i.bb, align 16, !tbaa !113
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph1181, %bb.d
  %i.bd = phi <4 x i32> [ %i.ba, %bb.d ], [ zeroinitializer, %.lr.ph1181 ] ; 2 uses
  %i.be = phi <4 x i32> [ %i.ay, %bb.d ], [ zeroinitializer, %.lr.ph1181 ] ; 2 uses
  %i.bf = phi <4 x i32> [ %i.aw, %bb.d ], [ zeroinitializer, %.lr.ph1181 ] ; 2 uses
  %i.bg = phi <4 x i32> [ %i.au, %bb.d ], [ zeroinitializer, %.lr.ph1181 ] ; 2 uses
  %i.bh = phi <4 x i32> [ %i.as, %bb.d ], [ zeroinitializer, %.lr.ph1181 ] ; 2 uses
  %i.bi = phi <4 x i32> [ %i.aq, %bb.d ], [ zeroinitializer, %.lr.ph1181 ] ; 2 uses
  %i.bj = phi <4 x i32> [ %i.ao, %bb.d ], [ zeroinitializer, %.lr.ph1181 ] ; 2 uses
  %i.bk = phi <4 x i32> [ %i.bc, %bb.d ], [ zeroinitializer, %.lr.ph1181 ] ; 2 uses
  br i1 %i.h, label %.lr.ph, label %.preheader1100

.preheader1100:                                   ; preds = %.lr.ph, %bb.e
  %.lcssa1129 = phi <4 x i32> [ %i.bk, %bb.e ], [ %i.de, %.lr.ph ] ; 2 uses
  %.lcssa1128 = phi <4 x i32> [ %i.bd, %bb.e ], [ %i.dc, %.lr.ph ] ; 2 uses
  %.lcssa1127 = phi <4 x i32> [ %i.be, %bb.e ], [ %i.da, %.lr.ph ] ; 2 uses
  %.lcssa1126 = phi <4 x i32> [ %i.bf, %bb.e ], [ %i.cx, %.lr.ph ] ; 2 uses
  %.lcssa1125 = phi <4 x i32> [ %i.bg, %bb.e ], [ %i.cu, %.lr.ph ] ; 2 uses
  %.lcssa1124 = phi <4 x i32> [ %i.bh, %bb.e ], [ %i.cs, %.lr.ph ] ; 2 uses
  %.lcssa1123 = phi <4 x i32> [ %i.bi, %bb.e ], [ %i.cp, %.lr.ph ] ; 2 uses
  %.lcssa1122 = phi <4 x i32> [ %i.bj, %bb.e ], [ %i.cm, %.lr.ph ] ; 2 uses
  %.0726.lcssa = phi i32 [ 0, %bb.e ], [ %i.m, %.lr.ph ] ; 2 uses
  %.0720.lcssa = phi ptr [ %.06951263, %bb.e ], [ %i.df, %.lr.ph ]
  %.1705.lcssa = phi ptr [ %.07041179, %bb.e ], [ %i.dg, %.lr.ph ] ; 2 uses
  %i.bl = icmp slt i32 %.0726.lcssa, %8
  br i1 %i.bl, label %.lr.ph1168, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.17051154 = phi ptr [ %i.dg, %.lr.ph ], [ %.07041179, %bb.e ] ; 2 uses
  %.07201153 = phi ptr [ %i.df, %.lr.ph ], [ %.06951263, %bb.e ] ; 2 uses
  %.07261152 = phi i32 [ %i.dh, %.lr.ph ], [ 0, %bb.e ]
  %i.bm = phi <4 x i32> [ %i.cm, %.lr.ph ], [ %i.bj, %bb.e ]
  %i.bn = phi <4 x i32> [ %i.cp, %.lr.ph ], [ %i.bi, %bb.e ]
  %i.bo = phi <4 x i32> [ %i.cs, %.lr.ph ], [ %i.bh, %bb.e ]
  %i.bp = phi <4 x i32> [ %i.cu, %.lr.ph ], [ %i.bg, %bb.e ]
  %i.bq = phi <4 x i32> [ %i.cx, %.lr.ph ], [ %i.bf, %bb.e ]
  %i.br = phi <4 x i32> [ %i.da, %.lr.ph ], [ %i.be, %bb.e ]
  %i.bs = phi <4 x i32> [ %i.dc, %.lr.ph ], [ %i.bd, %bb.e ]
  %i.bt = phi <4 x i32> [ %i.de, %.lr.ph ], [ %i.bk, %bb.e ]
  %i.bu = load double, ptr %.07201153, align 1, !tbaa !113
  %i.bv = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bw = bitcast <2 x double> %i.bv to <2 x i64>
  %i.bx = shufflevector <2 x i64> %i.bw, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.by = load <16 x i8>, ptr %.17051154, align 1, !tbaa !113 ; 3 uses
  %i.bz = bitcast <2 x i64> %i.bx to <16 x i8>    ; 2 uses
  %.lobit.i847 = ashr <16 x i8> %i.bz, splat (i8 7)
  %i.ca = shufflevector <16 x i8> %i.bz, <16 x i8> %.lobit.i847, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %.lobit.i846 = ashr <16 x i8> %i.by, splat (i8 7) ; 2 uses
  %i.cb = shufflevector <16 x i8> %i.by, <16 x i8> %.lobit.i846, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cc = shufflevector <16 x i8> %i.by, <16 x i8> %.lobit.i846, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cd = bitcast <16 x i8> %i.ca to <4 x i32>
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cf = bitcast <16 x i8> %i.cb to <4 x i32>
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ch = bitcast <16 x i8> %i.cc to <4 x i32>
  %i.ci = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.cj = bitcast <16 x i8> %i.ca to <8 x i16>    ; 4 uses
  %i.ck = bitcast <16 x i8> %i.cb to <8 x i16>    ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.ck)
  %i.cm = add <4 x i32> %i.cl, %i.bm              ; 2 uses
  %i.cn = bitcast <16 x i8> %i.cc to <8 x i16>    ; 2 uses
  %i.co = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.cn)
  %i.cp = add <4 x i32> %i.co, %i.bn              ; 2 uses
  %i.cq = bitcast <4 x i32> %i.ce to <8 x i16>    ; 4 uses
  %i.cr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.ck)
  %i.cs = add <4 x i32> %i.cr, %i.bo              ; 2 uses
  %i.ct = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.cn)
  %i.cu = add <4 x i32> %i.ct, %i.bp              ; 2 uses
  %i.cv = bitcast <4 x i32> %i.cg to <8 x i16>    ; 2 uses
  %i.cw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.cv)
  %i.cx = add <4 x i32> %i.cw, %i.bq              ; 2 uses
  %i.cy = bitcast <4 x i32> %i.ci to <8 x i16>    ; 2 uses
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.cy)
  %i.da = add <4 x i32> %i.cz, %i.br              ; 2 uses
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.cv)
  %i.dc = add <4 x i32> %i.db, %i.bs              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.cy)
  %i.de = add <4 x i32> %i.dd, %i.bt              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.07201153, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.17051154, i64 16 ; 2 uses
  %i.dh = add nuw nsw i32 %.07261152, 2           ; 2 uses
  %i.di = or disjoint i32 %i.dh, 1
  %i.dj = icmp slt i32 %i.di, %8
  br i1 %i.dj, label %.lr.ph, label %.preheader1100, !llvm.loop !519

.lr.ph1168:                                       ; preds = %.preheader1100, %.lr.ph1168
  %.27061167 = phi ptr [ %i.fo, %.lr.ph1168 ], [ %.1705.lcssa, %.preheader1100 ] ; 2 uses
  %.17211166 = phi ptr [ %i.fn, %.lr.ph1168 ], [ %.0720.lcssa, %.preheader1100 ] ; 2 uses
  %.17271165 = phi i32 [ %i.fp, %.lr.ph1168 ], [ %.0726.lcssa, %.preheader1100 ]
  %i.dk = phi <4 x i32> [ %i.ey, %.lr.ph1168 ], [ %.lcssa1122, %.preheader1100 ]
  %i.dl = phi <4 x i32> [ %i.fa, %.lr.ph1168 ], [ %.lcssa1123, %.preheader1100 ]
  %i.dm = phi <4 x i32> [ %i.fc, %.lr.ph1168 ], [ %.lcssa1124, %.preheader1100 ]
  %i.dn = phi <4 x i32> [ %i.fe, %.lr.ph1168 ], [ %.lcssa1125, %.preheader1100 ]
  %i.do = phi <4 x i32> [ %i.fg, %.lr.ph1168 ], [ %.lcssa1126, %.preheader1100 ]
  %i.dp = phi <4 x i32> [ %i.fi, %.lr.ph1168 ], [ %.lcssa1127, %.preheader1100 ]
  %i.dq = phi <4 x i32> [ %i.fk, %.lr.ph1168 ], [ %.lcssa1128, %.preheader1100 ]
  %i.dr = phi <4 x i32> [ %i.fm, %.lr.ph1168 ], [ %.lcssa1129, %.preheader1100 ]
  %i.ds = load float, ptr %.17211166, align 1, !tbaa !113
  %i.dt = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = load i64, ptr %.27061167, align 1, !tbaa !113
  %i.dw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dv, i64 0
  %i.dx = bitcast <4 x float> %i.du to <16 x i8>  ; 2 uses
  %.lobit.i845 = ashr <16 x i8> %i.dx, splat (i8 7)
  %i.dy = shufflevector <16 x i8> %i.dx, <16 x i8> %.lobit.i845, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dz = bitcast <2 x i64> %i.dw to <16 x i8>    ; 2 uses
  %.lobit.i844 = ashr <16 x i8> %i.dz, splat (i8 7)
  %i.ea = shufflevector <16 x i8> %i.dz, <16 x i8> %.lobit.i844, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eb = bitcast <16 x i8> %i.dy to <4 x i32>
  %i.ec = shufflevector <4 x i32> %i.eb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ed = bitcast <16 x i8> %i.ea to <8 x i16>    ; 5 uses
  %i.ee = shufflevector <8 x i16> %i.ed, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 4 uses
  %i.ef = bitcast <16 x i8> %i.dy to <8 x i16>    ; 4 uses
  %i.eg = mul <8 x i16> %i.ef, %i.ed              ; 2 uses
  %i.eh = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ef, <8 x i16> %i.ed) ; 2 uses
  %i.ei = bitcast <4 x i32> %i.ec to <8 x i16>    ; 4 uses
  %i.ej = mul <8 x i16> %i.ei, %i.ed              ; 2 uses
  %i.ek = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ei, <8 x i16> %i.ed) ; 2 uses
  %i.el = mul <8 x i16> %i.ee, %i.ef              ; 2 uses
  %i.em = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ef, <8 x i16> %i.ee) ; 2 uses
  %i.en = mul <8 x i16> %i.ee, %i.ei              ; 2 uses
  %i.eo = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ei, <8 x i16> %i.ee) ; 2 uses
  %i.ep = shufflevector <8 x i16> %i.eg, <8 x i16> %i.eh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eq = shufflevector <8 x i16> %i.eg, <8 x i16> %i.eh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.er = shufflevector <8 x i16> %i.ej, <8 x i16> %i.ek, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.es = shufflevector <8 x i16> %i.ej, <8 x i16> %i.ek, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.et = shufflevector <8 x i16> %i.el, <8 x i16> %i.em, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eu = shufflevector <8 x i16> %i.el, <8 x i16> %i.em, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ev = shufflevector <8 x i16> %i.en, <8 x i16> %i.eo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ew = shufflevector <8 x i16> %i.en, <8 x i16> %i.eo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ex = bitcast <8 x i16> %i.ep to <4 x i32>
  %i.ey = add <4 x i32> %i.dk, %i.ex              ; 2 uses
  %i.ez = bitcast <8 x i16> %i.eq to <4 x i32>
  %i.fa = add <4 x i32> %i.dl, %i.ez              ; 2 uses
  %i.fb = bitcast <8 x i16> %i.er to <4 x i32>
  %i.fc = add <4 x i32> %i.dm, %i.fb              ; 2 uses
  %i.fd = bitcast <8 x i16> %i.es to <4 x i32>
  %i.fe = add <4 x i32> %i.dn, %i.fd              ; 2 uses
  %i.ff = bitcast <8 x i16> %i.et to <4 x i32>
  %i.fg = add <4 x i32> %i.do, %i.ff              ; 2 uses
  %i.fh = bitcast <8 x i16> %i.eu to <4 x i32>
  %i.fi = add <4 x i32> %i.dp, %i.fh              ; 2 uses
  %i.fj = bitcast <8 x i16> %i.ev to <4 x i32>
  %i.fk = add <4 x i32> %i.dq, %i.fj              ; 2 uses
  %i.fl = bitcast <8 x i16> %i.ew to <4 x i32>
  %i.fm = add <4 x i32> %i.dr, %i.fl              ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.17211166, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %.27061167, i64 8 ; 2 uses
  %i.fp = add nuw nsw i32 %.17271165, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.fp, %8
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph1168, !llvm.loop !520

._crit_edge:                                      ; preds = %.lr.ph1168, %.preheader1100
  %.lcssa1137 = phi <4 x i32> [ %.lcssa1129, %.preheader1100 ], [ %i.fm, %.lr.ph1168 ]
  %.lcssa1136 = phi <4 x i32> [ %.lcssa1128, %.preheader1100 ], [ %i.fk, %.lr.ph1168 ]
  %.lcssa1135 = phi <4 x i32> [ %.lcssa1127, %.preheader1100 ], [ %i.fi, %.lr.ph1168 ]
  %.lcssa1134 = phi <4 x i32> [ %.lcssa1126, %.preheader1100 ], [ %i.fg, %.lr.ph1168 ]
  %.lcssa1133 = phi <4 x i32> [ %.lcssa1125, %.preheader1100 ], [ %i.fe, %.lr.ph1168 ]
  %.lcssa1132 = phi <4 x i32> [ %.lcssa1124, %.preheader1100 ], [ %i.fc, %.lr.ph1168 ]
end_hunk_3
begin_hunk_4_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %.77111216 = phi ptr [ %i.ks, %.lr.ph1218 ], [ %.67101233, %bb.i ] ; 2 uses
  %.07321215 = phi ptr [ %i.kr, %.lr.ph1218 ], [ %.06951263, %bb.i ] ; 2 uses
  %.07341214 = phi i32 [ %i.kt, %.lr.ph1218 ], [ 0, %bb.i ]
  %i.jy = phi <4 x i32> [ %i.kq, %.lr.ph1218 ], [ %i.jv, %bb.i ]
  %i.jz = phi <4 x i32> [ %i.kn, %.lr.ph1218 ], [ %i.ju, %bb.i ]
  %i.ka = load i64, ptr %.07321215, align 1, !tbaa !113
  %i.kb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ka, i64 0
  %i.kc = load float, ptr %.77111216, align 1, !tbaa !113
  %i.kd = insertelement <4 x float> poison, float %i.kc, i64 0
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kf = bitcast <2 x i64> %i.kb to <16 x i8>    ; 2 uses
  %.lobit.i839 = ashr <16 x i8> %i.kf, splat (i8 7)
  %i.kg = shufflevector <16 x i8> %i.kf, <16 x i8> %.lobit.i839, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.kh = bitcast <4 x float> %i.ke to <16 x i8>  ; 2 uses
  %.lobit.i838 = ashr <16 x i8> %i.kh, splat (i8 7)
  %i.ki = shufflevector <16 x i8> %i.kh, <16 x i8> %.lobit.i838, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %.cast = bitcast <16 x i8> %i.ki to <4 x i32>
  %i.kj = shufflevector <4 x i32> %.cast, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.kk = bitcast <16 x i8> %i.kg to <8 x i16>    ; 2 uses
  %i.kl = bitcast <16 x i8> %i.ki to <8 x i16>
  %i.km = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kk, <8 x i16> %i.kl)
  %i.kn = add <4 x i32> %i.km, %i.jz              ; 2 uses
  %i.ko = bitcast <4 x i32> %i.kj to <8 x i16>
  %i.kp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kk, <8 x i16> %i.ko)
  %i.kq = add <4 x i32> %i.kp, %i.jy              ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.07321215, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %.77111216, i64 4
  %i.kt = add nuw nsw i32 %.07341214, 2           ; 2 uses
  %i.ku = or disjoint i32 %i.kt, 1
  %i.kv = icmp slt i32 %i.ku, %8
  br i1 %i.kv, label %.lr.ph1218, label %.preheader1098.loopexit, !llvm.loop !525

.lr.ph1227:                                       ; preds = %.preheader1098, %.lr.ph1227
  %.87121226 = phi ptr [ %i.lu, %.lr.ph1227 ], [ %.7711.lcssa, %.preheader1098 ] ; 2 uses
  %.17331225 = phi ptr [ %i.lt, %.lr.ph1227 ], [ %.0732.lcssa, %.preheader1098 ] ; 2 uses
  %.17351224 = phi i32 [ %i.lv, %.lr.ph1227 ], [ %.0734.lcssa, %.preheader1098 ]
  %i.kw = phi <4 x i32> [ %i.ls, %.lr.ph1227 ], [ %.lcssa1146, %.preheader1098 ]
  %i.kx = phi <4 x i32> [ %i.lq, %.lr.ph1227 ], [ %.lcssa1147, %.preheader1098 ]
  %i.ky = load float, ptr %.17331225, align 1, !tbaa !113
  %i.kz = insertelement <4 x float> poison, float %i.ky, i64 0
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lb = load i16, ptr %.87121226, align 2, !tbaa !526
  %i.lc = insertelement <8 x i16> poison, i16 %i.lb, i64 0
  %i.ld = shufflevector <8 x i16> %i.lc, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.le = bitcast <4 x float> %i.la to <16 x i8>  ; 2 uses
  %.lobit.i837 = ashr <16 x i8> %i.le, splat (i8 7)
  %i.lf = shufflevector <16 x i8> %i.le, <16 x i8> %.lobit.i837, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lg = bitcast <8 x i16> %i.ld to <16 x i8>    ; 2 uses
  %.lobit.i836 = ashr <16 x i8> %i.lg, splat (i8 7)
  %i.lh = shufflevector <16 x i8> %i.lg, <16 x i8> %.lobit.i836, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.li = bitcast <16 x i8> %i.lh to <8 x i16>
  %i.lj = shufflevector <8 x i16> %i.li, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 5, i32 4> ; 2 uses
  %i.lk = bitcast <16 x i8> %i.lf to <8 x i16>    ; 2 uses
  %i.ll = mul <8 x i16> %i.lj, %i.lk              ; 2 uses
  %i.lm = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.lk, <8 x i16> %i.lj) ; 2 uses
  %i.ln = shufflevector <8 x i16> %i.ll, <8 x i16> %i.lm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lo = shufflevector <8 x i16> %i.ll, <8 x i16> %i.lm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lp = bitcast <8 x i16> %i.ln to <4 x i32>
  %i.lq = add <4 x i32> %i.kx, %i.lp              ; 2 uses
  %i.lr = bitcast <8 x i16> %i.lo to <4 x i32>
  %i.ls = add <4 x i32> %i.kw, %i.lr              ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.17331225, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %.87121226, i64 2 ; 2 uses
  %i.lv = add nuw nsw i32 %.17351224, 1           ; 2 uses
  %exitcond1686.not = icmp eq i32 %i.lv, %8
  br i1 %exitcond1686.not, label %._crit_edge1228, label %.lr.ph1227, !llvm.loop !528

._crit_edge1228:                                  ; preds = %.lr.ph1227, %.preheader1098
  %.lcssa1149 = phi <4 x i32> [ %.lcssa1147, %.preheader1098 ], [ %i.lq, %.lr.ph1227 ]
  %.lcssa1148 = phi <4 x i32> [ %.lcssa1146, %.preheader1098 ], [ %i.ls, %.lr.ph1227 ]
  %.8712.lcssa = phi ptr [ %.7711.lcssa, %.preheader1098 ], [ %i.lu, %.lr.ph1227 ] ; 2 uses
  store <4 x i32> %.lcssa1149, ptr %.31234, align 16, !tbaa !113
  %i.lw = getelementptr inbounds nuw i8, ptr %.31234, i64 16
  store <4 x i32> %.lcssa1148, ptr %i.lw, align 16, !tbaa !113
  %i.lx = getelementptr inbounds nuw i8, ptr %.31234, i64 32 ; 2 uses
  %i.ly = add nuw nsw i32 %.27181232, 2           ; 3 uses
  %i.lz = or disjoint i32 %i.ly, 1
  %i.ma = icmp slt i32 %i.lz, %6
  br i1 %i.ma, label %.lr.ph1235, label %.preheader1101, !llvm.loop !529

.lr.ph1258:                                       ; preds = %.preheader1101, %._crit_edge1252
  %.41257 = phi ptr [ %i.nq, %._crit_edge1252 ], [ %.3.lcssa, %.preheader1101 ] ; 3 uses
  %.97131256 = phi ptr [ %.11715.lcssa, %._crit_edge1252 ], [ %.6710.lcssa, %.preheader1101 ] ; 3 uses
  %.37191255 = phi i32 [ %i.nr, %._crit_edge1252 ], [ %.2718.lcssa, %.preheader1101 ]
  br i1 %i.g, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph1258
  %i.mb = load <4 x i32>, ptr %.41257, align 16, !tbaa !113
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph1258, %bb.j
  %i.mc = phi <4 x i32> [ %i.mb, %bb.j ], [ zeroinitializer, %.lr.ph1258 ] ; 2 uses
  br i1 %i.h, label %.lr.ph1243, label %.preheader1097

.preheader1097.loopexit:                          ; preds = %.lr.ph1243
  %i.md = getelementptr i8, ptr %.97131256, i64 %i.t
  %scevgep1687 = getelementptr i8, ptr %i.md, i64 2
  br label %.preheader1097

.preheader1097:                                   ; preds = %.preheader1097.loopexit, %bb.k
  %.lcssa1150 = phi <4 x i32> [ %i.mc, %bb.k ], [ %i.ms, %.preheader1097.loopexit ] ; 2 uses
  %.0738.lcssa = phi i32 [ 0, %bb.k ], [ %i.m, %.preheader1097.loopexit ] ; 2 uses
  %.0736.lcssa = phi ptr [ %.06951263, %bb.k ], [ %indvars.iv, %.preheader1097.loopexit ]
  %.10714.lcssa = phi ptr [ %.97131256, %bb.k ], [ %scevgep1687, %.preheader1097.loopexit ] ; 2 uses
  %i.me = icmp slt i32 %.0738.lcssa, %8
  br i1 %i.me, label %.lr.ph1251, label %._crit_edge1252

.lr.ph1243:                                       ; preds = %bb.k, %.lr.ph1243
  %.107141241 = phi ptr [ %i.mu, %.lr.ph1243 ], [ %.97131256, %bb.k ] ; 2 uses
  %.07361240 = phi ptr [ %i.mt, %.lr.ph1243 ], [ %.06951263, %bb.k ] ; 2 uses
  %.07381239 = phi i32 [ %i.mv, %.lr.ph1243 ], [ 0, %bb.k ]
  %i.mf = phi <4 x i32> [ %i.ms, %.lr.ph1243 ], [ %i.mc, %bb.k ]
  %i.mg = load i64, ptr %.07361240, align 1, !tbaa !113
  %i.mh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.mg, i64 0
  %i.mi = load i16, ptr %.107141241, align 2, !tbaa !526
  %i.mj = insertelement <8 x i16> poison, i16 %i.mi, i64 0
  %i.mk = shufflevector <8 x i16> %i.mj, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ml = bitcast <2 x i64> %i.mh to <16 x i8>    ; 2 uses
  %.lobit.i835 = ashr <16 x i8> %i.ml, splat (i8 7)
  %i.mm = shufflevector <16 x i8> %i.ml, <16 x i8> %.lobit.i835, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.mn = bitcast <8 x i16> %i.mk to <16 x i8>    ; 2 uses
  %.lobit.i834 = ashr <16 x i8> %i.mn, splat (i8 7)
  %i.mo = shufflevector <16 x i8> %i.mn, <16 x i8> %.lobit.i834, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.mp = bitcast <16 x i8> %i.mm to <8 x i16>
  %i.mq = bitcast <16 x i8> %i.mo to <8 x i16>
  %i.mr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.mp, <8 x i16> %i.mq)
  %i.ms = add <4 x i32> %i.mr, %i.mf              ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.07361240, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %.107141241, i64 2
  %i.mv = add nuw nsw i32 %.07381239, 2           ; 2 uses
  %i.mw = or disjoint i32 %i.mv, 1
  %i.mx = icmp slt i32 %i.mw, %8
  br i1 %i.mx, label %.lr.ph1243, label %.preheader1097.loopexit, !llvm.loop !530

.lr.ph1251:                                       ; preds = %.preheader1097, %.lr.ph1251
  %.117151250 = phi ptr [ %i.no, %.lr.ph1251 ], [ %.10714.lcssa, %.preheader1097 ] ; 2 uses
  %.17371249 = phi ptr [ %i.nn, %.lr.ph1251 ], [ %.0736.lcssa, %.preheader1097 ] ; 2 uses
  %.17391248 = phi i32 [ %i.np, %.lr.ph1251 ], [ %.0738.lcssa, %.preheader1097 ]
  %i.my = phi <4 x i32> [ %i.nm, %.lr.ph1251 ], [ %.lcssa1150, %.preheader1097 ]
  %i.mz = load i64, ptr %.17371249, align 1, !tbaa !113
  %i.na = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.mz, i64 0
  %i.nb = load i8, ptr %.117151250, align 1, !tbaa !113
  %i.nc = sext i8 %i.nb to i16
  %i.nd = insertelement <8 x i16> poison, i16 %i.nc, i64 0
  %i.ne = shufflevector <8 x i16> %i.nd, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.nf = bitcast <2 x i64> %i.na to <16 x i8>    ; 2 uses
  %.lobit.i833 = ashr <16 x i8> %i.nf, splat (i8 7)
  %i.ng = shufflevector <16 x i8> %i.nf, <16 x i8> %.lobit.i833, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.nh = bitcast <16 x i8> %i.ng to <8 x i16>    ; 2 uses
  %i.ni = mul <8 x i16> %i.ne, %i.nh
  %i.nj = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.nh, <8 x i16> %i.ne)
  %i.nk = shufflevector <8 x i16> %i.ni, <8 x i16> %i.nj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nl = bitcast <8 x i16> %i.nk to <4 x i32>
  %i.nm = add <4 x i32> %i.my, %i.nl              ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.17371249, i64 4
  %i.no = getelementptr inbounds nuw i8, ptr %.117151250, i64 1 ; 2 uses
  %i.np = add nuw nsw i32 %.17391248, 1           ; 2 uses
  %exitcond1688.not = icmp eq i32 %i.np, %8
  br i1 %exitcond1688.not, label %._crit_edge1252, label %.lr.ph1251, !llvm.loop !531

._crit_edge1252:                                  ; preds = %.lr.ph1251, %.preheader1097
  %.lcssa1151 = phi <4 x i32> [ %.lcssa1150, %.preheader1097 ], [ %i.nm, %.lr.ph1251 ]
  %.11715.lcssa = phi ptr [ %.10714.lcssa, %.preheader1097 ], [ %i.no, %.lr.ph1251 ]
  store <4 x i32> %.lcssa1151, ptr %.41257, align 16, !tbaa !113
  %i.nq = getelementptr inbounds nuw i8, ptr %.41257, i64 16 ; 2 uses
  %i.nr = add nuw nsw i32 %.37191255, 1           ; 2 uses
  %exitcond1689.not = icmp eq i32 %i.nr, %6
  br i1 %exitcond1689.not, label %._crit_edge1259, label %.lr.ph1258, !llvm.loop !532

._crit_edge1259:                                  ; preds = %._crit_edge1252, %.preheader1101
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader1101 ], [ %i.nq, %._crit_edge1252 ] ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %.06951263, i64 %i.j ; 2 uses
  %i.nt = add nuw nsw i32 %.07011261, 4           ; 2 uses
  %i.nu = or disjoint i32 %i.nt, 3
  %i.nv = icmp slt i32 %i.nu, %4
  %scevgep1684 = getelementptr i8, ptr %indvars.iv, i64 %i.j
  br i1 %i.nv, label %.preheader1104, label %.preheader1096.loopexit, !llvm.loop !533

.preheader1095:                                   ; preds = %.preheader1095.lr.ph, %._crit_edge1384
  %indvars.iv1694 = phi ptr [ %scevgep1693, %.preheader1095.lr.ph ], [ %scevgep1695, %._crit_edge1384 ] ; 3 uses
  %.16961388 = phi ptr [ %.0695.lcssa, %.preheader1095.lr.ph ], [ %i.acj, %._crit_edge1384 ] ; 9 uses
  %.51387 = phi ptr [ %.0698.lcssa, %.preheader1095.lr.ph ], [ %.9.lcssa, %._crit_edge1384 ] ; 2 uses
  %.17021386 = phi i32 [ %.0701.lcssa, %.preheader1095.lr.ph ], [ %i.ack, %._crit_edge1384 ]
  br i1 %i.x, label %.lr.ph1292, label %.preheader1094

.preheader1087:                                   ; preds = %._crit_edge1384, %.preheader1096
  %.1702.lcssa = phi i32 [ %.0701.lcssa, %.preheader1096 ], [ %i.ack, %._crit_edge1384 ] ; 2 uses
  %.5.lcssa = phi ptr [ %.0698.lcssa, %.preheader1096 ], [ %.9.lcssa, %._crit_edge1384 ]
  %.1696.lcssa = phi ptr [ %.0695.lcssa, %.preheader1096 ], [ %i.acj, %._crit_edge1384 ] ; 2 uses
  %i.nw = icmp slt i32 %.1702.lcssa, %4
  br i1 %i.nw, label %.preheader1086.lr.ph, label %.loopexit

.preheader1086.lr.ph:                             ; preds = %.preheader1087
  %i.nx = icmp sgt i32 %6, 7
  %i.ny = icmp eq i32 %7, 0                       ; 4 uses
  %i.nz = icmp sgt i32 %8, 1                      ; 3 uses
  %i.oa = icmp sgt i32 %8, 3
  %i.ob = sext i32 %8 to i64                      ; 2 uses
  %i.oc = add i32 %8, -2                          ; 2 uses
  %i.od = and i32 %i.oc, -2
  %i.oe = add i32 %i.od, 2                        ; 3 uses
  %i.of = and i32 %6, -8
  %i.og = zext i32 %i.oc to i64                   ; 2 uses
  %i.oh = lshr i64 %i.og, 1                       ; 2 uses
  %i.oi = shl nuw nsw i64 %i.oh, 3
  %i.oj = and i64 %i.og, 4294967294
  %i.ok = getelementptr i8, ptr %.1696.lcssa, i64 %i.oj
  %scevgep1704 = getelementptr i8, ptr %i.ok, i64 2
  %i.ol = shl nuw nsw i64 %i.oh, 2
  %i.om = and i32 %8, -4
  %i.on = add i32 %8, -4                          ; 2 uses
  %i.oo = lshr i32 %i.on, 2                       ; 2 uses
  %i.op = add nuw nsw i32 %i.oo, 1                ; 2 uses
  %i.oq = icmp eq i32 %i.oo, 0
  %unroll_iter = and i32 %i.op, 2147483646
  %i.or = and i32 %i.on, 4
  %lcmp.mod2115.not.not = icmp eq i32 %i.or, 0
  %lcmp.mod2119 = trunc i32 %i.op to i1
  br label %.preheader1086

.preheader1094:                                   ; preds = %._crit_edge1283, %.preheader1095
  %.0799.lcssa = phi i32 [ 0, %.preheader1095 ], [ %i.af, %._crit_edge1283 ] ; 3 uses
  %.0740.lcssa = phi ptr [ %i.c, %.preheader1095 ], [ %.2742.lcssa, %._crit_edge1283 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.51387, %.preheader1095 ], [ %i.rx, %._crit_edge1283 ] ; 2 uses
  %i.os = or disjoint i32 %.0799.lcssa, 3
  %i.ot = icmp slt i32 %i.os, %6
  br i1 %i.ot, label %.lr.ph1317, label %.preheader1093

.lr.ph1292:                                       ; preds = %.preheader1095, %._crit_edge1283
  %.61291 = phi ptr [ %i.rx, %._crit_edge1283 ], [ %.51387, %.preheader1095 ] ; 9 uses
  %.07401290 = phi ptr [ %.2742.lcssa, %._crit_edge1283 ], [ %i.c, %.preheader1095 ] ; 2 uses
  %.07991289 = phi i32 [ %i.ry, %._crit_edge1283 ], [ 0, %.preheader1095 ]
  br i1 %i.y, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph1292
  %i.ou = load <4 x i32>, ptr %.61291, align 16, !tbaa !113
  %i.ov = getelementptr inbounds nuw i8, ptr %.61291, i64 16
  %i.ow = load <4 x i32>, ptr %i.ov, align 16, !tbaa !113
  %i.ox = getelementptr inbounds nuw i8, ptr %.61291, i64 32
  %i.oy = load <4 x i32>, ptr %i.ox, align 16, !tbaa !113
  %i.oz = getelementptr inbounds nuw i8, ptr %.61291, i64 48
  %i.pa = load <4 x i32>, ptr %i.oz, align 16, !tbaa !113
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph1292, %bb.l
  %i.pb = phi <4 x i32> [ %i.ou, %bb.l ], [ zeroinitializer, %.lr.ph1292 ] ; 2 uses
  %i.pc = phi <4 x i32> [ %i.ow, %bb.l ], [ zeroinitializer, %.lr.ph1292 ] ; 2 uses
  %i.pd = phi <4 x i32> [ %i.oy, %bb.l ], [ zeroinitializer, %.lr.ph1292 ] ; 2 uses
  %i.pe = phi <4 x i32> [ %i.pa, %bb.l ], [ zeroinitializer, %.lr.ph1292 ] ; 2 uses
  br i1 %i.z, label %.lr.ph1271, label %.preheader1091

.preheader1091:                                   ; preds = %.lr.ph1271, %bb.m
  %.lcssa1113 = phi <4 x i32> [ %i.pb, %bb.m ], [ %i.px, %.lr.ph1271 ] ; 2 uses
  %.lcssa1112 = phi <4 x i32> [ %i.pc, %bb.m ], [ %i.qa, %.lr.ph1271 ] ; 2 uses
  %.lcssa1111 = phi <4 x i32> [ %i.pd, %bb.m ], [ %i.qd, %.lr.ph1271 ] ; 2 uses
  %.lcssa1110 = phi <4 x i32> [ %i.pe, %bb.m ], [ %i.qf, %.lr.ph1271 ] ; 2 uses
  %.0805.lcssa = phi i32 [ 0, %bb.m ], [ %i.ae, %.lr.ph1271 ] ; 2 uses
  %.0803.lcssa = phi ptr [ %.16961388, %bb.m ], [ %i.qg, %.lr.ph1271 ]
  %.1741.lcssa = phi ptr [ %.07401290, %bb.m ], [ %i.qh, %.lr.ph1271 ] ; 2 uses
  %i.pf = icmp slt i32 %.0805.lcssa, %8
  br i1 %i.pf, label %.lr.ph1282, label %._crit_edge1283

.lr.ph1271:                                       ; preds = %bb.m, %.lr.ph1271
  %.17411269 = phi ptr [ %i.qh, %.lr.ph1271 ], [ %.07401290, %bb.m ] ; 2 uses
  %.08031268 = phi ptr [ %i.qg, %.lr.ph1271 ], [ %.16961388, %bb.m ] ; 2 uses
  %.08051267 = phi i32 [ %i.qi, %.lr.ph1271 ], [ 0, %bb.m ]
  %i.pg = phi <4 x i32> [ %i.qf, %.lr.ph1271 ], [ %i.pe, %bb.m ]
  %i.ph = phi <4 x i32> [ %i.qd, %.lr.ph1271 ], [ %i.pd, %bb.m ]
  %i.pi = phi <4 x i32> [ %i.qa, %.lr.ph1271 ], [ %i.pc, %bb.m ]
  %i.pj = phi <4 x i32> [ %i.px, %.lr.ph1271 ], [ %i.pb, %bb.m ]
  %i.pk = load float, ptr %.08031268, align 1, !tbaa !113
  %i.pl = insertelement <4 x float> poison, float %i.pk, i64 0
  %i.pm = shufflevector <4 x float> %i.pl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pn = load <16 x i8>, ptr %.17411269, align 1, !tbaa !113 ; 3 uses
  %i.po = bitcast <4 x float> %i.pm to <16 x i8>  ; 2 uses
  %.lobit.i832 = ashr <16 x i8> %i.po, splat (i8 7)
  %i.pp = shufflevector <16 x i8> %i.po, <16 x i8> %.lobit.i832, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %.lobit.i831 = ashr <16 x i8> %i.pn, splat (i8 7) ; 2 uses
  %i.pq = shufflevector <16 x i8> %i.pn, <16 x i8> %.lobit.i831, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.pr = shufflevector <16 x i8> %i.pn, <16 x i8> %.lobit.i831, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ps = bitcast <16 x i8> %i.pp to <4 x i32>
  %i.pt = shufflevector <4 x i32> %i.ps, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.pu = bitcast <16 x i8> %i.pp to <8 x i16>    ; 2 uses
  %i.pv = bitcast <16 x i8> %i.pq to <8 x i16>    ; 2 uses
  %i.pw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.pu, <8 x i16> %i.pv)
  %i.px = add <4 x i32> %i.pw, %i.pj              ; 2 uses
  %i.py = bitcast <16 x i8> %i.pr to <8 x i16>    ; 2 uses
  %i.pz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.pu, <8 x i16> %i.py)
  %i.qa = add <4 x i32> %i.pz, %i.pi              ; 2 uses
  %i.qb = bitcast <4 x i32> %i.pt to <8 x i16>    ; 2 uses
  %i.qc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.qb, <8 x i16> %i.pv)
  %i.qd = add <4 x i32> %i.qc, %i.ph              ; 2 uses
  %i.qe = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.qb, <8 x i16> %i.py)
  %i.qf = add <4 x i32> %i.qe, %i.pg              ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.08031268, i64 4 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.17411269, i64 16 ; 2 uses
  %i.qi = add nuw nsw i32 %.08051267, 2           ; 2 uses
  %i.qj = or disjoint i32 %i.qi, 1
  %i.qk = icmp slt i32 %i.qj, %8
  br i1 %i.qk, label %.lr.ph1271, label %.preheader1091, !llvm.loop !534

.lr.ph1282:                                       ; preds = %.preheader1091, %.lr.ph1282
  %.27421281 = phi ptr [ %i.rs, %.lr.ph1282 ], [ %.1741.lcssa, %.preheader1091 ] ; 2 uses
  %.18041280 = phi ptr [ %i.rr, %.lr.ph1282 ], [ %.0803.lcssa, %.preheader1091 ] ; 2 uses
  %.18061279 = phi i32 [ %i.rt, %.lr.ph1282 ], [ %.0805.lcssa, %.preheader1091 ]
  %i.ql = phi <4 x i32> [ %i.rq, %.lr.ph1282 ], [ %.lcssa1110, %.preheader1091 ]
  %i.qm = phi <4 x i32> [ %i.ro, %.lr.ph1282 ], [ %.lcssa1111, %.preheader1091 ]
  %i.qn = phi <4 x i32> [ %i.rm, %.lr.ph1282 ], [ %.lcssa1112, %.preheader1091 ]
  %i.qo = phi <4 x i32> [ %i.rk, %.lr.ph1282 ], [ %.lcssa1113, %.preheader1091 ]
  %i.qp = load i16, ptr %.18041280, align 2, !tbaa !526
  %i.qq = insertelement <8 x i16> poison, i16 %i.qp, i64 0
  %i.qr = shufflevector <8 x i16> %i.qq, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.qs = load i64, ptr %.27421281, align 1, !tbaa !113
  %i.qt = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.qs, i64 0
  %i.qu = bitcast <8 x i16> %i.qr to <16 x i8>    ; 2 uses
  %.lobit.i830 = ashr <16 x i8> %i.qu, splat (i8 7)
  %i.qv = shufflevector <16 x i8> %i.qu, <16 x i8> %.lobit.i830, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.qw = bitcast <2 x i64> %i.qt to <16 x i8>    ; 2 uses
  %.lobit.i829 = ashr <16 x i8> %i.qw, splat (i8 7)
  %i.qx = shufflevector <16 x i8> %i.qw, <16 x i8> %.lobit.i829, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.qy = bitcast <16 x i8> %i.qv to <8 x i16>    ; 3 uses
  %i.qz = shufflevector <8 x i16> %i.qy, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.ra = bitcast <16 x i8> %i.qx to <8 x i16>    ; 4 uses
  %i.rb = mul <8 x i16> %i.qy, %i.ra              ; 2 uses
  %i.rc = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.qy, <8 x i16> %i.ra) ; 2 uses
  %i.rd = mul <8 x i16> %i.qz, %i.ra              ; 2 uses
  %i.re = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.qz, <8 x i16> %i.ra) ; 2 uses
  %i.rf = shufflevector <8 x i16> %i.rb, <8 x i16> %i.rc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rg = shufflevector <8 x i16> %i.rb, <8 x i16> %i.rc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rh = shufflevector <8 x i16> %i.rd, <8 x i16> %i.re, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ri = shufflevector <8 x i16> %i.rd, <8 x i16> %i.re, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rj = bitcast <8 x i16> %i.rf to <4 x i32>
  %i.rk = add <4 x i32> %i.qo, %i.rj              ; 2 uses
  %i.rl = bitcast <8 x i16> %i.rg to <4 x i32>
  %i.rm = add <4 x i32> %i.qn, %i.rl              ; 2 uses
  %i.rn = bitcast <8 x i16> %i.rh to <4 x i32>
  %i.ro = add <4 x i32> %i.qm, %i.rn              ; 2 uses
  %i.rp = bitcast <8 x i16> %i.ri to <4 x i32>
  %i.rq = add <4 x i32> %i.ql, %i.rp              ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.18041280, i64 2
  %i.rs = getelementptr inbounds nuw i8, ptr %.27421281, i64 8 ; 2 uses
  %i.rt = add nuw nsw i32 %.18061279, 1           ; 2 uses
  %exitcond1690.not = icmp eq i32 %i.rt, %8
  br i1 %exitcond1690.not, label %._crit_edge1283, label %.lr.ph1282, !llvm.loop !535

._crit_edge1283:                                  ; preds = %.lr.ph1282, %.preheader1091
  %.lcssa1117 = phi <4 x i32> [ %.lcssa1113, %.preheader1091 ], [ %i.rk, %.lr.ph1282 ]
  %.lcssa1116 = phi <4 x i32> [ %.lcssa1112, %.preheader1091 ], [ %i.rm, %.lr.ph1282 ]
  %.lcssa1115 = phi <4 x i32> [ %.lcssa1111, %.preheader1091 ], [ %i.ro, %.lr.ph1282 ]
  %.lcssa1114 = phi <4 x i32> [ %.lcssa1110, %.preheader1091 ], [ %i.rq, %.lr.ph1282 ]
  %.2742.lcssa = phi ptr [ %.1741.lcssa, %.preheader1091 ], [ %i.rs, %.lr.ph1282 ] ; 2 uses
  store <4 x i32> %.lcssa1117, ptr %.61291, align 16, !tbaa !113
  %i.ru = getelementptr inbounds nuw i8, ptr %.61291, i64 16
  store <4 x i32> %.lcssa1116, ptr %i.ru, align 16, !tbaa !113
  %i.rv = getelementptr inbounds nuw i8, ptr %.61291, i64 32
  store <4 x i32> %.lcssa1115, ptr %i.rv, align 16, !tbaa !113
  %i.rw = getelementptr inbounds nuw i8, ptr %.61291, i64 48
  store <4 x i32> %.lcssa1114, ptr %i.rw, align 16, !tbaa !113
  %i.rx = getelementptr inbounds nuw i8, ptr %.61291, i64 64 ; 2 uses
  %i.ry = add nuw nsw i32 %.07991289, 8           ; 2 uses
  %i.rz = or disjoint i32 %i.ry, 7
  %i.sa = icmp slt i32 %i.rz, %6
  br i1 %i.sa, label %.lr.ph1292, label %.preheader1094, !llvm.loop !536

.preheader1093:                                   ; preds = %._crit_edge1310, %.preheader1094
  %.1800.lcssa = phi i32 [ %.0799.lcssa, %.preheader1094 ], [ %i.ul, %._crit_edge1310 ] ; 3 uses
  %.3743.lcssa = phi ptr [ %.0740.lcssa, %.preheader1094 ], [ %.5745.lcssa, %._crit_edge1310 ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6.lcssa, %.preheader1094 ], [ %i.uk, %._crit_edge1310 ] ; 2 uses
  %i.sb = or disjoint i32 %.1800.lcssa, 1
  %i.sc = icmp slt i32 %i.sb, %6
  br i1 %i.sc, label %.lr.ph1354, label %.preheader1092

.lr.ph1317:                                       ; preds = %.preheader1094, %._crit_edge1310
  %.71316 = phi ptr [ %i.uk, %._crit_edge1310 ], [ %.6.lcssa, %.preheader1094 ] ; 5 uses
  %.37431315 = phi ptr [ %.5745.lcssa, %._crit_edge1310 ], [ %.0740.lcssa, %.preheader1094 ] ; 3 uses
  %.18001314 = phi i32 [ %i.ul, %._crit_edge1310 ], [ %.0799.lcssa, %.preheader1094 ]
  br i1 %i.y, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph1317
  %i.sd = load <4 x i32>, ptr %.71316, align 16, !tbaa !113
  %i.se = getelementptr inbounds nuw i8, ptr %.71316, i64 16
  %i.sf = load <4 x i32>, ptr %i.se, align 16, !tbaa !113
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph1317, %bb.n
  %i.sg = phi <4 x i32> [ %i.sd, %bb.n ], [ zeroinitializer, %.lr.ph1317 ] ; 2 uses
  %i.sh = phi <4 x i32> [ %i.sf, %bb.n ], [ zeroinitializer, %.lr.ph1317 ] ; 2 uses
  br i1 %i.z, label %.lr.ph1300, label %.preheader1090

.preheader1090.loopexit:                          ; preds = %.lr.ph1300
  %i.si = getelementptr i8, ptr %.37431315, i64 %i.ai
  %scevgep1691 = getelementptr i8, ptr %i.si, i64 8
  br label %.preheader1090

.preheader1090:                                   ; preds = %.preheader1090.loopexit, %bb.o
  %.lcssa1119 = phi <4 x i32> [ %i.sg, %bb.o ], [ %i.ta, %.preheader1090.loopexit ] ; 2 uses
  %.lcssa1118 = phi <4 x i32> [ %i.sh, %bb.o ], [ %i.td, %.preheader1090.loopexit ] ; 2 uses
  %.0809.lcssa = phi i32 [ 0, %bb.o ], [ %i.ae, %.preheader1090.loopexit ] ; 2 uses
  %.0807.lcssa = phi ptr [ %.16961388, %bb.o ], [ %i.te, %.preheader1090.loopexit ]
  %.4744.lcssa = phi ptr [ %.37431315, %bb.o ], [ %scevgep1691, %.preheader1090.loopexit ] ; 2 uses
  %i.sj = icmp slt i32 %.0809.lcssa, %8
end_hunk_4
begin_hunk_5_@_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %.128194.i.us, i64 %.idx312.i
  %i.bq = load <4 x float>, ptr %i.bp, align 16, !tbaa !113
  %i.br = fmul fast <4 x float> %i.bo, %i.p       ; 2 uses
  %i.bs = fmul fast <4 x float> %i.bq, %i.p       ; 2 uses
  %i.bt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.br)
  %i.bu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bs)
  %i.bv = fadd fast <4 x float> %i.bt, %i.br
  %i.bw = fadd fast <4 x float> %i.bu, %i.bs
  %i.bx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bv)
  %i.by = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bw)
  %i.bz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bx, <4 x i32> %i.by)
  %i.ca = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bz, <8 x i16> splat (i16 -127))
  %i.cb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ca, <8 x i16> splat (i16 127))
  %i.cc = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cb, <8 x i16> poison)
  %i.cd = bitcast <16 x i8> %i.cc to <2 x i64>
  %i.ce = extractelement <2 x i64> %i.cd, i64 0
  store i64 %i.ce, ptr %.295.i.us, align 8, !tbaa !581
  %i.cf = getelementptr inbounds nuw i8, ptr %.295.i.us, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.128194.i.us, i64 16
  %i.ch = add nuw nsw i32 %.128693.i.us, 1        ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.ch, %4
  br i1 %exitcond.not.i.us, label %.loopexit83.i.us, label %.lr.ph96.i.us, !llvm.loop !582

.loopexit83.i.us:                                 ; preds = %.lr.ph96.i.us, %.preheader85.i.us
  %.6.i.us = phi ptr [ %.1.lcssa.i.us, %.preheader85.i.us ], [ %i.cf, %.lr.ph96.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 8 ; 3 uses
  %i.ci = or disjoint i64 %indvars.iv.next.i.us, 7
  %i.cj = icmp samesign ult i64 %i.ci, %i.s
  br i1 %i.cj, label %.preheader87.i.us, label %.preheader81.loopexit.i, !llvm.loop !583

.preheader84.i.us:                                ; preds = %.lr.ph113.i, %.loopexit83.i.us27
  %indvars.iv.i.us25 = phi i64 [ %indvars.iv.next.i.us29, %.loopexit83.i.us27 ], [ 0, %.lr.ph113.i ] ; 2 uses
  %.0112.i.us26 = phi ptr [ %.6.i.us28, %.loopexit83.i.us27 ], [ %.0.val, %.lr.ph113.i ] ; 2 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !18
  %i.cl = add nsw i64 %indvars.iv.i.us25, %i.t
  %i.cm = mul i64 %i.cl, %i.k
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cm
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.n ; 2 uses
  br i1 %i.q, label %.lr.ph102.i.us, label %.preheader82.i.us

.lr.ph102.i.us:                                   ; preds = %.preheader84.i.us, %.lr.ph102.i.us
  %.4101.i.us = phi ptr [ %i.ef, %.lr.ph102.i.us ], [ %.0112.i.us26, %.preheader84.i.us ] ; 2 uses
  %.3283100.i.us = phi ptr [ %i.eg, %.lr.ph102.i.us ], [ %i.co, %.preheader84.i.us ] ; 9 uses
  %.028799.i.us = phi i32 [ %i.eh, %.lr.ph102.i.us ], [ 0, %.preheader84.i.us ]
  %i.cp = load <2 x float>, ptr %.3283100.i.us, align 4, !tbaa !68
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.3283100.i.us, i64 %i.k
  %i.cr = load <2 x float>, ptr %i.cq, align 4, !tbaa !68
  %i.cs = shufflevector <2 x float> %i.cp, <2 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ct = getelementptr inbounds nuw i8, ptr %.3283100.i.us, i64 %.idx66.i
  %i.cu = load <2 x float>, ptr %i.ct, align 4, !tbaa !68
  %i.cv = getelementptr inbounds nuw i8, ptr %.3283100.i.us, i64 %.idx67.i
  %i.cw = load <2 x float>, ptr %i.cv, align 4, !tbaa !68
  %i.cx = shufflevector <2 x float> %i.cu, <2 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cy = getelementptr inbounds nuw i8, ptr %.3283100.i.us, i64 %.idx312.i
  %i.cz = load <2 x float>, ptr %i.cy, align 4, !tbaa !68
  %i.da = getelementptr inbounds nuw i8, ptr %.3283100.i.us, i64 %.idx69.i
  %i.db = load <2 x float>, ptr %i.da, align 4, !tbaa !68
  %i.dc = shufflevector <2 x float> %i.cz, <2 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dd = getelementptr inbounds nuw i8, ptr %.3283100.i.us, i64 %.idx70.i
  %i.de = load <2 x float>, ptr %i.dd, align 4, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %.3283100.i.us, i64 %.idx71.i
  %i.dg = load <2 x float>, ptr %i.df, align 4, !tbaa !68
  %i.dh = shufflevector <2 x float> %i.de, <2 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.di = fmul fast <4 x float> %i.cs, %i.p       ; 2 uses
  %i.dj = fmul fast <4 x float> %i.cx, %i.p       ; 2 uses
  %i.dk = fmul fast <4 x float> %i.dc, %i.p       ; 2 uses
  %i.dl = fmul fast <4 x float> %i.dh, %i.p       ; 2 uses
  %i.dm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.di)
  %i.dn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dj)
  %i.do = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dk)
  %i.dp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dl)
  %i.dq = fadd fast <4 x float> %i.dm, %i.di
  %i.dr = fadd fast <4 x float> %i.dn, %i.dj
  %i.ds = fadd fast <4 x float> %i.do, %i.dk
  %i.dt = fadd fast <4 x float> %i.dp, %i.dl
  %i.du = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dq)
  %i.dv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dr)
  %i.dw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ds)
  %i.dx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dt)
  %i.dy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.du, <4 x i32> %i.dv)
  %i.dz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dw, <4 x i32> %i.dx)
  %i.ea = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dy, <8 x i16> splat (i16 -127))
  %i.eb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ea, <8 x i16> splat (i16 127))
  %i.ec = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dz, <8 x i16> splat (i16 -127))
  %i.ed = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ec, <8 x i16> splat (i16 127))
  %i.ee = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.eb, <8 x i16> %i.ed)
  store <16 x i8> %i.ee, ptr %.4101.i.us, align 1, !tbaa !113
  %i.ef = getelementptr inbounds nuw i8, ptr %.4101.i.us, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.3283100.i.us, i64 8 ; 2 uses
  %i.eh = add nuw nsw i32 %.028799.i.us, 2        ; 2 uses
  %i.ei = or disjoint i32 %i.eh, 1
  %i.ej = icmp slt i32 %i.ei, %4
  br i1 %i.ej, label %.lr.ph102.i.us, label %.preheader82.i.us, !llvm.loop !584

.preheader82.i.us:                                ; preds = %.lr.ph102.i.us, %.preheader84.i.us
  %.0287.lcssa.i.us = phi i32 [ 0, %.preheader84.i.us ], [ %i.r, %.lr.ph102.i.us ] ; 2 uses
  %.3283.lcssa.i.us = phi ptr [ %i.co, %.preheader84.i.us ], [ %i.eg, %.lr.ph102.i.us ]
  %.4.lcssa.i.us = phi ptr [ %.0112.i.us26, %.preheader84.i.us ], [ %i.ef, %.lr.ph102.i.us ] ; 2 uses
  %i.ek = icmp slt i32 %.0287.lcssa.i.us, %4
  br i1 %i.ek, label %.lr.ph109.i.us, label %.loopexit83.i.us27

.lr.ph109.i.us:                                   ; preds = %.preheader82.i.us, %.lr.ph109.i.us
  %.5108.i.us = phi ptr [ %i.fw, %.lr.ph109.i.us ], [ %.4.lcssa.i.us, %.preheader82.i.us ] ; 2 uses
  %.4284107.i.us = phi ptr [ %i.fx, %.lr.ph109.i.us ], [ %.3283.lcssa.i.us, %.preheader82.i.us ] ; 9 uses
  %.1288106.i.us = phi i32 [ %i.fy, %.lr.ph109.i.us ], [ %.0287.lcssa.i.us, %.preheader82.i.us ]
  %i.el = load float, ptr %.4284107.i.us, align 4, !tbaa !68
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.4284107.i.us, i64 %i.k
  %i.en = load float, ptr %i.em, align 4, !tbaa !68
  %i.eo = getelementptr inbounds nuw i8, ptr %.4284107.i.us, i64 %.idx66.i
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !68
  %i.eq = getelementptr inbounds nuw i8, ptr %.4284107.i.us, i64 %.idx67.i
  %i.er = load float, ptr %i.eq, align 4, !tbaa !68
  %i.es = insertelement <4 x float> poison, float %i.el, i64 0
  %i.et = insertelement <4 x float> %i.es, float %i.en, i64 1
  %i.eu = insertelement <4 x float> %i.et, float %i.ep, i64 2
  %i.ev = insertelement <4 x float> %i.eu, float %i.er, i64 3
  %i.ew = getelementptr inbounds nuw i8, ptr %.4284107.i.us, i64 %.idx312.i
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !68
  %i.ey = getelementptr inbounds nuw i8, ptr %.4284107.i.us, i64 %.idx69.i
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !68
  %i.fa = getelementptr inbounds nuw i8, ptr %.4284107.i.us, i64 %.idx70.i
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !68
  %i.fc = getelementptr inbounds nuw i8, ptr %.4284107.i.us, i64 %.idx71.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !68
  %i.fe = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.ff = insertelement <4 x float> %i.fe, float %i.ez, i64 1
  %i.fg = insertelement <4 x float> %i.ff, float %i.fb, i64 2
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 3
  %i.fi = fmul fast <4 x float> %i.ev, %i.p       ; 2 uses
  %i.fj = fmul fast <4 x float> %i.fh, %i.p       ; 2 uses
  %i.fk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fi)
  %i.fl = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fj)
  %i.fm = fadd fast <4 x float> %i.fk, %i.fi
  %i.fn = fadd fast <4 x float> %i.fl, %i.fj
  %i.fo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fm)
  %i.fp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fn)
  %i.fq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fo, <4 x i32> %i.fp)
  %i.fr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fq, <8 x i16> splat (i16 -127))
  %i.fs = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.fr, <8 x i16> splat (i16 127))
  %i.ft = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.fs, <8 x i16> poison)
  %i.fu = bitcast <16 x i8> %i.ft to <2 x i64>
  %i.fv = extractelement <2 x i64> %i.fu, i64 0
  store i64 %i.fv, ptr %.5108.i.us, align 8, !tbaa !581
  %i.fw = getelementptr inbounds nuw i8, ptr %.5108.i.us, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.4284107.i.us, i64 4
  %i.fy = add nuw nsw i32 %.1288106.i.us, 1       ; 2 uses
  %exitcond219.not.i.us = icmp eq i32 %i.fy, %4
  br i1 %exitcond219.not.i.us, label %.loopexit83.i.us27, label %.lr.ph109.i.us, !llvm.loop !585

.loopexit83.i.us27:                               ; preds = %.lr.ph109.i.us, %.preheader82.i.us
  %.6.i.us28 = phi ptr [ %.4.lcssa.i.us, %.preheader82.i.us ], [ %i.fw, %.lr.ph109.i.us ] ; 2 uses
  %indvars.iv.next.i.us29 = add nuw nsw i64 %indvars.iv.i.us25, 8 ; 3 uses
  %i.fz = or disjoint i64 %indvars.iv.next.i.us29, 7
  %i.ga = icmp samesign ult i64 %i.fz, %i.s
  br i1 %i.ga, label %.preheader84.i.us, label %.preheader81.loopexit.i, !llvm.loop !583

.preheader81.loopexit.i:                          ; preds = %.loopexit83.i.us27, %.loopexit83.i.us, %.loopexit83.i.preheader
  %.us-phi = phi ptr [ %.0.val, %.loopexit83.i.preheader ], [ %.6.i.us, %.loopexit83.i.us ], [ %.6.i.us28, %.loopexit83.i.us27 ]
  %.us-phi23 = phi i64 [ %i.u, %.loopexit83.i.preheader ], [ %indvars.iv.next.i.us, %.loopexit83.i.us ], [ %indvars.iv.next.i.us29, %.loopexit83.i.us27 ]
  %i.gb = trunc nuw nsw i64 %.us-phi23 to i32
  br label %.preheader81.i

.preheader81.i:                                   ; preds = %.preheader81.loopexit.i, %bb.a
  %.0274.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.gb, %.preheader81.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.val, %bb.a ], [ %.us-phi, %.preheader81.loopexit.i ] ; 4 uses
  %i.gc = or disjoint i32 %.0274.lcssa.i, 3
  %i.gd = icmp slt i32 %i.gc, %2
  br i1 %i.gd, label %.lr.ph143.i, label %.preheader75.i

.lr.ph143.i:                                      ; preds = %.preheader81.i
  %i.ge = load ptr, ptr %0, align 8, !tbaa !18
  %i.gf = mul nsw i32 %i.b, %3
  %i.gg = sext i32 %i.gf to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ge, i64 %i.gg ; 2 uses
  %i.gh = insertelement <4 x float> poison, float %5, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.gj = icmp sgt i32 %4, 1                      ; 2 uses
  %.idx64.i = shl i64 %i.k, 3                     ; 2 uses
  %.idx65.i = mul i64 %i.k, 12                    ; 2 uses
  %i.gk = and i32 %4, -2                          ; 2 uses
  %i.gl = zext i32 %.0274.lcssa.i to i64          ; 5 uses
  %i.gm = sext i32 %2 to i64
  %i.gn = sext i32 %1 to i64                      ; 2 uses
  %invariant.op.i = add nsw i64 %i.gm, -3         ; 3 uses
  switch i32 %i.b, label %.loopexit.i.preheader [
    i32 4, label %.preheader80.i.us.preheader
    i32 1, label %.preheader77.i.us
  ]

.preheader80.i.us.preheader:                      ; preds = %.lr.ph143.i
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.preheader80.i.us

.loopexit.i.preheader:                            ; preds = %.lr.ph143.i
  %i.go = add nuw nsw i64 %i.gl, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.go)
  %i.gp = xor i64 %i.gl, -1
  %i.gq = add nsw i64 %smax, %i.gp
  %i.gr = and i64 %i.gq, -4
  %i.gs = add i64 %i.gr, %i.gl
  %i.gt = add i64 %i.gs, 4
  br label %.preheader75.loopexit.i

.preheader80.i.us:                                ; preds = %.preheader80.i.us.preheader, %.loopexit.i.us
  %indvars.iv223.i.us = phi i64 [ %indvars.iv.next224.i.us, %.loopexit.i.us ], [ %i.gl, %.preheader80.i.us.preheader ] ; 2 uses
  %.7142.i.us = phi ptr [ %.13.i.us, %.loopexit.i.us ], [ %.0.lcssa.i, %.preheader80.i.us.preheader ] ; 2 uses
  %i.gu = add nsw i64 %indvars.iv223.i.us, %i.gn
  %i.gv = mul i64 %i.gu, %i.k
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.gv ; 2 uses
  br i1 %i.gj, label %.lr.ph119.i.us, label %.preheader78.i.us

.lr.ph119.i.us:                                   ; preds = %.preheader80.i.us, %.lr.ph119.i.us
  %.8118.i.us = phi ptr [ %i.hp, %.lr.ph119.i.us ], [ %.7142.i.us, %.preheader80.i.us ] ; 2 uses
  %.0289117.i.us = phi ptr [ %i.hq, %.lr.ph119.i.us ], [ %gep.i.us, %.preheader80.i.us ] ; 3 uses
  %.0294116.i.us = phi i32 [ %i.hr, %.lr.ph119.i.us ], [ 0, %.preheader80.i.us ]
  %i.gw = load <4 x float>, ptr %.0289117.i.us, align 16, !tbaa !113
  %i.gx = getelementptr inbounds nuw i8, ptr %.0289117.i.us, i64 16
  %i.gy = load <4 x float>, ptr %i.gx, align 16, !tbaa !113
  %i.gz = fmul fast <4 x float> %i.gw, %i.gi      ; 2 uses
  %i.ha = fmul fast <4 x float> %i.gy, %i.gi      ; 2 uses
  %i.hb = shufflevector <4 x float> %i.gz, <4 x float> %i.ha, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.hc = shufflevector <4 x float> %i.gz, <4 x float> %i.ha, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.hd = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hb)
  %i.he = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hc)
  %i.hf = fadd fast <4 x float> %i.hd, %i.hb
  %i.hg = fadd fast <4 x float> %i.he, %i.hc
  %i.hh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hf)
  %i.hi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hg)
  %i.hj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hh, <4 x i32> %i.hi)
  %i.hk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hj, <8 x i16> splat (i16 -127))
  %i.hl = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hk, <8 x i16> splat (i16 127))
  %i.hm = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.hl, <8 x i16> poison)
  %i.hn = bitcast <16 x i8> %i.hm to <2 x i64>
  %i.ho = extractelement <2 x i64> %i.hn, i64 0
  store i64 %i.ho, ptr %.8118.i.us, align 8, !tbaa !581
  %i.hp = getelementptr inbounds nuw i8, ptr %.8118.i.us, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.0289117.i.us, i64 32 ; 2 uses
  %i.hr = add nuw nsw i32 %.0294116.i.us, 2       ; 2 uses
  %i.hs = or disjoint i32 %i.hr, 1
  %i.ht = icmp slt i32 %i.hs, %4
  br i1 %i.ht, label %.lr.ph119.i.us, label %.preheader78.i.us, !llvm.loop !586

.preheader78.i.us:                                ; preds = %.lr.ph119.i.us, %.preheader80.i.us
  %.0294.lcssa.i.us = phi i32 [ 0, %.preheader80.i.us ], [ %i.gk, %.lr.ph119.i.us ] ; 4 uses
  %.0289.lcssa.i.us = phi ptr [ %gep.i.us, %.preheader80.i.us ], [ %i.hq, %.lr.ph119.i.us ] ; 3 uses
  %.8.lcssa.i.us = phi ptr [ %.7142.i.us, %.preheader80.i.us ], [ %i.hp, %.lr.ph119.i.us ] ; 4 uses
  %i.hu = icmp slt i32 %.0294.lcssa.i.us, %4
  br i1 %i.hu, label %.lr.ph126.i.us.preheader, label %.loopexit.i.us

.lr.ph126.i.us.preheader:                         ; preds = %.preheader78.i.us
  %.neg = or disjoint i32 %.0294.lcssa.i.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph126.i.us.prol.loopexit, label %.lr.ph126.i.us.prol

.lr.ph126.i.us.prol:                              ; preds = %.lr.ph126.i.us.preheader
  %i.hv = load <4 x float>, ptr %.0289.lcssa.i.us, align 16, !tbaa !113
  %i.hw = fmul fast <4 x float> %i.hv, %i.gi      ; 2 uses
  %i.hx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hw)
  %i.hy = fadd fast <4 x float> %i.hx, %i.hw
  %i.hz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hy) ; 2 uses
  %i.ia = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hz, <4 x i32> %i.hz)
  %i.ib = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ia, <8 x i16> splat (i16 -127))
  %i.ic = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ib, <8 x i16> splat (i16 127))
  %i.id = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ic, <8 x i16> poison)
  %i.ie = bitcast <16 x i8> %i.id to <4 x i32>
  %i.if = extractelement <4 x i32> %i.ie, i64 0
  store i32 %i.if, ptr %.8.lcssa.i.us, align 4, !tbaa !45
  %i.ig = getelementptr inbounds nuw i8, ptr %.8.lcssa.i.us, i64 4 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0289.lcssa.i.us, i64 16
  %i.ii = or disjoint i32 %.0294.lcssa.i.us, 1
  br label %.lr.ph126.i.us.prol.loopexit

.lr.ph126.i.us.prol.loopexit:                     ; preds = %.lr.ph126.i.us.prol, %.lr.ph126.i.us.preheader
  %.lcssa169.unr = phi ptr [ poison, %.lr.ph126.i.us.preheader ], [ %i.ig, %.lr.ph126.i.us.prol ]
  %.9125.i.us.unr = phi ptr [ %.8.lcssa.i.us, %.lr.ph126.i.us.preheader ], [ %i.ig, %.lr.ph126.i.us.prol ]
  %.1290124.i.us.unr = phi ptr [ %.0289.lcssa.i.us, %.lr.ph126.i.us.preheader ], [ %i.ih, %.lr.ph126.i.us.prol ]
  %.1295123.i.us.unr = phi i32 [ %.0294.lcssa.i.us, %.lr.ph126.i.us.preheader ], [ %i.ii, %.lr.ph126.i.us.prol ]
  %i.ij = icmp eq i32 %4, %.neg
  br i1 %i.ij, label %.loopexit.i.us, label %.lr.ph126.i.us

.lr.ph126.i.us:                                   ; preds = %.lr.ph126.i.us.prol.loopexit, %.lr.ph126.i.us
  %.9125.i.us = phi ptr [ %i.ji, %.lr.ph126.i.us ], [ %.9125.i.us.unr, %.lr.ph126.i.us.prol.loopexit ] ; 3 uses
  %.1290124.i.us = phi ptr [ %i.jj, %.lr.ph126.i.us ], [ %.1290124.i.us.unr, %.lr.ph126.i.us.prol.loopexit ] ; 3 uses
  %.1295123.i.us = phi i32 [ %i.jk, %.lr.ph126.i.us ], [ %.1295123.i.us.unr, %.lr.ph126.i.us.prol.loopexit ]
  %i.ik = load <4 x float>, ptr %.1290124.i.us, align 16, !tbaa !113
  %i.il = fmul fast <4 x float> %i.ik, %i.gi      ; 2 uses
  %i.im = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.il)
  %i.in = fadd fast <4 x float> %i.im, %i.il
  %i.io = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.in) ; 2 uses
  %i.ip = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.io, <4 x i32> %i.io)
  %i.iq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ip, <8 x i16> splat (i16 -127))
  %i.ir = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.iq, <8 x i16> splat (i16 127))
  %i.is = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ir, <8 x i16> poison)
  %i.it = bitcast <16 x i8> %i.is to <4 x i32>
  %i.iu = extractelement <4 x i32> %i.it, i64 0
  store i32 %i.iu, ptr %.9125.i.us, align 4, !tbaa !45
  %i.iv = getelementptr inbounds nuw i8, ptr %.9125.i.us, i64 4
  %i.iw = getelementptr inbounds nuw i8, ptr %.1290124.i.us, i64 16
  %i.ix = load <4 x float>, ptr %i.iw, align 16, !tbaa !113
  %i.iy = fmul fast <4 x float> %i.ix, %i.gi      ; 2 uses
  %i.iz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.iy)
  %i.ja = fadd fast <4 x float> %i.iz, %i.iy
  %i.jb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ja) ; 2 uses
  %i.jc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.jb, <4 x i32> %i.jb)
  %i.jd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jc, <8 x i16> splat (i16 -127))
  %i.je = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.jd, <8 x i16> splat (i16 127))
  %i.jf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.je, <8 x i16> poison)
  %i.jg = bitcast <16 x i8> %i.jf to <4 x i32>
  %i.jh = extractelement <4 x i32> %i.jg, i64 0
  store i32 %i.jh, ptr %i.iv, align 4, !tbaa !45
  %i.ji = getelementptr inbounds nuw i8, ptr %.9125.i.us, i64 8 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.1290124.i.us, i64 32
  %i.jk = add nuw nsw i32 %.1295123.i.us, 2       ; 2 uses
  %exitcond221.not.i.us.1 = icmp eq i32 %i.jk, %4
  br i1 %exitcond221.not.i.us.1, label %.loopexit.i.us, label %.lr.ph126.i.us, !llvm.loop !587

.loopexit.i.us:                                   ; preds = %.lr.ph126.i.us.prol.loopexit, %.lr.ph126.i.us, %.preheader78.i.us
  %.13.i.us = phi ptr [ %.8.lcssa.i.us, %.preheader78.i.us ], [ %.lcssa169.unr, %.lr.ph126.i.us.prol.loopexit ], [ %i.ji, %.lr.ph126.i.us ] ; 2 uses
  %indvars.iv.next224.i.us = add nuw nsw i64 %indvars.iv223.i.us, 4 ; 3 uses
  %i.jl = icmp slt i64 %indvars.iv.next224.i.us, %invariant.op.i
  br i1 %i.jl, label %.preheader80.i.us, label %.preheader75.loopexit.i, !llvm.loop !588

.preheader77.i.us:                                ; preds = %.lr.ph143.i, %.loopexit.i.us40
  %indvars.iv223.i.us37 = phi i64 [ %indvars.iv.next224.i.us42, %.loopexit.i.us40 ], [ %i.gl, %.lr.ph143.i ] ; 2 uses
  %.7142.i.us38 = phi ptr [ %.13.i.us41, %.loopexit.i.us40 ], [ %.0.lcssa.i, %.lr.ph143.i ] ; 2 uses
  %i.jm = add nsw i64 %indvars.iv223.i.us37, %i.gn
  %i.jn = mul i64 %i.jm, %i.k
  %gep.i.us39 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.jn ; 2 uses
  br i1 %i.gj, label %.lr.ph132.i.us, label %.preheader76.i.us

.lr.ph132.i.us:                                   ; preds = %.preheader77.i.us, %.lr.ph132.i.us
  %.11131.i.us = phi ptr [ %i.kl, %.lr.ph132.i.us ], [ %.7142.i.us38, %.preheader77.i.us ] ; 2 uses
  %.3292130.i.us = phi ptr [ %i.km, %.lr.ph132.i.us ], [ %gep.i.us39, %.preheader77.i.us ] ; 5 uses
  %.0296129.i.us = phi i32 [ %i.kn, %.lr.ph132.i.us ], [ 0, %.preheader77.i.us ]
  %i.jo = load <2 x float>, ptr %.3292130.i.us, align 4, !tbaa !68
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.3292130.i.us, i64 %i.k
  %i.jq = load <2 x float>, ptr %i.jp, align 4, !tbaa !68
  %i.jr = shufflevector <2 x float> %i.jo, <2 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.js = getelementptr inbounds nuw i8, ptr %.3292130.i.us, i64 %.idx64.i
  %i.jt = load <2 x float>, ptr %i.js, align 4, !tbaa !68
  %i.ju = getelementptr inbounds nuw i8, ptr %.3292130.i.us, i64 %.idx65.i
  %i.jv = load <2 x float>, ptr %i.ju, align 4, !tbaa !68
  %i.jw = shufflevector <2 x float> %i.jt, <2 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jx = fmul fast <4 x float> %i.jr, %i.gi      ; 2 uses
  %i.jy = fmul fast <4 x float> %i.jw, %i.gi      ; 2 uses
  %i.jz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.jx)
  %i.ka = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.jy)
  %i.kb = fadd fast <4 x float> %i.jz, %i.jx
  %i.kc = fadd fast <4 x float> %i.ka, %i.jy
  %i.kd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kb)
  %i.ke = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kc)
  %i.kf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kd, <4 x i32> %i.ke)
  %i.kg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kf, <8 x i16> splat (i16 -127))
  %i.kh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.kg, <8 x i16> splat (i16 127))
  %i.ki = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.kh, <8 x i16> poison)
  %i.kj = bitcast <16 x i8> %i.ki to <2 x i64>
  %i.kk = extractelement <2 x i64> %i.kj, i64 0
  store i64 %i.kk, ptr %.11131.i.us, align 8, !tbaa !581
  %i.kl = getelementptr inbounds nuw i8, ptr %.11131.i.us, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.3292130.i.us, i64 8 ; 2 uses
  %i.kn = add nuw nsw i32 %.0296129.i.us, 2       ; 2 uses
  %i.ko = or disjoint i32 %i.kn, 1
  %i.kp = icmp slt i32 %i.ko, %4
  br i1 %i.kp, label %.lr.ph132.i.us, label %.preheader76.i.us, !llvm.loop !589

.preheader76.i.us:                                ; preds = %.lr.ph132.i.us, %.preheader77.i.us
  %.0296.lcssa.i.us = phi i32 [ 0, %.preheader77.i.us ], [ %i.gk, %.lr.ph132.i.us ] ; 2 uses
  %.3292.lcssa.i.us = phi ptr [ %gep.i.us39, %.preheader77.i.us ], [ %i.km, %.lr.ph132.i.us ]
  %.11.lcssa.i.us = phi ptr [ %.7142.i.us38, %.preheader77.i.us ], [ %i.kl, %.lr.ph132.i.us ] ; 2 uses
  %i.kq = icmp slt i32 %.0296.lcssa.i.us, %4
  br i1 %i.kq, label %.lr.ph139.i.us, label %.loopexit.i.us40

.lr.ph139.i.us:                                   ; preds = %.preheader76.i.us, %.lr.ph139.i.us
  %.12138.i.us = phi ptr [ %i.lm, %.lr.ph139.i.us ], [ %.11.lcssa.i.us, %.preheader76.i.us ] ; 2 uses
  %.4293137.i.us = phi ptr [ %i.ln, %.lr.ph139.i.us ], [ %.3292.lcssa.i.us, %.preheader76.i.us ] ; 5 uses
  %.1297136.i.us = phi i32 [ %i.lo, %.lr.ph139.i.us ], [ %.0296.lcssa.i.us, %.preheader76.i.us ]
  %i.kr = load float, ptr %.4293137.i.us, align 4, !tbaa !68
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.4293137.i.us, i64 %i.k
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !68
  %i.ku = getelementptr inbounds nuw i8, ptr %.4293137.i.us, i64 %.idx64.i
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !68
  %i.kw = getelementptr inbounds nuw i8, ptr %.4293137.i.us, i64 %.idx65.i
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !68
  %i.ky = insertelement <4 x float> poison, float %i.kr, i64 0
  %i.kz = insertelement <4 x float> %i.ky, float %i.kt, i64 1
  %i.la = insertelement <4 x float> %i.kz, float %i.kv, i64 2
  %i.lb = insertelement <4 x float> %i.la, float %i.kx, i64 3
  %i.lc = fmul fast <4 x float> %i.lb, %i.gi      ; 2 uses
  %i.ld = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.lc)
  %i.le = fadd fast <4 x float> %i.ld, %i.lc
  %i.lf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.le) ; 2 uses
  %i.lg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.lf, <4 x i32> %i.lf)
  %i.lh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lg, <8 x i16> splat (i16 -127))
  %i.li = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lh, <8 x i16> splat (i16 127))
  %i.lj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.li, <8 x i16> poison)
  %i.lk = bitcast <16 x i8> %i.lj to <4 x i32>
  %i.ll = extractelement <4 x i32> %i.lk, i64 0
  store i32 %i.ll, ptr %.12138.i.us, align 4, !tbaa !45
  %i.lm = getelementptr inbounds nuw i8, ptr %.12138.i.us, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.4293137.i.us, i64 4
  %i.lo = add nuw nsw i32 %.1297136.i.us, 1       ; 2 uses
  %exitcond222.not.i.us = icmp eq i32 %i.lo, %4
end_hunk_5
begin_hunk_6_@_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
._crit_edge182.i:                                 ; preds = %.lr.ph181.i.prol.loopexit, %.lr.ph181.i, %middle.block152, %.preheader.i
  %.20.lcssa.i = phi ptr [ %.19.lcssa.i, %.preheader.i ], [ %i.qo, %middle.block152 ], [ %.lcssa159.unr, %.lr.ph181.i.prol.loopexit ], [ %i.sk, %.lr.ph181.i ]
  %indvars.iv.next232.i = add nsw i64 %indvars.iv231.i, 1 ; 2 uses
  %exitcond234.not.i = icmp eq i64 %indvars.iv.next232.i, %wide.trip.count.i
  br i1 %exitcond234.not.i, label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %bb.c, !llvm.loop !612

_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %._crit_edge182.i, %.preheader72.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef nofpclass(nan inf) %5) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 27 uses
  %i.l = icmp sgt i32 %2, 7
  br i1 %i.l, label %.lr.ph112.i, label %.preheader90.i

.lr.ph112.i:                                      ; preds = %bb.a
  %i.m = sext i32 %3 to i64
  %i.n = mul i64 %i.k, %i.m                       ; 2 uses
  %i.o = icmp ne i32 %i.b, 4
  %i.p = insertelement <4 x float> poison, float %5, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer ; 14 uses
  %i.r = icmp slt i32 %4, 4
  %.idx334.i = shl i64 %i.k, 4
  %i.s = icmp sgt i32 %4, 1
  %.idx333.i = shl i64 %i.k, 3
  %i.t = and i32 %4, -2
  %i.u = zext nneg i32 %2 to i64                  ; 3 uses
  %i.v = sext i32 %1 to i64                       ; 2 uses
  %i.w = sext i32 %i.b to i64                     ; 2 uses
  %brmerge.i = or i1 %i.r, %i.o
  br i1 %brmerge.i, label %.lr.ph112.i.split.us, label %.lr.ph.i.preheader

.lr.ph112.i.split.us:                             ; preds = %.lr.ph112.i
  %i.x = icmp eq i32 %i.b, 1
  br i1 %i.x, label %.loopexit93.i.us.us, label %.loopexit93.i.us.preheader

.loopexit93.i.us.preheader:                       ; preds = %.lr.ph112.i.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 15)
  %i.y = and i64 %umax, 2147483640
  br label %.preheader90.loopexit.i

.loopexit93.i.us.us:                              ; preds = %.lr.ph112.i.split.us, %.loopexit92.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %.loopexit92.i.us.us ], [ 0, %.lr.ph112.i.split.us ] ; 2 uses
  %.0111.i.us.us = phi ptr [ %.5.i.us.us, %.loopexit92.i.us.us ], [ %.0.val, %.lr.ph112.i.split.us ] ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.n
  %i.ab = add nsw i64 %indvars.iv.i.us.us, %i.v
  %i.ac = mul nuw nsw i64 %i.ab, %i.w
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  br i1 %i.s, label %.lr.ph101.i.us.us, label %.preheader91.i.us.us

.lr.ph101.i.us.us:                                ; preds = %.loopexit93.i.us.us, %.lr.ph101.i.us.us
  %.3100.i.us.us = phi ptr [ %i.bm, %.lr.ph101.i.us.us ], [ %.0111.i.us.us, %.loopexit93.i.us.us ] ; 2 uses
  %.229799.i.us.us = phi ptr [ %i.bn, %.lr.ph101.i.us.us ], [ %i.ad, %.loopexit93.i.us.us ] ; 4 uses
  %.030598.i.us.us = phi i32 [ %i.bo, %.lr.ph101.i.us.us ], [ 0, %.loopexit93.i.us.us ]
  %i.ae = load <4 x float>, ptr %.229799.i.us.us, align 1, !tbaa !113 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.229799.i.us.us, i64 16
  %i.ag = load <4 x float>, ptr %i.af, align 1, !tbaa !113 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.229799.i.us.us, i64 %i.k ; 2 uses
  %i.ai = load <4 x float>, ptr %i.ah, align 1, !tbaa !113 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load <4 x float>, ptr %i.aj, align 1, !tbaa !113 ; 2 uses
  %i.al = shufflevector <4 x float> %i.ae, <4 x float> %i.ai, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.am = shufflevector <4 x float> %i.ae, <4 x float> %i.ai, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.an = shufflevector <4 x float> %i.ag, <4 x float> %i.ak, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ao = shufflevector <4 x float> %i.ag, <4 x float> %i.ak, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ap = fmul fast <4 x float> %i.al, %i.q       ; 2 uses
  %i.aq = fmul fast <4 x float> %i.am, %i.q       ; 2 uses
  %i.ar = fmul fast <4 x float> %i.an, %i.q       ; 2 uses
  %i.as = fmul fast <4 x float> %i.ao, %i.q       ; 2 uses
  %i.at = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ap)
  %i.au = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aq)
  %i.av = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ar)
  %i.aw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.as)
  %i.ax = fadd fast <4 x float> %i.at, %i.ap
  %i.ay = fadd fast <4 x float> %i.au, %i.aq
  %i.az = fadd fast <4 x float> %i.av, %i.ar
  %i.ba = fadd fast <4 x float> %i.aw, %i.as
  %i.bb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ax)
  %i.bc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ay)
  %i.bd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.az)
  %i.be = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ba)
  %i.bf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bb, <4 x i32> %i.bc)
  %i.bg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bd, <4 x i32> %i.be)
  %i.bh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bf, <8 x i16> splat (i16 -127))
  %i.bi = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bh, <8 x i16> splat (i16 127))
  %i.bj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bg, <8 x i16> splat (i16 -127))
  %i.bk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bj, <8 x i16> splat (i16 127))
  %i.bl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bi, <8 x i16> %i.bk)
  store <16 x i8> %i.bl, ptr %.3100.i.us.us, align 1, !tbaa !113
  %i.bm = getelementptr inbounds nuw i8, ptr %.3100.i.us.us, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.229799.i.us.us, i64 %.idx333.i ; 2 uses
  %i.bo = add nuw nsw i32 %.030598.i.us.us, 2     ; 2 uses
  %i.bp = or disjoint i32 %i.bo, 1
  %i.bq = icmp slt i32 %i.bp, %4
  br i1 %i.bq, label %.lr.ph101.i.us.us, label %.preheader91.i.us.us, !llvm.loop !613

.preheader91.i.us.us:                             ; preds = %.lr.ph101.i.us.us, %.loopexit93.i.us.us
  %.0305.lcssa.i.us.us = phi i32 [ 0, %.loopexit93.i.us.us ], [ %i.t, %.lr.ph101.i.us.us ] ; 2 uses
  %.2297.lcssa.i.us.us = phi ptr [ %i.ad, %.loopexit93.i.us.us ], [ %i.bn, %.lr.ph101.i.us.us ]
  %.3.lcssa.i.us.us = phi ptr [ %.0111.i.us.us, %.loopexit93.i.us.us ], [ %i.bm, %.lr.ph101.i.us.us ] ; 2 uses
  %i.br = icmp slt i32 %.0305.lcssa.i.us.us, %4
  br i1 %i.br, label %.lr.ph108.i.us.us, label %.loopexit92.i.us.us

.lr.ph108.i.us.us:                                ; preds = %.preheader91.i.us.us, %.lr.ph108.i.us.us
  %.4107.i.us.us = phi ptr [ %i.cj, %.lr.ph108.i.us.us ], [ %.3.lcssa.i.us.us, %.preheader91.i.us.us ] ; 2 uses
  %.3298106.i.us.us = phi ptr [ %i.ck, %.lr.ph108.i.us.us ], [ %.2297.lcssa.i.us.us, %.preheader91.i.us.us ] ; 3 uses
  %.1306105.i.us.us = phi i32 [ %i.cl, %.lr.ph108.i.us.us ], [ %.0305.lcssa.i.us.us, %.preheader91.i.us.us ]
  %i.bs = load <4 x float>, ptr %.3298106.i.us.us, align 1, !tbaa !113
  %i.bt = getelementptr inbounds nuw i8, ptr %.3298106.i.us.us, i64 16
  %i.bu = load <4 x float>, ptr %i.bt, align 1, !tbaa !113
  %i.bv = fmul fast <4 x float> %i.bs, %i.q       ; 2 uses
  %i.bw = fmul fast <4 x float> %i.bu, %i.q       ; 2 uses
  %i.bx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bv)
  %i.by = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bw)
  %i.bz = fadd fast <4 x float> %i.bx, %i.bv
  %i.ca = fadd fast <4 x float> %i.by, %i.bw
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bz)
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ca)
  %i.cd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cb, <4 x i32> %i.cc)
  %i.ce = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cd, <8 x i16> splat (i16 -127))
  %i.cf = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ce, <8 x i16> splat (i16 127))
  %i.cg = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cf, <8 x i16> poison)
  %i.ch = bitcast <16 x i8> %i.cg to <2 x i64>
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  store i64 %i.ci, ptr %.4107.i.us.us, align 8, !tbaa !581
  %i.cj = getelementptr inbounds nuw i8, ptr %.4107.i.us.us, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.3298106.i.us.us, i64 %i.k
  %i.cl = add nuw nsw i32 %.1306105.i.us.us, 1    ; 2 uses
  %exitcond.not.i.us.us = icmp eq i32 %i.cl, %4
  br i1 %exitcond.not.i.us.us, label %.loopexit92.i.us.us, label %.lr.ph108.i.us.us, !llvm.loop !614

.loopexit92.i.us.us:                              ; preds = %.lr.ph108.i.us.us, %.preheader91.i.us.us
  %.5.i.us.us = phi ptr [ %.3.lcssa.i.us.us, %.preheader91.i.us.us ], [ %i.cj, %.lr.ph108.i.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 8 ; 3 uses
  %i.cm = or disjoint i64 %indvars.iv.next.i.us.us, 7
  %i.cn = icmp samesign ult i64 %i.cm, %i.u
  br i1 %i.cn, label %.loopexit93.i.us.us, label %.preheader90.loopexit.i, !llvm.loop !615

.preheader90.loopexit.i:                          ; preds = %.loopexit92.i.loopexit4, %.loopexit92.i.us.us, %.loopexit93.i.us.preheader
  %.us-phi = phi ptr [ %.5.i.us.us, %.loopexit92.i.us.us ], [ %.0.val, %.loopexit93.i.us.preheader ], [ %i.iy, %.loopexit92.i.loopexit4 ]
  %.us-phi23 = phi i64 [ %indvars.iv.next.i.us.us, %.loopexit92.i.us.us ], [ %i.y, %.loopexit93.i.us.preheader ], [ %indvars.iv.next.i, %.loopexit92.i.loopexit4 ]
  %i.co = trunc nuw nsw i64 %.us-phi23 to i32
  br label %.preheader90.i

.preheader90.i:                                   ; preds = %.preheader90.loopexit.i, %bb.a
  %.0289.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.co, %.preheader90.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.val, %bb.a ], [ %.us-phi, %.preheader90.loopexit.i ] ; 4 uses
  %i.cp = or disjoint i32 %.0289.lcssa.i, 3
  %i.cq = icmp slt i32 %i.cp, %2
  br i1 %i.cq, label %.lr.ph135.i, label %.preheader86.i

.lr.ph135.i:                                      ; preds = %.preheader90.i
  %i.cr = sext i32 %3 to i64
  %i.cs = mul i64 %i.k, %i.cr                     ; 2 uses
  %i.ct = icmp ne i32 %i.b, 4
  %i.cu = insertelement <4 x float> poison, float %5, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.cw = icmp slt i32 %4, 4
  %.idx332.i = shl i64 %i.k, 4
  %i.cx = icmp sgt i32 %4, 1
  %.idx331.i = shl i64 %i.k, 3
  %i.cy = and i32 %4, -2
  %i.cz = zext i32 %.0289.lcssa.i to i64          ; 5 uses
  %i.da = sext i32 %2 to i64
  %i.db = sext i32 %1 to i64                      ; 2 uses
  %i.dc = sext i32 %i.b to i64                    ; 2 uses
  %brmerge192.i = or i1 %i.cw, %i.ct
  %invariant.op.i = add nsw i64 %i.da, -3         ; 3 uses
  br i1 %brmerge192.i, label %.lr.ph135.i.split.us, label %.lr.ph118.i.preheader

.lr.ph135.i.split.us:                             ; preds = %.lr.ph135.i
  %i.dd = icmp eq i32 %i.b, 1
  %i.de = load ptr, ptr %0, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cs
  br i1 %i.dd, label %.loopexit89.i.us.us.preheader, label %.loopexit89.i.us.preheader

.loopexit89.i.us.us.preheader:                    ; preds = %.lr.ph135.i.split.us
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.loopexit89.i.us.us

.loopexit89.i.us.preheader:                       ; preds = %.lr.ph135.i.split.us
  %i.dg = add nuw nsw i64 %i.cz, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.dg)
  %i.dh = xor i64 %i.cz, -1
  %i.di = add nsw i64 %smax, %i.dh
  %i.dj = and i64 %i.di, -4
  %i.dk = add i64 %i.dj, %i.cz
  %i.dl = add i64 %i.dk, 4
  br label %.preheader86.loopexit.i

.loopexit89.i.us.us:                              ; preds = %.loopexit89.i.us.us.preheader, %.loopexit88.i.us.us
  %indvars.iv230.i.us.us = phi i64 [ %indvars.iv.next231.i.us.us, %.loopexit88.i.us.us ], [ %i.cz, %.loopexit89.i.us.us.preheader ] ; 2 uses
  %.6134.i.us.us = phi ptr [ %.11.i.us.us, %.loopexit88.i.us.us ], [ %.0.lcssa.i, %.loopexit89.i.us.us.preheader ] ; 2 uses
  %i.dm = add nsw i64 %indvars.iv230.i.us.us, %i.db
  %i.dn = mul nuw nsw i64 %i.dm, %i.dc
  %i.do = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dn ; 2 uses
  br i1 %i.cx, label %.lr.ph124.i.us.us, label %.preheader87.i.us.us

.lr.ph124.i.us.us:                                ; preds = %.loopexit89.i.us.us, %.lr.ph124.i.us.us
  %.9123.i.us.us = phi ptr [ %i.ei, %.lr.ph124.i.us.us ], [ %.6134.i.us.us, %.loopexit89.i.us.us ] ; 2 uses
  %.2309122.i.us.us = phi ptr [ %i.ej, %.lr.ph124.i.us.us ], [ %i.do, %.loopexit89.i.us.us ] ; 3 uses
  %.0312121.i.us.us = phi i32 [ %i.ek, %.lr.ph124.i.us.us ], [ 0, %.loopexit89.i.us.us ]
  %i.dp = load <4 x float>, ptr %.2309122.i.us.us, align 1, !tbaa !113
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.2309122.i.us.us, i64 %i.k
  %i.dr = load <4 x float>, ptr %i.dq, align 1, !tbaa !113
  %i.ds = fmul fast <4 x float> %i.dp, %i.cv      ; 2 uses
  %i.dt = fmul fast <4 x float> %i.dr, %i.cv      ; 2 uses
  %i.du = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.du)
  %i.dx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dv)
  %i.dy = fadd fast <4 x float> %i.dw, %i.du
  %i.dz = fadd fast <4 x float> %i.dx, %i.dv
  %i.ea = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dy)
  %i.eb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dz)
  %i.ec = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ea, <4 x i32> %i.eb)
  %i.ed = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ec, <8 x i16> splat (i16 -127))
  %i.ee = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ed, <8 x i16> splat (i16 127))
  %i.ef = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ee, <8 x i16> poison)
  %i.eg = bitcast <16 x i8> %i.ef to <2 x i64>
  %i.eh = extractelement <2 x i64> %i.eg, i64 0
  store i64 %i.eh, ptr %.9123.i.us.us, align 8, !tbaa !581
  %i.ei = getelementptr inbounds nuw i8, ptr %.9123.i.us.us, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.2309122.i.us.us, i64 %.idx331.i ; 2 uses
  %i.ek = add nuw nsw i32 %.0312121.i.us.us, 2    ; 2 uses
  %i.el = or disjoint i32 %i.ek, 1
  %i.em = icmp slt i32 %i.el, %4
  br i1 %i.em, label %.lr.ph124.i.us.us, label %.preheader87.i.us.us, !llvm.loop !616

.preheader87.i.us.us:                             ; preds = %.lr.ph124.i.us.us, %.loopexit89.i.us.us
  %.0312.lcssa.i.us.us = phi i32 [ 0, %.loopexit89.i.us.us ], [ %i.cy, %.lr.ph124.i.us.us ] ; 4 uses
  %.2309.lcssa.i.us.us = phi ptr [ %i.do, %.loopexit89.i.us.us ], [ %i.ej, %.lr.ph124.i.us.us ] ; 3 uses
  %.9.lcssa.i.us.us = phi ptr [ %.6134.i.us.us, %.loopexit89.i.us.us ], [ %i.ei, %.lr.ph124.i.us.us ] ; 4 uses
  %i.en = icmp slt i32 %.0312.lcssa.i.us.us, %4
  br i1 %i.en, label %.lr.ph131.i.us.us.preheader, label %.loopexit88.i.us.us

.lr.ph131.i.us.us.preheader:                      ; preds = %.preheader87.i.us.us
  %.neg = or disjoint i32 %.0312.lcssa.i.us.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph131.i.us.us.prol.loopexit, label %.lr.ph131.i.us.us.prol

.lr.ph131.i.us.us.prol:                           ; preds = %.lr.ph131.i.us.us.preheader
  %i.eo = load <4 x float>, ptr %.2309.lcssa.i.us.us, align 1, !tbaa !113
  %i.ep = fmul fast <4 x float> %i.eo, %i.cv      ; 2 uses
  %i.eq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ep)
  %i.er = fadd fast <4 x float> %i.eq, %i.ep
  %i.es = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.er) ; 2 uses
  %i.et = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.es, <4 x i32> %i.es)
  %i.eu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.et, <8 x i16> splat (i16 -127))
  %i.ev = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.eu, <8 x i16> splat (i16 127))
  %i.ew = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ev, <8 x i16> poison)
  %i.ex = bitcast <16 x i8> %i.ew to <4 x i32>
  %i.ey = extractelement <4 x i32> %i.ex, i64 0
  store i32 %i.ey, ptr %.9.lcssa.i.us.us, align 4, !tbaa !45
  %i.ez = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.us, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.2309.lcssa.i.us.us, i64 %i.k
  %i.fb = or disjoint i32 %.0312.lcssa.i.us.us, 1
  br label %.lr.ph131.i.us.us.prol.loopexit

.lr.ph131.i.us.us.prol.loopexit:                  ; preds = %.lr.ph131.i.us.us.prol, %.lr.ph131.i.us.us.preheader
  %.lcssa123.unr = phi ptr [ poison, %.lr.ph131.i.us.us.preheader ], [ %i.ez, %.lr.ph131.i.us.us.prol ]
  %.10130.i.us.us.unr = phi ptr [ %.9.lcssa.i.us.us, %.lr.ph131.i.us.us.preheader ], [ %i.ez, %.lr.ph131.i.us.us.prol ]
  %.3310129.i.us.us.unr = phi ptr [ %.2309.lcssa.i.us.us, %.lr.ph131.i.us.us.preheader ], [ %i.fa, %.lr.ph131.i.us.us.prol ]
  %.1313128.i.us.us.unr = phi i32 [ %.0312.lcssa.i.us.us, %.lr.ph131.i.us.us.preheader ], [ %i.fb, %.lr.ph131.i.us.us.prol ]
  %i.fc = icmp eq i32 %4, %.neg
  br i1 %i.fc, label %.loopexit88.i.us.us, label %.lr.ph131.i.us.us

.lr.ph131.i.us.us:                                ; preds = %.lr.ph131.i.us.us.prol.loopexit, %.lr.ph131.i.us.us
  %.10130.i.us.us = phi ptr [ %i.gb, %.lr.ph131.i.us.us ], [ %.10130.i.us.us.unr, %.lr.ph131.i.us.us.prol.loopexit ] ; 3 uses
  %.3310129.i.us.us = phi ptr [ %i.gc, %.lr.ph131.i.us.us ], [ %.3310129.i.us.us.unr, %.lr.ph131.i.us.us.prol.loopexit ] ; 2 uses
  %.1313128.i.us.us = phi i32 [ %i.gd, %.lr.ph131.i.us.us ], [ %.1313128.i.us.us.unr, %.lr.ph131.i.us.us.prol.loopexit ]
  %i.fd = load <4 x float>, ptr %.3310129.i.us.us, align 1, !tbaa !113
  %i.fe = fmul fast <4 x float> %i.fd, %i.cv      ; 2 uses
  %i.ff = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fe)
  %i.fg = fadd fast <4 x float> %i.ff, %i.fe
  %i.fh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fg) ; 2 uses
  %i.fi = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fh, <4 x i32> %i.fh)
  %i.fj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fi, <8 x i16> splat (i16 -127))
  %i.fk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.fj, <8 x i16> splat (i16 127))
  %i.fl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.fk, <8 x i16> poison)
  %i.fm = bitcast <16 x i8> %i.fl to <4 x i32>
  %i.fn = extractelement <4 x i32> %i.fm, i64 0
  store i32 %i.fn, ptr %.10130.i.us.us, align 4, !tbaa !45
  %i.fo = getelementptr inbounds nuw i8, ptr %.10130.i.us.us, i64 4
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.3310129.i.us.us, i64 %i.k ; 2 uses
  %i.fq = load <4 x float>, ptr %i.fp, align 1, !tbaa !113
  %i.fr = fmul fast <4 x float> %i.fq, %i.cv      ; 2 uses
  %i.fs = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fr)
  %i.ft = fadd fast <4 x float> %i.fs, %i.fr
  %i.fu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ft) ; 2 uses
  %i.fv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fu, <4 x i32> %i.fu)
  %i.fw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fv, <8 x i16> splat (i16 -127))
  %i.fx = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.fw, <8 x i16> splat (i16 127))
  %i.fy = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.fx, <8 x i16> poison)
  %i.fz = bitcast <16 x i8> %i.fy to <4 x i32>
  %i.ga = extractelement <4 x i32> %i.fz, i64 0
  store i32 %i.ga, ptr %i.fo, align 4, !tbaa !45
  %i.gb = getelementptr inbounds nuw i8, ptr %.10130.i.us.us, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.k
  %i.gd = add nuw nsw i32 %.1313128.i.us.us, 2    ; 2 uses
  %exitcond229.not.i.us.us.1 = icmp eq i32 %i.gd, %4
  br i1 %exitcond229.not.i.us.us.1, label %.loopexit88.i.us.us, label %.lr.ph131.i.us.us, !llvm.loop !617

.loopexit88.i.us.us:                              ; preds = %.lr.ph131.i.us.us.prol.loopexit, %.lr.ph131.i.us.us, %.preheader87.i.us.us
  %.11.i.us.us = phi ptr [ %.9.lcssa.i.us.us, %.preheader87.i.us.us ], [ %.lcssa123.unr, %.lr.ph131.i.us.us.prol.loopexit ], [ %i.gb, %.lr.ph131.i.us.us ] ; 2 uses
  %indvars.iv.next231.i.us.us = add nuw nsw i64 %indvars.iv230.i.us.us, 4 ; 3 uses
  %i.ge = icmp slt i64 %indvars.iv.next231.i.us.us, %invariant.op.i
  br i1 %i.ge, label %.loopexit89.i.us.us, label %.preheader86.loopexit.i, !llvm.loop !618

.lr.ph.i.preheader:                               ; preds = %.lr.ph112.i, %.loopexit92.i.loopexit4
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit92.i.loopexit4 ], [ 0, %.lr.ph112.i ] ; 2 uses
  %.0111.i = phi ptr [ %i.iy, %.loopexit92.i.loopexit4 ], [ %.0.val, %.lr.ph112.i ]
  %i.gf = load ptr, ptr %0, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.n
  %i.gh = add nsw i64 %indvars.iv.i, %i.v
  %i.gi = mul nsw i64 %i.gh, %i.w
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.gi
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.196.i = phi ptr [ %i.iy, %.lr.ph.i ], [ %.0111.i, %.lr.ph.i.preheader ] ; 3 uses
  %.029595.i = phi ptr [ %i.iz, %.lr.ph.i ], [ %i.gj, %.lr.ph.i.preheader ] ; 9 uses
  %.030094.i = phi i32 [ %i.ja, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.gk = load <4 x float>, ptr %.029595.i, align 16, !tbaa !113
  %i.gl = getelementptr inbounds nuw i8, ptr %.029595.i, i64 16
  %i.gm = load <4 x float>, ptr %i.gl, align 16, !tbaa !113
  %i.gn = getelementptr inbounds nuw i8, ptr %.029595.i, i64 32
  %i.go = load <4 x float>, ptr %i.gn, align 16, !tbaa !113
  %i.gp = getelementptr inbounds nuw i8, ptr %.029595.i, i64 48
  %i.gq = load <4 x float>, ptr %i.gp, align 16, !tbaa !113
  %i.gr = getelementptr inbounds nuw i8, ptr %.029595.i, i64 64
  %i.gs = load <4 x float>, ptr %i.gr, align 16, !tbaa !113
  %i.gt = getelementptr inbounds nuw i8, ptr %.029595.i, i64 80
  %i.gu = load <4 x float>, ptr %i.gt, align 16, !tbaa !113
  %i.gv = getelementptr inbounds nuw i8, ptr %.029595.i, i64 96
  %i.gw = load <4 x float>, ptr %i.gv, align 16, !tbaa !113
  %i.gx = getelementptr inbounds nuw i8, ptr %.029595.i, i64 112
  %i.gy = load <4 x float>, ptr %i.gx, align 16, !tbaa !113
  %i.gz = fmul fast <4 x float> %i.gk, %i.q       ; 2 uses
  %i.ha = fmul fast <4 x float> %i.gm, %i.q       ; 2 uses
  %i.hb = fmul fast <4 x float> %i.go, %i.q       ; 2 uses
  %i.hc = fmul fast <4 x float> %i.gq, %i.q       ; 2 uses
  %i.hd = fmul fast <4 x float> %i.gs, %i.q       ; 2 uses
  %i.he = fmul fast <4 x float> %i.gu, %i.q       ; 2 uses
  %i.hf = fmul fast <4 x float> %i.gw, %i.q       ; 2 uses
  %i.hg = fmul fast <4 x float> %i.gy, %i.q       ; 2 uses
  %i.hh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.gz)
  %i.hi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ha)
  %i.hj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hb)
  %i.hk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hc)
  %i.hl = fadd fast <4 x float> %i.hh, %i.gz
  %i.hm = fadd fast <4 x float> %i.hi, %i.ha
  %i.hn = fadd fast <4 x float> %i.hj, %i.hb
  %i.ho = fadd fast <4 x float> %i.hk, %i.hc
  %i.hp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hl)
  %i.hq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hm)
  %i.hr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hn)
  %i.hs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ho)
  %i.ht = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hp, <4 x i32> %i.hq)
  %i.hu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hr, <4 x i32> %i.hs)
  %i.hv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ht, <8 x i16> splat (i16 -127))
  %i.hw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hv, <8 x i16> splat (i16 127))
  %i.hx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hu, <8 x i16> splat (i16 -127))
  %i.hy = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hx, <8 x i16> splat (i16 127))
  %i.hz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.hw, <8 x i16> %i.hy)
  %i.ia = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hd)
  %i.ib = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.he)
  %i.ic = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hf)
  %i.id = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hg)
  %i.ie = fadd fast <4 x float> %i.ia, %i.hd
  %i.if = fadd fast <4 x float> %i.ib, %i.he
  %i.ig = fadd fast <4 x float> %i.ic, %i.hf
  %i.ih = fadd fast <4 x float> %i.id, %i.hg
  %i.ii = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ie)
  %i.ij = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.if)
  %i.ik = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ig)
  %i.il = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ih)
  %i.im = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ii, <4 x i32> %i.ij)
  %i.in = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ik, <4 x i32> %i.il)
  %i.io = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.im, <8 x i16> splat (i16 -127))
  %i.ip = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.io, <8 x i16> splat (i16 127))
  %i.iq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.in, <8 x i16> splat (i16 -127))
  %i.ir = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.iq, <8 x i16> splat (i16 127))
  %i.is = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ip, <8 x i16> %i.ir)
  %i.it = bitcast <16 x i8> %i.hz to <8 x i16>    ; 2 uses
  %i.iu = bitcast <16 x i8> %i.is to <8 x i16>    ; 2 uses
  %i.iv = shufflevector <8 x i16> %i.it, <8 x i16> %i.iu, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.iw = shufflevector <8 x i16> %i.it, <8 x i16> %i.iu, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x i16> %i.iv, ptr %.196.i, align 16, !tbaa !113
  %i.ix = getelementptr inbounds nuw i8, ptr %.196.i, i64 16
  store <8 x i16> %i.iw, ptr %i.ix, align 16, !tbaa !113
  %i.iy = getelementptr inbounds nuw i8, ptr %.196.i, i64 32 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.029595.i, i64 %.idx334.i
  %i.ja = add nuw nsw i32 %.030094.i, 4           ; 2 uses
  %i.jb = or disjoint i32 %i.ja, 3
  %i.jc = icmp slt i32 %i.jb, %4
  br i1 %i.jc, label %.lr.ph.i, label %.loopexit92.i.loopexit4, !llvm.loop !619

.loopexit92.i.loopexit4:                          ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.jd = or disjoint i64 %indvars.iv.next.i, 7
  %i.je = icmp samesign ult i64 %i.jd, %i.u
  br i1 %i.je, label %.lr.ph.i.preheader, label %.preheader90.loopexit.i, !llvm.loop !615

.preheader86.loopexit.i:                          ; preds = %.loopexit88.i.loopexit3, %.loopexit88.i.us.us, %.loopexit89.i.us.preheader
  %.us-phi26 = phi ptr [ %.11.i.us.us, %.loopexit88.i.us.us ], [ %.0.lcssa.i, %.loopexit89.i.us.preheader ], [ %i.ow, %.loopexit88.i.loopexit3 ]
  %.us-phi27 = phi i64 [ %indvars.iv.next231.i.us.us, %.loopexit88.i.us.us ], [ %i.dl, %.loopexit89.i.us.preheader ], [ %indvars.iv.next231.i, %.loopexit88.i.loopexit3 ]
  %i.jf = trunc nuw nsw i64 %.us-phi27 to i32
  br label %.preheader86.i

.preheader86.i:                                   ; preds = %.preheader86.loopexit.i, %.preheader90.i
  %.1290.lcssa.i = phi i32 [ %.0289.lcssa.i, %.preheader90.i ], [ %i.jf, %.preheader86.loopexit.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader90.i ], [ %.us-phi26, %.preheader86.loopexit.i ] ; 4 uses
  %i.jg = or disjoint i32 %.1290.lcssa.i, 1
  %i.jh = icmp slt i32 %i.jg, %2
  br i1 %i.jh, label %.lr.ph165.i, label %.preheader81.i

.lr.ph165.i:                                      ; preds = %.preheader86.i
  %i.ji = sext i32 %3 to i64
  %i.jj = mul i64 %i.k, %i.ji                     ; 2 uses
  %i.jk = icmp ne i32 %i.b, 4
  %i.jl = insertelement <4 x float> poison, float %5, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.jn = icmp slt i32 %4, 4
  %.idx330.i = shl i64 %i.k, 4                    ; 2 uses
  %i.jo = icmp sgt i32 %4, 3
  %.idx327.i = shl i64 %i.k, 3                    ; 2 uses
  %.idx328.i = mul i64 %i.k, 12
  %i.jp = and i32 %4, -4
  %i.jq = zext i32 %.1290.lcssa.i to i64          ; 5 uses
  %i.jr = sext i32 %2 to i64
  %i.js = sext i32 %1 to i64                      ; 2 uses
  %i.jt = sext i32 %i.b to i64                    ; 2 uses
  %brmerge195.i = or i1 %i.jn, %i.jk
  %invariant.op280.i = add nsw i64 %i.jr, -1      ; 3 uses
  br i1 %brmerge195.i, label %.lr.ph165.i.split.us, label %.lr.ph141.i.preheader.preheader

.lr.ph141.i.preheader.preheader:                  ; preds = %.lr.ph165.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.jj
  br label %.lr.ph141.i.preheader

.lr.ph165.i.split.us:                             ; preds = %.lr.ph165.i
  %i.jv = icmp eq i32 %i.b, 1
  br i1 %i.jv, label %.loopexit85.i.us.us, label %.loopexit85.i.us.preheader

.loopexit85.i.us.preheader:                       ; preds = %.lr.ph165.i.split.us
  %i.jw = add nuw nsw i64 %i.jq, 2
  %smax59 = tail call i64 @llvm.smax.i64(i64 %invariant.op280.i, i64 %i.jw)
  %i.jx = xor i64 %i.jq, -1
  %i.jy = add nsw i64 %smax59, %i.jx
  %i.jz = and i64 %i.jy, -2
  %i.ka = add i64 %i.jz, %i.jq
  %i.kb = add i64 %i.ka, 2
  br label %.preheader81.loopexit.i

.loopexit85.i.us.us:                              ; preds = %.lr.ph165.i.split.us, %.loopexit83.i.us.us
  %indvars.iv234.i.us.us = phi i64 [ %indvars.iv.next235.i.us.us, %.loopexit83.i.us.us ], [ %i.jq, %.lr.ph165.i.split.us ] ; 2 uses
  %.12164.i.us.us = phi ptr [ %.18.i.us.us, %.loopexit83.i.us.us ], [ %.6.lcssa.i, %.lr.ph165.i.split.us ] ; 2 uses
  %i.kc = load ptr, ptr %0, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.jj
  %i.ke = add nsw i64 %indvars.iv234.i.us.us, %i.js
  %i.kf = mul nuw nsw i64 %i.ke, %i.jt
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.kf ; 2 uses
  br i1 %i.jo, label %.lr.ph147.i.us.us, label %.preheader84.i.us.us

.lr.ph147.i.us.us:                                ; preds = %.loopexit85.i.us.us, %.lr.ph147.i.us.us
  %.15146.i.us.us = phi ptr [ %i.lq, %.lr.ph147.i.us.us ], [ %.12164.i.us.us, %.loopexit85.i.us.us ] ; 2 uses
  %.2316145.i.us.us = phi ptr [ %i.lr, %.lr.ph147.i.us.us ], [ %i.kg, %.loopexit85.i.us.us ] ; 5 uses
  %.0320144.i.us.us = phi i32 [ %i.ls, %.lr.ph147.i.us.us ], [ 0, %.loopexit85.i.us.us ]
  %i.kh = load i64, ptr %.2316145.i.us.us, align 1, !tbaa !113
  %i.ki = insertelement <2 x i64> poison, i64 %i.kh, i64 0
  %i.kj = bitcast <2 x i64> %i.ki to <4 x float>
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.2316145.i.us.us, i64 %i.k
  %i.kl = load i64, ptr %i.kk, align 1, !tbaa !113
  %i.km = insertelement <2 x i64> poison, i64 %i.kl, i64 0
  %i.kn = bitcast <2 x i64> %i.km to <4 x float>
  %i.ko = getelementptr inbounds nuw i8, ptr %.2316145.i.us.us, i64 %.idx327.i
  %i.kp = load i64, ptr %i.ko, align 1, !tbaa !113
  %i.kq = insertelement <2 x i64> poison, i64 %i.kp, i64 0
  %i.kr = bitcast <2 x i64> %i.kq to <4 x float>
  %i.ks = getelementptr inbounds nuw i8, ptr %.2316145.i.us.us, i64 %.idx328.i
  %i.kt = load i64, ptr %i.ks, align 1, !tbaa !113
  %i.ku = insertelement <2 x i64> poison, i64 %i.kt, i64 0
  %i.kv = bitcast <2 x i64> %i.ku to <4 x float>
  %i.kw = shufflevector <4 x float> %i.kj, <4 x float> %i.kn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kx = shufflevector <4 x float> %i.kr, <4 x float> %i.kv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ky = shufflevector <4 x float> %i.kw, <4 x float> %i.kx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kz = shufflevector <4 x float> %i.kw, <4 x float> %i.kx, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.la = fmul fast <4 x float> %i.jm, %i.ky      ; 2 uses
  %i.lb = fmul fast <4 x float> %i.jm, %i.kz      ; 2 uses
  %i.lc = shufflevector <4 x float> %i.la, <4 x float> %i.lb, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ld = shufflevector <4 x float> %i.la, <4 x float> %i.lb, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.le = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.lc)
  %i.lf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ld)
  %i.lg = fadd fast <4 x float> %i.le, %i.lc
  %i.lh = fadd fast <4 x float> %i.lf, %i.ld
  %i.li = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lg)
  %i.lj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lh)
  %i.lk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.li, <4 x i32> %i.lj)
  %i.ll = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lk, <8 x i16> splat (i16 -127))
  %i.lm = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ll, <8 x i16> splat (i16 127))
  %i.ln = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.lm, <8 x i16> poison)
  %i.lo = bitcast <16 x i8> %i.ln to <2 x i64>
  %i.lp = extractelement <2 x i64> %i.lo, i64 0
  store i64 %i.lp, ptr %.15146.i.us.us, align 8, !tbaa !581
  %i.lq = getelementptr inbounds nuw i8, ptr %.15146.i.us.us, i64 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.2316145.i.us.us, i64 %.idx330.i ; 2 uses
  %i.ls = add nuw nsw i32 %.0320144.i.us.us, 4    ; 2 uses
  %i.lt = or disjoint i32 %i.ls, 3
  %i.lu = icmp slt i32 %i.lt, %4
  br i1 %i.lu, label %.lr.ph147.i.us.us, label %.preheader84.i.us.us, !llvm.loop !620

.preheader84.i.us.us:                             ; preds = %.lr.ph147.i.us.us, %.loopexit85.i.us.us
  %.0320.lcssa.i.us.us = phi i32 [ 0, %.loopexit85.i.us.us ], [ %i.jp, %.lr.ph147.i.us.us ] ; 3 uses
  %.2316.lcssa.i.us.us = phi ptr [ %i.kg, %.loopexit85.i.us.us ], [ %i.lr, %.lr.ph147.i.us.us ] ; 2 uses
  %.15.lcssa.i.us.us = phi ptr [ %.12164.i.us.us, %.loopexit85.i.us.us ], [ %i.lq, %.lr.ph147.i.us.us ] ; 2 uses
  %i.lv = or disjoint i32 %.0320.lcssa.i.us.us, 1
  %i.lw = icmp slt i32 %i.lv, %4
  br i1 %i.lw, label %.lr.ph154.i.us.us, label %.preheader82.i.us.us

.lr.ph154.i.us.us:                                ; preds = %.preheader84.i.us.us, %.lr.ph154.i.us.us
  %.16153.i.us.us = phi ptr [ %i.mp, %.lr.ph154.i.us.us ], [ %.15.lcssa.i.us.us, %.preheader84.i.us.us ] ; 2 uses
  %.3317152.i.us.us = phi ptr [ %i.mq, %.lr.ph154.i.us.us ], [ %.2316.lcssa.i.us.us, %.preheader84.i.us.us ] ; 3 uses
  %.1321151.i.us.us = phi i32 [ %i.mr, %.lr.ph154.i.us.us ], [ %.0320.lcssa.i.us.us, %.preheader84.i.us.us ]
  %i.lx = load i64, ptr %.3317152.i.us.us, align 1, !tbaa !113
  %i.ly = insertelement <2 x i64> poison, i64 %i.lx, i64 0
  %i.lz = bitcast <2 x i64> %i.ly to <4 x float>
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.3317152.i.us.us, i64 %i.k
  %i.mb = load i64, ptr %i.ma, align 1, !tbaa !113
  %i.mc = insertelement <2 x i64> poison, i64 %i.mb, i64 0
  %i.md = bitcast <2 x i64> %i.mc to <4 x float>
  %i.me = shufflevector <4 x float> %i.lz, <4 x float> %i.md, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.mf = fmul fast <4 x float> %i.me, %i.jm      ; 2 uses
  %i.mg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.mf)
  %i.mh = fadd fast <4 x float> %i.mg, %i.mf
  %i.mi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mh) ; 2 uses
  %i.mj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mi, <4 x i32> %i.mi)
  %i.mk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mj, <8 x i16> splat (i16 -127))
  %i.ml = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mk, <8 x i16> splat (i16 127))
  %i.mm = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ml, <8 x i16> poison)
  %i.mn = bitcast <16 x i8> %i.mm to <4 x i32>
  %i.mo = extractelement <4 x i32> %i.mn, i64 0
  store i32 %i.mo, ptr %.16153.i.us.us, align 4, !tbaa !45
  %i.mp = getelementptr inbounds nuw i8, ptr %.16153.i.us.us, i64 4 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.3317152.i.us.us, i64 %.idx327.i ; 2 uses
  %i.mr = add nuw nsw i32 %.1321151.i.us.us, 2    ; 3 uses
  %i.ms = or disjoint i32 %i.mr, 1
  %i.mt = icmp slt i32 %i.ms, %4
  br i1 %i.mt, label %.lr.ph154.i.us.us, label %.preheader82.i.us.us, !llvm.loop !621

.preheader82.i.us.us:                             ; preds = %.lr.ph154.i.us.us, %.preheader84.i.us.us
  %.1321.lcssa.i.us.us = phi i32 [ %.0320.lcssa.i.us.us, %.preheader84.i.us.us ], [ %i.mr, %.lr.ph154.i.us.us ] ; 2 uses
  %.3317.lcssa.i.us.us = phi ptr [ %.2316.lcssa.i.us.us, %.preheader84.i.us.us ], [ %i.mq, %.lr.ph154.i.us.us ]
  %.16.lcssa.i.us.us = phi ptr [ %.15.lcssa.i.us.us, %.preheader84.i.us.us ], [ %i.mp, %.lr.ph154.i.us.us ] ; 2 uses
  %i.mu = icmp slt i32 %.1321.lcssa.i.us.us, %4
  br i1 %i.mu, label %.lr.ph161.i.us.us, label %.loopexit83.i.us.us

.lr.ph161.i.us.us:                                ; preds = %.preheader82.i.us.us, %.lr.ph161.i.us.us
  %.17160.i.us.us = phi ptr [ %i.nf, %.lr.ph161.i.us.us ], [ %.16.lcssa.i.us.us, %.preheader82.i.us.us ] ; 3 uses
  %.4318159.i.us.us = phi ptr [ %i.ng, %.lr.ph161.i.us.us ], [ %.3317.lcssa.i.us.us, %.preheader82.i.us.us ] ; 3 uses
  %.2322158.i.us.us = phi i32 [ %i.nh, %.lr.ph161.i.us.us ], [ %.1321.lcssa.i.us.us, %.preheader82.i.us.us ]
  %i.mv = load float, ptr %.4318159.i.us.us, align 4, !tbaa !68
  %i.mw = fmul fast float %i.mv, %5
  %i.mx = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.mw)
  %i.my = fptosi float %i.mx to i32
  %spec.select.i33776.i.us.us = tail call i32 @llvm.smax.i32(i32 %i.my, i32 -127)
  %.0.i33877.i.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i33776.i.us.us, i32 127)
  %.0.i338.i.us.us = trunc nsw i32 %.0.i33877.i.us.us to i8
  store i8 %.0.i338.i.us.us, ptr %.17160.i.us.us, align 1, !tbaa !113
  %i.mz = getelementptr inbounds nuw i8, ptr %.4318159.i.us.us, i64 4
  %i.na = load float, ptr %i.mz, align 4, !tbaa !68
  %i.nb = fmul fast float %i.na, %5
  %i.nc = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.nb)
  %i.nd = fptosi float %i.nc to i32
  %spec.select.i33578.i.us.us = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 -127)
  %.0.i33679.i.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i33578.i.us.us, i32 127)
  %.0.i336.i.us.us = trunc nsw i32 %.0.i33679.i.us.us to i8
  %i.ne = getelementptr inbounds nuw i8, ptr %.17160.i.us.us, i64 1
  store i8 %.0.i336.i.us.us, ptr %i.ne, align 1, !tbaa !113
  %i.nf = getelementptr inbounds nuw i8, ptr %.17160.i.us.us, i64 2 ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.4318159.i.us.us, i64 %i.k
  %i.nh = add nuw nsw i32 %.2322158.i.us.us, 1    ; 2 uses
  %exitcond233.not.i.us.us = icmp eq i32 %i.nh, %4
  br i1 %exitcond233.not.i.us.us, label %.loopexit83.i.us.us, label %.lr.ph161.i.us.us, !llvm.loop !622

.loopexit83.i.us.us:                              ; preds = %.lr.ph161.i.us.us, %.preheader82.i.us.us
  %.18.i.us.us = phi ptr [ %.16.lcssa.i.us.us, %.preheader82.i.us.us ], [ %i.nf, %.lr.ph161.i.us.us ] ; 2 uses
  %indvars.iv.next235.i.us.us = add nuw nsw i64 %indvars.iv234.i.us.us, 2 ; 3 uses
  %i.ni = icmp slt i64 %indvars.iv.next235.i.us.us, %invariant.op280.i
  br i1 %i.ni, label %.loopexit85.i.us.us, label %.preheader81.loopexit.i, !llvm.loop !623

.lr.ph118.i.preheader:                            ; preds = %.lr.ph135.i, %.loopexit88.i.loopexit3
  %indvars.iv230.i = phi i64 [ %indvars.iv.next231.i, %.loopexit88.i.loopexit3 ], [ %i.cz, %.lr.ph135.i ] ; 2 uses
  %.6134.i = phi ptr [ %i.ow, %.loopexit88.i.loopexit3 ], [ %.0.lcssa.i, %.lr.ph135.i ]
  %i.nj = load ptr, ptr %0, align 8, !tbaa !18
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.cs
  %i.nl = add nsw i64 %indvars.iv230.i, %i.db
  %i.nm = mul nsw i64 %i.nl, %i.dc
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.nm
  br label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.lr.ph118.i.preheader, %.lr.ph118.i
  %.7117.i = phi ptr [ %i.ow, %.lr.ph118.i ], [ %.6134.i, %.lr.ph118.i.preheader ] ; 2 uses
  %.0307116.i = phi ptr [ %i.ox, %.lr.ph118.i ], [ %i.nn, %.lr.ph118.i.preheader ] ; 5 uses
  %.0311115.i = phi i32 [ %i.oy, %.lr.ph118.i ], [ 0, %.lr.ph118.i.preheader ]
  %i.no = load <4 x float>, ptr %.0307116.i, align 16, !tbaa !113
  %i.np = getelementptr inbounds nuw i8, ptr %.0307116.i, i64 16
  %i.nq = load <4 x float>, ptr %i.np, align 16, !tbaa !113
  %i.nr = getelementptr inbounds nuw i8, ptr %.0307116.i, i64 32
  %i.ns = load <4 x float>, ptr %i.nr, align 16, !tbaa !113
  %i.nt = getelementptr inbounds nuw i8, ptr %.0307116.i, i64 48
  %i.nu = load <4 x float>, ptr %i.nt, align 16, !tbaa !113
  %i.nv = fmul fast <4 x float> %i.no, %i.cv      ; 2 uses
  %i.nw = fmul fast <4 x float> %i.nq, %i.cv      ; 2 uses
  %i.nx = fmul fast <4 x float> %i.ns, %i.cv      ; 2 uses
  %i.ny = fmul fast <4 x float> %i.nu, %i.cv      ; 2 uses
  %i.nz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nv)
  %i.oa = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nw)
  %i.ob = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nx)
  %i.oc = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ny)
  %i.od = fadd fast <4 x float> %i.nz, %i.nv
  %i.oe = fadd fast <4 x float> %i.oa, %i.nw
  %i.of = fadd fast <4 x float> %i.ob, %i.nx
  %i.og = fadd fast <4 x float> %i.oc, %i.ny
  %i.oh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.od)
  %i.oi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oe)
  %i.oj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.of)
  %i.ok = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.og)
  %i.ol = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.oh, <4 x i32> %i.oi)
  %i.om = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.oj, <4 x i32> %i.ok)
  %i.on = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ol, <8 x i16> splat (i16 -127))
  %i.oo = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.on, <8 x i16> splat (i16 127))
  %i.op = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.om, <8 x i16> splat (i16 -127))
  %i.oq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.op, <8 x i16> splat (i16 127))
  %i.or = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.oo, <8 x i16> %i.oq)
  %i.os = bitcast <16 x i8> %i.or to <8 x i16>
  %i.ot = shufflevector <8 x i16> %i.os, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.ou = bitcast <8 x i16> %i.ot to <4 x i32>
  %i.ov = shufflevector <4 x i32> %i.ou, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.ov, ptr %.7117.i, align 16, !tbaa !113
  %i.ow = getelementptr inbounds nuw i8, ptr %.7117.i, i64 16 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.0307116.i, i64 %.idx332.i
  %i.oy = add nuw nsw i32 %.0311115.i, 4          ; 2 uses
  %i.oz = or disjoint i32 %i.oy, 3
  %i.pa = icmp slt i32 %i.oz, %4
  br i1 %i.pa, label %.lr.ph118.i, label %.loopexit88.i.loopexit3, !llvm.loop !624

.loopexit88.i.loopexit3:                          ; preds = %.lr.ph118.i
  %indvars.iv.next231.i = add nuw nsw i64 %indvars.iv230.i, 4 ; 3 uses
  %i.pb = icmp slt i64 %indvars.iv.next231.i, %invariant.op.i
  br i1 %i.pb, label %.lr.ph118.i.preheader, label %.preheader86.loopexit.i, !llvm.loop !618

.preheader81.loopexit.i:                          ; preds = %.loopexit83.i.loopexit2, %.loopexit83.i.us.us, %.loopexit85.i.us.preheader
end_hunk_6
begin_hunk_7_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.ex = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ew, <8 x i16> splat (i16 127))
  %i.ey = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ex, <8 x i16> poison)
  %i.ez = bitcast <16 x i8> %i.ey to <4 x i32>
  %i.fa = extractelement <4 x i32> %i.ez, i64 0
  store i32 %i.fa, ptr %i.eo, align 4, !tbaa !45
  %i.fb = getelementptr inbounds nuw i8, ptr %.461.i.us, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.k
  %i.fd = add nuw nsw i32 %.124659.i.us, 2        ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.fd, %4
  br i1 %exitcond.not.i.us.1, label %.loopexit46.i.us23, label %.lr.ph62.i.us, !llvm.loop !687

.loopexit46.i.us23:                               ; preds = %.lr.ph62.i.us.prol.loopexit, %.lr.ph62.i.us, %.preheader45.i.us
  %.5.i.us24 = phi ptr [ %.3.lcssa.i.us, %.preheader45.i.us ], [ %.lcssa97.unr, %.lr.ph62.i.us.prol.loopexit ], [ %i.fb, %.lr.ph62.i.us ] ; 2 uses
  %indvars.iv.next.i.us25 = add nuw nsw i64 %indvars.iv.i.us21, 4 ; 3 uses
  %i.fe = or disjoint i64 %indvars.iv.next.i.us25, 3
  %i.ff = icmp samesign ult i64 %i.fe, %i.s
  br i1 %i.ff, label %bb.b, label %.preheader44.loopexit.i, !llvm.loop !685

.preheader44.loopexit.i:                          ; preds = %.loopexit46.i.us23, %.loopexit46.i.us, %.loopexit46.i.preheader
  %.us-phi = phi ptr [ %.0.val, %.loopexit46.i.preheader ], [ %.5.i.us, %.loopexit46.i.us ], [ %.5.i.us24, %.loopexit46.i.us23 ]
  %.us-phi19 = phi i64 [ %i.u, %.loopexit46.i.preheader ], [ %indvars.iv.next.i.us, %.loopexit46.i.us ], [ %indvars.iv.next.i.us25, %.loopexit46.i.us23 ]
  %i.fg = trunc nuw nsw i64 %.us-phi19 to i32
  br label %.preheader44.i

.preheader44.i:                                   ; preds = %.preheader44.loopexit.i, %bb.a
  %.0234.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.fg, %.preheader44.loopexit.i ] ; 8 uses
  %.0.lcssa.i = phi ptr [ %.0.val, %bb.a ], [ %.us-phi, %.preheader44.loopexit.i ] ; 5 uses
  %i.fh = or disjoint i32 %.0234.lcssa.i, 1
  %i.fi = icmp slt i32 %i.fh, %2
  br i1 %i.fi, label %.lr.ph96.i, label %.preheader39.i

.lr.ph96.i:                                       ; preds = %.preheader44.i
  %i.fj = sext i32 %3 to i64
  %i.fk = mul i64 %i.k, %i.fj                     ; 2 uses
  %i.fl = icmp sgt i32 %4, 3                      ; 2 uses
  %.idx267.i = shl i64 %i.k, 4                    ; 2 uses
  %.idx264.i = shl i64 %i.k, 3                    ; 2 uses
  %.idx265.i = mul i64 %i.k, 12
  switch i32 %i.b, label %.lr.ph96.split.split.preheader.i [
    i32 1, label %.lr.ph96.split.us.preheader.i
    i32 4, label %.lr.ph96.split.split.us.i
  ]

.lr.ph96.split.us.preheader.i:                    ; preds = %.lr.ph96.i
  %i.fm = and i32 %4, -4
  %i.fn = zext nneg i32 %.0234.lcssa.i to i64
  %i.fo = sext i32 %1 to i64
  %i.fp = sext i32 %2 to i64
  %invariant.op232.i = add nsw i64 %i.fp, -1
  br label %.lr.ph96.split.us.i

.lr.ph96.split.us.i:                              ; preds = %.loopexit41.us.i, %.lr.ph96.split.us.preheader.i
  %indvars.iv172.i = phi i64 [ %i.fn, %.lr.ph96.split.us.preheader.i ], [ %indvars.iv.next173.i, %.loopexit41.us.i ] ; 2 uses
  %.695.us.i = phi ptr [ %.0.lcssa.i, %.lr.ph96.split.us.preheader.i ], [ %.11.lcssa.us.i, %.loopexit41.us.i ] ; 2 uses
  %i.fq = load ptr, ptr %0, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fk
  %i.fs = add nsw i64 %indvars.iv172.i, %i.fo     ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fs ; 2 uses
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !18
  %i.fu = getelementptr [4 x i8], ptr %.pre.i, i64 %i.fs ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !68 ; 2 uses
  %.phi.trans.insert182.i = getelementptr i8, ptr %i.fu, i64 4
  %.pre183.i = load float, ptr %.phi.trans.insert182.i, align 4, !tbaa !68 ; 2 uses
  %.pre184.i = insertelement <4 x float> poison, float %i.fv, i64 0 ; 2 uses
  %.pre185.i = shufflevector <4 x float> %.pre184.i, <4 x float> poison, <4 x i32> zeroinitializer
  %.pre187.i = insertelement <4 x float> poison, float %.pre183.i, i64 0 ; 2 uses
  %.pre189.i = shufflevector <4 x float> %.pre187.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = shufflevector <4 x float> %.pre184.i, <4 x float> %.pre187.i, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.fl, label %.lr.ph78.us.i, label %.preheader42.us.i

.lr.ph78.us.i:                                    ; preds = %.lr.ph96.split.us.i, %.lr.ph78.us.i
  %.977.us.i = phi ptr [ %i.hg, %.lr.ph78.us.i ], [ %.695.us.i, %.lr.ph96.split.us.i ] ; 2 uses
  %.225376.us.i = phi ptr [ %i.hh, %.lr.ph78.us.i ], [ %i.ft, %.lr.ph96.split.us.i ] ; 5 uses
  %.025775.us.i = phi i32 [ %i.hi, %.lr.ph78.us.i ], [ 0, %.lr.ph96.split.us.i ]
  %i.fx = load i64, ptr %.225376.us.i, align 1, !tbaa !113
  %i.fy = insertelement <2 x i64> poison, i64 %i.fx, i64 0
  %i.fz = bitcast <2 x i64> %i.fy to <4 x float>
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.225376.us.i, i64 %i.k
  %i.gb = load i64, ptr %i.ga, align 1, !tbaa !113
  %i.gc = insertelement <2 x i64> poison, i64 %i.gb, i64 0
  %i.gd = bitcast <2 x i64> %i.gc to <4 x float>
  %i.ge = getelementptr inbounds nuw i8, ptr %.225376.us.i, i64 %.idx264.i
  %i.gf = load i64, ptr %i.ge, align 1, !tbaa !113
  %i.gg = insertelement <2 x i64> poison, i64 %i.gf, i64 0
  %i.gh = bitcast <2 x i64> %i.gg to <4 x float>
  %i.gi = getelementptr inbounds nuw i8, ptr %.225376.us.i, i64 %.idx265.i
  %i.gj = load i64, ptr %i.gi, align 1, !tbaa !113
  %i.gk = insertelement <2 x i64> poison, i64 %i.gj, i64 0
  %i.gl = bitcast <2 x i64> %i.gk to <4 x float>
  %i.gm = shufflevector <4 x float> %i.fz, <4 x float> %i.gd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gn = shufflevector <4 x float> %i.gh, <4 x float> %i.gl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.go = shufflevector <4 x float> %i.gm, <4 x float> %i.gn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gp = shufflevector <4 x float> %i.gm, <4 x float> %i.gn, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.gq = fmul fast <4 x float> %.pre185.i, %i.go ; 2 uses
  %i.gr = fmul fast <4 x float> %.pre189.i, %i.gp ; 2 uses
  %i.gs = shufflevector <4 x float> %i.gq, <4 x float> %i.gr, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gt = shufflevector <4 x float> %i.gq, <4 x float> %i.gr, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.gu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.gs)
  %i.gv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.gt)
  %i.gw = fadd fast <4 x float> %i.gu, %i.gs
  %i.gx = fadd fast <4 x float> %i.gv, %i.gt
  %i.gy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gw)
  %i.gz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gx)
  %i.ha = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gy, <4 x i32> %i.gz)
  %i.hb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ha, <8 x i16> splat (i16 -127))
  %i.hc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hb, <8 x i16> splat (i16 127))
  %i.hd = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.hc, <8 x i16> poison)
  %i.he = bitcast <16 x i8> %i.hd to <2 x i64>
  %i.hf = extractelement <2 x i64> %i.he, i64 0
  store i64 %i.hf, ptr %.977.us.i, align 8, !tbaa !581
  %i.hg = getelementptr inbounds nuw i8, ptr %.977.us.i, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.225376.us.i, i64 %.idx267.i ; 2 uses
  %i.hi = add nuw nsw i32 %.025775.us.i, 4        ; 2 uses
  %i.hj = or disjoint i32 %i.hi, 3
  %i.hk = icmp slt i32 %i.hj, %4
  br i1 %i.hk, label %.lr.ph78.us.i, label %.preheader42.us.i, !llvm.loop !688

.lr.ph85.us.i:                                    ; preds = %.preheader42.us.i, %.lr.ph85.us.i
  %.1084.us.i = phi ptr [ %i.id, %.lr.ph85.us.i ], [ %.9.lcssa.us.i, %.preheader42.us.i ] ; 2 uses
  %.325483.us.i = phi ptr [ %i.ie, %.lr.ph85.us.i ], [ %.2253.lcssa.us.i, %.preheader42.us.i ] ; 3 uses
  %.125882.us.i = phi i32 [ %i.if, %.lr.ph85.us.i ], [ %.0257.lcssa.us.i, %.preheader42.us.i ]
  %i.hl = load i64, ptr %.325483.us.i, align 1, !tbaa !113
  %i.hm = insertelement <2 x i64> poison, i64 %i.hl, i64 0
  %i.hn = bitcast <2 x i64> %i.hm to <4 x float>
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.325483.us.i, i64 %i.k
  %i.hp = load i64, ptr %i.ho, align 1, !tbaa !113
  %i.hq = insertelement <2 x i64> poison, i64 %i.hp, i64 0
  %i.hr = bitcast <2 x i64> %i.hq to <4 x float>
  %i.hs = shufflevector <4 x float> %i.hn, <4 x float> %i.hr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ht = fmul fast <4 x float> %i.hs, %i.fw      ; 2 uses
  %i.hu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ht)
  %i.hv = fadd fast <4 x float> %i.hu, %i.ht
  %i.hw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hv) ; 2 uses
  %i.hx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hw, <4 x i32> %i.hw)
  %i.hy = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hx, <8 x i16> splat (i16 -127))
  %i.hz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hy, <8 x i16> splat (i16 127))
  %i.ia = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.hz, <8 x i16> poison)
  %i.ib = bitcast <16 x i8> %i.ia to <4 x i32>
  %i.ic = extractelement <4 x i32> %i.ib, i64 0
  store i32 %i.ic, ptr %.1084.us.i, align 4, !tbaa !45
  %i.id = getelementptr inbounds nuw i8, ptr %.1084.us.i, i64 4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.325483.us.i, i64 %.idx264.i ; 2 uses
  %i.if = add nuw nsw i32 %.125882.us.i, 2        ; 3 uses
  %i.ig = or disjoint i32 %i.if, 1
  %i.ih = icmp slt i32 %i.ig, %4
  br i1 %i.ih, label %.lr.ph85.us.i, label %.preheader40.us.i, !llvm.loop !689

.lr.ph92.us.i:                                    ; preds = %.preheader40.us.i, %.lr.ph92.us.i
  %.1191.us.i = phi ptr [ %i.is, %.lr.ph92.us.i ], [ %.10.lcssa.us.i, %.preheader40.us.i ] ; 3 uses
  %.425590.us.i = phi ptr [ %i.it, %.lr.ph92.us.i ], [ %.3254.lcssa.us.i, %.preheader40.us.i ] ; 3 uses
  %.225989.us.i = phi i32 [ %i.iu, %.lr.ph92.us.i ], [ %.1258.lcssa.us.i, %.preheader40.us.i ]
  %i.ii = load float, ptr %.425590.us.i, align 4, !tbaa !68
  %i.ij = fmul fast float %i.ii, %i.fv
  %i.ik = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ij)
  %i.il = fptosi float %i.ik to i32
  %spec.select.i27234.us.i = tail call i32 @llvm.smax.i32(i32 %i.il, i32 -127)
  %.0.i27335.us.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i27234.us.i, i32 127)
  %.0.i273.us.i = trunc nsw i32 %.0.i27335.us.i to i8
  store i8 %.0.i273.us.i, ptr %.1191.us.i, align 1, !tbaa !113
  %i.im = getelementptr inbounds nuw i8, ptr %.425590.us.i, i64 4
  %i.in = load float, ptr %i.im, align 4, !tbaa !68
  %i.io = fmul fast float %i.in, %.pre183.i
  %i.ip = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.io)
  %i.iq = fptosi float %i.ip to i32
  %spec.select.i27036.us.i = tail call i32 @llvm.smax.i32(i32 %i.iq, i32 -127)
  %.0.i27137.us.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i27036.us.i, i32 127)
  %.0.i271.us.i = trunc nsw i32 %.0.i27137.us.i to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %.1191.us.i, i64 1
  store i8 %.0.i271.us.i, ptr %i.ir, align 1, !tbaa !113
  %i.is = getelementptr inbounds nuw i8, ptr %.1191.us.i, i64 2 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.425590.us.i, i64 %i.k
  %i.iu = add nuw nsw i32 %.225989.us.i, 1        ; 2 uses
  %exitcond171.not.i = icmp eq i32 %i.iu, %4
  br i1 %exitcond171.not.i, label %.loopexit41.us.i, label %.lr.ph92.us.i, !llvm.loop !690

.preheader40.us.i:                                ; preds = %.lr.ph85.us.i, %.preheader42.us.i
  %.1258.lcssa.us.i = phi i32 [ %.0257.lcssa.us.i, %.preheader42.us.i ], [ %i.if, %.lr.ph85.us.i ] ; 2 uses
  %.3254.lcssa.us.i = phi ptr [ %.2253.lcssa.us.i, %.preheader42.us.i ], [ %i.ie, %.lr.ph85.us.i ]
  %.10.lcssa.us.i = phi ptr [ %.9.lcssa.us.i, %.preheader42.us.i ], [ %i.id, %.lr.ph85.us.i ] ; 2 uses
  %i.iv = icmp slt i32 %.1258.lcssa.us.i, %4
  br i1 %i.iv, label %.lr.ph92.us.i, label %.loopexit41.us.i

.loopexit41.us.i:                                 ; preds = %.lr.ph92.us.i, %.preheader40.us.i
  %.11.lcssa.us.i = phi ptr [ %.10.lcssa.us.i, %.preheader40.us.i ], [ %i.is, %.lr.ph92.us.i ] ; 2 uses
  %indvars.iv.next173.i = add nuw nsw i64 %indvars.iv172.i, 2 ; 3 uses
  %i.iw = icmp slt i64 %indvars.iv.next173.i, %invariant.op232.i
  br i1 %i.iw, label %.lr.ph96.split.us.i, label %.preheader39.loopexit.i, !llvm.loop !691

.preheader42.us.i:                                ; preds = %.lr.ph78.us.i, %.lr.ph96.split.us.i
  %.0257.lcssa.us.i = phi i32 [ 0, %.lr.ph96.split.us.i ], [ %i.fm, %.lr.ph78.us.i ] ; 3 uses
  %.2253.lcssa.us.i = phi ptr [ %i.ft, %.lr.ph96.split.us.i ], [ %i.hh, %.lr.ph78.us.i ] ; 2 uses
  %.9.lcssa.us.i = phi ptr [ %.695.us.i, %.lr.ph96.split.us.i ], [ %i.hg, %.lr.ph78.us.i ] ; 2 uses
  %i.ix = or disjoint i32 %.0257.lcssa.us.i, 1
  %i.iy = icmp slt i32 %i.ix, %4
  br i1 %i.iy, label %.lr.ph85.us.i, label %.preheader40.us.i

.lr.ph96.split.split.preheader.i:                 ; preds = %.lr.ph96.i
  %i.iz = add i32 %2, -2
  %i.ja = sub i32 %i.iz, %.0234.lcssa.i
  %i.jb = and i32 %i.ja, -2
  %i.jc = add i32 %.0234.lcssa.i, 2
  %i.jd = add i32 %i.jc, %i.jb
  br label %.preheader39.i

.lr.ph96.split.split.us.i:                        ; preds = %.lr.ph96.i
  %i.je = load ptr, ptr %0, align 8, !tbaa !18
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.fk
  %i.jg = load ptr, ptr %5, align 8, !tbaa !18
  br i1 %i.fl, label %.lr.ph72.us108.us.preheader.i, label %.loopexit43.us106.preheader.i

.loopexit43.us106.preheader.i:                    ; preds = %.lr.ph96.split.split.us.i
  %i.jh = add i32 %2, -2
  %i.ji = sub i32 %i.jh, %.0234.lcssa.i
  %i.jj = and i32 %i.ji, -2
  %i.jk = add i32 %.0234.lcssa.i, 2
  %i.jl = add i32 %i.jk, %i.jj
  br label %.preheader39.i

.lr.ph72.us108.us.preheader.i:                    ; preds = %.lr.ph96.split.split.us.i
  %i.jm = zext nneg i32 %.0234.lcssa.i to i64
  %i.jn = sext i32 %1 to i64
  %i.jo = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.jo, -1
  br label %.lr.ph72.us108.us.i

.lr.ph72.us108.us.i:                              ; preds = %..loopexit43_crit_edge.us109.us.i, %.lr.ph72.us108.us.preheader.i
  %indvars.iv168.i = phi i64 [ %i.jm, %.lr.ph72.us108.us.preheader.i ], [ %indvars.iv.next169.i, %..loopexit43_crit_edge.us109.us.i ] ; 2 uses
  %.695.us100.us.i = phi ptr [ %.0.lcssa.i, %.lr.ph72.us108.us.preheader.i ], [ %i.ks, %..loopexit43_crit_edge.us109.us.i ]
  %i.jp = add nsw i64 %indvars.iv168.i, %i.jn     ; 2 uses
  %.idx196.i = shl nsw i64 %i.jp, 4
  %i.jq = getelementptr inbounds i8, ptr %i.jf, i64 %.idx196.i
  %i.jr = getelementptr [4 x i8], ptr %i.jg, i64 %i.jp ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !68
  %i.jt = insertelement <4 x float> poison, float %i.js, i64 0
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jv = getelementptr i8, ptr %i.jr, i64 4
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !68
  %i.jx = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph72.us108.us.i
  %.771.us102.us.i = phi ptr [ %.695.us100.us.i, %.lr.ph72.us108.us.i ], [ %i.ks, %bb.c ] ; 2 uses
  %.025170.us103.us.i = phi ptr [ %i.jq, %.lr.ph72.us108.us.i ], [ %i.kt, %bb.c ] ; 3 uses
  %.025669.us104.us.i = phi i32 [ 0, %.lr.ph72.us108.us.i ], [ %i.ku, %bb.c ]
  %i.jz = load <4 x float>, ptr %.025170.us103.us.i, align 16, !tbaa !113
  %i.ka = getelementptr inbounds nuw i8, ptr %.025170.us103.us.i, i64 16
  %i.kb = load <4 x float>, ptr %i.ka, align 16, !tbaa !113
  %i.kc = fmul fast <4 x float> %i.jz, %i.ju      ; 2 uses
  %i.kd = fmul fast <4 x float> %i.kb, %i.jy      ; 2 uses
  %i.ke = shufflevector <4 x float> %i.kc, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.kf = shufflevector <4 x float> %i.kc, <4 x float> %i.kd, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.kg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ke)
  %i.kh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.kf)
  %i.ki = fadd fast <4 x float> %i.kg, %i.ke
  %i.kj = fadd fast <4 x float> %i.kh, %i.kf
  %i.kk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ki)
  %i.kl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kj)
  %i.km = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kk, <4 x i32> %i.kl)
  %i.kn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.km, <8 x i16> splat (i16 -127))
  %i.ko = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.kn, <8 x i16> splat (i16 127))
  %i.kp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ko, <8 x i16> poison)
  %i.kq = bitcast <16 x i8> %i.kp to <2 x i64>
  %i.kr = extractelement <2 x i64> %i.kq, i64 0
  store i64 %i.kr, ptr %.771.us102.us.i, align 8, !tbaa !581
  %i.ks = getelementptr inbounds nuw i8, ptr %.771.us102.us.i, i64 8 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.025170.us103.us.i, i64 %.idx267.i
  %i.ku = add nuw nsw i32 %.025669.us104.us.i, 4  ; 2 uses
  %i.kv = or disjoint i32 %i.ku, 3
  %i.kw = icmp slt i32 %i.kv, %4
  br i1 %i.kw, label %bb.c, label %..loopexit43_crit_edge.us109.us.i, !llvm.loop !692

..loopexit43_crit_edge.us109.us.i:                ; preds = %bb.c
  %indvars.iv.next169.i = add nuw nsw i64 %indvars.iv168.i, 2 ; 3 uses
  %i.kx = icmp slt i64 %indvars.iv.next169.i, %invariant.op.i
  br i1 %i.kx, label %.lr.ph72.us108.us.i, label %.preheader39.loopexit138.i, !llvm.loop !691

.preheader39.loopexit.i:                          ; preds = %.loopexit41.us.i
  %i.ky = trunc nuw nsw i64 %indvars.iv.next173.i to i32
  br label %.preheader39.i

.preheader39.loopexit138.i:                       ; preds = %..loopexit43_crit_edge.us109.us.i
  %i.kz = trunc nuw nsw i64 %indvars.iv.next169.i to i32
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.loopexit138.i, %.preheader39.loopexit.i, %.loopexit43.us106.preheader.i, %.lr.ph96.split.split.preheader.i, %.preheader44.i
  %.1235.lcssa.i = phi i32 [ %.0234.lcssa.i, %.preheader44.i ], [ %i.jl, %.loopexit43.us106.preheader.i ], [ %i.kz, %.preheader39.loopexit138.i ], [ %i.ky, %.preheader39.loopexit.i ], [ %i.jd, %.lr.ph96.split.split.preheader.i ] ; 2 uses
  %.6.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader44.i ], [ %.0.lcssa.i, %.loopexit43.us106.preheader.i ], [ %i.ks, %.preheader39.loopexit138.i ], [ %.11.lcssa.us.i, %.preheader39.loopexit.i ], [ %.0.lcssa.i, %.lr.ph96.split.split.preheader.i ]
  %i.la = icmp slt i32 %.1235.lcssa.i, %2
  br i1 %i.la, label %.lr.ph137.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph137.i:                                      ; preds = %.preheader39.i
  %i.lb = sext i32 %3 to i64
  %i.lc = mul i64 %i.k, %i.lb
  %i.ld = icmp sgt i32 %4, 3                      ; 2 uses
  %.idx262.i = shl i64 %i.k, 4                    ; 2 uses
  %.idx.i = shl i64 %i.k, 3
  %.idx260.i = mul i64 %i.k, 12
  %i.le = and i32 %4, -4
  %i.lf = sext i32 %.1235.lcssa.i to i64
  %i.lg = sext i32 %1 to i64
  %i.lh = sext i32 %i.b to i64
  %wide.trip.count.i = sext i32 %2 to i64
  %xtraiter98 = and i32 %4, 1
  %lcmp.mod99.not = icmp eq i32 %xtraiter98, 0
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph137.i
  %indvars.iv176.i = phi i64 [ %i.lf, %.lr.ph137.i ], [ %indvars.iv.next177.i, %.loopexit.i ] ; 2 uses
  %.13136.i = phi ptr [ %.6.lcssa.i, %.lr.ph137.i ], [ %.18.i, %.loopexit.i ] ; 5 uses
  %i.li = load ptr, ptr %0, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.lc
  %i.lk = add nsw i64 %indvars.iv176.i, %i.lg     ; 2 uses
  %i.ll = mul nsw i64 %i.lk, %i.lh
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.ll ; 3 uses
  %i.ln = load ptr, ptr %5, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.lk
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !68 ; 5 uses
  switch i32 %i.b, label %.loopexit.i [
    i32 4, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.lq = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.lr = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ld, label %.lr.ph120.i, label %.loopexit.i

.lr.ph120.i:                                      ; preds = %bb.e, %.lr.ph120.i
  %.14119.i = phi ptr [ %i.md, %.lr.ph120.i ], [ %.13136.i, %bb.e ] ; 2 uses
  %.0243118.i = phi i32 [ %i.mf, %.lr.ph120.i ], [ 0, %bb.e ]
  %.0247117.i = phi ptr [ %i.me, %.lr.ph120.i ], [ %i.lm, %bb.e ] ; 2 uses
  %i.ls = load <4 x float>, ptr %.0247117.i, align 16, !tbaa !113
  %i.lt = fmul fast <4 x float> %i.ls, %i.lr      ; 2 uses
  %i.lu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.lt)
  %i.lv = fadd fast <4 x float> %i.lu, %i.lt
  %i.lw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lv) ; 2 uses
  %i.lx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.lw, <4 x i32> %i.lw)
  %i.ly = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lx, <8 x i16> splat (i16 -127))
  %i.lz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ly, <8 x i16> splat (i16 127))
  %i.ma = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.lz, <8 x i16> poison)
  %i.mb = bitcast <16 x i8> %i.ma to <4 x i32>
  %i.mc = extractelement <4 x i32> %i.mb, i64 0
  store i32 %i.mc, ptr %.14119.i, align 4, !tbaa !45
  %i.md = getelementptr inbounds nuw i8, ptr %.14119.i, i64 4 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.0247117.i, i64 %.idx262.i
  %i.mf = add nuw nsw i32 %.0243118.i, 4          ; 2 uses
  %i.mg = or disjoint i32 %i.mf, 3
  %i.mh = icmp slt i32 %i.mg, %4
  br i1 %i.mh, label %.lr.ph120.i, label %.loopexit.i, !llvm.loop !693

bb.f:                                             ; preds = %bb.d
  %i.mi = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ld, label %.lr.ph126.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph126.i, %bb.f
  %.2249.lcssa.i = phi ptr [ %i.lm, %bb.f ], [ %i.np, %.lr.ph126.i ] ; 3 uses
  %.0237.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.le, %.lr.ph126.i ] ; 4 uses
  %.16.lcssa.i = phi ptr [ %.13136.i, %bb.f ], [ %i.no, %.lr.ph126.i ] ; 4 uses
  %i.mk = icmp slt i32 %.0237.lcssa.i, %4
  br i1 %i.mk, label %.lr.ph133.i.preheader, label %.loopexit.i

.lr.ph133.i.preheader:                            ; preds = %.preheader.i
  %.neg100 = or disjoint i32 %.0237.lcssa.i, 1
  br i1 %lcmp.mod99.not, label %.lr.ph133.i.prol.loopexit, label %.lr.ph133.i.prol

.lr.ph133.i.prol:                                 ; preds = %.lr.ph133.i.preheader
  %i.ml = load float, ptr %.2249.lcssa.i, align 4, !tbaa !68
  %i.mm = fmul fast float %i.ml, %i.lp
  %i.mn = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.mm)
  %i.mo = fptosi float %i.mn to i32
  %spec.select.i32.i.prol = tail call i32 @llvm.smax.i32(i32 %i.mo, i32 -127)
  %.0.i33.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i32.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i33.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.16.lcssa.i, align 1, !tbaa !113
  %i.mp = getelementptr inbounds nuw i8, ptr %.16.lcssa.i, i64 1 ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.2249.lcssa.i, i64 %i.k
  %i.mr = or disjoint i32 %.0237.lcssa.i, 1
  br label %.lr.ph133.i.prol.loopexit

.lr.ph133.i.prol.loopexit:                        ; preds = %.lr.ph133.i.prol, %.lr.ph133.i.preheader
  %.lcssa84.unr = phi ptr [ poison, %.lr.ph133.i.preheader ], [ %i.mp, %.lr.ph133.i.prol ]
  %.17132.i.unr = phi ptr [ %.16.lcssa.i, %.lr.ph133.i.preheader ], [ %i.mp, %.lr.ph133.i.prol ]
  %.1238131.i.unr = phi i32 [ %.0237.lcssa.i, %.lr.ph133.i.preheader ], [ %i.mr, %.lr.ph133.i.prol ]
  %.3250130.i.unr = phi ptr [ %.2249.lcssa.i, %.lr.ph133.i.preheader ], [ %i.mq, %.lr.ph133.i.prol ]
  %i.ms = icmp eq i32 %4, %.neg100
  br i1 %i.ms, label %.loopexit.i, label %.lr.ph133.i

.lr.ph126.i:                                      ; preds = %bb.f, %.lr.ph126.i
  %.16125.i = phi ptr [ %i.no, %.lr.ph126.i ], [ %.13136.i, %bb.f ] ; 2 uses
  %.0237124.i = phi i32 [ %i.nq, %.lr.ph126.i ], [ 0, %bb.f ]
  %.2249123.i = phi ptr [ %i.np, %.lr.ph126.i ], [ %i.lm, %bb.f ] ; 5 uses
  %i.mt = load float, ptr %.2249123.i, align 4, !tbaa !68
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.2249123.i, i64 %i.k
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !68
  %i.mw = getelementptr inbounds nuw i8, ptr %.2249123.i, i64 %.idx.i
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !68
  %i.my = getelementptr inbounds nuw i8, ptr %.2249123.i, i64 %.idx260.i
  %i.mz = load float, ptr %i.my, align 4, !tbaa !68
  %i.na = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.nb = insertelement <4 x float> %i.na, float %i.mv, i64 1
  %i.nc = insertelement <4 x float> %i.nb, float %i.mx, i64 2
  %i.nd = insertelement <4 x float> %i.nc, float %i.mz, i64 3
  %i.ne = fmul fast <4 x float> %i.nd, %i.mj      ; 2 uses
  %i.nf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ne)
  %i.ng = fadd fast <4 x float> %i.nf, %i.ne
  %i.nh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ng) ; 2 uses
  %i.ni = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.nh, <4 x i32> %i.nh)
  %i.nj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ni, <8 x i16> splat (i16 -127))
  %i.nk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nj, <8 x i16> splat (i16 127))
  %i.nl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.nk, <8 x i16> poison)
  %i.nm = bitcast <16 x i8> %i.nl to <4 x i32>
  %i.nn = extractelement <4 x i32> %i.nm, i64 0
  store i32 %i.nn, ptr %.16125.i, align 4, !tbaa !45
  %i.no = getelementptr inbounds nuw i8, ptr %.16125.i, i64 4 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.ek = and i32 %i.ee, -2
  %i.el = add i32 %i.ej, %i.ek
  br label %.preheader254

.lr.ph302:                                        ; preds = %.preheader256, %._crit_edge293
  %.2405301 = phi ptr [ %i.fu, %._crit_edge293 ], [ %.1404.lcssa, %.preheader256 ] ; 9 uses
  %.2411300 = phi ptr [ %.3412.lcssa, %._crit_edge293 ], [ %.0409.lcssa, %.preheader256 ] ; 3 uses
  %.1418299 = phi i32 [ %i.fv, %._crit_edge293 ], [ %.0417.lcssa, %.preheader256 ]
  br i1 %.not515, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph302
  %i.em = load <4 x float>, ptr %.2405301, align 16, !tbaa !113
  %i.en = getelementptr inbounds nuw i8, ptr %.2405301, i64 16
  %i.eo = load <4 x float>, ptr %i.en, align 16, !tbaa !113
  %i.ep = getelementptr inbounds nuw i8, ptr %.2405301, i64 32
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !113
  %i.er = getelementptr inbounds nuw i8, ptr %.2405301, i64 48
  %i.es = load <4 x float>, ptr %i.er, align 16, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph302
  %.0204 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph302 ], [ %i.es, %bb.e ] ; 2 uses
  %.0202 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph302 ], [ %i.eq, %bb.e ] ; 2 uses
  %.0200 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph302 ], [ %i.eo, %bb.e ] ; 2 uses
  %.0198 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph302 ], [ %i.em, %bb.e ] ; 2 uses
  br i1 %i.c, label %.lr.ph292, label %._crit_edge293

.lr.ph292:                                        ; preds = %bb.f, %.lr.ph292
  %.3412290 = phi ptr [ %i.fo, %.lr.ph292 ], [ %.2411300, %bb.f ] ; 2 uses
  %.0443289 = phi ptr [ %i.fn, %.lr.ph292 ], [ %.0401359, %bb.f ] ; 2 uses
  %.0444288 = phi i32 [ %i.fp, %.lr.ph292 ], [ 0, %bb.f ]
  %.1199287 = phi <4 x float> [ %i.fg, %.lr.ph292 ], [ %.0198, %bb.f ]
  %.1201286 = phi <4 x float> [ %i.fi, %.lr.ph292 ], [ %.0200, %bb.f ]
  %.1203285 = phi <4 x float> [ %i.fk, %.lr.ph292 ], [ %.0202, %bb.f ]
  %.1205284 = phi <4 x float> [ %i.fm, %.lr.ph292 ], [ %.0204, %bb.f ]
  %i.et = load i64, ptr %.0443289, align 1, !tbaa !113
  %i.eu = insertelement <2 x i64> poison, i64 %i.et, i64 0
  %i.ev = bitcast <2 x i64> %i.eu to <8 x i16>
  %i.ew = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ex = bitcast <8 x i16> %i.ew to <4 x float>  ; 3 uses
  %i.ey = load i64, ptr %.3412290, align 1, !tbaa !113
  %i.ez = insertelement <2 x i64> poison, i64 %i.ey, i64 0
  %i.fa = bitcast <2 x i64> %i.ez to <8 x i16>
  %i.fb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fc = bitcast <8 x i16> %i.fb to <4 x float>  ; 3 uses
  %i.fd = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fe = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ff = fmul fast <4 x float> %i.fc, %i.ex
  %i.fg = fadd fast <4 x float> %i.ff, %.1199287  ; 2 uses
  %i.fh = fmul fast <4 x float> %i.fe, %i.ex
  %i.fi = fadd fast <4 x float> %i.fh, %.1201286  ; 2 uses
  %i.fj = fmul fast <4 x float> %i.fd, %i.fc
  %i.fk = fadd fast <4 x float> %i.fj, %.1203285  ; 2 uses
  %i.fl = fmul fast <4 x float> %i.fe, %i.fd
  %i.fm = fadd fast <4 x float> %i.fl, %.1205284  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0443289, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.3412290, i64 8
  %i.fp = add nuw nsw i32 %.0444288, 1            ; 2 uses
  %exitcond739.not = icmp eq i32 %i.fp, %3
  br i1 %exitcond739.not, label %._crit_edge293.loopexit, label %.lr.ph292, !llvm.loop !941

._crit_edge293.loopexit:                          ; preds = %.lr.ph292
  %i.fq = getelementptr i8, ptr %.2411300, i64 %i.j
  %scevgep738 = getelementptr i8, ptr %i.fq, i64 8
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %._crit_edge293.loopexit, %bb.f
  %.1205.lcssa = phi <4 x float> [ %.0204, %bb.f ], [ %i.fm, %._crit_edge293.loopexit ]
  %.1203.lcssa = phi <4 x float> [ %.0202, %bb.f ], [ %i.fk, %._crit_edge293.loopexit ]
  %.1201.lcssa = phi <4 x float> [ %.0200, %bb.f ], [ %i.fi, %._crit_edge293.loopexit ]
  %.1199.lcssa = phi <4 x float> [ %.0198, %bb.f ], [ %i.fg, %._crit_edge293.loopexit ]
  %.3412.lcssa = phi ptr [ %.2411300, %bb.f ], [ %scevgep738, %._crit_edge293.loopexit ] ; 2 uses
  store <4 x float> %.1199.lcssa, ptr %.2405301, align 16, !tbaa !113
  %i.fr = getelementptr inbounds nuw i8, ptr %.2405301, i64 16
  store <4 x float> %.1201.lcssa, ptr %i.fr, align 16, !tbaa !113
  %i.fs = getelementptr inbounds nuw i8, ptr %.2405301, i64 32
  store <4 x float> %.1203.lcssa, ptr %i.fs, align 16, !tbaa !113
  %i.ft = getelementptr inbounds nuw i8, ptr %.2405301, i64 48
  store <4 x float> %.1205.lcssa, ptr %i.ft, align 16, !tbaa !113
  %i.fu = getelementptr inbounds nuw i8, ptr %.2405301, i64 64 ; 2 uses
  %i.fv = add nuw nsw i32 %.1418299, 4            ; 3 uses
  %i.fw = or disjoint i32 %i.fv, 3
  %i.fx = icmp slt i32 %i.fw, %1
  br i1 %i.fx, label %.lr.ph302, label %.preheader255, !llvm.loop !942

.preheader254:                                    ; preds = %.lr.ph320.split.split, %._crit_edge313.us, %.lr.ph320.split.split.us.preheader, %.preheader255
  %.2419.lcssa = phi i32 [ %.1418.lcssa, %.preheader255 ], [ %i.el, %.lr.ph320.split.split.us.preheader ], [ %i.dz, %._crit_edge313.us ], [ %i.hb, %.lr.ph320.split.split ] ; 4 uses
  %.4413.lcssa = phi ptr [ %.2411.lcssa, %.preheader255 ], [ %.2411.lcssa, %.lr.ph320.split.split.us.preheader ], [ %scevgep743, %._crit_edge313.us ], [ %.2411.lcssa, %.lr.ph320.split.split ]
  %.3.lcssa = phi ptr [ %.2405.lcssa, %.preheader255 ], [ %scevgep742, %.lr.ph320.split.split.us.preheader ], [ %i.dy, %._crit_edge313.us ], [ %i.ha, %.lr.ph320.split.split ] ; 5 uses
  %i.fy = icmp slt i32 %.2419.lcssa, %1
  br i1 %i.fy, label %.lr.ph348, label %._crit_edge349

.lr.ph348:                                        ; preds = %.preheader254
  br i1 %i.c, label %.lr.ph348.split.us, label %.lr.ph348.split

.lr.ph348.split.us:                               ; preds = %.lr.ph348, %._crit_edge342.us
  %.4347.us = phi ptr [ %i.gr, %._crit_edge342.us ], [ %.3.lcssa, %.lr.ph348 ] ; 3 uses
  %.6415346.us = phi ptr [ %scevgep749, %._crit_edge342.us ], [ %.4413.lcssa, %.lr.ph348 ] ; 2 uses
  %.3420345.us = phi i32 [ %i.gs, %._crit_edge342.us ], [ %.2419.lcssa, %.lr.ph348 ]
  br i1 %.not515, label %.lr.ph341.us.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph348.split.us
  %i.fz = load <4 x float>, ptr %.4347.us, align 16, !tbaa !113
  br label %.lr.ph341.us.preheader

.lr.ph341.us.preheader:                           ; preds = %bb.g, %.lr.ph348.split.us
  %.1211336.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph348.split.us ], [ %i.fz, %bb.g ]
  br label %.lr.ph341.us

.lr.ph341.us:                                     ; preds = %.lr.ph341.us.preheader, %.lr.ph341.us
  %.7416339.us = phi ptr [ %i.go, %.lr.ph341.us ], [ %.6415346.us, %.lr.ph341.us.preheader ] ; 2 uses
  %.0447338.us = phi ptr [ %i.gn, %.lr.ph341.us ], [ %.0401359, %.lr.ph341.us.preheader ] ; 2 uses
  %.0474337.us = phi i32 [ %i.gp, %.lr.ph341.us ], [ 0, %.lr.ph341.us.preheader ]
  %.1211336.us = phi <4 x float> [ %i.gm, %.lr.ph341.us ], [ %.1211336.us.ph, %.lr.ph341.us.preheader ]
  %i.ga = load i64, ptr %.0447338.us, align 1, !tbaa !113
  %i.gb = insertelement <2 x i64> poison, i64 %i.ga, i64 0
  %i.gc = bitcast <2 x i64> %i.gb to <8 x i16>
  %i.gd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ge = bitcast <8 x i16> %i.gd to <4 x float>
  %i.gf = load i16, ptr %.7416339.us, align 2, !tbaa !526
  %i.gg = zext i16 %i.gf to i32
  %i.gh = shl nuw i32 %i.gg, 16
  %i.gi = insertelement <4 x i32> poison, i32 %i.gh, i64 0
  %i.gj = bitcast <4 x i32> %i.gi to <4 x float>
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gl = fmul fast <4 x float> %i.gk, %i.ge
  %i.gm = fadd fast <4 x float> %i.gl, %.1211336.us ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0447338.us, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.7416339.us, i64 2
  %i.gp = add nuw nsw i32 %.0474337.us, 1         ; 2 uses
  %exitcond750.not = icmp eq i32 %i.gp, %3
  br i1 %exitcond750.not, label %._crit_edge342.us, label %.lr.ph341.us, !llvm.loop !943

._crit_edge342.us:                                ; preds = %.lr.ph341.us
  %i.gq = getelementptr i8, ptr %.6415346.us, i64 %i.m
  %scevgep749 = getelementptr i8, ptr %i.gq, i64 2
  store <4 x float> %i.gm, ptr %.4347.us, align 16, !tbaa !113
  %i.gr = getelementptr inbounds nuw i8, ptr %.4347.us, i64 16 ; 2 uses
  %i.gs = add nuw nsw i32 %.3420345.us, 1         ; 2 uses
  %exitcond751.not = icmp eq i32 %i.gs, %1
  br i1 %exitcond751.not, label %._crit_edge349, label %.lr.ph348.split.us, !llvm.loop !944

.lr.ph348.split:                                  ; preds = %.lr.ph348
  br i1 %.not515, label %.lr.ph348.split.split.us.preheader, label %.lr.ph348.split.split.preheader

.lr.ph348.split.split.preheader:                  ; preds = %.lr.ph348.split
  %scevgep745 = getelementptr i8, ptr %.3.lcssa, i64 16
  %i.gt = sub i32 %i.l, %.2419.lcssa
  %i.gu = zext i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 4
  %scevgep746 = getelementptr i8, ptr %scevgep745, i64 %i.gv
  br label %._crit_edge349

.lr.ph348.split.split.us.preheader:               ; preds = %.lr.ph348.split
  %i.gw = sub i32 %i.l, %.2419.lcssa
  %i.gx = zext i32 %i.gw to i64
  %i.gy = shl nuw nsw i64 %i.gx, 4                ; 2 uses
  %i.gz = add nuw nsw i64 %i.gy, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.3.lcssa, i8 0, i64 %i.gz, i1 false), !tbaa !113
  %scevgep747 = getelementptr i8, ptr %.3.lcssa, i64 16
  %scevgep748 = getelementptr i8, ptr %scevgep747, i64 %i.gy
  br label %._crit_edge349

.lr.ph320.split.split:                            ; preds = %.lr.ph320.split, %.lr.ph320.split.split
  %.3319 = phi ptr [ %i.ha, %.lr.ph320.split.split ], [ %.2405.lcssa, %.lr.ph320.split ]
  %.2419317 = phi i32 [ %i.hb, %.lr.ph320.split.split ], [ %.1418.lcssa, %.lr.ph320.split ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.3319, i64 32 ; 2 uses
  %i.hb = add nuw nsw i32 %.2419317, 2            ; 3 uses
  %i.hc = or disjoint i32 %i.hb, 1
  %i.hd = icmp slt i32 %i.hc, %1
  br i1 %i.hd, label %.lr.ph320.split.split, label %.preheader254, !llvm.loop !940

._crit_edge349:                                   ; preds = %._crit_edge342.us, %.lr.ph348.split.split.preheader, %.lr.ph348.split.split.us.preheader, %.preheader254
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader254 ], [ %scevgep748, %.lr.ph348.split.split.us.preheader ], [ %scevgep746, %.lr.ph348.split.split.preheader ], [ %i.gr, %._crit_edge342.us ] ; 2 uses
  %i.he = getelementptr inbounds [2 x i8], ptr %.0401359, i64 %i.e ; 2 uses
  %i.hf = add nuw nsw i32 %.0406357, 4            ; 2 uses
  %i.hg = or disjoint i32 %i.hf, 3
  %i.hh = icmp slt i32 %i.hg, %0
  br i1 %i.hh, label %.preheader257, label %.preheader253.loopexit, !llvm.loop !945

.preheader252:                                    ; preds = %.preheader252.lr.ph, %._crit_edge454
  %.1402458 = phi ptr [ %.0401.lcssa, %.preheader252.lr.ph ], [ %i.qj, %._crit_edge454 ] ; 10 uses
  %.5457 = phi ptr [ %.0403.lcssa, %.preheader252.lr.ph ], [ %.9.lcssa, %._crit_edge454 ] ; 2 uses
  %.1407456 = phi i32 [ %.0406.lcssa, %.preheader252.lr.ph ], [ %i.qk, %._crit_edge454 ]
  br i1 %i.q, label %.lr.ph382, label %.preheader251

.preheader248:                                    ; preds = %._crit_edge454, %.preheader253
  %.1407.lcssa = phi i32 [ %.0406.lcssa, %.preheader253 ], [ %i.qk, %._crit_edge454 ] ; 2 uses
  %.5.lcssa = phi ptr [ %.0403.lcssa, %.preheader253 ], [ %.9.lcssa, %._crit_edge454 ]
  %.1402.lcssa = phi ptr [ %.0401.lcssa, %.preheader253 ], [ %i.qj, %._crit_edge454 ]
  %i.hi = icmp slt i32 %.1407.lcssa, %0
  br i1 %i.hi, label %.preheader247.lr.ph, label %._crit_edge616

.preheader247.lr.ph:                              ; preds = %.preheader248
  %i.hj = icmp sgt i32 %1, 7
  %.not507 = icmp eq i32 %2, 0                    ; 4 uses
  %i.hk = icmp sgt i32 %3, 3                      ; 4 uses
  %i.hl = sext i32 %3 to i64
  %i.hm = add i32 %3, -4                          ; 4 uses
  %i.hn = and i32 %i.hm, -4
  %i.ho = add i32 %i.hn, 4                        ; 4 uses
  %i.hp = and i32 %1, -8
  %i.hq = lshr i32 %i.hm, 2
  %i.hr = zext nneg i32 %i.hq to i64              ; 5 uses
  %i.hs = shl nuw nsw i64 %i.hr, 5
  %i.ht = shl nuw nsw i64 %i.hr, 4
  %i.hu = shl nuw nsw i64 %i.hr, 3
  %i.hv = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check233 = icmp ult i32 %i.hm, 12
  %n.vec235 = and i64 %i.hv, 2147483644           ; 5 uses
  %i.hw = trunc nuw nsw i64 %n.vec235 to i32
  %i.hx = shl i32 %i.hw, 2
  %i.hy = shl nuw nsw i64 %n.vec235, 3
  %i.hz = shl nuw nsw i64 %n.vec235, 4
  %cmp.n256 = icmp eq i64 %i.hv, %n.vec235
  %i.ia = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check158 = icmp ult i32 %i.hm, 28
  %n.vec160 = and i64 %i.ia, 2147483640           ; 4 uses
  %i.ib = trunc nuw nsw i64 %n.vec160 to i32
  %i.ic = shl i32 %i.ib, 2
  %i.id = shl nuw nsw i64 %n.vec160, 3            ; 2 uses
  %cmp.n193 = icmp eq i64 %i.ia, %n.vec160
  br label %.preheader247

.preheader251:                                    ; preds = %._crit_edge373, %.preheader252
  %.0483.lcssa = phi i32 [ 0, %.preheader252 ], [ %i.x, %._crit_edge373 ] ; 6 uses
  %.0475.lcssa = phi ptr [ %.0.val1, %.preheader252 ], [ %.1476.lcssa, %._crit_edge373 ] ; 4 uses
  %.6.lcssa = phi ptr [ %.5457, %.preheader252 ], [ %i.la, %._crit_edge373 ] ; 5 uses
  %i.ie = or disjoint i32 %.0483.lcssa, 3
  %i.if = icmp slt i32 %i.ie, %1
  br i1 %i.if, label %.lr.ph400, label %.preheader250

.lr.ph400:                                        ; preds = %.preheader251
  br i1 %i.r, label %.lr.ph400.split.us, label %.lr.ph400.split

.lr.ph400.split.us:                               ; preds = %.lr.ph400, %._crit_edge393.us
  %.7399.us = phi ptr [ %i.je, %._crit_edge393.us ], [ %.6.lcssa, %.lr.ph400 ] ; 5 uses
  %.2477398.us = phi ptr [ %scevgep756, %._crit_edge393.us ], [ %.0475.lcssa, %.lr.ph400 ] ; 2 uses
  %.1484397.us = phi i32 [ %i.jf, %._crit_edge393.us ], [ %.0483.lcssa, %.lr.ph400 ]
  br i1 %.not511, label %.lr.ph392.us.preheader, label %bb.h

bb.h:                                             ; preds = %.lr.ph400.split.us
  %i.ig = load <4 x float>, ptr %.7399.us, align 16, !tbaa !113
  %i.ih = getelementptr inbounds nuw i8, ptr %.7399.us, i64 16
  %i.ii = load <4 x float>, ptr %i.ih, align 16, !tbaa !113
  br label %.lr.ph392.us.preheader

.lr.ph392.us.preheader:                           ; preds = %bb.h, %.lr.ph400.split.us
  %.1230387.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph400.split.us ], [ %i.ig, %bb.h ]
  %.1232386.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph400.split.us ], [ %i.ii, %bb.h ]
  br label %.lr.ph392.us

.lr.ph392.us:                                     ; preds = %.lr.ph392.us.preheader, %.lr.ph392.us
  %.3478390.us = phi ptr [ %i.ja, %.lr.ph392.us ], [ %.2477398.us, %.lr.ph392.us.preheader ] ; 2 uses
  %.0498389.us = phi i32 [ %i.jb, %.lr.ph392.us ], [ 0, %.lr.ph392.us.preheader ]
  %.0499388.us = phi ptr [ %i.iz, %.lr.ph392.us ], [ %.1402458, %.lr.ph392.us.preheader ] ; 2 uses
  %.1230387.us = phi <4 x float> [ %i.iw, %.lr.ph392.us ], [ %.1230387.us.ph, %.lr.ph392.us.preheader ]
  %.1232386.us = phi <4 x float> [ %i.iy, %.lr.ph392.us ], [ %.1232386.us.ph, %.lr.ph392.us.preheader ]
  %i.ij = load float, ptr %.0499388.us, align 1, !tbaa !113
  %i.ik = insertelement <4 x float> poison, float %i.ij, i64 0
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.im = bitcast <4 x float> %i.il to <8 x i16>
  %i.in = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.im, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.io = bitcast <8 x i16> %i.in to <4 x float>  ; 2 uses
  %i.ip = load i64, ptr %.3478390.us, align 1, !tbaa !113
  %i.iq = insertelement <2 x i64> poison, i64 %i.ip, i64 0
  %i.ir = bitcast <2 x i64> %i.iq to <8 x i16>
  %i.is = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ir, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.it = bitcast <8 x i16> %i.is to <4 x float>  ; 2 uses
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.iv = fmul fast <4 x float> %i.io, %i.it
  %i.iw = fadd fast <4 x float> %i.iv, %.1230387.us ; 2 uses
  %i.ix = fmul fast <4 x float> %i.iu, %i.io
  %i.iy = fadd fast <4 x float> %i.ix, %.1232386.us ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0499388.us, i64 4
  %i.ja = getelementptr inbounds nuw i8, ptr %.3478390.us, i64 8
  %i.jb = add nuw nsw i32 %.0498389.us, 1         ; 2 uses
  %exitcond757.not = icmp eq i32 %i.jb, %3
  br i1 %exitcond757.not, label %._crit_edge393.us, label %.lr.ph392.us, !llvm.loop !946

._crit_edge393.us:                                ; preds = %.lr.ph392.us
  %i.jc = getelementptr i8, ptr %.2477398.us, i64 %i.z
  %scevgep756 = getelementptr i8, ptr %i.jc, i64 8 ; 2 uses
  store <4 x float> %i.iw, ptr %.7399.us, align 16, !tbaa !113
  %i.jd = getelementptr inbounds nuw i8, ptr %.7399.us, i64 16
  store <4 x float> %i.iy, ptr %i.jd, align 16, !tbaa !113
  %i.je = getelementptr inbounds nuw i8, ptr %.7399.us, i64 32 ; 2 uses
  %i.jf = add nuw nsw i32 %.1484397.us, 4         ; 3 uses
  %i.jg = or disjoint i32 %i.jf, 3
  %i.jh = icmp slt i32 %i.jg, %1
  br i1 %i.jh, label %.lr.ph400.split.us, label %.preheader250, !llvm.loop !947

.lr.ph400.split:                                  ; preds = %.lr.ph400
  br i1 %.not511, label %.lr.ph400.split.split.us.preheader, label %.lr.ph400.split.split

.lr.ph400.split.split.us.preheader:               ; preds = %.lr.ph400.split
  %i.ji = sub i32 %i.y, %.0483.lcssa              ; 2 uses
  %i.jj = lshr i32 %i.ji, 2
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 5                ; 2 uses
  %i.jm = add nuw nsw i64 %i.jl, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.6.lcssa, i8 0, i64 %i.jm, i1 false), !tbaa !113
  %scevgep754 = getelementptr i8, ptr %.6.lcssa, i64 32
  %scevgep755 = getelementptr i8, ptr %scevgep754, i64 %i.jl
  %i.jn = or disjoint i32 %.0483.lcssa, 4
  %i.jo = and i32 %i.ji, -4
  %i.jp = add i32 %i.jn, %i.jo
  br label %.preheader250

.lr.ph382:                                        ; preds = %.preheader252, %._crit_edge373
  %.6381 = phi ptr [ %i.la, %._crit_edge373 ], [ %.5457, %.preheader252 ] ; 9 uses
  %.0475380 = phi ptr [ %.1476.lcssa, %._crit_edge373 ], [ %.0.val1, %.preheader252 ] ; 3 uses
  %.0483379 = phi i32 [ %i.lb, %._crit_edge373 ], [ 0, %.preheader252 ]
  br i1 %.not511, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph382
  %i.jq = load <4 x float>, ptr %.6381, align 16, !tbaa !113
  %i.jr = getelementptr inbounds nuw i8, ptr %.6381, i64 16
  %i.js = load <4 x float>, ptr %i.jr, align 16, !tbaa !113
  %i.jt = getelementptr inbounds nuw i8, ptr %.6381, i64 32
  %i.ju = load <4 x float>, ptr %i.jt, align 16, !tbaa !113
  %i.jv = getelementptr inbounds nuw i8, ptr %.6381, i64 48
  %i.jw = load <4 x float>, ptr %i.jv, align 16, !tbaa !113
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph382
  %.0224 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph382 ], [ %i.jw, %bb.i ] ; 2 uses
  %.0222 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph382 ], [ %i.ju, %bb.i ] ; 2 uses
  %.0220 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph382 ], [ %i.js, %bb.i ] ; 2 uses
  %.0218 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph382 ], [ %i.jq, %bb.i ] ; 2 uses
  br i1 %i.r, label %.lr.ph372, label %._crit_edge373

.lr.ph372:                                        ; preds = %bb.j, %.lr.ph372
  %.1476370 = phi ptr [ %i.ku, %.lr.ph372 ], [ %.0475380, %bb.j ] ; 2 uses
  %.0487369 = phi ptr [ %i.kt, %.lr.ph372 ], [ %.1402458, %bb.j ] ; 2 uses
  %.0500368 = phi i32 [ %i.kv, %.lr.ph372 ], [ 0, %bb.j ]
  %.1219367 = phi <4 x float> [ %i.km, %.lr.ph372 ], [ %.0218, %bb.j ]
  %.1221366 = phi <4 x float> [ %i.ko, %.lr.ph372 ], [ %.0220, %bb.j ]
  %.1223365 = phi <4 x float> [ %i.kq, %.lr.ph372 ], [ %.0222, %bb.j ]
  %.1225364 = phi <4 x float> [ %i.ks, %.lr.ph372 ], [ %.0224, %bb.j ]
  %i.jx = load float, ptr %.0487369, align 1, !tbaa !113
  %i.jy = insertelement <4 x float> poison, float %i.jx, i64 0
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ka = load <2 x i64>, ptr %.1476370, align 1, !tbaa !113 ; 2 uses
  %i.kb = bitcast <4 x float> %i.jz to <8 x i16>
  %i.kc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kd = bitcast <8 x i16> %i.kc to <4 x float>  ; 3 uses
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.kf = bitcast <2 x i64> %i.ka to <8 x i16>
  %i.kg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kh = bitcast <8 x i16> %i.kg to <4 x float>  ; 2 uses
  %i.ki = bitcast <2 x i64> %i.ka to <8 x i16>
  %i.kj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ki, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.kk = bitcast <8 x i16> %i.kj to <4 x float>  ; 2 uses
  %i.kl = fmul fast <4 x float> %i.kd, %i.kh
  %i.km = fadd fast <4 x float> %i.kl, %.1219367  ; 2 uses
  %i.kn = fmul fast <4 x float> %i.kk, %i.kd
  %i.ko = fadd fast <4 x float> %i.kn, %.1221366  ; 2 uses
  %i.kp = fmul fast <4 x float> %i.ke, %i.kh
  %i.kq = fadd fast <4 x float> %i.kp, %.1223365  ; 2 uses
  %i.kr = fmul fast <4 x float> %i.ke, %i.kk
  %i.ks = fadd fast <4 x float> %i.kr, %.1225364  ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.0487369, i64 4
  %i.ku = getelementptr inbounds nuw i8, ptr %.1476370, i64 16
  %i.kv = add nuw nsw i32 %.0500368, 1            ; 2 uses
  %exitcond753.not = icmp eq i32 %i.kv, %3
  br i1 %exitcond753.not, label %._crit_edge373.loopexit, label %.lr.ph372, !llvm.loop !948

._crit_edge373.loopexit:                          ; preds = %.lr.ph372
  %i.kw = getelementptr i8, ptr %.0475380, i64 %i.w
  %scevgep752 = getelementptr i8, ptr %i.kw, i64 16
  br label %._crit_edge373

._crit_edge373:                                   ; preds = %._crit_edge373.loopexit, %bb.j
  %.1225.lcssa = phi <4 x float> [ %.0224, %bb.j ], [ %i.ks, %._crit_edge373.loopexit ]
  %.1223.lcssa = phi <4 x float> [ %.0222, %bb.j ], [ %i.kq, %._crit_edge373.loopexit ]
  %.1221.lcssa = phi <4 x float> [ %.0220, %bb.j ], [ %i.ko, %._crit_edge373.loopexit ]
  %.1219.lcssa = phi <4 x float> [ %.0218, %bb.j ], [ %i.km, %._crit_edge373.loopexit ]
  %.1476.lcssa = phi ptr [ %.0475380, %bb.j ], [ %scevgep752, %._crit_edge373.loopexit ] ; 2 uses
  store <4 x float> %.1219.lcssa, ptr %.6381, align 16, !tbaa !113
  %i.kx = getelementptr inbounds nuw i8, ptr %.6381, i64 16
  store <4 x float> %.1221.lcssa, ptr %i.kx, align 16, !tbaa !113
  %i.ky = getelementptr inbounds nuw i8, ptr %.6381, i64 32
  store <4 x float> %.1223.lcssa, ptr %i.ky, align 16, !tbaa !113
  %i.kz = getelementptr inbounds nuw i8, ptr %.6381, i64 48
  store <4 x float> %.1225.lcssa, ptr %i.kz, align 16, !tbaa !113
  %i.la = getelementptr inbounds nuw i8, ptr %.6381, i64 64 ; 2 uses
  %i.lb = add nuw nsw i32 %.0483379, 8            ; 2 uses
  %i.lc = or disjoint i32 %i.lb, 7
  %i.ld = icmp slt i32 %i.lc, %1
  br i1 %i.ld, label %.lr.ph382, label %.preheader251, !llvm.loop !949

.preheader250:                                    ; preds = %.lr.ph400.split.split, %._crit_edge393.us, %.lr.ph400.split.split.us.preheader, %.preheader251
  %.1484.lcssa = phi i32 [ %.0483.lcssa, %.preheader251 ], [ %i.jp, %.lr.ph400.split.split.us.preheader ], [ %i.jf, %._crit_edge393.us ], [ %i.li, %.lr.ph400.split.split ] ; 3 uses
  %.2477.lcssa = phi ptr [ %.0475.lcssa, %.preheader251 ], [ %.0475.lcssa, %.lr.ph400.split.split.us.preheader ], [ %scevgep756, %._crit_edge393.us ], [ %.0475.lcssa, %.lr.ph400.split.split ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6.lcssa, %.preheader251 ], [ %scevgep755, %.lr.ph400.split.split.us.preheader ], [ %i.je, %._crit_edge393.us ], [ %i.lh, %.lr.ph400.split.split ] ; 2 uses
  %i.le = or disjoint i32 %.1484.lcssa, 1
  %i.lf = icmp slt i32 %i.le, %1
  br i1 %i.lf, label %.lr.ph435.preheader, label %.preheader249

.lr.ph435.preheader:                              ; preds = %.preheader250
end_hunk_8
