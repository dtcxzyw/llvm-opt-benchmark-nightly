Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpstf2?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dpstf2_:bb.a
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
  %i.au = load double, ptr %i.at, align 8, !tbaa !55 ; 3 uses
  %i.av = fcmp ogt double %i.au, %i.ap
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.au, ptr %i.e, align 8, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aw = phi double [ %i.au, %bb.h ], [ %i.ap, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %i.aq, %bb.h ], [ %.0361, %bb.g ]
  %i.ax = trunc i64 %indvars.iv398 to i32
  %i.ay = or disjoint i32 %i.ax, 1                ; 2 uses
  %i.az = mul i32 %i.ak, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !55 ; 3 uses
  %i.bd = fcmp ogt double %i.bc, %i.aw
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.bc, ptr %i.e, align 8, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = phi double [ %i.bc, %bb.j ], [ %i.aw, %bb.i ] ; 2 uses
  %.1.1 = phi i32 [ %i.ay, %bb.j ], [ %.1, %bb.i ]
  %i.bf = trunc i64 %indvars.iv398 to i32
  %i.bg = add i32 %i.bf, 2                        ; 2 uses
  %i.bh = mul i32 %i.ak, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !55 ; 3 uses
  %i.bl = fcmp ogt double %i.bk, %i.be
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.bk, ptr %i.e, align 8, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bm = phi double [ %i.bk, %bb.l ], [ %i.be, %bb.k ] ; 2 uses
  %.1.2 = phi i32 [ %i.bg, %bb.l ], [ %.1.1, %bb.k ]
  %i.bn = trunc i64 %indvars.iv398 to i32
  %i.bo = add i32 %i.bn, 3                        ; 2 uses
  %i.bp = mul i32 %i.ak, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !55 ; 3 uses
  %i.bt = fcmp ogt double %i.bs, %i.bm
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.bs, ptr %i.e, align 8, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = phi double [ %i.bs, %bb.n ], [ %i.bm, %bb.m ] ; 3 uses
  %.1.3 = phi i32 [ %i.bo, %bb.n ], [ %.1.2, %bb.m ] ; 3 uses
  %indvars.iv.next399.3 = add nuw nsw i64 %indvars.iv398, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge364.loopexit.unr-lcssa, label %bb.g, !llvm.loop !11

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
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !55 ; 3 uses
  %i.cb = fcmp ogt double %i.ca, %i.bv
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.ca, ptr %i.e, align 8, !tbaa !55
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cc = phi double [ %i.ca, %bb.q ], [ %i.bv, %bb.p ] ; 2 uses
  %.1.epil = phi i32 [ %i.bw, %bb.q ], [ %.0361.epil, %bb.p ] ; 2 uses
  %indvars.iv.next399.epil = add nuw nsw i64 %indvars.iv398.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge364, label %bb.p, !llvm.loop !12

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
  store i32 0, ptr %5, align 4, !tbaa !49
  store i32 1, ptr %8, align 4, !tbaa !49
  br label %bb.an

bb.u:                                             ; preds = %bb.s
  %i.cg = load double, ptr %6, align 8, !tbaa !55 ; 2 uses
  %i.ch = fcmp olt double %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ci = load i32, ptr %1, align 4, !tbaa !49
  %i.cj = sitofp i32 %i.ci to double
  %i.ck = call double @dlamch_(ptr noundef nonnull @.str.3) #8
  %i.cl = fmul double %i.ck, %i.cj
  %i.cm = load double, ptr %i.e, align 8, !tbaa !55
  %i.cn = fmul double %i.cl, %i.cm
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.0308 = phi double [ %i.cn, %bb.v ], [ %i.cg, %bb.u ] ; 2 uses
  %i.co = load i32, ptr %1, align 4, !tbaa !49    ; 4 uses
  %.not330365 = icmp slt i32 %i.co, 1
  br i1 %.not330365, label %.loopexit, label %._crit_edge369.thread

._crit_edge369.thread:                            ; preds = %bb.w
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %i.cq, i1 false), !tbaa !55
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
  %indvar = phi i64 [ 0, %.lr.ph380 ], [ %indvar.next, %bb.ae ] ; 14 uses
  %indvars.iv406 = phi i64 [ 1, %.lr.ph380 ], [ %indvars.iv.next407.pre-phi, %bb.ae ] ; 36 uses
  %.2378 = phi i32 [ %.0.lcssa, %.lr.ph380 ], [ %.3, %bb.ae ] ; 5 uses
  %i.da = xor i64 %indvar, -1
  %i.db = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %scevgep560 = getelementptr i8, ptr %7, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %7, i64 %i.db
  %scevgep562 = getelementptr i8, ptr %i.dc, i64 8 ; 2 uses
  %i.dd = trunc i64 %indvar to i32
  %i.de = add i32 %i.dd, 1
  %i.df = mul i32 %i.de, %i.cr
  %i.dg = sext i32 %i.df to i64
  %i.dh = shl nsw i64 %i.dg, 3                    ; 2 uses
  %scevgep567 = getelementptr i8, ptr %scevgep566, i64 %i.dh ; 4 uses
  %i.di = trunc i64 %indvar to i32
  %i.dj = add i32 %i.di, 1
  %i.dk = mul i32 %i.dj, %i.cr                    ; 4 uses
  %9 = xor i64 %indvar, -1
  %i.dl = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %scevgep = getelementptr i8, ptr %7, i64 %i.dl  ; 4 uses
  %i.dm = getelementptr i8, ptr %7, i64 %i.dl
  %scevgep520 = getelementptr i8, ptr %i.dm, i64 8 ; 2 uses
  %indvar.tr = trunc i64 %indvar to i32
  %i.dn = shl i32 %indvar.tr, 1
  %i.do = add i32 %i.dn, 2
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 3                    ; 2 uses
  %scevgep525 = getelementptr i8, ptr %scevgep524, i64 %i.dq ; 2 uses
  %i.dr = shl nuw nsw i64 %indvar, 4              ; 2 uses
  %i.ds = getelementptr i8, ptr %2, i64 %i.dr
  %scevgep528 = getelementptr i8, ptr %i.ds, i64 -8 ; 2 uses
  %scevgep529 = getelementptr i8, ptr %2, i64 %i.dr
  %indvar.tr780 = trunc i64 %indvar to i32
  %i.dt = shl i32 %indvar.tr780, 1
  %i.du = add i32 %i.dt, 2                        ; 2 uses
  %i.dv = load i32, ptr %1, align 4, !tbaa !49    ; 5 uses
  %i.dw = sext i32 %i.dv to i64                   ; 5 uses
  %.not336370 = icmp sgt i64 %indvars.iv406, %i.dw
  br i1 %.not336370, label %._crit_edge374, label %.lr.ph373

.lr.ph373:                                        ; preds = %bb.x
  %i.dx = icmp samesign ugt i64 %indvars.iv406, 1
  %i.dy = add i32 %i.dv, 1
  %wide.trip.count416 = zext i32 %i.dy to i64     ; 12 uses
  br i1 %i.dx, label %.lr.ph373.split.us.preheader, label %iter.check610

iter.check610:                                    ; preds = %.lr.ph373
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.dw ; 7 uses
  %i.dz = add i64 %i.da, %wide.trip.count416      ; 7 uses
  %min.iters.check578 = icmp ult i64 %i.dz, 4
  br i1 %min.iters.check578, label %.lr.ph373.split.preheader, label %vector.scevcheck555

vector.scevcheck555:                              ; preds = %iter.check610
  %reass.sub = sub i64 %wide.trip.count416, %indvar
  %i.ea = add i64 %reass.sub, -2                  ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %mul556 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.cy, i32 %i.eb) ; 2 uses
  %mul.result557 = extractvalue { i32, i1 } %mul556, 0 ; 2 uses
  %mul.overflow558 = extractvalue { i32, i1 } %mul556, 1
  %i.ec = add i32 %i.dk, %mul.result557
  %i.ed = sub i32 %i.dk, %mul.result557
  %i.ee = icmp slt i32 %i.ec, %i.dk
  %i.ef = icmp sgt i32 %i.ed, %i.dk
  %i.eg = select i1 %i.cx, i1 %i.ef, i1 %i.ee
  %i.eh = or i1 %i.eg, %mul.overflow558
  %i.ei = icmp ugt i64 %i.ea, 4294967295
  %i.ej = and i1 %i.ei, %i.cz
  %i.ek = or i1 %i.eh, %i.ej
  br i1 %i.ek, label %.lr.ph373.split.preheader, label %vector.memcheck559

vector.memcheck559:                               ; preds = %vector.scevcheck555
  %i.el = shl nsw i64 %i.dw, 3                    ; 2 uses
  %scevgep561 = getelementptr i8, ptr %scevgep560, i64 %i.el ; 2 uses
  %reass.sub781 = sub i64 %wide.trip.count416, %indvar
  %i.em = add i64 %reass.sub781, -2               ; 2 uses
  %i.en = shl nsw i64 %i.em, 3                    ; 2 uses
  %i.eo = getelementptr i8, ptr %scevgep562, i64 %i.en
  %scevgep563 = getelementptr i8, ptr %i.eo, i64 %i.el ; 2 uses
  %i.ep = mul i64 %i.cw, %i.em
  %i.eq = getelementptr i8, ptr %scevgep564, i64 %i.ep
  %scevgep565 = getelementptr i8, ptr %i.eq, i64 %i.dh ; 4 uses
  %i.er = icmp ult ptr %scevgep565, %scevgep567
  %umin = select i1 %i.er, ptr %scevgep565, ptr %scevgep567
  %i.es = icmp ugt ptr %scevgep565, %scevgep567
  %umax = select i1 %i.es, ptr %scevgep565, ptr %scevgep567
  %scevgep568 = getelementptr i8, ptr %umax, i64 8
  %scevgep569 = getelementptr i8, ptr %scevgep562, i64 %i.en
  %bound0570 = icmp ult ptr %scevgep561, %scevgep568
  %bound1571 = icmp ult ptr %umin, %scevgep563
  %found.conflict572 = and i1 %bound0570, %bound1571
  %bound0573 = icmp ult ptr %scevgep561, %scevgep569
  %bound1574 = icmp ult ptr %scevgep560, %scevgep563
  %found.conflict575 = and i1 %bound0573, %bound1574
  %conflict.rdx576 = or i1 %found.conflict572, %found.conflict575
  br i1 %conflict.rdx576, label %.lr.ph373.split.preheader, label %vector.main.loop.iter.check579

vector.main.loop.iter.check579:                   ; preds = %vector.memcheck559
  %min.iters.check580 = icmp ult i64 %i.dz, 16
  br i1 %min.iters.check580, label %vec.epilog.ph614, label %vector.ph581

