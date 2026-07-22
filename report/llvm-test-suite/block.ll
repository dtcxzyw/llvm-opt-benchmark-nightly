inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@consolidate_blocks:bb.a
  %i.eh = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.i221
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !17
  %i.ej = icmp eq i32 %i.ec, %i.ei
  br i1 %i.ej, label %._crit_edge.loopexit.split.loop.exit.i225, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i222 = add nsw i64 %indvars.iv.i221, 1 ; 2 uses
  %lftr.wideiv.i223 = trunc i64 %indvars.iv.next.i222 to i32
  %exitcond.not.i224 = icmp eq i32 %i.ee, %lftr.wideiv.i223
  br i1 %exitcond.not.i224, label %._crit_edge.i217, label %bb.n, !llvm.loop !19

._crit_edge.loopexit.split.loop.exit.i225:        ; preds = %bb.n
  %i.ek = trunc nsw i64 %indvars.iv.i221 to i32
  br label %._crit_edge.i217

._crit_edge.i217:                                 ; preds = %bb.o, %._crit_edge.loopexit.split.loop.exit.i225, %bb.m
  %.020.lcssa.i = phi i32 [ %i.ed, %bb.m ], [ %i.ek, %._crit_edge.loopexit.split.loop.exit.i225 ], [ %i.ee, %bb.o ] ; 2 uses
  %i.el = sext i32 %.020.lcssa.i to i64           ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !17
  %.not.i218 = icmp eq i32 %i.ec, %i.en
  br i1 %.not.i218, label %.preheader23.i, label %bb.p

.preheader23.i:                                   ; preds = %._crit_edge.i217
  %i.eo = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ep = sext i32 %i.eo to i64                   ; 2 uses
  %.not2229.i.not = icmp slt i64 %indvars.iv350, %i.ep
  br i1 %.not2229.i.not, label %.lr.ph31.i, label %.preheader.i

bb.p:                                             ; preds = %._crit_edge.i217
  %i.eq = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.er = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.eq, i32 noundef %i.ec) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

.preheader.i:                                     ; preds = %.lr.ph31.i, %.preheader23.i
  %.pre-phi.i219 = phi i64 [ %i.ep, %.preheader23.i ], [ %i.fa, %.lr.ph31.i ]
  %i.es = getelementptr [4 x i8], ptr %i.n, i64 %.pre-phi.i219
  %i.et = getelementptr i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  %i.ev = icmp slt i32 %.020.lcssa.i, %i.eu
  br i1 %i.ev, label %.lr.ph33.i, label %del_sorted_list.exit

.lr.ph31.i:                                       ; preds = %.preheader23.i, %.lr.ph31.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph31.i ], [ %i.q, %.preheader23.i ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv36.i ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = add nsw i32 %i.ex, -1
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !4
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %i.ez = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.fa = sext i32 %i.ez to i64                   ; 2 uses
  %.not22.i = icmp sgt i64 %indvars.iv36.i, %i.fa
  br i1 %.not22.i, label %.preheader.i, label %.lr.ph31.i, !llvm.loop !21

.lr.ph33.i:                                       ; preds = %.preheader.i, %.lr.ph33.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %.lr.ph33.i ], [ %i.el, %.preheader.i ] ; 2 uses
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, 1 ; 3 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next40.i
  %i.fc = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv39.i
  %i.fd = load <2 x i32>, ptr %i.fb, align 4, !tbaa !4
  store <2 x i32> %i.fd, ptr %i.fc, align 4, !tbaa !4
  %i.fe = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr [4 x i8], ptr %i.n, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next40.i, %i.fj
  br i1 %i.fk, label %.lr.ph33.i, label %del_sorted_list.exit, !llvm.loop !22

