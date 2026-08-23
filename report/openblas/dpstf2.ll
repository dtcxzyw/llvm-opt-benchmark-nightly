Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpstf2?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dpstf2_:bb.a
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %i.aj = load double, ptr %2, align 8, !tbaa !16 ; 4 uses
  store double %i.aj, ptr %i.e, align 8, !tbaa !16
  %.not328359 = icmp slt i32 %.pre, 2
  br i1 %.not328359, label %._crit_edge364, label %.lr.ph363

.lr.ph363:                                        ; preds = %._crit_edge
  %i.ak = add i32 %i.h, 1                         ; 5 uses
  %i.al = zext nneg i32 %.pre to i64
  %i.am = add nsw i64 %i.al, -1                   ; 2 uses
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.an = add nsw i32 %.pre, -2
  %i.ao = icmp ult i32 %i.an, 3
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph363.new

.lr.ph363.new:                                    ; preds = %.lr.ph363
  %unroll_iter = and i64 %i.am, -4
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph363.new
  %indvars.iv398 = phi i64 [ 2, %.lr.ph363.new ], [ %indvars.iv.next399.3, %bb.o ] ; 5 uses
  %.0361 = phi i32 [ 1, %.lr.ph363.new ], [ %.1.3, %bb.o ]
  %i.ap = phi double [ %i.aj, %.lr.ph363.new ], [ %i.bu, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph363.new ], [ %niter.next.3, %bb.o ]
  %i.aq = trunc nuw nsw i64 %indvars.iv398 to i32 ; 2 uses
  %i.ar = mul i32 %i.ak, %i.aq
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !16 ; 3 uses
  %i.av = fcmp ogt double %i.au, %i.ap
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.au, ptr %i.e, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aw = phi double [ %i.au, %bb.h ], [ %i.ap, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %i.aq, %bb.h ], [ %.0361, %bb.g ]
  %i.ax = trunc i64 %indvars.iv398 to i32
  %i.ay = or disjoint i32 %i.ax, 1                ; 2 uses
  %i.az = mul i32 %i.ak, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !16 ; 3 uses
  %i.bd = fcmp ogt double %i.bc, %i.aw
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.bc, ptr %i.e, align 8, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = phi double [ %i.bc, %bb.j ], [ %i.aw, %bb.i ] ; 2 uses
  %.1.1 = phi i32 [ %i.ay, %bb.j ], [ %.1, %bb.i ]
  %i.bf = trunc i64 %indvars.iv398 to i32
  %i.bg = add i32 %i.bf, 2                        ; 2 uses
  %i.bh = mul i32 %i.ak, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !16 ; 3 uses
  %i.bl = fcmp ogt double %i.bk, %i.be
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.bk, ptr %i.e, align 8, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bm = phi double [ %i.bk, %bb.l ], [ %i.be, %bb.k ] ; 2 uses
  %.1.2 = phi i32 [ %i.bg, %bb.l ], [ %.1.1, %bb.k ]
  %i.bn = trunc i64 %indvars.iv398 to i32
  %i.bo = add i32 %i.bn, 3                        ; 2 uses
  %i.bp = mul i32 %i.ak, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !16 ; 3 uses
  %i.bt = fcmp ogt double %i.bs, %i.bm
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.bs, ptr %i.e, align 8, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = phi double [ %i.bs, %bb.n ], [ %i.bm, %bb.m ] ; 3 uses
  %.1.3 = phi i32 [ %i.bo, %bb.n ], [ %.1.2, %bb.m ] ; 3 uses
  %indvars.iv.next399.3 = add nuw nsw i64 %indvars.iv398, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge364.loopexit.unr-lcssa, label %bb.g, !llvm.loop !18

._crit_edge364.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge364, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge364.loopexit.unr-lcssa, %.lr.ph363
  %indvars.iv398.epil.init = phi i64 [ 2, %.lr.ph363 ], [ %indvars.iv.next399.3, %._crit_edge364.loopexit.unr-lcssa ]
  %.0361.epil.init = phi i32 [ 1, %.lr.ph363 ], [ %.1.3, %._crit_edge364.loopexit.unr-lcssa ]
  %.epil.init = phi double [ %i.aj, %.lr.ph363 ], [ %i.bu, %._crit_edge364.loopexit.unr-lcssa ]
  %lcmp.mod805 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod805)
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv398.epil = phi i64 [ %indvars.iv398.epil.init, %.epil.preheader ], [ %indvars.iv.next399.epil, %bb.r ] ; 2 uses
  %.0361.epil = phi i32 [ %.0361.epil.init, %.epil.preheader ], [ %.1.epil, %bb.r ]
  %i.bv = phi double [ %.epil.init, %.epil.preheader ], [ %i.cc, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.bw = trunc nuw nsw i64 %indvars.iv398.epil to i32 ; 2 uses
  %i.bx = mul i32 %i.ak, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !16 ; 3 uses
  %i.cb = fcmp ogt double %i.ca, %i.bv
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.ca, ptr %i.e, align 8, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cc = phi double [ %i.ca, %bb.q ], [ %i.bv, %bb.p ] ; 2 uses
  %.1.epil = phi i32 [ %i.bw, %bb.q ], [ %.0361.epil, %bb.p ] ; 2 uses
  %indvars.iv.next399.epil = add nuw nsw i64 %indvars.iv398.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge364, label %bb.p, !llvm.loop !19

._crit_edge364:                                   ; preds = %._crit_edge364.loopexit.unr-lcssa, %bb.r, %._crit_edge
  %i.cd = phi double [ %i.aj, %._crit_edge ], [ %i.bu, %._crit_edge364.loopexit.unr-lcssa ], [ %i.cc, %bb.r ]
  %.0.lcssa = phi i32 [ 1, %._crit_edge ], [ %.1.3, %._crit_edge364.loopexit.unr-lcssa ], [ %.1.epil, %bb.r ] ; 2 uses
  %i.ce = fcmp ugt double %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge364
  %i.cf = call i32 @disnan_(ptr noundef nonnull %i.e) #8
  %.not329 = icmp eq i32 %i.cf, 0
  br i1 %.not329, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge364
  store i32 0, ptr %5, align 4, !tbaa !8
  store i32 1, ptr %8, align 4, !tbaa !8
  br label %bb.an

bb.u:                                             ; preds = %bb.s
  %i.cg = load double, ptr %6, align 8, !tbaa !16 ; 2 uses
  %i.ch = fcmp olt double %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ci = load i32, ptr %1, align 4, !tbaa !8
  %i.cj = sitofp i32 %i.ci to double
  %i.ck = call double @dlamch_(ptr noundef nonnull @.str.3) #8
  %i.cl = fmul double %i.ck, %i.cj
  %i.cm = load double, ptr %i.e, align 8, !tbaa !16
  %i.cn = fmul double %i.cl, %i.cm
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.0308 = phi double [ %i.cn, %bb.v ], [ %i.cg, %bb.u ] ; 2 uses
  %i.co = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  %.not330365 = icmp slt i32 %i.co, 1
  br i1 %.not330365, label %.loopexit, label %._crit_edge369.thread

._crit_edge369.thread:                            ; preds = %bb.w
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %i.cq, i1 false), !tbaa !16
  %i.cr = add i32 %i.h, 1                         ; 43 uses
  %i.cs = sext i32 %i.h to i64                    ; 13 uses
  br i1 %.not, label %.lr.ph392, label %.lr.ph380

