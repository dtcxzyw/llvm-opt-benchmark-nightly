Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bump?download=true
inline.NumInlined: 24
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@bump_analyzed_variable_score:bb.a
  store i32 %.027.lcssa.i.sink38.i, ptr %i.ad, align 4, !tbaa !71
  br label %kissat_update_heap.exit

kissat_update_heap.exit:                          ; preds = %kissat_get_heap_score.exit.i, %kissat_get_heap_score.exit.thread.i, %bb.d, %kissat_heap_contains.exit.i, %kissat_heap_contains.exit.thread.sink.split.i
  %i.ce = phi double [ %i.l, %kissat_get_heap_score.exit.i ], [ %i.p, %kissat_get_heap_score.exit.thread.i ], [ %i.s, %bb.d ], [ %i.s, %kissat_heap_contains.exit.i ], [ %i.s, %kissat_heap_contains.exit.thread.sink.split.i ]
  %i.cf = phi ptr [ %i.j, %kissat_get_heap_score.exit.i ], [ %i.n, %kissat_get_heap_score.exit.thread.i ], [ %i.t, %bb.d ], [ %i.t, %kissat_heap_contains.exit.i ], [ %i.t, %kissat_heap_contains.exit.thread.sink.split.i ] ; 3 uses
  %i.cg = fcmp ogt double %i.ce, f0x5F138D352E5096AF
  br i1 %i.cg, label %bb.l, label %bb.n

bb.l:                                             ; preds = %kissat_update_heap.exit
  %i.ch = load i8, ptr %i.a, align 8, !tbaa !8, !range !15, !noundef !16
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.m, label %kissat_rescale_scores.exit

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !17 ; 3 uses
  %i.cl = load i32, ptr %i.b, align 4, !tbaa !18  ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %.idx.i.i = shl nuw nsw i64 %i.cm, 3            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i.i
  %i.co = load double, ptr %i.ck, align 8, !tbaa !19 ; 3 uses
  %.not19.i.i = icmp eq i32 %i.cl, 1
  br i1 %.not19.i.i, label %kissat_rescale_scores.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %.018.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cp = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.cq = lshr exact i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1
  %xtraiter = and i64 %i.cr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.prol.loopexit, label %.lr.ph.i.i11.prol

