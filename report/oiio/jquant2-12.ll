inline.NumInlined: 9
inline.NumDeleted: 8
begin_hunk_0_@finish_pass1:bb.a

.lr.ph.i84.i.i.preheader:                         ; preds = %bb.b
  %xtraiter48 = and i64 %indvars.iv.i.i, 3        ; 3 uses
  %i.u = icmp ult i64 %indvar, 3
  br i1 %i.u, label %.lr.ph.i84.i.i.epil.preheader, label %.lr.ph.i84.i.i.preheader.new

.lr.ph.i84.i.i.preheader.new:                     ; preds = %.lr.ph.i84.i.i.preheader
  %unroll_iter52 = and i64 %indvars.iv.i.i, 9223372036854775804
  br label %.lr.ph.i84.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i.preheader.new
  %.019.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.preheader.new ], [ %.1.i.i.i.1, %bb.e ] ; 2 uses
  %.01018.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %.111.i.i.i.1, %bb.e ] ; 3 uses
  %.01316.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader.new ], [ %i.ai, %bb.e ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %.01316.i.i.i, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !84   ; 2 uses
  %i.x = icmp sgt i64 %i.w, %.01018.i.i.i
  br i1 %i.x, label %bb.c, label %.lr.ph.i.i.i.1

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.01316.i.i.i, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !85
  %i.aa = icmp sgt i64 %i.z, 0                    ; 2 uses
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.w, i64 %.01018.i.i.i
  %spec.select15.i.i.i = select i1 %i.aa, ptr %.01316.i.i.i, ptr %.019.i.i.i
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.c, %.lr.ph.i.i.i
  %.111.i.i.i = phi i64 [ %.01018.i.i.i, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %bb.c ] ; 3 uses
  %.1.i.i.i = phi ptr [ %.019.i.i.i, %.lr.ph.i.i.i ], [ %spec.select15.i.i.i, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01316.i.i.i, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !84 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, %.111.i.i.i
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.01316.i.i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.01316.i.i.i, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !85
  %i.ah = icmp sgt i64 %i.ag, 0                   ; 2 uses
  %spec.select.i.i.i.1 = select i1 %i.ah, i64 %i.ac, i64 %.111.i.i.i
  %spec.select15.i.i.i.1 = select i1 %i.ah, ptr %i.ae, ptr %.1.i.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.1
  %.111.i.i.i.1 = phi i64 [ %.111.i.i.i, %.lr.ph.i.i.i.1 ], [ %spec.select.i.i.i.1, %bb.d ] ; 2 uses
  %.1.i.i.i.1 = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i.1 ], [ %spec.select15.i.i.i.1, %bb.d ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01316.i.i.i, i64 80 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !86

.lr.ph.i84.i.i:                                   ; preds = %.lr.ph.i84.i.i, %.lr.ph.i84.i.i.preheader.new
  %.018.i.i.i = phi ptr [ null, %.lr.ph.i84.i.i.preheader.new ], [ %spec.select14.i.i.i.3, %.lr.ph.i84.i.i ]
  %.0917.i.i.i = phi i64 [ 0, %.lr.ph.i84.i.i.preheader.new ], [ %spec.select.i85.i.i.3, %.lr.ph.i84.i.i ] ; 2 uses
  %.01215.i.i.i = phi ptr [ %i.m, %.lr.ph.i84.i.i.preheader.new ], [ %i.ay, %.lr.ph.i84.i.i ] ; 9 uses
  %niter53 = phi i64 [ 0, %.lr.ph.i84.i.i.preheader.new ], [ %niter53.next.3, %.lr.ph.i84.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !85 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, %.0917.i.i.i
  %spec.select.i85.i.i = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 %.0917.i.i.i) ; 2 uses
  %spec.select14.i.i.i = select i1 %i.al, ptr %.01215.i.i.i, ptr %.018.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !85 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, %spec.select.i85.i.i
  %spec.select.i85.i.i.1 = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 %spec.select.i85.i.i) ; 2 uses
  %spec.select14.i.i.i.1 = select i1 %i.ap, ptr %i.am, ptr %spec.select14.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 104
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  %i.at = icmp sgt i64 %i.as, %spec.select.i85.i.i.1
  %spec.select.i85.i.i.2 = tail call i64 @llvm.smax.i64(i64 %i.as, i64 %spec.select.i85.i.i.1) ; 2 uses
  %spec.select14.i.i.i.2 = select i1 %i.at, ptr %i.aq, ptr %spec.select14.i.i.i.1
  %i.au = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 144
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !85 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %spec.select.i85.i.i.2
  %spec.select.i85.i.i.3 = tail call i64 @llvm.smax.i64(i64 %i.aw, i64 %spec.select.i85.i.i.2) ; 2 uses
  %spec.select14.i.i.i.3 = select i1 %i.ax, ptr %i.au, ptr %spec.select14.i.i.i.2 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 160 ; 2 uses
  %niter53.next.3 = add i64 %niter53, 4           ; 2 uses
  %niter53.ncmp.3 = icmp eq i64 %niter53.next.3, %unroll_iter52
  br i1 %niter53.ncmp.3, label %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i84.i.i, !llvm.loop !87

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
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !85 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, %.0917.i.i.i.epil
  %spec.select.i85.i.i.epil = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 %.0917.i.i.i.epil)
  %spec.select14.i.i.i.epil = select i1 %i.bb, ptr %.01215.i.i.i.epil, ptr %.018.i.i.i.epil ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.epil, i64 40
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter48
  br i1 %epil.iter.cmp.not, label %find_biggest_color_pop.exit.i.i, label %.lr.ph.i84.i.i.epil, !llvm.loop !88

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
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !84
  %i.bf = icmp sgt i64 %i.be, %.01018.i.i.i.epil.init
  br i1 %i.bf, label %bb.f, label %find_biggest_color_pop.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %.01316.i.i.i.epil.init, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !85
  %i.bi = icmp sgt i64 %i.bh, 0
  %spec.select15.i.i.i.epil = select i1 %i.bi, ptr %.01316.i.i.i.epil.init, ptr %.019.i.i.i.epil.init
  br label %find_biggest_color_pop.exit.i.i