.lr.ph380:                                        ; preds = %._crit_edge369.thread
  %i.ct = zext nneg i32 %i.co to i64
  %scevgep524 = getelementptr i8, ptr %2, i64 -16
  %scevgep526 = getelementptr i8, ptr %2, i64 -8
  %i.cu = shl nsw i64 %i.i, 3                     ; 2 uses
  %scevgep564 = getelementptr i8, ptr %2, i64 %i.cu
  %i.cv = sext i32 %i.cr to i64
  %i.cw = shl nsw i64 %i.cv, 3
  %scevgep566 = getelementptr i8, ptr %2, i64 %i.cu
  %i.cx = icmp slt i32 %i.cr, 0                   ; 2 uses
  %i.cy = select i1 %i.cx, i32 %narrow, i32 %i.cr
  %i.cz = icmp ne i32 %i.cr, 0
  %broadcast.splatinsert583 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat584 = shufflevector <4 x i32> %broadcast.splatinsert583, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert616 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat617 = shufflevector <4 x i32> %broadcast.splatinsert616, <4 x i32> poison, <4 x i32> zeroinitializer
  %ident.check = icmp ne i32 %i.h, 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph380, %bb.ae
  %indvar = phi i64 [ 0, %.lr.ph380 ], [ %indvar.next, %bb.ae ] ; 12 uses
  %indvars.iv406 = phi i64 [ 1, %.lr.ph380 ], [ %indvars.iv.next407.pre-phi, %bb.ae ] ; 40 uses
  %.2378 = phi i32 [ %.0.lcssa, %.lr.ph380 ], [ %.3, %bb.ae ] ; 5 uses
  %i.da = xor i64 %indvar, -1
  %i.db = shl nuw nsw i64 %indvar, 3
  %scevgep560 = getelementptr i8, ptr %7, i64 %i.db ; 2 uses
  %9 = shl nuw nsw i64 %indvars.iv406, 3
  %scevgep562 = getelementptr i8, ptr %7, i64 %9  ; 2 uses
  %i.dc = trunc i64 %indvar to i32
  %i.dd = add i32 %i.dc, 1
  %i.de = mul i32 %i.dd, %i.cr
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 3                    ; 2 uses
  %scevgep567 = getelementptr i8, ptr %scevgep566, i64 %i.dg ; 4 uses
  %i.dh = trunc i64 %indvar to i32
  %i.di = add i32 %i.dh, 1
  %i.dj = mul i32 %i.di, %i.cr                    ; 4 uses
  %i.dk = xor i64 %indvar, -1
  %i.dl = shl nuw nsw i64 %indvar, 3
  %scevgep = getelementptr i8, ptr %7, i64 %i.dl  ; 4 uses
  %10 = shl nuw nsw i64 %indvars.iv406, 3
  %scevgep520 = getelementptr i8, ptr %7, i64 %10 ; 2 uses
  %indvar.tr = trunc i64 %indvars.iv406 to i32
  %i.dm = shl i32 %indvar.tr, 1
  %i.dn = sext i32 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 3                    ; 2 uses
  %scevgep525 = getelementptr i8, ptr %scevgep524, i64 %i.do ; 2 uses
  %i.dp = shl nuw nsw i64 %indvar, 4              ; 2 uses
  %i.dq = getelementptr i8, ptr %2, i64 %i.dp
  %scevgep528 = getelementptr i8, ptr %i.dq, i64 -8 ; 2 uses
  %scevgep529 = getelementptr i8, ptr %2, i64 %i.dp
  %indvar.tr780 = trunc i64 %indvars.iv406 to i32 ; 2 uses
  %i.dr = shl i32 %indvar.tr780, 1
  %i.ds = load i32, ptr %1, align 4, !tbaa !8     ; 5 uses
  %i.dt = sext i32 %i.ds to i64                   ; 5 uses
  %.not336370 = icmp sgt i64 %indvars.iv406, %i.dt
  br i1 %.not336370, label %._crit_edge374, label %.lr.ph373

.lr.ph373:                                        ; preds = %bb.x
  %i.du = icmp samesign ugt i64 %indvars.iv406, 1
  %i.dv = add i32 %i.ds, 1
  %wide.trip.count416 = zext i32 %i.dv to i64     ; 12 uses
  br i1 %i.du, label %.lr.ph373.split.us.preheader, label %iter.check610

iter.check610:                                    ; preds = %.lr.ph373
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.dt ; 7 uses
  %i.dw = add i64 %i.da, %wide.trip.count416      ; 7 uses
  %min.iters.check578 = icmp ult i64 %i.dw, 4
  br i1 %min.iters.check578, label %.lr.ph373.split.preheader, label %vector.scevcheck555

vector.scevcheck555:                              ; preds = %iter.check610
  %reass.sub = sub i64 %wide.trip.count416, %indvar
  %i.dx = add i64 %reass.sub, -2                  ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  %mul556 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.cy, i32 %i.dy) ; 2 uses
  %mul.result557 = extractvalue { i32, i1 } %mul556, 0 ; 2 uses
  %mul.overflow558 = extractvalue { i32, i1 } %mul556, 1
  %i.dz = add i32 %i.dj, %mul.result557
  %i.ea = sub i32 %i.dj, %mul.result557
  %i.eb = icmp slt i32 %i.dz, %i.dj
  %i.ec = icmp sgt i32 %i.ea, %i.dj
  %i.ed = select i1 %i.cx, i1 %i.ec, i1 %i.eb
  %i.ee = or i1 %i.ed, %mul.overflow558
  %i.ef = icmp ugt i64 %i.dx, 4294967295
  %i.eg = and i1 %i.ef, %i.cz
  %i.eh = or i1 %i.ee, %i.eg
  br i1 %i.eh, label %.lr.ph373.split.preheader, label %vector.memcheck559

vector.memcheck559:                               ; preds = %vector.scevcheck555
  %i.ei = shl nsw i64 %i.dt, 3                    ; 2 uses
  %scevgep561 = getelementptr i8, ptr %scevgep560, i64 %i.ei ; 2 uses
  %reass.sub781 = sub i64 %wide.trip.count416, %indvar
  %i.ej = add i64 %reass.sub781, -2               ; 2 uses
  %i.ek = shl nsw i64 %i.ej, 3                    ; 2 uses
  %i.el = getelementptr i8, ptr %scevgep562, i64 %i.ek
  %scevgep563 = getelementptr i8, ptr %i.el, i64 %i.ei ; 2 uses
  %i.em = mul i64 %i.cw, %i.ej
  %i.en = getelementptr i8, ptr %scevgep564, i64 %i.em
  %scevgep565 = getelementptr i8, ptr %i.en, i64 %i.dg ; 4 uses
  %i.eo = icmp ult ptr %scevgep565, %scevgep567
  %umin = select i1 %i.eo, ptr %scevgep565, ptr %scevgep567
  %i.ep = icmp ugt ptr %scevgep565, %scevgep567
  %umax = select i1 %i.ep, ptr %scevgep565, ptr %scevgep567
  %scevgep568 = getelementptr i8, ptr %umax, i64 8
  %scevgep569 = getelementptr i8, ptr %scevgep562, i64 %i.ek
  %bound0570 = icmp ult ptr %scevgep561, %scevgep568
  %bound1571 = icmp ult ptr %umin, %scevgep563
  %found.conflict572 = and i1 %bound0570, %bound1571
  %bound0573 = icmp ult ptr %scevgep561, %scevgep569
  %bound1574 = icmp ult ptr %scevgep560, %scevgep563
  %found.conflict575 = and i1 %bound0573, %bound1574
  %conflict.rdx576 = or i1 %found.conflict572, %found.conflict575
  br i1 %conflict.rdx576, label %.lr.ph373.split.preheader, label %vector.main.loop.iter.check579

vector.main.loop.iter.check579:                   ; preds = %vector.memcheck559
  %min.iters.check580 = icmp ult i64 %i.dw, 16
  br i1 %min.iters.check580, label %vec.epilog.ph614, label %vector.ph581

vector.ph581:                                     ; preds = %vector.main.loop.iter.check579
  %i.eq = and i64 %i.dw, 12
  %n.vec582 = and i64 %i.dw, -16                  ; 4 uses
  %i.er = or disjoint i64 %indvars.iv406, %n.vec582 ; 2 uses
  %i.es = trunc nuw i64 %indvars.iv406 to i32
  %broadcast.splatinsert585 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat586 = shufflevector <4 x i32> %broadcast.splatinsert585, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction587 = add nuw nsw <4 x i32> %broadcast.splat586, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body588