.lr.ph.i.i11.prol:                                ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i11.prol
  %.021.i.i.prol = phi ptr [ %.0.i.i12.prol, %.lr.ph.i.i11.prol ], [ %.018.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01520.i.i.prol = phi double [ %..015.i.i.prol, %.lr.ph.i.i11.prol ], [ %i.co, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.cs = load double, ptr %.021.i.i.prol, align 8, !tbaa !19 ; 2 uses
  %i.ct = fcmp olt double %.01520.i.i.prol, %i.cs
  %..015.i.i.prol = select i1 %i.ct, double %i.cs, double %.01520.i.i.prol ; 3 uses
  %.0.i.i12.prol = getelementptr inbounds nuw i8, ptr %.021.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.prol.loopexit, label %.lr.ph.i.i11.prol, !llvm.loop !74

.lr.ph.i.i11.prol.loopexit:                       ; preds = %.lr.ph.i.i11.prol, %.lr.ph.preheader.i.i
  %..015.i.i.lcssa.unr = phi double [ poison, %.lr.ph.preheader.i.i ], [ %..015.i.i.prol, %.lr.ph.i.i11.prol ]
  %.021.i.i.unr = phi ptr [ %.018.i.i, %.lr.ph.preheader.i.i ], [ %.0.i.i12.prol, %.lr.ph.i.i11.prol ]
  %.01520.i.i.unr = phi double [ %i.co, %.lr.ph.preheader.i.i ], [ %..015.i.i.prol, %.lr.ph.i.i11.prol ]
  %i.cu = icmp ult i64 %i.cp, 24
  br i1 %i.cu, label %kissat_rescale_scores.exit, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i.i11.prol.loopexit, %.lr.ph.i.i11
  %.021.i.i = phi ptr [ %.0.i.i12.3, %.lr.ph.i.i11 ], [ %.021.i.i.unr, %.lr.ph.i.i11.prol.loopexit ] ; 5 uses
  %.01520.i.i = phi double [ %..015.i.i.3, %.lr.ph.i.i11 ], [ %.01520.i.i.unr, %.lr.ph.i.i11.prol.loopexit ] ; 2 uses
  %i.cv = load double, ptr %.021.i.i, align 8, !tbaa !19 ; 2 uses
  %i.cw = fcmp olt double %.01520.i.i, %i.cv
  %..015.i.i = select i1 %i.cw, double %i.cv, double %.01520.i.i ; 2 uses
  %.0.i.i12 = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 8
  %i.cx = load double, ptr %.0.i.i12, align 8, !tbaa !19 ; 2 uses
  %i.cy = fcmp olt double %..015.i.i, %i.cx
  %..015.i.i.1 = select i1 %i.cy, double %i.cx, double %..015.i.i ; 2 uses
  %.0.i.i12.1 = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 16
  %i.cz = load double, ptr %.0.i.i12.1, align 8, !tbaa !19 ; 2 uses
  %i.da = fcmp olt double %..015.i.i.1, %i.cz
  %..015.i.i.2 = select i1 %i.da, double %i.cz, double %..015.i.i.1 ; 2 uses
  %.0.i.i12.2 = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 24
  %i.db = load double, ptr %.0.i.i12.2, align 8, !tbaa !19 ; 2 uses
  %i.dc = fcmp olt double %..015.i.i.2, %i.db
  %..015.i.i.3 = select i1 %i.dc, double %i.db, double %..015.i.i.2 ; 2 uses
  %.0.i.i12.3 = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 32 ; 2 uses
  %.not.i.i13.3 = icmp eq ptr %.0.i.i12.3, %i.cn
  br i1 %.not.i.i13.3, label %kissat_rescale_scores.exit, label %.lr.ph.i.i11, !llvm.loop !23

kissat_rescale_scores.exit:                       ; preds = %.lr.ph.i.i11.prol.loopexit, %.lr.ph.i.i11, %bb.l, %bb.m
  %.016.i.i = phi double [ 0.000000e+00, %bb.l ], [ %i.co, %bb.m ], [ %..015.i.i.lcssa.unr, %.lr.ph.i.i11.prol.loopexit ], [ %..015.i.i.3, %.lr.ph.i.i11 ] ; 2 uses
  %i.dd = load double, ptr %i.cf, align 8, !tbaa !25 ; 2 uses
  %i.de = fcmp olt double %.016.i.i, %i.dd
  %..i = select i1 %i.de, double %i.dd, double %.016.i.i
  %i.df = fdiv double 1.000000e+00, %..i          ; 2 uses
  tail call void @kissat_rescale_heap(ptr noundef nonnull %0, ptr noundef nonnull %i.a, double noundef %i.df) #7
  %i.dg = load double, ptr %i.cf, align 8, !tbaa !25
  %i.dh = fmul double %i.dg, %i.df
  store double %i.dh, ptr %i.cf, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %kissat_rescale_scores.exit, %kissat_update_heap.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @kissat_bump_analyzed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 34 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 5 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !76   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.g = load i8, ptr %i.f, align 1, !tbaa !77, !range !15, !noundef !16
  %i.h = trunc nuw i8 %i.g to i1
  %.not11.i = icmp eq ptr %i.e, %i.d              ; 2 uses
  br i1 %i.h, label %bb.bq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 6 uses
  br i1 %.not11.i, label %..critedge_crit_edge.i, label %.lr.ph.i

..critedge_crit_edge.i:                           ; preds = %bb.b
  %.pre50.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.c

bb.c:                                             ; preds = %bb.ay, %.lr.ph.i
  %i.m = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.or, %bb.ay ] ; 2 uses
  %.03139.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.os, %bb.ay ] ; 2 uses
  %i.n = load i32, ptr %.03139.i, align 4, !tbaa !71 ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !80
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.t = icmp eq ptr %i.m, %i.s
  br i1 %i.t, label %bb.ax, label %bb.ay