find_biggest_color_pop.exit.i.i:                  ; preds = %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa, %bb.f, %.lr.ph.i.i.i.epil.preheader, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i84.i.i.epil
  %.069.i.i = phi ptr [ %spec.select14.i.i.i.epil, %.lr.ph.i84.i.i.epil ], [ %spec.select14.i.i.i.3, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa ], [ %.1.i.i.i.1, %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa ], [ %.019.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ], [ %spec.select15.i.i.i.epil, %bb.f ] ; 8 uses
  %i.bj = icmp eq ptr %.069.i.i, null
  br i1 %i.bj, label %find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i, label %bb.g

bb.g:                                             ; preds = %find_biggest_color_pop.exit.i.i
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %indvars.iv.i.i ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !90 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !90
  %i.bo = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 12 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !91 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !91
  %i.br = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 20 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !83 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !83
  %i.bu = load i32, ptr %.069.i.i, align 8, !tbaa !92 ; 3 uses
  store i32 %i.bu, ptr %i.bk, align 8, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !93 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !93
  %i.by = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !81 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !81
  %i.cb = sub nsw i32 %i.bm, %i.bu
  %i.cc = shl i32 %i.cb, 7
  %i.cd = load i32, ptr %i.q, align 8, !tbaa !51
  %i.ce = zext i32 %i.cd to i64                   ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = mul nsw i32 %i.cj, %i.cc                ; 3 uses
  %i.cl = sub nsw i32 %i.bp, %i.bw
  %i.cm = shl i32 %i.cl, 6
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.ce
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = mul nsw i32 %i.cr, %i.cm                ; 4 uses
  %i.ct = sub nsw i32 %i.bs, %i.bz
  %i.cu = shl i32 %i.ct, 7
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.ce
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
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
  store i32 %i.di, ptr %i.bl, align 4, !tbaa !90
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.bk, align 8, !tbaa !92
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dk = add nsw i32 %i.bw, %i.bp
  %i.dl = sdiv i32 %i.dk, 2                       ; 2 uses
  store i32 %i.dl, ptr %i.bo, align 4, !tbaa !91
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.bx, align 8, !tbaa !93
  br label %bb.l

.thread89.i.i:                                    ; preds = %bb.j, %bb.h
  %i.dn = add nsw i32 %i.bz, %i.bs
  %i.do = sdiv i32 %i.dn, 2                       ; 2 uses
  store i32 %i.do, ptr %i.br, align 4, !tbaa !83
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.ca, align 8, !tbaa !81
  br label %bb.l

default.unreachable:                              ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %.thread89.i.i, %bb.k, %.thread.i.i
  tail call fastcc void @update_box(ptr noundef nonnull readonly %0, ptr noundef nonnull %.069.i.i)
  tail call fastcc void @update_box(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.bk)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.r
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i.i, label %median_cut.exit.i, label %bb.b, !llvm.loop !94

find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i: ; preds = %find_biggest_color_pop.exit.i.i
  %i.dq = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %median_cut.exit.i