vector.body588:                                   ; preds = %vector.body588, %vector.ph581
  %index589 = phi i64 [ 0, %vector.ph581 ], [ %index.next604, %vector.body588 ] ; 2 uses
  %vec.ind590 = phi <4 x i32> [ %induction587, %vector.ph581 ], [ %vec.ind.next605, %vector.body588 ] ; 5 uses
  %step.add591 = add <4 x i32> %vec.ind590, splat (i32 4)
  %step.add.2592 = add <4 x i32> %vec.ind590, splat (i32 8)
  %step.add.3593 = add <4 x i32> %vec.ind590, splat (i32 12)
  %i.et = or disjoint i64 %indvars.iv406, %index589 ; 2 uses
  %i.eu = mul <4 x i32> %broadcast.splat584, %vec.ind590
  %i.ev = mul <4 x i32> %broadcast.splat584, %step.add591
  %i.ew = mul <4 x i32> %broadcast.splat584, %step.add.2592
  %i.ex = mul <4 x i32> %broadcast.splat584, %step.add.3593
  %i.ey = sext <4 x i32> %i.eu to <4 x i64>
  %i.ez = sext <4 x i32> %i.ev to <4 x i64>
  %i.fa = sext <4 x i32> %i.ew to <4 x i64>
  %i.fb = sext <4 x i32> %i.ex to <4 x i64>
  %wide.gep = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.ey
  %wide.gep594 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.ez
  %wide.gep595 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.fa
  %wide.gep596 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.fb
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !21
  %wide.masked.gather597 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep594, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !21
  %wide.masked.gather598 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep595, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !21
  %wide.masked.gather599 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep596, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !21
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.et ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 96
  %wide.load600 = load <4 x double>, ptr %i.fc, align 8, !tbaa !16, !alias.scope !24
  %wide.load601 = load <4 x double>, ptr %i.fd, align 8, !tbaa !16, !alias.scope !24
  %wide.load602 = load <4 x double>, ptr %i.fe, align 8, !tbaa !16, !alias.scope !24
  %wide.load603 = load <4 x double>, ptr %i.ff, align 8, !tbaa !16, !alias.scope !24
  %i.fg = fsub <4 x double> %wide.masked.gather, %wide.load600
  %i.fh = fsub <4 x double> %wide.masked.gather597, %wide.load601
  %i.fi = fsub <4 x double> %wide.masked.gather598, %wide.load602
  %i.fj = fsub <4 x double> %wide.masked.gather599, %wide.load603
  %i.fk = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.et ; 4 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 32
  %i.fm = getelementptr i8, ptr %i.fk, i64 64
  %i.fn = getelementptr i8, ptr %i.fk, i64 96
  store <4 x double> %i.fg, ptr %i.fk, align 8, !tbaa !16, !alias.scope !26, !noalias !28
  store <4 x double> %i.fh, ptr %i.fl, align 8, !tbaa !16, !alias.scope !26, !noalias !28
  store <4 x double> %i.fi, ptr %i.fm, align 8, !tbaa !16, !alias.scope !26, !noalias !28
  store <4 x double> %i.fj, ptr %i.fn, align 8, !tbaa !16, !alias.scope !26, !noalias !28
  %index.next604 = add nuw i64 %index589, 16      ; 2 uses
  %vec.ind.next605 = add <4 x i32> %vec.ind590, splat (i32 16)
  %i.fo = icmp eq i64 %index.next604, %n.vec582
  br i1 %i.fo, label %middle.block606, label %vector.body588, !llvm.loop !29

middle.block606:                                  ; preds = %vector.body588
  %cmp.n607 = icmp eq i64 %i.dw, %n.vec582
  br i1 %cmp.n607, label %._crit_edge374.thread, label %vec.epilog.iter.check612

vec.epilog.iter.check612:                         ; preds = %middle.block606
  %min.epilog.iters.check613 = icmp eq i64 %i.eq, 0
  br i1 %min.epilog.iters.check613, label %.lr.ph373.split.preheader, label %vec.epilog.ph614, !prof !30

vec.epilog.ph614:                                 ; preds = %vector.main.loop.iter.check579, %vec.epilog.iter.check612
  %vec.epilog.resume.val608 = phi i64 [ %n.vec582, %vec.epilog.iter.check612 ], [ 0, %vector.main.loop.iter.check579 ]
  %bc.resume.val609 = phi i64 [ %i.er, %vec.epilog.iter.check612 ], [ %indvars.iv406, %vector.main.loop.iter.check579 ]
  %n.vec615 = and i64 %i.dw, -4                   ; 3 uses
  %i.fp = or disjoint i64 %indvars.iv406, %n.vec615
  %i.fq = trunc i64 %bc.resume.val609 to i32
  %broadcast.splatinsert618 = insertelement <4 x i32> poison, i32 %i.fq, i64 0
  %broadcast.splat619 = shufflevector <4 x i32> %broadcast.splatinsert618, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction620 = add <4 x i32> %broadcast.splat619, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body621

vec.epilog.vector.body621:                        ; preds = %vec.epilog.vector.body621, %vec.epilog.ph614
  %index622 = phi i64 [ %vec.epilog.resume.val608, %vec.epilog.ph614 ], [ %index.next627, %vec.epilog.vector.body621 ] ; 2 uses
  %vec.ind623 = phi <4 x i32> [ %induction620, %vec.epilog.ph614 ], [ %vec.ind.next628, %vec.epilog.vector.body621 ] ; 2 uses
  %i.fr = or disjoint i64 %indvars.iv406, %index622 ; 2 uses
  %i.fs = mul <4 x i32> %broadcast.splat617, %vec.ind623
  %i.ft = sext <4 x i32> %i.fs to <4 x i64>
  %wide.gep624 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.ft
  %wide.masked.gather625 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep624, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !21
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fr
  %wide.load626 = load <4 x double>, ptr %i.fu, align 8, !tbaa !16, !alias.scope !24
  %i.fv = fsub <4 x double> %wide.masked.gather625, %wide.load626
  %i.fw = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fr
  store <4 x double> %i.fv, ptr %i.fw, align 8, !tbaa !16, !alias.scope !26, !noalias !28
  %index.next627 = add nuw i64 %index622, 4       ; 2 uses
  %vec.ind.next628 = add <4 x i32> %vec.ind623, splat (i32 4)
  %i.fx = icmp eq i64 %index.next627, %n.vec615
  br i1 %i.fx, label %vec.epilog.middle.block629, label %vec.epilog.vector.body621, !llvm.loop !31

vec.epilog.middle.block629:                       ; preds = %vec.epilog.vector.body621
  %cmp.n630 = icmp eq i64 %i.dw, %n.vec615
  br i1 %cmp.n630, label %._crit_edge374.thread, label %.lr.ph373.split.preheader

.lr.ph373.split.preheader:                        ; preds = %vector.memcheck559, %vector.scevcheck555, %iter.check610, %vec.epilog.iter.check612, %vec.epilog.middle.block629
  %indvars.iv408.ph = phi i64 [ %indvars.iv406, %iter.check610 ], [ %indvars.iv406, %vector.scevcheck555 ], [ %indvars.iv406, %vector.memcheck559 ], [ %i.er, %vec.epilog.iter.check612 ], [ %i.fp, %vec.epilog.middle.block629 ] ; 4 uses
  %i.fy = sub i64 %wide.trip.count416, %indvars.iv408.ph
  %xtraiter806 = and i64 %i.fy, 3                 ; 2 uses
  %lcmp.mod807.not = icmp eq i64 %xtraiter806, 0
  br i1 %lcmp.mod807.not, label %.lr.ph373.split.prol.loopexit, label %.lr.ph373.split.prol

.lr.ph373.split.prol:                             ; preds = %.lr.ph373.split.preheader, %.lr.ph373.split.prol
  %indvars.iv408.prol = phi i64 [ %indvars.iv.next409.prol, %.lr.ph373.split.prol ], [ %indvars.iv408.ph, %.lr.ph373.split.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph373.split.prol ], [ 0, %.lr.ph373.split.preheader ]
  %i.fz = trunc nuw nsw i64 %indvars.iv408.prol to i32
  %i.ga = mul i32 %i.cr, %i.fz
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.gb
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !16
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv408.prol
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !16
  %i.gg = fsub double %i.gd, %i.gf
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv408.prol
  store double %i.gg, ptr %gep.prol, align 8, !tbaa !16
  %indvars.iv.next409.prol = add nuw nsw i64 %indvars.iv408.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter806
  br i1 %prol.iter.cmp.not, label %.lr.ph373.split.prol.loopexit, label %.lr.ph373.split.prol, !llvm.loop !32

.lr.ph373.split.prol.loopexit:                    ; preds = %.lr.ph373.split.prol, %.lr.ph373.split.preheader
  %indvars.iv408.unr = phi i64 [ %indvars.iv408.ph, %.lr.ph373.split.preheader ], [ %indvars.iv.next409.prol, %.lr.ph373.split.prol ]
  %i.gh = sub i64 %indvars.iv408.ph, %wide.trip.count416
  %i.gi = icmp ugt i64 %i.gh, -4
  br i1 %i.gi, label %._crit_edge374.thread, label %.lr.ph373.split