.critedge.loopexit.i:                             ; preds = %bb.ay
  %.pre48.i = load ptr, ptr %i.c, align 8, !tbaa !75
  %.pre49.i = load ptr, ptr %i.b, align 8, !tbaa !76
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %..critedge_crit_edge.i
  %i.u = phi ptr [ %i.or, %.critedge.loopexit.i ], [ %.pre50.i, %..critedge_crit_edge.i ] ; 3 uses
  %i.v = phi ptr [ %.pre49.i, %.critedge.loopexit.i ], [ %i.d, %..critedge_crit_edge.i ]
  %i.w = phi ptr [ %.pre48.i, %.critedge.loopexit.i ], [ %i.d, %..critedge_crit_edge.i ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !83 ; 21 uses
  %i.ad = ptrtoint ptr %i.u to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 13 uses
  br i1 %i.aa, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %.critedge.i
  %i.ag = ashr exact i64 %i.af, 3                 ; 5 uses
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %sort_bump.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = add nsw i64 %i.ag, -1                   ; 4 uses
  %i.aj = icmp ult i64 %i.ag, 12
  br i1 %i.aj, label %.lr.ph360.i.i.preheader, label %.preheader323.i.i

.lr.ph360.i.i.preheader:                          ; preds = %bb.y, %bb.e
  %xtraiter99 = and i64 %i.ai, 1
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.lr.ph360.i.i.prol.loopexit, label %.lr.ph360.i.i.prol

.lr.ph360.i.i.prol:                               ; preds = %.lr.ph360.i.i.preheader
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ai ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !84
  %i.an = getelementptr i8, ptr %i.ak, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !84
  %i.ap = icmp ult i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %.lr.ph360.i.i.prol.loopexit.unr-lcssa

bb.f:                                             ; preds = %.lr.ph360.i.i.prol
  %i.aq = getelementptr i8, ptr %i.ak, i64 -8     ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.aq, align 4
  %i.as = shufflevector <2 x i64> %i.ar, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.as, ptr %i.aq, align 4
  br label %.lr.ph360.i.i.prol.loopexit.unr-lcssa

.lr.ph360.i.i.prol.loopexit.unr-lcssa:            ; preds = %bb.f, %.lr.ph360.i.i.prol
  %i.at = add nsw i64 %i.ag, -2
  br label %.lr.ph360.i.i.prol.loopexit

.lr.ph360.i.i.prol.loopexit:                      ; preds = %.lr.ph360.i.i.prol.loopexit.unr-lcssa, %.lr.ph360.i.i.preheader
  %.0285359.i.i.unr = phi i64 [ %i.ai, %.lr.ph360.i.i.preheader ], [ %i.at, %.lr.ph360.i.i.prol.loopexit.unr-lcssa ]
  %cond = icmp eq i64 %i.af, 16
  br i1 %cond, label %sort_bump.exit.i, label %.lr.ph360.i.i.a

.preheader323.i.i:                                ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader323.i.i
  %.0296.i.i = phi i64 [ %i.ai, %.preheader323.i.i ], [ %.0296.i.i.be, %.backedge ] ; 6 uses
  %.0292.i.i = phi i64 [ 0, %.preheader323.i.i ], [ %.0292.i.i.be, %.backedge ] ; 7 uses
  %i.ax = sub i64 %.0296.i.i, %.0292.i.i
  %i.ay = lshr i64 %i.ax, 1
  %i.az = getelementptr [8 x i8], ptr %i.ac, i64 %.0292.i.i ; 6 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.ay ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 4            ; 3 uses
  %i.bc = add i64 %.0296.i.i, -1                  ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bc ; 8 uses
  %i.be = load i64, ptr %i.bd, align 4
  store i64 %i.be, ptr %i.ba, align 4
  store i64 %i.bb, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bg = lshr i64 %i.bb, 32
  %i.bh = trunc nuw i64 %i.bg to i32              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !84 ; 2 uses
  %i.bk = icmp ugt i32 %i.bj, %i.bh
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = load i64, ptr %i.az, align 4            ; 2 uses
  store i64 %i.bb, ptr %i.az, align 4
  store i64 %i.bl, ptr %i.bd, align 4
  %.pre.i.i = load i32, ptr %i.bi, align 4, !tbaa !84
  %i.bm = lshr i64 %i.bl, 32
  %i.bn = trunc nuw i64 %i.bm to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.copyload378.i.i = phi i32 [ %i.bh, %bb.g ], [ %i.bn, %bb.h ]
  %i.bo = phi i32 [ %i.bj, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.0296.i.i ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !84 ; 2 uses
  %i.bs = icmp ult i32 %i.br, %i.bo
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = load i64, ptr %i.az, align 4            ; 2 uses
  %i.bu = load i64, ptr %i.bp, align 4
  store i64 %i.bu, ptr %i.az, align 4
  store i64 %i.bt, ptr %i.bp, align 4
  %i.bv = lshr i64 %i.bt, 32
  %i.bw = trunc nuw i64 %i.bv to i32
  %.pre375.i.i = load i32, ptr %i.bf, align 4, !tbaa !84
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.3.0.copyload377.i.i = phi i32 [ %.sroa.3.0.copyload378.i.i, %bb.i ], [ %.pre375.i.i, %bb.j ] ; 2 uses
  %i.bx = phi i32 [ %i.br, %bb.i ], [ %i.bw, %bb.j ]
  %i.by = icmp ult i32 %i.bx, %.sroa.3.0.copyload377.i.i
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = load i64, ptr %i.bd, align 4
  %i.ca = load i64, ptr %i.bp, align 4            ; 2 uses
  store i64 %i.ca, ptr %i.bd, align 4
  store i64 %i.bz, ptr %i.bp, align 4
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.3.0.copyload.i.i = phi i32 [ %i.cc, %bb.l ], [ %.sroa.3.0.copyload377.i.i, %bb.k ] ; 2 uses
  %i.cd = add i64 %.0292.i.i, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0290.i.i = phi i64 [ %.0292.i.i, %bb.m ], [ %i.ce, %bb.q ]
  %.0288.i.i = phi i64 [ %i.bc, %bb.m ], [ %i.cj, %bb.q ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.1291.i.i = phi i64 [ %.0290.i.i, %bb.n ], [ %i.ce, %bb.o ] ; 4 uses
  %i.ce = add i64 %.1291.i.i, 1                   ; 6 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ce ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !84
  %i.ci = icmp ult i32 %i.ch, %.sroa.3.0.copyload.i.i
  br i1 %i.ci, label %bb.o, label %.preheader322.i.i, !llvm.loop !86

.preheader322.i.i:                                ; preds = %bb.o, %.preheader322.i.i
  %.1289.i.i = phi i64 [ %i.cj, %.preheader322.i.i ], [ %.0288.i.i, %bb.o ] ; 2 uses
  %i.cj = add i64 %.1289.i.i, -1                  ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !84
  %i.cn = icmp uge i32 %.sroa.3.0.copyload.i.i, %i.cm
  %i.co = icmp eq i64 %.1289.i.i, %i.cd
  %or.cond.i.i = or i1 %i.co, %i.cn
  br i1 %or.cond.i.i, label %bb.p, label %.preheader322.i.i, !llvm.loop !87

bb.p:                                             ; preds = %.preheader322.i.i
  %.not313.i.i = icmp ult i64 %i.ce, %i.cj
  %i.cp = load i64, ptr %i.cf, align 4            ; 2 uses
  br i1 %.not313.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = load i64, ptr %i.ck, align 4
  store i64 %i.cq, ptr %i.cf, align 4
  store i64 %i.cp, ptr %i.ck, align 4
  br label %bb.n

bb.r:                                             ; preds = %bb.p
  %i.cr = load i64, ptr %i.bd, align 4
  store i64 %i.cr, ptr %i.cf, align 4
  store i64 %i.cp, ptr %i.bd, align 4
  %i.cs = sub i64 %i.ce, %.0292.i.i
  %i.ct = sub i64 %.0296.i.i, %i.ce
  %i.cu = icmp ult i64 %i.cs, %i.ct               ; 4 uses
  %i.cv = add i64 %.1291.i.i, 2                   ; 2 uses
  %.0296..i.i = select i1 %i.cu, i64 %.1291.i.i, i64 %.0296.i.i ; 2 uses
  %.1291..0292.i.i = select i1 %i.cu, i64 %.0292.i.i, i64 %i.cv ; 2 uses
  %..0296.i.i = select i1 %i.cu, i64 %i.cv, i64 %.0292.i.i ; 3 uses
  %.0292..1291.i.i = select i1 %i.cu, i64 %.0296.i.i, i64 %.1291.i.i ; 3 uses
  %i.cw = sub i64 %.0296..i.i, %.1291..0292.i.i
  %i.cx = icmp ugt i64 %i.cw, 10
  br i1 %i.cx, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cy = load ptr, ptr %i.av, align 8, !tbaa !88 ; 2 uses
  %i.cz = load ptr, ptr %i.aw, align 8, !tbaa !89 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i64 noundef 8) #7
  %.pre379.i.i = load ptr, ptr %i.av, align 8, !tbaa !88
  %.pre380.i.i = load ptr, ptr %i.aw, align 8, !tbaa !89
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.db = phi ptr [ %.pre380.i.i, %bb.t ], [ %i.cz, %bb.s ]
  %i.dc = phi ptr [ %.pre379.i.i, %bb.t ], [ %i.cy, %bb.s ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  store ptr %i.dd, ptr %i.av, align 8, !tbaa !88
  store i64 %..0296.i.i, ptr %i.dc, align 8, !tbaa !90
  %i.de = icmp eq ptr %i.dd, %i.db
  br i1 %i.de, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i64 noundef 8) #7
  %.pre381.i.i = load ptr, ptr %i.av, align 8, !tbaa !88
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.df = phi ptr [ %.pre381.i.i, %bb.v ], [ %i.dd, %bb.u ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.dg, ptr %i.av, align 8, !tbaa !88
  store i64 %.0292..1291.i.i, ptr %i.df, align 8, !tbaa !90
  br label %.backedge

bb.x:                                             ; preds = %bb.r
  %i.dh = sub i64 %.0292..1291.i.i, %..0296.i.i
  %i.di = icmp ugt i64 %i.dh, 10
  br i1 %i.di, label %.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = load ptr, ptr %i.au, align 8, !tbaa !91
  %i.dk = load ptr, ptr %i.av, align 8, !tbaa !88 ; 3 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph360.i.i.preheader, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !90
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 -16 ; 2 uses
  store ptr %i.do, ptr %i.av, align 8, !tbaa !88
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !90
  br label %.backedge

.backedge:                                        ; preds = %bb.z, %bb.x, %bb.w
  %.0296.i.i.be = phi i64 [ %.0292..1291.i.i, %bb.x ], [ %.0296..i.i, %bb.w ], [ %i.dn, %bb.z ]
  %.0292.i.i.be = phi i64 [ %..0296.i.i, %bb.x ], [ %.1291..0292.i.i, %bb.w ], [ %i.dp, %bb.z ]
  br label %bb.g

.preheader.i.i:                                   ; preds = %bb.ac
  %.not315366.i.i = icmp eq i64 %i.af, 16
  br i1 %.not315366.i.i, label %sort_bump.exit.i, label %.lr.ph368.preheader.i.i

.lr.ph368.preheader.i.i:                          ; preds = %.preheader.i.i
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 3)
  br label %.lr.ph368.i.i

.lr.ph360.i.i.a:                                  ; preds = %.lr.ph360.i.i.prol.loopexit, %bb.ac
  %.0285359.i.i = phi i64 [ %i.ei, %bb.ac ], [ %.0285359.i.i.unr, %.lr.ph360.i.i.prol.loopexit ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.0285359.i.i ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !84
  %i.dt = getelementptr i8, ptr %i.dq, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !84
  %i.dv = icmp ult i32 %i.ds, %i.du
  br i1 %i.dv, label %bb.aa, label %.lr.ph360.i.i.1

bb.aa:                                            ; preds = %.lr.ph360.i.i.a
  %i.dw = getelementptr i8, ptr %i.dq, i64 -8     ; 2 uses
  %i.dx = load <2 x i64>, ptr %i.dw, align 4
  %i.dy = shufflevector <2 x i64> %i.dx, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.dy, ptr %i.dw, align 4
  br label %.lr.ph360.i.i.1

.lr.ph360.i.i.1:                                  ; preds = %bb.aa, %.lr.ph360.i.i.a
  %i.dz = getelementptr [8 x i8], ptr %i.ac, i64 %.0285359.i.i ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !84
  %i.ec = getelementptr i8, ptr %i.dz, i64 -12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !84
  %i.ee = icmp ult i32 %i.eb, %i.ed
  br i1 %i.ee, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph360.i.i.1
  %i.ef = getelementptr i8, ptr %i.dz, i64 -16    ; 2 uses
  %i.eg = load <2 x i64>, ptr %i.ef, align 4
  %i.eh = shufflevector <2 x i64> %i.eg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.eh, ptr %i.ef, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph360.i.i.1
  %i.ei = add i64 %.0285359.i.i, -2               ; 2 uses
  %.not314.i.i.1 = icmp eq i64 %i.ei, 0
  br i1 %.not314.i.i.1, label %.preheader.i.i, label %.lr.ph360.i.i.a, !llvm.loop !92

.lr.ph368.i.i:                                    ; preds = %._crit_edge364.i.i, %.lr.ph368.preheader.i.i
  %.0284367.i.i = phi i64 [ %i.ew, %._crit_edge364.i.i ], [ 2, %.lr.ph368.preheader.i.i ] ; 3 uses
  %i.ej = getelementptr [8 x i8], ptr %i.ac, i64 %.0284367.i.i ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !71 ; 2 uses
  %i.ek = load <2 x i32>, ptr %i.ej, align 4, !tbaa !71
  %i.el = getelementptr i8, ptr %i.ej, i64 -4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !84
  %i.en = icmp ult i32 %.sroa.4.0.copyload.i.i, %i.em
  br i1 %i.en, label %.lr.ph363.i.i, label %._crit_edge364.i.i

.lr.ph363.i.i:                                    ; preds = %.lr.ph368.i.i, %.lr.ph363.i.i
  %i.eo = phi ptr [ %i.es, %.lr.ph363.i.i ], [ %i.ej, %.lr.ph368.i.i ] ; 2 uses
  %.0283361.i.i = phi i64 [ %i.er, %.lr.ph363.i.i ], [ %.0284367.i.i, %.lr.ph368.i.i ]
  %i.ep = getelementptr i8, ptr %i.eo, i64 -8
  %i.eq = load i64, ptr %i.ep, align 4
  store i64 %i.eq, ptr %i.eo, align 4
  %i.er = add i64 %.0283361.i.i, -1               ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.ac, i64 %i.er ; 3 uses
  %i.et = getelementptr i8, ptr %i.es, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !84
  %i.ev = icmp ult i32 %.sroa.4.0.copyload.i.i, %i.eu
  br i1 %i.ev, label %.lr.ph363.i.i, label %._crit_edge364.i.i, !llvm.loop !93

._crit_edge364.i.i:                               ; preds = %.lr.ph363.i.i, %.lr.ph368.i.i
  %.lcssa.i.i = phi ptr [ %i.ej, %.lr.ph368.i.i ], [ %i.es, %.lr.ph363.i.i ]
  store <2 x i32> %i.ek, ptr %.lcssa.i.i, align 4, !tbaa !71
  %i.ew = add nuw i64 %.0284367.i.i, 1            ; 2 uses
  %exitcond374.i.i = icmp eq i64 %i.ew, %umax.i.i
  br i1 %exitcond374.i.i, label %sort_bump.exit.i, label %.lr.ph368.i.i, !llvm.loop !94

bb.ad:                                            ; preds = %.critedge.i
  %i.ex = icmp ult i64 %i.af, 9
  br i1 %i.ex, label %sort_bump.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i.i
  %.0252334.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.fh, %bb.ae ] ; 2 uses
  %.0253333.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.ae ] ; 2 uses
  %.0254332.i.i = phi i8 [ 1, %.lr.ph.i.i ], [ %.1255.i.i, %bb.ae ] ; 2 uses
  %.1259331.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.2.i.i, %bb.ae ]
  %.1261330.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2262.i.i, %bb.ae ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.0252334.i.i, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !84 ; 3 uses
  %.2262.i.i = or i32 %i.ez, %.1261330.i.i        ; 8 uses
  %.2.i.i = and i32 %i.ez, %.1259331.i.i          ; 6 uses
  %i.fa = and i32 %i.ez, 255                      ; 3 uses
  %i.fb = trunc nuw i8 %.0254332.i.i to i1
  %i.fc = icmp samesign ugt i32 %.0253333.i.i, %i.fa
  %or.cond317.i.i = select i1 %i.fb, i1 %i.fc, i1 false ; 2 uses
  %.1255.i.i = select i1 %or.cond317.i.i, i8 0, i8 %.0254332.i.i ; 2 uses
  %.1.i.i = select i1 %or.cond317.i.i, i32 %.0253333.i.i, i32 %i.fa
  %i.fd = zext nneg i32 %i.fa to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !90
  %i.fg = add i64 %i.ff, 1
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !90
  %i.fh = getelementptr inbounds nuw i8, ptr %.0252334.i.i, i64 8 ; 2 uses
  %.not309.i.i = icmp eq ptr %i.fh, %i.u
  br i1 %.not309.i.i, label %bb.af, label %bb.ae, !llvm.loop !95