vector.ph581:                                     ; preds = %vector.main.loop.iter.check579
  %i.et = and i64 %i.dz, 12
  %n.vec582 = and i64 %i.dz, -16                  ; 4 uses
  %i.eu = or disjoint i64 %indvars.iv406, %n.vec582 ; 2 uses
  %i.ev = trunc nuw i64 %indvars.iv406 to i32
  %broadcast.splatinsert585 = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat586 = shufflevector <4 x i32> %broadcast.splatinsert585, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction587 = add nuw nsw <4 x i32> %broadcast.splat586, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body588

vector.body588:                                   ; preds = %vector.ph581, %vector.body588
  %index589 = phi i64 [ 0, %vector.ph581 ], [ %index.next604, %vector.body588 ] ; 2 uses
  %vec.ind590 = phi <4 x i32> [ %induction587, %vector.ph581 ], [ %vec.ind.next605, %vector.body588 ] ; 5 uses
  %step.add591 = add <4 x i32> %vec.ind590, splat (i32 4)
  %step.add.2592 = add <4 x i32> %vec.ind590, splat (i32 8)
  %step.add.3593 = add <4 x i32> %vec.ind590, splat (i32 12)
  %i.ew = or disjoint i64 %indvars.iv406, %index589 ; 2 uses
  %i.ex = mul <4 x i32> %broadcast.splat584, %vec.ind590
  %i.ey = mul <4 x i32> %broadcast.splat584, %step.add591
  %i.ez = mul <4 x i32> %broadcast.splat584, %step.add.2592
  %i.fa = mul <4 x i32> %broadcast.splat584, %step.add.3593
  %i.fb = sext <4 x i32> %i.ex to <4 x i64>
  %i.fc = sext <4 x i32> %i.ey to <4 x i64>
  %i.fd = sext <4 x i32> %i.ez to <4 x i64>
  %i.fe = sext <4 x i32> %i.fa to <4 x i64>
  %wide.gep = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.fb
  %wide.gep594 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.fc
  %wide.gep595 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.fd
  %wide.gep596 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.fe
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !57
  %wide.masked.gather597 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep594, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !57
  %wide.masked.gather598 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep595, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !57
  %wide.masked.gather599 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep596, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !57
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ew ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 96
  %wide.load600 = load <4 x double>, ptr %i.ff, align 8, !tbaa !55, !alias.scope !58
  %wide.load601 = load <4 x double>, ptr %i.fg, align 8, !tbaa !55, !alias.scope !58
  %wide.load602 = load <4 x double>, ptr %i.fh, align 8, !tbaa !55, !alias.scope !58
  %wide.load603 = load <4 x double>, ptr %i.fi, align 8, !tbaa !55, !alias.scope !58
  %i.fj = fsub <4 x double> %wide.masked.gather, %wide.load600
  %i.fk = fsub <4 x double> %wide.masked.gather597, %wide.load601
  %i.fl = fsub <4 x double> %wide.masked.gather598, %wide.load602
  %i.fm = fsub <4 x double> %wide.masked.gather599, %wide.load603
  %i.fn = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ew ; 4 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 32
  %i.fp = getelementptr i8, ptr %i.fn, i64 64
  %i.fq = getelementptr i8, ptr %i.fn, i64 96
  store <4 x double> %i.fj, ptr %i.fn, align 8, !tbaa !55, !alias.scope !59, !noalias !60
  store <4 x double> %i.fk, ptr %i.fo, align 8, !tbaa !55, !alias.scope !59, !noalias !60
  store <4 x double> %i.fl, ptr %i.fp, align 8, !tbaa !55, !alias.scope !59, !noalias !60
  store <4 x double> %i.fm, ptr %i.fq, align 8, !tbaa !55, !alias.scope !59, !noalias !60
  %index.next604 = add nuw i64 %index589, 16      ; 2 uses
  %vec.ind.next605 = add <4 x i32> %vec.ind590, splat (i32 16)
  %i.fr = icmp eq i64 %index.next604, %n.vec582
  br i1 %i.fr, label %middle.block606, label %vector.body588, !llvm.loop !17

middle.block606:                                  ; preds = %vector.body588
  %cmp.n607 = icmp eq i64 %i.dz, %n.vec582
  br i1 %cmp.n607, label %._crit_edge374.thread, label %vec.epilog.iter.check612

vec.epilog.iter.check612:                         ; preds = %middle.block606
  %min.epilog.iters.check613 = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check613, label %.lr.ph373.split.preheader, label %vec.epilog.ph614, !prof !61

vec.epilog.ph614:                                 ; preds = %vector.main.loop.iter.check579, %vec.epilog.iter.check612
  %vec.epilog.resume.val608 = phi i64 [ %n.vec582, %vec.epilog.iter.check612 ], [ 0, %vector.main.loop.iter.check579 ]
  %bc.resume.val609 = phi i64 [ %i.eu, %vec.epilog.iter.check612 ], [ %indvars.iv406, %vector.main.loop.iter.check579 ]
  %n.vec615 = and i64 %i.dz, -4                   ; 3 uses
  %i.fs = or disjoint i64 %indvars.iv406, %n.vec615
  %i.ft = trunc i64 %bc.resume.val609 to i32
  %broadcast.splatinsert618 = insertelement <4 x i32> poison, i32 %i.ft, i64 0
  %broadcast.splat619 = shufflevector <4 x i32> %broadcast.splatinsert618, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction620 = add <4 x i32> %broadcast.splat619, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body621

vec.epilog.vector.body621:                        ; preds = %vec.epilog.vector.body621, %vec.epilog.ph614
  %index622 = phi i64 [ %vec.epilog.resume.val608, %vec.epilog.ph614 ], [ %index.next627, %vec.epilog.vector.body621 ] ; 2 uses
  %vec.ind623 = phi <4 x i32> [ %induction620, %vec.epilog.ph614 ], [ %vec.ind.next628, %vec.epilog.vector.body621 ] ; 2 uses
  %i.fu = or disjoint i64 %indvars.iv406, %index622 ; 2 uses
  %i.fv = mul <4 x i32> %broadcast.splat617, %vec.ind623
  %i.fw = sext <4 x i32> %i.fv to <4 x i64>
  %wide.gep624 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.fw
  %wide.masked.gather625 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep624, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !57
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fu
  %wide.load626 = load <4 x double>, ptr %i.fx, align 8, !tbaa !55, !alias.scope !58
  %i.fy = fsub <4 x double> %wide.masked.gather625, %wide.load626
  %i.fz = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fu
  store <4 x double> %i.fy, ptr %i.fz, align 8, !tbaa !55, !alias.scope !59, !noalias !60
  %index.next627 = add nuw i64 %index622, 4       ; 2 uses
  %vec.ind.next628 = add <4 x i32> %vec.ind623, splat (i32 4)
  %i.ga = icmp eq i64 %index.next627, %n.vec615
  br i1 %i.ga, label %vec.epilog.middle.block629, label %vec.epilog.vector.body621, !llvm.loop !18

vec.epilog.middle.block629:                       ; preds = %vec.epilog.vector.body621
  %cmp.n630 = icmp eq i64 %i.dz, %n.vec615
  br i1 %cmp.n630, label %._crit_edge374.thread, label %.lr.ph373.split.preheader

.lr.ph373.split.preheader:                        ; preds = %iter.check610, %vector.scevcheck555, %vector.memcheck559, %vec.epilog.iter.check612, %vec.epilog.middle.block629
  %indvars.iv408.ph = phi i64 [ %indvars.iv406, %iter.check610 ], [ %indvars.iv406, %vector.scevcheck555 ], [ %indvars.iv406, %vector.memcheck559 ], [ %i.eu, %vec.epilog.iter.check612 ], [ %i.fs, %vec.epilog.middle.block629 ] ; 4 uses
  %i.gb = sub i64 %wide.trip.count416, %indvars.iv408.ph
  %xtraiter806 = and i64 %i.gb, 3                 ; 2 uses
  %lcmp.mod807.not = icmp eq i64 %xtraiter806, 0
  br i1 %lcmp.mod807.not, label %.lr.ph373.split.prol.loopexit, label %.lr.ph373.split.prol

.lr.ph373.split.prol:                             ; preds = %.lr.ph373.split.preheader, %.lr.ph373.split.prol
  %indvars.iv408.prol = phi i64 [ %indvars.iv.next409.prol, %.lr.ph373.split.prol ], [ %indvars.iv408.ph, %.lr.ph373.split.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph373.split.prol ], [ 0, %.lr.ph373.split.preheader ]
  %i.gc = trunc nuw nsw i64 %indvars.iv408.prol to i32
  %i.gd = mul i32 %i.cr, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !55
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv408.prol
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !55
  %i.gj = fsub double %i.gg, %i.gi
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv408.prol
  store double %i.gj, ptr %gep.prol, align 8, !tbaa !55
  %indvars.iv.next409.prol = add nuw nsw i64 %indvars.iv408.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter806
  br i1 %prol.iter.cmp.not, label %.lr.ph373.split.prol.loopexit, label %.lr.ph373.split.prol, !llvm.loop !19

.lr.ph373.split.prol.loopexit:                    ; preds = %.lr.ph373.split.prol, %.lr.ph373.split.preheader
  %indvars.iv408.unr = phi i64 [ %indvars.iv408.ph, %.lr.ph373.split.preheader ], [ %indvars.iv.next409.prol, %.lr.ph373.split.prol ]
  %i.gk = sub i64 %indvars.iv408.ph, %wide.trip.count416
  %i.gl = icmp ugt i64 %i.gk, -4
  br i1 %i.gl, label %._crit_edge374.thread, label %.lr.ph373.split