.lr.ph373.split.us.preheader:                     ; preds = %.lr.ph373
  %i.gj = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv406
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8     ; 4 uses
  %invariant.gep481 = getelementptr [8 x i8], ptr %i.f, i64 %i.dt ; 4 uses
  %i.gl = add i64 %i.dk, %wide.trip.count416      ; 3 uses
  %min.iters.check546 = icmp ult i64 %i.gl, 25
  br i1 %min.iters.check546, label %.lr.ph373.split.us.preheader794, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph373.split.us.preheader
  %reass.sub782 = sub i64 %wide.trip.count416, %indvar
  %i.gm = add i64 %reass.sub782, -2               ; 2 uses
  %i.gn = trunc i64 %i.gm to i32
  %11 = add i32 %indvar.tr780, %i.gn
  %12 = shl i32 %11, 1
  %i.go = icmp slt i32 %12, %i.dr
  %i.gp = icmp ugt i64 %i.gm, 2147483647
  %i.gq = or i1 %i.go, %i.gp
  %i.gr = or i1 %ident.check, %i.gq
  br i1 %i.gr, label %.lr.ph373.split.us.preheader794, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %reass.sub783 = sub i64 %wide.trip.count416, %indvar
  %i.gs = add i64 %reass.sub783, -2               ; 2 uses
  %i.gt = shl nsw i64 %i.gs, 3                    ; 3 uses
  %scevgep521 = getelementptr i8, ptr %scevgep520, i64 %i.gt ; 3 uses
  %i.gu = shl nsw i64 %i.dt, 3                    ; 2 uses
  %scevgep522 = getelementptr i8, ptr %scevgep, i64 %i.gu ; 3 uses
  %i.gv = getelementptr i8, ptr %scevgep520, i64 %i.gt
  %scevgep523 = getelementptr i8, ptr %i.gv, i64 %i.gu ; 3 uses
  %i.gw = shl nsw i64 %i.gs, 4
  %i.gx = getelementptr i8, ptr %scevgep526, i64 %i.gw
  %scevgep527 = getelementptr i8, ptr %i.gx, i64 %i.do ; 2 uses
  %scevgep530 = getelementptr i8, ptr %scevgep529, i64 %i.gt ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep523
  %bound1 = icmp ult ptr %scevgep522, %scevgep521
  %found.conflict = and i1 %bound0, %bound1
  %bound0531 = icmp ult ptr %scevgep, %scevgep527
  %bound1532 = icmp ult ptr %scevgep525, %scevgep521
  %found.conflict533 = and i1 %bound0531, %bound1532
  %conflict.rdx = or i1 %found.conflict, %found.conflict533
  %bound0534 = icmp ult ptr %scevgep, %scevgep530
  %bound1535 = icmp ult ptr %scevgep528, %scevgep521
  %found.conflict536 = and i1 %bound0534, %bound1535
  %conflict.rdx537 = or i1 %conflict.rdx, %found.conflict536
  %bound0538 = icmp ult ptr %scevgep522, %scevgep527
  %bound1539 = icmp ult ptr %scevgep525, %scevgep523
  %found.conflict540 = and i1 %bound0538, %bound1539
  %conflict.rdx541 = or i1 %conflict.rdx537, %found.conflict540
  %bound0542 = icmp ult ptr %scevgep522, %scevgep530
  %bound1543 = icmp ult ptr %scevgep528, %scevgep523
  %found.conflict544 = and i1 %bound0542, %bound1543
  %conflict.rdx545 = or i1 %conflict.rdx541, %found.conflict544
  br i1 %conflict.rdx545, label %.lr.ph373.split.us.preheader794, label %vector.ph547

vector.ph547:                                     ; preds = %vector.memcheck
  %i.gy = and i64 %i.gl, 3                        ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  %i.ha = select i1 %i.gz, i64 4, i64 %i.gy
  %n.vec548 = sub i64 %i.gl, %i.ha                ; 2 uses
  %i.hb = add i64 %indvars.iv406, %n.vec548
  br label %vector.body549

vector.body549:                                   ; preds = %vector.body549, %vector.ph547
  %index550 = phi i64 [ 0, %vector.ph547 ], [ %index.next552, %vector.body549 ] ; 2 uses
  %i.hc = add i64 %indvars.iv406, %index550       ; 4 uses
  %i.hd = trunc i64 %i.hc to i32
  %i.he = getelementptr [8 x i8], ptr %i.gk, i64 %i.hc
  %wide.load = load <4 x double>, ptr %i.he, align 8, !tbaa !16, !alias.scope !33 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hc ; 2 uses
  %wide.load551 = load <4 x double>, ptr %i.hf, align 8, !tbaa !16, !alias.scope !36, !noalias !38
  %i.hg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load, <4 x double> %wide.load, <4 x double> %wide.load551) ; 2 uses
  store <4 x double> %i.hg, ptr %i.hf, align 8, !tbaa !16, !alias.scope !36, !noalias !38
  %i.hh = mul i32 %i.cr, %i.hd
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.hi
  %wide.vec = load <8 x double>, ptr %i.hj, align 8, !tbaa !16, !alias.scope !41
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hk = fsub <4 x double> %strided.vec, %i.hg
  %i.hl = getelementptr [8 x i8], ptr %invariant.gep481, i64 %i.hc
  store <4 x double> %i.hk, ptr %i.hl, align 8, !tbaa !16, !alias.scope !42, !noalias !43
  %index.next552 = add nuw i64 %index550, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next552, %n.vec548
  br i1 %i.hm, label %.lr.ph373.split.us.preheader794, label %vector.body549, !llvm.loop !44

.lr.ph373.split.us.preheader794:                  ; preds = %vector.body549, %vector.memcheck, %vector.scevcheck, %.lr.ph373.split.us.preheader
  %indvars.iv413.ph = phi i64 [ %indvars.iv406, %vector.memcheck ], [ %indvars.iv406, %vector.scevcheck ], [ %indvars.iv406, %.lr.ph373.split.us.preheader ], [ %i.hb, %vector.body549 ] ; 8 uses
  %i.hn = sub i64 %wide.trip.count416, %indvars.iv413.ph
  %xtraiter808 = and i64 %i.hn, 1
  %lcmp.mod809.not = icmp eq i64 %xtraiter808, 0
  br i1 %lcmp.mod809.not, label %.lr.ph373.split.us.prol.loopexit, label %.lr.ph373.split.us.prol

.lr.ph373.split.us.prol:                          ; preds = %.lr.ph373.split.us.preheader794
  %i.ho = mul nsw i64 %indvars.iv413.ph, %i.cs
  %i.hp = getelementptr [8 x i8], ptr %i.gk, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !16 ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv413.ph ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !16
  %i.ht = call double @llvm.fmuladd.f64(double %i.hq, double %i.hq, double %i.hs) ; 2 uses
  store double %i.ht, ptr %i.hr, align 8, !tbaa !16
  %i.hu = trunc nuw nsw i64 %indvars.iv413.ph to i32
  %i.hv = mul i32 %i.cr, %i.hu
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !16
  %i.hz = fsub double %i.hy, %i.ht
  %gep482.prol = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv413.ph
  store double %i.hz, ptr %gep482.prol, align 8, !tbaa !16
  %indvars.iv.next414.prol = add nuw nsw i64 %indvars.iv413.ph, 1
  br label %.lr.ph373.split.us.prol.loopexit

.lr.ph373.split.us.prol.loopexit:                 ; preds = %.lr.ph373.split.us.prol, %.lr.ph373.split.us.preheader794
  %.lcssa797.unr = phi double [ poison, %.lr.ph373.split.us.preheader794 ], [ %i.hq, %.lr.ph373.split.us.prol ]
  %indvars.iv413.unr = phi i64 [ %indvars.iv413.ph, %.lr.ph373.split.us.preheader794 ], [ %indvars.iv.next414.prol, %.lr.ph373.split.us.prol ]
  %i.ia = add nsw i64 %wide.trip.count416, -1
  %i.ib = icmp eq i64 %indvars.iv413.ph, %i.ia
  br i1 %i.ib, label %._crit_edge374.split.us, label %.lr.ph373.split.us