bb.af:                                            ; preds = %bb.ae
  %i.fi = and i32 %.2.i.i, 255                    ; 5 uses
  %i.fj = and i32 %.2262.i.i, 255                 ; 3 uses
  %i.fk = xor i32 %.2.i.i, %.2262.i.i             ; 4 uses
  %i.fl = and i32 %i.fk, 255
  %i.fm = icmp eq i32 %i.fl, 0
  %i.fn = trunc nuw i8 %.1255.i.i to i1
  %or.cond321.i.i = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %or.cond321.i.i, label %.loopexit324.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not310337.i.i = icmp samesign ugt i32 %i.fi, %i.fj
  br i1 %.not310337.i.i, label %.lr.ph346.preheader.i.i, label %.lr.ph341.preheader.i.i

.lr.ph341.preheader.i.i:                          ; preds = %bb.ag
  %i.fo = zext nneg i32 %i.fi to i64              ; 4 uses
  %i.fp = and i32 %.2262.i.i, 255
  %i.fq = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.fr = add nuw nsw i64 %i.fq, 1
  %i.fs = sub nsw i64 %i.fr, %i.fo                ; 2 uses
  %i.ft = sub nsw i64 %i.fq, %i.fo
  %xtraiter = and i64 %i.fs, 3                    ; 3 uses
  %i.fu = icmp ult i64 %i.ft, 3
  br i1 %i.fu, label %.lr.ph341.i.i.epil.preheader, label %.lr.ph341.preheader.i.i.new