.lr.ph373.split.us.preheader:                     ; preds = %.lr.ph373
  %i.gm = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv406
  %i.gn = getelementptr i8, ptr %i.gm, i64 -8     ; 4 uses
  %invariant.gep481 = getelementptr [8 x i8], ptr %i.f, i64 %i.dw ; 4 uses
  %i.go = add i64 %9, %wide.trip.count416         ; 3 uses
  %min.iters.check546 = icmp ult i64 %i.go, 25
  br i1 %min.iters.check546, label %.lr.ph373.split.us.preheader794, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph373.split.us.preheader
  %reass.sub782 = sub i64 %wide.trip.count416, %indvar
  %i.gp = add i64 %reass.sub782, -2               ; 2 uses
  %i.gq = trunc i64 %i.gp to i32
  %mul.result = shl i32 %i.gq, 1
  %i.gr = add i32 %i.du, %mul.result
  %i.gs = icmp slt i32 %i.gr, %i.du
  %i.gt = icmp ugt i64 %i.gp, 2147483647
  %i.gu = or i1 %i.gs, %i.gt
  %i.gv = or i1 %ident.check, %i.gu
  br i1 %i.gv, label %.lr.ph373.split.us.preheader794, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %reass.sub783 = sub i64 %wide.trip.count416, %indvar
  %i.gw = add i64 %reass.sub783, -2               ; 2 uses
  %i.gx = shl nsw i64 %i.gw, 3                    ; 3 uses
  %scevgep521 = getelementptr i8, ptr %scevgep520, i64 %i.gx ; 3 uses
  %i.gy = shl nsw i64 %i.dw, 3                    ; 2 uses
  %scevgep522 = getelementptr i8, ptr %scevgep, i64 %i.gy ; 3 uses
  %i.gz = getelementptr i8, ptr %scevgep520, i64 %i.gx
  %scevgep523 = getelementptr i8, ptr %i.gz, i64 %i.gy ; 3 uses
  %i.ha = shl nsw i64 %i.gw, 4
  %i.hb = getelementptr i8, ptr %scevgep526, i64 %i.ha
  %scevgep527 = getelementptr i8, ptr %i.hb, i64 %i.dq ; 2 uses
  %scevgep530 = getelementptr i8, ptr %scevgep529, i64 %i.gx ; 2 uses
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
  %i.hc = and i64 %i.go, 3                        ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  %i.he = select i1 %i.hd, i64 4, i64 %i.hc
  %n.vec548 = sub i64 %i.go, %i.he                ; 2 uses
  %i.hf = add i64 %indvars.iv406, %n.vec548
  br label %vector.body549

vector.body549:                                   ; preds = %vector.body549, %vector.ph547
  %index550 = phi i64 [ 0, %vector.ph547 ], [ %index.next552, %vector.body549 ] ; 2 uses
  %i.hg = add i64 %indvars.iv406, %index550       ; 4 uses
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = getelementptr [8 x i8], ptr %i.gn, i64 %i.hg
  %wide.load = load <4 x double>, ptr %i.hi, align 8, !tbaa !55, !alias.scope !62 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hg ; 2 uses
  %wide.load551 = load <4 x double>, ptr %i.hj, align 8, !tbaa !55, !alias.scope !63, !noalias !64
  %i.hk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load, <4 x double> %wide.load, <4 x double> %wide.load551) ; 2 uses
  store <4 x double> %i.hk, ptr %i.hj, align 8, !tbaa !55, !alias.scope !63, !noalias !64
  %i.hl = mul i32 %i.cr, %i.hh
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.hm
  %wide.vec = load <8 x double>, ptr %i.hn, align 8, !tbaa !55, !alias.scope !65
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ho = fsub <4 x double> %strided.vec, %i.hk
  %i.hp = getelementptr [8 x i8], ptr %invariant.gep481, i64 %i.hg
  store <4 x double> %i.ho, ptr %i.hp, align 8, !tbaa !55, !alias.scope !66, !noalias !67
  %index.next552 = add nuw i64 %index550, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next552, %n.vec548
  br i1 %i.hq, label %.lr.ph373.split.us.preheader794, label %vector.body549, !llvm.loop !25

.lr.ph373.split.us.preheader794:                  ; preds = %vector.body549, %vector.memcheck, %vector.scevcheck, %.lr.ph373.split.us.preheader
  %indvars.iv413.ph = phi i64 [ %indvars.iv406, %vector.memcheck ], [ %indvars.iv406, %vector.scevcheck ], [ %indvars.iv406, %.lr.ph373.split.us.preheader ], [ %i.hf, %vector.body549 ] ; 8 uses
  %i.hr = sub i64 %wide.trip.count416, %indvars.iv413.ph
  %xtraiter808 = and i64 %i.hr, 1
  %lcmp.mod809.not = icmp eq i64 %xtraiter808, 0
  br i1 %lcmp.mod809.not, label %.lr.ph373.split.us.prol.loopexit, label %.lr.ph373.split.us.prol

.lr.ph373.split.us.prol:                          ; preds = %.lr.ph373.split.us.preheader794
  %i.hs = mul nsw i64 %indvars.iv413.ph, %i.cs
  %i.ht = getelementptr [8 x i8], ptr %i.gn, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !55 ; 3 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv413.ph ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !55
  %i.hx = call double @llvm.fmuladd.f64(double %i.hu, double %i.hu, double %i.hw) ; 2 uses
  store double %i.hx, ptr %i.hv, align 8, !tbaa !55
  %i.hy = trunc nuw nsw i64 %indvars.iv413.ph to i32
  %i.hz = mul i32 %i.cr, %i.hy
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !55
  %i.id = fsub double %i.ic, %i.hx
  %gep482.prol = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv413.ph
  store double %i.id, ptr %gep482.prol, align 8, !tbaa !55
  %indvars.iv.next414.prol = add nuw nsw i64 %indvars.iv413.ph, 1
  br label %.lr.ph373.split.us.prol.loopexit

.lr.ph373.split.us.prol.loopexit:                 ; preds = %.lr.ph373.split.us.prol, %.lr.ph373.split.us.preheader794
  %.lcssa797.unr = phi double [ poison, %.lr.ph373.split.us.preheader794 ], [ %i.hu, %.lr.ph373.split.us.prol ]
  %indvars.iv413.unr = phi i64 [ %indvars.iv413.ph, %.lr.ph373.split.us.preheader794 ], [ %indvars.iv.next414.prol, %.lr.ph373.split.us.prol ]
  %i.ie = add nsw i64 %wide.trip.count416, -1
  %i.if = icmp eq i64 %indvars.iv413.ph, %i.ie
  br i1 %i.if, label %._crit_edge374.split.us, label %.lr.ph373.split.us

.lr.ph373.split.us:                               ; preds = %.lr.ph373.split.us.prol.loopexit, %.lr.ph373.split.us
  %indvars.iv413 = phi i64 [ %indvars.iv.next414.1, %.lr.ph373.split.us ], [ %indvars.iv413.unr, %.lr.ph373.split.us.prol.loopexit ] ; 7 uses
  %i.ig = mul nsw i64 %indvars.iv413, %i.cs
  %i.ih = getelementptr [8 x i8], ptr %i.gn, i64 %i.ig
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !55 ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv413 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !55
  %i.il = call double @llvm.fmuladd.f64(double %i.ii, double %i.ii, double %i.ik) ; 2 uses
  store double %i.il, ptr %i.ij, align 8, !tbaa !55
  %i.im = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.in = mul i32 %i.cr, %i.im
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !55
  %i.ir = fsub double %i.iq, %i.il
  %gep482 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv413
  store double %i.ir, ptr %gep482, align 8, !tbaa !55
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 3 uses
  %i.is = mul nsw i64 %indvars.iv.next414, %i.cs
  %i.it = getelementptr [8 x i8], ptr %i.gn, i64 %i.is
  %i.iu = load double, ptr %i.it, align 8, !tbaa !55 ; 3 uses
  %i.iv = getelementptr [8 x i8], ptr %7, i64 %indvars.iv413 ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !55
  %i.ix = call double @llvm.fmuladd.f64(double %i.iu, double %i.iu, double %i.iw) ; 2 uses
  store double %i.ix, ptr %i.iv, align 8, !tbaa !55
  %i.iy = trunc nuw nsw i64 %indvars.iv.next414 to i32
  %i.iz = mul i32 %i.cr, %i.iy
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !55
  %i.jd = fsub double %i.jc, %i.ix
  %gep482.1 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next414
  store double %i.jd, ptr %gep482.1, align 8, !tbaa !55
  %indvars.iv.next414.1 = add nuw nsw i64 %indvars.iv413, 2 ; 2 uses
  %exitcond417.not.1 = icmp eq i64 %indvars.iv.next414.1, %wide.trip.count416
  br i1 %exitcond417.not.1, label %._crit_edge374.split.us, label %.lr.ph373.split.us, !llvm.loop !26

._crit_edge374.split.us:                          ; preds = %.lr.ph373.split.us, %.lr.ph373.split.us.prol.loopexit
  %.lcssa797 = phi double [ %.lcssa797.unr, %.lr.ph373.split.us.prol.loopexit ], [ %i.iu, %.lr.ph373.split.us ]
  store double %.lcssa797, ptr %i.d, align 8, !tbaa !55
  br label %._crit_edge374

.lr.ph373.split:                                  ; preds = %.lr.ph373.split.prol.loopexit, %.lr.ph373.split
  %indvars.iv408 = phi i64 [ %indvars.iv.next409.3, %.lr.ph373.split ], [ %indvars.iv408.unr, %.lr.ph373.split.prol.loopexit ] ; 8 uses
  %i.je = trunc nuw nsw i64 %indvars.iv408 to i32
  %i.jf = mul i32 %i.cr, %i.je
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !55
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv408
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !55
  %i.jl = fsub double %i.ji, %i.jk
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv408
  store double %i.jl, ptr %gep, align 8, !tbaa !55
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %i.jm = trunc nuw nsw i64 %indvars.iv.next409 to i32
  %i.jn = mul i32 %i.cr, %i.jm
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.jo
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !55
  %i.jr = getelementptr [8 x i8], ptr %7, i64 %indvars.iv408
  %i.js = load double, ptr %i.jr, align 8, !tbaa !55
  %i.jt = fsub double %i.jq, %i.js
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next409
  store double %i.jt, ptr %gep.1, align 8, !tbaa !55
  %indvars.iv.next409.1 = add nuw nsw i64 %indvars.iv408, 2 ; 3 uses
  %i.ju = trunc nuw nsw i64 %indvars.iv.next409.1 to i32
  %i.jv = mul i32 %i.cr, %i.ju
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.jw
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !55
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next409.1
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !55
  %i.kb = fsub double %i.jy, %i.ka
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next409.1
  store double %i.kb, ptr %gep.2, align 8, !tbaa !55
  %indvars.iv.next409.2 = add nuw nsw i64 %indvars.iv408, 3 ; 3 uses
  %i.kc = trunc nuw nsw i64 %indvars.iv.next409.2 to i32
  %i.kd = mul i32 %i.cr, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ke
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !55
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next409.2
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !55
  %i.kj = fsub double %i.kg, %i.ki
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next409.2
  store double %i.kj, ptr %gep.3, align 8, !tbaa !55