.lr.ph373.split.us:                               ; preds = %.lr.ph373.split.us.prol.loopexit, %.lr.ph373.split.us
  %indvars.iv413 = phi i64 [ %indvars.iv.next414.1, %.lr.ph373.split.us ], [ %indvars.iv413.unr, %.lr.ph373.split.us.prol.loopexit ] ; 7 uses
  %i.ic = mul nsw i64 %indvars.iv413, %i.cs
  %i.id = getelementptr [8 x i8], ptr %i.gk, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !16 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv413 ; 2 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !16
  %i.ih = call double @llvm.fmuladd.f64(double %i.ie, double %i.ie, double %i.ig) ; 2 uses
  store double %i.ih, ptr %i.if, align 8, !tbaa !16
  %i.ii = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.ij = mul i32 %i.cr, %i.ii
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ik
  %i.im = load double, ptr %i.il, align 8, !tbaa !16
  %i.in = fsub double %i.im, %i.ih
  %gep482 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv413
  store double %i.in, ptr %gep482, align 8, !tbaa !16
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 3 uses
  %i.io = mul nsw i64 %indvars.iv.next414, %i.cs
  %i.ip = getelementptr [8 x i8], ptr %i.gk, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !16 ; 3 uses
  %i.ir = getelementptr [8 x i8], ptr %7, i64 %indvars.iv413 ; 2 uses
  %i.is = load double, ptr %i.ir, align 8, !tbaa !16
  %i.it = call double @llvm.fmuladd.f64(double %i.iq, double %i.iq, double %i.is) ; 2 uses
  store double %i.it, ptr %i.ir, align 8, !tbaa !16
  %i.iu = trunc nuw nsw i64 %indvars.iv.next414 to i32
  %i.iv = mul i32 %i.cr, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.iw
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !16
  %i.iz = fsub double %i.iy, %i.it
  %gep482.1 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next414
  store double %i.iz, ptr %gep482.1, align 8, !tbaa !16
  %indvars.iv.next414.1 = add nuw nsw i64 %indvars.iv413, 2 ; 2 uses
  %exitcond417.not.1 = icmp eq i64 %indvars.iv.next414.1, %wide.trip.count416
  br i1 %exitcond417.not.1, label %._crit_edge374.split.us, label %.lr.ph373.split.us, !llvm.loop !45

._crit_edge374.split.us:                          ; preds = %.lr.ph373.split.us, %.lr.ph373.split.us.prol.loopexit
  %.lcssa797 = phi double [ %.lcssa797.unr, %.lr.ph373.split.us.prol.loopexit ], [ %i.iq, %.lr.ph373.split.us ]
  store double %.lcssa797, ptr %i.d, align 8, !tbaa !16
  br label %._crit_edge374

.lr.ph373.split:                                  ; preds = %.lr.ph373.split.prol.loopexit, %.lr.ph373.split
  %indvars.iv408 = phi i64 [ %indvars.iv.next409.3, %.lr.ph373.split ], [ %indvars.iv408.unr, %.lr.ph373.split.prol.loopexit ] ; 8 uses
  %i.ja = trunc nuw nsw i64 %indvars.iv408 to i32
  %i.jb = mul i32 %i.cr, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.jc
  %i.je = load double, ptr %i.jd, align 8, !tbaa !16
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv408
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !16
  %i.jh = fsub double %i.je, %i.jg
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv408
  store double %i.jh, ptr %gep, align 8, !tbaa !16
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv.next409 to i32
  %i.jj = mul i32 %i.cr, %i.ji
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.jk
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !16
  %i.jn = getelementptr [8 x i8], ptr %7, i64 %indvars.iv408
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !16
  %i.jp = fsub double %i.jm, %i.jo
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next409
  store double %i.jp, ptr %gep.1, align 8, !tbaa !16
  %indvars.iv.next409.1 = add nuw nsw i64 %indvars.iv408, 2 ; 3 uses
  %i.jq = trunc nuw nsw i64 %indvars.iv.next409.1 to i32
  %i.jr = mul i32 %i.cr, %i.jq
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.js
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !16
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next409.1
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !16
  %i.jx = fsub double %i.ju, %i.jw
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next409.1
  store double %i.jx, ptr %gep.2, align 8, !tbaa !16
  %indvars.iv.next409.2 = add nuw nsw i64 %indvars.iv408, 3 ; 3 uses
  %i.jy = trunc nuw nsw i64 %indvars.iv.next409.2 to i32
  %i.jz = mul i32 %i.cr, %i.jy
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ka
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !16
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next409.2
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !16
  %i.kf = fsub double %i.kc, %i.ke
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next409.2
  store double %i.kf, ptr %gep.3, align 8, !tbaa !16
  %indvars.iv.next409.3 = add nuw nsw i64 %indvars.iv408, 4 ; 2 uses
  %exitcond412.not.3 = icmp eq i64 %indvars.iv.next409.3, %wide.trip.count416
  br i1 %exitcond412.not.3, label %._crit_edge374.thread, label %.lr.ph373.split, !llvm.loop !46

._crit_edge374:                                   ; preds = %._crit_edge374.split.us, %bb.x
  %i.kg = icmp samesign ugt i64 %indvars.iv406, 1
  br i1 %i.kg, label %bb.y, label %._crit_edge374.thread

bb.y:                                             ; preds = %._crit_edge374
  %i.kh = trunc nuw nsw i64 %indvars.iv406 to i32 ; 4 uses
  %i.ki = add nsw i32 %i.ds, %i.kh                ; 7 uses
end_hunk_0
begin_hunk_1_@dpstf2_:bb.a
  %i.lo = trunc nsw i64 %indvars.iv.next.i.4 to i32
  %.1.i.4 = select i1 %i.ln, i32 %i.lo, i32 %.1.i.3
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.lp = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.4
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !16 ; 2 uses
  %i.lr = fcmp ogt double %i.lq, %.116.i.4        ; 2 uses
  %.116.i.5 = select i1 %i.lr, double %i.lq, double %.116.i.4 ; 2 uses
  %i.ls = trunc nsw i64 %indvars.iv.next.i.5 to i32
  %.1.i.5 = select i1 %i.lr, i32 %i.ls, i32 %.1.i.4
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.5
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !16 ; 2 uses
  %i.lv = fcmp ogt double %i.lu, %.116.i.5        ; 2 uses
  %.116.i.6 = select i1 %i.lv, double %i.lu, double %.116.i.5 ; 2 uses
  %i.lw = trunc nsw i64 %indvars.iv.next.i.6 to i32
  %.1.i.6 = select i1 %i.lv, i32 %i.lw, i32 %.1.i.5
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.6
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !16 ; 2 uses
  %i.lz = fcmp ogt double %i.ly, %.116.i.6        ; 2 uses
  %.116.i.7 = select i1 %i.lz, double %i.ly, double %.116.i.6
  %i.ma = trunc nsw i64 %indvars.iv.next.i.7 to i32
  %.1.i.7 = select i1 %i.lz, i32 %i.ma, i32 %.1.i.6 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %dmaxloc_.exit, label %.lr.ph.i, !llvm.loop !48

dmaxloc_.exit:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.y
  %.0.lcssa.i = phi i32 [ %i.ki, %bb.y ], [ %.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1.i.7, %.lr.ph.i ]
  %reass.sub.i = sub i32 %.0.lcssa.i, %i.ki
  %i.mb = add i32 %reass.sub.i, %i.kh             ; 2 uses
  %i.mc = add nsw i32 %i.mb, %i.ds
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.md
  %i.mf = load double, ptr %i.me, align 8, !tbaa !16 ; 3 uses
  store double %i.mf, ptr %i.e, align 8, !tbaa !16
  %i.mg = fcmp ugt double %i.mf, %.0308
  br i1 %i.mg, label %bb.z, label %split

bb.z:                                             ; preds = %dmaxloc_.exit
  %i.mh = call i32 @disnan_(ptr noundef nonnull %i.e) #8
  %.not337 = icmp eq i32 %i.mh, 0
  br i1 %.not337, label %._crit_edge374.thread, label %._crit_edge432

._crit_edge432:                                   ; preds = %bb.z
  %.pre433 = load double, ptr %i.e, align 8, !tbaa !16
  br label %split

