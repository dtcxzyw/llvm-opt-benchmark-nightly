Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jquant2-8?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@finish_pass1:bb.a
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !89

.lr.ph.i84.i.i:                                   ; preds = %.lr.ph.i84.i.i, %.lr.ph.i84.i.i.preheader.new
  %.018.i.i.i = phi ptr [ null, %.lr.ph.i84.i.i.preheader.new ], [ %spec.select14.i.i.i.3, %.lr.ph.i84.i.i ]
  %.0917.i.i.i = phi i64 [ 0, %.lr.ph.i84.i.i.preheader.new ], [ %spec.select.i85.i.i.3, %.lr.ph.i84.i.i ] ; 2 uses
  %.01215.i.i.i = phi ptr [ %i.m, %.lr.ph.i84.i.i.preheader.new ], [ %i.ay, %.lr.ph.i84.i.i ] ; 9 uses
  %niter53 = phi i64 [ 0, %.lr.ph.i84.i.i.preheader.new ], [ %niter53.next.3, %.lr.ph.i84.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !67 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, %.0917.i.i.i
  %spec.select.i85.i.i = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 %.0917.i.i.i) ; 2 uses
  %spec.select14.i.i.i = select i1 %i.al, ptr %.01215.i.i.i, ptr %.018.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, %spec.select.i85.i.i
  %spec.select.i85.i.i.1 = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 %spec.select.i85.i.i) ; 2 uses
  %spec.select14.i.i.i.1 = select i1 %i.ap, ptr %i.am, ptr %spec.select14.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 104
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !67 ; 2 uses
  %i.at = icmp sgt i64 %i.as, %spec.select.i85.i.i.1
  %spec.select.i85.i.i.2 = tail call i64 @llvm.smax.i64(i64 %i.as, i64 %spec.select.i85.i.i.1) ; 2 uses
  %spec.select14.i.i.i.2 = select i1 %i.at, ptr %i.aq, ptr %spec.select14.i.i.i.1
  %i.au = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 144
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !67 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %spec.select.i85.i.i.2
  %spec.select.i85.i.i.3 = tail call i64 @llvm.smax.i64(i64 %i.aw, i64 %spec.select.i85.i.i.2) ; 2 uses
  %spec.select14.i.i.i.3 = select i1 %i.ax, ptr %i.au, ptr %spec.select14.i.i.i.2 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 160 ; 2 uses
  %niter53.next.3 = add i64 %niter53, 4           ; 2 uses
  %niter53.ncmp.3 = icmp eq i64 %niter53.next.3, %unroll_iter52
  br i1 %niter53.ncmp.3, label %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i84.i.i, !llvm.loop !90

find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i84.i.i
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %find_biggest_color_pop.exit.i.i, label %.lr.ph.i84.i.i.epil.preheader