end_hunk_0
begin_hunk_1_@dpstf2_:bb.a
  %spec.select.i.4 = select i1 %i.lr, double %i.lq, double %spec.select.i.3 ; 2 uses
  %i.ls = trunc nsw i64 %indvars.iv.next.i.4 to i32
  %spec.select18.i.4 = select i1 %i.lr, i32 %i.ls, i32 %spec.select18.i.3
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.4
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !55 ; 2 uses
  %i.lv = fcmp ogt double %i.lu, %spec.select.i.4 ; 2 uses
  %spec.select.i.5 = select i1 %i.lv, double %i.lu, double %spec.select.i.4 ; 2 uses
  %i.lw = trunc nsw i64 %indvars.iv.next.i.5 to i32
  %spec.select18.i.5 = select i1 %i.lv, i32 %i.lw, i32 %spec.select18.i.4
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.5
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !55 ; 2 uses
  %i.lz = fcmp ogt double %i.ly, %spec.select.i.5 ; 2 uses
  %spec.select.i.6 = select i1 %i.lz, double %i.ly, double %spec.select.i.5 ; 2 uses
  %i.ma = trunc nsw i64 %indvars.iv.next.i.6 to i32
  %spec.select18.i.6 = select i1 %i.lz, i32 %i.ma, i32 %spec.select18.i.5
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.mb = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.6
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !55 ; 2 uses
  %i.md = fcmp ogt double %i.mc, %spec.select.i.6 ; 2 uses
  %spec.select.i.7 = select i1 %i.md, double %i.mc, double %spec.select.i.6
  %i.me = trunc nsw i64 %indvars.iv.next.i.7 to i32
  %spec.select18.i.7 = select i1 %i.md, i32 %i.me, i32 %spec.select18.i.6 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %dmaxloc_.exit, label %.lr.ph.i, !llvm.loop !29

dmaxloc_.exit:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.y
  %.0.lcssa.i = phi i32 [ %i.km, %bb.y ], [ %spec.select18.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select18.i.7, %.lr.ph.i ]
  %reass.sub.i = sub i32 %.0.lcssa.i, %i.km
  %i.mf = add i32 %reass.sub.i, %i.kl             ; 2 uses
  %i.mg = add nsw i32 %i.mf, %i.dv
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.mh
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !55 ; 3 uses
  store double %i.mj, ptr %i.e, align 8, !tbaa !55
  %i.mk = fcmp ugt double %i.mj, %.0308
  br i1 %i.mk, label %bb.z, label %split

bb.z:                                             ; preds = %dmaxloc_.exit
  %i.ml = call i32 @disnan_(ptr noundef nonnull %i.e) #8
  %.not337 = icmp eq i32 %i.ml, 0
  br i1 %.not337, label %._crit_edge374.thread, label %._crit_edge432

._crit_edge432:                                   ; preds = %bb.z
  %.pre433 = load double, ptr %i.e, align 8, !tbaa !55
  br label %split

._crit_edge374.thread:                            ; preds = %.lr.ph373.split.prol.loopexit, %.lr.ph373.split, %middle.block606, %vec.epilog.middle.block629, %bb.z, %._crit_edge374
  %.3 = phi i32 [ %i.mf, %bb.z ], [ %.2378, %._crit_edge374 ], [ %.2378, %middle.block606 ], [ %.2378, %vec.epilog.middle.block629 ], [ %.2378, %.lr.ph373.split ], [ %.2378, %.lr.ph373.split.prol.loopexit ] ; 10 uses
  %i.mm = zext i32 %.3 to i64
  %.not338 = icmp eq i64 %indvars.iv406, %i.mm
  %.pre445 = mul nsw i64 %indvars.iv406, %i.cs    ; 3 uses
  %.pre447 = add nsw i64 %.pre445, %indvars.iv406 ; 2 uses
  br i1 %.not338, label %._crit_edge438, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge374.thread
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.pre447
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !55
  %i.mp = mul nsw i32 %.3, %i.h                   ; 2 uses
  %i.mq = add nsw i32 %i.mp, %.3
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.mr
  store double %i.mo, ptr %i.ms, align 8, !tbaa !55
  %i.mt = trunc i64 %indvars.iv406 to i32
  %i.mu = add i32 %i.mt, -1
  store i32 %i.mu, ptr %i.b, align 4, !tbaa !49
  %i.mv = getelementptr [8 x i8], ptr %i.j, i64 %.pre445
  %i.mw = getelementptr i8, ptr %i.mv, i64 8
  %i.mx = sext i32 %i.mp to i64                   ; 2 uses
  %i.my = getelementptr [8 x i8], ptr %i.j, i64 %i.mx
  %i.mz = getelementptr i8, ptr %i.my, i64 8
  call void @dswap_(ptr noundef nonnull %i.b, ptr noundef %i.mw, ptr noundef nonnull @c__1, ptr noundef %i.mz, ptr noundef nonnull @c__1) #8
  %i.na = load i32, ptr %1, align 4, !tbaa !49    ; 2 uses
  %i.nb = icmp slt i32 %.3, %i.na
  br i1 %i.nb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.nc = sub nsw i32 %i.na, %.3
  store i32 %i.nc, ptr %i.b, align 4, !tbaa !49
  %i.nd = add nsw i32 %.3, 1
  %i.ne = mul nsw i32 %i.nd, %i.h                 ; 2 uses
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv406
  %i.nh = getelementptr [8 x i8], ptr %i.ng, i64 %i.nf
  %i.ni = add nsw i32 %i.ne, %.3
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.nj
  call void @dswap_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.nh, ptr noundef nonnull %3, ptr noundef nonnull %i.nk, ptr noundef nonnull %3) #8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.nl = trunc i64 %indvars.iv406 to i32
  %i.nm = xor i32 %i.nl, -1
  %i.nn = add i32 %.3, %i.nm
  store i32 %i.nn, ptr %i.b, align 4, !tbaa !49
  %i.no = add nuw nsw i64 %indvars.iv406, 1       ; 2 uses
  %i.np = mul nsw i64 %i.no, %i.cs
  %i.nq = getelementptr [8 x i8], ptr %i.j, i64 %i.np
  %i.nr = getelementptr [8 x i8], ptr %i.nq, i64 %indvars.iv406
  %i.ns = getelementptr [8 x i8], ptr %i.j, i64 %i.no
  %i.nt = getelementptr [8 x i8], ptr %i.ns, i64 %i.mx
  call void @dswap_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.nr, ptr noundef nonnull %3, ptr noundef nonnull %i.nt, ptr noundef nonnull @c__1) #8
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv406 ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !55
  %i.nw = sext i32 %.3 to i64                     ; 2 uses
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.nw ; 2 uses
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !55
  store double %i.ny, ptr %i.nu, align 8, !tbaa !55
  store double %i.nv, ptr %i.nx, align 8, !tbaa !55
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.nw ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !49
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv406 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !49
  store i32 %i.oc, ptr %i.nz, align 4, !tbaa !49
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !49
  br label %._crit_edge438

._crit_edge438:                                   ; preds = %._crit_edge374.thread, %bb.ac
  %i.od = load double, ptr %i.e, align 8, !tbaa !55
  %i.oe = call double @sqrt(double noundef %i.od) #8 ; 2 uses
  store double %i.oe, ptr %i.e, align 8, !tbaa !55
  %i.of = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.pre447
  store double %i.oe, ptr %i.of, align 8, !tbaa !55
  %i.og = load i32, ptr %1, align 4, !tbaa !49    ; 2 uses
  %i.oh = sext i32 %i.og to i64
  %i.oi = icmp slt i64 %indvars.iv406, %i.oh
  br i1 %i.oi, label %bb.ad, label %._crit_edge437

._crit_edge437:                                   ; preds = %._crit_edge438
  %.pre449 = add nuw nsw i64 %indvars.iv406, 1
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge438
  %i.oj = trunc i64 %indvars.iv406 to i32
  %i.ok = add i32 %i.oj, -1
  store i32 %i.ok, ptr %i.b, align 4, !tbaa !49
  %i.ol = trunc nuw nsw i64 %indvars.iv406 to i32 ; 2 uses
  %i.om = sub nuw nsw i32 %i.og, %i.ol
  store i32 %i.om, ptr %i.c, align 4, !tbaa !49
  %i.on = add nuw nsw i64 %indvars.iv406, 1       ; 2 uses
  %i.oo = mul nsw i64 %i.on, %i.cs                ; 2 uses
  %i.op = getelementptr [8 x i8], ptr %i.j, i64 %i.oo
  %i.oq = getelementptr i8, ptr %i.op, i64 8
  %i.or = getelementptr [8 x i8], ptr %i.j, i64 %.pre445
  %i.os = getelementptr i8, ptr %i.or, i64 8
  %i.ot = getelementptr [8 x i8], ptr %i.j, i64 %i.oo
  %i.ou = getelementptr [8 x i8], ptr %i.ot, i64 %indvars.iv406 ; 2 uses
  call void @dgemv_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b17, ptr noundef %i.oq, ptr noundef nonnull %3, ptr noundef %i.os, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b19, ptr noundef nonnull %i.ou, ptr noundef nonnull %3) #8
  %i.ov = load i32, ptr %1, align 4, !tbaa !49
  %i.ow = sub nsw i32 %i.ov, %i.ol
  store i32 %i.ow, ptr %i.b, align 4, !tbaa !49
  %i.ox = load double, ptr %i.e, align 8, !tbaa !55
  %i.oy = fdiv double 1.000000e+00, %i.ox
  store double %i.oy, ptr %i.d, align 8, !tbaa !55
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ou, ptr noundef nonnull %3) #8
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge437, %bb.ad
  %indvars.iv.next407.pre-phi = phi i64 [ %.pre449, %._crit_edge437 ], [ %i.on, %bb.ad ]
  %.not335.not = icmp slt i64 %indvars.iv406, %i.ct
  %indvar.next = add i64 %indvar, 1
  br i1 %.not335.not, label %bb.x, label %.loopexit, !llvm.loop !30