._crit_edge374.thread:                            ; preds = %.lr.ph373.split.prol.loopexit, %.lr.ph373.split, %middle.block606, %vec.epilog.middle.block629, %bb.z, %._crit_edge374
  %.3 = phi i32 [ %i.mb, %bb.z ], [ %.2378, %._crit_edge374 ], [ %.2378, %middle.block606 ], [ %.2378, %vec.epilog.middle.block629 ], [ %.2378, %.lr.ph373.split ], [ %.2378, %.lr.ph373.split.prol.loopexit ] ; 10 uses
  %i.mi = zext i32 %.3 to i64
  %.not338 = icmp eq i64 %indvars.iv406, %i.mi
  %.pre445 = mul nsw i64 %indvars.iv406, %i.cs    ; 3 uses
  %.pre447 = add nsw i64 %.pre445, %indvars.iv406 ; 2 uses
  br i1 %.not338, label %._crit_edge438, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge374.thread
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.pre447
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !16
  %i.ml = mul nsw i32 %.3, %i.h                   ; 2 uses
  %i.mm = add nsw i32 %i.ml, %.3
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.mn
  store double %i.mk, ptr %i.mo, align 8, !tbaa !16
  %i.mp = trunc i64 %indvars.iv406 to i32
  %i.mq = add i32 %i.mp, -1
  store i32 %i.mq, ptr %i.b, align 4, !tbaa !8
  %i.mr = getelementptr [8 x i8], ptr %i.j, i64 %.pre445
  %i.ms = getelementptr i8, ptr %i.mr, i64 8
  %i.mt = sext i32 %i.ml to i64                   ; 2 uses
  %i.mu = getelementptr [8 x i8], ptr %i.j, i64 %i.mt
  %i.mv = getelementptr i8, ptr %i.mu, i64 8
  call void @dswap_(ptr noundef nonnull %i.b, ptr noundef %i.ms, ptr noundef nonnull @c__1, ptr noundef %i.mv, ptr noundef nonnull @c__1) #8
  %i.mw = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.mx = icmp slt i32 %.3, %i.mw
  br i1 %i.mx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.my = sub nsw i32 %i.mw, %.3
  store i32 %i.my, ptr %i.b, align 4, !tbaa !8
  %i.mz = add nsw i32 %.3, 1
  %i.na = mul nsw i32 %i.mz, %i.h                 ; 2 uses
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv406
  %i.nd = getelementptr [8 x i8], ptr %i.nc, i64 %i.nb
  %i.ne = add nsw i32 %i.na, %.3
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.nf
  call void @dswap_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.nd, ptr noundef nonnull %3, ptr noundef nonnull %i.ng, ptr noundef nonnull %3) #8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.nh = trunc i64 %indvars.iv406 to i32
  %i.ni = xor i32 %i.nh, -1
  %i.nj = add i32 %.3, %i.ni
  store i32 %i.nj, ptr %i.b, align 4, !tbaa !8
  %i.nk = add nuw nsw i64 %indvars.iv406, 1       ; 2 uses
  %i.nl = mul nsw i64 %i.nk, %i.cs
  %i.nm = getelementptr [8 x i8], ptr %i.j, i64 %i.nl
  %i.nn = getelementptr [8 x i8], ptr %i.nm, i64 %indvars.iv406
  %i.no = getelementptr [8 x i8], ptr %i.j, i64 %i.nk
  %i.np = getelementptr [8 x i8], ptr %i.no, i64 %i.mt
  call void @dswap_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.nn, ptr noundef nonnull %3, ptr noundef nonnull %i.np, ptr noundef nonnull @c__1) #8
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv406 ; 2 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !16
  %i.ns = sext i32 %.3 to i64                     ; 2 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ns ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !16
  store double %i.nu, ptr %i.nq, align 8, !tbaa !16
  store double %i.nr, ptr %i.nt, align 8, !tbaa !16
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ns ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !8
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv406 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !8
  store i32 %i.ny, ptr %i.nv, align 4, !tbaa !8
  store i32 %i.nw, ptr %i.nx, align 4, !tbaa !8
  br label %._crit_edge438

._crit_edge438:                                   ; preds = %._crit_edge374.thread, %bb.ac
  %i.nz = load double, ptr %i.e, align 8, !tbaa !16
  %i.oa = call double @sqrt(double noundef %i.nz) #8 ; 2 uses
  store double %i.oa, ptr %i.e, align 8, !tbaa !16
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.pre447
  store double %i.oa, ptr %i.ob, align 8, !tbaa !16
  %i.oc = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.od = sext i32 %i.oc to i64
  %i.oe = icmp slt i64 %indvars.iv406, %i.od
  br i1 %i.oe, label %bb.ad, label %._crit_edge437

._crit_edge437:                                   ; preds = %._crit_edge438
  %.pre449 = add nuw nsw i64 %indvars.iv406, 1
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge438
  %i.of = trunc i64 %indvars.iv406 to i32
  %i.og = add i32 %i.of, -1
  store i32 %i.og, ptr %i.b, align 4, !tbaa !8
  %i.oh = trunc nuw nsw i64 %indvars.iv406 to i32 ; 2 uses
  %i.oi = sub nsw i32 %i.oc, %i.oh
  store i32 %i.oi, ptr %i.c, align 4, !tbaa !8
  %i.oj = add nuw nsw i64 %indvars.iv406, 1       ; 2 uses
  %i.ok = mul nsw i64 %i.oj, %i.cs                ; 2 uses
  %i.ol = getelementptr [8 x i8], ptr %i.j, i64 %i.ok
  %i.om = getelementptr i8, ptr %i.ol, i64 8
  %i.on = getelementptr [8 x i8], ptr %i.j, i64 %.pre445
  %i.oo = getelementptr i8, ptr %i.on, i64 8
  %i.op = getelementptr [8 x i8], ptr %i.j, i64 %i.ok
  %i.oq = getelementptr [8 x i8], ptr %i.op, i64 %indvars.iv406 ; 2 uses
  call void @dgemv_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b17, ptr noundef %i.om, ptr noundef nonnull %3, ptr noundef %i.oo, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b19, ptr noundef nonnull %i.oq, ptr noundef nonnull %3) #8
  %i.or = load i32, ptr %1, align 4, !tbaa !8
  %i.os = sub nsw i32 %i.or, %i.oh
  store i32 %i.os, ptr %i.b, align 4, !tbaa !8
  %i.ot = load double, ptr %i.e, align 8, !tbaa !16
  %i.ou = fdiv double 1.000000e+00, %i.ot
  store double %i.ou, ptr %i.d, align 8, !tbaa !16
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.oq, ptr noundef nonnull %3) #8
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge437, %bb.ad
  %indvars.iv.next407.pre-phi = phi i64 [ %.pre449, %._crit_edge437 ], [ %i.oj, %bb.ad ]
  %.not335.not = icmp slt i64 %indvars.iv406, %i.ct
  %indvar.next = add i64 %indvar, 1
  br i1 %.not335.not, label %bb.x, label %.loopexit, !llvm.loop !49