median_cut.exit.i:                                ; preds = %bb.l, %find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i
  %.0.lcssa.i.i = phi i32 [ %i.dq, %find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.g, %bb.l ] ; 3 uses
  %i.dr = icmp sgt i32 %.0.lcssa.i.i, 0
  br i1 %i.dr, label %.lr.ph.i, label %select_colors.exit

.lr.ph.i:                                         ; preds = %median_cut.exit.i, %bb.a
  %.0.lcssa.i62.i = phi i32 [ %.0.lcssa.i.i, %median_cut.exit.i ], [ 1, %bb.a ] ; 2 uses
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !55
  %wide.trip.count.i = zext nneg i32 %.0.lcssa.i62.i to i64
  br label %bb.m

bb.m:                                             ; preds = %compute_color.exit.i, %.lr.ph.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next53.i, %compute_color.exit.i ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %indvars.iv52.i ; 6 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !92 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !90 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !93 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !91 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !81 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !83 ; 2 uses
  %.not95.i.i = icmp sle i32 %i.dw, %i.dy
  tail call void @llvm.assume(i1 %.not95.i.i)
  %.not6780.i.i = icmp sgt i32 %i.ea, %i.ec
  %i.eh = sext i32 %i.ee to i64                   ; 2 uses
  br i1 %.not6780.i.i, label %.preheader.us.i.i, label %.preheader.lr.ph.split.i.i

.preheader.us.i.i:                                ; preds = %bb.m, %.preheader.us.i.i
  br label %.preheader.us.i.i

.preheader.lr.ph.split.i.i:                       ; preds = %bb.m
  %.not6870.i.i = icmp sgt i32 %i.ee, %i.eg
  br i1 %.not6870.i.i, label %.preheader.us110.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.split.i.i
  %i.ei = add i32 %i.eg, 1
  %i.ej = sext i32 %i.ea to i64
  %i.ek = add i32 %i.ec, 1
  %i.el = sext i32 %i.dw to i64
  %i.em = add i32 %i.dy, 1
  br label %.preheader.i.i

.preheader.us110.i.i:                             ; preds = %.preheader.lr.ph.split.i.i, %.preheader.us110.i.i
  br label %.preheader.us110.i.i