.lr.ph.i84.i.i.epil.preheader:                    ; preds = %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i84.i.i.preheader
  %.018.i.i.i.epil.init = phi ptr [ null, %.lr.ph.i84.i.i.preheader ], [ %spec.select14.i.i.i.3, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa ]
  %.0917.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i84.i.i.preheader ], [ %spec.select.i85.i.i.3, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa ]
  %.01215.i.i.i.epil.init = phi ptr [ %i.m, %.lr.ph.i84.i.i.preheader ], [ %i.ay, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter48, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i84.i.i.epil

.lr.ph.i84.i.i.epil:                              ; preds = %.lr.ph.i84.i.i.epil, %.lr.ph.i84.i.i.epil.preheader
  %.018.i.i.i.epil = phi ptr [ %spec.select14.i.i.i.epil, %.lr.ph.i84.i.i.epil ], [ %.018.i.i.i.epil.init, %.lr.ph.i84.i.i.epil.preheader ]
  %.0917.i.i.i.epil = phi i64 [ %spec.select.i85.i.i.epil, %.lr.ph.i84.i.i.epil ], [ %.0917.i.i.i.epil.init, %.lr.ph.i84.i.i.epil.preheader ] ; 2 uses
  %.01215.i.i.i.epil = phi ptr [ %i.bc, %.lr.ph.i84.i.i.epil ], [ %.01215.i.i.i.epil.init, %.lr.ph.i84.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i84.i.i.epil ], [ 0, %.lr.ph.i84.i.i.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.epil, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !67 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, %.0917.i.i.i.epil
  %spec.select.i85.i.i.epil = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 %.0917.i.i.i.epil)
  %spec.select14.i.i.i.epil = select i1 %i.bb, ptr %.01215.i.i.i.epil, ptr %.018.i.i.i.epil ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.epil, i64 40
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter48
  br i1 %epil.iter.cmp.not, label %find_biggest_color_pop.exit.i.i, label %.lr.ph.i84.i.i.epil, !llvm.loop !91

find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %find_biggest_color_pop.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.019.i.i.i.epil.init = phi ptr [ null, %.lr.ph.i.i.i.preheader ], [ %.1.i.i.i.1, %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa ] ; 2 uses
  %.01018.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %.111.i.i.i.1, %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa ]
  %.01316.i.i.i.epil.init = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader ], [ %i.ai, %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa ] ; 3 uses
  %lcmp.mod47 = trunc i64 %indvars.iv.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.bd = getelementptr inbounds nuw i8, ptr %.01316.i.i.i.epil.init, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !66
  %i.bf = icmp sgt i64 %i.be, %.01018.i.i.i.epil.init
  br i1 %i.bf, label %bb.f, label %find_biggest_color_pop.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %.01316.i.i.i.epil.init, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !67
  %i.bi = icmp sgt i64 %i.bh, 0
  %spec.select15.i.i.i.epil = select i1 %i.bi, ptr %.01316.i.i.i.epil.init, ptr %.019.i.i.i.epil.init
  br label %find_biggest_color_pop.exit.i.i

find_biggest_color_pop.exit.i.i:                  ; preds = %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa, %bb.f, %.lr.ph.i.i.i.epil.preheader, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i84.i.i.epil
  %.0.i.i = phi ptr [ %spec.select14.i.i.i.epil, %.lr.ph.i84.i.i.epil ], [ %spec.select14.i.i.i.3, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa ], [ %.1.i.i.i.1, %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa ], [ %.019.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ], [ %spec.select15.i.i.i.epil, %bb.f ] ; 8 uses
  %i.bj = icmp eq ptr %.0.i.i, null
  br i1 %i.bj, label %find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i, label %bb.g

bb.g:                                             ; preds = %find_biggest_color_pop.exit.i.i
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %indvars.iv.i.i ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !68 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !68
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !69 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !65 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !65
  %i.bu = load i32, ptr %.0.i.i, align 8, !tbaa !70 ; 3 uses
  store i32 %i.bu, ptr %i.bk, align 8, !tbaa !70
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !71 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !71
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !64 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !64
  %i.cb = sub nsw i32 %i.bm, %i.bu
  %i.cc = shl i32 %i.cb, 3
  %i.cd = load i32, ptr %i.q, align 8, !tbaa !48
  %i.ce = zext i32 %i.cd to i64                   ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !59
  %i.ck = mul nsw i32 %i.cj, %i.cc                ; 3 uses
  %i.cl = sub nsw i32 %i.bp, %i.bw
  %i.cm = shl i32 %i.cl, 2
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.ce
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !59
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !59
  %i.cs = mul nsw i32 %i.cr, %i.cm                ; 4 uses
  %i.ct = sub nsw i32 %i.bs, %i.bz
  %i.cu = shl i32 %i.ct, 3
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.ce
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !59
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !59
  %i.da = mul nsw i32 %i.cz, %i.cu                ; 3 uses
  %i.db = shl nuw i64 1, %i.ce
  %i.dc = and i64 %i.db, 4292
  %.not78.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not78.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dd = icmp sle i32 %i.ck, %i.cs
  %spec.select.i.i = zext i1 %i.dd to i32
  %spec.select79.i.i = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 %i.cs)
  %i.de = icmp sgt i32 %i.da, %spec.select79.i.i
  br i1 %i.de, label %.thread89.i.i, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.df = icmp sgt i32 %i.da, %i.cs
  %spec.select80.i.i = select i1 %i.df, i32 2, i32 1
  %spec.select81.i.i = tail call i32 @llvm.smax.i32(i32 %i.da, i32 %i.cs)
  %i.dg = icmp sgt i32 %i.ck, %spec.select81.i.i
  br i1 %i.dg, label %.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2.i.i = phi i32 [ %spec.select.i.i, %bb.h ], [ %spec.select80.i.i, %bb.i ]
  switch i32 %.2.i.i, label %default.unreachable [
    i32 0, label %.thread.i.i
    i32 1, label %bb.k
    i32 2, label %.thread89.i.i
  ]