.lr.ph392:                                        ; preds = %._crit_edge369.thread
  %invariant.gep489 = getelementptr [8 x i8], ptr %i.j, i64 %i.cs
  %invariant.gep491 = getelementptr [8 x i8], ptr %i.j, i64 %i.cs
  %invariant.gep493 = getelementptr [8 x i8], ptr %i.j, i64 %i.cs
  %i.oz = zext nneg i32 %i.co to i64
  %i.pa = shl nsw i64 %i.i, 3                     ; 4 uses
  %scevgep644 = getelementptr i8, ptr %2, i64 %i.pa
  %i.pb = sext i32 %i.cr to i64
  %i.pc = shl nsw i64 %i.pb, 3
  %scevgep646 = getelementptr i8, ptr %2, i64 %i.pa
  %i.pd = shl nsw i64 %i.cs, 3
  %i.pe = add nsw i64 %i.pd, 8
  %i.pf = shl nsw i64 %i.i, 3                     ; 2 uses
  %scevgep708 = getelementptr i8, ptr %2, i64 %i.pf
  %i.pg = sext i32 %i.cr to i64
  %i.ph = shl nsw i64 %i.pg, 3
  %scevgep710 = getelementptr i8, ptr %2, i64 %i.pf
  %i.pi = getelementptr i8, ptr %2, i64 %i.pa
  %i.pj = getelementptr i8, ptr %i.pi, i64 8
  %i.pk = getelementptr i8, ptr %2, i64 %i.pa
  %i.pl = getelementptr i8, ptr %i.pk, i64 16
  %i.pm = icmp slt i32 %i.cr, 0                   ; 2 uses
  %i.pn = select i1 %i.pm, i32 %narrow, i32 %i.cr
  %i.po = icmp ne i32 %i.cr, 0
  %broadcast.splatinsert729 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat730 = shufflevector <4 x i32> %broadcast.splatinsert729, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert764 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat765 = shufflevector <4 x i32> %broadcast.splatinsert764, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.pp = icmp slt i32 %i.cr, 0                   ; 2 uses
  %i.pq = select i1 %i.pp, i32 %narrow, i32 %i.cr
  %i.pr = icmp ne i32 %i.cr, 0
  %broadcast.splatinsert677 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat678 = shufflevector <4 x i32> %broadcast.splatinsert677, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph392, %bb.am
  %indvar633 = phi i64 [ 0, %.lr.ph392 ], [ %indvar.next634, %bb.am ] ; 14 uses
  %indvars.iv419 = phi i64 [ 1, %.lr.ph392 ], [ %indvars.iv.next420.pre-phi, %bb.am ] ; 36 uses
  %.4390 = phi i32 [ %.0.lcssa, %.lr.ph392 ], [ %.5, %bb.am ] ; 5 uses
  %i.ps = xor i64 %indvar633, -1
  %i.pt = shl nuw nsw i64 %indvar633, 3           ; 2 uses
  %scevgep704 = getelementptr i8, ptr %7, i64 %i.pt ; 2 uses
  %i.pu = getelementptr i8, ptr %7, i64 %i.pt
  %scevgep706 = getelementptr i8, ptr %i.pu, i64 8 ; 2 uses
  %i.pv = trunc i64 %indvar633 to i32
  %i.pw = add i32 %i.pv, 1
  %i.px = mul i32 %i.pw, %i.cr
  %i.py = sext i32 %i.px to i64
  %i.pz = shl nsw i64 %i.py, 3                    ; 2 uses
  %scevgep711 = getelementptr i8, ptr %scevgep710, i64 %i.pz ; 4 uses
  %i.qa = trunc i64 %indvar633 to i32
  %i.qb = add i32 %i.qa, 1
  %i.qc = mul i32 %i.qb, %i.cr                    ; 4 uses
  %10 = xor i64 %indvar633, -1
  %i.qd = shl nuw nsw i64 %indvar633, 3           ; 2 uses
  %scevgep639 = getelementptr i8, ptr %7, i64 %i.qd ; 4 uses
  %i.qe = getelementptr i8, ptr %7, i64 %i.qd
  %scevgep640 = getelementptr i8, ptr %i.qe, i64 8 ; 2 uses
  %i.qf = trunc i64 %indvar633 to i32
  %i.qg = add i32 %i.qf, 1
  %i.qh = mul i32 %i.qg, %i.cr
  %i.qi = sext i32 %i.qh to i64
  %i.qj = shl nsw i64 %i.qi, 3                    ; 2 uses
  %scevgep647 = getelementptr i8, ptr %scevgep646, i64 %i.qj ; 4 uses
  %i.qk = mul i64 %i.pe, %indvar633               ; 2 uses
  %scevgep651 = getelementptr i8, ptr %i.pj, i64 %i.qk ; 2 uses
  %scevgep652 = getelementptr i8, ptr %i.pl, i64 %i.qk
  %i.ql = trunc i64 %indvar633 to i32
  %i.qm = add i32 %i.ql, 1
  %i.qn = mul i32 %i.qm, %i.cr                    ; 4 uses
  %i.qo = load i32, ptr %1, align 4, !tbaa !49    ; 5 uses
  %i.qp = sext i32 %i.qo to i64                   ; 5 uses
  %.not332381 = icmp sgt i64 %indvars.iv419, %i.qp
  br i1 %.not332381, label %._crit_edge385, label %.lr.ph384

.lr.ph384:                                        ; preds = %bb.af
  %i.qq = icmp samesign ugt i64 %indvars.iv419, 1
  %i.qr = add i32 %i.qo, 1
  %wide.trip.count429 = zext i32 %i.qr to i64     ; 12 uses
  br i1 %i.qq, label %.lr.ph384.split.us.preheader, label %iter.check758

iter.check758:                                    ; preds = %.lr.ph384
  %invariant.gep483 = getelementptr [8 x i8], ptr %i.f, i64 %i.qp ; 7 uses
  %i.qs = add i64 %i.ps, %wide.trip.count429      ; 7 uses
  %min.iters.check724 = icmp ult i64 %i.qs, 4
  br i1 %min.iters.check724, label %.lr.ph384.split.preheader, label %vector.scevcheck699

vector.scevcheck699:                              ; preds = %iter.check758
  %reass.sub784 = sub i64 %wide.trip.count429, %indvar633
  %i.qt = add i64 %reass.sub784, -2               ; 2 uses
  %i.qu = trunc i64 %i.qt to i32
  %mul700 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.pn, i32 %i.qu) ; 2 uses
  %mul.result701 = extractvalue { i32, i1 } %mul700, 0 ; 2 uses
  %mul.overflow702 = extractvalue { i32, i1 } %mul700, 1
  %i.qv = add i32 %i.qc, %mul.result701
  %i.qw = sub i32 %i.qc, %mul.result701
  %i.qx = icmp slt i32 %i.qv, %i.qc
  %i.qy = icmp sgt i32 %i.qw, %i.qc
  %i.qz = select i1 %i.pm, i1 %i.qy, i1 %i.qx
  %i.ra = or i1 %i.qz, %mul.overflow702
  %i.rb = icmp ugt i64 %i.qt, 4294967295
  %i.rc = and i1 %i.rb, %i.po
  %i.rd = or i1 %i.ra, %i.rc
  br i1 %i.rd, label %.lr.ph384.split.preheader, label %vector.memcheck703

vector.memcheck703:                               ; preds = %vector.scevcheck699
  %i.re = shl nsw i64 %i.qp, 3                    ; 2 uses
  %scevgep705 = getelementptr i8, ptr %scevgep704, i64 %i.re ; 2 uses
  %reass.sub785 = sub i64 %wide.trip.count429, %indvar633
  %i.rf = add i64 %reass.sub785, -2               ; 2 uses
  %i.rg = shl nsw i64 %i.rf, 3                    ; 2 uses
  %i.rh = getelementptr i8, ptr %scevgep706, i64 %i.rg
  %scevgep707 = getelementptr i8, ptr %i.rh, i64 %i.re ; 2 uses
  %i.ri = mul i64 %i.ph, %i.rf
  %i.rj = getelementptr i8, ptr %scevgep708, i64 %i.ri
  %scevgep709 = getelementptr i8, ptr %i.rj, i64 %i.pz ; 4 uses
  %i.rk = icmp ult ptr %scevgep709, %scevgep711
  %umin712 = select i1 %i.rk, ptr %scevgep709, ptr %scevgep711
  %i.rl = icmp ugt ptr %scevgep709, %scevgep711
  %umax713 = select i1 %i.rl, ptr %scevgep709, ptr %scevgep711
  %scevgep714 = getelementptr i8, ptr %umax713, i64 8
  %scevgep715 = getelementptr i8, ptr %scevgep706, i64 %i.rg
  %bound0716 = icmp ult ptr %scevgep705, %scevgep714
  %bound1717 = icmp ult ptr %umin712, %scevgep707
  %found.conflict718 = and i1 %bound0716, %bound1717
  %bound0719 = icmp ult ptr %scevgep705, %scevgep715
  %bound1720 = icmp ult ptr %scevgep704, %scevgep707
  %found.conflict721 = and i1 %bound0719, %bound1720
  %conflict.rdx722 = or i1 %found.conflict718, %found.conflict721
  br i1 %conflict.rdx722, label %.lr.ph384.split.preheader, label %vector.main.loop.iter.check725

vector.main.loop.iter.check725:                   ; preds = %vector.memcheck703
  %min.iters.check726 = icmp ult i64 %i.qs, 16
  br i1 %min.iters.check726, label %vec.epilog.ph762, label %vector.ph727

vector.ph727:                                     ; preds = %vector.main.loop.iter.check725
  %i.rm = and i64 %i.qs, 12
  %n.vec728 = and i64 %i.qs, -16                  ; 4 uses
  %i.rn = or disjoint i64 %indvars.iv419, %n.vec728 ; 2 uses
  %i.ro = trunc nuw i64 %indvars.iv419 to i32
  %broadcast.splatinsert731 = insertelement <4 x i32> poison, i32 %i.ro, i64 0
  %broadcast.splat732 = shufflevector <4 x i32> %broadcast.splatinsert731, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction733 = add nuw nsw <4 x i32> %broadcast.splat732, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body734

