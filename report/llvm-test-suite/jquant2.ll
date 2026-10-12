Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/jquant2?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@finish_pass1:bb.a
bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.01316.i.i.i, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !64
  %i.aa = icmp sgt i64 %i.z, 0                    ; 2 uses
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.w, i64 %.01018.i.i.i
  %spec.select15.i.i.i = select i1 %i.aa, ptr %.01316.i.i.i, ptr %.019.i.i.i
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.c, %.lr.ph.i.i.i
  %.111.i.i.i = phi i64 [ %.01018.i.i.i, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %bb.c ] ; 3 uses
  %.1.i.i.i = phi ptr [ %.019.i.i.i, %.lr.ph.i.i.i ], [ %spec.select15.i.i.i, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01316.i.i.i, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !63 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, %.111.i.i.i
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.01316.i.i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.01316.i.i.i, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !64
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
  br i1 %niter.ncmp.1, label %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !82

.lr.ph.i67.i.i:                                   ; preds = %.lr.ph.i67.i.i, %.lr.ph.i67.i.i.preheader.new
  %.018.i.i.i = phi ptr [ null, %.lr.ph.i67.i.i.preheader.new ], [ %spec.select14.i.i.i.3, %.lr.ph.i67.i.i ]
  %.0917.i.i.i = phi i64 [ 0, %.lr.ph.i67.i.i.preheader.new ], [ %spec.select.i68.i.i.3, %.lr.ph.i67.i.i ] ; 2 uses
  %.01215.i.i.i = phi ptr [ %i.m, %.lr.ph.i67.i.i.preheader.new ], [ %i.ay, %.lr.ph.i67.i.i ] ; 9 uses
  %niter53 = phi i64 [ 0, %.lr.ph.i67.i.i.preheader.new ], [ %niter53.next.3, %.lr.ph.i67.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, %.0917.i.i.i
  %spec.select.i68.i.i = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 %.0917.i.i.i) ; 2 uses
  %spec.select14.i.i.i = select i1 %i.al, ptr %.01215.i.i.i, ptr %.018.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, %spec.select.i68.i.i
  %spec.select.i68.i.i.1 = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 %spec.select.i68.i.i) ; 2 uses
  %spec.select14.i.i.i.1 = select i1 %i.ap, ptr %i.am, ptr %spec.select14.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 104
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !64 ; 2 uses
  %i.at = icmp sgt i64 %i.as, %spec.select.i68.i.i.1
  %spec.select.i68.i.i.2 = tail call i64 @llvm.smax.i64(i64 %i.as, i64 %spec.select.i68.i.i.1) ; 2 uses
  %spec.select14.i.i.i.2 = select i1 %i.at, ptr %i.aq, ptr %spec.select14.i.i.i.1
  %i.au = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 144
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !64 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %spec.select.i68.i.i.2
  %spec.select.i68.i.i.3 = tail call i64 @llvm.smax.i64(i64 %i.aw, i64 %spec.select.i68.i.i.2) ; 2 uses
  %spec.select14.i.i.i.3 = select i1 %i.ax, ptr %i.au, ptr %spec.select14.i.i.i.2 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 160 ; 2 uses
  %niter53.next.3 = add i64 %niter53, 4           ; 2 uses
  %niter53.ncmp.3 = icmp eq i64 %niter53.next.3, %unroll_iter52
  br i1 %niter53.ncmp.3, label %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i67.i.i, !llvm.loop !83

find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i67.i.i
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %find_biggest_color_pop.exit.i.i, label %.lr.ph.i67.i.i.epil.preheader