del_sorted_list.exit:                             ; preds = %.lr.ph33.i, %.preheader.i
  store i32 -1, ptr %i.eb, align 8, !tbaa !8
  %i.fl = load i32, ptr @x_block_half, align 4, !tbaa !4 ; 3 uses
  %i.fm = trunc i64 %indvars.iv333 to i32         ; 2 uses
  %i.fn = trunc i64 %indvars.iv333 to i1
  %i.fo = load i32, ptr @y_block_half, align 4, !tbaa !4 ; 3 uses
  %i.fp = and i32 %i.fm, 2
  %.not212 = icmp eq i32 %i.fp, 0
  %i.fq = select i1 %.not212, i32 0, i32 %i.fo
  %i.fr = lshr i32 %i.fm, 2
  %i.fs = load i32, ptr @z_block_half, align 4, !tbaa !4 ; 5 uses
  %i.ft = mul i32 %i.fs, %i.fr
  %i.fu = load i32, ptr @num_vars, align 4, !tbaa !4 ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.preheader228.lr.ph, label %._crit_edge268.split

.preheader228.lr.ph:                              ; preds = %del_sorted_list.exit
  %.not213262 = icmp slt i32 %i.fl, 1
  %.not214258 = icmp slt i32 %i.fo, 1
  %.not215253 = icmp slt i32 %i.fs, 1
  %brmerge = select i1 %.not213262, i1 true, i1 %.not214258
  %brmerge282 = select i1 %brmerge, i1 true, i1 %.not215253
  br i1 %brmerge282, label %._crit_edge268.split, label %.preheader228.lr.ph.split.split.split

.preheader228.lr.ph.split.split.split:            ; preds = %.preheader228.lr.ph
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eb, i64 184
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !38
  %i.fy = load ptr, ptr %i.du, align 8, !tbaa !38
  %i.fz = zext i32 %i.ft to i64                   ; 3 uses
  %i.ga = add nuw i32 %i.fs, 1
  %i.gb = zext nneg i32 %i.fq to i64
  %i.gc = add nuw i32 %i.fo, 1
  %i.gd = zext nneg i32 %i.fl to i64
  %i.ge = select i1 %i.fn, i64 %i.gd, i64 0
  %i.gf = add nuw i32 %i.fl, 1
  %wide.trip.count331 = zext nneg i32 %i.fu to i64
  %wide.trip.count326 = zext i32 %i.gf to i64
  %wide.trip.count317 = zext i32 %i.gc to i64
  %wide.trip.count308 = zext i32 %i.ga to i64     ; 3 uses
  %i.gg = shl nuw nsw i64 %i.fz, 3
  %i.gh = add nuw nsw i64 %i.fz, %wide.trip.count308
  %i.gi = shl nuw nsw i64 %i.gh, 3
  %i.gj = shl nuw nsw i64 %wide.trip.count308, 4  ; 4 uses
  %i.gk = zext nneg i32 %i.fs to i64              ; 3 uses
  %min.iters.check = icmp ult i32 %i.fs, 4
  %n.vec = and i64 %i.gk, 2147483646              ; 3 uses
  %i.gl = shl nuw nsw i64 %n.vec, 1
  %i.gm = or disjoint i64 %i.gl, 1
  %i.gn = or i64 %i.gk, 1
  %cmp.n = icmp eq i64 %n.vec, %i.gk
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.lr.ph.split.split.split, %._crit_edge265
  %indvars.iv328 = phi i64 [ 0, %.preheader228.lr.ph.split.split.split ], [ %indvars.iv.next329, %._crit_edge265 ] ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv328
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !39
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv328
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !39
  %invariant.gep400 = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ge
  br label %.preheader226