vector.body734:                                   ; preds = %vector.ph727, %vector.body734
  %index735 = phi i64 [ 0, %vector.ph727 ], [ %index.next752, %vector.body734 ] ; 2 uses
  %vec.ind736 = phi <4 x i32> [ %induction733, %vector.ph727 ], [ %vec.ind.next753, %vector.body734 ] ; 5 uses
  %step.add737 = add <4 x i32> %vec.ind736, splat (i32 4)
  %step.add.2738 = add <4 x i32> %vec.ind736, splat (i32 8)
  %step.add.3739 = add <4 x i32> %vec.ind736, splat (i32 12)
  %i.rp = or disjoint i64 %indvars.iv419, %index735 ; 2 uses
  %i.rq = mul <4 x i32> %broadcast.splat730, %vec.ind736
  %i.rr = mul <4 x i32> %broadcast.splat730, %step.add737
  %i.rs = mul <4 x i32> %broadcast.splat730, %step.add.2738
  %i.rt = mul <4 x i32> %broadcast.splat730, %step.add.3739
  %i.ru = sext <4 x i32> %i.rq to <4 x i64>
  %i.rv = sext <4 x i32> %i.rr to <4 x i64>
  %i.rw = sext <4 x i32> %i.rs to <4 x i64>
  %i.rx = sext <4 x i32> %i.rt to <4 x i64>
  %wide.gep740 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.ru
  %wide.gep741 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.rv
  %wide.gep742 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.rw
  %wide.gep743 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.rx
  %wide.masked.gather744 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep740, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !68
  %wide.masked.gather745 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep741, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !68
  %wide.masked.gather746 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep742, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !68
  %wide.masked.gather747 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep743, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !68
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.rp ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 96
  %wide.load748 = load <4 x double>, ptr %i.ry, align 8, !tbaa !55, !alias.scope !69
  %wide.load749 = load <4 x double>, ptr %i.rz, align 8, !tbaa !55, !alias.scope !69
  %wide.load750 = load <4 x double>, ptr %i.sa, align 8, !tbaa !55, !alias.scope !69
  %wide.load751 = load <4 x double>, ptr %i.sb, align 8, !tbaa !55, !alias.scope !69
  %i.sc = fsub <4 x double> %wide.masked.gather744, %wide.load748
  %i.sd = fsub <4 x double> %wide.masked.gather745, %wide.load749
  %i.se = fsub <4 x double> %wide.masked.gather746, %wide.load750
  %i.sf = fsub <4 x double> %wide.masked.gather747, %wide.load751
  %i.sg = getelementptr [8 x i8], ptr %invariant.gep483, i64 %i.rp ; 4 uses
  %i.sh = getelementptr i8, ptr %i.sg, i64 32
  %i.si = getelementptr i8, ptr %i.sg, i64 64
  %i.sj = getelementptr i8, ptr %i.sg, i64 96
  store <4 x double> %i.sc, ptr %i.sg, align 8, !tbaa !55, !alias.scope !70, !noalias !71
  store <4 x double> %i.sd, ptr %i.sh, align 8, !tbaa !55, !alias.scope !70, !noalias !71
  store <4 x double> %i.se, ptr %i.si, align 8, !tbaa !55, !alias.scope !70, !noalias !71
  store <4 x double> %i.sf, ptr %i.sj, align 8, !tbaa !55, !alias.scope !70, !noalias !71
  %index.next752 = add nuw i64 %index735, 16      ; 2 uses
  %vec.ind.next753 = add <4 x i32> %vec.ind736, splat (i32 16)
  %i.sk = icmp eq i64 %index.next752, %n.vec728
  br i1 %i.sk, label %middle.block754, label %vector.body734, !llvm.loop !35

middle.block754:                                  ; preds = %vector.body734
  %cmp.n755 = icmp eq i64 %i.qs, %n.vec728
  br i1 %cmp.n755, label %._crit_edge385.thread, label %vec.epilog.iter.check760

vec.epilog.iter.check760:                         ; preds = %middle.block754
  %min.epilog.iters.check761 = icmp eq i64 %i.rm, 0
  br i1 %min.epilog.iters.check761, label %.lr.ph384.split.preheader, label %vec.epilog.ph762, !prof !61

vec.epilog.ph762:                                 ; preds = %vector.main.loop.iter.check725, %vec.epilog.iter.check760
  %vec.epilog.resume.val756 = phi i64 [ %n.vec728, %vec.epilog.iter.check760 ], [ 0, %vector.main.loop.iter.check725 ]
  %bc.resume.val757 = phi i64 [ %i.rn, %vec.epilog.iter.check760 ], [ %indvars.iv419, %vector.main.loop.iter.check725 ]
  %n.vec763 = and i64 %i.qs, -4                   ; 3 uses
  %i.sl = or disjoint i64 %indvars.iv419, %n.vec763
  %i.sm = trunc i64 %bc.resume.val757 to i32
  %broadcast.splatinsert766 = insertelement <4 x i32> poison, i32 %i.sm, i64 0
  %broadcast.splat767 = shufflevector <4 x i32> %broadcast.splatinsert766, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction768 = add <4 x i32> %broadcast.splat767, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body769

vec.epilog.vector.body769:                        ; preds = %vec.epilog.vector.body769, %vec.epilog.ph762
  %index770 = phi i64 [ %vec.epilog.resume.val756, %vec.epilog.ph762 ], [ %index.next775, %vec.epilog.vector.body769 ] ; 2 uses
  %vec.ind771 = phi <4 x i32> [ %induction768, %vec.epilog.ph762 ], [ %vec.ind.next776, %vec.epilog.vector.body769 ] ; 2 uses
  %i.sn = or disjoint i64 %indvars.iv419, %index770 ; 2 uses
  %i.so = mul <4 x i32> %broadcast.splat765, %vec.ind771
  %i.sp = sext <4 x i32> %i.so to <4 x i64>
  %wide.gep772 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.sp
  %wide.masked.gather773 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep772, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !68
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.sn
  %wide.load774 = load <4 x double>, ptr %i.sq, align 8, !tbaa !55, !alias.scope !69
  %i.sr = fsub <4 x double> %wide.masked.gather773, %wide.load774
  %i.ss = getelementptr [8 x i8], ptr %invariant.gep483, i64 %i.sn
  store <4 x double> %i.sr, ptr %i.ss, align 8, !tbaa !55, !alias.scope !70, !noalias !71
  %index.next775 = add nuw i64 %index770, 4       ; 2 uses
  %vec.ind.next776 = add <4 x i32> %vec.ind771, splat (i32 4)
  %i.st = icmp eq i64 %index.next775, %n.vec763
  br i1 %i.st, label %vec.epilog.middle.block777, label %vec.epilog.vector.body769, !llvm.loop !36

vec.epilog.middle.block777:                       ; preds = %vec.epilog.vector.body769
  %cmp.n778 = icmp eq i64 %i.qs, %n.vec763
  br i1 %cmp.n778, label %._crit_edge385.thread, label %.lr.ph384.split.preheader

.lr.ph384.split.preheader:                        ; preds = %iter.check758, %vector.scevcheck699, %vector.memcheck703, %vec.epilog.iter.check760, %vec.epilog.middle.block777
  %indvars.iv421.ph = phi i64 [ %indvars.iv419, %iter.check758 ], [ %indvars.iv419, %vector.scevcheck699 ], [ %indvars.iv419, %vector.memcheck703 ], [ %i.rn, %vec.epilog.iter.check760 ], [ %i.sl, %vec.epilog.middle.block777 ] ; 4 uses
  %i.su = sub i64 %wide.trip.count429, %indvars.iv421.ph
  %xtraiter814 = and i64 %i.su, 3                 ; 2 uses
  %lcmp.mod815.not = icmp eq i64 %xtraiter814, 0
  br i1 %lcmp.mod815.not, label %.lr.ph384.split.prol.loopexit, label %.lr.ph384.split.prol

.lr.ph384.split.prol:                             ; preds = %.lr.ph384.split.preheader, %.lr.ph384.split.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph384.split.prol ], [ %indvars.iv421.ph, %.lr.ph384.split.preheader ] ; 4 uses
  %prol.iter816 = phi i64 [ %prol.iter816.next, %.lr.ph384.split.prol ], [ 0, %.lr.ph384.split.preheader ]
  %i.sv = trunc nuw nsw i64 %indvars.iv421.prol to i32
  %i.sw = mul i32 %i.cr, %i.sv
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.sx
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !55
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv421.prol
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !55
  %i.tc = fsub double %i.sz, %i.tb
  %gep484.prol = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv421.prol
  store double %i.tc, ptr %gep484.prol, align 8, !tbaa !55
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter816.next = add i64 %prol.iter816, 1   ; 2 uses
  %prol.iter816.cmp.not = icmp eq i64 %prol.iter816.next, %xtraiter814
  br i1 %prol.iter816.cmp.not, label %.lr.ph384.split.prol.loopexit, label %.lr.ph384.split.prol, !llvm.loop !37

.lr.ph384.split.prol.loopexit:                    ; preds = %.lr.ph384.split.prol, %.lr.ph384.split.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph384.split.preheader ], [ %indvars.iv.next422.prol, %.lr.ph384.split.prol ]
  %i.td = sub i64 %indvars.iv421.ph, %wide.trip.count429
  %i.te = icmp ugt i64 %i.td, -4
  br i1 %i.te, label %._crit_edge385.thread, label %.lr.ph384.split

.lr.ph384.split.us.preheader:                     ; preds = %.lr.ph384
  %i.tf = add nsw i64 %indvars.iv419, -1
  %i.tg = mul nsw i64 %i.tf, %i.cs
  %invariant.gep485 = getelementptr [8 x i8], ptr %i.j, i64 %i.tg ; 6 uses
  %invariant.gep487 = getelementptr [8 x i8], ptr %i.f, i64 %i.qp ; 6 uses
  %11 = add i64 %10, %wide.trip.count429          ; 3 uses
  %min.iters.check674 = icmp ult i64 %11, 32
  br i1 %min.iters.check674, label %.lr.ph384.split.us.preheader788, label %vector.scevcheck632

vector.scevcheck632:                              ; preds = %.lr.ph384.split.us.preheader
  %reass.sub786 = sub i64 %wide.trip.count429, %indvar633
  %i.th = add i64 %reass.sub786, -2               ; 2 uses
  %i.ti = trunc i64 %i.th to i32
  %mul635 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.pq, i32 %i.ti) ; 2 uses
  %mul.result636 = extractvalue { i32, i1 } %mul635, 0 ; 2 uses
  %mul.overflow637 = extractvalue { i32, i1 } %mul635, 1
  %i.tj = add i32 %i.qn, %mul.result636
  %i.tk = sub i32 %i.qn, %mul.result636
  %i.tl = icmp slt i32 %i.tj, %i.qn
  %i.tm = icmp sgt i32 %i.tk, %i.qn
  %i.tn = select i1 %i.pp, i1 %i.tm, i1 %i.tl
  %i.to = or i1 %i.tn, %mul.overflow637
  %i.tp = icmp ugt i64 %i.th, 4294967295
  %i.tq = and i1 %i.tp, %i.pr
  %i.tr = or i1 %i.to, %i.tq
  br i1 %i.tr, label %.lr.ph384.split.us.preheader788, label %vector.memcheck638