.preheader.i.i:                                   ; preds = %._crit_edge87.split.i.i, %.preheader.preheader.i.i
  %indvars.iv131.i.i = phi i64 [ %i.el, %.preheader.preheader.i.i ], [ %indvars.iv.next132.i.i, %._crit_edge87.split.i.i ] ; 3 uses
  %.0100.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.3.i.i, %._crit_edge87.split.i.i ]
  %.05099.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.353.i.i, %._crit_edge87.split.i.i ]
  %.05498.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.357.i.i, %._crit_edge87.split.i.i ]
  %.05897.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.361.i.i, %._crit_edge87.split.i.i ]
  %i.en = getelementptr inbounds [8 x i8], ptr %i.du, i64 %indvars.iv131.i.i
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !57
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.eo, i64 %i.eh
  %i.ep = trunc nsw i64 %indvars.iv131.i.i to i32
  %i.eq = shl i32 %i.ep, 7
  %i.er = or disjoint i32 %i.eq, 64
  %i.es = sext i32 %i.er to i64
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %._crit_edge.i.i, %.preheader.i.i
  %indvars.iv126.i.i = phi i64 [ %i.ej, %.preheader.i.i ], [ %indvars.iv.next127.i.i, %._crit_edge.i.i ] ; 3 uses
  %.185.i.i = phi i64 [ %.0100.i.i, %.preheader.i.i ], [ %.3.i.i, %._crit_edge.i.i ]
  %.15184.i.i = phi i64 [ %.05099.i.i, %.preheader.i.i ], [ %.353.i.i, %._crit_edge.i.i ]
  %.15583.i.i = phi i64 [ %.05498.i.i, %.preheader.i.i ], [ %.357.i.i, %._crit_edge.i.i ]
  %.15982.i.i = phi i64 [ %.05897.i.i, %.preheader.i.i ], [ %.361.i.i, %._crit_edge.i.i ]
  %gep.i.i = getelementptr [64 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv126.i.i
  %i.et = trunc nsw i64 %indvars.iv126.i.i to i32
  %i.eu = shl i32 %i.et, 6
  %i.ev = or disjoint i32 %i.eu, 32
  %i.ew = sext i32 %i.ev to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i29.i
  %indvars.iv.i30.i = phi i64 [ %i.eh, %.lr.ph.i29.i ], [ %indvars.iv.next.i31.i, %bb.p ] ; 2 uses
  %.276.i.i = phi i64 [ %.185.i.i, %.lr.ph.i29.i ], [ %.3.i.i, %bb.p ] ; 2 uses
  %.25275.i.i = phi i64 [ %.15184.i.i, %.lr.ph.i29.i ], [ %.353.i.i, %bb.p ] ; 2 uses
  %.25674.i.i = phi i64 [ %.15583.i.i, %.lr.ph.i29.i ], [ %.357.i.i, %bb.p ] ; 2 uses
  %.26073.i.i = phi i64 [ %.15982.i.i, %.lr.ph.i29.i ], [ %.361.i.i, %bb.p ] ; 2 uses
  %.06272.i.i = phi ptr [ %gep.i.i, %.lr.ph.i29.i ], [ %i.ex, %bb.p ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.06272.i.i, i64 2
  %i.ey = load i16, ptr %.06272.i.i, align 2, !tbaa !76 ; 2 uses
  %.not69.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not69.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ez = zext i16 %i.ey to i64                   ; 4 uses
  %i.fa = add nsw i64 %.26073.i.i, %i.ez
  %i.fb = mul nsw i64 %i.ez, %i.es
  %i.fc = add nsw i64 %i.fb, %.25674.i.i
  %i.fd = mul nsw i64 %i.ez, %i.ew
  %i.fe = add nsw i64 %i.fd, %.25275.i.i
  %i.ff = trunc nsw i64 %indvars.iv.i30.i to i32
  %i.fg = shl i32 %i.ff, 7
  %i.fh = or disjoint i32 %i.fg, 64
  %i.fi = sext i32 %i.fh to i64
  %i.fj = mul nsw i64 %i.ez, %i.fi
  %i.fk = add nsw i64 %i.fj, %.276.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.361.i.i = phi i64 [ %i.fa, %bb.o ], [ %.26073.i.i, %bb.n ] ; 7 uses
  %.357.i.i = phi i64 [ %i.fc, %bb.o ], [ %.25674.i.i, %bb.n ] ; 4 uses
  %.353.i.i = phi i64 [ %i.fe, %bb.o ], [ %.25275.i.i, %bb.n ] ; 4 uses
  %.3.i.i = phi i64 [ %i.fk, %bb.o ], [ %.276.i.i, %bb.n ] ; 4 uses
  %indvars.iv.next.i31.i = add nsw i64 %indvars.iv.i30.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i31.i to i32
  %exitcond.not.i32.i = icmp eq i32 %i.ei, %lftr.wideiv.i.i
  br i1 %exitcond.not.i32.i, label %._crit_edge.i.i, label %bb.n, !llvm.loop !95

._crit_edge.i.i:                                  ; preds = %bb.p
  %indvars.iv.next127.i.i = add nsw i64 %indvars.iv126.i.i, 1 ; 2 uses
  %lftr.wideiv129.i.i = trunc i64 %indvars.iv.next127.i.i to i32
  %exitcond130.not.i.i = icmp eq i32 %i.ek, %lftr.wideiv129.i.i
  br i1 %exitcond130.not.i.i, label %._crit_edge87.split.i.i, label %.lr.ph.i29.i, !llvm.loop !96

._crit_edge87.split.i.i:                          ; preds = %._crit_edge.i.i
  %indvars.iv.next132.i.i = add nsw i64 %indvars.iv131.i.i, 1 ; 2 uses
  %lftr.wideiv134.i.i = trunc i64 %indvars.iv.next132.i.i to i32
  %exitcond135.not.i.i = icmp eq i32 %i.em, %lftr.wideiv134.i.i
  br i1 %exitcond135.not.i.i, label %compute_color.exit.i, label %.preheader.i.i, !llvm.loop !97

compute_color.exit.i:                             ; preds = %._crit_edge87.split.i.i
  %i.fl = ashr i64 %.361.i.i, 1                   ; 3 uses
  %i.fm = add nsw i64 %.357.i.i, %i.fl
  %i.fn = sdiv i64 %i.fm, %.361.i.i
  %i.fo = trunc i64 %i.fn to i16
  %i.fp = load ptr, ptr %i.e, align 8, !tbaa !79  ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !57
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %indvars.iv52.i
  store i16 %i.fo, ptr %i.fr, align 2, !tbaa !76
  %i.fs = add nsw i64 %.353.i.i, %i.fl
  %i.ft = sdiv i64 %i.fs, %.361.i.i
  %i.fu = trunc i64 %i.ft to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !57
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %indvars.iv52.i
  store i16 %i.fu, ptr %i.fx, align 2, !tbaa !76
  %i.fy = add nsw i64 %.3.i.i, %i.fl
  %i.fz = sdiv i64 %i.fy, %.361.i.i
  %i.ga = trunc i64 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !57
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %indvars.iv52.i
  store i16 %i.ga, ptr %i.gd, align 2, !tbaa !76
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
end_hunk_0