.lr.ph392:                                        ; preds = %._crit_edge369.thread
  %invariant.gep489 = getelementptr [8 x i8], ptr %i.j, i64 %i.cs
  %invariant.gep491 = getelementptr [8 x i8], ptr %i.j, i64 %i.cs
  %invariant.gep493 = getelementptr [8 x i8], ptr %i.j, i64 %i.cs
  %i.ov = zext nneg i32 %i.co to i64
  %i.ow = shl nsw i64 %i.i, 3                     ; 4 uses
  %scevgep644 = getelementptr i8, ptr %2, i64 %i.ow
  %i.ox = sext i32 %i.cr to i64
  %i.oy = shl nsw i64 %i.ox, 3
  %scevgep646 = getelementptr i8, ptr %2, i64 %i.ow
  %i.oz = shl nsw i64 %i.cs, 3
  %i.pa = add nsw i64 %i.oz, 8
  %i.pb = shl nsw i64 %i.i, 3                     ; 2 uses
  %scevgep708 = getelementptr i8, ptr %2, i64 %i.pb
  %i.pc = sext i32 %i.cr to i64
  %i.pd = shl nsw i64 %i.pc, 3
  %scevgep710 = getelementptr i8, ptr %2, i64 %i.pb
  %i.pe = getelementptr i8, ptr %2, i64 %i.ow
  %i.pf = getelementptr i8, ptr %i.pe, i64 8
  %i.pg = getelementptr i8, ptr %2, i64 %i.ow
  %i.ph = getelementptr i8, ptr %i.pg, i64 16
  %i.pi = icmp slt i32 %i.cr, 0                   ; 2 uses
  %i.pj = select i1 %i.pi, i32 %narrow, i32 %i.cr
  %i.pk = icmp ne i32 %i.cr, 0
  %broadcast.splatinsert729 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat730 = shufflevector <4 x i32> %broadcast.splatinsert729, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert764 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat765 = shufflevector <4 x i32> %broadcast.splatinsert764, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.pl = icmp slt i32 %i.cr, 0                   ; 2 uses
  %i.pm = select i1 %i.pl, i32 %narrow, i32 %i.cr
  %i.pn = icmp ne i32 %i.cr, 0
  %broadcast.splatinsert677 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat678 = shufflevector <4 x i32> %broadcast.splatinsert677, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph392, %bb.am
  %indvar633 = phi i64 [ 0, %.lr.ph392 ], [ %indvar.next634, %bb.am ] ; 14 uses
  %indvars.iv419 = phi i64 [ 1, %.lr.ph392 ], [ %indvars.iv.next420.pre-phi, %bb.am ] ; 38 uses
  %.4390 = phi i32 [ %.0.lcssa, %.lr.ph392 ], [ %.5, %bb.am ] ; 5 uses
  %i.po = xor i64 %indvar633, -1
  %i.pp = shl nuw nsw i64 %indvar633, 3
  %scevgep704 = getelementptr i8, ptr %7, i64 %i.pp ; 2 uses
  %13 = shl nuw nsw i64 %indvars.iv419, 3
  %scevgep706 = getelementptr i8, ptr %7, i64 %13 ; 2 uses
  %i.pq = trunc i64 %indvar633 to i32
  %i.pr = add i32 %i.pq, 1
  %i.ps = mul i32 %i.pr, %i.cr
  %i.pt = sext i32 %i.ps to i64
  %i.pu = shl nsw i64 %i.pt, 3                    ; 2 uses
  %scevgep711 = getelementptr i8, ptr %scevgep710, i64 %i.pu ; 4 uses
  %i.pv = trunc i64 %indvar633 to i32
  %i.pw = add i32 %i.pv, 1
  %i.px = mul i32 %i.pw, %i.cr                    ; 4 uses
  %i.py = xor i64 %indvar633, -1
  %i.pz = shl nuw nsw i64 %indvar633, 3
  %scevgep639 = getelementptr i8, ptr %7, i64 %i.pz ; 4 uses
  %14 = shl nuw nsw i64 %indvars.iv419, 3
  %scevgep640 = getelementptr i8, ptr %7, i64 %14 ; 2 uses
  %i.qa = trunc i64 %indvar633 to i32
  %i.qb = add i32 %i.qa, 1
  %i.qc = mul i32 %i.qb, %i.cr
  %i.qd = sext i32 %i.qc to i64
  %i.qe = shl nsw i64 %i.qd, 3                    ; 2 uses
  %scevgep647 = getelementptr i8, ptr %scevgep646, i64 %i.qe ; 4 uses
  %i.qf = mul i64 %i.pa, %indvar633               ; 2 uses
  %scevgep651 = getelementptr i8, ptr %i.pf, i64 %i.qf ; 2 uses
  %scevgep652 = getelementptr i8, ptr %i.ph, i64 %i.qf
  %i.qg = trunc i64 %indvar633 to i32
  %i.qh = add i32 %i.qg, 1
  %i.qi = mul i32 %i.qh, %i.cr                    ; 4 uses
  %i.qj = load i32, ptr %1, align 4, !tbaa !8     ; 5 uses
  %i.qk = sext i32 %i.qj to i64                   ; 5 uses
  %.not332381 = icmp sgt i64 %indvars.iv419, %i.qk
  br i1 %.not332381, label %._crit_edge385, label %.lr.ph384

.lr.ph384:                                        ; preds = %bb.af
  %i.ql = icmp samesign ugt i64 %indvars.iv419, 1
  %i.qm = add i32 %i.qj, 1
  %wide.trip.count429 = zext i32 %i.qm to i64     ; 12 uses
  br i1 %i.ql, label %.lr.ph384.split.us.preheader, label %iter.check758

iter.check758:                                    ; preds = %.lr.ph384
  %invariant.gep483 = getelementptr [8 x i8], ptr %i.f, i64 %i.qk ; 7 uses
  %i.qn = add i64 %i.po, %wide.trip.count429      ; 7 uses
  %min.iters.check724 = icmp ult i64 %i.qn, 4
  br i1 %min.iters.check724, label %.lr.ph384.split.preheader, label %vector.scevcheck699

vector.scevcheck699:                              ; preds = %iter.check758
  %reass.sub784 = sub i64 %wide.trip.count429, %indvar633
  %i.qo = add i64 %reass.sub784, -2               ; 2 uses
  %i.qp = trunc i64 %i.qo to i32
  %mul700 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.pj, i32 %i.qp) ; 2 uses
  %mul.result701 = extractvalue { i32, i1 } %mul700, 0 ; 2 uses
  %mul.overflow702 = extractvalue { i32, i1 } %mul700, 1
  %i.qq = add i32 %i.px, %mul.result701
  %i.qr = sub i32 %i.px, %mul.result701
  %i.qs = icmp slt i32 %i.qq, %i.px
  %i.qt = icmp sgt i32 %i.qr, %i.px
  %i.qu = select i1 %i.pi, i1 %i.qt, i1 %i.qs
  %i.qv = or i1 %i.qu, %mul.overflow702
  %i.qw = icmp ugt i64 %i.qo, 4294967295
  %i.qx = and i1 %i.qw, %i.pk
  %i.qy = or i1 %i.qv, %i.qx
  br i1 %i.qy, label %.lr.ph384.split.preheader, label %vector.memcheck703

vector.memcheck703:                               ; preds = %vector.scevcheck699
  %i.qz = shl nsw i64 %i.qk, 3                    ; 2 uses
  %scevgep705 = getelementptr i8, ptr %scevgep704, i64 %i.qz ; 2 uses
  %reass.sub785 = sub i64 %wide.trip.count429, %indvar633
  %i.ra = add i64 %reass.sub785, -2               ; 2 uses
  %i.rb = shl nsw i64 %i.ra, 3                    ; 2 uses
  %i.rc = getelementptr i8, ptr %scevgep706, i64 %i.rb
  %scevgep707 = getelementptr i8, ptr %i.rc, i64 %i.qz ; 2 uses
  %i.rd = mul i64 %i.pd, %i.ra
  %i.re = getelementptr i8, ptr %scevgep708, i64 %i.rd
  %scevgep709 = getelementptr i8, ptr %i.re, i64 %i.pu ; 4 uses
  %i.rf = icmp ult ptr %scevgep709, %scevgep711
  %umin712 = select i1 %i.rf, ptr %scevgep709, ptr %scevgep711
  %i.rg = icmp ugt ptr %scevgep709, %scevgep711
  %umax713 = select i1 %i.rg, ptr %scevgep709, ptr %scevgep711
  %scevgep714 = getelementptr i8, ptr %umax713, i64 8
  %scevgep715 = getelementptr i8, ptr %scevgep706, i64 %i.rb
  %bound0716 = icmp ult ptr %scevgep705, %scevgep714
  %bound1717 = icmp ult ptr %umin712, %scevgep707
  %found.conflict718 = and i1 %bound0716, %bound1717
  %bound0719 = icmp ult ptr %scevgep705, %scevgep715
  %bound1720 = icmp ult ptr %scevgep704, %scevgep707
  %found.conflict721 = and i1 %bound0719, %bound1720
  %conflict.rdx722 = or i1 %found.conflict718, %found.conflict721
  br i1 %conflict.rdx722, label %.lr.ph384.split.preheader, label %vector.main.loop.iter.check725

vector.main.loop.iter.check725:                   ; preds = %vector.memcheck703
  %min.iters.check726 = icmp ult i64 %i.qn, 16
  br i1 %min.iters.check726, label %vec.epilog.ph762, label %vector.ph727

vector.ph727:                                     ; preds = %vector.main.loop.iter.check725
  %i.rh = and i64 %i.qn, 12
  %n.vec728 = and i64 %i.qn, -16                  ; 4 uses
  %i.ri = or disjoint i64 %indvars.iv419, %n.vec728 ; 2 uses
  %i.rj = trunc nuw i64 %indvars.iv419 to i32
  %broadcast.splatinsert731 = insertelement <4 x i32> poison, i32 %i.rj, i64 0
  %broadcast.splat732 = shufflevector <4 x i32> %broadcast.splatinsert731, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction733 = add nuw nsw <4 x i32> %broadcast.splat732, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body734