.lr.ph.i67.i.i.epil.preheader:                    ; preds = %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i67.i.i.preheader
  %.018.i.i.i.epil.init = phi ptr [ null, %.lr.ph.i67.i.i.preheader ], [ %spec.select14.i.i.i.3, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa ]
  %.0917.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i67.i.i.preheader ], [ %spec.select.i68.i.i.3, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa ]
  %.01215.i.i.i.epil.init = phi ptr [ %i.m, %.lr.ph.i67.i.i.preheader ], [ %i.ay, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter48, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i67.i.i.epil

.lr.ph.i67.i.i.epil:                              ; preds = %.lr.ph.i67.i.i.epil, %.lr.ph.i67.i.i.epil.preheader
  %.018.i.i.i.epil = phi ptr [ %spec.select14.i.i.i.epil, %.lr.ph.i67.i.i.epil ], [ %.018.i.i.i.epil.init, %.lr.ph.i67.i.i.epil.preheader ]
  %.0917.i.i.i.epil = phi i64 [ %spec.select.i68.i.i.epil, %.lr.ph.i67.i.i.epil ], [ %.0917.i.i.i.epil.init, %.lr.ph.i67.i.i.epil.preheader ] ; 2 uses
  %.01215.i.i.i.epil = phi ptr [ %i.bc, %.lr.ph.i67.i.i.epil ], [ %.01215.i.i.i.epil.init, %.lr.ph.i67.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i67.i.i.epil ], [ 0, %.lr.ph.i67.i.i.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.epil, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !64 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, %.0917.i.i.i.epil
  %spec.select.i68.i.i.epil = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 %.0917.i.i.i.epil)
  %spec.select14.i.i.i.epil = select i1 %i.bb, ptr %.01215.i.i.i.epil, ptr %.018.i.i.i.epil ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.epil, i64 40
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter48
  br i1 %epil.iter.cmp.not, label %find_biggest_color_pop.exit.i.i, label %.lr.ph.i67.i.i.epil, !llvm.loop !84

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
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !63
  %i.bf = icmp sgt i64 %i.be, %.01018.i.i.i.epil.init
  br i1 %i.bf, label %bb.f, label %find_biggest_color_pop.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %.01316.i.i.i.epil.init, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !64
  %i.bi = icmp sgt i64 %i.bh, 0
  %spec.select15.i.i.i.epil = select i1 %i.bi, ptr %.01316.i.i.i.epil.init, ptr %.019.i.i.i.epil.init
  br label %find_biggest_color_pop.exit.i.i

find_biggest_color_pop.exit.i.i:                  ; preds = %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa, %bb.f, %.lr.ph.i.i.i.epil.preheader, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i67.i.i.epil
  %.0.i.i = phi ptr [ %spec.select14.i.i.i.epil, %.lr.ph.i67.i.i.epil ], [ %spec.select14.i.i.i.3, %find_biggest_color_pop.exit.i.i.loopexit.unr-lcssa ], [ %.1.i.i.i.1, %find_biggest_color_pop.exit.i.i.loopexit43.unr-lcssa ], [ %.019.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ], [ %spec.select15.i.i.i.epil, %bb.f ] ; 8 uses
  %i.bj = icmp eq ptr %.0.i.i, null
  br i1 %i.bj, label %find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i, label %bb.g

bb.g:                                             ; preds = %find_biggest_color_pop.exit.i.i
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %indvars.iv.i.i ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !65 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !66 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !66
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !62 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !62
  %i.bu = load i32, ptr %.0.i.i, align 8, !tbaa !67 ; 3 uses
  store i32 %i.bu, ptr %i.bk, align 8, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !68 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !68
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !61 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !61
  %i.cb = sub nsw i32 %i.bm, %i.bu
  %i.cc = shl i32 %i.cb, 4                        ; 2 uses
  %i.cd = sub nsw i32 %i.bp, %i.bw
  %i.ce = mul i32 %i.cd, 12                       ; 2 uses
  %i.cf = sub nsw i32 %i.bs, %i.bz
  %i.cg = shl i32 %i.cf, 3
  %i.ch = icmp sle i32 %i.cc, %i.ce
  %spec.select.i.i = zext i1 %i.ch to i32
  %spec.select65.i.i = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 %i.ce)
  %i.ci = icmp sgt i32 %i.cg, %spec.select65.i.i
  %.1.i.i = select i1 %i.ci, i32 2, i32 %spec.select.i.i
  switch i32 %.1.i.i, label %default.unreachable [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.cj = add nsw i32 %i.bu, %i.bm
  %i.ck = sdiv i32 %i.cj, 2                       ; 2 uses
  store i32 %i.ck, ptr %i.bl, align 4, !tbaa !65
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.bk, align 8, !tbaa !67
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cm = add nsw i32 %i.bw, %i.bp
  %i.cn = sdiv i32 %i.cm, 2                       ; 2 uses
  store i32 %i.cn, ptr %i.bo, align 4, !tbaa !66
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.bx, align 8, !tbaa !68
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cp = add nsw i32 %i.bz, %i.bs
  %i.cq = sdiv i32 %i.cp, 2                       ; 2 uses
  store i32 %i.cq, ptr %i.br, align 4, !tbaa !62
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.ca, align 8, !tbaa !61
  br label %bb.k

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.val66.i.i = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.cs = getelementptr i8, ptr %.val66.i.i, i64 48
  %.val66.val.i.i = load ptr, ptr %i.cs, align 8, !tbaa !46
  tail call fastcc void @update_box(ptr %.val66.val.i.i, ptr noundef nonnull %.0.i.i)
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.ct = getelementptr i8, ptr %.val.i.i, i64 48
  %.val.val.i.i = load ptr, ptr %i.ct, align 8, !tbaa !46
  tail call fastcc void @update_box(ptr %.val.val.i.i, ptr noundef nonnull %i.bk)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.r
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i.i, label %.lr.ph.i, label %bb.b, !llvm.loop !85

find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i: ; preds = %find_biggest_color_pop.exit.i.i
  %i.cu = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i, %bb.a
  %.061.lcssa.i.i = phi i32 [ 1, %bb.a ], [ %i.cu, %find_biggest_color_pop.exit._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.g, %bb.k ] ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.061.lcssa.i.i to i64
  br label %bb.l

bb.l:                                             ; preds = %compute_color.exit.i, %.lr.ph.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next53.i, %compute_color.exit.i ] ; 5 uses
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %indvars.iv52.i ; 6 uses
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !46
  %i.cz = load i32, ptr %i.cv, align 8, !tbaa !67 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !65 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !68 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !66 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !61 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !62 ; 2 uses
  %.not95.i.i = icmp sle i32 %i.cz, %i.db
  tail call void @llvm.assume(i1 %.not95.i.i)
  %.not6780.i.i = icmp sgt i32 %i.dd, %i.df
  %i.dk = sext i32 %i.dh to i64                   ; 2 uses
  br i1 %.not6780.i.i, label %.preheader.us.i.i, label %.preheader.lr.ph.split.i.i

