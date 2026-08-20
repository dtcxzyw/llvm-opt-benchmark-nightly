inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 37
begin_hunk_0_@af_cjk_metrics_init:bb.a
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i.1, %.lr.ph217.us.i ], [ %indvars.iv275.i.unr, %.lr.ph217.us.i.prol.loopexit ] ; 4 uses
  %.3133215.us.i = phi i32 [ %.4.us.i.1, %.lr.ph217.us.i ], [ %.3133215.us.i.unr, %.lr.ph217.us.i.prol.loopexit ] ; 2 uses
  %.3137214.us.i = phi i64 [ %.4138.us.i.1, %.lr.ph217.us.i ], [ %.3137214.us.i.unr, %.lr.ph217.us.i.prol.loopexit ] ; 2 uses
  %i.dh = icmp slt i32 %.3133215.us.i, 0
  %.phi.trans.insert317.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv275.i
  %.pre318.i = load i64, ptr %.phi.trans.insert317.i, align 8, !tbaa !82 ; 2 uses
  %i.di = icmp slt i64 %.pre318.i, %.3137214.us.i
  %or.cond380.i = select i1 %i.dh, i1 true, i1 %i.di ; 2 uses
  %i.dj = trunc nsw i64 %indvars.iv275.i to i32
  %.4138.us.i = select i1 %or.cond380.i, i64 %.pre318.i, i64 %.3137214.us.i ; 2 uses
  %.4.us.i = select i1 %or.cond380.i, i32 %i.dj, i32 %.3133215.us.i ; 2 uses
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %i.dk = icmp slt i32 %.4.us.i, 0
  %.phi.trans.insert317.i.1 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.next276.i
  %.pre318.i.1 = load i64, ptr %.phi.trans.insert317.i.1, align 8, !tbaa !82 ; 2 uses
  %i.dl = icmp slt i64 %.pre318.i.1, %.4138.us.i
  %or.cond380.i.1 = select i1 %i.dk, i1 true, i1 %i.dl ; 2 uses
  %i.dm = trunc nsw i64 %indvars.iv.next276.i to i32
  %.4138.us.i.1 = select i1 %or.cond380.i.1, i64 %.pre318.i.1, i64 %.4138.us.i ; 2 uses
  %.4.us.i.1 = select i1 %or.cond380.i.1, i32 %i.dm, i32 %.4.us.i ; 2 uses
  %indvars.iv.next276.i.1 = add nuw nsw i64 %indvars.iv275.i, 2 ; 2 uses
  %exitcond279.not.i.1 = icmp eq i64 %indvars.iv.next276.i.1, %wide.trip.count278.i
  br i1 %exitcond279.not.i.1, label %..loopexit203_crit_edge.us.i, label %.lr.ph217.us.i, !llvm.loop !83

..loopexit203_crit_edge.us.i:                     ; preds = %.lr.ph217.us.i.prol.loopexit, %.lr.ph217.us.i, %.lr.ph238.split.split.us.i
  %.9143.us245.i = phi i64 [ %.0134234.us243.i, %.lr.ph238.split.split.us.i ], [ %.4138.us.i.lcssa.unr, %.lr.ph217.us.i.prol.loopexit ], [ %.4138.us.i.1, %.lr.ph217.us.i ] ; 2 uses
  %.9.us246.i = phi i32 [ %.0130235.us242.i, %.lr.ph238.split.split.us.i ], [ %.4.us.i.lcssa.unr, %.lr.ph217.us.i.prol.loopexit ], [ %.4.us.i.1, %.lr.ph217.us.i ]
  %indvars.iv.next281.i = add nuw nsw i64 %indvars.iv280.i, 1 ; 2 uses
  %exitcond284.not.i = icmp eq i64 %indvars.iv.next281.i, %wide.trip.count303.i
  br i1 %exitcond284.not.i, label %._crit_edge.i, label %.lr.ph238.split.split.us.i, !llvm.loop !80