vector.body734:                                   ; preds = %vector.body734, %vector.ph727
  %index735 = phi i64 [ 0, %vector.ph727 ], [ %index.next752, %vector.body734 ] ; 2 uses
  %vec.ind736 = phi <4 x i32> [ %induction733, %vector.ph727 ], [ %vec.ind.next753, %vector.body734 ] ; 5 uses
  %step.add737 = add <4 x i32> %vec.ind736, splat (i32 4)
  %step.add.2738 = add <4 x i32> %vec.ind736, splat (i32 8)
  %step.add.3739 = add <4 x i32> %vec.ind736, splat (i32 12)
  %i.rk = or disjoint i64 %indvars.iv419, %index735 ; 2 uses
  %i.rl = mul <4 x i32> %broadcast.splat730, %vec.ind736
  %i.rm = mul <4 x i32> %broadcast.splat730, %step.add737
  %i.rn = mul <4 x i32> %broadcast.splat730, %step.add.2738
  %i.ro = mul <4 x i32> %broadcast.splat730, %step.add.3739
  %i.rp = sext <4 x i32> %i.rl to <4 x i64>
  %i.rq = sext <4 x i32> %i.rm to <4 x i64>
  %i.rr = sext <4 x i32> %i.rn to <4 x i64>
  %i.rs = sext <4 x i32> %i.ro to <4 x i64>
  %wide.gep740 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.rp
  %wide.gep741 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.rq
  %wide.gep742 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.rr
  %wide.gep743 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.rs
  %wide.masked.gather744 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep740, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !50
  %wide.masked.gather745 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep741, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !50
  %wide.masked.gather746 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep742, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !50
  %wide.masked.gather747 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep743, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !50
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.rk ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 96
  %wide.load748 = load <4 x double>, ptr %i.rt, align 8, !tbaa !16, !alias.scope !53
  %wide.load749 = load <4 x double>, ptr %i.ru, align 8, !tbaa !16, !alias.scope !53
  %wide.load750 = load <4 x double>, ptr %i.rv, align 8, !tbaa !16, !alias.scope !53
  %wide.load751 = load <4 x double>, ptr %i.rw, align 8, !tbaa !16, !alias.scope !53
  %i.rx = fsub <4 x double> %wide.masked.gather744, %wide.load748
  %i.ry = fsub <4 x double> %wide.masked.gather745, %wide.load749
  %i.rz = fsub <4 x double> %wide.masked.gather746, %wide.load750
  %i.sa = fsub <4 x double> %wide.masked.gather747, %wide.load751
  %i.sb = getelementptr [8 x i8], ptr %invariant.gep483, i64 %i.rk ; 4 uses
  %i.sc = getelementptr i8, ptr %i.sb, i64 32
  %i.sd = getelementptr i8, ptr %i.sb, i64 64
  %i.se = getelementptr i8, ptr %i.sb, i64 96
  store <4 x double> %i.rx, ptr %i.sb, align 8, !tbaa !16, !alias.scope !55, !noalias !57
  store <4 x double> %i.ry, ptr %i.sc, align 8, !tbaa !16, !alias.scope !55, !noalias !57
  store <4 x double> %i.rz, ptr %i.sd, align 8, !tbaa !16, !alias.scope !55, !noalias !57
  store <4 x double> %i.sa, ptr %i.se, align 8, !tbaa !16, !alias.scope !55, !noalias !57
  %index.next752 = add nuw i64 %index735, 16      ; 2 uses
  %vec.ind.next753 = add <4 x i32> %vec.ind736, splat (i32 16)
  %i.sf = icmp eq i64 %index.next752, %n.vec728
  br i1 %i.sf, label %middle.block754, label %vector.body734, !llvm.loop !58

middle.block754:                                  ; preds = %vector.body734
  %cmp.n755 = icmp eq i64 %i.qn, %n.vec728
  br i1 %cmp.n755, label %._crit_edge385.thread, label %vec.epilog.iter.check760

vec.epilog.iter.check760:                         ; preds = %middle.block754
  %min.epilog.iters.check761 = icmp eq i64 %i.rh, 0
  br i1 %min.epilog.iters.check761, label %.lr.ph384.split.preheader, label %vec.epilog.ph762, !prof !30

vec.epilog.ph762:                                 ; preds = %vector.main.loop.iter.check725, %vec.epilog.iter.check760
  %vec.epilog.resume.val756 = phi i64 [ %n.vec728, %vec.epilog.iter.check760 ], [ 0, %vector.main.loop.iter.check725 ]
  %bc.resume.val757 = phi i64 [ %i.ri, %vec.epilog.iter.check760 ], [ %indvars.iv419, %vector.main.loop.iter.check725 ]
  %n.vec763 = and i64 %i.qn, -4                   ; 3 uses
  %i.sg = or disjoint i64 %indvars.iv419, %n.vec763
  %i.sh = trunc i64 %bc.resume.val757 to i32
  %broadcast.splatinsert766 = insertelement <4 x i32> poison, i32 %i.sh, i64 0
  %broadcast.splat767 = shufflevector <4 x i32> %broadcast.splatinsert766, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction768 = add <4 x i32> %broadcast.splat767, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body769

vec.epilog.vector.body769:                        ; preds = %vec.epilog.vector.body769, %vec.epilog.ph762
  %index770 = phi i64 [ %vec.epilog.resume.val756, %vec.epilog.ph762 ], [ %index.next775, %vec.epilog.vector.body769 ] ; 2 uses
  %vec.ind771 = phi <4 x i32> [ %induction768, %vec.epilog.ph762 ], [ %vec.ind.next776, %vec.epilog.vector.body769 ] ; 2 uses
  %i.si = or disjoint i64 %indvars.iv419, %index770 ; 2 uses
  %i.sj = mul <4 x i32> %broadcast.splat765, %vec.ind771
  %i.sk = sext <4 x i32> %i.sj to <4 x i64>
  %wide.gep772 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.sk
  %wide.masked.gather773 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep772, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !50
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.si
  %wide.load774 = load <4 x double>, ptr %i.sl, align 8, !tbaa !16, !alias.scope !53
  %i.sm = fsub <4 x double> %wide.masked.gather773, %wide.load774
  %i.sn = getelementptr [8 x i8], ptr %invariant.gep483, i64 %i.si
  store <4 x double> %i.sm, ptr %i.sn, align 8, !tbaa !16, !alias.scope !55, !noalias !57
  %index.next775 = add nuw i64 %index770, 4       ; 2 uses
  %vec.ind.next776 = add <4 x i32> %vec.ind771, splat (i32 4)
  %i.so = icmp eq i64 %index.next775, %n.vec763
  br i1 %i.so, label %vec.epilog.middle.block777, label %vec.epilog.vector.body769, !llvm.loop !59

vec.epilog.middle.block777:                       ; preds = %vec.epilog.vector.body769
  %cmp.n778 = icmp eq i64 %i.qn, %n.vec763
  br i1 %cmp.n778, label %._crit_edge385.thread, label %.lr.ph384.split.preheader

.lr.ph384.split.preheader:                        ; preds = %vector.memcheck703, %vector.scevcheck699, %iter.check758, %vec.epilog.iter.check760, %vec.epilog.middle.block777
  %indvars.iv421.ph = phi i64 [ %indvars.iv419, %iter.check758 ], [ %indvars.iv419, %vector.scevcheck699 ], [ %indvars.iv419, %vector.memcheck703 ], [ %i.ri, %vec.epilog.iter.check760 ], [ %i.sg, %vec.epilog.middle.block777 ] ; 4 uses
  %i.sp = sub i64 %wide.trip.count429, %indvars.iv421.ph
  %xtraiter814 = and i64 %i.sp, 3                 ; 2 uses
  %lcmp.mod815.not = icmp eq i64 %xtraiter814, 0
  br i1 %lcmp.mod815.not, label %.lr.ph384.split.prol.loopexit, label %.lr.ph384.split.prol

.lr.ph384.split.prol:                             ; preds = %.lr.ph384.split.preheader, %.lr.ph384.split.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph384.split.prol ], [ %indvars.iv421.ph, %.lr.ph384.split.preheader ] ; 4 uses
  %prol.iter816 = phi i64 [ %prol.iter816.next, %.lr.ph384.split.prol ], [ 0, %.lr.ph384.split.preheader ]
  %i.sq = trunc nuw nsw i64 %indvars.iv421.prol to i32
  %i.sr = mul i32 %i.cr, %i.sq
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ss
  %i.su = load double, ptr %i.st, align 8, !tbaa !16
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv421.prol
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !16
  %i.sx = fsub double %i.su, %i.sw
  %gep484.prol = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv421.prol
  store double %i.sx, ptr %gep484.prol, align 8, !tbaa !16
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter816.next = add i64 %prol.iter816, 1   ; 2 uses
  %prol.iter816.cmp.not = icmp eq i64 %prol.iter816.next, %xtraiter814
  br i1 %prol.iter816.cmp.not, label %.lr.ph384.split.prol.loopexit, label %.lr.ph384.split.prol, !llvm.loop !60
end_hunk_1