.lr.ph341.preheader.i.i.new:                      ; preds = %.lr.ph341.preheader.i.i
  %unroll_iter = and i64 %i.fs, -4
  br label %.lr.ph341.i.i

.lr.ph341.i.i:                                    ; preds = %.lr.ph341.i.i, %.lr.ph341.preheader.i.i.new
  %.0250339.i.i = phi i64 [ %i.fo, %.lr.ph341.preheader.i.i.new ], [ %i.gk, %.lr.ph341.i.i ] ; 5 uses
  %.0251338.i.i = phi i64 [ 0, %.lr.ph341.preheader.i.i.new ], [ %i.gj, %.lr.ph341.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph341.preheader.i.i.new ], [ %niter.next.3, %.lr.ph341.i.i ]
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0250339.i.i ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !90
  store i64 %.0251338.i.i, ptr %i.fv, align 8, !tbaa !90
  %i.fx = add i64 %i.fw, %.0251338.i.i            ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0250339.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !90
  store i64 %i.fx, ptr %i.fz, align 8, !tbaa !90
  %i.gb = add i64 %i.ga, %i.fx                    ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0250339.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !90
  store i64 %i.gb, ptr %i.gd, align 8, !tbaa !90
  %i.gf = add i64 %i.ge, %i.gb                    ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0250339.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !90
  store i64 %i.gf, ptr %i.gh, align 8, !tbaa !90
  %i.gj = add i64 %i.gi, %i.gf                    ; 2 uses
  %i.gk = add nuw nsw i64 %.0250339.i.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph346.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph341.i.i, !llvm.loop !96