.thread.i.i:                                      ; preds = %bb.j, %bb.i
  %i.dh = add nsw i32 %i.bu, %i.bm
  %i.di = sdiv i32 %i.dh, 2                       ; 2 uses
  store i32 %i.di, ptr %i.bl, align 4, !tbaa !68
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.bk, align 8, !tbaa !70
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dk = add nsw i32 %i.bw, %i.bp
  %i.dl = sdiv i32 %i.dk, 2                       ; 2 uses
  store i32 %i.dl, ptr %i.bo, align 4, !tbaa !69
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.bx, align 8, !tbaa !71
  br label %bb.l

.thread89.i.i:                                    ; preds = %bb.j, %bb.h
  %i.dn = add nsw i32 %i.bz, %i.bs
  %i.do = sdiv i32 %i.dn, 2                       ; 2 uses
  store i32 %i.do, ptr %i.br, align 4, !tbaa !65
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.ca, align 8, !tbaa !64
  br label %bb.l

default.unreachable:                              ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %.thread89.i.i, %bb.k, %.thread.i.i
  tail call fastcc void @update_box(ptr noundef nonnull readonly %0, ptr noundef nonnull %.0.i.i)
  tail call fastcc void @update_box(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.bk)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.r
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i.i, label %median_cut.exit.i, label %bb.b, !llvm.loop !92

find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i: ; preds = %find_biggest_color_pop.exit.i.i
  %i.dq = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %median_cut.exit.i

median_cut.exit.i:                                ; preds = %bb.l, %find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i
  %.072.lcssa.i.i = phi i32 [ %i.dq, %find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.g, %bb.l ] ; 3 uses
  %1 = icmp sgt i32 %.072.lcssa.i.i, 0
  br i1 %1, label %.lr.ph.i, label %select_colors.exit

.lr.ph.i:                                         ; preds = %median_cut.exit.i, %bb.a
  %.072.lcssa.i62.i = phi i32 [ %.072.lcssa.i.i, %median_cut.exit.i ], [ 1, %bb.a ] ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.072.lcssa.i62.i to i64
  br label %bb.m

bb.m:                                             ; preds = %compute_color.exit.i, %.lr.ph.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next53.i, %compute_color.exit.i ] ; 5 uses
  %i.dr = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %indvars.iv52.i ; 6 uses
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !49
  %i.dv = load i32, ptr %i.dr, align 8, !tbaa !70 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !68 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !71 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !69 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !64 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !65 ; 2 uses
  %.not95.i.i = icmp sle i32 %i.dv, %i.dx
  tail call void @llvm.assume(i1 %.not95.i.i)
  %.not6780.i.i = icmp sgt i32 %i.dz, %i.eb
  %i.eg = sext i32 %i.ed to i64                   ; 2 uses
  br i1 %.not6780.i.i, label %.preheader.us.i.i, label %.preheader.lr.ph.split.i.i

.preheader.us.i.i:                                ; preds = %bb.m, %.preheader.us.i.i
  br label %.preheader.us.i.i

.preheader.lr.ph.split.i.i:                       ; preds = %bb.m
  %.not6870.i.i = icmp sgt i32 %i.ed, %i.ef
  br i1 %.not6870.i.i, label %.preheader.us110.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.split.i.i
  %i.eh = add i32 %i.ef, 1
  %i.ei = sext i32 %i.dz to i64
  %i.ej = add i32 %i.eb, 1
  %i.ek = sext i32 %i.dv to i64
  %i.el = add i32 %i.dx, 1
  br label %.preheader.i.i