vector.memcheck638:                               ; preds = %vector.scevcheck632
  %reass.sub787 = sub i64 %wide.trip.count429, %indvar633
  %i.ts = add i64 %reass.sub787, -2               ; 2 uses
  %i.tt = shl nsw i64 %i.ts, 3                    ; 3 uses
  %scevgep641 = getelementptr i8, ptr %scevgep640, i64 %i.tt ; 3 uses
  %i.tu = shl nsw i64 %i.qp, 3                    ; 2 uses
  %scevgep642 = getelementptr i8, ptr %scevgep639, i64 %i.tu ; 3 uses
  %i.tv = getelementptr i8, ptr %scevgep640, i64 %i.tt
  %scevgep643 = getelementptr i8, ptr %i.tv, i64 %i.tu ; 3 uses
  %i.tw = mul i64 %i.pc, %i.ts
  %i.tx = getelementptr i8, ptr %scevgep644, i64 %i.tw
  %scevgep645 = getelementptr i8, ptr %i.tx, i64 %i.qj ; 4 uses
  %i.ty = icmp ult ptr %scevgep645, %scevgep647
  %umin648 = select i1 %i.ty, ptr %scevgep645, ptr %scevgep647 ; 2 uses
  %i.tz = icmp ugt ptr %scevgep645, %scevgep647
  %umax649 = select i1 %i.tz, ptr %scevgep645, ptr %scevgep647
  %scevgep650 = getelementptr i8, ptr %umax649, i64 8 ; 2 uses
  %scevgep653 = getelementptr i8, ptr %scevgep652, i64 %i.tt ; 2 uses
  %bound0654 = icmp ult ptr %scevgep639, %scevgep643
  %bound1655 = icmp ult ptr %scevgep642, %scevgep641
  %found.conflict656 = and i1 %bound0654, %bound1655
  %bound0657 = icmp ult ptr %scevgep639, %scevgep650
  %bound1658 = icmp ult ptr %umin648, %scevgep641
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx660 = or i1 %found.conflict656, %found.conflict659
  %bound0661 = icmp ult ptr %scevgep639, %scevgep653
  %bound1662 = icmp ult ptr %scevgep651, %scevgep641
  %found.conflict663 = and i1 %bound0661, %bound1662
  %conflict.rdx664 = or i1 %conflict.rdx660, %found.conflict663
  %bound0665 = icmp ult ptr %scevgep642, %scevgep650
  %bound1666 = icmp ult ptr %umin648, %scevgep643
  %found.conflict667 = and i1 %bound0665, %bound1666
  %conflict.rdx668 = or i1 %conflict.rdx664, %found.conflict667
  %bound0669 = icmp ult ptr %scevgep642, %scevgep653
  %bound1670 = icmp ult ptr %scevgep651, %scevgep643
  %found.conflict671 = and i1 %bound0669, %bound1670
  %conflict.rdx672 = or i1 %conflict.rdx668, %found.conflict671
  br i1 %conflict.rdx672, label %.lr.ph384.split.us.preheader788, label %vector.ph675

vector.ph675:                                     ; preds = %vector.memcheck638
  %n.vec676 = and i64 %11, -8                     ; 3 uses
  %i.ua = add i64 %indvars.iv419, %n.vec676
  %i.ub = trunc i64 %indvars.iv419 to i32
  %broadcast.splatinsert679 = insertelement <4 x i32> poison, i32 %i.ub, i64 0
  %broadcast.splat680 = shufflevector <4 x i32> %broadcast.splatinsert679, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction681 = add <4 x i32> %broadcast.splat680, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body682

vector.body682:                                   ; preds = %vector.body682, %vector.ph675
  %index683 = phi i64 [ 0, %vector.ph675 ], [ %index.next694, %vector.body682 ] ; 2 uses
  %vec.ind684 = phi <4 x i32> [ %induction681, %vector.ph675 ], [ %vec.ind.next695, %vector.body682 ] ; 3 uses
  %step.add685 = add <4 x i32> %vec.ind684, splat (i32 4)
  %i.uc = add nuw i64 %indvars.iv419, %index683   ; 3 uses
  %i.ud = getelementptr [8 x i8], ptr %invariant.gep485, i64 %i.uc ; 2 uses
  %i.ue = getelementptr i8, ptr %i.ud, i64 32
  %wide.load686 = load <4 x double>, ptr %i.ud, align 8, !tbaa !55, !alias.scope !72 ; 2 uses
  %wide.load687 = load <4 x double>, ptr %i.ue, align 8, !tbaa !55, !alias.scope !72 ; 3 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.uc ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 32 ; 2 uses
  %wide.load688 = load <4 x double>, ptr %i.uf, align 8, !tbaa !55, !alias.scope !73, !noalias !74
  %wide.load689 = load <4 x double>, ptr %i.ug, align 8, !tbaa !55, !alias.scope !73, !noalias !74
  %i.uh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load686, <4 x double> %wide.load686, <4 x double> %wide.load688) ; 2 uses
  %i.ui = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load687, <4 x double> %wide.load687, <4 x double> %wide.load689) ; 2 uses
  store <4 x double> %i.uh, ptr %i.uf, align 8, !tbaa !55, !alias.scope !73, !noalias !74
  store <4 x double> %i.ui, ptr %i.ug, align 8, !tbaa !55, !alias.scope !73, !noalias !74
  %i.uj = mul <4 x i32> %broadcast.splat678, %vec.ind684
  %i.uk = mul <4 x i32> %broadcast.splat678, %step.add685
  %i.ul = sext <4 x i32> %i.uj to <4 x i64>
  %i.um = sext <4 x i32> %i.uk to <4 x i64>
  %wide.gep690 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.ul
  %wide.gep691 = getelementptr inbounds [8 x i8], ptr %i.j, <4 x i64> %i.um
  %wide.masked.gather692 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep690, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !75
  %wide.masked.gather693 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep691, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !55, !alias.scope !75
  %i.un = fsub <4 x double> %wide.masked.gather692, %i.uh
  %i.uo = fsub <4 x double> %wide.masked.gather693, %i.ui
  %i.up = getelementptr [8 x i8], ptr %invariant.gep487, i64 %i.uc ; 2 uses
  %i.uq = getelementptr i8, ptr %i.up, i64 32
  store <4 x double> %i.un, ptr %i.up, align 8, !tbaa !55, !alias.scope !76, !noalias !77
  store <4 x double> %i.uo, ptr %i.uq, align 8, !tbaa !55, !alias.scope !76, !noalias !77
  %index.next694 = add nuw i64 %index683, 8       ; 2 uses
  %vec.ind.next695 = add <4 x i32> %vec.ind684, splat (i32 8)
  %i.ur = icmp eq i64 %index.next694, %n.vec676
  br i1 %i.ur, label %middle.block696, label %vector.body682, !llvm.loop !43

middle.block696:                                  ; preds = %vector.body682
  %i.us = extractelement <4 x double> %wide.load687, i64 3
  %cmp.n697 = icmp eq i64 %11, %n.vec676
  br i1 %cmp.n697, label %._crit_edge385.split.us, label %.lr.ph384.split.us.preheader788

.lr.ph384.split.us.preheader788:                  ; preds = %vector.memcheck638, %vector.scevcheck632, %.lr.ph384.split.us.preheader, %middle.block696
  %indvars.iv426.ph = phi i64 [ %indvars.iv419, %vector.memcheck638 ], [ %indvars.iv419, %vector.scevcheck632 ], [ %indvars.iv419, %.lr.ph384.split.us.preheader ], [ %i.ua, %middle.block696 ] ; 4 uses
  %i.ut = sub i64 %wide.trip.count429, %indvars.iv426.ph
  %xtraiter817 = and i64 %i.ut, 3                 ; 2 uses
  %lcmp.mod818.not = icmp eq i64 %xtraiter817, 0
  br i1 %lcmp.mod818.not, label %.lr.ph384.split.us.prol.loopexit, label %.lr.ph384.split.us.prol

.lr.ph384.split.us.prol:                          ; preds = %.lr.ph384.split.us.preheader788, %.lr.ph384.split.us.prol
  %indvars.iv426.prol = phi i64 [ %indvars.iv.next427.prol, %.lr.ph384.split.us.prol ], [ %indvars.iv426.ph, %.lr.ph384.split.us.preheader788 ] ; 5 uses
  %prol.iter819 = phi i64 [ %prol.iter819.next, %.lr.ph384.split.us.prol ], [ 0, %.lr.ph384.split.us.preheader788 ]
  %gep486.prol = getelementptr [8 x i8], ptr %invariant.gep485, i64 %indvars.iv426.prol
  %i.uu = load double, ptr %gep486.prol, align 8, !tbaa !55 ; 3 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv426.prol ; 2 uses
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !55
  %i.ux = call double @llvm.fmuladd.f64(double %i.uu, double %i.uu, double %i.uw) ; 2 uses
  store double %i.ux, ptr %i.uv, align 8, !tbaa !55
  %i.uy = trunc nuw nsw i64 %indvars.iv426.prol to i32
  %i.uz = mul i32 %i.cr, %i.uy
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.va
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !55
  %i.vd = fsub double %i.vc, %i.ux
  %gep488.prol = getelementptr [8 x i8], ptr %invariant.gep487, i64 %indvars.iv426.prol
  store double %i.vd, ptr %gep488.prol, align 8, !tbaa !55
  %indvars.iv.next427.prol = add nuw nsw i64 %indvars.iv426.prol, 1 ; 2 uses
  %prol.iter819.next = add i64 %prol.iter819, 1   ; 2 uses
  %prol.iter819.cmp.not = icmp eq i64 %prol.iter819.next, %xtraiter817
  br i1 %prol.iter819.cmp.not, label %.lr.ph384.split.us.prol.loopexit, label %.lr.ph384.split.us.prol, !llvm.loop !44

.lr.ph384.split.us.prol.loopexit:                 ; preds = %.lr.ph384.split.us.prol, %.lr.ph384.split.us.preheader788
  %.lcssa789.unr = phi double [ poison, %.lr.ph384.split.us.preheader788 ], [ %i.uu, %.lr.ph384.split.us.prol ]
  %indvars.iv426.unr = phi i64 [ %indvars.iv426.ph, %.lr.ph384.split.us.preheader788 ], [ %indvars.iv.next427.prol, %.lr.ph384.split.us.prol ]
  %i.ve = sub i64 %indvars.iv426.ph, %wide.trip.count429
  %i.vf = icmp ugt i64 %i.ve, -4
  br i1 %i.vf, label %._crit_edge385.split.us, label %.lr.ph384.split.us