.lr.ph346.preheader.i.i.loopexit.unr-lcssa:       ; preds = %.lr.ph341.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph346.preheader.i.i, label %.lr.ph341.i.i.epil.preheader

.lr.ph341.i.i.epil.preheader:                     ; preds = %.lr.ph346.preheader.i.i.loopexit.unr-lcssa, %.lr.ph341.preheader.i.i
  %.0250339.i.i.epil.init = phi i64 [ %i.fo, %.lr.ph341.preheader.i.i ], [ %i.gk, %.lr.ph346.preheader.i.i.loopexit.unr-lcssa ]
  %.0251338.i.i.epil.init = phi i64 [ 0, %.lr.ph341.preheader.i.i ], [ %i.gj, %.lr.ph346.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph341.i.i.epil

.lr.ph341.i.i.epil:                               ; preds = %.lr.ph341.i.i.epil, %.lr.ph341.i.i.epil.preheader
  %.0250339.i.i.epil = phi i64 [ %i.go, %.lr.ph341.i.i.epil ], [ %.0250339.i.i.epil.init, %.lr.ph341.i.i.epil.preheader ] ; 2 uses
  %.0251338.i.i.epil = phi i64 [ %i.gn, %.lr.ph341.i.i.epil ], [ %.0251338.i.i.epil.init, %.lr.ph341.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph341.i.i.epil ], [ 0, %.lr.ph341.i.i.epil.preheader ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0250339.i.i.epil ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !90
  store i64 %.0251338.i.i.epil, ptr %i.gl, align 8, !tbaa !90
  %i.gn = add i64 %i.gm, %.0251338.i.i.epil
  %i.go = add nuw nsw i64 %.0250339.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph346.preheader.i.i, label %.lr.ph341.i.i.epil, !llvm.loop !97

.lr.ph346.preheader.i.i:                          ; preds = %.lr.ph346.preheader.i.i.loopexit.unr-lcssa, %.lr.ph341.i.i.epil, %bb.ag
  %i.gp = tail call ptr @kissat_malloc(ptr noundef nonnull %0, i64 noundef %i.af) #7 ; 3 uses
  br label %.lr.ph346.i.i

.lr.ph346.i.i:                                    ; preds = %.lr.ph346.i.i, %.lr.ph346.preheader.i.i
  %.0249344.i.i = phi ptr [ %i.gz, %.lr.ph346.i.i ], [ %i.ac, %.lr.ph346.preheader.i.i ] ; 3 uses
end_hunk_0