.preheader.us110.i.i:                             ; preds = %.preheader.lr.ph.split.i.i, %.preheader.us110.i.i
  br label %.preheader.us110.i.i

.preheader.i.i:                                   ; preds = %._crit_edge87.split.i.i, %.preheader.preheader.i.i
  %indvars.iv131.i.i = phi i64 [ %i.ek, %.preheader.preheader.i.i ], [ %indvars.iv.next132.i.i, %._crit_edge87.split.i.i ] ; 3 uses
  %.0100.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.3.i.i, %._crit_edge87.split.i.i ]
  %.05099.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.353.i.i, %._crit_edge87.split.i.i ]
  %.05498.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.357.i.i, %._crit_edge87.split.i.i ]
  %.05897.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.361.i.i, %._crit_edge87.split.i.i ]
  %i.em = getelementptr inbounds [8 x i8], ptr %i.du, i64 %indvars.iv131.i.i
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !51
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.en, i64 %i.eg
  %i.eo = trunc nsw i64 %indvars.iv131.i.i to i32
  %i.ep = shl i32 %i.eo, 3
  %i.eq = or disjoint i32 %i.ep, 4
  %i.er = sext i32 %i.eq to i64
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %._crit_edge.i.i, %.preheader.i.i
  %indvars.iv126.i.i = phi i64 [ %i.ei, %.preheader.i.i ], [ %indvars.iv.next127.i.i, %._crit_edge.i.i ] ; 3 uses
  %.185.i.i = phi i64 [ %.0100.i.i, %.preheader.i.i ], [ %.3.i.i, %._crit_edge.i.i ]
  %.15184.i.i = phi i64 [ %.05099.i.i, %.preheader.i.i ], [ %.353.i.i, %._crit_edge.i.i ]
  %.15583.i.i = phi i64 [ %.05498.i.i, %.preheader.i.i ], [ %.357.i.i, %._crit_edge.i.i ]
  %.15982.i.i = phi i64 [ %.05897.i.i, %.preheader.i.i ], [ %.361.i.i, %._crit_edge.i.i ]
  %gep.i.i = getelementptr [64 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv126.i.i
  %i.es = trunc nsw i64 %indvars.iv126.i.i to i32
  %i.et = shl i32 %i.es, 2
  %i.eu = or disjoint i32 %i.et, 2
  %i.ev = sext i32 %i.eu to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i29.i
  %indvars.iv.i30.i = phi i64 [ %i.eg, %.lr.ph.i29.i ], [ %indvars.iv.next.i31.i, %bb.p ] ; 2 uses
  %.276.i.i = phi i64 [ %.185.i.i, %.lr.ph.i29.i ], [ %.3.i.i, %bb.p ] ; 2 uses
  %.25275.i.i = phi i64 [ %.15184.i.i, %.lr.ph.i29.i ], [ %.353.i.i, %bb.p ] ; 2 uses
  %.25674.i.i = phi i64 [ %.15583.i.i, %.lr.ph.i29.i ], [ %.357.i.i, %bb.p ] ; 2 uses
  %.26073.i.i = phi i64 [ %.15982.i.i, %.lr.ph.i29.i ], [ %.361.i.i, %bb.p ] ; 2 uses
  %.06571.i.i = phi ptr [ %gep.i.i, %.lr.ph.i29.i ], [ %i.ew, %bb.p ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.06571.i.i, i64 2
  %i.ex = load i16, ptr %.06571.i.i, align 2, !tbaa !61 ; 2 uses
  %.not69.i.i = icmp eq i16 %i.ex, 0
  br i1 %.not69.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ey = zext i16 %i.ex to i64                   ; 4 uses
  %i.ez = add nsw i64 %.26073.i.i, %i.ey
  %i.fa = mul nsw i64 %i.ey, %i.er
  %i.fb = add nsw i64 %i.fa, %.25674.i.i
  %i.fc = mul nsw i64 %i.ey, %i.ev
  %i.fd = add nsw i64 %i.fc, %.25275.i.i
  %i.fe = trunc nsw i64 %indvars.iv.i30.i to i32
  %i.ff = shl i32 %i.fe, 3
  %i.fg = or disjoint i32 %i.ff, 4
  %i.fh = sext i32 %i.fg to i64
  %i.fi = mul nsw i64 %i.ey, %i.fh
  %i.fj = add nsw i64 %i.fi, %.276.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.361.i.i = phi i64 [ %i.ez, %bb.o ], [ %.26073.i.i, %bb.n ] ; 7 uses
  %.357.i.i = phi i64 [ %i.fb, %bb.o ], [ %.25674.i.i, %bb.n ] ; 4 uses
  %.353.i.i = phi i64 [ %i.fd, %bb.o ], [ %.25275.i.i, %bb.n ] ; 4 uses
  %.3.i.i = phi i64 [ %i.fj, %bb.o ], [ %.276.i.i, %bb.n ] ; 4 uses
  %indvars.iv.next.i31.i = add nsw i64 %indvars.iv.i30.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i31.i to i32
  %exitcond.not.i32.i = icmp eq i32 %i.eh, %lftr.wideiv.i.i
  br i1 %exitcond.not.i32.i, label %._crit_edge.i.i, label %bb.n, !llvm.loop !93

._crit_edge.i.i:                                  ; preds = %bb.p
  %indvars.iv.next127.i.i = add nsw i64 %indvars.iv126.i.i, 1 ; 2 uses
  %lftr.wideiv129.i.i = trunc i64 %indvars.iv.next127.i.i to i32
  %exitcond130.not.i.i = icmp eq i32 %i.ej, %lftr.wideiv129.i.i
  br i1 %exitcond130.not.i.i, label %._crit_edge87.split.i.i, label %.lr.ph.i29.i, !llvm.loop !94

._crit_edge87.split.i.i:                          ; preds = %._crit_edge.i.i
  %indvars.iv.next132.i.i = add nsw i64 %indvars.iv131.i.i, 1 ; 2 uses
  %lftr.wideiv134.i.i = trunc i64 %indvars.iv.next132.i.i to i32
  %exitcond135.not.i.i = icmp eq i32 %i.el, %lftr.wideiv134.i.i
  br i1 %exitcond135.not.i.i, label %compute_color.exit.i, label %.preheader.i.i, !llvm.loop !95

compute_color.exit.i:                             ; preds = %._crit_edge87.split.i.i
  %i.fk = ashr i64 %.361.i.i, 1                   ; 3 uses
  %i.fl = add nsw i64 %.357.i.i, %i.fk
  %i.fm = sdiv i64 %i.fl, %.361.i.i
  %i.fn = trunc i64 %i.fm to i8
  %i.fo = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !60
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv52.i
  store i8 %i.fn, ptr %i.fq, align 1, !tbaa !36
  %i.fr = add nsw i64 %.353.i.i, %i.fk
  %i.fs = sdiv i64 %i.fr, %.361.i.i
  %i.ft = trunc i64 %i.fs to i8
  %i.fu = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !60
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv52.i
  store i8 %i.ft, ptr %i.fx, align 1, !tbaa !36
  %i.fy = add nsw i64 %.3.i.i, %i.fk
  %i.fz = sdiv i64 %i.fy, %.361.i.i
  %i.ga = trunc i64 %i.fz to i8
  %i.gb = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !60
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv52.i
  store i8 %i.ga, ptr %i.ge, align 1, !tbaa !36
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %select_colors.exit, label %bb.m, !llvm.loop !96

select_colors.exit:                               ; preds = %compute_color.exit.i, %median_cut.exit.i
  %.072.lcssa.i61.i = phi i32 [ %.072.lcssa.i.i, %median_cut.exit.i ], [ %.072.lcssa.i62.i, %compute_color.exit.i ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.072.lcssa.i61.i, ptr %i.gf, align 4, !tbaa !58
  %i.gg = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  store i32 96, ptr %i.gh, align 8, !tbaa !35
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 44
  store i32 %.072.lcssa.i61.i, ptr %i.gi, align 4, !tbaa !36
  %i.gj = load ptr, ptr %0, align 8, !tbaa !32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !98
  tail call void %i.gl(ptr noundef nonnull %0, i32 noundef 1) #9, !inline_history !88
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 1, ptr %i.gm, align 8, !tbaa !53
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pass2_fs_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 4 uses
  %i.t = add i32 %i.f, -1                         ; 2 uses
  %i.u = mul i32 %i.t, 3
  %i.v = zext i32 %i.u to i64
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.y = mul i32 %i.f, 3
  %i.z = add i32 %i.y, 3
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %.not128129 = icmp eq i32 %i.f, 0
  br i1 %.not128129, label %.lr.ph148.split.us, label %.lr.ph148.split.preheader

.lr.ph148.split.preheader:                        ; preds = %.lr.ph148
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph148.split

.lr.ph148.split.us:                               ; preds = %.lr.ph148
  %.promoted = load i32, ptr %i.s, align 8, !tbaa !102 ; 2 uses
  %xtraiter = and i32 %3, 1
  %i.ab = icmp eq i32 %3, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph148.split.us.new

.lr.ph148.split.us.new:                           ; preds = %.lr.ph148.split.us
  %unroll_iter = and i32 %3, 2147483646
  %i.ac = icmp ne i32 %.promoted, 0               ; 3 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !46  ; 2 uses
  %.0117.us.idx = select i1 %i.ac, i64 %i.aa, i64 0
  %.0117.us = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.0117.us.idx ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0117.us, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %.0117.us, i64 4
  %.0117.us.idx.1 = select i1 %i.ac, i64 0, i64 %i.aa
  %.0117.us.1 = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.0117.us.idx.1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0117.us.1, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.0117.us.1, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph148.split.us.new
  %niter = phi i32 [ 0, %.lr.ph148.split.us.new ], [ %niter.next.1, %bb.b ]
  store i16 0, ptr %.0117.us, align 2, !tbaa !61
  store i16 0, ptr %i.ae, align 2, !tbaa !61
  store i16 0, ptr %i.af, align 2, !tbaa !61
  store i16 0, ptr %.0117.us.1, align 2, !tbaa !61
  store i16 0, ptr %i.ag, align 2, !tbaa !61
  store i16 0, ptr %i.ah, align 2, !tbaa !61
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge149.split.us.unr-lcssa, label %bb.b, !llvm.loop !99

._crit_edge149.split.us.unr-lcssa:                ; preds = %bb.b
  %storemerge.us.1 = zext i1 %i.ac to i32         ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge149.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge149.split.us.unr-lcssa, %.lr.ph148.split.us
  %storemerge.us150.epil.init = phi i32 [ %.promoted, %.lr.ph148.split.us ], [ %storemerge.us.1, %._crit_edge149.split.us.unr-lcssa ]
  %lcmp.mod173 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %.not.us.epil = icmp eq i32 %storemerge.us150.epil.init, 0 ; 2 uses
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !46
  %storemerge.us.epil = zext i1 %.not.us.epil to i32
  %.0117.us.idx.epil = select i1 %.not.us.epil, i64 0, i64 %i.aa
  %.0117.us.epil = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %.0117.us.idx.epil ; 3 uses
  store i16 0, ptr %.0117.us.epil, align 2, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %.0117.us.epil, i64 2
  store i16 0, ptr %i.aj, align 2, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %.0117.us.epil, i64 4
  store i16 0, ptr %i.ak, align 2, !tbaa !61
  br label %._crit_edge149.split.us

._crit_edge149.split.us:                          ; preds = %._crit_edge149.split.us.unr-lcssa, %.epil.preheader
  %storemerge.us.lcssa = phi i32 [ %storemerge.us.1, %._crit_edge149.split.us.unr-lcssa ], [ %storemerge.us.epil, %.epil.preheader ]
  store i32 %storemerge.us.lcssa, ptr %i.s, align 8, !tbaa !102
  br label %._crit_edge149

.lr.ph148.split:                                  ; preds = %.lr.ph148.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph148.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !60 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60 ; 2 uses
  %i.ap = load i32, ptr %i.s, align 8, !tbaa !102
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph148.split
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.v
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.w
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.aa
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph148.split
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !46
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  %.0117 = phi ptr [ %i.au, %bb.d ], [ %i.at, %bb.c ]
  %.0115 = phi ptr [ %i.am, %bb.d ], [ %i.aq, %bb.c ]
  %.0114 = phi ptr [ %i.ao, %bb.d ], [ %i.ar, %bb.c ]
  %.0113 = phi i64 [ 1, %bb.d ], [ -1, %bb.c ]
  %.0112 = phi i64 [ 3, %bb.d ], [ -3, %bb.c ]    ; 2 uses
  store i32 %storemerge, ptr %i.s, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.0142 = phi i32 [ %i.f, %.lr.ph ], [ %i.es, %bb.g ]
  %.1141 = phi ptr [ %.0114, %.lr.ph ], [ %i.er, %bb.g ] ; 2 uses
  %.1116140 = phi ptr [ %.0115, %.lr.ph ], [ %i.eq, %bb.g ] ; 4 uses
  %.1118139 = phi ptr [ %.0117, %.lr.ph ], [ %i.av, %bb.g ] ; 4 uses
  %.0119138 = phi i32 [ 0, %.lr.ph ], [ %i.eo, %bb.g ]
  %.0120137 = phi i32 [ 0, %.lr.ph ], [ %i.eh, %bb.g ]
  %.0121136 = phi i32 [ 0, %.lr.ph ], [ %i.ea, %bb.g ]
  %.0122135 = phi i32 [ 0, %.lr.ph ], [ %i.dv, %bb.g ]
  %.0123134 = phi i32 [ 0, %.lr.ph ], [ %i.dr, %bb.g ]
  %.0124133 = phi i32 [ 0, %.lr.ph ], [ %i.dn, %bb.g ]
  %.0125132 = phi i32 [ 0, %.lr.ph ], [ %i.ep, %bb.g ]
  %.0126131 = phi i32 [ 0, %.lr.ph ], [ %i.ei, %bb.g ]
  %.0127130 = phi i32 [ 0, %.lr.ph ], [ %i.eb, %bb.g ]
  %i.av = getelementptr inbounds [2 x i8], ptr %.1118139, i64 %.0112 ; 7 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !61
  %i.ax = sext i16 %i.aw to i32
  %i.ay = add nsw i32 %.0127130, 8
  %i.az = add nsw i32 %i.ay, %i.ax
  %i.ba = ashr i32 %i.az, 4
  %i.bb = getelementptr i8, ptr %i.av, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !61
  %i.bd = sext i16 %i.bc to i32
  %i.be = add nsw i32 %.0126131, 8
  %i.bf = add nsw i32 %i.be, %i.bd
  %i.bg = ashr i32 %i.bf, 4
  %i.bh = getelementptr i8, ptr %i.av, i64 4
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !61
  %i.bj = sext i16 %i.bi to i32
  %i.bk = add nsw i32 %.0125132, 8
  %i.bl = add nsw i32 %i.bk, %i.bj
  %i.bm = ashr i32 %i.bl, 4
  %i.bn = sext i32 %i.ba to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59
  %i.bq = sext i32 %i.bg to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !59
  %i.bt = sext i32 %i.bm to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !59
  %i.bw = load i8, ptr %.1116140, align 1, !tbaa !36
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bp, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.1116140, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !36
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.bs, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.1116140, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !36
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.bv, %i.cf
  %i.ch = sext i32 %i.by to i64
  %i.ci = getelementptr inbounds i8, ptr %i.h, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !36
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = sext i32 %i.cc to i64
  %i.cm = getelementptr inbounds i8, ptr %i.h, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !36
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = sext i32 %i.cg to i64
  %i.cq = getelementptr inbounds i8, ptr %i.h, i64 %i.cp
end_hunk_0