.lr.ph384.split.us:                               ; preds = %.lr.ph384.split.us.prol.loopexit, %.lr.ph384.split.us
  %indvars.iv426 = phi i64 [ %indvars.iv.next427.3, %.lr.ph384.split.us ], [ %indvars.iv426.unr, %.lr.ph384.split.us.prol.loopexit ] ; 9 uses
  %gep486 = getelementptr [8 x i8], ptr %invariant.gep485, i64 %indvars.iv426
  %i.vg = load double, ptr %gep486, align 8, !tbaa !55 ; 2 uses
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv426 ; 2 uses
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !55
  %i.vj = call double @llvm.fmuladd.f64(double %i.vg, double %i.vg, double %i.vi) ; 2 uses
  store double %i.vj, ptr %i.vh, align 8, !tbaa !55
  %i.vk = trunc nuw nsw i64 %indvars.iv426 to i32
  %i.vl = mul i32 %i.cr, %i.vk
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.vm
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !55
  %i.vp = fsub double %i.vo, %i.vj
  %gep488 = getelementptr [8 x i8], ptr %invariant.gep487, i64 %indvars.iv426
  store double %i.vp, ptr %gep488, align 8, !tbaa !55
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 3 uses
  %gep486.1 = getelementptr [8 x i8], ptr %invariant.gep485, i64 %indvars.iv.next427
  %i.vq = load double, ptr %gep486.1, align 8, !tbaa !55 ; 2 uses
  %i.vr = getelementptr [8 x i8], ptr %7, i64 %indvars.iv426 ; 2 uses
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !55
  %i.vt = call double @llvm.fmuladd.f64(double %i.vq, double %i.vq, double %i.vs) ; 2 uses
  store double %i.vt, ptr %i.vr, align 8, !tbaa !55
  %i.vu = trunc nuw nsw i64 %indvars.iv.next427 to i32
  %i.vv = mul i32 %i.cr, %i.vu
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.vw
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !55
  %i.vz = fsub double %i.vy, %i.vt
  %gep488.1 = getelementptr [8 x i8], ptr %invariant.gep487, i64 %indvars.iv.next427
  store double %i.vz, ptr %gep488.1, align 8, !tbaa !55
  %indvars.iv.next427.1 = add nuw nsw i64 %indvars.iv426, 2 ; 4 uses
  %gep486.2 = getelementptr [8 x i8], ptr %invariant.gep485, i64 %indvars.iv.next427.1
  %i.wa = load double, ptr %gep486.2, align 8, !tbaa !55 ; 2 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next427.1 ; 2 uses
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !55
  %i.wd = call double @llvm.fmuladd.f64(double %i.wa, double %i.wa, double %i.wc) ; 2 uses
  store double %i.wd, ptr %i.wb, align 8, !tbaa !55
  %i.we = trunc nuw nsw i64 %indvars.iv.next427.1 to i32
  %i.wf = mul i32 %i.cr, %i.we
  %i.wg = sext i32 %i.wf to i64
  %i.wh = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wg
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !55
  %i.wj = fsub double %i.wi, %i.wd
  %gep488.2 = getelementptr [8 x i8], ptr %invariant.gep487, i64 %indvars.iv.next427.1
  store double %i.wj, ptr %gep488.2, align 8, !tbaa !55
  %indvars.iv.next427.2 = add nuw nsw i64 %indvars.iv426, 3 ; 4 uses
  %gep486.3 = getelementptr [8 x i8], ptr %invariant.gep485, i64 %indvars.iv.next427.2
  %i.wk = load double, ptr %gep486.3, align 8, !tbaa !55 ; 3 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next427.2 ; 2 uses
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !55
  %i.wn = call double @llvm.fmuladd.f64(double %i.wk, double %i.wk, double %i.wm) ; 2 uses
  store double %i.wn, ptr %i.wl, align 8, !tbaa !55
  %i.wo = trunc nuw nsw i64 %indvars.iv.next427.2 to i32
  %i.wp = mul i32 %i.cr, %i.wo
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wq
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !55
  %i.wt = fsub double %i.ws, %i.wn
  %gep488.3 = getelementptr [8 x i8], ptr %invariant.gep487, i64 %indvars.iv.next427.2
  store double %i.wt, ptr %gep488.3, align 8, !tbaa !55
  %indvars.iv.next427.3 = add nuw nsw i64 %indvars.iv426, 4 ; 2 uses
  %exitcond430.not.3 = icmp eq i64 %indvars.iv.next427.3, %wide.trip.count429
  br i1 %exitcond430.not.3, label %._crit_edge385.split.us, label %.lr.ph384.split.us, !llvm.loop !45

._crit_edge385.split.us:                          ; preds = %.lr.ph384.split.us.prol.loopexit, %.lr.ph384.split.us, %middle.block696
  %.lcssa = phi double [ %i.us, %middle.block696 ], [ %.lcssa789.unr, %.lr.ph384.split.us.prol.loopexit ], [ %i.wk, %.lr.ph384.split.us ]
  store double %.lcssa, ptr %i.d, align 8, !tbaa !55
  br label %._crit_edge385

.lr.ph384.split:                                  ; preds = %.lr.ph384.split.prol.loopexit, %.lr.ph384.split
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.3, %.lr.ph384.split ], [ %indvars.iv421.unr, %.lr.ph384.split.prol.loopexit ] ; 8 uses
  %i.wu = trunc nuw nsw i64 %indvars.iv421 to i32
  %i.wv = mul i32 %i.cr, %i.wu
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ww
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !55
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv421
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !55
  %i.xb = fsub double %i.wy, %i.xa
  %gep484 = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv421
  store double %i.xb, ptr %gep484, align 8, !tbaa !55
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %i.xc = trunc nuw nsw i64 %indvars.iv.next422 to i32
  %i.xd = mul i32 %i.cr, %i.xc
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.xe
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !55
  %i.xh = getelementptr [8 x i8], ptr %7, i64 %indvars.iv421
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !55
  %i.xj = fsub double %i.xg, %i.xi
  %gep484.1 = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv.next422
  store double %i.xj, ptr %gep484.1, align 8, !tbaa !55
  %indvars.iv.next422.1 = add nuw nsw i64 %indvars.iv421, 2 ; 3 uses
  %i.xk = trunc nuw nsw i64 %indvars.iv.next422.1 to i32
  %i.xl = mul i32 %i.cr, %i.xk
  %i.xm = sext i32 %i.xl to i64
  %i.xn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.xm
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !55
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next422.1
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !55
  %i.xr = fsub double %i.xo, %i.xq
  %gep484.2 = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv.next422.1
  store double %i.xr, ptr %gep484.2, align 8, !tbaa !55
  %indvars.iv.next422.2 = add nuw nsw i64 %indvars.iv421, 3 ; 3 uses
  %i.xs = trunc nuw nsw i64 %indvars.iv.next422.2 to i32
  %i.xt = mul i32 %i.cr, %i.xs
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.xu
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !55
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next422.2
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !55
  %i.xz = fsub double %i.xw, %i.xy
  %gep484.3 = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv.next422.2
  store double %i.xz, ptr %gep484.3, align 8, !tbaa !55
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count429
  br i1 %exitcond425.not.3, label %._crit_edge385.thread, label %.lr.ph384.split, !llvm.loop !46

._crit_edge385:                                   ; preds = %._crit_edge385.split.us, %bb.af
  %i.ya = icmp samesign ugt i64 %indvars.iv419, 1
  br i1 %i.ya, label %bb.ag, label %._crit_edge385.thread

bb.ag:                                            ; preds = %._crit_edge385
  %i.yb = trunc nuw nsw i64 %indvars.iv419 to i32 ; 4 uses
  %i.yc = add nsw i32 %i.qo, %i.yb                ; 7 uses
  store i32 %i.yc, ptr %i.b, align 4, !tbaa !49
  %i.yd = shl i32 %i.qo, 1                        ; 3 uses
  store i32 %i.yd, ptr %i.c, align 4, !tbaa !49
  %.not.not1.i339 = icmp slt i32 %i.yc, %i.yd
  br i1 %.not.not1.i339, label %.lr.ph.preheader.i342, label %dmaxloc_.exit352

.lr.ph.preheader.i342:                            ; preds = %bb.ag
  %i.ye = sext i32 %i.yc to i64                   ; 5 uses
  %i.yf = getelementptr [8 x i8], ptr %7, i64 %i.ye
  %i.yg = getelementptr i8, ptr %i.yf, i64 -8
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !55 ; 2 uses
  %wide.trip.count.i343 = sext i32 %i.yd to i64   ; 3 uses
  %i.yi = sub nsw i64 %wide.trip.count.i343, %i.ye
  %xtraiter820 = and i64 %i.yi, 7                 ; 2 uses
  %lcmp.mod821.not = icmp eq i64 %xtraiter820, 0
  br i1 %lcmp.mod821.not, label %.lr.ph.i344.prol.loopexit, label %.lr.ph.i344.prol

.lr.ph.i344.prol:                                 ; preds = %.lr.ph.preheader.i342, %.lr.ph.i344.prol
  %indvars.iv.i345.prol = phi i64 [ %indvars.iv.next.i348.prol, %.lr.ph.i344.prol ], [ %i.ye, %.lr.ph.preheader.i342 ] ; 2 uses
  %.04.i346.prol = phi i32 [ %spec.select18.i350.prol, %.lr.ph.i344.prol ], [ %i.yc, %.lr.ph.preheader.i342 ]
  %.0152.i347.prol = phi double [ %spec.select.i349.prol, %.lr.ph.i344.prol ], [ %i.yh, %.lr.ph.preheader.i342 ] ; 2 uses
  %prol.iter822 = phi i64 [ %prol.iter822.next, %.lr.ph.i344.prol ], [ 0, %.lr.ph.preheader.i342 ]
  %indvars.iv.next.i348.prol = add nsw i64 %indvars.iv.i345.prol, 1 ; 3 uses
  %i.yj = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.i345.prol
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !55 ; 2 uses
  %i.yl = fcmp ogt double %i.yk, %.0152.i347.prol ; 2 uses
  %spec.select.i349.prol = select i1 %i.yl, double %i.yk, double %.0152.i347.prol ; 2 uses
  %i.ym = trunc nsw i64 %indvars.iv.next.i348.prol to i32
  %spec.select18.i350.prol = select i1 %i.yl, i32 %i.ym, i32 %.04.i346.prol ; 3 uses
  %prol.iter822.next = add i64 %prol.iter822, 1   ; 2 uses
  %prol.iter822.cmp.not = icmp eq i64 %prol.iter822.next, %xtraiter820
  br i1 %prol.iter822.cmp.not, label %.lr.ph.i344.prol.loopexit, label %.lr.ph.i344.prol, !llvm.loop !47

.lr.ph.i344.prol.loopexit:                        ; preds = %.lr.ph.i344.prol, %.lr.ph.preheader.i342
  %spec.select18.i350.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i342 ], [ %spec.select18.i350.prol, %.lr.ph.i344.prol ]
  %indvars.iv.i345.unr = phi i64 [ %i.ye, %.lr.ph.preheader.i342 ], [ %indvars.iv.next.i348.prol, %.lr.ph.i344.prol ]
end_hunk_1