.lr.ph238.split.split.i:                          ; preds = %.lr.ph238.split.i, %.loopexit205.i
  %indvars.iv270.i = phi i64 [ %indvars.iv.next271.i, %.loopexit205.i ], [ 0, %.lr.ph238.split.i ] ; 2 uses
  %.0237.i = phi i32 [ %i.dq, %.loopexit205.i ], [ -1, %.lr.ph238.split.i ]
  %.0130235.i = phi i32 [ %.9.i, %.loopexit205.i ], [ -1, %.lr.ph238.split.i ] ; 4 uses
  %.0134234.i = phi i64 [ %.9143.i, %.loopexit205.i ], [ 0, %.lr.ph238.split.i ] ; 4 uses
  %i.dn = add nsw i32 %.0237.i, 1                 ; 3 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.sroa.696.0.copyload.i, i64 %indvars.iv270.i
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !73 ; 2 uses
  %i.dq = zext i16 %i.dp to i32                   ; 3 uses
  %.not172.i = icmp slt i32 %i.dn, %i.dq
  br i1 %.not172.i, label %.lr.ph.preheader.i, label %.loopexit205.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph238.split.split.i
  %i.dr = zext i32 %i.dn to i64                   ; 5 uses
  %i.ds = add nuw nsw i32 %i.dq, 1
  %wide.trip.count.i = zext nneg i32 %i.ds to i64
  %i.dt = zext i16 %i.dp to i64                   ; 2 uses
  %i.du = add nuw nsw i64 %i.dt, %i.dr
  %i.dv = and i64 %i.du, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dv, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.dw = icmp slt i32 %.0130235.i, 0
  %.phi.trans.insert.i.prol = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %i.dr
  %.pre.i.prol = load i64, ptr %.phi.trans.insert.i.prol, align 8, !tbaa !82 ; 2 uses
  %i.dx = icmp sgt i64 %.pre.i.prol, %.0134234.i
  %or.cond381.i.prol = select i1 %i.dw, i1 true, i1 %i.dx ; 2 uses
  %.2136.i.prol = select i1 %or.cond381.i.prol, i64 %.pre.i.prol, i64 %.0134234.i ; 2 uses
  %.2132.i.prol = select i1 %or.cond381.i.prol, i32 %i.dn, i32 %.0130235.i ; 2 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.dr, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.2136.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %.2136.i.prol, %.lr.ph.i.prol ]
  %.2132.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %.2132.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.dr, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.1131210.i.unr = phi i32 [ %.0130235.i, %.lr.ph.preheader.i ], [ %.2132.i.prol, %.lr.ph.i.prol ]
  %.1135209.i.unr = phi i64 [ %.0134234.i, %.lr.ph.preheader.i ], [ %.2136.i.prol, %.lr.ph.i.prol ]
  %i.dy = icmp eq i64 %i.dt, %i.dr
  br i1 %i.dy, label %.loopexit205.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.1131210.i = phi i32 [ %.2132.i.1, %.lr.ph.i ], [ %.1131210.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.1135209.i = phi i64 [ %.2136.i.1, %.lr.ph.i ], [ %.1135209.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.dz = icmp slt i32 %.1131210.i, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.i
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !82 ; 2 uses
  %i.ea = icmp sgt i64 %.pre.i, %.1135209.i
  %or.cond381.i = select i1 %i.dz, i1 true, i1 %i.ea ; 2 uses
  %i.eb = trunc nsw i64 %indvars.iv.i to i32
  %.2136.i = select i1 %or.cond381.i, i64 %.pre.i, i64 %.1135209.i ; 2 uses
  %.2132.i = select i1 %or.cond381.i, i32 %i.eb, i32 %.1131210.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ec = icmp slt i32 %.2132.i, 0
  %.phi.trans.insert.i.1 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.next.i
  %.pre.i.1 = load i64, ptr %.phi.trans.insert.i.1, align 8, !tbaa !82 ; 2 uses
  %i.ed = icmp sgt i64 %.pre.i.1, %.2136.i
  %or.cond381.i.1 = select i1 %i.ec, i1 true, i1 %i.ed ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next.i to i32
  %.2136.i.1 = select i1 %or.cond381.i.1, i64 %.pre.i.1, i64 %.2136.i ; 2 uses
  %.2132.i.1 = select i1 %or.cond381.i.1, i32 %i.ee, i32 %.2132.i ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit205.i, label %.lr.ph.i, !llvm.loop !84

.loopexit205.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph238.split.split.i
  %.9143.i = phi i64 [ %.0134234.i, %.lr.ph238.split.split.i ], [ %.2136.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.2136.i.1, %.lr.ph.i ] ; 2 uses
  %.9.i = phi i32 [ %.0130235.i, %.lr.ph238.split.split.i ], [ %.2132.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.2132.i.1, %.lr.ph.i ]
  %indvars.iv.next271.i = add nuw nsw i64 %indvars.iv270.i, 1 ; 2 uses
  %exitcond274.not.i = icmp eq i64 %indvars.iv.next271.i, %wide.trip.count303.i
  br i1 %exitcond274.not.i, label %._crit_edge.i, label %.lr.ph238.split.split.i, !llvm.loop !80

._crit_edge.i:                                    ; preds = %.loopexit205.i, %..loopexit203_crit_edge.us.i, %..loopexit201_crit_edge.us.i, %..loopexit_crit_edge.us.us.i, %.preheader206.i
  %.0134.lcssa.i = phi i64 [ 0, %.preheader206.i ], [ %.9143.us245.i, %..loopexit203_crit_edge.us.i ], [ %.9143.us.i, %..loopexit201_crit_edge.us.i ], [ %.9143.us.us.i, %..loopexit_crit_edge.us.us.i ], [ %.9143.i, %.loopexit205.i ] ; 2 uses
  %.not171.i = icmp eq i8 %.0150253.i, 0
  br i1 %.not171.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ef = add i32 %.0155251.i, 1
  %i.eg = zext i32 %.0155251.i to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.eg
  store i64 %.0134.lcssa.i, ptr %i.eh, align 8, !tbaa !71
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i
  %i.ei = add i32 %.0152252.i, 1
  %i.ej = zext i32 %.0152252.i to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ej
  store i64 %.0134.lcssa.i, ptr %i.ek, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %af_shaper_get_elem.exit.i, %bb.i, %bb.h
  %.2157.i = phi i32 [ %.0155251.i, %bb.h ], [ %.0155251.i, %bb.n ], [ %.0155251.i, %bb.i ], [ %.0155251.i, %af_shaper_get_elem.exit.i ], [ %i.ef, %bb.o ], [ %.0155251.i, %bb.p ] ; 7 uses
  %.2154.i = phi i32 [ %.0152252.i, %bb.h ], [ %.0152252.i, %bb.n ], [ %.0152252.i, %bb.i ], [ %.0152252.i, %af_shaper_get_elem.exit.i ], [ %.0152252.i, %bb.o ], [ %i.ei, %bb.p ] ; 7 uses
  %.1151.i = phi i8 [ 0, %bb.h ], [ %.0150253.i, %bb.n ], [ %.0150253.i, %bb.i ], [ %.0150253.i, %af_shaper_get_elem.exit.i ], [ 1, %bb.o ], [ 0, %bb.p ]
  %.2146.i = phi ptr [ %i.al, %bb.h ], [ %i.am, %bb.n ], [ %i.am, %bb.i ], [ %i.am, %af_shaper_get_elem.exit.i ], [ %i.am, %bb.o ], [ %i.am, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.el = load i8, ptr %.2146.i, align 1, !tbaa !60
  %.not167.i = icmp eq i8 %i.el, 0
  br i1 %.not167.i, label %._crit_edge257.i, label %bb.e

._crit_edge257.i:                                 ; preds = %bb.q
  %i.em = icmp eq i32 %.2154.i, 0                 ; 2 uses
  %i.en = icmp eq i32 %.2157.i, 0                 ; 3 uses
  %or.cond5.i = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond5.i, label %._crit_edge257.thread.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge257.i
  %i.eo = icmp ugt i32 %.2157.i, 1
  br i1 %i.eo, label %.lr.ph.preheader.i.preheader.i, label %af_sort_pos.exit.i

.lr.ph.preheader.i.preheader.i:                   ; preds = %bb.r
  %i.ep = zext i32 %.2157.i to i64
  %i.eq = add nsw i64 %i.ep, -1                   ; 3 uses
  %xtraiter54 = and i64 %i.eq, 1
  %i.er = icmp eq i32 %.2157.i, 2
  br i1 %i.er, label %.lr.ph.preheader.i.i.epil.preheader, label %.lr.ph.preheader.i.preheader.i.new

.lr.ph.preheader.i.preheader.i.new:               ; preds = %.lr.ph.preheader.i.preheader.i
  %unroll_iter = and i64 %i.eq, -2
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i.1, %.lr.ph.preheader.i.preheader.i.new
  %indvars.iv305.i = phi i64 [ 1, %.lr.ph.preheader.i.preheader.i.new ], [ %indvars.iv.next306.i.1, %._crit_edge.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.preheader.i.new ], [ %niter.next.1, %._crit_edge.i.i.1 ]
  %.phi.trans.insert27.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv305.i
  %.pre.i.i = load i64, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.preheader.i.i
  %indvars.iv307.i = phi i64 [ %i.es, %bb.s ], [ %indvars.iv305.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.es = add nsw i64 %indvars.iv307.i, -1        ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.es ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i = icmp slt i64 %.pre.i.i, %i.eu
  br i1 %.not21.i.i, label %bb.s, label %._crit_edge.i.i

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv307.i
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !71
  store i64 %.pre.i.i, ptr %i.et, align 8, !tbaa !71
  %.not.i.wide.i = icmp eq i64 %i.es, 0
  br i1 %.not.i.wide.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !85

._crit_edge.i.i:                                  ; preds = %bb.s, %.lr.ph.i.i
  %indvars.iv.next306.i = add nuw nsw i64 %indvars.iv305.i, 1 ; 2 uses
  %.phi.trans.insert27.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next306.i
  %.pre.i.i.1 = load i64, ptr %.phi.trans.insert27.i.i.1, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.t, %._crit_edge.i.i
  %indvars.iv307.i.1 = phi i64 [ %i.ew, %bb.t ], [ %indvars.iv.next306.i, %._crit_edge.i.i ] ; 2 uses
  %i.ew = add nsw i64 %indvars.iv307.i.1, -1      ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ew ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i.1 = icmp slt i64 %.pre.i.i.1, %i.ey
  br i1 %.not21.i.i.1, label %bb.t, label %._crit_edge.i.i.1

bb.t:                                             ; preds = %.lr.ph.i.i.1
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv307.i.1
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !71
  store i64 %.pre.i.i.1, ptr %i.ex, align 8, !tbaa !71
  %.not.i.wide.i.1 = icmp eq i64 %i.ew, 0
  br i1 %.not.i.wide.i.1, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1, !llvm.loop !85

._crit_edge.i.i.1:                                ; preds = %bb.t, %.lr.ph.i.i.1
  %indvars.iv.next306.i.1 = add nuw nsw i64 %indvars.iv305.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %af_sort_pos.exit.i.loopexit.unr-lcssa, label %.lr.ph.preheader.i.i, !llvm.loop !86

af_sort_pos.exit.i.loopexit.unr-lcssa:            ; preds = %._crit_edge.i.i.1
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %af_sort_pos.exit.i, label %.lr.ph.preheader.i.i.epil.preheader

.lr.ph.preheader.i.i.epil.preheader:              ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.preheader.i
  %indvars.iv305.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next306.i.1, %af_sort_pos.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.eq to i1
  call void @llvm.assume(i1 %lcmp.mod56)
  %.phi.trans.insert27.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv305.i.epil.init
  %.pre.i.i.epil = load i64, ptr %.phi.trans.insert27.i.i.epil, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %bb.u, %.lr.ph.preheader.i.i.epil.preheader
  %indvars.iv307.i.epil = phi i64 [ %i.fa, %bb.u ], [ %indvars.iv305.i.epil.init, %.lr.ph.preheader.i.i.epil.preheader ] ; 2 uses
  %i.fa = add nsw i64 %indvars.iv307.i.epil, -1   ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fa ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i.epil = icmp slt i64 %.pre.i.i.epil, %i.fc
  br i1 %.not21.i.i.epil, label %bb.u, label %af_sort_pos.exit.i

bb.u:                                             ; preds = %.lr.ph.i.i.epil
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv307.i.epil
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !71
  store i64 %.pre.i.i.epil, ptr %i.fb, align 8, !tbaa !71
  %.not.i.wide.i.epil = icmp eq i64 %i.fa, 0
  br i1 %.not.i.wide.i.epil, label %af_sort_pos.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !85

af_sort_pos.exit.i:                               ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %bb.u, %.lr.ph.i.i.epil, %bb.r
  %i.fe = icmp ugt i32 %.2154.i, 1
  br i1 %i.fe, label %.lr.ph.preheader.i183.preheader.i, label %af_sort_pos.exit194.i

.lr.ph.preheader.i183.preheader.i:                ; preds = %af_sort_pos.exit.i
  %i.ff = zext i32 %.2154.i to i64
  %i.fg = add nsw i64 %i.ff, -1                   ; 3 uses
  %xtraiter57 = and i64 %i.fg, 1
  %i.fh = icmp eq i32 %.2154.i, 2
  br i1 %i.fh, label %.lr.ph.preheader.i183.i.epil.preheader, label %.lr.ph.preheader.i183.preheader.i.new

.lr.ph.preheader.i183.preheader.i.new:            ; preds = %.lr.ph.preheader.i183.preheader.i
  %unroll_iter60 = and i64 %i.fg, -2
  br label %.lr.ph.preheader.i183.i

.lr.ph.preheader.i183.i:                          ; preds = %._crit_edge.i191.i.1, %.lr.ph.preheader.i183.preheader.i.new
  %indvars.iv311.i = phi i64 [ 1, %.lr.ph.preheader.i183.preheader.i.new ], [ %indvars.iv.next312.i.1, %._crit_edge.i191.i.1 ] ; 4 uses
  %niter61 = phi i64 [ 0, %.lr.ph.preheader.i183.preheader.i.new ], [ %niter61.next.1, %._crit_edge.i191.i.1 ]
  %.phi.trans.insert27.i186.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv311.i
  %.pre.i187.i = load i64, ptr %.phi.trans.insert27.i186.i, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i188.i

.lr.ph.i188.i:                                    ; preds = %bb.v, %.lr.ph.preheader.i183.i
  %indvars.iv313.i = phi i64 [ %i.fi, %bb.v ], [ %indvars.iv311.i, %.lr.ph.preheader.i183.i ] ; 2 uses
  %i.fi = add nsw i64 %indvars.iv313.i, -1        ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fi ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !71 ; 2 uses
  %.not21.i190.i = icmp slt i64 %.pre.i187.i, %i.fk
  br i1 %.not21.i190.i, label %bb.v, label %._crit_edge.i191.i

bb.v:                                             ; preds = %.lr.ph.i188.i
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv313.i
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !71
  store i64 %.pre.i187.i, ptr %i.fj, align 8, !tbaa !71
  %.not.i193.wide.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i193.wide.i, label %._crit_edge.i191.i, label %.lr.ph.i188.i, !llvm.loop !85

._crit_edge.i191.i:                               ; preds = %bb.v, %.lr.ph.i188.i
  %indvars.iv.next312.i = add nuw nsw i64 %indvars.iv311.i, 1 ; 2 uses
  %.phi.trans.insert27.i186.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next312.i
  %.pre.i187.i.1 = load i64, ptr %.phi.trans.insert27.i186.i.1, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i188.i.1

.lr.ph.i188.i.1:                                  ; preds = %bb.w, %._crit_edge.i191.i
  %indvars.iv313.i.1 = phi i64 [ %i.fm, %bb.w ], [ %indvars.iv.next312.i, %._crit_edge.i191.i ] ; 2 uses
  %i.fm = add nsw i64 %indvars.iv313.i.1, -1      ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fm ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !71 ; 2 uses
  %.not21.i190.i.1 = icmp slt i64 %.pre.i187.i.1, %i.fo
  br i1 %.not21.i190.i.1, label %bb.w, label %._crit_edge.i191.i.1

bb.w:                                             ; preds = %.lr.ph.i188.i.1
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv313.i.1
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !71
  store i64 %.pre.i187.i.1, ptr %i.fn, align 8, !tbaa !71
  %.not.i193.wide.i.1 = icmp eq i64 %i.fm, 0
  br i1 %.not.i193.wide.i.1, label %._crit_edge.i191.i.1, label %.lr.ph.i188.i.1, !llvm.loop !85

._crit_edge.i191.i.1:                             ; preds = %bb.w, %.lr.ph.i188.i.1
  %indvars.iv.next312.i.1 = add nuw nsw i64 %indvars.iv311.i, 2 ; 2 uses
  %niter61.next.1 = add nuw i64 %niter61, 2       ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %af_sort_pos.exit194.thread.i.unr-lcssa, label %.lr.ph.preheader.i183.i, !llvm.loop !86

af_sort_pos.exit194.thread.i.unr-lcssa:           ; preds = %._crit_edge.i191.i.1
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %af_sort_pos.exit194.thread.i, label %.lr.ph.preheader.i183.i.epil.preheader

.lr.ph.preheader.i183.i.epil.preheader:           ; preds = %af_sort_pos.exit194.thread.i.unr-lcssa, %.lr.ph.preheader.i183.preheader.i
  %indvars.iv311.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i183.preheader.i ], [ %indvars.iv.next312.i.1, %af_sort_pos.exit194.thread.i.unr-lcssa ] ; 2 uses
  %lcmp.mod59 = trunc i64 %i.fg to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %.phi.trans.insert27.i186.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv311.i.epil.init
  %.pre.i187.i.epil = load i64, ptr %.phi.trans.insert27.i186.i.epil, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i188.i.epil

.lr.ph.i188.i.epil:                               ; preds = %bb.x, %.lr.ph.preheader.i183.i.epil.preheader
  %indvars.iv313.i.epil = phi i64 [ %i.fq, %bb.x ], [ %indvars.iv311.i.epil.init, %.lr.ph.preheader.i183.i.epil.preheader ] ; 2 uses
  %i.fq = add nsw i64 %indvars.iv313.i.epil, -1   ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fq ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !71 ; 2 uses
  %.not21.i190.i.epil = icmp slt i64 %.pre.i187.i.epil, %i.fs
  br i1 %.not21.i190.i.epil, label %bb.x, label %af_sort_pos.exit194.thread.i

bb.x:                                             ; preds = %.lr.ph.i188.i.epil
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv313.i.epil
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !71
  store i64 %.pre.i187.i.epil, ptr %i.fr, align 8, !tbaa !71
  %.not.i193.wide.i.epil = icmp eq i64 %i.fq, 0
  br i1 %.not.i193.wide.i.epil, label %af_sort_pos.exit194.thread.i, label %.lr.ph.i188.i.epil, !llvm.loop !85

af_sort_pos.exit194.thread.i:                     ; preds = %.lr.ph.i188.i.epil, %bb.x, %af_sort_pos.exit194.thread.i.unr-lcssa
  %i.fu = getelementptr inbounds nuw i8, ptr %.0149.i, i64 432
  %i.fv = getelementptr inbounds nuw i8, ptr %.0149.i, i64 428 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !87 ; 2 uses
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [56 x i8], ptr %i.fu, i64 %i.fx ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  %i.ga = add i32 %i.fw, 1
  store i32 %i.ga, ptr %i.fv, align 4, !tbaa !87
  br i1 %i.en, label %bb.aa, label %bb.ab

af_sort_pos.exit194.i:                            ; preds = %af_sort_pos.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.0149.i, i64 432
  %i.gc = getelementptr inbounds nuw i8, ptr %.0149.i, i64 428 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !87 ; 2 uses
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [56 x i8], ptr %i.gb, i64 %i.ge ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 3 uses
  %i.gh = add i32 %i.gd, 1
  store i32 %i.gh, ptr %i.gc, align 4, !tbaa !87
  br i1 %i.em, label %bb.y, label %bb.z

bb.y:                                             ; preds = %af_sort_pos.exit194.i
  %i.gi = lshr i32 %.2157.i, 1
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !71 ; 2 uses
  store i64 %i.gl, ptr %i.gg, align 8, !tbaa !71
  store i64 %i.gl, ptr %i.gf, align 8, !tbaa !71
  br label %.thread370.i

bb.z:                                             ; preds = %af_sort_pos.exit194.i
  br i1 %i.en, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %af_sort_pos.exit194.thread.i
  %i.gm = phi ptr [ %i.fy, %af_sort_pos.exit194.thread.i ], [ %i.gf, %bb.z ] ; 2 uses
  %i.gn = phi ptr [ %i.fz, %af_sort_pos.exit194.thread.i ], [ %i.gg, %bb.z ]
  %i.go = lshr i32 %.2154.i, 1
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !71 ; 2 uses
  store i64 %i.gr, ptr %i.gn, align 8, !tbaa !71
  store i64 %i.gr, ptr %i.gm, align 8, !tbaa !71
  br label %.thread370.i

bb.ab:                                            ; preds = %bb.z, %af_sort_pos.exit194.thread.i
  %i.gs = phi ptr [ %i.fy, %af_sort_pos.exit194.thread.i ], [ %i.gf, %bb.z ] ; 4 uses
  %i.gt = phi ptr [ %i.fz, %af_sort_pos.exit194.thread.i ], [ %i.gg, %bb.z ] ; 2 uses
  %i.gu = lshr i32 %.2157.i, 1
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !71 ; 4 uses
  store i64 %i.gx, ptr %i.gs, align 8, !tbaa !71
  %i.gy = lshr i32 %.2154.i, 1
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !71 ; 4 uses
  store i64 %i.hb, ptr %i.gt, align 8, !tbaa !71
  %.not168.i = icmp eq i64 %i.hb, %i.gx
  %i.hc = trunc i16 %.fr.i to i1
  %i.hd = icmp sge i64 %i.hb, %i.gx
  %.not169.i = xor i1 %i.hd, %i.hc
  %or.cond198.i = or i1 %.not168.i, %.not169.i
  br i1 %or.cond198.i, label %.thread370.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.he = add nsw i64 %i.hb, %i.gx
  %i.hf = sdiv i64 %i.he, 2                       ; 2 uses
  store i64 %i.hf, ptr %i.gt, align 8, !tbaa !71
  store i64 %i.hf, ptr %i.gs, align 8, !tbaa !71
  br label %.thread370.i

.thread370.i:                                     ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y
  %i.hg = phi ptr [ %i.gs, %bb.ab ], [ %i.gs, %bb.ac ], [ %i.gf, %bb.y ], [ %i.gm, %bb.aa ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hi = shl i16 %.fr.i, 1
  %i.hj = and i16 %i.hi, 2
  %spec.store.select.i = zext nneg i16 %i.hj to i32
  store i32 %spec.store.select.i, ptr %i.hh, align 8
  br label %._crit_edge257.thread.i

._crit_edge257.thread.i:                          ; preds = %.thread370.i, %._crit_edge257.i, %bb.d
  %i.hk = getelementptr inbounds nuw i8, ptr %.0148261.i, i64 8 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !57 ; 2 uses
  %.not165.i = icmp eq i32 %i.hl, 5531
  br i1 %.not165.i, label %._crit_edge263.i, label %bb.d, !llvm.loop !89

._crit_edge263.i:                                 ; preds = %._crit_edge257.thread.i, %af_shaper_buf_create.exit.i
  %i.hm = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.hn = getelementptr i8, ptr %i.hm, i64 816
  %.val.i195.i = load ptr, ptr %i.hn, align 8, !tbaa !41
  %i.ho = getelementptr i8, ptr %.val.i195.i, i64 72
  %.val.val.i196.i = load ptr, ptr %i.ho, align 8, !tbaa !48 ; 2 uses
  %.not6.i.i = icmp eq ptr %.val.val.i196.i, null
  br i1 %.not6.i.i, label %af_cjk_metrics_init_blues.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge263.i
  %i.hp = getelementptr i8, ptr %.val.val.i196.i, i64 40
  %.val5.val.val.i.i = load ptr, ptr %i.hp, align 8, !tbaa !90
  call void %.val5.val.val.i.i(ptr noundef %.0147.i) #18, !inline_history !91
  br label %af_cjk_metrics_init_blues.exit

af_cjk_metrics_init_blues.exit:                   ; preds = %._crit_edge263.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call fastcc void @af_cjk_metrics_check_digits(ptr noundef nonnull %0)
  br label %bb.ae

bb.ae:                                            ; preds = %af_cjk_metrics_init_blues.exit, %bb.a
  store ptr %i.g, ptr %i.f, align 8, !tbaa !8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @af_cjk_metrics_scale(ptr nofree noundef captures(none) initializes((8, 56)) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !92
  tail call fastcc void @af_cjk_metrics_scale_dim(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  tail call fastcc void @af_cjk_metrics_scale_dim(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @af_cjk_get_standard_widths(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94
  store i64 %i.b, ptr %1, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94
  store i64 %i.d, ptr %2, align 8, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @af_cjk_hints_init(ptr nofree noundef writeonly captures(none) initializes((8, 40), (5160, 5176)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5168
  store ptr %1, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5160
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !71
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !71
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !103  ; 4 uses
  %i.m = icmp eq i32 %i.l, 2                      ; 2 uses
  %i.n = and i32 %i.l, -2
end_hunk_0
begin_hunk_1_@af_latin_metrics_init:bb.a
  %i.nh = icmp sgt i32 %.3472.i, %.1555.i
  %i.ni = add nsw i32 %.3472.i, -1
  %spec.select691.i = select i1 %i.nh, i32 %i.ni, i32 %.1553.i
  br label %.thread738.i

bb.bi:                                            ; preds = %bb.bg, %.preheader786.i
  %i.nj = getelementptr inbounds i8, ptr %.sroa.6.0.copyload.i, i64 %i.mz
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !60
  %i.nl = and i8 %i.nk, 3
  %i.nm = icmp eq i8 %i.nl, 1
  %i.nn = icmp slt i32 %.4462.i, 0
  %or.cond685.i = select i1 %i.nm, i1 %i.nn, i1 false
  %.5463.i = select i1 %or.cond685.i, i32 %.3472.i, i32 %.4462.i ; 2 uses
  %.not665.i = icmp eq i32 %.3472.i, %.1507.i
  br i1 %.not665.i, label %.thread738.i, label %.preheader786.i, !llvm.loop !189

bb.bj:                                            ; preds = %._crit_edge956.i, %bb.bf, %bb.be
  %.2468.i = phi i8 [ 0, %bb.bf ], [ 0, %bb.be ], [ 1, %._crit_edge956.i ]
  %.7465.i = phi i32 [ %.2460.i, %bb.bf ], [ %.2460.i, %bb.be ], [ %.3461.i, %._crit_edge956.i ]
  %.7.i = phi i32 [ %.2.i31, %bb.bf ], [ %.2.i31, %bb.be ], [ %.3.i, %._crit_edge956.i ]
  %.not666.i = icmp eq i32 %.1470.i, %.1507.i
  br i1 %.not666.i, label %.thread738.i, label %bb.bc, !llvm.loop !190

.thread738.i:                                     ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.ba, %bb.az, %bb.ay
  %.12539.i = phi i64 [ %.6533.i, %bb.ba ], [ %.6533.i, %bb.ay ], [ %.6533.i, %bb.az ], [ %i.mc, %bb.bi ], [ %i.mc, %bb.bh ], [ %.6533.i, %bb.bj ]
  %.7513.i = phi i32 [ %.1507.i, %bb.ba ], [ %.1507.i, %bb.ay ], [ %.1507.i, %bb.az ], [ %.1476.i, %bb.bi ], [ %.1476.i, %bb.bh ], [ %.1507.i, %bb.bj ]
  %.7505.i = phi i32 [ %.1499.i, %bb.ba ], [ %.1499.i, %bb.ay ], [ %.1499.i, %bb.az ], [ %.1507.i, %bb.bi ], [ %spec.select691.i, %bb.bh ], [ %.1499.i, %bb.bj ]
  %.12497.i = phi i32 [ %.6491.i, %bb.ba ], [ %.6491.i, %bb.ay ], [ %.6491.i, %bb.az ], [ %.5463.i, %bb.bi ], [ %.4462.i, %bb.bh ], [ %.6491.i, %bb.bj ] ; 2 uses
  %.12.i = phi i32 [ %.6483.i, %bb.ba ], [ %.6483.i, %bb.ay ], [ %.6483.i, %bb.az ], [ %.1507.i, %bb.bi ], [ %.4.i, %bb.bh ], [ %.6483.i, %bb.bj ] ; 2 uses
  %i.no = add nsw i64 %.12539.i, %.2724.i         ; 3 uses
  %i.np = icmp sgt i32 %.12497.i, -1
  %i.nq = icmp sgt i32 %.12.i, -1
  %or.cond7.i = select i1 %i.np, i1 %i.nq, i1 false
  br i1 %or.cond7.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread738.i
  %i.nr = zext nneg i32 %.12.i to i64
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5399.0.copyload.i, i64 %i.nr
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !82
  %i.nu = zext nneg i32 %.12497.i to i64
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5399.0.copyload.i, i64 %i.nu
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !82
  %i.nx = sub nsw i64 %i.nt, %i.nw
  %i.ny = call i64 @llvm.abs.i64(i64 %i.nx, i1 true)
  %i.nz = icmp samesign ugt i64 %i.ny, %i.gk
  br i1 %i.nz, label %.thread776.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread738.i
  %i.oa = sext i32 %.7513.i to i64
  %i.ob = getelementptr inbounds i8, ptr %.sroa.6.0.copyload.i, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !60
  %i.od = and i8 %i.oc, 3
  %.not668.i = icmp eq i8 %i.od, 1
  br i1 %.not668.i, label %bb.bm, label %.thread771.i

bb.bm:                                            ; preds = %bb.bl
  %i.oe = sext i32 %.7505.i to i64
  %i.of = getelementptr inbounds i8, ptr %.sroa.6.0.copyload.i, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !60
  %i.oh = and i8 %i.og, 3
  %.not.i30 = icmp eq i8 %i.oh, 1                 ; 2 uses
  %brmerge.i = select i1 %.not.i30, i1 true, i1 %.not670.i
  %not..not.i = xor i1 %.not.i30, true
  %.mux.i = zext i1 %not..not.i to i8
  br i1 %brmerge.i, label %.thread776.i, label %.thread759.i

.thread771.i:                                     ; preds = %bb.bl
  br i1 %.not670.i, label %.thread776.i, label %.thread759.i

.thread776.i:                                     ; preds = %.thread771.i, %bb.bm, %bb.bk, %._crit_edge832.i, %.preheader789.i
  %.2565.lcssa996.i = phi i64 [ %.8571.i, %._crit_edge832.i ], [ %.8571.i, %bb.bm ], [ %.8571.i, %bb.bk ], [ %.8571.i, %.thread771.i ], [ %.1564841.i, %.preheader789.i ] ; 2 uses
  %.2576.lcssa995.i = phi i64 [ %.8582.i, %._crit_edge832.i ], [ %.8582.i, %bb.bm ], [ %.8582.i, %bb.bk ], [ %.8582.i, %.thread771.i ], [ %.1575840.i, %.preheader789.i ] ; 2 uses
  %.14.i = phi i64 [ %.6533.i, %._crit_edge832.i ], [ %i.no, %bb.bm ], [ %i.no, %bb.bk ], [ %i.no, %.thread771.i ], [ 0, %.preheader789.i ] ; 4 uses
  %.2526.i = phi i8 [ 0, %._crit_edge832.i ], [ %.mux.i, %bb.bm ], [ 0, %bb.bk ], [ 1, %.thread771.i ], [ 0, %.preheader789.i ] ; 2 uses
  br i1 %.not651.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.thread776.i
  %i.oi = icmp sgt i64 %.14.i, %.1549842.i
  %spec.select687.i = call i64 @llvm.smax.i64(i64 %.14.i, i64 %.1549842.i)
  %spec.select688.i = select i1 %i.oi, i8 %.2526.i, i8 %.0545843.i
  br label %.thread759.i

bb.bo:                                            ; preds = %.thread776.i
  %i.oj = icmp slt i64 %.14.i, %.1549842.i
  %spec.select689.i = call i64 @llvm.smin.i64(i64 %.14.i, i64 %.1549842.i)
  %spec.select690.i = select i1 %i.oj, i8 %.2526.i, i8 %.0545843.i
  br label %.thread759.i

.thread759.i:                                     ; preds = %bb.bo, %bb.bn, %.thread771.i, %bb.bm, %bb.bb, %bb.aj, %af_shaper_get_elem.exit.i24
  %.9583.i = phi i64 [ %.2576.lcssa995.i, %bb.bn ], [ %.1575840.i, %af_shaper_get_elem.exit.i24 ], [ %.1575840.i, %bb.aj ], [ %.2576.lcssa995.i, %bb.bo ], [ %.8582.i, %.thread771.i ], [ %.8582.i, %bb.bb ], [ %.8582.i, %bb.bm ] ; 3 uses
  %.9572.i = phi i64 [ %.2565.lcssa996.i, %bb.bn ], [ %.1564841.i, %af_shaper_get_elem.exit.i24 ], [ %.1564841.i, %bb.aj ], [ %.2565.lcssa996.i, %bb.bo ], [ %.8571.i, %.thread771.i ], [ %.8571.i, %bb.bb ], [ %.8571.i, %bb.bm ] ; 3 uses
  %.3551.i = phi i64 [ %spec.select687.i, %bb.bn ], [ %.1549842.i, %af_shaper_get_elem.exit.i24 ], [ %.1549842.i, %bb.aj ], [ %spec.select689.i, %bb.bo ], [ %.1549842.i, %.thread771.i ], [ %.1549842.i, %bb.bb ], [ %.1549842.i, %bb.bm ] ; 3 uses
  %.2547.i = phi i8 [ %spec.select688.i, %bb.bn ], [ %.0545843.i, %af_shaper_get_elem.exit.i24 ], [ %.0545843.i, %bb.aj ], [ %spec.select690.i, %bb.bo ], [ %.0545843.i, %.thread771.i ], [ %.0545843.i, %bb.bb ], [ %.0545843.i, %bb.bm ] ; 2 uses
  %indvars.iv.next908.i = add nuw nsw i64 %indvars.iv907.i, 1 ; 2 uses
  %exitcond910.not.i = icmp eq i64 %indvars.iv.next908.i, %wide.trip.count909.i
  br i1 %exitcond910.not.i, label %._crit_edge848.i, label %bb.af, !llvm.loop !191

._crit_edge848.i:                                 ; preds = %.thread759.i
  %i.ok = add i64 %.3551.i, -9223372036854775807
  %or.cond9.i = icmp ult i64 %i.ok, 2
  br i1 %or.cond9.i, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge848.i
  %.not652.i = icmp eq i8 %.2547.i, 0
  br i1 %.not652.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ol = add i32 %.0589855.i, 1
  br label %.sink.split.i

bb.br:                                            ; preds = %bb.bp
  %i.om = add i32 %.0592854.i, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.br, %bb.bq
  %.0592854.sink.i = phi i32 [ %.0592854.i, %bb.br ], [ %.0589855.i, %bb.bq ]
  %.sink1072.i = phi ptr [ %i.n, %bb.br ], [ %i.o, %bb.bq ]
  %.2594.ph.i = phi i32 [ %i.om, %bb.br ], [ %.0592854.i, %bb.bq ]
  %.2591.ph.i = phi i32 [ %.0589855.i, %bb.br ], [ %i.ol, %bb.bq ]
  %i.on = zext i32 %.0592854.sink.i to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %.sink1072.i, i64 %i.on
  store i64 %.3551.i, ptr %i.oo, align 8, !tbaa !71
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split.i, %._crit_edge848.i, %._crit_edge.i20
  %.2594.i = phi i32 [ %.0592854.i, %._crit_edge.i20 ], [ %.0592854.i, %._crit_edge848.i ], [ %.2594.ph.i, %.sink.split.i ] ; 7 uses
  %.2591.i = phi i32 [ %.0589855.i, %._crit_edge.i20 ], [ %.0589855.i, %._crit_edge848.i ], [ %.2591.ph.i, %.sink.split.i ] ; 7 uses
  %.10584.i = phi i64 [ %.0574857.i, %._crit_edge.i20 ], [ %.9583.i, %._crit_edge848.i ], [ %.9583.i, %.sink.split.i ] ; 2 uses
  %.10573.i = phi i64 [ %.0563858.i, %._crit_edge.i20 ], [ %.9572.i, %._crit_edge848.i ], [ %.9572.i, %.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  %i.op = load i8, ptr %i.hd, align 1, !tbaa !60  ; 2 uses
  %.not640.i = icmp eq i8 %i.op, 0
  br i1 %.not640.i, label %._crit_edge861.i, label %bb.ae

._crit_edge861.i:                                 ; preds = %bb.bs
  %i.oq = icmp eq i32 %.2594.i, 0                 ; 2 uses
  %i.or = icmp eq i32 %.2591.i, 0                 ; 3 uses
  %or.cond11.i = select i1 %i.oq, i1 %i.or, i1 false
  br i1 %or.cond11.i, label %._crit_edge861.thread.i, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge861.i
  %i.os = icmp ugt i32 %.2591.i, 1
  br i1 %i.os, label %.lr.ph.preheader.i.preheader.i, label %af_sort_pos.exit.i

.lr.ph.preheader.i.preheader.i:                   ; preds = %bb.bt
  %i.ot = zext i32 %.2591.i to i64
  %i.ou = add nsw i64 %i.ot, -1                   ; 3 uses
  %xtraiter = and i64 %i.ou, 1
  %i.ov = icmp eq i32 %.2591.i, 2
  br i1 %i.ov, label %.lr.ph.preheader.i.i.epil.preheader, label %.lr.ph.preheader.i.preheader.i.new

.lr.ph.preheader.i.preheader.i.new:               ; preds = %.lr.ph.preheader.i.preheader.i
  %unroll_iter = and i64 %i.ou, -2
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i.1, %.lr.ph.preheader.i.preheader.i.new
  %indvars.iv911.i = phi i64 [ 1, %.lr.ph.preheader.i.preheader.i.new ], [ %indvars.iv.next912.i.1, %._crit_edge.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.preheader.i.new ], [ %niter.next.1, %._crit_edge.i.i.1 ]
  %.phi.trans.insert27.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv911.i
  %.pre.i696.i = load i64, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bu, %.lr.ph.preheader.i.i
  %indvars.iv913.i = phi i64 [ %i.ow, %bb.bu ], [ %indvars.iv911.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ow = add nsw i64 %indvars.iv913.i, -1        ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ow ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i = icmp slt i64 %.pre.i696.i, %i.oy
  br i1 %.not21.i.i, label %bb.bu, label %._crit_edge.i.i

bb.bu:                                            ; preds = %.lr.ph.i.i
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv913.i
  store i64 %i.oy, ptr %i.oz, align 8, !tbaa !71
  store i64 %.pre.i696.i, ptr %i.ox, align 8, !tbaa !71
  %.not.i.wide.i = icmp eq i64 %i.ow, 0
  br i1 %.not.i.wide.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !85

._crit_edge.i.i:                                  ; preds = %bb.bu, %.lr.ph.i.i
  %indvars.iv.next912.i = add nuw nsw i64 %indvars.iv911.i, 1 ; 2 uses
  %.phi.trans.insert27.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next912.i
  %.pre.i696.i.1 = load i64, ptr %.phi.trans.insert27.i.i.1, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.bv, %._crit_edge.i.i
  %indvars.iv913.i.1 = phi i64 [ %i.pa, %bb.bv ], [ %indvars.iv.next912.i, %._crit_edge.i.i ] ; 2 uses
  %i.pa = add nsw i64 %indvars.iv913.i.1, -1      ; 3 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.pa ; 2 uses
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i.1 = icmp slt i64 %.pre.i696.i.1, %i.pc
  br i1 %.not21.i.i.1, label %bb.bv, label %._crit_edge.i.i.1

bb.bv:                                            ; preds = %.lr.ph.i.i.1
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv913.i.1
  store i64 %i.pc, ptr %i.pd, align 8, !tbaa !71
  store i64 %.pre.i696.i.1, ptr %i.pb, align 8, !tbaa !71
  %.not.i.wide.i.1 = icmp eq i64 %i.pa, 0
  br i1 %.not.i.wide.i.1, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1, !llvm.loop !85

._crit_edge.i.i.1:                                ; preds = %bb.bv, %.lr.ph.i.i.1
  %indvars.iv.next912.i.1 = add nuw nsw i64 %indvars.iv911.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %af_sort_pos.exit.i.loopexit.unr-lcssa, label %.lr.ph.preheader.i.i, !llvm.loop !86

af_sort_pos.exit.i.loopexit.unr-lcssa:            ; preds = %._crit_edge.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %af_sort_pos.exit.i, label %.lr.ph.preheader.i.i.epil.preheader

.lr.ph.preheader.i.i.epil.preheader:              ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.preheader.i
  %indvars.iv911.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next912.i.1, %af_sort_pos.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod295 = trunc i64 %i.ou to i1
  call void @llvm.assume(i1 %lcmp.mod295)
  %.phi.trans.insert27.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv911.i.epil.init
  %.pre.i696.i.epil = load i64, ptr %.phi.trans.insert27.i.i.epil, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %bb.bw, %.lr.ph.preheader.i.i.epil.preheader
  %indvars.iv913.i.epil = phi i64 [ %i.pe, %bb.bw ], [ %indvars.iv911.i.epil.init, %.lr.ph.preheader.i.i.epil.preheader ] ; 2 uses
  %i.pe = add nsw i64 %indvars.iv913.i.epil, -1   ; 3 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.pe ; 2 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i.epil = icmp slt i64 %.pre.i696.i.epil, %i.pg
  br i1 %.not21.i.i.epil, label %bb.bw, label %af_sort_pos.exit.i

bb.bw:                                            ; preds = %.lr.ph.i.i.epil
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv913.i.epil
  store i64 %i.pg, ptr %i.ph, align 8, !tbaa !71
  store i64 %.pre.i696.i.epil, ptr %i.pf, align 8, !tbaa !71
  %.not.i.wide.i.epil = icmp eq i64 %i.pe, 0
  br i1 %.not.i.wide.i.epil, label %af_sort_pos.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !85

af_sort_pos.exit.i:                               ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %bb.bw, %.lr.ph.i.i.epil, %bb.bt
  %i.pi = icmp ugt i32 %.2594.i, 1
  br i1 %i.pi, label %.lr.ph.preheader.i697.preheader.i, label %af_sort_pos.exit708.i

.lr.ph.preheader.i697.preheader.i:                ; preds = %af_sort_pos.exit.i
  %i.pj = zext i32 %.2594.i to i64
  %i.pk = add nsw i64 %i.pj, -1                   ; 3 uses
  %xtraiter296 = and i64 %i.pk, 1
  %i.pl = icmp eq i32 %.2594.i, 2
  br i1 %i.pl, label %.lr.ph.preheader.i697.i.epil.preheader, label %.lr.ph.preheader.i697.preheader.i.new

.lr.ph.preheader.i697.preheader.i.new:            ; preds = %.lr.ph.preheader.i697.preheader.i
  %unroll_iter299 = and i64 %i.pk, -2
  br label %.lr.ph.preheader.i697.i

.lr.ph.preheader.i697.i:                          ; preds = %._crit_edge.i705.i.1, %.lr.ph.preheader.i697.preheader.i.new
  %indvars.iv917.i = phi i64 [ 1, %.lr.ph.preheader.i697.preheader.i.new ], [ %indvars.iv.next918.i.1, %._crit_edge.i705.i.1 ] ; 4 uses
  %niter300 = phi i64 [ 0, %.lr.ph.preheader.i697.preheader.i.new ], [ %niter300.next.1, %._crit_edge.i705.i.1 ]
  %.phi.trans.insert27.i700.i = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv917.i
  %.pre.i701.i = load i64, ptr %.phi.trans.insert27.i700.i, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i702.i

.lr.ph.i702.i:                                    ; preds = %bb.bx, %.lr.ph.preheader.i697.i
  %indvars.iv919.i = phi i64 [ %i.pm, %bb.bx ], [ %indvars.iv917.i, %.lr.ph.preheader.i697.i ] ; 2 uses
  %i.pm = add nsw i64 %indvars.iv919.i, -1        ; 3 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pm ; 2 uses
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !71 ; 2 uses
  %.not21.i704.i = icmp slt i64 %.pre.i701.i, %i.po
  br i1 %.not21.i704.i, label %bb.bx, label %._crit_edge.i705.i

bb.bx:                                            ; preds = %.lr.ph.i702.i
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv919.i
  store i64 %i.po, ptr %i.pp, align 8, !tbaa !71
  store i64 %.pre.i701.i, ptr %i.pn, align 8, !tbaa !71
  %.not.i707.wide.i = icmp eq i64 %i.pm, 0
  br i1 %.not.i707.wide.i, label %._crit_edge.i705.i, label %.lr.ph.i702.i, !llvm.loop !85

._crit_edge.i705.i:                               ; preds = %bb.bx, %.lr.ph.i702.i
  %indvars.iv.next918.i = add nuw nsw i64 %indvars.iv917.i, 1 ; 2 uses
  %.phi.trans.insert27.i700.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next918.i
  %.pre.i701.i.1 = load i64, ptr %.phi.trans.insert27.i700.i.1, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i702.i.1

.lr.ph.i702.i.1:                                  ; preds = %bb.by, %._crit_edge.i705.i
  %indvars.iv919.i.1 = phi i64 [ %i.pq, %bb.by ], [ %indvars.iv.next918.i, %._crit_edge.i705.i ] ; 2 uses
  %i.pq = add nsw i64 %indvars.iv919.i.1, -1      ; 3 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pq ; 2 uses
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !71 ; 2 uses
  %.not21.i704.i.1 = icmp slt i64 %.pre.i701.i.1, %i.ps
  br i1 %.not21.i704.i.1, label %bb.by, label %._crit_edge.i705.i.1

bb.by:                                            ; preds = %.lr.ph.i702.i.1
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv919.i.1
  store i64 %i.ps, ptr %i.pt, align 8, !tbaa !71
  store i64 %.pre.i701.i.1, ptr %i.pr, align 8, !tbaa !71
  %.not.i707.wide.i.1 = icmp eq i64 %i.pq, 0
  br i1 %.not.i707.wide.i.1, label %._crit_edge.i705.i.1, label %.lr.ph.i702.i.1, !llvm.loop !85

._crit_edge.i705.i.1:                             ; preds = %bb.by, %.lr.ph.i702.i.1
  %indvars.iv.next918.i.1 = add nuw nsw i64 %indvars.iv917.i, 2 ; 2 uses
  %niter300.next.1 = add nuw i64 %niter300, 2     ; 2 uses
  %niter300.ncmp.1 = icmp eq i64 %niter300.next.1, %unroll_iter299
  br i1 %niter300.ncmp.1, label %af_sort_pos.exit708.thread.i.unr-lcssa, label %.lr.ph.preheader.i697.i, !llvm.loop !86

af_sort_pos.exit708.thread.i.unr-lcssa:           ; preds = %._crit_edge.i705.i.1
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %af_sort_pos.exit708.thread.i, label %.lr.ph.preheader.i697.i.epil.preheader

.lr.ph.preheader.i697.i.epil.preheader:           ; preds = %af_sort_pos.exit708.thread.i.unr-lcssa, %.lr.ph.preheader.i697.preheader.i
  %indvars.iv917.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i697.preheader.i ], [ %indvars.iv.next918.i.1, %af_sort_pos.exit708.thread.i.unr-lcssa ] ; 2 uses
  %lcmp.mod298 = trunc i64 %i.pk to i1
  call void @llvm.assume(i1 %lcmp.mod298)
  %.phi.trans.insert27.i700.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv917.i.epil.init
  %.pre.i701.i.epil = load i64, ptr %.phi.trans.insert27.i700.i.epil, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i702.i.epil

.lr.ph.i702.i.epil:                               ; preds = %bb.bz, %.lr.ph.preheader.i697.i.epil.preheader
  %indvars.iv919.i.epil = phi i64 [ %i.pu, %bb.bz ], [ %indvars.iv917.i.epil.init, %.lr.ph.preheader.i697.i.epil.preheader ] ; 2 uses
  %i.pu = add nsw i64 %indvars.iv919.i.epil, -1   ; 3 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pu ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !71 ; 2 uses
  %.not21.i704.i.epil = icmp slt i64 %.pre.i701.i.epil, %i.pw
  br i1 %.not21.i704.i.epil, label %bb.bz, label %af_sort_pos.exit708.thread.i

bb.bz:                                            ; preds = %.lr.ph.i702.i.epil
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv919.i.epil
  store i64 %i.pw, ptr %i.px, align 8, !tbaa !71
  store i64 %.pre.i701.i.epil, ptr %i.pv, align 8, !tbaa !71
  %.not.i707.wide.i.epil = icmp eq i64 %i.pu, 0
  br i1 %.not.i707.wide.i.epil, label %af_sort_pos.exit708.thread.i, label %.lr.ph.i702.i.epil, !llvm.loop !85

af_sort_pos.exit708.thread.i:                     ; preds = %.lr.ph.i702.i.epil, %bb.bz, %af_sort_pos.exit708.thread.i.unr-lcssa
  %i.py = load i32, ptr %i.gt, align 4, !tbaa !192 ; 2 uses
  %i.pz = zext i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [72 x i8], ptr %i.gs, i64 %i.pz ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 24 ; 2 uses
  %i.qc = add i32 %i.py, 1
  store i32 %i.qc, ptr %i.gt, align 4, !tbaa !192
  br i1 %i.or, label %bb.cc, label %bb.cd

af_sort_pos.exit708.i:                            ; preds = %af_sort_pos.exit.i
  %i.qd = load i32, ptr %i.gt, align 4, !tbaa !192 ; 2 uses
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [72 x i8], ptr %i.gs, i64 %i.qe ; 5 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 24 ; 3 uses
  %i.qh = add i32 %i.qd, 1
  store i32 %i.qh, ptr %i.gt, align 4, !tbaa !192
  br i1 %i.oq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %af_sort_pos.exit708.i
  %i.qi = lshr i32 %.2591.i, 1
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.qj
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !71 ; 2 uses
  store i64 %i.ql, ptr %i.qg, align 8, !tbaa !71
  store i64 %i.ql, ptr %i.qf, align 8, !tbaa !71
  br label %._crit_edge950.i

bb.cb:                                            ; preds = %af_sort_pos.exit708.i
  br i1 %i.or, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb, %af_sort_pos.exit708.thread.i
  %i.qm = phi ptr [ %i.qa, %af_sort_pos.exit708.thread.i ], [ %i.qf, %bb.cb ] ; 2 uses
  %i.qn = phi ptr [ %i.qb, %af_sort_pos.exit708.thread.i ], [ %i.qg, %bb.cb ]
  %i.qo = lshr i32 %.2594.i, 1
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.qp
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !71 ; 2 uses
  store i64 %i.qr, ptr %i.qn, align 8, !tbaa !71
  store i64 %i.qr, ptr %i.qm, align 8, !tbaa !71
  br label %._crit_edge950.i

bb.cd:                                            ; preds = %bb.cb, %af_sort_pos.exit708.thread.i
  %i.qs = phi ptr [ %i.qa, %af_sort_pos.exit708.thread.i ], [ %i.qf, %bb.cb ] ; 5 uses
  %i.qt = phi ptr [ %i.qb, %af_sort_pos.exit708.thread.i ], [ %i.qg, %bb.cb ] ; 2 uses
  %i.qu = lshr i32 %.2594.i, 1
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.qv
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !71 ; 4 uses
  store i64 %i.qx, ptr %i.qs, align 8, !tbaa !71
  %i.qy = lshr i32 %.2591.i, 1
  %i.qz = zext nneg i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.qz
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !71 ; 4 uses
  store i64 %i.rb, ptr %i.qt, align 8, !tbaa !71
  %.not641.i = icmp eq i64 %i.rb, %i.qx
  br i1 %.not641.i, label %._crit_edge950.i, label %bb.ce

._crit_edge950.i:                                 ; preds = %bb.cd, %bb.cc, %bb.ca
  %i.rc = phi ptr [ %i.qs, %bb.cd ], [ %i.qf, %bb.ca ], [ %i.qm, %bb.cc ]
  %.pre952.i = load i16, ptr %i.gy, align 4, !tbaa !59
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.rd = load i16, ptr %i.gy, align 4, !tbaa !59 ; 3 uses
  %i.re = and i16 %i.rd, 3
  %i.rf = icmp ne i16 %i.re, 0
  %i.rg = icmp sle i64 %i.rb, %i.qx
  %.not643.i = xor i1 %i.rg, %i.rf
  br i1 %.not643.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.rh = add nsw i64 %i.rb, %i.qx
  %i.ri = sdiv i64 %i.rh, 2                       ; 2 uses
  store i64 %i.ri, ptr %i.qt, align 8, !tbaa !71
  store i64 %i.ri, ptr %i.qs, align 8, !tbaa !71
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %._crit_edge950.i
  %i.rj = phi ptr [ %i.rc, %._crit_edge950.i ], [ %i.qs, %bb.ce ], [ %i.qs, %bb.cf ] ; 3 uses
  %i.rk = phi i16 [ %.pre952.i, %._crit_edge950.i ], [ %i.rd, %bb.ce ], [ %i.rd, %bb.cf ] ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 48
  store i64 %.10584.i, ptr %i.rl, align 8, !tbaa !193
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 56
  store i64 %.10573.i, ptr %i.rm, align 8, !tbaa !195
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 64 ; 2 uses
  %i.ro = shl i16 %i.rk, 1
  %spec.select10741076.i = and i16 %i.ro, 14
  %i.rp = and i16 %i.rk, 96
  %i.rq = or disjoint i16 %spec.select10741076.i, %i.rp
  %i.rr = zext nneg i16 %i.rq to i32              ; 2 uses
  store i32 %i.rr, ptr %i.rn, align 8
  %i.rs = and i16 %i.rk, 8
  %.not649.i = icmp eq i16 %i.rs, 0
  br i1 %.not649.i, label %._crit_edge861.thread.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rt = or disjoint i32 %i.rr, 16
  store i32 %i.rt, ptr %i.rn, align 8, !tbaa !196
  br label %._crit_edge861.thread.i

._crit_edge861.thread.i:                          ; preds = %bb.ch, %bb.cg, %._crit_edge861.i, %bb.ad
  %i.ru = getelementptr inbounds nuw i8, ptr %.0588867.i, i64 8 ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !57 ; 2 uses
  %.not636.i = icmp eq i32 %i.rv, 5531
  br i1 %.not636.i, label %._crit_edge869.i, label %bb.ad, !llvm.loop !197

._crit_edge869.i:                                 ; preds = %._crit_edge861.thread.i, %af_shaper_buf_create.exit.i19
  %i.rw = load ptr, ptr %i.ar, align 8, !tbaa !151
  %i.rx = getelementptr i8, ptr %i.rw, i64 816
  %.val.i709.i = load ptr, ptr %i.rx, align 8, !tbaa !41
  %i.ry = getelementptr i8, ptr %.val.i709.i, i64 72
  %.val.val.i710.i = load ptr, ptr %i.ry, align 8, !tbaa !48 ; 2 uses
  %.not6.i.i26 = icmp eq ptr %.val.val.i710.i, null
  br i1 %.not6.i.i26, label %af_shaper_buf_destroy.exit.i28, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge869.i
  %i.rz = getelementptr i8, ptr %.val.val.i710.i, i64 40
  %.val5.val.val.i.i27 = load ptr, ptr %i.rz, align 8, !tbaa !90
  call void %.val5.val.val.i.i27(ptr noundef %.0587.i) #18, !inline_history !198
  br label %af_shaper_buf_destroy.exit.i28

af_shaper_buf_destroy.exit.i28:                   ; preds = %bb.ci, %._crit_edge869.i
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 1540
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !192 ; 5 uses
  %.not637.i = icmp eq i32 %i.sb, 0
  br i1 %.not637.i, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %af_shaper_buf_destroy.exit.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 3 uses
  %wide.trip.count926.i = zext i32 %i.sb to i64   ; 4 uses
  %min.iters.check = icmp ult i32 %i.sb, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.cj
  %n.vec = and i64 %wide.trip.count926.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [72 x i8], ptr %i.sc, <2 x i64> %vec.ind
  %wide.gep212 = getelementptr inbounds nuw [72 x i8], ptr %i.sc, <2 x i64> %step.add
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store <2 x ptr> %wide.gep, ptr %i.sd, align 16, !tbaa !199
  store <2 x ptr> %wide.gep212, ptr %i.se, align 16, !tbaa !199
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.sf = icmp eq i64 %index.next, %n.vec
  br i1 %i.sf, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count926.i
  br i1 %cmp.n, label %.loopexit270, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.cj, %middle.block
  %indvars.iv923.i.ph = phi i64 [ 0, %bb.cj ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv923.i = phi i64 [ %indvars.iv.next924.i, %scalar.ph ], [ %indvars.iv923.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.sg = getelementptr inbounds nuw [72 x i8], ptr %i.sc, i64 %indvars.iv923.i
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv923.i
  store ptr %i.sg, ptr %i.sh, align 8, !tbaa !199
  %indvars.iv.next924.i = add nuw nsw i64 %indvars.iv923.i, 1 ; 2 uses
  %exitcond927.not.i = icmp eq i64 %indvars.iv.next924.i, %wide.trip.count926.i
  br i1 %exitcond927.not.i, label %.loopexit270, label %scalar.ph, !llvm.loop !204

end_hunk_1
begin_hunk_2_@af_latin_hints_apply:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !263
  %i.ba = icmp eq ptr %i.az, %i.av
  br i1 %i.ba, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n, %.preheader.i
  %.024.i = phi i64 [ %spec.select.i, %.preheader.i ], [ 9223372036854775807, %bb.n ]
  %.023.i = phi i64 [ %.1.i, %.preheader.i ], [ -9223372036854775808, %bb.n ]
  %.0.i = phi ptr [ %i.be, %.preheader.i ], [ %i.av, %bb.n ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !127 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.bc, i64 %.024.i) ; 2 uses
  %.1.i = tail call i64 @llvm.smax.i64(i64 %i.bc, i64 %.023.i) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !263 ; 2 uses
  %.not32.i = icmp eq ptr %i.be, %i.av
  br i1 %.not32.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !264

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n, %bb.m
  %.226.i = phi i64 [ 9223372036854775807, %bb.n ], [ 9223372036854775807, %bb.m ], [ %spec.select.i, %.preheader.i ]
  %.2.i204 = phi i64 [ -9223372036854775808, %bb.n ], [ -9223372036854775808, %bb.m ], [ %.1.i, %.preheader.i ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  store i64 %.226.i, ptr %i.bf, align 8, !tbaa !71
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i
  store i64 %.2.i204, ptr %i.bg, align 8, !tbaa !71
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %af_compute_vertical_extrema.exit, label %bb.m, !llvm.loop !265

af_compute_vertical_extrema.exit:                 ; preds = %.loopexit.i, %bb.l, %af_adjustment_database_lookup.exit.thread
  br i1 %i.ak, label %bb.o, label %af_move_contours_down.exit

bb.o:                                             ; preds = %af_compute_vertical_extrema.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !259 ; 4 uses
  %i.bj = icmp slt i32 %i.bi, 3
  br i1 %i.bj, label %af_find_second_highest_contour.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !261 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !262 ; 6 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bi to i64 ; 5 uses
  %i.bo = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.v, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.v ] ; 5 uses
  %.01624.i.i = phi i64 [ -9223372036854775808, %.lr.ph.i.i.new ], [ %.1.i.i.1, %bb.v ] ; 3 uses
  %.01723.i.i = phi i64 [ 9223372036854775807, %.lr.ph.i.i.new ], [ %.118.i.i.1, %bb.v ] ; 2 uses
  %.01922.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %.120.i.i.1, %bb.v ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.v ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !71 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !71 ; 3 uses
  %i.bu = icmp sgt i64 %i.bt, %.01624.i.i
  br i1 %i.bu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = icmp eq i64 %i.bt, %.01624.i.i
  %i.bw = icmp sgt i64 %i.br, %.01723.i.i
  %or.cond.i.i = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bx = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.120.i.i = phi i32 [ %i.bx, %bb.r ], [ %.01922.i.i, %bb.q ]
  %.118.i.i = phi i64 [ %i.br, %bb.r ], [ %.01723.i.i, %bb.q ] ; 2 uses
  %.1.i.i = phi i64 [ %i.bt, %bb.r ], [ %.01624.i.i, %bb.q ] ; 3 uses
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !71 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !71 ; 3 uses
  %i.cc = icmp sgt i64 %i.cb, %.1.i.i
  br i1 %i.cc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = icmp eq i64 %i.cb, %.1.i.i
  %i.ce = icmp sgt i64 %i.bz, %.118.i.i
  %or.cond.i.i.1 = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i.i.1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cf = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.120.i.i.1 = phi i32 [ %i.cf, %bb.u ], [ %.120.i.i, %bb.t ] ; 3 uses
  %.118.i.i.1 = phi i64 [ %i.bz, %bb.u ], [ %.118.i.i, %bb.t ] ; 2 uses
  %.1.i.i.1 = phi i64 [ %i.cb, %bb.u ], [ %.1.i.i, %bb.t ] ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i205.unr-lcssa, label %bb.p, !llvm.loop !266

.lr.ph.i205.unr-lcssa:                            ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i205, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i205.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.lr.ph.i205.unr-lcssa ] ; 3 uses
  %.01624.i.i.epil.init = phi i64 [ -9223372036854775808, %.lr.ph.i.i ], [ %.1.i.i.1, %.lr.ph.i205.unr-lcssa ] ; 2 uses
  %.01723.i.i.epil.init = phi i64 [ 9223372036854775807, %.lr.ph.i.i ], [ %.118.i.i.1, %.lr.ph.i205.unr-lcssa ]
  %.01922.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %.120.i.i.1, %.lr.ph.i205.unr-lcssa ]
  %lcmp.mod579 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod579)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i.epil.init
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !71 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, %.01624.i.i.epil.init
  br i1 %i.ci, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.epil.preheader
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i.epil.init
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !71
  %i.cl = icmp eq i64 %i.ch, %.01624.i.i.epil.init
  %i.cm = icmp sgt i64 %i.ck, %.01723.i.i.epil.init
  %or.cond.i.i.epil = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond.i.i.epil, label %bb.x, label %.lr.ph.i205

bb.x:                                             ; preds = %bb.w, %.epil.preheader
  %i.cn = trunc nuw nsw i64 %indvars.iv.i.i.epil.init to i32
  br label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %bb.w, %bb.x, %.lr.ph.i205.unr-lcssa
  %.120.i.i.lcssa = phi i32 [ %.120.i.i.1, %.lr.ph.i205.unr-lcssa ], [ %i.cn, %bb.x ], [ %.01922.i.i.epil.init, %bb.w ] ; 2 uses
  %i.co = sext i32 %.120.i.i.lcssa to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !71 ; 3 uses
  %i.cr = zext i32 %.120.i.i.lcssa to i64         ; 3 uses
  %xtraiter581 = and i64 %wide.trip.count.i.i, 1
  %i.cs = icmp eq i64 %i.bo, 0
  br i1 %i.cs, label %.epil.preheader580, label %.lr.ph.i205.new

.lr.ph.i205.new:                                  ; preds = %.lr.ph.i205
  %unroll_iter585 = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.y

bb.y:                                             ; preds = %bb.ae, %.lr.ph.i205.new
  %indvars.iv.i206 = phi i64 [ 0, %.lr.ph.i205.new ], [ %indvars.iv.next.i208.1, %bb.ae ] ; 6 uses
  %.02028.i = phi i64 [ -9223372036854775808, %.lr.ph.i205.new ], [ %.2.i207.1, %bb.ae ] ; 4 uses
  %.02127.i = phi i32 [ 0, %.lr.ph.i205.new ], [ %.223.i.1, %bb.ae ] ; 3 uses
  %niter586 = phi i64 [ 0, %.lr.ph.i205.new ], [ %niter586.next.1, %bb.ae ]
  %i.ct = icmp eq i64 %indvars.iv.i206, %i.cr
  br i1 %i.ct, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i206
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !71 ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, %.02028.i
  br i1 %i.cw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i206
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !71
  %i.cz = icmp slt i64 %i.cy, %i.cq               ; 2 uses
  %i.da = trunc nuw nsw i64 %indvars.iv.i206 to i32
  %spec.select.i212 = select i1 %i.cz, i32 %i.da, i32 %.02127.i
  %spec.select26.i = select i1 %i.cz, i64 %i.cv, i64 %.02028.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.223.i = phi i32 [ %.02127.i, %bb.y ], [ %.02127.i, %bb.z ], [ %spec.select.i212, %bb.aa ] ; 3 uses
  %.2.i207 = phi i64 [ %.02028.i, %bb.y ], [ %.02028.i, %bb.z ], [ %spec.select26.i, %bb.aa ] ; 4 uses
  %indvars.iv.next.i208 = or disjoint i64 %indvars.iv.i206, 1 ; 4 uses
  %i.db = icmp eq i64 %indvars.iv.next.i208, %i.cr
  br i1 %i.db, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i208
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !71 ; 2 uses
  %i.de = icmp sgt i64 %i.dd, %.2.i207
  br i1 %i.de, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i208
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !71
  %i.dh = icmp slt i64 %i.dg, %i.cq               ; 2 uses
  %i.di = trunc nuw nsw i64 %indvars.iv.next.i208 to i32
  %spec.select.i212.1 = select i1 %i.dh, i32 %i.di, i32 %.223.i
  %spec.select26.i.1 = select i1 %i.dh, i64 %i.dd, i64 %.2.i207
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.223.i.1 = phi i32 [ %.223.i, %bb.ab ], [ %.223.i, %bb.ac ], [ %spec.select.i212.1, %bb.ad ] ; 3 uses
  %.2.i207.1 = phi i64 [ %.2.i207, %bb.ab ], [ %.2.i207, %bb.ac ], [ %spec.select26.i.1, %bb.ad ] ; 2 uses
  %indvars.iv.next.i208.1 = add nuw nsw i64 %indvars.iv.i206, 2 ; 2 uses
  %niter586.next.1 = add nuw i64 %niter586, 2     ; 2 uses
  %niter586.ncmp.1 = icmp eq i64 %niter586.next.1, %unroll_iter585
  br i1 %niter586.ncmp.1, label %af_find_second_highest_contour.exit.loopexit.unr-lcssa, label %bb.y, !llvm.loop !267

af_find_second_highest_contour.exit.loopexit.unr-lcssa: ; preds = %bb.ae
  %lcmp.mod582.not = icmp eq i64 %xtraiter581, 0
  br i1 %lcmp.mod582.not, label %af_find_second_highest_contour.exit, label %.epil.preheader580

.epil.preheader580:                               ; preds = %af_find_second_highest_contour.exit.loopexit.unr-lcssa, %.lr.ph.i205
  %indvars.iv.i206.epil.init = phi i64 [ 0, %.lr.ph.i205 ], [ %indvars.iv.next.i208.1, %af_find_second_highest_contour.exit.loopexit.unr-lcssa ] ; 4 uses
  %.02028.i.epil.init = phi i64 [ -9223372036854775808, %.lr.ph.i205 ], [ %.2.i207.1, %af_find_second_highest_contour.exit.loopexit.unr-lcssa ]
  %.02127.i.epil.init = phi i32 [ 0, %.lr.ph.i205 ], [ %.223.i.1, %af_find_second_highest_contour.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod584 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod584)
  %i.dj = icmp eq i64 %indvars.iv.i206.epil.init, %i.cr
  br i1 %i.dj, label %af_find_second_highest_contour.exit, label %bb.af

bb.af:                                            ; preds = %.epil.preheader580
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i206.epil.init
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !71
  %i.dm = icmp sgt i64 %i.dl, %.02028.i.epil.init
  br i1 %i.dm, label %bb.ag, label %af_find_second_highest_contour.exit

bb.ag:                                            ; preds = %bb.af
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i206.epil.init
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !71
  %i.dp = icmp slt i64 %i.do, %i.cq
  %i.dq = trunc nuw nsw i64 %indvars.iv.i206.epil.init to i32
  %spec.select.i212.epil = select i1 %i.dp, i32 %i.dq, i32 %.02127.i.epil.init
  br label %af_find_second_highest_contour.exit

af_find_second_highest_contour.exit:              ; preds = %af_find_second_highest_contour.exit.loopexit.unr-lcssa, %bb.ag, %bb.af, %.epil.preheader580, %bb.o
  %.024.i211 = phi i32 [ 0, %bb.o ], [ %.223.i.1, %af_find_second_highest_contour.exit.loopexit.unr-lcssa ], [ %.02127.i.epil.init, %.epil.preheader580 ], [ %.02127.i.epil.init, %bb.af ], [ %spec.select.i212.epil, %bb.ag ] ; 2 uses
  %i.dr = tail call fastcc i64 @af_latin_stretch_top_tilde(ptr noundef %1, i32 noundef %.024.i211)
  %i.ds = getelementptr i8, ptr %1, i64 64
  %.val190 = load ptr, ptr %i.ds, align 8, !tbaa !260 ; 2 uses
  %i.dt = sext i32 %.024.i211 to i64              ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.val190, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !119 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !127 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %af_find_second_highest_contour.exit
  %.028.i = phi ptr [ %i.dv, %af_find_second_highest_contour.exit ], [ %i.dz, %bb.ah ]
  %.026.i = phi i64 [ %i.dx, %af_find_second_highest_contour.exit ], [ %spec.select.i213, %bb.ah ]
  %.025.i = phi i64 [ %i.dx, %af_find_second_highest_contour.exit ], [ %.1.i214, %bb.ah ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.028.i, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !263 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !127 ; 2 uses
  %spec.select.i213 = tail call i64 @llvm.smin.i64(i64 %i.eb, i64 %.026.i) ; 4 uses
  %.1.i214 = tail call i64 @llvm.smax.i64(i64 %i.eb, i64 %.025.i) ; 2 uses
  %.not.i215 = icmp eq ptr %i.dz, %i.dv
  br i1 %.not.i215, label %bb.ai, label %bb.ah, !llvm.loop !268

bb.ai:                                            ; preds = %bb.ah
  %i.ec = add i64 %spec.select.i213, 32
  %i.ed = and i64 %i.ec, -64
  %i.ee = sub i64 %i.ed, %spec.select.i213        ; 2 uses
  %i.ef = sub i64 %.1.i214, %spec.select.i213     ; 3 uses
  %i.eg = icmp slt i64 %i.ef, 192
  br i1 %i.eg, label %bb.aj, label %.preheader.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.eh = add nsw i64 %i.ef, 32
  %i.ei = and i64 %i.eh, -64
  %i.ej = sub nsw i64 %i.ei, %i.ef
  %i.ek = sdiv i64 %i.ej, 2
  %i.el = add nsw i64 %i.ek, %i.ee
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aj, %bb.ai
  %.0.i216 = phi i64 [ %i.el, %bb.aj ], [ %i.ee, %bb.ai ] ; 2 uses
  %sext.i = shl i64 %.0.i216, 32
  %i.em = ashr exact i64 %sext.i, 32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.er, %bb.ak ], [ %i.dv, %.preheader.i.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !127
  %i.ep = add nsw i64 %i.eo, %i.em
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !127
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !263 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.er, %i.dv
  br i1 %.not8.i.i, label %af_latin_align_top_tilde.exit, label %bb.ak, !llvm.loop !269

af_latin_align_top_tilde.exit:                    ; preds = %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !261 ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.dt
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !71
  %i.ew = load i32, ptr %i.bh, align 4, !tbaa !259 ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i217, label %af_move_contours_down.exit

.lr.ph.i217:                                      ; preds = %af_latin_align_top_tilde.exit
  %i.ey = add nsw i64 %.0.i216, %i.dr
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !262
  %sext.i218 = shl i64 %i.ey, 32
  %i.fb = ashr exact i64 %sext.i218, 32
  %wide.trip.count.i219 = zext nneg i32 %i.ew to i64
  br label %bb.al

bb.al:                                            ; preds = %af_move_contour_vertically.exit.i, %.lr.ph.i217
  %indvars.iv.i220 = phi i64 [ 0, %.lr.ph.i217 ], [ %indvars.iv.next.i221, %af_move_contour_vertically.exit.i ] ; 4 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.i220
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !71 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i220
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !71
  %i.fg = icmp slt i64 %i.fd, %i.ff
  %i.fh = icmp sgt i64 %i.fd, %i.ev
  %or.cond.i = and i1 %i.fh, %i.fg
  br i1 %or.cond.i, label %bb.am, label %af_move_contour_vertically.exit.i

bb.am:                                            ; preds = %bb.al
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.val190, i64 %indvars.iv.i220
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !119 ; 3 uses
  %.not.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i, label %af_move_contour_vertically.exit.i, label %.preheader.i.i223

.preheader.i.i223:                                ; preds = %bb.am, %.preheader.i.i223
  %.0.i.i224 = phi ptr [ %i.fo, %.preheader.i.i223 ], [ %i.fj, %bb.am ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.i224, i64 40 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !127
  %i.fm = add nsw i64 %i.fl, %i.fb
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !127
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i224, i64 64
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !263 ; 2 uses
  %.not8.i.i225 = icmp eq ptr %i.fo, %i.fj
  br i1 %.not8.i.i225, label %af_move_contour_vertically.exit.i, label %.preheader.i.i223, !llvm.loop !269

af_move_contour_vertically.exit.i:                ; preds = %.preheader.i.i223, %bb.am, %bb.al
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i220, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i219
  br i1 %exitcond.not.i222, label %af_move_contours_down.exit, label %bb.al, !llvm.loop !270

af_move_contours_down.exit:                       ; preds = %af_move_contour_vertically.exit.i, %af_compute_vertical_extrema.exit, %af_latin_align_top_tilde.exit
  br i1 %i.ai, label %bb.an, label %af_latin_align_top_tilde.exit293

bb.an:                                            ; preds = %af_move_contours_down.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !259 ; 4 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph.i274, label %af_find_highest_contour.exit

.lr.ph.i274:                                      ; preds = %bb.an
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !261 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !262 ; 3 uses
  %wide.trip.count.i275 = zext nneg i32 %i.fq to i64 ; 2 uses
  %xtraiter588 = and i64 %wide.trip.count.i275, 1
  %i.fw = icmp eq i32 %i.fq, 1
  br i1 %i.fw, label %.epil.preheader587, label %.lr.ph.i274.new

.lr.ph.i274.new:                                  ; preds = %.lr.ph.i274
  %unroll_iter592 = and i64 %wide.trip.count.i275, 2147483646
  br label %bb.ao

bb.ao:                                            ; preds = %bb.au, %.lr.ph.i274.new
  %indvars.iv.i276 = phi i64 [ 0, %.lr.ph.i274.new ], [ %indvars.iv.next.i279.1, %bb.au ] ; 5 uses
  %.01624.i = phi i64 [ -9223372036854775808, %.lr.ph.i274.new ], [ %.1.i278.1, %bb.au ] ; 3 uses
  %.01723.i = phi i64 [ 9223372036854775807, %.lr.ph.i274.new ], [ %.118.i.1, %bb.au ] ; 2 uses
  %.01922.i = phi i32 [ 0, %.lr.ph.i274.new ], [ %.120.i.1, %bb.au ]
  %niter593 = phi i64 [ 0, %.lr.ph.i274.new ], [ %niter593.next.1, %bb.au ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.i276
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !71 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv.i276
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !71 ; 3 uses
  %i.gb = icmp sgt i64 %i.ga, %.01624.i
  br i1 %i.gb, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gc = icmp eq i64 %i.ga, %.01624.i
  %i.gd = icmp sgt i64 %i.fy, %.01723.i
  %or.cond.i277 = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond.i277, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ge = trunc nuw nsw i64 %indvars.iv.i276 to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.120.i = phi i32 [ %i.ge, %bb.aq ], [ %.01922.i, %bb.ap ]
  %.118.i = phi i64 [ %i.fy, %bb.aq ], [ %.01723.i, %bb.ap ] ; 2 uses
  %.1.i278 = phi i64 [ %i.ga, %bb.aq ], [ %.01624.i, %bb.ap ] ; 3 uses
  %indvars.iv.next.i279 = or disjoint i64 %indvars.iv.i276, 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.next.i279
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !71 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv.next.i279
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !71 ; 3 uses
  %i.gj = icmp sgt i64 %i.gi, %.1.i278
  br i1 %i.gj, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gk = icmp eq i64 %i.gi, %.1.i278
  %i.gl = icmp sgt i64 %i.gg, %.118.i
  %or.cond.i277.1 = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond.i277.1, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gm = trunc nuw nsw i64 %indvars.iv.next.i279 to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.120.i.1 = phi i32 [ %i.gm, %bb.at ], [ %.120.i, %bb.as ] ; 3 uses
  %.118.i.1 = phi i64 [ %i.gg, %bb.at ], [ %.118.i, %bb.as ] ; 2 uses
  %.1.i278.1 = phi i64 [ %i.gi, %bb.at ], [ %.1.i278, %bb.as ] ; 2 uses
  %indvars.iv.next.i279.1 = add nuw nsw i64 %indvars.iv.i276, 2 ; 2 uses
  %niter593.next.1 = add nuw i64 %niter593, 2     ; 2 uses
  %niter593.ncmp.1 = icmp eq i64 %niter593.next.1, %unroll_iter592
  br i1 %niter593.ncmp.1, label %af_find_highest_contour.exit.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !266

af_find_highest_contour.exit.loopexit.unr-lcssa:  ; preds = %bb.au
  %lcmp.mod589.not = icmp eq i64 %xtraiter588, 0
  br i1 %lcmp.mod589.not, label %af_find_highest_contour.exit, label %.epil.preheader587

.epil.preheader587:                               ; preds = %af_find_highest_contour.exit.loopexit.unr-lcssa, %.lr.ph.i274
  %indvars.iv.i276.epil.init = phi i64 [ 0, %.lr.ph.i274 ], [ %indvars.iv.next.i279.1, %af_find_highest_contour.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01624.i.epil.init = phi i64 [ -9223372036854775808, %.lr.ph.i274 ], [ %.1.i278.1, %af_find_highest_contour.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01723.i.epil.init = phi i64 [ 9223372036854775807, %.lr.ph.i274 ], [ %.118.i.1, %af_find_highest_contour.exit.loopexit.unr-lcssa ]
  %.01922.i.epil.init = phi i32 [ 0, %.lr.ph.i274 ], [ %.120.i.1, %af_find_highest_contour.exit.loopexit.unr-lcssa ]
  %lcmp.mod591 = trunc i32 %i.fq to i1
  tail call void @llvm.assume(i1 %lcmp.mod591)
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv.i276.epil.init
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !71 ; 2 uses
  %i.gp = icmp sgt i64 %i.go, %.01624.i.epil.init
  br i1 %i.gp, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.epil.preheader587
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.i276.epil.init
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !71
  %i.gs = icmp eq i64 %i.go, %.01624.i.epil.init
  %i.gt = icmp sgt i64 %i.gr, %.01723.i.epil.init
  %or.cond.i277.epil = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond.i277.epil, label %bb.aw, label %af_find_highest_contour.exit

bb.aw:                                            ; preds = %bb.av, %.epil.preheader587
  %i.gu = trunc nuw nsw i64 %indvars.iv.i276.epil.init to i32
  br label %af_find_highest_contour.exit

af_find_highest_contour.exit:                     ; preds = %af_find_highest_contour.exit.loopexit.unr-lcssa, %bb.aw, %bb.av, %bb.an
  %.019.lcssa.i = phi i32 [ 0, %bb.an ], [ %.120.i.1, %af_find_highest_contour.exit.loopexit.unr-lcssa ], [ %i.gu, %bb.aw ], [ %.01922.i.epil.init, %bb.av ] ; 2 uses
  %i.gv = tail call fastcc i64 @af_latin_stretch_top_tilde(ptr noundef %1, i32 noundef %.019.lcssa.i) ; 0 uses
  %i.gw = getelementptr i8, ptr %1, i64 64
  %.val189 = load ptr, ptr %i.gw, align 8, !tbaa !260
  %i.gx = sext i32 %.019.lcssa.i to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %.val189, i64 %i.gx
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !119 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !127 ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %af_find_highest_contour.exit
  %.028.i281 = phi ptr [ %i.gz, %af_find_highest_contour.exit ], [ %i.hd, %bb.ax ]
  %.026.i282 = phi i64 [ %i.hb, %af_find_highest_contour.exit ], [ %spec.select.i284, %bb.ax ]
  %.025.i283 = phi i64 [ %i.hb, %af_find_highest_contour.exit ], [ %.1.i285, %bb.ax ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.028.i281, i64 64
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !263 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !127 ; 2 uses
  %spec.select.i284 = tail call i64 @llvm.smin.i64(i64 %i.hf, i64 %.026.i282) ; 4 uses
  %.1.i285 = tail call i64 @llvm.smax.i64(i64 %i.hf, i64 %.025.i283) ; 2 uses
  %.not.i286 = icmp eq ptr %i.hd, %i.gz
  br i1 %.not.i286, label %bb.ay, label %bb.ax, !llvm.loop !268

bb.ay:                                            ; preds = %bb.ax
  %i.hg = add i64 %spec.select.i284, 32
  %i.hh = and i64 %i.hg, -64
  %i.hi = sub i64 %i.hh, %spec.select.i284        ; 2 uses
  %i.hj = sub i64 %.1.i285, %spec.select.i284     ; 3 uses
  %i.hk = icmp slt i64 %i.hj, 192
  br i1 %i.hk, label %bb.az, label %.preheader.i.i287

bb.az:                                            ; preds = %bb.ay
  %i.hl = add nsw i64 %i.hj, 32
  %i.hm = and i64 %i.hl, -64
  %i.hn = sub nsw i64 %i.hm, %i.hj
  %i.ho = sdiv i64 %i.hn, 2
  %i.hp = add nsw i64 %i.ho, %i.hi
  br label %.preheader.i.i287

.preheader.i.i287:                                ; preds = %bb.az, %bb.ay
  %.0.i288 = phi i64 [ %i.hp, %bb.az ], [ %i.hi, %bb.ay ]
  %sext.i289 = shl i64 %.0.i288, 32
  %i.hq = ashr exact i64 %sext.i289, 32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader.i.i287
  %.0.i.i290 = phi ptr [ %i.hv, %bb.ba ], [ %i.gz, %.preheader.i.i287 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i.i290, i64 40 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !127
  %i.ht = add nsw i64 %i.hs, %i.hq
  store i64 %i.ht, ptr %i.hr, align 8, !tbaa !127
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i290, i64 64
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !263 ; 2 uses
  %.not8.i.i291 = icmp eq ptr %i.hv, %i.gz
  br i1 %.not8.i.i291, label %af_latin_align_top_tilde.exit293, label %bb.ba, !llvm.loop !269

af_latin_align_top_tilde.exit293:                 ; preds = %bb.ba, %af_move_contours_down.exit
  br i1 %i.aj, label %bb.bb, label %af_latin_align_bottom_tilde.exit320

bb.bb:                                            ; preds = %af_latin_align_top_tilde.exit293
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !259 ; 4 uses
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.lr.ph.i295, label %af_find_lowest_contour.exit

.lr.ph.i295:                                      ; preds = %bb.bb
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !261 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !262 ; 3 uses
  %wide.trip.count.i296 = zext nneg i32 %i.hx to i64 ; 2 uses
  %xtraiter595 = and i64 %wide.trip.count.i296, 1
  %i.id = icmp eq i32 %i.hx, 1
  br i1 %i.id, label %.epil.preheader594, label %.lr.ph.i295.new

.lr.ph.i295.new:                                  ; preds = %.lr.ph.i295
  %unroll_iter599 = and i64 %wide.trip.count.i296, 2147483646
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bi, %.lr.ph.i295.new
  %indvars.iv.i297 = phi i64 [ 0, %.lr.ph.i295.new ], [ %indvars.iv.next.i305.1, %bb.bi ] ; 5 uses
  %.01624.i298 = phi i64 [ -9223372036854775808, %.lr.ph.i295.new ], [ %.1.i304.1, %bb.bi ] ; 2 uses
  %.01723.i299 = phi i64 [ 9223372036854775807, %.lr.ph.i295.new ], [ %.118.i303.1, %bb.bi ] ; 3 uses
  %.01922.i300 = phi i32 [ 0, %.lr.ph.i295.new ], [ %.120.i302.1, %bb.bi ]
  %niter600 = phi i64 [ 0, %.lr.ph.i295.new ], [ %niter600.next.1, %bb.bi ]
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i297
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !71 ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.i297
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !71 ; 2 uses
  %i.ii = icmp slt i64 %i.if, %.01723.i299
  br i1 %i.ii, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ij = icmp eq i64 %i.if, %.01723.i299
  %i.ik = icmp slt i64 %i.ih, %.01624.i298
  %or.cond.i301 = select i1 %i.ij, i1 %i.ik, i1 false
  br i1 %or.cond.i301, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.il = trunc nuw nsw i64 %indvars.iv.i297 to i32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.120.i302 = phi i32 [ %i.il, %bb.be ], [ %.01922.i300, %bb.bd ]
  %.118.i303 = phi i64 [ %i.if, %bb.be ], [ %.01723.i299, %bb.bd ] ; 3 uses
  %.1.i304 = phi i64 [ %i.ih, %bb.be ], [ %.01624.i298, %bb.bd ] ; 2 uses
  %indvars.iv.next.i305 = or disjoint i64 %indvars.iv.i297, 1 ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i305
  %i.in = load i64, ptr %i.im, align 8, !tbaa !71 ; 3 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next.i305
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !71 ; 2 uses
  %i.iq = icmp slt i64 %i.in, %.118.i303
  br i1 %i.iq, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ir = icmp eq i64 %i.in, %.118.i303
  %i.is = icmp slt i64 %i.ip, %.1.i304
  %or.cond.i301.1 = select i1 %i.ir, i1 %i.is, i1 false
  br i1 %or.cond.i301.1, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.it = trunc nuw nsw i64 %indvars.iv.next.i305 to i32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.120.i302.1 = phi i32 [ %i.it, %bb.bh ], [ %.120.i302, %bb.bg ] ; 3 uses
  %.118.i303.1 = phi i64 [ %i.in, %bb.bh ], [ %.118.i303, %bb.bg ] ; 2 uses
  %.1.i304.1 = phi i64 [ %i.ip, %bb.bh ], [ %.1.i304, %bb.bg ] ; 2 uses
  %indvars.iv.next.i305.1 = add nuw nsw i64 %indvars.iv.i297, 2 ; 2 uses
  %niter600.next.1 = add nuw i64 %niter600, 2     ; 2 uses
  %niter600.ncmp.1 = icmp eq i64 %niter600.next.1, %unroll_iter599
  br i1 %niter600.ncmp.1, label %af_find_lowest_contour.exit.loopexit.unr-lcssa, label %bb.bc, !llvm.loop !271

af_find_lowest_contour.exit.loopexit.unr-lcssa:   ; preds = %bb.bi
  %lcmp.mod596.not = icmp eq i64 %xtraiter595, 0
  br i1 %lcmp.mod596.not, label %af_find_lowest_contour.exit, label %.epil.preheader594

.epil.preheader594:                               ; preds = %af_find_lowest_contour.exit.loopexit.unr-lcssa, %.lr.ph.i295
  %indvars.iv.i297.epil.init = phi i64 [ 0, %.lr.ph.i295 ], [ %indvars.iv.next.i305.1, %af_find_lowest_contour.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01624.i298.epil.init = phi i64 [ -9223372036854775808, %.lr.ph.i295 ], [ %.1.i304.1, %af_find_lowest_contour.exit.loopexit.unr-lcssa ]
  %.01723.i299.epil.init = phi i64 [ 9223372036854775807, %.lr.ph.i295 ], [ %.118.i303.1, %af_find_lowest_contour.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01922.i300.epil.init = phi i32 [ 0, %.lr.ph.i295 ], [ %.120.i302.1, %af_find_lowest_contour.exit.loopexit.unr-lcssa ]
  %lcmp.mod598 = trunc i32 %i.hx to i1
  tail call void @llvm.assume(i1 %lcmp.mod598)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i297.epil.init
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !71 ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %.01723.i299.epil.init
  br i1 %i.iw, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.epil.preheader594
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.i297.epil.init
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !71
  %i.iz = icmp eq i64 %i.iv, %.01723.i299.epil.init
  %i.ja = icmp slt i64 %i.iy, %.01624.i298.epil.init
  %or.cond.i301.epil = select i1 %i.iz, i1 %i.ja, i1 false
  br i1 %or.cond.i301.epil, label %bb.bk, label %af_find_lowest_contour.exit

bb.bk:                                            ; preds = %bb.bj, %.epil.preheader594
  %i.jb = trunc nuw nsw i64 %indvars.iv.i297.epil.init to i32
  br label %af_find_lowest_contour.exit

af_find_lowest_contour.exit:                      ; preds = %af_find_lowest_contour.exit.loopexit.unr-lcssa, %bb.bk, %bb.bj, %bb.bb
  %.019.lcssa.i294 = phi i32 [ 0, %bb.bb ], [ %.120.i302.1, %af_find_lowest_contour.exit.loopexit.unr-lcssa ], [ %i.jb, %bb.bk ], [ %.01922.i300.epil.init, %bb.bj ] ; 2 uses
  tail call fastcc void @af_latin_stretch_bottom_tilde(ptr noundef %1, i32 noundef %.019.lcssa.i294)
  %i.jc = getelementptr i8, ptr %1, i64 64
  %.val191 = load ptr, ptr %i.jc, align 8, !tbaa !260
  %i.jd = sext i32 %.019.lcssa.i294 to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %.val191, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !119 ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !127 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %af_find_lowest_contour.exit
  %.028.i307 = phi ptr [ %i.jf, %af_find_lowest_contour.exit ], [ %i.jj, %bb.bl ]
  %.026.i308 = phi i64 [ %i.jh, %af_find_lowest_contour.exit ], [ %spec.select.i310, %bb.bl ]
  %.025.i309 = phi i64 [ %i.jh, %af_find_lowest_contour.exit ], [ %.1.i311, %bb.bl ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.028.i307, i64 64
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !263 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !127 ; 2 uses
  %spec.select.i310 = tail call i64 @llvm.smin.i64(i64 %i.jl, i64 %.026.i308) ; 2 uses
  %.1.i311 = tail call i64 @llvm.smax.i64(i64 %i.jl, i64 %.025.i309) ; 4 uses
  %.not.i312 = icmp eq ptr %i.jj, %i.jf
  br i1 %.not.i312, label %bb.bm, label %bb.bl, !llvm.loop !272

bb.bm:                                            ; preds = %bb.bl
  %i.jm = add i64 %.1.i311, 32
  %i.jn = and i64 %i.jm, -64
  %i.jo = sub i64 %i.jn, %.1.i311                 ; 2 uses
  %i.jp = sub i64 %.1.i311, %spec.select.i310     ; 3 uses
  %i.jq = icmp slt i64 %i.jp, 192
  br i1 %i.jq, label %bb.bn, label %.preheader.i.i313

bb.bn:                                            ; preds = %bb.bm
  %i.jr = add nsw i64 %i.jp, 32
  %i.js = and i64 %i.jr, -64
  %i.jt = sub nsw i64 %i.js, %i.jp
  %.neg.i319 = sdiv i64 %i.jt, -2
  %i.ju = add i64 %.neg.i319, %i.jo
  br label %.preheader.i.i313

.preheader.i.i313:                                ; preds = %bb.bn, %bb.bm
  %.0.i314 = phi i64 [ %i.ju, %bb.bn ], [ %i.jo, %bb.bm ]
  %sext.i315 = shl i64 %.0.i314, 32
  %i.jv = ashr exact i64 %sext.i315, 32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.preheader.i.i313
  %.0.i.i316 = phi ptr [ %i.ka, %bb.bo ], [ %i.jf, %.preheader.i.i313 ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i.i316, i64 40 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !127
  %i.jy = add nsw i64 %i.jx, %i.jv
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !127
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i.i316, i64 64
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !263 ; 2 uses
  %.not8.i.i317 = icmp eq ptr %i.ka, %i.jf
  br i1 %.not8.i.i317, label %af_latin_align_bottom_tilde.exit320, label %bb.bo, !llvm.loop !269

af_latin_align_bottom_tilde.exit320:              ; preds = %bb.bo, %af_latin_align_top_tilde.exit293
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 1128
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !142
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 1136
  %i.ke = tail call fastcc i32 @af_latin_hints_detect_features(ptr noundef %1, i32 noundef %i.kc, ptr noundef nonnull %i.kd, i32 noundef 1) ; 2 uses
  br i1 %.1148, label %af_latin_ignore_bottom.exit360, label %bb.bp

bb.bp:                                            ; preds = %af_latin_align_bottom_tilde.exit320
  %i.kf = getelementptr i8, ptr %1, i64 5168
  %.val194 = load ptr, ptr %i.kf, align 8, !tbaa !95 ; 9 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.val194, i64 1540
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !192 ; 2 uses
  %.not9.i = icmp eq i32 %i.kh, 0
  br i1 %.not9.i, label %af_latin_get_base_glyph_blues.exit339, label %.lr.ph.i321

.lr.ph.i321:                                      ; preds = %bb.bp
  %wide.trip.count.i322 = zext i32 %i.kh to i64   ; 4 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %.lr.ph.i321
  %indvars.iv.i323 = phi i64 [ 0, %.lr.ph.i321 ], [ %indvars.iv.next.i324, %bb.br ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [72 x i8], ptr %.val194, i64 %indvars.iv.i323
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1608
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !196
  %i.kl = and i32 %i.kk, 3
  %i.km = icmp eq i32 %i.kl, 3
  br i1 %i.km, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %indvars.iv.next.i324 = add nuw nsw i64 %indvars.iv.i323, 1 ; 2 uses
  %exitcond.not.i325 = icmp eq i64 %indvars.iv.next.i324, %wide.trip.count.i322
  br i1 %exitcond.not.i325, label %.loopexit2.i, label %bb.bq, !llvm.loop !273

bb.bs:                                            ; preds = %bb.bq
  %i.kn = getelementptr inbounds nuw i8, ptr %.val194, i64 1544
  %i.ko = getelementptr inbounds nuw [72 x i8], ptr %i.kn, i64 %indvars.iv.i323
  br label %.loopexit2.i

.loopexit2.i:                                     ; preds = %bb.br, %bb.bs
  %.1429 = phi ptr [ %i.ko, %bb.bs ], [ null, %bb.br ] ; 2 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %.loopexit2.i
  %indvars.iv14.i = phi i64 [ 0, %.loopexit2.i ], [ %indvars.iv.next15.i, %bb.bu ] ; 3 uses
  %i.kp = getelementptr inbounds nuw [72 x i8], ptr %.val194, i64 %indvars.iv14.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 1608
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !196
  %i.ks = and i32 %i.kr, 33
  %i.kt = icmp eq i32 %i.ks, 33
  br i1 %i.kt, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next15.i, %wide.trip.count.i322
  br i1 %exitcond18.not.i, label %.lr.ph.i328, label %bb.bt, !llvm.loop !274

bb.bv:                                            ; preds = %bb.bt
  %i.ku = getelementptr inbounds nuw i8, ptr %.val194, i64 1544
  %i.kv = getelementptr inbounds nuw [72 x i8], ptr %i.ku, i64 %indvars.iv14.i
  br label %.lr.ph.i328

.lr.ph.i328:                                      ; preds = %bb.bu, %bb.bv
  %.1427 = phi ptr [ %i.kv, %bb.bv ], [ null, %bb.bu ] ; 2 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bx, %.lr.ph.i328
  %indvars.iv.i330 = phi i64 [ 0, %.lr.ph.i328 ], [ %indvars.iv.next.i331, %bb.bx ] ; 3 uses
  %i.kw = getelementptr inbounds nuw [72 x i8], ptr %.val194, i64 %indvars.iv.i330
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1608
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !196
  %i.kz = and i32 %i.ky, 17
  %i.la = icmp eq i32 %i.kz, 17
  br i1 %i.la, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %indvars.iv.next.i331 = add nuw nsw i64 %indvars.iv.i330, 1 ; 2 uses
  %exitcond.not.i332 = icmp eq i64 %indvars.iv.next.i331, %wide.trip.count.i322
  br i1 %exitcond.not.i332, label %.loopexit2.i333, label %bb.bw, !llvm.loop !273

bb.by:                                            ; preds = %bb.bw
  %i.lb = getelementptr inbounds nuw i8, ptr %.val194, i64 1544
  %i.lc = getelementptr inbounds nuw [72 x i8], ptr %i.lb, i64 %indvars.iv.i330
  br label %.loopexit2.i333

.loopexit2.i333:                                  ; preds = %bb.bx, %bb.by
  %.1424 = phi ptr [ %i.lc, %bb.by ], [ null, %bb.bx ] ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %.loopexit2.i333
  %indvars.iv14.i335 = phi i64 [ 0, %.loopexit2.i333 ], [ %indvars.iv.next15.i336, %bb.ca ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [72 x i8], ptr %.val194, i64 %indvars.iv14.i335
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 1608
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !196
  %i.lg = and i32 %i.lf, 65
  %i.lh = icmp eq i32 %i.lg, 65
  br i1 %i.lh, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %indvars.iv.next15.i336 = add nuw nsw i64 %indvars.iv14.i335, 1 ; 2 uses
  %exitcond18.not.i337 = icmp eq i64 %indvars.iv.next15.i336, %wide.trip.count.i322
  br i1 %exitcond18.not.i337, label %af_latin_get_base_glyph_blues.exit339, label %bb.bz, !llvm.loop !274

bb.cb:                                            ; preds = %bb.bz
  %i.li = getelementptr inbounds nuw i8, ptr %.val194, i64 1544
  %i.lj = getelementptr inbounds nuw [72 x i8], ptr %i.li, i64 %indvars.iv14.i335
  br label %af_latin_get_base_glyph_blues.exit339

af_latin_get_base_glyph_blues.exit339:            ; preds = %bb.ca, %bb.bp, %bb.cb
  %.1427436 = phi ptr [ null, %bb.bp ], [ %.1427, %bb.cb ], [ %.1427, %bb.ca ] ; 5 uses
  %.2430435 = phi ptr [ null, %bb.bp ], [ %.1429, %bb.cb ], [ %.1429, %bb.ca ] ; 5 uses
  %.2425 = phi ptr [ null, %bb.bp ], [ %.1424, %bb.cb ], [ %.1424, %bb.ca ] ; 5 uses
end_hunk_2
begin_hunk_3_@af_latin_hints_apply:bb.a

bb.dy:                                            ; preds = %af_glyph_hints_align_edge_points.exit377
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !71
  %i.vo = trunc i64 %i.vn to i32                  ; 2 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ed, %bb.dy
  %.01429.i.i = phi i64 [ 934, %bb.dy ], [ %.2.i.i, %bb.ed ] ; 2 uses
  %.01528.i.i = phi i64 [ 0, %bb.dy ], [ %.217.i.i, %bb.ed ] ; 2 uses
  %i.vp = add i64 %.01528.i.i, %.01429.i.i
  %i.vq = lshr i64 %i.vp, 1                       ; 4 uses
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr @adjustment_database, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !223 ; 2 uses
  %i.vt = icmp ult i32 %i.vs, %i.vo
  br i1 %i.vt, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.vu = add nuw i64 %i.vq, 1
  br label %bb.ed

bb.eb:                                            ; preds = %bb.dz
  %i.vv = icmp ugt i32 %i.vs, %i.vo
  br i1 %i.vv, label %bb.ec, label %af_adjustment_database_lookup.exit.i

bb.ec:                                            ; preds = %bb.eb
  %i.vw = add nsw i64 %i.vq, -1
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ea
  %.217.i.i = phi i64 [ %.01528.i.i, %bb.ec ], [ %i.vu, %bb.ea ] ; 2 uses
  %.2.i.i = phi i64 [ %i.vw, %bb.ec ], [ %.01429.i.i, %bb.ea ] ; 2 uses
  %.not.i.i405 = icmp ult i64 %.2.i.i, %.217.i.i
  br i1 %.not.i.i405, label %af_adjustment_database_lookup.exit.thread.i, label %bb.dz, !llvm.loop !257

af_adjustment_database_lookup.exit.i:             ; preds = %bb.eb
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr @adjustment_database, i64 %i.vq
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !258 ; 4 uses
  %i.wa = trunc i32 %i.vz to i1
  %i.wb = and i32 %i.vz, 2
  %i.wc = icmp ne i32 %i.wb, 0
  %i.wd = and i32 %i.vz, 4
  %i.we = icmp ne i32 %i.wd, 0
  br label %af_adjustment_database_lookup.exit.thread.i

af_adjustment_database_lookup.exit.thread.i:      ; preds = %bb.ed, %af_adjustment_database_lookup.exit.i, %af_glyph_hints_align_edge_points.exit377
  %.1256.i = phi i1 [ false, %af_glyph_hints_align_edge_points.exit377 ], [ %i.wa, %af_adjustment_database_lookup.exit.i ], [ false, %bb.ed ] ; 4 uses
  %.1254.i = phi i1 [ false, %af_glyph_hints_align_edge_points.exit377 ], [ %i.we, %af_adjustment_database_lookup.exit.i ], [ false, %bb.ed ] ; 6 uses
  %.1252.i = phi i1 [ false, %af_glyph_hints_align_edge_points.exit377 ], [ %i.wc, %af_adjustment_database_lookup.exit.i ], [ false, %bb.ed ] ; 2 uses
  %.0248.i = phi i32 [ 0, %af_glyph_hints_align_edge_points.exit377 ], [ %i.vz, %af_adjustment_database_lookup.exit.i ], [ 0, %bb.ed ] ; 5 uses
  %or.cond.i379 = or i1 %.1256.i, %.1252.i
  br i1 %or.cond.i379, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %af_adjustment_database_lookup.exit.thread.i
  %i.wf = load i32, ptr %i.tv, align 4, !tbaa !259 ; 2 uses
  %i.wg = icmp sgt i32 %i.wf, 1
  br i1 %i.wg, label %.lr.ph.i.i397, label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %af_adjustment_database_lookup.exit.thread.i
  br i1 %.1254.i, label %bb.eg, label %af_compute_vertical_extrema.exit.i

bb.eg:                                            ; preds = %bb.ef
  %i.wh = load i32, ptr %i.tv, align 4, !tbaa !259 ; 2 uses
  %i.wi = icmp sgt i32 %i.wh, 2
  br i1 %i.wi, label %.lr.ph.i.i397, label %af_compute_vertical_extrema.exit.i

.lr.ph.i.i397:                                    ; preds = %bb.eg, %bb.ee
  %i.wj = phi i32 [ %i.wh, %bb.eg ], [ %i.wf, %bb.ee ]
  %i.wk = load ptr, ptr %i.tw, align 8, !tbaa !260
  %i.wl = load ptr, ptr %i.tx, align 8, !tbaa !261
  %i.wm = load ptr, ptr %i.ty, align 8, !tbaa !262
  %wide.trip.count.i.i398 = zext nneg i32 %i.wj to i64
  br label %bb.eh

bb.eh:                                            ; preds = %.loopexit.i.i, %.lr.ph.i.i397
  %indvars.iv.i.i399 = phi i64 [ 0, %.lr.ph.i.i397 ], [ %indvars.iv.next.i.i403, %.loopexit.i.i ] ; 4 uses
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.i.i399
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !119 ; 5 uses
  %.not.i278.i = icmp eq ptr %i.wo, null
  br i1 %.not.i278.i, label %.loopexit.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 64
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !263
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 64
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !263
  %i.wt = icmp eq ptr %i.ws, %i.wo
  br i1 %i.wt, label %.loopexit.i.i, label %.preheader.i.i400

.preheader.i.i400:                                ; preds = %bb.ei, %.preheader.i.i400
  %.024.i.i = phi i64 [ %spec.select.i.i, %.preheader.i.i400 ], [ 9223372036854775807, %bb.ei ]
  %.023.i.i = phi i64 [ %.1.i.i402, %.preheader.i.i400 ], [ -9223372036854775808, %bb.ei ]
  %.0.i.i401 = phi ptr [ %i.wx, %.preheader.i.i400 ], [ %i.wo, %bb.ei ] ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.0.i.i401, i64 40
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !127 ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.smin.i64(i64 %i.wv, i64 %.024.i.i) ; 2 uses
  %.1.i.i402 = tail call i64 @llvm.smax.i64(i64 %i.wv, i64 %.023.i.i) ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.0.i.i401, i64 64
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !263 ; 2 uses
  %.not32.i.i = icmp eq ptr %i.wx, %i.wo
  br i1 %.not32.i.i, label %.loopexit.i.i, label %.preheader.i.i400, !llvm.loop !264

.loopexit.i.i:                                    ; preds = %.preheader.i.i400, %bb.ei, %bb.eh
  %.226.i.i = phi i64 [ 9223372036854775807, %bb.ei ], [ 9223372036854775807, %bb.eh ], [ %spec.select.i.i, %.preheader.i.i400 ]
  %.2.i279.i = phi i64 [ -9223372036854775808, %bb.ei ], [ -9223372036854775808, %bb.eh ], [ %.1.i.i402, %.preheader.i.i400 ]
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv.i.i399
  store i64 %.226.i.i, ptr %i.wy, align 8, !tbaa !71
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.i.i399
  store i64 %.2.i279.i, ptr %i.wz, align 8, !tbaa !71
  %indvars.iv.next.i.i403 = add nuw nsw i64 %indvars.iv.i.i399, 1 ; 2 uses
  %exitcond.not.i.i404 = icmp eq i64 %indvars.iv.next.i.i403, %wide.trip.count.i.i398
  br i1 %exitcond.not.i.i404, label %af_compute_vertical_extrema.exit.i, label %bb.eh, !llvm.loop !265

af_compute_vertical_extrema.exit.i:               ; preds = %.loopexit.i.i, %bb.eg, %bb.ef
  br i1 %.1256.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %af_compute_vertical_extrema.exit.i
  %i.xa = load i32, ptr %i.tv, align 4, !tbaa !259 ; 8 uses
  %i.xb = icmp sgt i32 %i.xa, 1
  br i1 %i.xb, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %af_compute_vertical_extrema.exit.i
  br i1 %.1254.i, label %bb.el, label %bb.gi

bb.el:                                            ; preds = %bb.ek
  %i.xc = load i32, ptr %i.tv, align 4, !tbaa !259 ; 2 uses
  %i.xd = icmp sgt i32 %i.xc, 2
  br i1 %i.xd, label %.lr.ph.i.i.i, label %bb.gi

bb.em:                                            ; preds = %bb.ej
  br i1 %.1254.i, label %.thread.i396, label %.lr.ph.i288.i

.thread.i396:                                     ; preds = %bb.em
  %i.xe = icmp eq i32 %i.xa, 2
  br i1 %i.xe, label %.lr.ph.i295.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread.i396, %bb.el
  %i.xf = phi i32 [ %i.xa, %.thread.i396 ], [ %i.xc, %bb.el ] ; 7 uses
  %i.xg = load ptr, ptr %i.tx, align 8, !tbaa !261 ; 7 uses
  %i.xh = load ptr, ptr %i.ty, align 8, !tbaa !262 ; 6 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.xf to i64 ; 5 uses
  %i.xi = add nsw i64 %wide.trip.count.i.i.i, -1  ; 2 uses
  %xtraiter609 = and i64 %wide.trip.count.i.i.i, 1
  %i.xj = icmp eq i64 %i.xi, 0
  br i1 %i.xj, label %.epil.preheader608, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter613 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.en

bb.en:                                            ; preds = %bb.et, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.et ] ; 5 uses
  %.01624.i.i.i = phi i64 [ -9223372036854775808, %.lr.ph.i.i.i.new ], [ %.1.i.i.i.1, %bb.et ] ; 3 uses
  %.01723.i.i.i = phi i64 [ 9223372036854775807, %.lr.ph.i.i.i.new ], [ %.118.i.i.i.1, %bb.et ] ; 2 uses
  %.01922.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %.120.i.i.i.1, %bb.et ]
  %niter614 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter614.next.1, %bb.et ]
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %indvars.iv.i.i.i
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !71 ; 2 uses
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv.i.i.i
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !71 ; 3 uses
  %i.xo = icmp sgt i64 %i.xn, %.01624.i.i.i
  br i1 %i.xo, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.xp = icmp eq i64 %i.xn, %.01624.i.i.i
  %i.xq = icmp sgt i64 %i.xl, %.01723.i.i.i
  %or.cond.i.i.i = select i1 %i.xp, i1 %i.xq, i1 false
  br i1 %or.cond.i.i.i, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.xr = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.120.i.i.i = phi i32 [ %i.xr, %bb.ep ], [ %.01922.i.i.i, %bb.eo ]
  %.118.i.i.i = phi i64 [ %i.xl, %bb.ep ], [ %.01723.i.i.i, %bb.eo ] ; 2 uses
  %.1.i.i.i = phi i64 [ %i.xn, %bb.ep ], [ %.01624.i.i.i, %bb.eo ] ; 3 uses
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %indvars.iv.next.i.i.i
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !71 ; 2 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv.next.i.i.i
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !71 ; 3 uses
  %i.xw = icmp sgt i64 %i.xv, %.1.i.i.i
  br i1 %i.xw, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.xx = icmp eq i64 %i.xv, %.1.i.i.i
  %i.xy = icmp sgt i64 %i.xt, %.118.i.i.i
  %or.cond.i.i.i.1 = select i1 %i.xx, i1 %i.xy, i1 false
  br i1 %or.cond.i.i.i.1, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.xz = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.120.i.i.i.1 = phi i32 [ %i.xz, %bb.es ], [ %.120.i.i.i, %bb.er ] ; 3 uses
  %.118.i.i.i.1 = phi i64 [ %i.xt, %bb.es ], [ %.118.i.i.i, %bb.er ] ; 2 uses
  %.1.i.i.i.1 = phi i64 [ %i.xv, %bb.es ], [ %.1.i.i.i, %bb.er ] ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter614.next.1 = add nuw i64 %niter614, 2     ; 2 uses
  %niter614.ncmp.1 = icmp eq i64 %niter614.next.1, %unroll_iter613
  br i1 %niter614.ncmp.1, label %.lr.ph.i280.i.unr-lcssa, label %bb.en, !llvm.loop !266

.lr.ph.i280.i.unr-lcssa:                          ; preds = %bb.et
  %lcmp.mod610.not = icmp eq i64 %xtraiter609, 0
  br i1 %lcmp.mod610.not, label %.lr.ph.i280.i, label %.epil.preheader608

.epil.preheader608:                               ; preds = %.lr.ph.i280.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i280.i.unr-lcssa ] ; 3 uses
  %.01624.i.i.i.epil.init = phi i64 [ -9223372036854775808, %.lr.ph.i.i.i ], [ %.1.i.i.i.1, %.lr.ph.i280.i.unr-lcssa ] ; 2 uses
  %.01723.i.i.i.epil.init = phi i64 [ 9223372036854775807, %.lr.ph.i.i.i ], [ %.118.i.i.i.1, %.lr.ph.i280.i.unr-lcssa ]
  %.01922.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.120.i.i.i.1, %.lr.ph.i280.i.unr-lcssa ]
  %lcmp.mod612 = trunc i32 %i.xf to i1
  tail call void @llvm.assume(i1 %lcmp.mod612)
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv.i.i.i.epil.init
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !71 ; 2 uses
  %i.yc = icmp sgt i64 %i.yb, %.01624.i.i.i.epil.init
  br i1 %i.yc, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.epil.preheader608
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %indvars.iv.i.i.i.epil.init
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !71
  %i.yf = icmp eq i64 %i.yb, %.01624.i.i.i.epil.init
  %i.yg = icmp sgt i64 %i.ye, %.01723.i.i.i.epil.init
  %or.cond.i.i.i.epil = select i1 %i.yf, i1 %i.yg, i1 false
  br i1 %or.cond.i.i.i.epil, label %bb.ev, label %.lr.ph.i280.i

bb.ev:                                            ; preds = %bb.eu, %.epil.preheader608
  %i.yh = trunc nuw nsw i64 %indvars.iv.i.i.i.epil.init to i32
  br label %.lr.ph.i280.i

.lr.ph.i280.i:                                    ; preds = %bb.eu, %bb.ev, %.lr.ph.i280.i.unr-lcssa
  %.120.i.i.i.lcssa = phi i32 [ %.120.i.i.i.1, %.lr.ph.i280.i.unr-lcssa ], [ %i.yh, %bb.ev ], [ %.01922.i.i.i.epil.init, %bb.eu ] ; 2 uses
  %i.yi = sext i32 %.120.i.i.i.lcssa to i64
  %i.yj = getelementptr inbounds [8 x i8], ptr %i.xg, i64 %i.yi
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !71 ; 3 uses
  %i.yl = zext i32 %.120.i.i.i.lcssa to i64       ; 3 uses
  %xtraiter616 = and i64 %wide.trip.count.i.i.i, 1
  %i.ym = icmp eq i64 %i.xi, 0
  br i1 %i.ym, label %.epil.preheader615, label %.lr.ph.i280.i.new

.lr.ph.i280.i.new:                                ; preds = %.lr.ph.i280.i
  %unroll_iter620 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fc, %.lr.ph.i280.i.new
  %indvars.iv.i281.i = phi i64 [ 0, %.lr.ph.i280.i.new ], [ %indvars.iv.next.i283.i.1, %bb.fc ] ; 6 uses
  %.02028.i.i = phi i64 [ -9223372036854775808, %.lr.ph.i280.i.new ], [ %.2.i282.i.1, %bb.fc ] ; 4 uses
  %.02127.i.i = phi i32 [ 0, %.lr.ph.i280.i.new ], [ %.223.i.i.1, %bb.fc ] ; 3 uses
  %niter621 = phi i64 [ 0, %.lr.ph.i280.i.new ], [ %niter621.next.1, %bb.fc ]
  %i.yn = icmp eq i64 %indvars.iv.i281.i, %i.yl
  br i1 %i.yn, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv.i281.i
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !71 ; 2 uses
  %i.yq = icmp sgt i64 %i.yp, %.02028.i.i
  br i1 %i.yq, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %indvars.iv.i281.i
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !71
  %i.yt = icmp slt i64 %i.ys, %i.yk               ; 2 uses
  %i.yu = trunc nuw nsw i64 %indvars.iv.i281.i to i32
  %spec.select.i287.i = select i1 %i.yt, i32 %i.yu, i32 %.02127.i.i
  %spec.select26.i.i = select i1 %i.yt, i64 %i.yp, i64 %.02028.i.i
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %bb.ew
  %.223.i.i = phi i32 [ %.02127.i.i, %bb.ew ], [ %.02127.i.i, %bb.ex ], [ %spec.select.i287.i, %bb.ey ] ; 3 uses
  %.2.i282.i = phi i64 [ %.02028.i.i, %bb.ew ], [ %.02028.i.i, %bb.ex ], [ %spec.select26.i.i, %bb.ey ] ; 4 uses
  %indvars.iv.next.i283.i = or disjoint i64 %indvars.iv.i281.i, 1 ; 4 uses
  %i.yv = icmp eq i64 %indvars.iv.next.i283.i, %i.yl
  br i1 %i.yv, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv.next.i283.i
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !71 ; 2 uses
  %i.yy = icmp sgt i64 %i.yx, %.2.i282.i
  br i1 %i.yy, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %indvars.iv.next.i283.i
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !71
  %i.zb = icmp slt i64 %i.za, %i.yk               ; 2 uses
  %i.zc = trunc nuw nsw i64 %indvars.iv.next.i283.i to i32
  %spec.select.i287.i.1 = select i1 %i.zb, i32 %i.zc, i32 %.223.i.i
  %spec.select26.i.i.1 = select i1 %i.zb, i64 %i.yx, i64 %.2.i282.i
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %.223.i.i.1 = phi i32 [ %.223.i.i, %bb.ez ], [ %.223.i.i, %bb.fa ], [ %spec.select.i287.i.1, %bb.fb ] ; 3 uses
  %.2.i282.i.1 = phi i64 [ %.2.i282.i, %bb.ez ], [ %.2.i282.i, %bb.fa ], [ %spec.select26.i.i.1, %bb.fb ] ; 2 uses
  %indvars.iv.next.i283.i.1 = add nuw nsw i64 %indvars.iv.i281.i, 2 ; 2 uses
  %niter621.next.1 = add nuw i64 %niter621, 2     ; 2 uses
  %niter621.ncmp.1 = icmp eq i64 %niter621.next.1, %unroll_iter620
  br i1 %niter621.ncmp.1, label %.lr.ph.i295.i.loopexit.unr-lcssa, label %bb.ew, !llvm.loop !267

.lr.ph.i288.i:                                    ; preds = %bb.em
  %i.zd = load ptr, ptr %i.tx, align 8, !tbaa !261 ; 3 uses
  %i.ze = load ptr, ptr %i.ty, align 8, !tbaa !262 ; 3 uses
  %wide.trip.count.i289.i = zext nneg i32 %i.xa to i64 ; 2 uses
  %xtraiter602 = and i64 %wide.trip.count.i289.i, 1
  %unroll_iter606 = and i64 %wide.trip.count.i289.i, 2147483646
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fj, %.lr.ph.i288.i
  %indvars.iv.i290.i = phi i64 [ 0, %.lr.ph.i288.i ], [ %indvars.iv.next.i292.i.1, %bb.fj ] ; 5 uses
  %.01624.i.i390 = phi i64 [ -9223372036854775808, %.lr.ph.i288.i ], [ %.1.i291.i.1, %bb.fj ] ; 3 uses
  %.01723.i.i391 = phi i64 [ 9223372036854775807, %.lr.ph.i288.i ], [ %.118.i.i395.1, %bb.fj ] ; 2 uses
  %.01922.i.i392 = phi i32 [ 0, %.lr.ph.i288.i ], [ %.120.i.i394.1, %bb.fj ]
  %niter607 = phi i64 [ 0, %.lr.ph.i288.i ], [ %niter607.next.1, %bb.fj ]
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %indvars.iv.i290.i
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !71 ; 2 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv.i290.i
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !71 ; 3 uses
  %i.zj = icmp sgt i64 %i.zi, %.01624.i.i390
  br i1 %i.zj, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.zk = icmp eq i64 %i.zi, %.01624.i.i390
  %i.zl = icmp sgt i64 %i.zg, %.01723.i.i391
  %or.cond.i.i393 = select i1 %i.zk, i1 %i.zl, i1 false
  br i1 %or.cond.i.i393, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.zm = trunc nuw nsw i64 %indvars.iv.i290.i to i32
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.120.i.i394 = phi i32 [ %i.zm, %bb.ff ], [ %.01922.i.i392, %bb.fe ]
  %.118.i.i395 = phi i64 [ %i.zg, %bb.ff ], [ %.01723.i.i391, %bb.fe ] ; 2 uses
  %.1.i291.i = phi i64 [ %i.zi, %bb.ff ], [ %.01624.i.i390, %bb.fe ] ; 3 uses
  %indvars.iv.next.i292.i = or disjoint i64 %indvars.iv.i290.i, 1 ; 3 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %indvars.iv.next.i292.i
  %i.zo = load i64, ptr %i.zn, align 8, !tbaa !71 ; 2 uses
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv.next.i292.i
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !71 ; 3 uses
  %i.zr = icmp sgt i64 %i.zq, %.1.i291.i
  br i1 %i.zr, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.zs = icmp eq i64 %i.zq, %.1.i291.i
  %i.zt = icmp sgt i64 %i.zo, %.118.i.i395
  %or.cond.i.i393.1 = select i1 %i.zs, i1 %i.zt, i1 false
  br i1 %or.cond.i.i393.1, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.zu = trunc nuw nsw i64 %indvars.iv.next.i292.i to i32
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.120.i.i394.1 = phi i32 [ %i.zu, %bb.fi ], [ %.120.i.i394, %bb.fh ] ; 3 uses
  %.118.i.i395.1 = phi i64 [ %i.zo, %bb.fi ], [ %.118.i.i395, %bb.fh ] ; 2 uses
  %.1.i291.i.1 = phi i64 [ %i.zq, %bb.fi ], [ %.1.i291.i, %bb.fh ] ; 3 uses
  %indvars.iv.next.i292.i.1 = add nuw nsw i64 %indvars.iv.i290.i, 2 ; 4 uses
  %niter607.next.1 = add nuw i64 %niter607, 2     ; 2 uses
  %niter607.ncmp.1 = icmp eq i64 %niter607.next.1, %unroll_iter606
  br i1 %niter607.ncmp.1, label %.lr.ph.i295.i.loopexit569.unr-lcssa, label %bb.fd, !llvm.loop !266

.lr.ph.i295.i.loopexit.unr-lcssa:                 ; preds = %bb.fc
  %lcmp.mod617.not = icmp eq i64 %xtraiter616, 0
  br i1 %lcmp.mod617.not, label %.lr.ph.i295.i, label %.epil.preheader615

.epil.preheader615:                               ; preds = %.lr.ph.i295.i.loopexit.unr-lcssa, %.lr.ph.i280.i
  %indvars.iv.i281.i.epil.init = phi i64 [ 0, %.lr.ph.i280.i ], [ %indvars.iv.next.i283.i.1, %.lr.ph.i295.i.loopexit.unr-lcssa ] ; 4 uses
  %.02028.i.i.epil.init = phi i64 [ -9223372036854775808, %.lr.ph.i280.i ], [ %.2.i282.i.1, %.lr.ph.i295.i.loopexit.unr-lcssa ]
  %.02127.i.i.epil.init = phi i32 [ 0, %.lr.ph.i280.i ], [ %.223.i.i.1, %.lr.ph.i295.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod619 = trunc i32 %i.xf to i1
  tail call void @llvm.assume(i1 %lcmp.mod619)
  %i.zv = icmp eq i64 %indvars.iv.i281.i.epil.init, %i.yl
  br i1 %i.zv, label %.lr.ph.i295.i, label %bb.fk

bb.fk:                                            ; preds = %.epil.preheader615
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv.i281.i.epil.init
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !71
  %i.zy = icmp sgt i64 %i.zx, %.02028.i.i.epil.init
  br i1 %i.zy, label %bb.fl, label %.lr.ph.i295.i

bb.fl:                                            ; preds = %bb.fk
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %indvars.iv.i281.i.epil.init
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !71
  %i.aab = icmp slt i64 %i.aaa, %i.yk
  %i.aac = trunc nuw nsw i64 %indvars.iv.i281.i.epil.init to i32
  %spec.select.i287.i.epil = select i1 %i.aab, i32 %i.aac, i32 %.02127.i.i.epil.init
  br label %.lr.ph.i295.i

.lr.ph.i295.i.loopexit569.unr-lcssa:              ; preds = %bb.fj
  %lcmp.mod603.not = icmp eq i64 %xtraiter602, 0
  br i1 %lcmp.mod603.not, label %.lr.ph.i295.i, label %.epil.preheader601

.epil.preheader601:                               ; preds = %.lr.ph.i295.i.loopexit569.unr-lcssa
  %lcmp.mod605 = trunc i32 %i.xa to i1
  tail call void @llvm.assume(i1 %lcmp.mod605)
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv.next.i292.i.1
  %i.aae = load i64, ptr %i.aad, align 8, !tbaa !71 ; 2 uses
  %i.aaf = icmp sgt i64 %i.aae, %.1.i291.i.1
  br i1 %i.aaf, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %.epil.preheader601
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %indvars.iv.next.i292.i.1
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !71
  %i.aai = icmp eq i64 %i.aae, %.1.i291.i.1
  %i.aaj = icmp sgt i64 %i.aah, %.118.i.i395.1
  %or.cond.i.i393.epil = select i1 %i.aai, i1 %i.aaj, i1 false
  br i1 %or.cond.i.i393.epil, label %bb.fn, label %.lr.ph.i295.i

bb.fn:                                            ; preds = %bb.fm, %.epil.preheader601
  %i.aak = trunc nuw nsw i64 %indvars.iv.next.i292.i.1 to i32
  br label %.lr.ph.i295.i

.lr.ph.i295.i:                                    ; preds = %.lr.ph.i295.i.loopexit569.unr-lcssa, %bb.fn, %bb.fm, %.lr.ph.i295.i.loopexit.unr-lcssa, %bb.fl, %bb.fk, %.epil.preheader615, %.thread.i396
  %i.aal = phi i32 [ 2, %.thread.i396 ], [ %i.xf, %.lr.ph.i295.i.loopexit.unr-lcssa ], [ %i.xf, %.epil.preheader615 ], [ %i.xf, %bb.fk ], [ %i.xf, %bb.fl ], [ %i.xa, %bb.fm ], [ %i.xa, %bb.fn ], [ %i.xa, %.lr.ph.i295.i.loopexit569.unr-lcssa ] ; 3 uses
  %i.aam = phi i32 [ 0, %.thread.i396 ], [ %spec.select.i287.i.epil, %bb.fl ], [ %.223.i.i.1, %.lr.ph.i295.i.loopexit.unr-lcssa ], [ %.02127.i.i.epil.init, %.epil.preheader615 ], [ %.02127.i.i.epil.init, %bb.fk ], [ %.120.i.i394.1, %.lr.ph.i295.i.loopexit569.unr-lcssa ], [ %i.aak, %bb.fn ], [ %.120.i.i394.1, %bb.fm ] ; 2 uses
  %i.aan = load ptr, ptr %i.tw, align 8, !tbaa !260 ; 2 uses
  %i.aao = zext i32 %i.aam to i64                 ; 4 uses
  %wide.trip.count.i296.i = zext i32 %i.aal to i64 ; 7 uses
  br label %bb.fo

bb.fo:                                            ; preds = %.loopexit.i301.i, %.lr.ph.i295.i
  %indvars.iv.i297.i = phi i64 [ 0, %.lr.ph.i295.i ], [ %indvars.iv.next.i302.i, %.loopexit.i301.i ] ; 3 uses
  %.03872.i.i = phi i64 [ 9223372036854775807, %.lr.ph.i295.i ], [ %.4.i.i, %.loopexit.i301.i ] ; 3 uses
  %.03971.i.i = phi i64 [ -9223372036854775808, %.lr.ph.i295.i ], [ %.342.i.i, %.loopexit.i301.i ] ; 3 uses
  %.04370.i.i = phi i64 [ 9223372036854775807, %.lr.ph.i295.i ], [ %.447.i.i, %.loopexit.i301.i ] ; 3 uses
  %.04869.i.i = phi i64 [ -9223372036854775808, %.lr.ph.i295.i ], [ %.351.i.i, %.loopexit.i301.i ] ; 3 uses
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %indvars.iv.i297.i
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !119 ; 6 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 64
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !263
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 64
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !263
  %i.aav = icmp eq ptr %i.aau, %i.aaq
  br i1 %i.aav, label %.loopexit.i301.i, label %.preheader.i298.i

.preheader.i298.i:                                ; preds = %bb.fo
  %i.aaw = icmp eq i64 %indvars.iv.i297.i, %i.aao
  br i1 %i.aaw, label %.preheader.split.us.i.i, label %.preheader.split.i.i

.preheader.split.us.i.i:                          ; preds = %.preheader.i298.i, %.preheader.split.us.i.i
  %.149.us.i.i = phi i64 [ %spec.select64.us.i.i, %.preheader.split.us.i.i ], [ %.04869.i.i, %.preheader.i298.i ]
  %.144.us.i.i = phi i64 [ %spec.select.us.i.i, %.preheader.split.us.i.i ], [ %.04370.i.i, %.preheader.i298.i ]
  %.0.us.i.i = phi ptr [ %i.aay, %.preheader.split.us.i.i ], [ %i.aaq, %.preheader.i298.i ]
  %i.aax = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 64
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !263 ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 32
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !120 ; 2 uses
  %spec.select.us.i.i = tail call i64 @llvm.smin.i64(i64 %i.aba, i64 %.144.us.i.i) ; 2 uses
  %spec.select64.us.i.i = tail call i64 @llvm.smax.i64(i64 %i.aba, i64 %.149.us.i.i) ; 2 uses
  %.not61.us.i.i = icmp eq ptr %i.aay, %i.aaq
  br i1 %.not61.us.i.i, label %.loopexit.i301.i, label %.preheader.split.us.i.i, !llvm.loop !292

.preheader.split.i.i:                             ; preds = %.preheader.i298.i, %.preheader.split.i.i
  %.140.i.i = phi i64 [ %spec.select65.i.i, %.preheader.split.i.i ], [ %.03971.i.i, %.preheader.i298.i ]
  %.1.i299.i = phi i64 [ %spec.select62.i.i, %.preheader.split.i.i ], [ %.03872.i.i, %.preheader.i298.i ]
  %.0.i300.i = phi ptr [ %i.abc, %.preheader.split.i.i ], [ %i.aaq, %.preheader.i298.i ]
  %i.abb = getelementptr inbounds nuw i8, ptr %.0.i300.i, i64 64
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !263 ; 3 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 32
  %i.abe = load i64, ptr %i.abd, align 8, !tbaa !120 ; 2 uses
  %spec.select62.i.i = tail call i64 @llvm.smin.i64(i64 %i.abe, i64 %.1.i299.i) ; 2 uses
  %spec.select65.i.i = tail call i64 @llvm.smax.i64(i64 %i.abe, i64 %.140.i.i) ; 2 uses
  %.not61.i.i = icmp eq ptr %i.abc, %i.aaq
  br i1 %.not61.i.i, label %.loopexit.i301.i, label %.preheader.split.i.i, !llvm.loop !292

.loopexit.i301.i:                                 ; preds = %.preheader.split.i.i, %.preheader.split.us.i.i, %bb.fo
  %.351.i.i = phi i64 [ %.04869.i.i, %bb.fo ], [ %spec.select64.us.i.i, %.preheader.split.us.i.i ], [ %.04869.i.i, %.preheader.split.i.i ] ; 4 uses
  %.447.i.i = phi i64 [ %.04370.i.i, %bb.fo ], [ %spec.select.us.i.i, %.preheader.split.us.i.i ], [ %.04370.i.i, %.preheader.split.i.i ] ; 4 uses
  %.342.i.i = phi i64 [ %.03971.i.i, %bb.fo ], [ %.03971.i.i, %.preheader.split.us.i.i ], [ %spec.select65.i.i, %.preheader.split.i.i ] ; 4 uses
  %.4.i.i = phi i64 [ %.03872.i.i, %bb.fo ], [ %.03872.i.i, %.preheader.split.us.i.i ], [ %spec.select62.i.i, %.preheader.split.i.i ] ; 4 uses
  %indvars.iv.next.i302.i = add nuw nsw i64 %indvars.iv.i297.i, 1 ; 2 uses
  %exitcond.not.i303.i = icmp eq i64 %indvars.iv.next.i302.i, %wide.trip.count.i296.i
  br i1 %exitcond.not.i303.i, label %._crit_edge.i.i, label %bb.fo, !llvm.loop !293

._crit_edge.i.i:                                  ; preds = %.loopexit.i301.i
  %.not.i304.i = icmp sgt i64 %.4.i.i, %.351.i.i
  %.not58.i.i = icmp sgt i64 %.351.i.i, %.342.i.i
  %or.cond.i305.i = select i1 %.not.i304.i, i1 true, i1 %.not58.i.i
  br i1 %or.cond.i305.i, label %bb.fp, label %af_check_contour_horizontal_overlap.exit.thread.i

bb.fp:                                            ; preds = %._crit_edge.i.i
  %.not59.i.i = icmp sgt i64 %.4.i.i, %.447.i.i
  %.not60.i.i = icmp sgt i64 %.447.i.i, %.342.i.i
  %or.cond63.i.i = select i1 %.not59.i.i, i1 true, i1 %.not60.i.i
  br i1 %or.cond63.i.i, label %af_check_contour_horizontal_overlap.exit.i, label %af_check_contour_horizontal_overlap.exit.thread.i

af_check_contour_horizontal_overlap.exit.i:       ; preds = %bb.fp
  %i.abf = icmp slt i64 %.351.i.i, %.342.i.i
  %i.abg = icmp sgt i64 %.447.i.i, %.4.i.i
  %.not417.i = select i1 %i.abf, i1 true, i1 %i.abg
  br i1 %.not417.i, label %af_glyph_hints_apply_vertical_separation_adjustments.exit, label %af_check_contour_horizontal_overlap.exit.thread.i

af_check_contour_horizontal_overlap.exit.thread.i: ; preds = %af_check_contour_horizontal_overlap.exit.i, %bb.fp, %._crit_edge.i.i
  %i.abh = load ptr, ptr %i.tx, align 8, !tbaa !261 ; 9 uses
  %i.abi = sext i32 %i.aam to i64                 ; 2 uses
  %i.abj = getelementptr inbounds [8 x i8], ptr %i.abh, i64 %i.abi
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !71 ; 9 uses
  %i.abl = load ptr, ptr %i.ty, align 8, !tbaa !262 ; 9 uses
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.abl, i64 %i.abi
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !71 ; 3 uses
  %i.abo = sub i64 %i.abn, %i.abk                 ; 3 uses
  %i.abp = icmp sgt i64 %i.abo, %.1150
  br i1 %i.abp, label %af_glyph_hints_apply_vertical_separation_adjustments.exit, label %.lr.ph.i383.preheader

.lr.ph.i383.preheader:                            ; preds = %af_check_contour_horizontal_overlap.exit.thread.i
  %i.abq = add nsw i64 %wide.trip.count.i296.i, -1 ; 2 uses
  %xtraiter622 = and i64 %wide.trip.count.i296.i, 1
  %i.abr = icmp eq i64 %i.abq, 0
  br i1 %i.abr, label %.lr.ph.i383.epil.preheader, label %.lr.ph.i383.preheader.new

.lr.ph.i383.preheader.new:                        ; preds = %.lr.ph.i383.preheader
  %unroll_iter626 = and i64 %wide.trip.count.i296.i, 4294967294
  br label %.lr.ph.i383

.lr.ph.i383:                                      ; preds = %bb.fs, %.lr.ph.i383.preheader.new
  %indvars.iv.i384 = phi i64 [ 0, %.lr.ph.i383.preheader.new ], [ %indvars.iv.next.i385.1, %bb.fs ] ; 5 uses
  %.0242428.i = phi i64 [ 64, %.lr.ph.i383.preheader.new ], [ %.2244.i.1, %bb.fs ] ; 3 uses
  %niter627 = phi i64 [ 0, %.lr.ph.i383.preheader.new ], [ %niter627.next.1, %bb.fs ]
  %i.abs = icmp eq i64 %indvars.iv.i384, %i.aao
  br i1 %i.abs, label %.lr.ph.i383.1, label %bb.fq

bb.fq:                                            ; preds = %.lr.ph.i383
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %indvars.iv.i384
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !71
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %indvars.iv.i384
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !71
  %i.abx = sub i64 %i.abk, %i.abw                 ; 3 uses
  %i.aby = icmp slt i64 %i.abx, 64
  %i.abz = icmp slt i64 %i.abx, %.0242428.i
  %or.cond268.i = select i1 %i.aby, i1 %i.abz, i1 false
  %i.aca = icmp slt i64 %i.abu, %i.abk
  %or.cond269.i = select i1 %or.cond268.i, i1 %i.aca, i1 false
  %.1243.i = select i1 %or.cond269.i, i64 %i.abx, i64 %.0242428.i
  br label %.lr.ph.i383.1

.lr.ph.i383.1:                                    ; preds = %bb.fq, %.lr.ph.i383
  %.2244.i = phi i64 [ %.1243.i, %bb.fq ], [ %.0242428.i, %.lr.ph.i383 ] ; 3 uses
  %indvars.iv.next.i385 = or disjoint i64 %indvars.iv.i384, 1 ; 3 uses
  %i.acb = icmp eq i64 %indvars.iv.next.i385, %i.aao
  br i1 %i.acb, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph.i383.1
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %indvars.iv.next.i385
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !71
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %indvars.iv.next.i385
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !71
  %i.acg = sub i64 %i.abk, %i.acf                 ; 3 uses
  %i.ach = icmp slt i64 %i.acg, 64
  %i.aci = icmp slt i64 %i.acg, %.2244.i
  %or.cond268.i.1 = select i1 %i.ach, i1 %i.aci, i1 false
  %i.acj = icmp slt i64 %i.acd, %i.abk
  %or.cond269.i.1 = select i1 %or.cond268.i.1, i1 %i.acj, i1 false
  %.1243.i.1 = select i1 %or.cond269.i.1, i64 %i.acg, i64 %.2244.i
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.lr.ph.i383.1
  %.2244.i.1 = phi i64 [ %.1243.i.1, %bb.fr ], [ %.2244.i, %.lr.ph.i383.1 ] ; 3 uses
  %indvars.iv.next.i385.1 = add nuw nsw i64 %indvars.iv.i384, 2 ; 2 uses
  %niter627.next.1 = add nuw i64 %niter627, 2     ; 2 uses
  %niter627.ncmp.1 = icmp eq i64 %niter627.next.1, %unroll_iter626
  br i1 %niter627.ncmp.1, label %._crit_edge.i387.unr-lcssa, label %.lr.ph.i383, !llvm.loop !294

._crit_edge.i387.unr-lcssa:                       ; preds = %bb.fs
  %lcmp.mod623.not = icmp eq i64 %xtraiter622, 0
  br i1 %lcmp.mod623.not, label %._crit_edge.i387, label %.lr.ph.i383.epil.preheader

.lr.ph.i383.epil.preheader:                       ; preds = %._crit_edge.i387.unr-lcssa, %.lr.ph.i383.preheader
  %indvars.iv.i384.epil.init = phi i64 [ 0, %.lr.ph.i383.preheader ], [ %indvars.iv.next.i385.1, %._crit_edge.i387.unr-lcssa ] ; 3 uses
  %.0242428.i.epil.init = phi i64 [ 64, %.lr.ph.i383.preheader ], [ %.2244.i.1, %._crit_edge.i387.unr-lcssa ] ; 3 uses
  %lcmp.mod625 = trunc i32 %i.aal to i1
  tail call void @llvm.assume(i1 %lcmp.mod625)
  %i.ack = icmp eq i64 %indvars.iv.i384.epil.init, %i.aao
  br i1 %i.ack, label %._crit_edge.i387, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph.i383.epil.preheader
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %indvars.iv.i384.epil.init
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !71
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %indvars.iv.i384.epil.init
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !71
  %i.acp = sub i64 %i.abk, %i.aco                 ; 3 uses
  %i.acq = icmp slt i64 %i.acp, 64
  %i.acr = icmp slt i64 %i.acp, %.0242428.i.epil.init
  %or.cond268.i.epil = select i1 %i.acq, i1 %i.acr, i1 false
  %i.acs = icmp slt i64 %i.acm, %i.abk
  %or.cond269.i.epil = select i1 %or.cond268.i.epil, i1 %i.acs, i1 false
  %.1243.i.epil = select i1 %or.cond269.i.epil, i64 %i.acp, i64 %.0242428.i.epil.init
  br label %._crit_edge.i387

._crit_edge.i387:                                 ; preds = %.lr.ph.i383.epil.preheader, %bb.ft, %._crit_edge.i387.unr-lcssa
  %.2244.i.lcssa = phi i64 [ %.2244.i.1, %._crit_edge.i387.unr-lcssa ], [ %.1243.i.epil, %bb.ft ], [ %.0242428.i.epil.init, %.lr.ph.i383.epil.preheader ] ; 2 uses
  %i.act = sub nsw i64 64, %.2244.i.lcssa         ; 3 uses
  %i.acu = and i32 %.0248.i, 16
  %i.acv = icmp ne i32 %i.acu, 0                  ; 3 uses
  %i.acw = and i32 %.0248.i, 64
  %i.acx = icmp ne i32 %i.acw, 0                  ; 2 uses
  %i.acy = and i32 %.0248.i, 80
  %or.cond9.not.i = icmp eq i32 %i.acy, 0
  br i1 %or.cond9.not.i, label %bb.gd, label %bb.fu

bb.fu:                                            ; preds = %._crit_edge.i387
  %brmerge.i = or i1 %.1256.i, %i.acx
  br i1 %brmerge.i, label %af_find_highest_contour.exit320.i, label %.lr.ph.i308.i.preheader

.lr.ph.i308.i.preheader:                          ; preds = %bb.fu
  %xtraiter628 = and i64 %wide.trip.count.i296.i, 1
  %i.acz = icmp eq i64 %i.abq, 0
  br i1 %i.acz, label %.lr.ph.i308.i.epil.preheader, label %.lr.ph.i308.i.preheader.new

.lr.ph.i308.i.preheader.new:                      ; preds = %.lr.ph.i308.i.preheader
  %unroll_iter632 = and i64 %wide.trip.count.i296.i, 4294967294
  br label %.lr.ph.i308.i

.lr.ph.i308.i:                                    ; preds = %bb.fz, %.lr.ph.i308.i.preheader.new
  %indvars.iv.i310.i = phi i64 [ 0, %.lr.ph.i308.i.preheader.new ], [ %indvars.iv.next.i318.i.1, %bb.fz ] ; 5 uses
  %.01624.i311.i = phi i64 [ -9223372036854775808, %.lr.ph.i308.i.preheader.new ], [ %.1.i317.i.1, %bb.fz ] ; 3 uses
  %.01723.i312.i = phi i64 [ 9223372036854775807, %.lr.ph.i308.i.preheader.new ], [ %.118.i316.i.1, %bb.fz ] ; 2 uses
  %.01922.i313.i = phi i32 [ 0, %.lr.ph.i308.i.preheader.new ], [ %.120.i315.i.1, %bb.fz ]
  %niter633 = phi i64 [ 0, %.lr.ph.i308.i.preheader.new ], [ %niter633.next.1, %bb.fz ]
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %indvars.iv.i310.i
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !71 ; 2 uses
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %indvars.iv.i310.i
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !71 ; 3 uses
  %i.ade = icmp sgt i64 %i.add, %.01624.i311.i
  br i1 %i.ade, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph.i308.i
  %i.adf = icmp eq i64 %i.add, %.01624.i311.i
  %i.adg = icmp sgt i64 %i.adb, %.01723.i312.i
  %or.cond.i314.i = select i1 %i.adf, i1 %i.adg, i1 false
  br i1 %or.cond.i314.i, label %bb.fw, label %.lr.ph.i308.i.1

bb.fw:                                            ; preds = %bb.fv, %.lr.ph.i308.i
  %i.adh = trunc nuw nsw i64 %indvars.iv.i310.i to i32
  br label %.lr.ph.i308.i.1

.lr.ph.i308.i.1:                                  ; preds = %bb.fw, %bb.fv
  %.120.i315.i = phi i32 [ %i.adh, %bb.fw ], [ %.01922.i313.i, %bb.fv ]
  %.118.i316.i = phi i64 [ %i.adb, %bb.fw ], [ %.01723.i312.i, %bb.fv ] ; 2 uses
  %.1.i317.i = phi i64 [ %i.add, %bb.fw ], [ %.01624.i311.i, %bb.fv ] ; 3 uses
  %indvars.iv.next.i318.i = or disjoint i64 %indvars.iv.i310.i, 1 ; 3 uses
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %indvars.iv.next.i318.i
  %i.adj = load i64, ptr %i.adi, align 8, !tbaa !71 ; 2 uses
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %indvars.iv.next.i318.i
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !71 ; 3 uses
  %i.adm = icmp sgt i64 %i.adl, %.1.i317.i
  br i1 %i.adm, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %.lr.ph.i308.i.1
  %i.adn = icmp eq i64 %i.adl, %.1.i317.i
  %i.ado = icmp sgt i64 %i.adj, %.118.i316.i
  %or.cond.i314.i.1 = select i1 %i.adn, i1 %i.ado, i1 false
  br i1 %or.cond.i314.i.1, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx, %.lr.ph.i308.i.1
  %i.adp = trunc nuw nsw i64 %indvars.iv.next.i318.i to i32
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.120.i315.i.1 = phi i32 [ %i.adp, %bb.fy ], [ %.120.i315.i, %bb.fx ] ; 3 uses
  %.118.i316.i.1 = phi i64 [ %i.adj, %bb.fy ], [ %.118.i316.i, %bb.fx ] ; 2 uses
  %.1.i317.i.1 = phi i64 [ %i.adl, %bb.fy ], [ %.1.i317.i, %bb.fx ] ; 2 uses
  %indvars.iv.next.i318.i.1 = add nuw nsw i64 %indvars.iv.i310.i, 2 ; 2 uses
  %niter633.next.1 = add nuw i64 %niter633, 2     ; 2 uses
  %niter633.ncmp.1 = icmp eq i64 %niter633.next.1, %unroll_iter632
  br i1 %niter633.ncmp.1, label %af_find_highest_contour.exit320.i.loopexit.unr-lcssa, label %.lr.ph.i308.i, !llvm.loop !266

af_find_highest_contour.exit320.i.loopexit.unr-lcssa: ; preds = %bb.fz
  %lcmp.mod629.not = icmp eq i64 %xtraiter628, 0
  br i1 %lcmp.mod629.not, label %af_find_highest_contour.exit320.i.loopexit, label %.lr.ph.i308.i.epil.preheader

.lr.ph.i308.i.epil.preheader:                     ; preds = %af_find_highest_contour.exit320.i.loopexit.unr-lcssa, %.lr.ph.i308.i.preheader
  %indvars.iv.i310.i.epil.init = phi i64 [ 0, %.lr.ph.i308.i.preheader ], [ %indvars.iv.next.i318.i.1, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa ] ; 3 uses
  %.01624.i311.i.epil.init = phi i64 [ -9223372036854775808, %.lr.ph.i308.i.preheader ], [ %.1.i317.i.1, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa ] ; 2 uses
  %.01723.i312.i.epil.init = phi i64 [ 9223372036854775807, %.lr.ph.i308.i.preheader ], [ %.118.i316.i.1, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa ]
  %.01922.i313.i.epil.init = phi i32 [ 0, %.lr.ph.i308.i.preheader ], [ %.120.i315.i.1, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa ]
  %lcmp.mod631 = trunc i32 %i.aal to i1
  tail call void @llvm.assume(i1 %lcmp.mod631)
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %indvars.iv.i310.i.epil.init
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !71 ; 2 uses
  %i.ads = icmp sgt i64 %i.adr, %.01624.i311.i.epil.init
  br i1 %i.ads, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %.lr.ph.i308.i.epil.preheader
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %indvars.iv.i310.i.epil.init
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !71
  %i.adv = icmp eq i64 %i.adr, %.01624.i311.i.epil.init
  %i.adw = icmp sgt i64 %i.adu, %.01723.i312.i.epil.init
  %or.cond.i314.i.epil = select i1 %i.adv, i1 %i.adw, i1 false
  br i1 %or.cond.i314.i.epil, label %bb.gb, label %af_find_highest_contour.exit320.i.loopexit

bb.gb:                                            ; preds = %bb.ga, %.lr.ph.i308.i.epil.preheader
  %i.adx = trunc nuw nsw i64 %indvars.iv.i310.i.epil.init to i32
  br label %af_find_highest_contour.exit320.i.loopexit

af_find_highest_contour.exit320.i.loopexit:       ; preds = %bb.ga, %bb.gb, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa
  %.120.i315.i.lcssa = phi i32 [ %.120.i315.i.1, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa ], [ %i.adx, %bb.gb ], [ %.01922.i313.i.epil.init, %bb.ga ]
  %.pre477 = sext i32 %.120.i315.i.lcssa to i64   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.abh, i64 %.pre477
  %.pre478 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !71
  %.phi.trans.insert479 = getelementptr inbounds [8 x i8], ptr %i.abl, i64 %.pre477
  %.pre480 = load i64, ptr %.phi.trans.insert479, align 8, !tbaa !71
  %.pre481 = sub i64 %.pre480, %.pre478
  br label %af_find_highest_contour.exit320.i

af_find_highest_contour.exit320.i:                ; preds = %af_find_highest_contour.exit320.i.loopexit, %bb.fu
  %.pre-phi482 = phi i64 [ %.pre481, %af_find_highest_contour.exit320.i.loopexit ], [ %i.abo, %bb.fu ] ; 3 uses
  %or.cond12.i = and i1 %.1254.i, %i.acv
  %spec.select.i388 = select i1 %or.cond12.i, i64 %i.abn, i64 %i.abk
  %.0239.i = add i64 %i.act, %spec.select.i388
  %i.ady = and i64 %.0239.i, 63
  %i.adz = icmp eq i64 %i.ady, 0
  %i.aea = icmp slt i64 %.pre-phi482, 192
  %or.cond14.i = select i1 %i.adz, i1 %i.aea, i1 false
  br i1 %or.cond14.i, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %af_find_highest_contour.exit320.i
  %i.aeb = add nsw i64 %.pre-phi482, 32
  %i.aec = and i64 %i.aeb, -64
  %i.aed = sub nsw i64 %i.aec, %.pre-phi482
  %i.aee = sdiv i64 %i.aed, 2
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %af_find_highest_contour.exit320.i, %._crit_edge.i387
  %.0240.i = phi i64 [ %i.aee, %bb.gc ], [ 0, %af_find_highest_contour.exit320.i ], [ 0, %._crit_edge.i387 ] ; 2 uses
  %or.cond17.i = and i1 %.1256.i, %i.acv
  %or.cond20.i = and i1 %.1254.i, %i.acx
  %or.cond270.i = or i1 %or.cond17.i, %or.cond20.i
  %i.aef = select i1 %or.cond270.i, i64 %.0240.i, i64 0
  %.0241.i = add nsw i64 %i.aef, %i.act           ; 3 uses
  %i.aeg = icmp ne i64 %.0241.i, 0
  %i.aeh = icmp sgt i64 %.0241.i, -3
  %or.cond22.i = and i1 %i.aeg, %i.aeh
  br i1 %or.cond22.i, label %bb.ge, label %bb.gi

bb.ge:                                            ; preds = %bb.gd
  %i.aei = icmp slt i64 %.0241.i, 67
  %i.aej = icmp sgt i64 %.2244.i.lcssa, -3
  %or.cond24.i = select i1 %i.aei, i1 true, i1 %i.aej
  br i1 %or.cond24.i, label %.lr.ph.i322.i, label %bb.gi

.lr.ph.i322.i:                                    ; preds = %bb.ge
  %.neg.i389 = sdiv i64 %i.abo, -8                ; 2 uses
  %i.aek = add i64 %.neg.i389, %i.abk
  %sext.i.i = shl i64 %i.act, 32
  %i.ael = ashr exact i64 %sext.i.i, 32
  br label %bb.gf

bb.gf:                                            ; preds = %af_move_contour_vertically.exit.i.i, %.lr.ph.i322.i
  %indvars.iv.i324.i = phi i64 [ 0, %.lr.ph.i322.i ], [ %indvars.iv.next.i326.i, %af_move_contour_vertically.exit.i.i ] ; 4 uses
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %indvars.iv.i324.i
  %i.aen = load i64, ptr %i.aem, align 8, !tbaa !71 ; 2 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %indvars.iv.i324.i
  %i.aep = load i64, ptr %i.aeo, align 8, !tbaa !71
  %i.aeq = icmp slt i64 %i.aen, %i.aep
  %i.aer = icmp sgt i64 %i.aen, %i.aek
  %or.cond.i325.i = and i1 %i.aer, %i.aeq
  br i1 %or.cond.i325.i, label %bb.gg, label %af_move_contour_vertically.exit.i.i

bb.gg:                                            ; preds = %bb.gf
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %indvars.iv.i324.i
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aet, null
  br i1 %.not.i.i.i, label %af_move_contour_vertically.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.gg, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.aey, %.preheader.i.i.i ], [ %i.aet, %bb.gg ] ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40 ; 2 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !127
  %i.aew = add nsw i64 %i.aev, %i.ael
  store i64 %i.aew, ptr %i.aeu, align 8, !tbaa !127
  %i.aex = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !263 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.aey, %i.aet
  br i1 %.not8.i.i.i, label %af_move_contour_vertically.exit.i.i, label %.preheader.i.i.i, !llvm.loop !269

af_move_contour_vertically.exit.i.i:              ; preds = %.preheader.i.i.i, %bb.gg, %bb.gf
  %indvars.iv.next.i326.i = add nuw nsw i64 %indvars.iv.i324.i, 1 ; 2 uses
  %exitcond.not.i327.i = icmp eq i64 %indvars.iv.next.i326.i, %wide.trip.count.i296.i
  br i1 %exitcond.not.i327.i, label %af_move_contours_up.exit.i, label %bb.gf, !llvm.loop !270

af_move_contours_up.exit.i:                       ; preds = %af_move_contour_vertically.exit.i.i
  %or.cond27.i = and i1 %.1254.i, %i.acv
  br i1 %or.cond27.i, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %af_move_contours_up.exit.i
  %i.aez = add i64 %.neg.i389, %i.abn
  tail call fastcc void @af_move_contours_up(ptr noundef readonly %1, i64 noundef %i.aez, i64 noundef %.0240.i)
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %af_move_contours_up.exit.i, %bb.ge, %bb.gd, %bb.el, %bb.ek
  br i1 %.1252.i, label %bb.gj, label %af_glyph_hints_apply_vertical_separation_adjustments.exit

bb.gj:                                            ; preds = %bb.gi
  %i.afa = load i32, ptr %i.tv, align 4, !tbaa !259 ; 4 uses
  %i.afb = icmp sgt i32 %i.afa, 1
  br i1 %i.afb, label %.lr.ph.i354.i, label %af_glyph_hints_apply_vertical_separation_adjustments.exit

.lr.ph.i354.i:                                    ; preds = %bb.gj
  %i.afc = load ptr, ptr %i.tx, align 8, !tbaa !261 ; 7 uses
  %i.afd = load ptr, ptr %i.ty, align 8, !tbaa !262 ; 7 uses
  %wide.trip.count.i355.i = zext nneg i32 %i.afa to i64 ; 6 uses
  %i.afe = add nsw i64 %wide.trip.count.i355.i, -1 ; 2 uses
  %xtraiter635 = and i64 %wide.trip.count.i355.i, 1
  %i.aff = icmp eq i64 %i.afe, 0
  br i1 %i.aff, label %.epil.preheader634, label %.lr.ph.i354.i.new

.lr.ph.i354.i.new:                                ; preds = %.lr.ph.i354.i
  %unroll_iter639 = and i64 %wide.trip.count.i355.i, 2147483646
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gq, %.lr.ph.i354.i.new
  %indvars.iv.i356.i = phi i64 [ 0, %.lr.ph.i354.i.new ], [ %indvars.iv.next.i364.i.1, %bb.gq ] ; 5 uses
  %.01624.i357.i = phi i64 [ -9223372036854775808, %.lr.ph.i354.i.new ], [ %.1.i363.i.1, %bb.gq ] ; 2 uses
  %.01723.i358.i = phi i64 [ 9223372036854775807, %.lr.ph.i354.i.new ], [ %.118.i362.i.1, %bb.gq ] ; 3 uses
  %.01922.i359.i = phi i32 [ 0, %.lr.ph.i354.i.new ], [ %.120.i361.i.1, %bb.gq ]
  %niter640 = phi i64 [ 0, %.lr.ph.i354.i.new ], [ %niter640.next.1, %bb.gq ]
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.afc, i64 %indvars.iv.i356.i
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !71 ; 3 uses
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %indvars.iv.i356.i
  %i.afj = load i64, ptr %i.afi, align 8, !tbaa !71 ; 2 uses
  %i.afk = icmp slt i64 %i.afh, %.01723.i358.i
  br i1 %i.afk, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.afl = icmp eq i64 %i.afh, %.01723.i358.i
  %i.afm = icmp slt i64 %i.afj, %.01624.i357.i
  %or.cond.i360.i = select i1 %i.afl, i1 %i.afm, i1 false
  br i1 %or.cond.i360.i, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.afn = trunc nuw nsw i64 %indvars.iv.i356.i to i32
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.120.i361.i = phi i32 [ %i.afn, %bb.gm ], [ %.01922.i359.i, %bb.gl ]
  %.118.i362.i = phi i64 [ %i.afh, %bb.gm ], [ %.01723.i358.i, %bb.gl ] ; 3 uses
  %.1.i363.i = phi i64 [ %i.afj, %bb.gm ], [ %.01624.i357.i, %bb.gl ] ; 2 uses
  %indvars.iv.next.i364.i = or disjoint i64 %indvars.iv.i356.i, 1 ; 3 uses
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.afc, i64 %indvars.iv.next.i364.i
  %i.afp = load i64, ptr %i.afo, align 8, !tbaa !71 ; 3 uses
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %indvars.iv.next.i364.i
  %i.afr = load i64, ptr %i.afq, align 8, !tbaa !71 ; 2 uses
  %i.afs = icmp slt i64 %i.afp, %.118.i362.i
  br i1 %i.afs, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aft = icmp eq i64 %i.afp, %.118.i362.i
  %i.afu = icmp slt i64 %i.afr, %.1.i363.i
  %or.cond.i360.i.1 = select i1 %i.aft, i1 %i.afu, i1 false
  br i1 %or.cond.i360.i.1, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.afv = trunc nuw nsw i64 %indvars.iv.next.i364.i to i32
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.120.i361.i.1 = phi i32 [ %i.afv, %bb.gp ], [ %.120.i361.i, %bb.go ] ; 3 uses
  %.118.i362.i.1 = phi i64 [ %i.afp, %bb.gp ], [ %.118.i362.i, %bb.go ] ; 2 uses
  %.1.i363.i.1 = phi i64 [ %i.afr, %bb.gp ], [ %.1.i363.i, %bb.go ] ; 2 uses
  %indvars.iv.next.i364.i.1 = add nuw nsw i64 %indvars.iv.i356.i, 2 ; 2 uses
  %niter640.next.1 = add nuw i64 %niter640, 2     ; 2 uses
  %niter640.ncmp.1 = icmp eq i64 %niter640.next.1, %unroll_iter639
  br i1 %niter640.ncmp.1, label %.lr.ph.i371.i.unr-lcssa, label %bb.gk, !llvm.loop !271

.lr.ph.i371.i.unr-lcssa:                          ; preds = %bb.gq
  %lcmp.mod636.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod636.not, label %.lr.ph.i371.i, label %.epil.preheader634

.epil.preheader634:                               ; preds = %.lr.ph.i371.i.unr-lcssa, %.lr.ph.i354.i
  %indvars.iv.i356.i.epil.init = phi i64 [ 0, %.lr.ph.i354.i ], [ %indvars.iv.next.i364.i.1, %.lr.ph.i371.i.unr-lcssa ] ; 3 uses
  %.01624.i357.i.epil.init = phi i64 [ -9223372036854775808, %.lr.ph.i354.i ], [ %.1.i363.i.1, %.lr.ph.i371.i.unr-lcssa ]
  %.01723.i358.i.epil.init = phi i64 [ 9223372036854775807, %.lr.ph.i354.i ], [ %.118.i362.i.1, %.lr.ph.i371.i.unr-lcssa ] ; 2 uses
  %.01922.i359.i.epil.init = phi i32 [ 0, %.lr.ph.i354.i ], [ %.120.i361.i.1, %.lr.ph.i371.i.unr-lcssa ]
  %lcmp.mod638 = trunc i32 %i.afa to i1
  tail call void @llvm.assume(i1 %lcmp.mod638)
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.afc, i64 %indvars.iv.i356.i.epil.init
  %i.afx = load i64, ptr %i.afw, align 8, !tbaa !71 ; 2 uses
  %i.afy = icmp slt i64 %i.afx, %.01723.i358.i.epil.init
  br i1 %i.afy, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %.epil.preheader634
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %indvars.iv.i356.i.epil.init
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !71
  %i.agb = icmp eq i64 %i.afx, %.01723.i358.i.epil.init
  %i.agc = icmp slt i64 %i.aga, %.01624.i357.i.epil.init
  %or.cond.i360.i.epil = select i1 %i.agb, i1 %i.agc, i1 false
  br i1 %or.cond.i360.i.epil, label %bb.gs, label %.lr.ph.i371.i

bb.gs:                                            ; preds = %bb.gr, %.epil.preheader634
  %i.agd = trunc nuw nsw i64 %indvars.iv.i356.i.epil.init to i32
  br label %.lr.ph.i371.i

.lr.ph.i371.i:                                    ; preds = %bb.gr, %bb.gs, %.lr.ph.i371.i.unr-lcssa
  %.120.i361.i.lcssa = phi i32 [ %.120.i361.i.1, %.lr.ph.i371.i.unr-lcssa ], [ %i.agd, %bb.gs ], [ %.01922.i359.i.epil.init, %bb.gr ] ; 2 uses
  %i.age = load ptr, ptr %i.tw, align 8, !tbaa !260
  %i.agf = zext i32 %.120.i361.i.lcssa to i64     ; 4 uses
  br label %bb.gt

bb.gt:                                            ; preds = %.loopexit.i386.i, %.lr.ph.i371.i
  %indvars.iv.i373.i = phi i64 [ 0, %.lr.ph.i371.i ], [ %indvars.iv.next.i391.i, %.loopexit.i386.i ] ; 3 uses
  %.03872.i374.i = phi i64 [ 9223372036854775807, %.lr.ph.i371.i ], [ %.4.i390.i, %.loopexit.i386.i ] ; 3 uses
  %.03971.i375.i = phi i64 [ -9223372036854775808, %.lr.ph.i371.i ], [ %.342.i389.i, %.loopexit.i386.i ] ; 3 uses
  %.04370.i376.i = phi i64 [ 9223372036854775807, %.lr.ph.i371.i ], [ %.447.i388.i, %.loopexit.i386.i ] ; 3 uses
  %.04869.i377.i = phi i64 [ -9223372036854775808, %.lr.ph.i371.i ], [ %.351.i387.i, %.loopexit.i386.i ] ; 3 uses
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv.i373.i
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !119 ; 6 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 64
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !263
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 64
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !263
  %i.agm = icmp eq ptr %i.agl, %i.agh
  br i1 %i.agm, label %.loopexit.i386.i, label %.preheader.i378.i

.preheader.i378.i:                                ; preds = %bb.gt
  %i.agn = icmp eq i64 %indvars.iv.i373.i, %i.agf
  br i1 %i.agn, label %.preheader.split.us.i400.i, label %.preheader.split.i379.i

.preheader.split.us.i400.i:                       ; preds = %.preheader.i378.i, %.preheader.split.us.i400.i
  %.149.us.i401.i = phi i64 [ %spec.select64.us.i405.i, %.preheader.split.us.i400.i ], [ %.04869.i377.i, %.preheader.i378.i ]
  %.144.us.i402.i = phi i64 [ %spec.select.us.i404.i, %.preheader.split.us.i400.i ], [ %.04370.i376.i, %.preheader.i378.i ]
  %.0.us.i403.i = phi ptr [ %i.agp, %.preheader.split.us.i400.i ], [ %i.agh, %.preheader.i378.i ]
  %i.ago = getelementptr inbounds nuw i8, ptr %.0.us.i403.i, i64 64
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !263 ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 32
  %i.agr = load i64, ptr %i.agq, align 8, !tbaa !120 ; 2 uses
  %spec.select.us.i404.i = tail call i64 @llvm.smin.i64(i64 %i.agr, i64 %.144.us.i402.i) ; 2 uses
  %spec.select64.us.i405.i = tail call i64 @llvm.smax.i64(i64 %i.agr, i64 %.149.us.i401.i) ; 2 uses
  %.not61.us.i406.i = icmp eq ptr %i.agp, %i.agh
  br i1 %.not61.us.i406.i, label %.loopexit.i386.i, label %.preheader.split.us.i400.i, !llvm.loop !292

.preheader.split.i379.i:                          ; preds = %.preheader.i378.i, %.preheader.split.i379.i
  %.140.i380.i = phi i64 [ %spec.select65.i384.i, %.preheader.split.i379.i ], [ %.03971.i375.i, %.preheader.i378.i ]
  %.1.i381.i = phi i64 [ %spec.select62.i383.i, %.preheader.split.i379.i ], [ %.03872.i374.i, %.preheader.i378.i ]
  %.0.i382.i = phi ptr [ %i.agt, %.preheader.split.i379.i ], [ %i.agh, %.preheader.i378.i ]
  %i.ags = getelementptr inbounds nuw i8, ptr %.0.i382.i, i64 64
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !263 ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 32
  %i.agv = load i64, ptr %i.agu, align 8, !tbaa !120 ; 2 uses
  %spec.select62.i383.i = tail call i64 @llvm.smin.i64(i64 %i.agv, i64 %.1.i381.i) ; 2 uses
  %spec.select65.i384.i = tail call i64 @llvm.smax.i64(i64 %i.agv, i64 %.140.i380.i) ; 2 uses
  %.not61.i385.i = icmp eq ptr %i.agt, %i.agh
  br i1 %.not61.i385.i, label %.loopexit.i386.i, label %.preheader.split.i379.i, !llvm.loop !292

.loopexit.i386.i:                                 ; preds = %.preheader.split.i379.i, %.preheader.split.us.i400.i, %bb.gt
  %.351.i387.i = phi i64 [ %.04869.i377.i, %bb.gt ], [ %spec.select64.us.i405.i, %.preheader.split.us.i400.i ], [ %.04869.i377.i, %.preheader.split.i379.i ] ; 4 uses
  %.447.i388.i = phi i64 [ %.04370.i376.i, %bb.gt ], [ %spec.select.us.i404.i, %.preheader.split.us.i400.i ], [ %.04370.i376.i, %.preheader.split.i379.i ] ; 4 uses
  %.342.i389.i = phi i64 [ %.03971.i375.i, %bb.gt ], [ %.03971.i375.i, %.preheader.split.us.i400.i ], [ %spec.select65.i384.i, %.preheader.split.i379.i ] ; 4 uses
  %.4.i390.i = phi i64 [ %.03872.i374.i, %bb.gt ], [ %.03872.i374.i, %.preheader.split.us.i400.i ], [ %spec.select62.i383.i, %.preheader.split.i379.i ] ; 4 uses
  %indvars.iv.next.i391.i = add nuw nsw i64 %indvars.iv.i373.i, 1 ; 2 uses
  %exitcond.not.i392.i = icmp eq i64 %indvars.iv.next.i391.i, %wide.trip.count.i355.i
  br i1 %exitcond.not.i392.i, label %._crit_edge.i393.i, label %bb.gt, !llvm.loop !293

._crit_edge.i393.i:                               ; preds = %.loopexit.i386.i
  %.not.i394.i = icmp sgt i64 %.4.i390.i, %.351.i387.i
  %.not58.i395.i = icmp sgt i64 %.351.i387.i, %.342.i389.i
  %or.cond.i396.i = select i1 %.not.i394.i, i1 true, i1 %.not58.i395.i
  br i1 %or.cond.i396.i, label %bb.gu, label %af_check_contour_horizontal_overlap.exit407.thread.i

bb.gu:                                            ; preds = %._crit_edge.i393.i
  %.not59.i397.i = icmp sgt i64 %.4.i390.i, %.447.i388.i
  %.not60.i398.i = icmp sgt i64 %.447.i388.i, %.342.i389.i
  %or.cond63.i399.i = select i1 %.not59.i397.i, i1 true, i1 %.not60.i398.i
  br i1 %or.cond63.i399.i, label %af_check_contour_horizontal_overlap.exit407.i, label %af_check_contour_horizontal_overlap.exit407.thread.i

af_check_contour_horizontal_overlap.exit407.i:    ; preds = %bb.gu
  %i.agw = icmp slt i64 %.351.i387.i, %.342.i389.i
  %i.agx = icmp sgt i64 %.447.i388.i, %.4.i390.i
  %.not420.i = select i1 %i.agw, i1 true, i1 %i.agx
  br i1 %.not420.i, label %af_glyph_hints_apply_vertical_separation_adjustments.exit, label %af_check_contour_horizontal_overlap.exit407.thread.i

af_check_contour_horizontal_overlap.exit407.thread.i: ; preds = %af_check_contour_horizontal_overlap.exit407.i, %bb.gu, %._crit_edge.i393.i
  %i.agy = sext i32 %.120.i361.i.lcssa to i64     ; 2 uses
  %i.agz = getelementptr inbounds [8 x i8], ptr %i.afc, i64 %i.agy
  %i.aha = load i64, ptr %i.agz, align 8, !tbaa !71
  %i.ahb = getelementptr inbounds [8 x i8], ptr %i.afd, i64 %i.agy
  %i.ahc = load i64, ptr %i.ahb, align 8, !tbaa !71 ; 9 uses
  %i.ahd = sub i64 %i.ahc, %i.aha                 ; 5 uses
  %i.ahe = icmp sgt i64 %i.ahd, %.1150
  br i1 %i.ahe, label %af_glyph_hints_apply_vertical_separation_adjustments.exit, label %.lr.ph431.i.preheader

.lr.ph431.i.preheader:                            ; preds = %af_check_contour_horizontal_overlap.exit407.thread.i
  %xtraiter641 = and i64 %wide.trip.count.i355.i, 1
  %i.ahf = icmp eq i64 %i.afe, 0
  br i1 %i.ahf, label %.lr.ph431.i.epil.preheader, label %.lr.ph431.i.preheader.new

.lr.ph431.i.preheader.new:                        ; preds = %.lr.ph431.i.preheader
  %unroll_iter645 = and i64 %wide.trip.count.i355.i, 2147483646
  br label %.lr.ph431.i

.lr.ph431.i:                                      ; preds = %bb.gx, %.lr.ph431.i.preheader.new
  %indvars.iv440.i = phi i64 [ 0, %.lr.ph431.i.preheader.new ], [ %indvars.iv.next441.i.1, %bb.gx ] ; 5 uses
  %.0237430.i = phi i64 [ 64, %.lr.ph431.i.preheader.new ], [ %.2.i381.1, %bb.gx ] ; 3 uses
  %niter646 = phi i64 [ 0, %.lr.ph431.i.preheader.new ], [ %niter646.next.1, %bb.gx ]
  %i.ahg = icmp eq i64 %indvars.iv440.i, %i.agf
  br i1 %i.ahg, label %.lr.ph431.i.1, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph431.i
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.afc, i64 %indvars.iv440.i
  %i.ahi = load i64, ptr %i.ahh, align 8, !tbaa !71
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %indvars.iv440.i
  %i.ahk = load i64, ptr %i.ahj, align 8, !tbaa !71
  %i.ahl = sub i64 %i.ahi, %i.ahc                 ; 3 uses
  %i.ahm = icmp slt i64 %i.ahl, 64
  %i.ahn = icmp slt i64 %i.ahl, %.0237430.i
  %or.cond271.i = select i1 %i.ahm, i1 %i.ahn, i1 false
  %i.aho = icmp sgt i64 %i.ahk, %i.ahc
  %or.cond272.i = select i1 %or.cond271.i, i1 %i.aho, i1 false
  %.1.i380 = select i1 %or.cond272.i, i64 %i.ahl, i64 %.0237430.i
  br label %.lr.ph431.i.1

.lr.ph431.i.1:                                    ; preds = %bb.gv, %.lr.ph431.i
  %.2.i381 = phi i64 [ %.1.i380, %bb.gv ], [ %.0237430.i, %.lr.ph431.i ] ; 3 uses
  %indvars.iv.next441.i = or disjoint i64 %indvars.iv440.i, 1 ; 3 uses
  %i.ahp = icmp eq i64 %indvars.iv.next441.i, %i.agf
  br i1 %i.ahp, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %.lr.ph431.i.1
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.afc, i64 %indvars.iv.next441.i
  %i.ahr = load i64, ptr %i.ahq, align 8, !tbaa !71
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %indvars.iv.next441.i
  %i.aht = load i64, ptr %i.ahs, align 8, !tbaa !71
  %i.ahu = sub i64 %i.ahr, %i.ahc                 ; 3 uses
  %i.ahv = icmp slt i64 %i.ahu, 64
  %i.ahw = icmp slt i64 %i.ahu, %.2.i381
  %or.cond271.i.1 = select i1 %i.ahv, i1 %i.ahw, i1 false
  %i.ahx = icmp sgt i64 %i.aht, %i.ahc
  %or.cond272.i.1 = select i1 %or.cond271.i.1, i1 %i.ahx, i1 false
  %.1.i380.1 = select i1 %or.cond272.i.1, i64 %i.ahu, i64 %.2.i381
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %.lr.ph431.i.1
  %.2.i381.1 = phi i64 [ %.1.i380.1, %bb.gw ], [ %.2.i381, %.lr.ph431.i.1 ] ; 3 uses
  %indvars.iv.next441.i.1 = add nuw nsw i64 %indvars.iv440.i, 2 ; 2 uses
  %niter646.next.1 = add nuw i64 %niter646, 2     ; 2 uses
  %niter646.ncmp.1 = icmp eq i64 %niter646.next.1, %unroll_iter645
  br i1 %niter646.ncmp.1, label %._crit_edge432.i.unr-lcssa, label %.lr.ph431.i, !llvm.loop !295

._crit_edge432.i.unr-lcssa:                       ; preds = %bb.gx
  %lcmp.mod642.not = icmp eq i64 %xtraiter641, 0
  br i1 %lcmp.mod642.not, label %._crit_edge432.i, label %.lr.ph431.i.epil.preheader

.lr.ph431.i.epil.preheader:                       ; preds = %._crit_edge432.i.unr-lcssa, %.lr.ph431.i.preheader
  %indvars.iv440.i.epil.init = phi i64 [ 0, %.lr.ph431.i.preheader ], [ %indvars.iv.next441.i.1, %._crit_edge432.i.unr-lcssa ] ; 3 uses
  %.0237430.i.epil.init = phi i64 [ 64, %.lr.ph431.i.preheader ], [ %.2.i381.1, %._crit_edge432.i.unr-lcssa ] ; 3 uses
  %lcmp.mod644 = trunc i32 %i.afa to i1
  tail call void @llvm.assume(i1 %lcmp.mod644)
  %i.ahy = icmp eq i64 %indvars.iv440.i.epil.init, %i.agf
  br i1 %i.ahy, label %._crit_edge432.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph431.i.epil.preheader
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.afc, i64 %indvars.iv440.i.epil.init
  %i.aia = load i64, ptr %i.ahz, align 8, !tbaa !71
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %indvars.iv440.i.epil.init
  %i.aic = load i64, ptr %i.aib, align 8, !tbaa !71
  %i.aid = sub i64 %i.aia, %i.ahc                 ; 3 uses
  %i.aie = icmp slt i64 %i.aid, 64
  %i.aif = icmp slt i64 %i.aid, %.0237430.i.epil.init
  %or.cond271.i.epil = select i1 %i.aie, i1 %i.aif, i1 false
  %i.aig = icmp sgt i64 %i.aic, %i.ahc
  %or.cond272.i.epil = select i1 %or.cond271.i.epil, i1 %i.aig, i1 false
  %.1.i380.epil = select i1 %or.cond272.i.epil, i64 %i.aid, i64 %.0237430.i.epil.init
  br label %._crit_edge432.i

._crit_edge432.i:                                 ; preds = %.lr.ph431.i.epil.preheader, %bb.gy, %._crit_edge432.i.unr-lcssa
  %.2.i381.lcssa = phi i64 [ %.2.i381.1, %._crit_edge432.i.unr-lcssa ], [ %.1.i380.epil, %bb.gy ], [ %.0237430.i.epil.init, %.lr.ph431.i.epil.preheader ] ; 2 uses
  %i.aih = sub nsw i64 64, %.2.i381.lcssa         ; 3 uses
  %i.aii = and i32 %.0248.i, 32
  %.not434.i = icmp eq i32 %i.aii, 0
  %i.aij = and i32 %.0248.i, 160
  %or.cond30.not.i = icmp eq i32 %i.aij, 0
  br i1 %or.cond30.not.i, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %._crit_edge432.i
  %i.aik = sub i64 %i.ahc, %i.aih
  %i.ail = and i64 %i.aik, 63
  %i.aim = icmp eq i64 %i.ail, 0
  %i.ain = icmp slt i64 %i.ahd, 192
  %or.cond35.i = and i1 %i.ain, %i.aim
  br i1 %or.cond35.i, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.aio = add nsw i64 %i.ahd, 32
  %i.aip = and i64 %i.aio, -64
  %i.aiq = sub nsw i64 %i.aip, %i.ahd
  %i.air = sdiv i64 %i.aiq, 2
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %._crit_edge432.i
  %.0235.i = phi i64 [ %i.air, %bb.ha ], [ 0, %bb.gz ], [ 0, %._crit_edge432.i ]
  %i.ais = select i1 %.not434.i, i64 0, i64 %.0235.i
  %.0236.i = add nsw i64 %i.ais, %i.aih           ; 3 uses
  %i.ait = icmp ne i64 %.0236.i, 0
  %i.aiu = icmp sgt i64 %.0236.i, -3
  %or.cond43.i = and i1 %i.ait, %i.aiu
  br i1 %or.cond43.i, label %bb.hc, label %af_glyph_hints_apply_vertical_separation_adjustments.exit

bb.hc:                                            ; preds = %bb.hb
  %i.aiv = icmp slt i64 %.0236.i, 67
  %i.aiw = icmp sgt i64 %.2.i381.lcssa, -3
  %or.cond45.i = select i1 %i.aiv, i1 true, i1 %i.aiw
  br i1 %or.cond45.i, label %bb.hd, label %af_glyph_hints_apply_vertical_separation_adjustments.exit

bb.hd:                                            ; preds = %bb.hc
  %i.aix = sdiv i64 %i.ahd, 8
  %i.aiy = add i64 %i.aix, %i.ahc
  tail call fastcc void @af_move_contours_down(ptr noundef readonly %1, i64 noundef %i.aiy, i64 noundef %i.aih)
  br label %af_glyph_hints_apply_vertical_separation_adjustments.exit

af_glyph_hints_apply_vertical_separation_adjustments.exit: ; preds = %bb.hd, %bb.hc, %bb.hb, %af_check_contour_horizontal_overlap.exit407.thread.i, %af_check_contour_horizontal_overlap.exit407.i, %bb.gj, %bb.gi, %af_check_contour_horizontal_overlap.exit.thread.i, %af_check_contour_horizontal_overlap.exit.i, %bb.dq, %af_glyph_hints_align_edge_points.exit
  br i1 %i.ub, label %bb.dp, label %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread, !llvm.loop !296

af_glyph_hints_apply_vertical_separation_adjustments.exit.thread: ; preds = %bb.du, %af_glyph_hints_apply_vertical_separation_adjustments.exit
  %i.aiz = getelementptr i8, ptr %1, i64 44
  %.val = load i32, ptr %i.aiz, align 4, !tbaa !128 ; 2 uses
  %i.aja = getelementptr i8, ptr %1, i64 48
  %.val186 = load ptr, ptr %i.aja, align 8, !tbaa !129 ; 2 uses
  %i.ajb = sext i32 %.val to i64
  %.idx.i406 = mul nuw nsw i64 %i.ajb, 80
  %i.ajc = getelementptr inbounds nuw i8, ptr %.val186, i64 %.idx.i406
  %i.ajd = icmp sgt i32 %.val, 0
  br i1 %i.ajd, label %.lr.ph.i408.preheader, label %af_latin_hints_compute_blue_edges.exit

.lr.ph.i408.preheader:                            ; preds = %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread
  %i.aje = getelementptr i8, ptr %2, i64 16
  %.val188 = load ptr, ptr %i.aje, align 8, !tbaa !130
  %i.ajf = getelementptr i8, ptr %2, i64 8
  %.val187 = load ptr, ptr %i.ajf, align 8, !tbaa !132
  br label %.lr.ph.i408

.lr.ph.i408:                                      ; preds = %.lr.ph.i408.preheader, %.lr.ph.i408
  %.03.i = phi ptr [ %i.ajo, %.lr.ph.i408 ], [ %.val188, %.lr.ph.i408.preheader ] ; 2 uses
  %.0192.i = phi ptr [ %i.ajn, %.lr.ph.i408 ], [ %.val187, %.lr.ph.i408.preheader ] ; 2 uses
  %.0201.i = phi ptr [ %i.ajm, %.lr.ph.i408 ], [ %.val186, %.lr.ph.i408.preheader ] ; 3 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0201.i, i64 32
  %i.ajh = load <2 x i64>, ptr %i.ajg, align 8, !tbaa !71
  store <2 x i64> %i.ajh, ptr %.0192.i, align 8, !tbaa !71
  %i.aji = load i16, ptr %.0201.i, align 8, !tbaa !122
  %i.ajj = zext i16 %i.aji to i32                 ; 2 uses
  %i.ajk = and i32 %i.ajj, 1
  %.not.i409 = icmp eq i32 %i.ajk, 0
  %i.ajl = and i32 %i.ajj, 2
  %.not21.i = icmp eq i32 %i.ajl, 0
  %..i = select i1 %.not21.i, i8 1, i8 2
  %.sink.i = select i1 %.not.i409, i8 %..i, i8 0
  store i8 %.sink.i, ptr %.03.i, align 1, !tbaa !60
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0201.i, i64 80 ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0192.i, i64 16
  %i.ajo = getelementptr inbounds nuw i8, ptr %.03.i, i64 1
  %i.ajp = icmp ult ptr %i.ajm, %i.ajc
  br i1 %i.ajp, label %.lr.ph.i408, label %af_latin_hints_compute_blue_edges.exit, !llvm.loop !133

af_latin_hints_compute_blue_edges.exit:           ; preds = %.lr.ph.i408, %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread, %af_latin_ignore_bottom.exit360, %bb.a, %bb.c
  %.2 = phi i32 [ %i.a, %bb.a ], [ %i.ke, %af_latin_ignore_bottom.exit360 ], [ %i.h, %bb.c ], [ 0, %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread ], [ 0, %.lr.ph.i408 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @af_autofitter_load_glyph(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %struct.AF_ScalerRec_, align 8      ; 11 uses
  %6 = alloca %struct.FT_Matrix_, align 8         ; 5 uses
  %7 = alloca %struct.FT_BBox_, align 16          ; 5 uses
  %8 = alloca %struct.FT_Vector_, align 16        ; 5 uses
  %9 = alloca [1 x %struct.AF_GlyphHintsRec_], align 16 ; 13 uses
  %10 = alloca [1 x %struct.AF_LoaderRec_], align 16 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5168) %i.d, i8 0, i64 5168, i1 false)
  store ptr %i.c, ptr %9, align 16, !tbaa !141
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.e, i8 0, i64 104, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %9, ptr %i.f, align 16, !tbaa !298
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !302  ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !303  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !304  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !308  ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !309  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !312  ; 2 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %._crit_edge269.i, label %bb.b

._crit_edge269.i:                                 ; preds = %bb.a
  %.pre270.i = lshr i32 %4, 16
  %.pre272.i = and i32 %.pre270.i, 15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !314  ; 2 uses
  %i.w = lshr i32 %4, 16
  %i.x = and i32 %i.w, 15                         ; 2 uses
  %.not191.i = icmp eq i32 %i.v, %i.x
  br i1 %.not191.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge269.i
  %.pre-phi273.i = phi i32 [ %.pre272.i, %._crit_edge269.i ], [ %i.x, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %.pre-phi273.i, ptr %i.y, align 8, !tbaa !314
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false), !tbaa.struct !315
  %.pre.i = load i64, ptr %i.s, align 8, !tbaa !312
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi268.i = phi i32 [ %.pre-phi273.i, %bb.c ], [ %i.v, %bb.b ]
  %i.aa = phi i64 [ %.pre.i, %bb.c ], [ %i.t, %bb.b ]
  store ptr %i.h, ptr %5, align 8, !tbaa !165
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !163
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.ac, align 8, !tbaa !316
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !317
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !164
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.ag, align 8, !tbaa !318
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i32 %.pre-phi268.i, ptr %i.ah, align 8, !tbaa !319
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 44
end_hunk_3
begin_hunk_4_@af_latin_hints_link_segments:bb.a
  br i1 %.not101.us115, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = sub nsw i64 %i.br, %i.db
  %i.cg = shl nsw i64 %i.cf, 10
  %i.ch = sdiv i64 %i.cg, %.081                   ; 3 uses
  %i.ci = add nsw i64 %i.ch, -1024                ; 2 uses
  %i.cj = icmp sgt i64 %i.ch, 11024
  br i1 %i.cj, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp sgt i64 %i.ch, 1024
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = mul nuw nsw i64 %i.ci, %i.ci
  %.lhs.trunc.us = trunc nuw nsw i64 %i.cl to i32
  %i.cm = udiv i32 %.lhs.trunc.us, 3000
  %.zext.us = zext nneg i32 %i.cm to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.1.us = phi i64 [ 0, %bb.p ], [ 32000, %bb.o ], [ %.zext.us, %bb.q ]
  %i.cn = udiv i64 %i.v, %i.ce
  %i.co = add nuw nsw i64 %i.cn, %.1.us           ; 4 uses
  %i.cp = load i64, ptr %i.de, align 8, !tbaa !469
  %i.cq = icmp slt i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 %i.co, ptr %i.de, align 8, !tbaa !469
  store ptr %.078104.us109, ptr %i.df, align 8, !tbaa !168
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 48 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !469
  %i.ct = icmp slt i64 %i.co, %i.cs
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !469
  %i.cu = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 32
  store ptr %.079105.us, ptr %i.cu, align 8, !tbaa !168
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.n, %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 80 ; 2 uses
  %i.cw = icmp ult ptr %i.cv, %i.i
  br i1 %i.cw, label %bb.m, label %..loopexit_crit_edge.split.us116, !llvm.loop !470

..loopexit_crit_edge.split.us116:                 ; preds = %bb.v, %.lr.ph108.split.us.split
  %i.cx = getelementptr inbounds nuw i8, ptr %.079105.us, i64 80 ; 2 uses
  %i.cy = icmp ult ptr %i.cx, %i.i
  br i1 %i.cy, label %.lr.ph108.split.us.split, label %.lr.ph.preheader, !llvm.loop !468

.preheader103.us:                                 ; preds = %.lr.ph108.split.us.split
  %i.cz = getelementptr inbounds nuw i8, ptr %.079105.us, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !169 ; 2 uses
  %i.db = sext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.079105.us, i64 6
  %i.dd = getelementptr inbounds nuw i8, ptr %.079105.us, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.079105.us, i64 48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.079105.us, i64 32
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %.180118 = phi ptr [ %i.dm, %bb.y ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.180118, i64 32 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !168 ; 2 uses
  %.not98 = icmp eq ptr %i.dh, null
  br i1 %.not98, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !168
  %.not99 = icmp eq ptr %i.dj, %.180118
  br i1 %.not99, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %i.dg, align 8, !tbaa !168
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !168
  %i.dl = getelementptr inbounds nuw i8, ptr %.180118, i64 40
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !471
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.x, %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %.180118, i64 80 ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %i.i
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !llvm.loop !472

._crit_edge:                                      ; preds = %bb.y, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @af_sort_and_quantize_widths(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 0, 42949673) %2) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !64
  switch i32 %i.a, label %.lr.ph.preheader [
    i32 1, label %bb.i
    i32 0, label %._crit_edge101
  ]

.lr.ph.preheader:                                 ; preds = %bb.a, %._crit_edge
  %.07084 = phi i32 [ %i.i, %._crit_edge ], [ 1, %bb.a ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.06882 = phi i32 [ %i.e, %bb.b ], [ %.07084, %.lr.ph.preheader ] ; 2 uses
  %i.b = zext i32 %.06882 to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.b ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !170
  %i.e = add i32 %.06882, -1                      ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !170
  %.not77 = icmp slt i64 %i.d, %i.h
  br i1 %.not77, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload = load <3 x i64>, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !473
  store <3 x i64> %.sroa.0.0.copyload, ptr %i.g, align 8
  %.not76 = icmp eq i32 %i.e, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph, !llvm.loop !474

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.pre = load i32, ptr %0, align 4, !tbaa !64    ; 5 uses
  %i.i = add nuw i32 %.07084, 1                   ; 2 uses
  %i.j = icmp ult i32 %i.i, %.pre
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge85, !llvm.loop !475

._crit_edge85:                                    ; preds = %._crit_edge
  %i.k = icmp ugt i32 %.pre, 1
  br i1 %i.k, label %.lr.ph97, label %._crit_edge101

.lr.ph97:                                         ; preds = %._crit_edge85
  %i.l = load i64, ptr %1, align 8, !tbaa !170
  %i.m = add i32 %.pre, -1                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph97, %bb.f
  %.06595 = phi i64 [ %i.l, %.lr.ph97 ], [ %.1, %bb.f ] ; 3 uses
  %.06694 = phi i32 [ 0, %.lr.ph97 ], [ %.167, %bb.f ] ; 4 uses
  %.17193 = phi i32 [ 1, %.lr.ph97 ], [ %i.ax, %bb.f ] ; 4 uses
  %i.n = zext i32 %.17193 to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !170
  %i.q = sub nsw i64 %i.p, %.06595
  %i.r = icmp sgt i64 %i.q, %2                    ; 2 uses
  %i.s = icmp eq i32 %.17193, %i.m                ; 2 uses
  %or.cond = or i1 %i.s, %i.r
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %not. = xor i1 %i.r, true
  %narrow = and i1 %i.s, %not.
  %spec.select = zext i1 %narrow to i32
  %.272 = add nuw i32 %.17193, %spec.select       ; 6 uses
  %i.t = icmp ult i32 %.06694, %.272
  %i.u = zext i32 %.06694 to i64                  ; 6 uses
  br i1 %i.t, label %.lr.ph89.preheader, label %._crit_edge90

.lr.ph89.preheader:                               ; preds = %bb.d
  %wide.trip.count = zext i32 %.272 to i64        ; 4 uses
  %i.v = sub nsw i64 %wide.trip.count, %i.u       ; 2 uses
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.w = sub nsw i64 %i.u, %wide.trip.count
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %.lr.ph89.epil.preheader, label %.lr.ph89.preheader.new

.lr.ph89.preheader.new:                           ; preds = %.lr.ph89.preheader
  %unroll_iter = and i64 %i.v, -4
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89, %.lr.ph89.preheader.new
  %indvars.iv = phi i64 [ %i.u, %.lr.ph89.preheader.new ], [ %indvars.iv.next.3, %.lr.ph89 ] ; 5 uses
  %.087 = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %i.am, %.lr.ph89 ]
  %niter = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %niter.next.3, %.lr.ph89 ]
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !170
  %i.aa = add nsw i64 %i.z, %.087
  store i64 0, ptr %i.y, align 8, !tbaa !170
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !170
  %i.ae = add nsw i64 %i.ad, %i.aa
  store i64 0, ptr %i.ac, align 8, !tbaa !170
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !170
  %i.ai = add nsw i64 %i.ah, %i.ae
  store i64 0, ptr %i.ag, align 8, !tbaa !170
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !170
  %i.am = add nsw i64 %i.al, %i.ai                ; 3 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !170
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge90.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !476

._crit_edge90.loopexit.unr-lcssa:                 ; preds = %.lr.ph89
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge90, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89.preheader
  %indvars.iv.epil.init = phi i64 [ %i.u, %.lr.ph89.preheader ], [ %indvars.iv.next.3, %._crit_edge90.loopexit.unr-lcssa ]
  %.087.epil.init = phi i64 [ 0, %.lr.ph89.preheader ], [ %i.am, %._crit_edge90.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph89.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph89.epil ] ; 2 uses
  %.087.epil = phi i64 [ %.087.epil.init, %.lr.ph89.epil.preheader ], [ %i.ap, %.lr.ph89.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph89.epil.preheader ], [ %epil.iter.next, %.lr.ph89.epil ]
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.epil ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !170
  %i.ap = add nsw i64 %i.ao, %.087.epil           ; 2 uses
  store i64 0, ptr %i.an, align 8, !tbaa !170
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge90, label %.lr.ph89.epil, !llvm.loop !477

._crit_edge90:                                    ; preds = %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89.epil, %bb.d
  %.pre-phi = phi i64 [ %i.u, %bb.d ], [ %wide.trip.count, %.lr.ph89.epil ], [ %wide.trip.count, %._crit_edge90.loopexit.unr-lcssa ]
  %.0.lcssa = phi i64 [ 0, %bb.d ], [ %i.am, %._crit_edge90.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph89.epil ]
  %i.aq = sdiv i64 %.0.lcssa, %.pre-phi
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.u
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !170
  %i.as = icmp ult i32 %.272, %i.m
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge90
  %i.at = add nuw i32 %.272, 1                    ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %._crit_edge90
  %.373 = phi i32 [ %.272, %bb.e ], [ %.272, %._crit_edge90 ], [ %.17193, %bb.c ]
  %.167 = phi i32 [ %i.at, %bb.e ], [ %.06694, %._crit_edge90 ], [ %.06694, %bb.c ]
  %.1 = phi i64 [ %i.aw, %bb.e ], [ %.06595, %._crit_edge90 ], [ %.06595, %bb.c ]
  %i.ax = add i32 %.373, 1                        ; 2 uses
  %i.ay = icmp ult i32 %i.ax, %.pre
  br i1 %i.ay, label %bb.c, label %.lr.ph100, !llvm.loop !478

.lr.ph100:                                        ; preds = %bb.f, %bb.h
  %i.az = phi i32 [ %i.bf, %bb.h ], [ %.pre, %bb.f ]
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.299 = phi i32 [ %.3, %bb.h ], [ 1, %bb.f ]    ; 3 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv107 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !170
  %.not = icmp eq i64 %i.bb, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph100
  %i.bc = add i32 %.299, 1
  %i.bd = zext i32 %.299 to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !tbaa.struct !473
  %.pre110 = load i32, ptr %0, align 4, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph100, %bb.g
  %i.bf = phi i32 [ %.pre110, %bb.g ], [ %i.az, %.lr.ph100 ] ; 2 uses
  %.3 = phi i32 [ %i.bc, %bb.g ], [ %.299, %.lr.ph100 ] ; 2 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = icmp samesign ult i64 %indvars.iv.next108, %i.bg
  br i1 %i.bh, label %.lr.ph100, label %._crit_edge101, !llvm.loop !479

._crit_edge101:                                   ; preds = %bb.h, %bb.a, %._crit_edge85
  %.2.lcssa = phi i32 [ 1, %._crit_edge85 ], [ 1, %bb.a ], [ %.3, %bb.h ]
  store i32 %.2.lcssa, ptr %0, align 4, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge101
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @af_glyph_hints_done(ptr nofree noundef nonnull captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !141    ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.b, align 8, !tbaa !167
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.c, align 4, !tbaa !463
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.not57 = icmp eq ptr %i.e, %i.f
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  tail call void @ft_mem_free(ptr noundef nonnull %i.a, ptr noundef %i.e) #18
  store ptr null, ptr %i.d, align 8, !tbaa !166
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.g, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.h, align 4, !tbaa !480
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %.not58 = icmp eq ptr %i.j, %i.k
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ft_mem_free(ptr noundef nonnull %i.a, ptr noundef %i.j) #18
  store ptr null, ptr %i.i, align 8, !tbaa !106
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2624
  store i32 0, ptr %i.l, align 8, !tbaa !167
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2628
  store i32 0, ptr %i.m, align 4, !tbaa !463
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !166  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %.not57.1 = icmp eq ptr %i.o, %i.p
  br i1 %.not57.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @ft_mem_free(ptr noundef nonnull %i.a, ptr noundef %i.o) #18
  store ptr null, ptr %i.n, align 8, !tbaa !166
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2640
  store i32 0, ptr %i.q, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2644
  store i32 0, ptr %i.r, align 4, !tbaa !480
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !106  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %.not58.1 = icmp eq ptr %i.t, %i.u
  br i1 %.not58.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ft_mem_free(ptr noundef nonnull %i.a, ptr noundef %i.t) #18
  store ptr null, ptr %i.s, align 8, !tbaa !106
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %.not53 = icmp eq ptr %i.w, %i.x
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ft_mem_free(ptr noundef nonnull %i.a, ptr noundef %i.w) #18
  store ptr null, ptr %i.v, align 8, !tbaa !260
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !261  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5240
  %.not54 = icmp eq ptr %i.z, %i.aa
  br i1 %.not54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ft_mem_free(ptr noundef nonnull %i.a, ptr noundef %i.z) #18
  store ptr null, ptr %i.y, align 8, !tbaa !261
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !262 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5304
  %.not55 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not55, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @ft_mem_free(ptr noundef nonnull %i.a, ptr noundef %i.ac) #18
  store ptr null, ptr %i.ab, align 8, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.ae, align 8, !tbaa !430
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.af, align 4, !tbaa !259
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !129 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5368
end_hunk_4
begin_hunk_5_@af_hint_normal_stem:bb.a
  %i.ac = sub nsw i64 0, %i.w
  %spec.select126 = select i1 %.not119, i64 %i.ac, i64 %i.x
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not110 = icmp samesign ult i64 %i.v, %.0
  %.not111 = icmp samesign ult i64 %i.x, %.0
  %or.cond122 = select i1 %.not110, i1 %.not111, i1 false
  %.not112 = icmp samesign ult i64 %i.w, %.0
  %or.cond123 = select i1 %or.cond122, i1 %.not112, i1 false
  %.not113 = icmp samesign ult i64 %i.y, %.0
  %or.cond124 = select i1 %or.cond123, i1 %.not113, i1 false
  br i1 %or.cond124, label %bb.k, label %.thread131

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = and i64 %i.p, 63                        ; 4 uses
  %i.ae = icmp samesign ult i64 %i.ad, 32
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not114 = icmp samesign ugt i64 %i.x, %i.ad
  %.not115 = icmp samesign ugt i64 %i.w, %i.ad
  %or.cond125 = select i1 %.not114, i1 %.not115, i1 false
  br i1 %or.cond125, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.af = sub nuw nsw i64 64, %.0
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.091 = phi i64 [ %i.ad, %bb.l ], [ %i.af, %bb.m ] ; 2 uses
  %i.ag = sub nsw i64 %.0, %i.x                   ; 2 uses
  %i.ah = sub nsw i64 %i.x, %.091                 ; 2 uses
  %i.ai = sub nsw i64 %.0, %i.w                   ; 2 uses
  %i.aj = sub nsw i64 %i.w, %.091                 ; 2 uses
  %.not116 = icmp sgt i64 %i.ag, %i.ah
  %i.ak = sub nsw i64 0, %i.ag
  %spec.select = select i1 %.not116, i64 %i.ah, i64 %i.ak ; 2 uses
  %.not117 = icmp sgt i64 %i.aj, %i.ai
  %i.al = sub nsw i64 0, %i.aj
  %.093 = select i1 %.not117, i64 %i.ai, i64 %i.al ; 2 uses
  %i.am = tail call i64 @llvm.abs.i64(i64 %spec.select, i1 true)
  %i.an = tail call i64 @llvm.abs.i64(i64 %.093, i1 true)
  %.not118 = icmp samesign ugt i64 %i.am, %i.an
  %spec.select127 = select i1 %.not118, i64 %.093, i64 %spec.select
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h, %bb.l, %bb.g, %._crit_edge
  %.092 = phi i64 [ 0, %._crit_edge ], [ 0, %bb.l ], [ %spec.select127, %bb.n ], [ 0, %bb.g ], [ %spec.select126, %bb.h ] ; 3 uses
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ao = icmp sgt i64 %.092, 14
  br i1 %i.ao, label %bb.q, label %.thread131

.thread131:                                       ; preds = %bb.j, %bb.p
  %.092130133 = phi i64 [ %.092, %bb.p ], [ 0, %bb.j ]
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.092130133, i64 -14)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread131, %bb.o
  %.1 = phi i64 [ %.092, %bb.o ], [ %spec.store.select, %.thread131 ], [ 14, %bb.p ] ; 2 uses
  %i.ap = add nsw i64 %.1, %i.t                   ; 3 uses
  %i.aq = icmp slt i64 %i.m, %i.k                 ; 2 uses
  %i.ar = add nsw i64 %i.ap, %i.p                 ; 2 uses
  %.140 = select i1 %i.aq, i64 %i.ap, i64 %i.ar
  %.141 = select i1 %i.aq, i64 %i.ar, i64 %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.140, ptr %i.as, align 8, !tbaa !115
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.141, ptr %i.at, align 8, !tbaa !115
  ret i64 %.1
}

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @af_cjk_compute_stem_width(i32 %.5164.val, ptr nofree readonly captures(none) %.5168.val, i32 noundef range(i32 0, 2) %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.5168.val, i64 88
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [896 x i8], ptr %i.a, i64 %i.b ; 6 uses
  %i.d = and i32 %.5164.val, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 22 uses
  %.not71 = icmp eq i32 %0, 0                     ; 2 uses
  br i1 %.not71, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %.5164.val, 2
  %.not72 = icmp eq i32 %i.e, 0
  br i1 %.not72, label %bb.e, label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.f = and i32 %.5164.val, 1
  %.not74 = icmp eq i32 %i.f, 0
  br i1 %.not74, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !417
  %.not75 = icmp eq i32 %i.h, 0
  br i1 %.not75, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !538  ; 2 uses
  %i.k = add nuw i64 %spec.select, 39
  %i.l = sub i64 %i.k, %i.j
  %i.m = icmp ult i64 %i.l, 79
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.j, i64 48)
  br label %bb.ab

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = icmp samesign ult i64 %spec.select, 54
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = sub nuw nsw i64 54, %spec.select
  %i.p = lshr i64 %i.o, 1
  %i.q = add nuw nsw i64 %i.p, %spec.select
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.r = icmp samesign ult i64 %spec.select, 192
  br i1 %i.r, label %bb.k, label %bb.ab

bb.k:                                             ; preds = %bb.j
  %i.s = and i64 %spec.select, 63                 ; 3 uses
  %i.t = and i64 %spec.select, 192                ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 10
  br i1 %i.u, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = icmp samesign ult i64 %i.s, 22
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = or disjoint i64 %i.t, 10
  br label %bb.ab

bb.n:                                             ; preds = %bb.l
  %i.x = add nsw i64 %i.s, -42
  %or.cond = icmp ult i64 %i.x, 12
  %i.y = or disjoint i64 %i.t, 54
  %spec.select79 = select i1 %or.cond, i64 %i.y, i64 %spec.select
  br label %bb.ab

bb.o:                                             ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !417 ; 4 uses
  %.not36.i = icmp eq i32 %i.aa, 0
  br i1 %.not36.i, label %._crit_edge.thread.i, label %.lr.ph.preheader.i

._crit_edge.thread.i:                             ; preds = %bb.o
  %i.ab = add nuw nsw i64 %spec.select, 32
  %i.ac = and i64 %i.ab, 9223372036854775744
  br label %bb.p

.lr.ph.preheader.i:                               ; preds = %bb.o
  %wide.trip.count.i = zext i32 %i.aa to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ad = icmp eq i32 %i.aa, 1
  br i1 %i.ad, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.02335.i = phi i64 [ %spec.select, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i ]
  %.02434.i = phi i64 [ 98, %.lr.ph.preheader.i.new ], [ %.125.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !538 ; 2 uses
  %i.ah = sub nsw i64 %spec.select, %i.ag
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.ah, i1 true) ; 2 uses
  %i.ai = icmp samesign ult i64 %spec.select.i, %.02434.i
  %.125.i = tail call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %.02434.i) ; 2 uses
  %.1.i = select i1 %i.ai, i64 %i.ag, i64 %.02335.i
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !538 ; 2 uses
  %i.am = sub nsw i64 %spec.select, %i.al
  %spec.select.i.1 = tail call i64 @llvm.abs.i64(i64 %i.am, i1 true) ; 2 uses
  %i.an = icmp samesign ult i64 %spec.select.i.1, %.125.i
  %.125.i.1 = tail call i64 @llvm.umin.i64(i64 %spec.select.i.1, i64 %.125.i) ; 2 uses
  %.1.i.1 = select i1 %i.an, i64 %i.al, i64 %.1.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !539

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.02335.i.epil.init = phi i64 [ %spec.select, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ]
  %.02434.i.epil.init = phi i64 [ 98, %.lr.ph.preheader.i ], [ %.125.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod2 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i.epil.init
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !538 ; 2 uses
  %i.ar = sub nsw i64 %spec.select, %i.aq
  %spec.select.i.epil = tail call i64 @llvm.abs.i64(i64 %i.ar, i1 true)
  %i.as = icmp samesign ult i64 %spec.select.i.epil, %.02434.i.epil.init
  %.1.i.epil = select i1 %i.as, i64 %i.aq, i64 %.02335.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ] ; 4 uses
  %i.at = add nsw i64 %.1.i.lcssa, 32
  %i.au = and i64 %i.at, -64                      ; 2 uses
  %.not.i = icmp slt i64 %spec.select, %.1.i.lcssa
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.av = phi i64 [ %i.ac, %._crit_edge.thread.i ], [ %i.au, %._crit_edge.i ]
  %.023.lcssa42.i = phi i64 [ %spec.select, %._crit_edge.thread.i ], [ %.1.i.lcssa, %._crit_edge.i ]
  %i.aw = or disjoint i64 %i.av, 48
  %i.ax = icmp slt i64 %spec.select, %i.aw
  %spec.select31.i = select i1 %i.ax, i64 %.023.lcssa42.i, i64 %spec.select
  br label %af_cjk_snap_width.exit

bb.q:                                             ; preds = %._crit_edge.i
  %i.ay = add nsw i64 %i.au, -48
  %i.az = icmp sgt i64 %spec.select, %i.ay
  %spec.select32.i = select i1 %i.az, i64 %.1.i.lcssa, i64 %spec.select
  br label %af_cjk_snap_width.exit

af_cjk_snap_width.exit:                           ; preds = %bb.p, %bb.q
  %.027.i = phi i64 [ %spec.select31.i, %bb.p ], [ %spec.select32.i, %bb.q ] ; 9 uses
  br i1 %.not71, label %bb.t, label %bb.r

bb.r:                                             ; preds = %af_cjk_snap_width.exit
  %i.ba = icmp sgt i64 %.027.i, 63
  br i1 %i.ba, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bb = add nuw nsw i64 %.027.i, 16
  %i.bc = and i64 %i.bb, 9223372036854775744
  br label %bb.ab

bb.t:                                             ; preds = %af_cjk_snap_width.exit
  %i.bd = and i32 %.5164.val, 8
  %.not76 = icmp eq i32 %i.bd, 0
  br i1 %.not76, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = icmp slt i64 %.027.i, 64
  br i1 %i.be, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = add nuw nsw i64 %.027.i, 32
  %i.bg = and i64 %i.bf, 9223372036854775744
  br label %bb.ab

bb.w:                                             ; preds = %bb.t
  %i.bh = icmp slt i64 %.027.i, 48
  br i1 %i.bh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bi = add nsw i64 %.027.i, 64
  %i.bj = ashr i64 %i.bi, 1
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.bk = icmp samesign ult i64 %.027.i, 128
  br i1 %i.bk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bl = add nuw nsw i64 %.027.i, 22
  %i.bm = and i64 %i.bl, 192
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bn = add nuw nsw i64 %.027.i, 32
  %i.bo = and i64 %i.bn, 9223372036854775744
  br label %bb.ab

bb.ab:                                            ; preds = %bb.n, %bb.u, %bb.r, %bb.m, %bb.k, %bb.j, %bb.i, %bb.v, %bb.z, %bb.aa, %bb.x, %bb.s, %bb.g
  %.2 = phi i64 [ %i.bc, %bb.s ], [ 64, %bb.u ], [ 64, %bb.r ], [ %i.bg, %bb.v ], [ %i.bj, %bb.x ], [ %i.bm, %bb.z ], [ %i.bo, %bb.aa ], [ %spec.store.select, %bb.g ], [ %i.q, %bb.i ], [ %spec.select, %bb.j ], [ %spec.select79, %bb.n ], [ %i.w, %bb.m ], [ %spec.select, %bb.k ] ; 2 uses
  %i.bp = sub nsw i64 0, %.2
  %i.bq = icmp slt i64 %1, 0
  %spec.select78 = select i1 %i.bq, i64 %i.bp, i64 %.2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  %.060 = phi i64 [ %spec.select78, %bb.ab ], [ %1, %bb.a ]
  ret i64 %.060
}

declare hidden i32 @find_unicode_charmap(ptr noundef) local_unnamed_addr #4

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ft_hash_num_init(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @FT_Get_Char_Index(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ft_hash_num_insert(i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @ft_hash_num_iterator(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ft_hash_num_lookup(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @add_substitute(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = and i32 %i.a, 65535                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !540
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = tail call i32 @ft_hash_num_insert_no_overwrite(i32 noundef %i.b, i64 noundef %i.e, ptr noundef %3, ptr noundef %5) #18 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread82

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 8, !tbaa !540
  %i.h = icmp ugt i32 %i.g, %i.d
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @ft_hash_num_lookup(i32 noundef %i.b, ptr noundef %4) #18 ; 2 uses
  %.not68 = icmp eq ptr %i.i, null
  br i1 %.not68, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71
  %i.k = tail call fastcc i32 @add_substitute(i32 noundef %i.b, i64 noundef %i.j, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) ; 2 uses
  %.not69 = icmp eq i32 %i.k, 0
  br i1 %.not69, label %.thread, label %.thread82

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b
  %i.l = and i64 %1, 4294901760
  %.not70 = icmp eq i64 %i.l, 0
  br i1 %.not70, label %.thread82, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.m = lshr i64 %1, 16
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %.not7184 = icmp eq i32 %i.n, 0
  br i1 %.not7184, label %.thread82, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %.085 = phi i32 [ %i.ae, %bb.i ], [ 1, %bb.e ]  ; 2 uses
  %i.o = shl i32 %.085, 16
  %i.p = add nsw i32 %i.o, %0
  %i.q = tail call ptr @ft_hash_num_lookup(i32 noundef %i.p, ptr noundef %4) #18 ; 3 uses
  %i.r = load i32, ptr %i.c, align 8, !tbaa !540
  %i.s = load i64, ptr %i.q, align 8, !tbaa !71
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 @ft_hash_num_insert_no_overwrite(i32 noundef %i.t, i64 noundef %i.e, ptr noundef nonnull %3, ptr noundef %5) #18 ; 2 uses
  %.not72 = icmp eq i32 %i.u, 0
  br i1 %.not72, label %bb.f, label %.thread82

bb.f:                                             ; preds = %.lr.ph
  %i.v = load i32, ptr %i.c, align 8, !tbaa !540
  %i.w = icmp ugt i32 %i.v, %i.r
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.q, align 8, !tbaa !71
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call ptr @ft_hash_num_lookup(i32 noundef %i.y, ptr noundef %4) #18 ; 2 uses
  %.not73 = icmp eq ptr %i.z, null
  br i1 %.not73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !71
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !71
  %i.ad = tail call fastcc i32 @add_substitute(i32 noundef %i.ab, i64 noundef %i.ac, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) ; 2 uses
  %.not74 = icmp eq i32 %i.ad, 0
  br i1 %.not74, label %bb.i, label %.thread82

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.ae = add i32 %.085, 1                        ; 2 uses
  %.not71 = icmp ugt i32 %i.ae, %i.n
  br i1 %.not71, label %.thread82, label %.lr.ph, !llvm.loop !543

.thread82:                                        ; preds = %bb.i, %.lr.ph, %bb.h, %bb.e, %.thread, %bb.d, %bb.a
  %.7 = phi i32 [ %i.f, %bb.a ], [ %i.k, %bb.d ], [ 0, %.thread ], [ 0, %bb.e ], [ %i.u, %.lr.ph ], [ 0, %bb.i ], [ %i.ad, %bb.h ]
  ret i32 %.7
}

declare void @ft_hash_str_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ft_hash_num_insert_no_overwrite(i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @af_latin_metrics_scale_dim(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0                        ; 5 uses
  %.0163.in.v = select i1 %i.a, i64 24, i64 32
  %.0163.in = getelementptr inbounds nuw i8, ptr %1, i64 %.0163.in.v
  %.0152.in.v = select i1 %i.a, i64 8, i64 16
  %.0152.in = getelementptr inbounds nuw i8, ptr %1, i64 %.0152.in.v
  %.0152 = load i64, ptr %.0152.in, align 8, !tbaa !71 ; 8 uses
  %.0163 = load i64, ptr %.0163.in, align 8, !tbaa !71 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = zext nneg i32 %2 to i64
  %i.d = getelementptr inbounds nuw [1024 x i8], ptr %i.b, i64 %i.c ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1008 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !544
  %i.g = icmp eq i64 %i.f, %.0152
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1016
  %i.i = load i64, ptr %i.h, align 8, !tbaa !545
  %i.j = icmp eq i64 %i.i, %.0163
  br i1 %i.j, label %.loopexit189, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %.0152, ptr %i.e, align 8, !tbaa !544
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1016
  store i64 %.0163, ptr %i.k, align 8, !tbaa !545
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1540 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !192  ; 2 uses
  %.not208 = icmp eq i32 %i.m, 0
  br i1 %.not208, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 4 uses
  %wide.trip.count = zext i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.e, !llvm.loop !546

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !196
  %i.r = and i32 %i.q, 16
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !286
  %i.u = mul i64 %i.t, %.0152                     ; 2 uses
  %i.v = ashr i64 %i.u, 63
  %i.w = add i64 %i.u, 32768
  %i.x = add i64 %i.w, %i.v
  %i.y = ashr i64 %i.x, 16                        ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !151
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !547 ; 2 uses
  %.not172 = icmp eq i32 %i.ac, 0
  br i1 %.not172, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !253
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !303
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !548 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = icmp uge i32 %i.ac, %i.aj
  %i.al = icmp ugt i16 %i.ai, 5
  %or.cond = and i1 %i.al, %i.ak
  %spec.select = select i1 %or.cond, i64 52, i64 40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0156 = phi i64 [ 40, %bb.f ], [ %spec.select, %bb.g ]
  %i.am = add nsw i64 %.0156, %i.y
  %i.an = and i64 %i.am, -64                      ; 2 uses
  %i.ao = icmp ne i64 %i.y, %i.an
  %i.ap = icmp ne i32 %2, 0
  %or.cond7 = and i1 %i.ap, %i.ao
  br i1 %or.cond7, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call i64 @FT_MulDiv(i64 noundef %.0152, i64 noundef %i.an, i64 noundef %i.y) #18 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !138
  %i.at = zext i32 %i.as to i64                   ; 3 uses
  %i.au = load i32, ptr %i.l, align 4, !tbaa !192 ; 4 uses
  %.not209 = icmp eq i32 %i.au, 0
  br i1 %.not209, label %.thread.thread, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.i
  %wide.trip.count219 = zext i32 %i.au to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count219, 1
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph197.new

.lr.ph197.new:                                    ; preds = %.lr.ph197
  %unroll_iter = and i64 %wide.trip.count219, 4294967294
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph197.new
  %indvars.iv216 = phi i64 [ 0, %.lr.ph197.new ], [ %indvars.iv.next217.1, %bb.j ] ; 3 uses
  %.0155196 = phi i64 [ %i.at, %.lr.ph197.new ], [ %i.bj, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph197.new ], [ %niter.next.1, %bb.j ]
  %i.aw = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %indvars.iv216 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !193
  %.0155. = tail call i64 @llvm.smax.i64(i64 %.0155196, i64 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !195
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = tail call i64 @llvm.smax.i64(i64 %.0155., i64 %i.bb)
  %i.bd = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %indvars.iv216 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !193
  %.0155..1 = tail call i64 @llvm.smax.i64(i64 %i.bc, i64 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !195
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = tail call i64 @llvm.smax.i64(i64 %.0155..1, i64 %i.bi) ; 3 uses
  %indvars.iv.next217.1 = add nuw nsw i64 %indvars.iv216, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.thread.loopexit.unr-lcssa, label %bb.j, !llvm.loop !549

.thread.thread.loopexit.unr-lcssa:                ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread.thread.loopexit.unr-lcssa, %.lr.ph197
  %indvars.iv216.epil.init = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next217.1, %.thread.thread.loopexit.unr-lcssa ]
  %.0155196.epil.init = phi i64 [ %i.at, %.lr.ph197 ], [ %i.bj, %.thread.thread.loopexit.unr-lcssa ]
  %lcmp.mod262 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod262)
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %indvars.iv216.epil.init ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !193
  %.0155..epil = tail call i64 @llvm.smax.i64(i64 %.0155196.epil.init, i64 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !195
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = tail call i64 @llvm.smax.i64(i64 %.0155..epil, i64 %i.bp)
  br label %.thread.thread

.thread.thread:                                   ; preds = %.epil.preheader, %.thread.thread.loopexit.unr-lcssa, %bb.i
  %.0155.lcssa = phi i64 [ %i.at, %bb.i ], [ %i.bj, %.thread.thread.loopexit.unr-lcssa ], [ %i.bq, %.epil.preheader ]
  %i.br = sub nsw i64 %i.aq, %.0152
  %i.bs = mul i64 %.0155.lcssa, %i.br             ; 2 uses
  %i.bt = ashr i64 %i.bs, 63
  %i.bu = add i64 %i.bs, 32768
  %i.bv = add i64 %i.bu, %i.bt
  %i.bw = ashr i64 %i.bv, 16
  %i.bx = add nsw i64 %i.bw, 127
  %or.cond3 = icmp ult i64 %i.bx, 255
  %spec.select180 = select i1 %or.cond3, i64 %i.aq, i64 %.0152 ; 2 uses
  store i64 %spec.select180, ptr %i.d, align 8, !tbaa !280
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.0163, ptr %i.by, align 8, !tbaa !550
  br label %bb.k

.thread:                                          ; preds = %bb.d, %bb.c, %bb.h
  store i64 %.0152, ptr %i.d, align 8, !tbaa !280
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.0163, ptr %i.bz, align 8, !tbaa !550
  %spec.select255 = select i1 %i.a, i64 16, i64 24
  %spec.select256 = select i1 %i.a, i64 32, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.thread, %.thread.thread
  %.sink254 = phi i64 [ %spec.select255, %.thread ], [ 24, %.thread.thread ]
  %.0152.sink = phi i64 [ %.0152, %.thread ], [ %spec.select180, %.thread.thread ] ; 8 uses
  %.sink253 = phi i64 [ %spec.select256, %.thread ], [ 40, %.thread.thread ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.sink254
  store i64 %.0152.sink, ptr %i.ca, align 8, !tbaa !71
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %.sink253
  store i64 %.0163, ptr %i.cb, align 8, !tbaa !71
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !142 ; 4 uses
  %.not210 = icmp eq i32 %i.cd, 0
  br i1 %.not210, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %wide.trip.count224 = zext i32 %i.cd to i64     ; 2 uses
  %xtraiter264 = and i64 %wide.trip.count224, 1
  %i.cf = icmp eq i32 %i.cd, 1
  br i1 %i.cf, label %.epil.preheader263, label %.lr.ph200.new

.lr.ph200.new:                                    ; preds = %.lr.ph200
  %unroll_iter267 = and i64 %wide.trip.count224, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph200.new
  %indvars.iv221 = phi i64 [ 0, %.lr.ph200.new ], [ %indvars.iv.next222.1, %bb.l ] ; 3 uses
  %niter268 = phi i64 [ 0, %.lr.ph200.new ], [ %niter268.next.1, %bb.l ]
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %indvars.iv221 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !170
  %i.ci = mul i64 %i.ch, %.0152.sink              ; 2 uses
  %i.cj = ashr i64 %i.ci, 63
  %i.ck = add i64 %i.ci, 32768
  %i.cl = add i64 %i.ck, %i.cj
  %i.cm = ashr i64 %i.cl, 16                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !538
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !514
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %indvars.iv221 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !170
  %i.cs = mul i64 %i.cr, %.0152.sink              ; 2 uses
  %i.ct = ashr i64 %i.cs, 63
  %i.cu = add i64 %i.cs, 32768
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = ashr i64 %i.cv, 16                      ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !538
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !514
  %indvars.iv.next222.1 = add nuw nsw i64 %indvars.iv221, 2 ; 2 uses
  %niter268.next.1 = add nuw i64 %niter268, 2     ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %._crit_edge201.loopexit.unr-lcssa, label %bb.l, !llvm.loop !551

._crit_edge201.loopexit.unr-lcssa:                ; preds = %bb.l
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %._crit_edge201, label %.epil.preheader263

.epil.preheader263:                               ; preds = %._crit_edge201.loopexit.unr-lcssa, %.lr.ph200
  %indvars.iv221.epil.init = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next222.1, %._crit_edge201.loopexit.unr-lcssa ]
  %lcmp.mod266 = trunc i32 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod266)
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %indvars.iv221.epil.init ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !170
  %i.db = mul i64 %i.da, %.0152.sink              ; 2 uses
  %i.dc = ashr i64 %i.db, 63
  %i.dd = add i64 %i.db, 32768
  %i.de = add i64 %i.dd, %i.dc
  %i.df = ashr i64 %i.de, 16                      ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !538
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 %i.df, ptr %i.dh, align 8, !tbaa !514
  br label %._crit_edge201

._crit_edge201:                                   ; preds = %.epil.preheader263, %._crit_edge201.loopexit.unr-lcssa, %bb.k
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !174
  %i.dk = mul i64 %i.dj, %.0152.sink              ; 2 uses
  %i.dl = ashr i64 %i.dk, 63
  %i.dm = add i64 %i.dk, 32768
  %i.dn = add i64 %i.dm, %i.dl
  %i.do = icmp slt i64 %i.dn, 2621440
  %i.dp = zext i1 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store i8 %i.dp, ptr %i.dq, align 8, !tbaa !175
  br i1 %i.a, label %.loopexit189, label %.preheader190

.preheader190:                                    ; preds = %._crit_edge201
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 428
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !192 ; 3 uses
  %.not211 = icmp eq i32 %i.ds, 0
  br i1 %.not211, label %.loopexit189, label %.lr.ph203

.lr.ph203:                                        ; preds = %.preheader190
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %wide.trip.count229 = zext i32 %i.ds to i64
  br label %bb.m

.lr.ph207:                                        ; preds = %bb.o
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 432 ; 2 uses
  %wide.trip.count239 = zext i32 %i.ds to i64     ; 2 uses
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph203, %bb.o
  %indvars.iv226 = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next227, %bb.o ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [72 x i8], ptr %i.dt, i64 %indvars.iv226 ; 7 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !284 ; 2 uses
  %i.dx = mul i64 %i.dw, %.0152.sink              ; 2 uses
  %i.dy = ashr i64 %i.dx, 63
  %i.dz = add i64 %i.dx, 32768
  %i.ea = add i64 %i.dz, %i.dy
  %i.eb = ashr i64 %i.ea, 16
  %i.ec = add nsw i64 %i.eb, %.0163               ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !552
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  store i64 %i.ec, ptr %i.ee, align 8, !tbaa !553
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !286 ; 2 uses
  %i.eh = mul i64 %i.eg, %.0152.sink              ; 2 uses
  %i.ei = ashr i64 %i.eh, 63
  %i.ej = add i64 %i.eh, 32768
  %i.ek = add i64 %i.ej, %i.ei
  %i.el = ashr i64 %i.ek, 16
  %i.em = add nsw i64 %i.el, %.0163               ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store i64 %i.em, ptr %i.en, align 8, !tbaa !275
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 40 ; 2 uses
  store i64 %i.em, ptr %i.eo, align 8, !tbaa !554
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dv, i64 64 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !196 ; 2 uses
  %i.er = and i32 %i.eq, -2
  store i32 %i.er, ptr %i.ep, align 8, !tbaa !196
  %i.es = sub nsw i64 %i.dw, %i.eg
  %i.et = mul i64 %i.es, %.0152.sink              ; 2 uses
  %i.eu = ashr i64 %i.et, 63
  %i.ev = add i64 %i.et, 32768
  %i.ew = add i64 %i.ev, %i.eu
  %i.ex = ashr i64 %i.ew, 16                      ; 3 uses
  %i.ey = add nsw i64 %i.ex, 48
  %or.cond5 = icmp ult i64 %i.ey, 97
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ez = icmp slt i64 %i.ex, 0
  %spec.select181 = tail call i64 @llvm.abs.i64(i64 %i.ex, i1 true) ; 2 uses
  %i.fa = icmp samesign ult i64 %spec.select181, 32
  %i.fb = icmp samesign ult i64 %spec.select181, 48
  %. = select i1 %i.fb, i64 32, i64 64
  %.1 = select i1 %i.fa, i64 0, i64 %.            ; 2 uses
  %i.fc = sub nsw i64 0, %.1
  %i.fd = select i1 %i.ez, i64 %.1, i64 %i.fc
  %i.fe = add nsw i64 %i.ec, 32
  %i.ff = and i64 %i.fe, -64                      ; 2 uses
  store i64 %i.ff, ptr %i.ee, align 8, !tbaa !553
  %i.fg = add i64 %i.fd, %i.ff
  store i64 %i.fg, ptr %i.eo, align 8, !tbaa !554
  %i.fh = or i32 %i.eq, 1
  store i32 %i.fh, ptr %i.ep, align 8, !tbaa !196
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %.lr.ph207, label %bb.m, !llvm.loop !555

bb.p:                                             ; preds = %.lr.ph207, %.loopexit
  %indvars.iv236 = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next237, %.loopexit ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [72 x i8], ptr %i.du, i64 %indvars.iv236 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 64 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !196 ; 2 uses
  %i.fl = and i32 %i.fk, 5
  %or.cond182.not = icmp eq i32 %i.fl, 5
  br i1 %or.cond182.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.p
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.u
  %indvars.iv231 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next232, %bb.u ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [72 x i8], ptr %i.du, i64 %indvars.iv231 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !196
  %i.fr = and i32 %i.fq, 5
  %or.cond183.not = icmp eq i32 %i.fr, 1
  br i1 %or.cond183.not, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !553
  %i.fu = load i64, ptr %i.fm, align 8, !tbaa !554
  %.not178 = icmp sgt i64 %i.ft, %i.fu
  br i1 %.not178, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !554
  %i.fx = load i64, ptr %i.fn, align 8, !tbaa !553
  %.not179 = icmp slt i64 %i.fw, %i.fx
  br i1 %.not179, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fy = and i32 %i.fk, -2
  store i32 %i.fy, ptr %i.fj, align 8, !tbaa !196
  br label %.loopexit

bb.u:                                             ; preds = %bb.q, %bb.r, %bb.s
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count239
  br i1 %exitcond235.not, label %.loopexit, label %bb.q, !llvm.loop !556

.loopexit:                                        ; preds = %bb.u, %bb.t, %bb.p
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %.loopexit189, label %bb.p, !llvm.loop !557

.loopexit189:                                     ; preds = %.loopexit, %.preheader190, %._crit_edge201, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @af_latin_hints_detect_features(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call fastcc i32 @af_latin_hints_compute_segments(ptr noundef %0, i32 noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %af_latin_hints_compute_edges.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @af_latin_hints_link_segments(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = zext nneg i32 %3 to i64                  ; 2 uses
  %i.e = getelementptr inbounds nuw [2536 x i8], ptr %i.c, i64 %i.d ; 6 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw [1024 x i8], ptr %i.h, i64 %i.d
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !230
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !145
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @af_script_classes, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !166  ; 5 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.d, label %bb.c

end_hunk_5
begin_hunk_6_@af_latin_hint_edges:bb.a
  %i.pd = sub i64 %i.pc, %i.pb
  %i.pe = icmp ult i64 %i.pd, -33
  br i1 %i.pe, label %bb.cd, label %.thread792

bb.cd:                                            ; preds = %bb.cc
  %i.pf = getelementptr inbounds nuw i8, ptr %.2545835, i64 16
  store i64 %i.ot, ptr %i.pf, align 8, !tbaa !115
  br label %.thread792

.thread792:                                       ; preds = %.lr.ph833, %bb.bw, %bb.bx, %bb.bz, %bb.ca, %bb.cd, %bb.cc, %bb.cb, %.lr.ph839
  %.9 = phi ptr [ %.8, %bb.bw ], [ %.7837, %.lr.ph839 ], [ %.8, %bb.cb ], [ %.8, %bb.cc ], [ %.8, %bb.cd ], [ %.8, %bb.ca ], [ %.8, %bb.bz ], [ %.8, %bb.bx ], [ %.7837, %.lr.ph833 ]
  %i.pg = getelementptr inbounds nuw i8, ptr %.2545835, i64 88 ; 2 uses
  %i.ph = icmp ult ptr %i.pg, %i.j
  br i1 %i.ph, label %.lr.ph839, label %.loopexit, !llvm.loop !584

.loopexit:                                        ; preds = %.thread792, %bb.av
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @af_latin_compute_stem_width(i32 %.5164.val, ptr nofree readonly captures(none) %.5168.val, i32 noundef range(i32 0, 2) %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 256) %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.5168.val, i64 88
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.b ; 7 uses
  %.not7 = icmp eq i32 %0, 0                      ; 2 uses
  %i.d = and i32 %.5164.val, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  %i.f = load i8, ptr %i.e, align 8, !tbaa !175
  %.not111 = icmp eq i8 %i.f, 0
  br i1 %.not111, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 21 uses
  br i1 %.not7, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %.5164.val, 2
  %.not112 = icmp eq i32 %i.g, 0
  br i1 %.not112, label %bb.e, label %bb.u

.critedge:                                        ; preds = %bb.c
  %i.h = and i32 %.5164.val, 1
  %.not113 = icmp eq i32 %i.h, 0
  br i1 %.not113, label %.thread, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %4, 2
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp samesign ult i64 %spec.select, 192
  %or.cond3 = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond3, label %bb.aj, label %.thread

.thread:                                          ; preds = %.critedge, %bb.e
  %i.l = and i32 %3, 1
  %.not114 = icmp eq i32 %i.l, 0
  br i1 %.not114, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.m = icmp samesign ult i64 %spec.select, 80
  %spec.store.select = select i1 %i.m, i64 64, i64 %spec.select
  br label %bb.h

bb.g:                                             ; preds = %.thread
  %spec.store.select4 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 56)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.195 = phi i64 [ %spec.store.select, %bb.f ], [ %spec.store.select4, %bb.g ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !142
  %.not115 = icmp eq i32 %i.o, 0
  br i1 %.not115, label %bb.aj, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !538  ; 2 uses
  %i.r = add nuw i64 %.195, 39
  %i.s = sub i64 %i.r, %i.q
  %i.t = icmp ult i64 %i.s, 79
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %spec.store.select5 = tail call i64 @llvm.smax.i64(i64 %i.q, i64 48)
  br label %bb.aj

bb.k:                                             ; preds = %bb.i
  %i.u = icmp samesign ult i64 %.195, 192
  br i1 %i.u, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.v = and i64 %.195, 63                        ; 3 uses
  %i.w = and i64 %.195, 192                       ; 2 uses
  %i.x = icmp samesign ult i64 %i.v, 10
  br i1 %i.x, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = icmp samesign ult i64 %i.v, 32
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = or disjoint i64 %i.w, 10
  br label %bb.aj

bb.o:                                             ; preds = %bb.m
  %i.aa = icmp samesign ult i64 %i.v, 54
  %i.ab = or disjoint i64 %i.w, 54
  %spec.select123 = select i1 %i.aa, i64 %i.ab, i64 %.195
  br label %bb.aj

bb.p:                                             ; preds = %bb.k
  %i.ac = icmp slt i64 %1, 1
  %i.ad = icmp slt i64 %2, 1
  %or.cond7.not10 = or i1 %i.ac, %i.ad
  %i.ae = and i64 %2, %1
  %or.cond9.not = icmp sgt i64 %i.ae, -1
  %or.cond119 = and i1 %or.cond7.not10, %or.cond9.not
  br i1 %or.cond119, label %.thread3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %.5168.val, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !253
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !303
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !548
  %.fr = freeze i16 %i.ak                         ; 3 uses
  %i.al = icmp ult i16 %.fr, 10
  br i1 %i.al, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = icmp ult i16 %.fr, 30
  br i1 %i.am, label %bb.s, label %.thread3

bb.s:                                             ; preds = %bb.r
  %narrow = sub nuw nsw i16 30, %.fr
  %i.an = zext nneg i16 %narrow to i64
  %i.ao = mul i64 %2, %i.an
  %i.ap = sdiv i64 %i.ao, 20
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %.090 = phi i64 [ %2, %bb.q ], [ %i.ap, %bb.s ]
  %spec.select6 = tail call i64 @llvm.abs.i64(i64 %.090, i1 true)
  br label %.thread3

.thread3:                                         ; preds = %bb.t, %bb.r, %bb.p
  %.2 = phi i64 [ 0, %bb.p ], [ 0, %bb.r ], [ %spec.select6, %bb.t ]
  %i.aq = add nuw i64 %.195, 32
  %i.ar = sub i64 %i.aq, %.2
  %i.as = and i64 %i.ar, -64
  br label %bb.aj

bb.u:                                             ; preds = %bb.d, %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !142 ; 4 uses
  %.not36.i = icmp eq i32 %i.au, 0
  br i1 %.not36.i, label %._crit_edge.thread.i, label %.lr.ph.preheader.i

._crit_edge.thread.i:                             ; preds = %bb.u
  %i.av = add nuw nsw i64 %spec.select, 32
  %i.aw = and i64 %i.av, 9223372036854775744
  br label %bb.v

.lr.ph.preheader.i:                               ; preds = %bb.u
  %wide.trip.count.i = zext i32 %i.au to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ax = icmp eq i32 %i.au, 1
  br i1 %i.ax, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.02335.i = phi i64 [ %spec.select, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i ]
  %.02434.i = phi i64 [ 98, %.lr.ph.preheader.i.new ], [ %.125.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !538 ; 2 uses
  %i.bb = sub nsw i64 %spec.select, %i.ba
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.bb, i1 true) ; 2 uses
  %i.bc = icmp samesign ult i64 %spec.select.i, %.02434.i
  %.125.i = tail call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %.02434.i) ; 2 uses
  %.1.i = select i1 %i.bc, i64 %i.ba, i64 %.02335.i
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !538 ; 2 uses
  %i.bg = sub nsw i64 %spec.select, %i.bf
  %spec.select.i.1 = tail call i64 @llvm.abs.i64(i64 %i.bg, i1 true) ; 2 uses
  %i.bh = icmp samesign ult i64 %spec.select.i.1, %.125.i
  %.125.i.1 = tail call i64 @llvm.umin.i64(i64 %spec.select.i.1, i64 %.125.i) ; 2 uses
  %.1.i.1 = select i1 %i.bh, i64 %i.bf, i64 %.1.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !585

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.02335.i.epil.init = phi i64 [ %spec.select, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ]
  %.02434.i.epil.init = phi i64 [ 98, %.lr.ph.preheader.i ], [ %.125.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod14 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i.epil.init
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !538 ; 2 uses
  %i.bl = sub nsw i64 %spec.select, %i.bk
  %spec.select.i.epil = tail call i64 @llvm.abs.i64(i64 %i.bl, i1 true)
  %i.bm = icmp samesign ult i64 %spec.select.i.epil, %.02434.i.epil.init
  %.1.i.epil = select i1 %i.bm, i64 %i.bk, i64 %.02335.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ] ; 4 uses
  %i.bn = add nsw i64 %.1.i.lcssa, 32
  %i.bo = and i64 %i.bn, -64                      ; 2 uses
  %.not.i = icmp slt i64 %spec.select, %.1.i.lcssa
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.bp = phi i64 [ %i.aw, %._crit_edge.thread.i ], [ %i.bo, %._crit_edge.i ]
  %.023.lcssa42.i = phi i64 [ %spec.select, %._crit_edge.thread.i ], [ %.1.i.lcssa, %._crit_edge.i ]
  %i.bq = or disjoint i64 %i.bp, 48
  %i.br = icmp slt i64 %spec.select, %i.bq
  %spec.select31.i = select i1 %i.br, i64 %.023.lcssa42.i, i64 %spec.select
  br label %af_latin_snap_width.exit

bb.w:                                             ; preds = %._crit_edge.i
  %i.bs = add nsw i64 %i.bo, -48
  %i.bt = icmp sgt i64 %spec.select, %i.bs
  %spec.select32.i = select i1 %i.bt, i64 %.1.i.lcssa, i64 %spec.select
  br label %af_latin_snap_width.exit

af_latin_snap_width.exit:                         ; preds = %bb.v, %bb.w
  %.027.i = phi i64 [ %spec.select31.i, %bb.v ], [ %spec.select32.i, %bb.w ] ; 9 uses
  br i1 %.not7, label %bb.z, label %bb.x

bb.x:                                             ; preds = %af_latin_snap_width.exit
  %i.bu = icmp sgt i64 %.027.i, 63
  br i1 %i.bu, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.bv = add nuw nsw i64 %.027.i, 16
  %i.bw = and i64 %i.bv, 9223372036854775744
  br label %bb.aj

bb.z:                                             ; preds = %af_latin_snap_width.exit
  %i.bx = and i32 %.5164.val, 8
  %.not116 = icmp eq i32 %i.bx, 0
  br i1 %.not116, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = icmp slt i64 %.027.i, 64
  br i1 %i.by, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nuw nsw i64 %.027.i, 32
  %i.ca = and i64 %i.bz, 9223372036854775744
  br label %bb.aj

bb.ac:                                            ; preds = %bb.z
  %i.cb = icmp slt i64 %.027.i, 48
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cc = add nsw i64 %.027.i, 64
  %i.cd = ashr i64 %i.cc, 1
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.ce = icmp samesign ult i64 %.027.i, 128
  br i1 %i.ce, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cf = add nuw nsw i64 %.027.i, 22
  %i.cg = and i64 %i.cf, 192                      ; 2 uses
  %reass.sub = sub nsw i64 %i.cg, %spec.select
  %i.ch = add nsw i64 %reass.sub, -16
  %i.ci = icmp ult i64 %i.ch, -31
  br i1 %i.ci, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cj = icmp samesign ult i64 %spec.select, 48
  br i1 %i.cj, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ck = lshr i64 %spec.select, 1
  %i.cl = or disjoint i64 %i.ck, 32
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.cm = add nuw nsw i64 %.027.i, 32
  %i.cn = and i64 %i.cm, 9223372036854775744
  br label %bb.aj

bb.aj:                                            ; preds = %bb.o, %bb.y, %bb.ad, %bb.ai, %bb.ab, %bb.x, %bb.aa, %bb.ag, %bb.ah, %bb.af, %bb.j, %bb.l, %bb.n, %.thread3, %bb.h, %bb.e
  %.6 = phi i64 [ %spec.select123, %bb.o ], [ %spec.select, %bb.e ], [ %.195, %bb.h ], [ %spec.store.select5, %bb.j ], [ %i.as, %.thread3 ], [ %i.z, %bb.n ], [ %i.cg, %bb.af ], [ %.195, %bb.l ], [ %i.bw, %bb.y ], [ %i.cn, %bb.ai ], [ 64, %bb.x ], [ %i.ca, %bb.ab ], [ %i.cd, %bb.ad ], [ 64, %bb.aa ], [ %i.cl, %bb.ah ], [ %spec.select, %bb.ag ] ; 2 uses
  %i.co = sub nsw i64 0, %.6
  %i.cp = icmp slt i64 %1, 0
  %spec.select122 = select i1 %i.cp, i64 %i.co, i64 %.6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.b, %bb.aj
  %.097 = phi i64 [ %1, %bb.a ], [ %spec.select122, %bb.aj ], [ %1, %bb.b ]
  ret i64 %.097
}

; Function Attrs: nounwind uwtable
define internal fastcc void @af_loader_embolden_glyph_in_slot(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %3 = alloca %struct.FT_Matrix_, align 8         ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !323  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !303
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !304  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !71
  %i.l = load i16, ptr %i.k, align 8, !tbaa !586
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 768 ; 3 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !587
  %.not46 = icmp eq i16 %i.l, %i.n                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %i.q = zext i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @__const.af_loader_embolden_glyph_in_slot.scale_down_matrix, i64 24, i1 false)
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %2, align 8, !tbaa !230
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !327
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @af_writing_system_classes, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !328
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !588  ; 2 uses
  %.not45 = icmp eq ptr %i.z, null
  br i1 %.not45, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void %i.z(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #18
  %.pre = load i64, ptr %i.a, align 8, !tbaa !71  ; 3 uses
  br i1 %.not46, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp sgt i64 %.pre, 0
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 776
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !589
  %.not47 = icmp eq i64 %.pre, %i.ac
  br i1 %.not47, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.val51 = load ptr, ptr %i.e, align 8, !tbaa !323
  %.val52 = load i16, ptr %i.o, align 8, !tbaa !28
  %.val53 = load ptr, ptr %i.g, align 8, !tbaa !303
  %i.ad = getelementptr i8, ptr %.val51, i64 816
  %.val51.val = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.ae = getelementptr i8, ptr %.val53, i64 24
  %.val53.val = load i16, ptr %i.ae, align 8, !tbaa !548
  %i.af = call fastcc i64 @af_loader_compute_darkening(ptr %.val51.val, i16 %.val52, i16 %.val53.val, i64 noundef %.pre)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !590
  %i.ai = mul i64 %i.ah, %i.af                    ; 2 uses
  %i.aj = ashr i64 %i.ai, 63
  %i.ak = add i64 %i.ai, 32768
  %i.al = add i64 %i.ak, %i.aj
  %i.am = load i64, ptr %i.a, align 8, !tbaa !71
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 776
  store i64 %i.am, ptr %i.an, align 8, !tbaa !589
  %i.ao = load i16, ptr %i.k, align 8, !tbaa !586
  store i16 %i.ao, ptr %i.m, align 8, !tbaa !587
  %i.ap = shl i64 %i.al, 16
  %i.aq = add i64 %i.ap, 140737488355328
  %i.ar = ashr i64 %i.aq, 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 792
end_hunk_6