.preheader226:                                    ; preds = %.preheader228, %._crit_edge261
  %indvars.iv321 = phi i64 [ 1, %.preheader228 ], [ %indvars.iv.next322, %._crit_edge261 ] ; 2 uses
  %indvars.iv319 = phi i64 [ 1, %.preheader228 ], [ %indvars.iv.next320, %._crit_edge261 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv321 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !41 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !41 ; 2 uses
  %gep401 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep400, i64 %indvars.iv319
  %i.gw = load ptr, ptr %gep401, align 8, !tbaa !41
  %invariant.gep398 = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gb
  br label %.preheader

.preheader:                                       ; preds = %.preheader226, %._crit_edge257
  %indvars.iv312 = phi i64 [ 1, %.preheader226 ], [ %indvars.iv.next313, %._crit_edge257 ] ; 4 uses
  %indvars.iv310 = phi i64 [ 1, %.preheader226 ], [ %indvars.iv.next311, %._crit_edge257 ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv312
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !43 ; 5 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv312
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !43 ; 5 uses
  %i.hb = add nuw nsw i64 %indvars.iv312, 1       ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !43 ; 5 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.hb
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !43 ; 5 uses
  %gep399 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep398, i64 %indvars.iv310
  %i.hg = load ptr, ptr %gep399, align 8, !tbaa !43 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.fz ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep = getelementptr nuw i8, ptr %i.hg, i64 8
  %scevgep420 = getelementptr nuw i8, ptr %scevgep, i64 %i.gg ; 4 uses
  %scevgep421 = getelementptr i8, ptr %i.hg, i64 %i.gi ; 4 uses
  %scevgep422 = getelementptr nuw i8, ptr %i.gy, i64 8
  %scevgep423 = getelementptr i8, ptr %i.gy, i64 -8
  %scevgep424 = getelementptr i8, ptr %scevgep423, i64 %i.gj
  %scevgep425 = getelementptr nuw i8, ptr %i.ha, i64 8
  %scevgep426 = getelementptr i8, ptr %i.ha, i64 -8
  %scevgep427 = getelementptr i8, ptr %scevgep426, i64 %i.gj
  %scevgep428 = getelementptr nuw i8, ptr %i.hd, i64 8
  %scevgep429 = getelementptr i8, ptr %i.hd, i64 -8
  %scevgep430 = getelementptr i8, ptr %scevgep429, i64 %i.gj
  %scevgep431 = getelementptr nuw i8, ptr %i.hf, i64 8
  %scevgep432 = getelementptr i8, ptr %i.hf, i64 -8
  %scevgep433 = getelementptr i8, ptr %scevgep432, i64 %i.gj
  %bound0 = icmp ult ptr %scevgep420, %scevgep424
  %bound1 = icmp ult ptr %scevgep422, %scevgep421
  %found.conflict = and i1 %bound0, %bound1
  %bound0434 = icmp ult ptr %scevgep420, %scevgep427
  %bound1435 = icmp ult ptr %scevgep425, %scevgep421
  %found.conflict436 = and i1 %bound0434, %bound1435
  %conflict.rdx = or i1 %found.conflict, %found.conflict436
  %bound0437 = icmp ult ptr %scevgep420, %scevgep430
  %bound1438 = icmp ult ptr %scevgep428, %scevgep421
  %found.conflict439 = and i1 %bound0437, %bound1438
  %conflict.rdx440 = or i1 %conflict.rdx, %found.conflict439
  %bound0441 = icmp ult ptr %scevgep420, %scevgep433
  %bound1442 = icmp ult ptr %scevgep431, %scevgep421
  %found.conflict443 = and i1 %bound0441, %bound1442
  %conflict.rdx444 = or i1 %conflict.rdx440, %found.conflict443
  br i1 %conflict.rdx444, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.hh = shl i64 %index, 1
  %i.hi = or disjoint i64 %i.hh, 1                ; 4 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.hi
  %wide.vec = load <4 x double>, ptr %i.hj, align 8, !tbaa !45, !alias.scope !81 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec445 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hi
  %wide.vec446 = load <4 x double>, ptr %i.hk, align 8, !tbaa !45, !alias.scope !84 ; 2 uses
  %strided.vec447 = shufflevector <4 x double> %wide.vec446, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec448 = shufflevector <4 x double> %wide.vec446, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %0 = fadd <2 x double> %strided.vec, %strided.vec447
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hi
  %wide.vec449 = load <4 x double>, ptr %i.hl, align 8, !tbaa !45, !alias.scope !86 ; 2 uses
  %strided.vec450 = shufflevector <4 x double> %wide.vec449, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec451 = shufflevector <4 x double> %wide.vec449, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %1 = fadd <2 x double> %0, %strided.vec450
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hi
  %wide.vec452 = load <4 x double>, ptr %i.hm, align 8, !tbaa !45, !alias.scope !88 ; 2 uses
  %strided.vec453 = shufflevector <4 x double> %wide.vec452, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec454 = shufflevector <4 x double> %wide.vec452, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %2 = fadd <2 x double> %1, %strided.vec453
  %i.hn = fadd <2 x double> %2, %strided.vec445
  %i.ho = fadd <2 x double> %i.hn, %strided.vec448
  %i.hp = fadd <2 x double> %i.ho, %strided.vec451
  %i.hq = fadd <2 x double> %i.hp, %strided.vec454
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store <2 x double> %i.hq, ptr %i.hs, align 8, !tbaa !45, !alias.scope !90, !noalias !92
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge257, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv303.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.gm, %middle.block ]
  %indvars.iv301.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.gn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %scalar.ph ], [ %indvars.iv303.ph, %scalar.ph.preheader ] ; 6 uses
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %scalar.ph ], [ %indvars.iv301.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv303
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !45
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv303
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !45
  %i.hy = fadd double %i.hv, %i.hx
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv303
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !45
  %i.ib = fadd double %i.hy, %i.ia
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv303
  %i.id = load double, ptr %i.ic, align 8, !tbaa !45
  %i.ie = fadd double %i.ib, %i.id
  %i.if = add nuw nsw i64 %indvars.iv303, 1       ; 4 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !45
  %i.ii = fadd double %i.ie, %i.ih
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.if
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !45
  %i.il = fadd double %i.ii, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.if
  %i.in = load double, ptr %i.im, align 8, !tbaa !45
  %i.io = fadd double %i.il, %i.in
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.if
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !45
  %i.ir = fadd double %i.io, %i.iq
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv301
  store double %i.ir, ptr %gep, align 8, !tbaa !45
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 2
  %exitcond309.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count308
  br i1 %exitcond309.not, label %._crit_edge257, label %scalar.ph, !llvm.loop !94

._crit_edge257:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 2
  %exitcond318.not = icmp eq i64 %indvars.iv.next311, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge261, label %.preheader, !llvm.loop !95

._crit_edge261:                                   ; preds = %._crit_edge257
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 2
  %exitcond327.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count326
  br i1 %exitcond327.not, label %._crit_edge265, label %.preheader226, !llvm.loop !96

._crit_edge265:                                   ; preds = %._crit_edge261
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count331
  br i1 %exitcond332.not, label %._crit_edge268.split, label %.preheader228, !llvm.loop !97

._crit_edge268.split:                             ; preds = %._crit_edge265, %.preheader228.lr.ph, %del_sorted_list.exit
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  %exitcond336.not = icmp eq i64 %indvars.iv.next334, 8
  br i1 %exitcond336.not, label %.preheader229, label %bb.m, !llvm.loop !98

bb.q:                                             ; preds = %.preheader229, %.loopexit
  %indvars.iv343 = phi i64 [ 0, %.preheader229 ], [ %indvars.iv.next344, %.loopexit ] ; 22 uses
  %i.is = getelementptr inbounds nuw [16 x i8], ptr @consolidate_blocks.side, i64 %indvars.iv343 ; 4 uses
  %i.it = load i32, ptr %i.is, align 16, !tbaa !4
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !4  ; 2 uses
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.ix ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 52
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv343
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !4  ; 2 uses
  %i.jc = icmp eq i32 %i.jb, -2
  br i1 %i.jc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv343
  store i32 -2, ptr %i.jd, align 4, !tbaa !4
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv343
  store i32 0, ptr %i.je, align 4, !tbaa !4
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.jf = zext i32 %i.jb to i64                   ; 2 uses
  %i.jg = icmp eq i64 %indvars.iv350, %i.jf
  br i1 %i.jg, label %bb.t, label %.preheader227

bb.t:                                             ; preds = %bb.s
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 76
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.jh, i64 %indvars.iv343 ; 4 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !4  ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, -1
  br i1 %i.jk, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %indvars.iv343
  store i32 %i.jj, ptr %i.jl, align 4, !tbaa !4
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv343
  store i32 %i.s, ptr %i.jm, align 4, !tbaa !4
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv343
  store i32 0, ptr %i.jn, align 4, !tbaa !4
  %i.jo = load i32, ptr %i.ji, align 4, !tbaa !4
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 76
  %i.js = and i64 %indvars.iv343, 4294967295
  %i.jt = xor i64 %i.js, 1                        ; 3 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.jt
  store i32 %.0.lcssa, ptr %i.ju, align 4, !tbaa !4
  %i.jv = load i32, ptr %i.ji, align 4, !tbaa !4
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 52
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.jt
  store i32 %i.s, ptr %i.jz, align 4, !tbaa !4
  %i.ka = load i32, ptr %i.ji, align 4, !tbaa !4
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 28
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.jt
  store i32 0, ptr %i.ke, align 4, !tbaa !4
  br label %.loopexit

.preheader227:                                    ; preds = %bb.s
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %indvars.iv343 ; 4 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv343 ; 4 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv343 ; 4 uses
  %i.ki = and i64 %indvars.iv343, 4294967295
  %i.kj = xor i64 %i.ki, 1                        ; 12 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.iy, i64 76
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %indvars.iv343 ; 4 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !4  ; 2 uses
  %i.kn = icmp sgt i32 %i.km, -1
  br i1 %i.kn, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.preheader227
  %i.ko = icmp eq i64 %i.q, %i.jf
  br i1 %i.ko, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.ae, %bb.ab, %bb.z, %bb.v
  %.lcssa288 = phi i32 [ %i.iw, %bb.v ], [ %i.lm, %bb.z ], [ %i.mt, %bb.ab ], [ %i.ny, %bb.ae ]
  %i.kp = trunc nuw nsw i64 %indvars.iv343 to i32
  %i.kq = trunc nuw nsw i64 %indvars.iv347 to i32
  %i.kr = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.ks = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.kr, i32 noundef %i.kq, i32 noundef %.0.lcssa, i32 noundef %.lcssa288, i32 noundef %i.kp, i32 noundef %i.s) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

bb.x:                                             ; preds = %bb.v
  store i32 %i.km, ptr %i.kf, align 4, !tbaa !4
  store i32 %i.t, ptr %i.kg, align 4, !tbaa !4
  store i32 0, ptr %i.kh, align 4, !tbaa !4
  %i.kt = load i32, ptr %i.kl, align 4, !tbaa !4
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 76
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.kw, i64 %i.kj
  store i32 %.0.lcssa, ptr %i.kx, align 4, !tbaa !4
  %i.ky = load i32, ptr %i.kl, align 4, !tbaa !4
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 52
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.kj
  store i32 %i.s, ptr %i.lc, align 4, !tbaa !4
  %i.ld = load i32, ptr %i.kl, align 4, !tbaa !4
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 28
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.kj
  store i32 0, ptr %i.lh, align 4, !tbaa !4
  br label %bb.y

bb.y:                                             ; preds = %.preheader227, %bb.x
  %i.li = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !4
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !4  ; 2 uses
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 76
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %i.lp, i64 %indvars.iv343 ; 4 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !4  ; 2 uses
  %i.ls = icmp sgt i32 %i.lr, -1
  br i1 %i.ls, label %bb.z, label %.preheader227.1

end_hunk_0