.preheader.us.i.i:                                ; preds = %bb.l, %.preheader.us.i.i
  br label %.preheader.us.i.i

.preheader.lr.ph.split.i.i:                       ; preds = %bb.l
  %.not6870.i.i = icmp sgt i32 %i.dh, %i.dj
  br i1 %.not6870.i.i, label %.preheader.us110.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.split.i.i
  %i.dl = add i32 %i.dj, 1
  %i.dm = sext i32 %i.dd to i64
  %i.dn = add i32 %i.df, 1
  %i.do = sext i32 %i.cz to i64
  %i.dp = add i32 %i.db, 1
  br label %.preheader.i.i

.preheader.us110.i.i:                             ; preds = %.preheader.lr.ph.split.i.i, %.preheader.us110.i.i
  br label %.preheader.us110.i.i

.preheader.i.i:                                   ; preds = %._crit_edge87.split.i.i, %.preheader.preheader.i.i
  %indvars.iv131.i.i = phi i64 [ %i.do, %.preheader.preheader.i.i ], [ %indvars.iv.next132.i.i, %._crit_edge87.split.i.i ] ; 3 uses
  %.0100.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.3.i.i, %._crit_edge87.split.i.i ]
  %.05099.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.353.i.i, %._crit_edge87.split.i.i ]
  %.05498.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.357.i.i, %._crit_edge87.split.i.i ]
  %.05897.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.361.i.i, %._crit_edge87.split.i.i ]
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %indvars.iv131.i.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !48
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.dr, i64 %i.dk
  %i.ds = trunc nsw i64 %indvars.iv131.i.i to i32
  %i.dt = shl i32 %i.ds, 3
  %i.du = or disjoint i32 %i.dt, 4
  %i.dv = sext i32 %i.du to i64
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %._crit_edge.i.i, %.preheader.i.i
  %indvars.iv126.i.i = phi i64 [ %i.dm, %.preheader.i.i ], [ %indvars.iv.next127.i.i, %._crit_edge.i.i ] ; 3 uses
  %.185.i.i = phi i64 [ %.0100.i.i, %.preheader.i.i ], [ %.3.i.i, %._crit_edge.i.i ]
  %.15184.i.i = phi i64 [ %.05099.i.i, %.preheader.i.i ], [ %.353.i.i, %._crit_edge.i.i ]
  %.15583.i.i = phi i64 [ %.05498.i.i, %.preheader.i.i ], [ %.357.i.i, %._crit_edge.i.i ]
  %.15982.i.i = phi i64 [ %.05897.i.i, %.preheader.i.i ], [ %.361.i.i, %._crit_edge.i.i ]
  %gep.i.i = getelementptr [64 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv126.i.i
  %i.dw = trunc nsw i64 %indvars.iv126.i.i to i32
  %i.dx = shl i32 %i.dw, 2
  %i.dy = or disjoint i32 %i.dx, 2
  %i.dz = sext i32 %i.dy to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i29.i
  %indvars.iv.i30.i = phi i64 [ %i.dk, %.lr.ph.i29.i ], [ %indvars.iv.next.i31.i, %bb.o ] ; 2 uses
  %.276.i.i = phi i64 [ %.185.i.i, %.lr.ph.i29.i ], [ %.3.i.i, %bb.o ] ; 2 uses
  %.25275.i.i = phi i64 [ %.15184.i.i, %.lr.ph.i29.i ], [ %.353.i.i, %bb.o ] ; 2 uses
  %.25674.i.i = phi i64 [ %.15583.i.i, %.lr.ph.i29.i ], [ %.357.i.i, %bb.o ] ; 2 uses
  %.26073.i.i = phi i64 [ %.15982.i.i, %.lr.ph.i29.i ], [ %.361.i.i, %bb.o ] ; 2 uses
  %.06571.i.i = phi ptr [ %gep.i.i, %.lr.ph.i29.i ], [ %i.ea, %bb.o ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.06571.i.i, i64 2
  %i.eb = load i16, ptr %.06571.i.i, align 2, !tbaa !58 ; 2 uses
  %.not69.i.i = icmp eq i16 %i.eb, 0
  br i1 %.not69.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ec = zext i16 %i.eb to i64                   ; 4 uses
  %i.ed = add nsw i64 %.26073.i.i, %i.ec
  %i.ee = mul nsw i64 %i.ec, %i.dv
  %i.ef = add nsw i64 %i.ee, %.25674.i.i
  %i.eg = mul nsw i64 %i.ec, %i.dz
  %i.eh = add nsw i64 %i.eg, %.25275.i.i
  %i.ei = trunc nsw i64 %indvars.iv.i30.i to i32
  %i.ej = shl i32 %i.ei, 3
  %i.ek = or disjoint i32 %i.ej, 4
  %i.el = sext i32 %i.ek to i64
  %i.em = mul nsw i64 %i.ec, %i.el
  %i.en = add nsw i64 %i.em, %.276.i.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.361.i.i = phi i64 [ %i.ed, %bb.n ], [ %.26073.i.i, %bb.m ] ; 7 uses
  %.357.i.i = phi i64 [ %i.ef, %bb.n ], [ %.25674.i.i, %bb.m ] ; 4 uses
  %.353.i.i = phi i64 [ %i.eh, %bb.n ], [ %.25275.i.i, %bb.m ] ; 4 uses
  %.3.i.i = phi i64 [ %i.en, %bb.n ], [ %.276.i.i, %bb.m ] ; 4 uses
  %indvars.iv.next.i31.i = add nsw i64 %indvars.iv.i30.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i31.i to i32
  %exitcond.not.i32.i = icmp eq i32 %i.dl, %lftr.wideiv.i.i
  br i1 %exitcond.not.i32.i, label %._crit_edge.i.i, label %bb.m, !llvm.loop !86

._crit_edge.i.i:                                  ; preds = %bb.o
  %indvars.iv.next127.i.i = add nsw i64 %indvars.iv126.i.i, 1 ; 2 uses
  %lftr.wideiv129.i.i = trunc i64 %indvars.iv.next127.i.i to i32
  %exitcond130.not.i.i = icmp eq i32 %i.dn, %lftr.wideiv129.i.i
  br i1 %exitcond130.not.i.i, label %._crit_edge87.split.i.i, label %.lr.ph.i29.i, !llvm.loop !87

._crit_edge87.split.i.i:                          ; preds = %._crit_edge.i.i
  %indvars.iv.next132.i.i = add nsw i64 %indvars.iv131.i.i, 1 ; 2 uses
  %lftr.wideiv134.i.i = trunc i64 %indvars.iv.next132.i.i to i32
  %exitcond135.not.i.i = icmp eq i32 %i.dp, %lftr.wideiv134.i.i
  br i1 %exitcond135.not.i.i, label %compute_color.exit.i, label %.preheader.i.i, !llvm.loop !88

compute_color.exit.i:                             ; preds = %._crit_edge87.split.i.i
  %i.eo = ashr i64 %.361.i.i, 1                   ; 3 uses
  %i.ep = add nsw i64 %.357.i.i, %i.eo
  %i.eq = sdiv i64 %i.ep, %.361.i.i
  %i.er = trunc i64 %i.eq to i8
  %i.es = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !57
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv52.i
  store i8 %i.er, ptr %i.eu, align 1, !tbaa !51
  %i.ev = add nsw i64 %.353.i.i, %i.eo
  %i.ew = sdiv i64 %i.ev, %.361.i.i
  %i.ex = trunc i64 %i.ew to i8
  %i.ey = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !57
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv52.i
  store i8 %i.ex, ptr %i.fb, align 1, !tbaa !51
  %i.fc = add nsw i64 %.3.i.i, %i.eo
  %i.fd = sdiv i64 %i.fc, %.361.i.i
  %i.fe = trunc i64 %i.fd to i8
  %i.ff = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !57
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv52.i
  store i8 %i.fe, ptr %i.fi, align 1, !tbaa !51
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %select_colors.exit, label %bb.l, !llvm.loop !89

select_colors.exit:                               ; preds = %compute_color.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %.061.lcssa.i.i, ptr %i.fj, align 4, !tbaa !56
  %i.fk = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  store i32 95, ptr %i.fl, align 8, !tbaa !44
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 44
  store i32 %.061.lcssa.i.i, ptr %i.fm, align 4, !tbaa !51
  %i.fn = load ptr, ptr %0, align 8, !tbaa !42
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !91
  tail call void %i.fp(ptr noundef nonnull %0, i32 noundef 1) #9, !inline_history !81
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 1, ptr %i.fq, align 8, !tbaa !50
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pass2_fs_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.t = add i32 %i.f, -1                         ; 2 uses
  %i.u = mul i32 %i.t, 3
  %i.v = zext i32 %i.u to i64
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.y = mul i32 %i.f, 3
  %i.z = add i32 %i.y, 3
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %.not146147 = icmp eq i32 %i.f, 0
  br i1 %.not146147, label %.lr.ph166.split.us, label %.lr.ph166.split.preheader

.lr.ph166.split.preheader:                        ; preds = %.lr.ph166
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph166.split

.lr.ph166.split.us:                               ; preds = %.lr.ph166
  %.promoted = load i32, ptr %i.s, align 8, !tbaa !95 ; 2 uses
  %xtraiter = and i32 %3, 1
  %i.ab = icmp eq i32 %3, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph166.split.us.new

.lr.ph166.split.us.new:                           ; preds = %.lr.ph166.split.us
  %unroll_iter = and i32 %3, 2147483646
  %i.ac = icmp ne i32 %.promoted, 0               ; 3 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !40  ; 2 uses
  %.0136.us.idx = select i1 %i.ac, i64 %i.aa, i64 0
  %.0136.us = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.0136.us.idx ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0136.us, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %.0136.us, i64 4
  %.0136.us.idx.1 = select i1 %i.ac, i64 0, i64 %i.aa
  %.0136.us.1 = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.0136.us.idx.1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0136.us.1, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.0136.us.1, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph166.split.us.new
  %niter = phi i32 [ 0, %.lr.ph166.split.us.new ], [ %niter.next.1, %bb.b ]
  store i16 0, ptr %.0136.us, align 2, !tbaa !58
  store i16 0, ptr %i.ae, align 2, !tbaa !58
  store i16 0, ptr %i.af, align 2, !tbaa !58
  store i16 0, ptr %.0136.us.1, align 2, !tbaa !58
  store i16 0, ptr %i.ag, align 2, !tbaa !58
  store i16 0, ptr %i.ah, align 2, !tbaa !58
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge167.split.us.unr-lcssa, label %bb.b, !llvm.loop !92

._crit_edge167.split.us.unr-lcssa:                ; preds = %bb.b
  %storemerge.us.1 = zext i1 %i.ac to i32         ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge167.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge167.split.us.unr-lcssa, %.lr.ph166.split.us
  %storemerge.us168.epil.init = phi i32 [ %.promoted, %.lr.ph166.split.us ], [ %storemerge.us.1, %._crit_edge167.split.us.unr-lcssa ]
  %lcmp.mod191 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %.not.us.epil = icmp eq i32 %storemerge.us168.epil.init, 0 ; 2 uses
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !40
  %storemerge.us.epil = zext i1 %.not.us.epil to i32
  %.0136.us.idx.epil = select i1 %.not.us.epil, i64 0, i64 %i.aa
  %.0136.us.epil = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %.0136.us.idx.epil ; 3 uses
  store i16 0, ptr %.0136.us.epil, align 2, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %.0136.us.epil, i64 2
  store i16 0, ptr %i.aj, align 2, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %.0136.us.epil, i64 4
  store i16 0, ptr %i.ak, align 2, !tbaa !58
  br label %._crit_edge167.split.us

._crit_edge167.split.us:                          ; preds = %._crit_edge167.split.us.unr-lcssa, %.epil.preheader
  %storemerge.us.lcssa = phi i32 [ %storemerge.us.1, %._crit_edge167.split.us.unr-lcssa ], [ %storemerge.us.epil, %.epil.preheader ]
  store i32 %storemerge.us.lcssa, ptr %i.s, align 8, !tbaa !95
  br label %._crit_edge167

.lr.ph166.split:                                  ; preds = %.lr.ph166.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph166.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !57 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57 ; 2 uses
  %i.ap = load i32, ptr %i.s, align 8, !tbaa !95
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph166.split
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.v
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.w
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.aa
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph166.split
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !40
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  %.0136 = phi ptr [ %i.au, %bb.d ], [ %i.at, %bb.c ]
  %.0134 = phi ptr [ %i.am, %bb.d ], [ %i.aq, %bb.c ]
  %.0133 = phi ptr [ %i.ao, %bb.d ], [ %i.ar, %bb.c ]
  %.0132 = phi i64 [ 1, %bb.d ], [ -1, %bb.c ]
  %.0131 = phi i64 [ 3, %bb.d ], [ -3, %bb.c ]    ; 2 uses
  store i32 %storemerge, ptr %i.s, align 8, !tbaa !95
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.0160 = phi i32 [ 0, %.lr.ph ], [ %i.eb, %bb.g ]
  %.0129159 = phi i32 [ %i.f, %.lr.ph ], [ %i.es, %bb.g ]
  %.1158 = phi ptr [ %.0133, %.lr.ph ], [ %i.er, %bb.g ] ; 2 uses
  %.1135157 = phi ptr [ %.0134, %.lr.ph ], [ %i.eq, %bb.g ] ; 4 uses
  %.1137156 = phi ptr [ %.0136, %.lr.ph ], [ %i.av, %bb.g ] ; 4 uses
  %.0138155 = phi i32 [ 0, %.lr.ph ], [ %i.eo, %bb.g ]
  %.0139154 = phi i32 [ 0, %.lr.ph ], [ %i.eh, %bb.g ]
  %.0140153 = phi i32 [ 0, %.lr.ph ], [ %i.ea, %bb.g ]
  %.0141152 = phi i32 [ 0, %.lr.ph ], [ %i.dv, %bb.g ]
  %.0142151 = phi i32 [ 0, %.lr.ph ], [ %i.dr, %bb.g ]
  %.0143150 = phi i32 [ 0, %.lr.ph ], [ %i.dn, %bb.g ]
  %.0144149 = phi i32 [ 0, %.lr.ph ], [ %i.ep, %bb.g ]
  %.0145148 = phi i32 [ 0, %.lr.ph ], [ %i.ei, %bb.g ]
  %i.av = getelementptr inbounds [2 x i8], ptr %.1137156, i64 %.0131 ; 7 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !58
  %i.ax = sext i16 %i.aw to i32
  %i.ay = add nsw i32 %.0160, 8
  %i.az = add nsw i32 %i.ay, %i.ax
  %i.ba = ashr i32 %i.az, 4
  %i.bb = getelementptr i8, ptr %i.av, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !58
  %i.bd = sext i16 %i.bc to i32
  %i.be = add nsw i32 %.0145148, 8
  %i.bf = add nsw i32 %i.be, %i.bd
  %i.bg = ashr i32 %i.bf, 4
  %i.bh = getelementptr i8, ptr %i.av, i64 4
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !58
  %i.bj = sext i16 %i.bi to i32
  %i.bk = add nsw i32 %.0144149, 8
  %i.bl = add nsw i32 %i.bk, %i.bj
  %i.bm = ashr i32 %i.bl, 4
  %i.bn = sext i32 %i.ba to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = sext i32 %i.bg to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bt = sext i32 %i.bm to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = load i8, ptr %.1135157, align 1, !tbaa !51
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bp, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.1135157, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !51
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.bs, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.1135157, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !51
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.bv, %i.cf
  %i.ch = sext i32 %i.by to i64
  %i.ci = getelementptr inbounds i8, ptr %i.h, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !51
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = sext i32 %i.cc to i64
  %i.cm = getelementptr inbounds i8, ptr %i.h, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !51
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = sext i32 %i.cg to i64
  %i.cq = getelementptr inbounds i8, ptr %i.h, i64 %i.cp
end_hunk_0
