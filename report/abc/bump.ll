Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bump?download=true
inline.NumInlined: 24
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@bump_analyzed_variable_score:bb.a
  %i.bm = add nuw i32 %i.bf, 2                    ; 3 uses
  %i.bn = icmp ult i32 %i.bm, %i.bb
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i25.i
  %i.bo = zext i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !69 ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !21 ; 2 uses
  %i.bu = fcmp ogt double %i.bt, %i.bl            ; 3 uses
  %.047.i.i = select i1 %i.bu, i32 %i.bm, i32 %i.be
  %.043.i.i = select i1 %i.bu, i32 %i.bq, i32 %i.bi
  %.0.i.i = select i1 %i.bu, double %i.bt, double %i.bl
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i25.i
  %.148.i.i = phi i32 [ %.047.i.i, %bb.i ], [ %i.be, %.lr.ph.i25.i ] ; 3 uses
  %.144.i.i = phi i32 [ %.043.i.i, %bb.i ], [ %i.bi, %.lr.ph.i25.i ] ; 2 uses
  %.1.i.i = phi double [ %.0.i.i, %bb.i ], [ %i.bl, %.lr.ph.i25.i ]
  %i.bv = fcmp ugt double %.1.i.i, %i.s
  br i1 %i.bv, label %bb.k, label %kissat_heap_contains.exit.thread.sink.split.i

bb.k:                                             ; preds = %bb.j
  %i.bw = zext i32 %.0495.i.i to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bw
  store i32 %.144.i.i, ptr %i.bx, align 4, !tbaa !69
  %i.by = zext i32 %.144.i.i to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.by
  store i32 %.0495.i.i, ptr %i.bz, align 4, !tbaa !69
  %i.ca = shl i32 %.148.i.i, 1                    ; 2 uses
  %i.cb = or disjoint i32 %i.ca, 1                ; 2 uses
  %.not.i26.i = icmp ult i32 %i.cb, %i.bb
  br i1 %.not.i26.i, label %.lr.ph.i25.i, label %kissat_heap_contains.exit.thread.sink.split.i

kissat_heap_contains.exit.thread.sink.split.i:    ; preds = %bb.k, %bb.j, %bb.g, %.lr.ph.i.i, %bb.h, %bb.f
  %.027.lcssa.i.sink38.i = phi i32 [ %i.ae, %bb.h ], [ 0, %bb.f ], [ %.0274.i.i, %.lr.ph.i.i ], [ 0, %bb.g ], [ %.148.i.i, %bb.k ], [ %.0495.i.i, %bb.j ] ; 2 uses
  %i.cc = zext i32 %.027.lcssa.i.sink38.i to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cc
  store i32 %1, ptr %i.cd, align 4, !tbaa !69
  store i32 %.027.lcssa.i.sink38.i, ptr %i.ad, align 4, !tbaa !69
  br label %kissat_update_heap.exit

kissat_update_heap.exit:                          ; preds = %kissat_get_heap_score.exit.i, %kissat_get_heap_score.exit.thread.i, %bb.d, %kissat_heap_contains.exit.i, %kissat_heap_contains.exit.thread.sink.split.i
  %i.ce = phi double [ %i.l, %kissat_get_heap_score.exit.i ], [ %i.p, %kissat_get_heap_score.exit.thread.i ], [ %i.s, %bb.d ], [ %i.s, %kissat_heap_contains.exit.i ], [ %i.s, %kissat_heap_contains.exit.thread.sink.split.i ]
  %i.cf = phi ptr [ %i.j, %kissat_get_heap_score.exit.i ], [ %i.n, %kissat_get_heap_score.exit.thread.i ], [ %i.t, %bb.d ], [ %i.t, %kissat_heap_contains.exit.i ], [ %i.t, %kissat_heap_contains.exit.thread.sink.split.i ] ; 3 uses
  %i.cg = fcmp ogt double %i.ce, f0x5F138D352E5096AF
  br i1 %i.cg, label %bb.l, label %bb.n

bb.l:                                             ; preds = %kissat_update_heap.exit
  %i.ch = load i8, ptr %i.a, align 8, !tbaa !15, !range !16, !noundef !17
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.m, label %kissat_rescale_scores.exit

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !18 ; 3 uses
  %i.cl = load i32, ptr %i.b, align 4, !tbaa !19  ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %.idx.i.i = shl nuw nsw i64 %i.cm, 3            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i.i
  %i.co = load double, ptr %i.ck, align 8, !tbaa !21 ; 3 uses
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
  %i.cs = load double, ptr %.021.i.i.prol, align 8, !tbaa !21 ; 2 uses
  %i.ct = fcmp olt double %.01520.i.i.prol, %i.cs
  %..015.i.i.prol = select i1 %i.ct, double %i.cs, double %.01520.i.i.prol ; 3 uses
  %.0.i.i12.prol = getelementptr inbounds nuw i8, ptr %.021.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.prol.loopexit, label %.lr.ph.i.i11.prol, !llvm.loop !75

.lr.ph.i.i11.prol.loopexit:                       ; preds = %.lr.ph.i.i11.prol, %.lr.ph.preheader.i.i
  %..015.i.i.lcssa.unr = phi double [ poison, %.lr.ph.preheader.i.i ], [ %..015.i.i.prol, %.lr.ph.i.i11.prol ]
  %.021.i.i.unr = phi ptr [ %.018.i.i, %.lr.ph.preheader.i.i ], [ %.0.i.i12.prol, %.lr.ph.i.i11.prol ]
  %.01520.i.i.unr = phi double [ %i.co, %.lr.ph.preheader.i.i ], [ %..015.i.i.prol, %.lr.ph.i.i11.prol ]
  %i.cu = icmp ult i64 %i.cp, 24
  br i1 %i.cu, label %kissat_rescale_scores.exit, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i.i11.prol.loopexit, %.lr.ph.i.i11
  %.021.i.i = phi ptr [ %.0.i.i12.3, %.lr.ph.i.i11 ], [ %.021.i.i.unr, %.lr.ph.i.i11.prol.loopexit ] ; 5 uses
  %.01520.i.i = phi double [ %..015.i.i.3, %.lr.ph.i.i11 ], [ %.01520.i.i.unr, %.lr.ph.i.i11.prol.loopexit ] ; 2 uses
  %i.cv = load double, ptr %.021.i.i, align 8, !tbaa !21 ; 2 uses
  %i.cw = fcmp olt double %.01520.i.i, %i.cv
  %..015.i.i = select i1 %i.cw, double %i.cv, double %.01520.i.i ; 2 uses
  %.0.i.i12 = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 8
  %i.cx = load double, ptr %.0.i.i12, align 8, !tbaa !21 ; 2 uses
  %i.cy = fcmp olt double %..015.i.i, %i.cx
  %..015.i.i.1 = select i1 %i.cy, double %i.cx, double %..015.i.i ; 2 uses
  %.0.i.i12.1 = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 16
  %i.cz = load double, ptr %.0.i.i12.1, align 8, !tbaa !21 ; 2 uses
  %i.da = fcmp olt double %..015.i.i.1, %i.cz
  %..015.i.i.2 = select i1 %i.da, double %i.cz, double %..015.i.i.1 ; 2 uses
  %.0.i.i12.2 = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 24
  %i.db = load double, ptr %.0.i.i12.2, align 8, !tbaa !21 ; 2 uses
  %i.dc = fcmp olt double %..015.i.i.2, %i.db
  %..015.i.i.3 = select i1 %i.dc, double %i.db, double %..015.i.i.2 ; 2 uses
  %.0.i.i12.3 = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 32 ; 2 uses
  %.not.i.i13.3 = icmp eq ptr %.0.i.i12.3, %i.cn
  br i1 %.not.i.i13.3, label %kissat_rescale_scores.exit, label %.lr.ph.i.i11, !llvm.loop !0

kissat_rescale_scores.exit:                       ; preds = %.lr.ph.i.i11.prol.loopexit, %.lr.ph.i.i11, %bb.l, %bb.m
  %.016.i.i = phi double [ 0.000000e+00, %bb.l ], [ %i.co, %bb.m ], [ %..015.i.i.lcssa.unr, %.lr.ph.i.i11.prol.loopexit ], [ %..015.i.i.3, %.lr.ph.i.i11 ] ; 2 uses
  %i.dd = load double, ptr %i.cf, align 8, !tbaa !67 ; 2 uses
  %i.de = fcmp olt double %.016.i.i, %i.dd
  %..i = select i1 %i.de, double %i.dd, double %.016.i.i
  %i.df = fdiv double 1.000000e+00, %..i          ; 2 uses
  tail call void @kissat_rescale_heap(ptr noundef nonnull %0, ptr noundef nonnull %i.a, double noundef %i.df) #7
  %i.dg = load double, ptr %i.cf, align 8, !tbaa !67
  %i.dh = fmul double %i.dg, %i.df
  store double %i.dh, ptr %i.cf, align 8, !tbaa !67
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 5 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !93   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.g = load i8, ptr %i.f, align 1, !tbaa !94, !range !16, !noundef !17
  %i.h = trunc nuw i8 %i.g to i1
  %.not11.i = icmp eq ptr %i.e, %i.d              ; 2 uses
  br i1 %i.h, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 6 uses
  br i1 %.not11.i, label %..critedge_crit_edge.i, label %.lr.ph.i

..critedge_crit_edge.i:                           ; preds = %bb.b
  %.pre50.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !96
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !96
  br label %bb.c

bb.c:                                             ; preds = %bb.ax, %.lr.ph.i
  %i.m = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.oh, %bb.ax ] ; 2 uses
  %.03139.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.oi, %bb.ax ] ; 2 uses
  %i.n = load i32, ptr %.03139.i, align 4, !tbaa !69 ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !98
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !99
  %i.t = icmp eq ptr %i.m, %i.s
  br i1 %i.t, label %bb.aw, label %bb.ax

.critedge.loopexit.i:                             ; preds = %bb.ax
  %.pre48.i = load ptr, ptr %i.c, align 8, !tbaa !92
  %.pre49.i = load ptr, ptr %i.b, align 8, !tbaa !93
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %..critedge_crit_edge.i
  %i.u = phi ptr [ %i.oh, %.critedge.loopexit.i ], [ %.pre50.i, %..critedge_crit_edge.i ] ; 3 uses
  %i.v = phi ptr [ %.pre49.i, %.critedge.loopexit.i ], [ %i.d, %..critedge_crit_edge.i ]
  %i.w = phi ptr [ %.pre48.i, %.critedge.loopexit.i ], [ %i.d, %..critedge_crit_edge.i ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !100 ; 21 uses
  %i.ad = ptrtoint ptr %i.u to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 13 uses
  br i1 %i.aa, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %.critedge.i
  %i.ag = ashr exact i64 %i.af, 3                 ; 5 uses
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %sort_bump.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = add nsw i64 %i.ag, -1                   ; 5 uses
  %i.aj = icmp ult i64 %i.ag, 12
  br i1 %i.aj, label %.thread.i.i, label %.preheader323.i.i

.preheader323.i.i:                                ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %.preheader323.i.i
  %.0296.i.i = phi i64 [ 0, %.preheader323.i.i ], [ %.0296.i.i.be, %.backedge ] ; 7 uses
  %.0292.i.i = phi i64 [ %i.ai, %.preheader323.i.i ], [ %.0292.i.i.be, %.backedge ] ; 6 uses
  %i.an = sub i64 %.0292.i.i, %.0296.i.i
  %i.ao = lshr i64 %i.an, 1
  %i.ap = getelementptr [8 x i8], ptr %i.ac, i64 %.0296.i.i ; 6 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 4            ; 3 uses
  %i.as = add i64 %.0292.i.i, -1                  ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.as ; 8 uses
  %i.au = load i64, ptr %i.at, align 4
  store i64 %i.au, ptr %i.aq, align 4
  store i64 %i.ar, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = lshr i64 %i.ar, 32
  %i.ax = trunc nuw i64 %i.aw to i32              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !102 ; 2 uses
  %i.ba = icmp ugt i32 %i.az, %i.ax
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = load i64, ptr %i.ap, align 4            ; 2 uses
  store i64 %i.ar, ptr %i.ap, align 4
  store i64 %i.bb, ptr %i.at, align 4
  %.pre.i.i = load i32, ptr %i.ay, align 4, !tbaa !102
  %i.bc = lshr i64 %i.bb, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.3.0.copyload378.i.i = phi i32 [ %i.ax, %bb.f ], [ %i.bd, %bb.g ]
  %i.be = phi i32 [ %i.az, %bb.f ], [ %.pre.i.i, %bb.g ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.0292.i.i ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !102 ; 2 uses
  %i.bi = icmp ult i32 %i.bh, %i.be
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i64, ptr %i.ap, align 4            ; 2 uses
  %i.bk = load i64, ptr %i.bf, align 4
  store i64 %i.bk, ptr %i.ap, align 4
  store i64 %i.bj, ptr %i.bf, align 4
  %i.bl = lshr i64 %i.bj, 32
  %i.bm = trunc nuw i64 %i.bl to i32
  %.pre375.i.i = load i32, ptr %i.av, align 4, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.copyload377.i.i = phi i32 [ %.sroa.3.0.copyload378.i.i, %bb.h ], [ %.pre375.i.i, %bb.i ] ; 2 uses
  %i.bn = phi i32 [ %i.bh, %bb.h ], [ %i.bm, %bb.i ]
  %i.bo = icmp ult i32 %i.bn, %.sroa.3.0.copyload377.i.i
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = load i64, ptr %i.at, align 4
  %i.bq = load i64, ptr %i.bf, align 4            ; 2 uses
  store i64 %i.bq, ptr %i.at, align 4
  store i64 %i.bp, ptr %i.bf, align 4
  %i.br = lshr i64 %i.bq, 32
  %i.bs = trunc nuw i64 %i.br to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.3.0.copyload.i.i = phi i32 [ %i.bs, %bb.k ], [ %.sroa.3.0.copyload377.i.i, %bb.j ] ; 2 uses
  %i.bt = add i64 %.0296.i.i, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  %.0290.i.i = phi i64 [ %.0296.i.i, %bb.l ], [ %i.bu, %bb.p ]
  %.0288.i.i = phi i64 [ %i.as, %bb.l ], [ %i.bz, %bb.p ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.1291.i.i = phi i64 [ %.0290.i.i, %bb.m ], [ %i.bu, %bb.n ] ; 4 uses
  %i.bu = add i64 %.1291.i.i, 1                   ; 6 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bu ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !102
  %i.by = icmp ult i32 %i.bx, %.sroa.3.0.copyload.i.i
  br i1 %i.by, label %bb.n, label %.preheader322.i.i, !llvm.loop !76

.preheader322.i.i:                                ; preds = %bb.n, %.preheader322.i.i
  %.1289.i.i = phi i64 [ %i.bz, %.preheader322.i.i ], [ %.0288.i.i, %bb.n ] ; 2 uses
  %i.bz = add i64 %.1289.i.i, -1                  ; 4 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !102
  %i.cd = icmp uge i32 %.sroa.3.0.copyload.i.i, %i.cc
  %i.ce = icmp eq i64 %.1289.i.i, %i.bt
  %or.cond.i.i = or i1 %i.ce, %i.cd
  br i1 %or.cond.i.i, label %bb.o, label %.preheader322.i.i, !llvm.loop !77

bb.o:                                             ; preds = %.preheader322.i.i
  %.not313.i.i = icmp ult i64 %i.bu, %i.bz
  %i.cf = load i64, ptr %i.bv, align 4            ; 2 uses
  br i1 %.not313.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cg = load i64, ptr %i.ca, align 4
  store i64 %i.cg, ptr %i.bv, align 4
  store i64 %i.cf, ptr %i.ca, align 4
  br label %bb.m

bb.q:                                             ; preds = %bb.o
  %i.ch = load i64, ptr %i.at, align 4
  store i64 %i.ch, ptr %i.bv, align 4
  store i64 %i.cf, ptr %i.at, align 4
  %i.ci = sub i64 %i.bu, %.0296.i.i
  %i.cj = sub i64 %.0292.i.i, %i.bu
  %i.ck = icmp ult i64 %i.ci, %i.cj               ; 4 uses
  %i.cl = add i64 %.1291.i.i, 2                   ; 2 uses
  %.0296..i.i = select i1 %i.ck, i64 %.0296.i.i, i64 %i.cl ; 2 uses
  %.1291..0292.i.i = select i1 %i.ck, i64 %.1291.i.i, i64 %.0292.i.i ; 2 uses
  %..0296.i.i = select i1 %i.ck, i64 %i.cl, i64 %.0296.i.i ; 3 uses
  %.0292..1291.i.i = select i1 %i.ck, i64 %.0292.i.i, i64 %.1291.i.i ; 3 uses
  %i.cm = sub i64 %.1291..0292.i.i, %.0296..i.i
  %i.cn = icmp ugt i64 %i.cm, 10
  br i1 %i.cn, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.al, align 8, !tbaa !103 ; 2 uses
  %i.cp = load ptr, ptr %i.am, align 8, !tbaa !104 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i64 noundef 8) #7
  %.pre379.i.i = load ptr, ptr %i.al, align 8, !tbaa !103
  %.pre380.i.i = load ptr, ptr %i.am, align 8, !tbaa !104
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cr = phi ptr [ %.pre380.i.i, %bb.s ], [ %i.cp, %bb.r ]
  %i.cs = phi ptr [ %.pre379.i.i, %bb.s ], [ %i.co, %bb.r ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  store ptr %i.ct, ptr %i.al, align 8, !tbaa !103
  store i64 %..0296.i.i, ptr %i.cs, align 8, !tbaa !105
  %i.cu = icmp eq ptr %i.ct, %i.cr
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i64 noundef 8) #7
  %.pre381.i.i = load ptr, ptr %i.al, align 8, !tbaa !103
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cv = phi ptr [ %.pre381.i.i, %bb.u ], [ %i.ct, %bb.t ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cw, ptr %i.al, align 8, !tbaa !103
  store i64 %.0292..1291.i.i, ptr %i.cv, align 8, !tbaa !105
  br label %.backedge

bb.w:                                             ; preds = %bb.q
  %i.cx = sub i64 %.0292..1291.i.i, %..0296.i.i
  %i.cy = icmp ugt i64 %i.cx, 10
  br i1 %i.cy, label %.backedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = load ptr, ptr %i.ak, align 8, !tbaa !106
  %i.da = load ptr, ptr %i.al, align 8, !tbaa !103 ; 3 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %.thread.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !105
  %i.de = getelementptr inbounds i8, ptr %i.da, i64 -16 ; 2 uses
  store ptr %i.de, ptr %i.al, align 8, !tbaa !103
  %i.df = load i64, ptr %i.de, align 8, !tbaa !105
  br label %.backedge

.backedge:                                        ; preds = %bb.y, %bb.w, %bb.v
  %.0296.i.i.be = phi i64 [ %..0296.i.i, %bb.w ], [ %.0296..i.i, %bb.v ], [ %i.df, %bb.y ]
  %.0292.i.i.be = phi i64 [ %.0292..1291.i.i, %bb.w ], [ %.1291..0292.i.i, %bb.v ], [ %i.dd, %bb.y ]
  br label %bb.f

.thread.i.i:                                      ; preds = %bb.x, %bb.e
  %.not314358.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not314358.i.i, label %.preheader.i.i, label %.lr.ph360.i.i.preheader

.lr.ph360.i.i.preheader:                          ; preds = %.thread.i.i
  %xtraiter100 = and i64 %i.ai, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph360.i.i.prol.loopexit, label %.lr.ph360.i.i.prol

.lr.ph360.i.i.prol:                               ; preds = %.lr.ph360.i.i.preheader
  %1 = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ai ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !102
  %4 = getelementptr i8, ptr %1, i64 -4
  %5 = load i32, ptr %4, align 4, !tbaa !102
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %.lr.ph360.i.i.prol.loopexit.unr-lcssa

7:                                                ; preds = %.lr.ph360.i.i.prol
  %8 = getelementptr i8, ptr %1, i64 -8           ; 2 uses
  %9 = load <2 x i64>, ptr %8, align 4
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %10, ptr %8, align 4
  br label %.lr.ph360.i.i.prol.loopexit.unr-lcssa

.lr.ph360.i.i.prol.loopexit.unr-lcssa:            ; preds = %7, %.lr.ph360.i.i.prol
  %11 = add nsw i64 %i.ag, -2
  br label %.lr.ph360.i.i.prol.loopexit

.lr.ph360.i.i.prol.loopexit:                      ; preds = %.lr.ph360.i.i.prol.loopexit.unr-lcssa, %.lr.ph360.i.i.preheader
  %.0285359.i.i.unr = phi i64 [ %i.ai, %.lr.ph360.i.i.preheader ], [ %11, %.lr.ph360.i.i.prol.loopexit.unr-lcssa ]
  %cond = icmp eq i64 %i.af, 16
  br i1 %cond, label %sort_bump.exit.i, label %.lr.ph360.i.i

.preheader.i.i:                                   ; preds = %bb.ab, %.thread.i.i
  %.not315366.i.i = icmp eq i64 %i.af, 16
  br i1 %.not315366.i.i, label %sort_bump.exit.i, label %.lr.ph368.preheader.i.i

.lr.ph368.preheader.i.i:                          ; preds = %.preheader.i.i
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 3)
  br label %.lr.ph368.i.i

.lr.ph360.i.i:                                    ; preds = %.lr.ph360.i.i.prol.loopexit, %bb.ab
  %.0285359.i.i = phi i64 [ %i.dy, %bb.ab ], [ %.0285359.i.i.unr, %.lr.ph360.i.i.prol.loopexit ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.0285359.i.i ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !102
  %i.dj = getelementptr i8, ptr %i.dg, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !102
  %i.dl = icmp ult i32 %i.di, %i.dk
  br i1 %i.dl, label %bb.z, label %.lr.ph360.i.i.1

bb.z:                                             ; preds = %.lr.ph360.i.i
  %i.dm = getelementptr i8, ptr %i.dg, i64 -8     ; 2 uses
  %i.dn = load <2 x i64>, ptr %i.dm, align 4
  %i.do = shufflevector <2 x i64> %i.dn, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.do, ptr %i.dm, align 4
  br label %.lr.ph360.i.i.1

.lr.ph360.i.i.1:                                  ; preds = %bb.z, %.lr.ph360.i.i
  %i.dp = getelementptr [8 x i8], ptr %i.ac, i64 %.0285359.i.i ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !102
  %i.ds = getelementptr i8, ptr %i.dp, i64 -12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !102
  %i.du = icmp ult i32 %i.dr, %i.dt
  br i1 %i.du, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph360.i.i.1
  %i.dv = getelementptr i8, ptr %i.dp, i64 -16    ; 2 uses
  %i.dw = load <2 x i64>, ptr %i.dv, align 4
  %i.dx = shufflevector <2 x i64> %i.dw, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.dx, ptr %i.dv, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph360.i.i.1
  %i.dy = add i64 %.0285359.i.i, -2               ; 2 uses
  %.not314.i.i.1 = icmp eq i64 %i.dy, 0
  br i1 %.not314.i.i.1, label %.preheader.i.i, label %.lr.ph360.i.i, !llvm.loop !78

.lr.ph368.i.i:                                    ; preds = %._crit_edge364.i.i, %.lr.ph368.preheader.i.i
  %.0284367.i.i = phi i64 [ %i.em, %._crit_edge364.i.i ], [ 2, %.lr.ph368.preheader.i.i ] ; 3 uses
  %i.dz = getelementptr [8 x i8], ptr %i.ac, i64 %.0284367.i.i ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !69 ; 2 uses
  %i.ea = load <2 x i32>, ptr %i.dz, align 4, !tbaa !69
  %i.eb = getelementptr i8, ptr %i.dz, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !102
  %i.ed = icmp ult i32 %.sroa.4.0.copyload.i.i, %i.ec
  br i1 %i.ed, label %.lr.ph363.i.i, label %._crit_edge364.i.i

.lr.ph363.i.i:                                    ; preds = %.lr.ph368.i.i, %.lr.ph363.i.i
  %i.ee = phi ptr [ %i.ei, %.lr.ph363.i.i ], [ %i.dz, %.lr.ph368.i.i ] ; 2 uses
  %.0283361.i.i = phi i64 [ %i.eh, %.lr.ph363.i.i ], [ %.0284367.i.i, %.lr.ph368.i.i ]
  %i.ef = getelementptr i8, ptr %i.ee, i64 -8
  %i.eg = load i64, ptr %i.ef, align 4
  store i64 %i.eg, ptr %i.ee, align 4
  %i.eh = add i64 %.0283361.i.i, -1               ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.ac, i64 %i.eh ; 3 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 -4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !102
  %i.el = icmp ult i32 %.sroa.4.0.copyload.i.i, %i.ek
  br i1 %i.el, label %.lr.ph363.i.i, label %._crit_edge364.i.i, !llvm.loop !79

._crit_edge364.i.i:                               ; preds = %.lr.ph363.i.i, %.lr.ph368.i.i
  %.lcssa.i.i = phi ptr [ %i.dz, %.lr.ph368.i.i ], [ %i.ei, %.lr.ph363.i.i ]
  store <2 x i32> %i.ea, ptr %.lcssa.i.i, align 4, !tbaa !69
  %i.em = add nuw i64 %.0284367.i.i, 1            ; 2 uses
  %exitcond374.i.i = icmp eq i64 %i.em, %umax.i.i
  br i1 %exitcond374.i.i, label %sort_bump.exit.i, label %.lr.ph368.i.i, !llvm.loop !80

bb.ac:                                            ; preds = %.critedge.i
  %i.en = icmp ult i64 %i.af, 9
  br i1 %i.en, label %sort_bump.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i.i
  %.0252334.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.ex, %bb.ad ] ; 2 uses
  %.0253333.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.ad ] ; 2 uses
  %.0254332.i.i = phi i8 [ 1, %.lr.ph.i.i ], [ %.1255.i.i, %bb.ad ] ; 2 uses
  %.1259331.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.2.i.i, %bb.ad ]
  %.1261330.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2262.i.i, %bb.ad ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.0252334.i.i, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !102 ; 3 uses
  %.2262.i.i = or i32 %i.ep, %.1261330.i.i        ; 8 uses
  %.2.i.i = and i32 %i.ep, %.1259331.i.i          ; 6 uses
  %i.eq = and i32 %i.ep, 255                      ; 3 uses
  %i.er = trunc nuw i8 %.0254332.i.i to i1
  %i.es = icmp samesign ugt i32 %.0253333.i.i, %i.eq
  %or.cond317.i.i = select i1 %i.er, i1 %i.es, i1 false ; 2 uses
  %.1255.i.i = select i1 %or.cond317.i.i, i8 0, i8 %.0254332.i.i ; 2 uses
  %.1.i.i = select i1 %or.cond317.i.i, i32 %.0253333.i.i, i32 %i.eq
  %i.et = zext nneg i32 %i.eq to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.et ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !105
  %i.ew = add i64 %i.ev, 1
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !105
  %i.ex = getelementptr inbounds nuw i8, ptr %.0252334.i.i, i64 8 ; 2 uses
  %.not309.i.i = icmp eq ptr %i.ex, %i.u
  br i1 %.not309.i.i, label %bb.ae, label %bb.ad, !llvm.loop !81

bb.ae:                                            ; preds = %bb.ad
  %i.ey = and i32 %.2.i.i, 255                    ; 5 uses
  %i.ez = and i32 %.2262.i.i, 255                 ; 3 uses
  %i.fa = xor i32 %.2.i.i, %.2262.i.i             ; 4 uses
  %i.fb = and i32 %i.fa, 255
  %i.fc = icmp eq i32 %i.fb, 0
  %i.fd = trunc nuw i8 %.1255.i.i to i1
  %or.cond321.i.i = select i1 %i.fc, i1 true, i1 %i.fd
  br i1 %or.cond321.i.i, label %.loopexit324.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not310337.i.i = icmp samesign ugt i32 %i.ey, %i.ez
  br i1 %.not310337.i.i, label %.lr.ph346.preheader.i.i, label %.lr.ph341.preheader.i.i

.lr.ph341.preheader.i.i:                          ; preds = %bb.af
  %i.fe = zext nneg i32 %i.ey to i64              ; 4 uses
  %i.ff = and i32 %.2262.i.i, 255
  %i.fg = zext nneg i32 %i.ff to i64              ; 2 uses
  %i.fh = add nuw nsw i64 %i.fg, 1
  %i.fi = sub nsw i64 %i.fh, %i.fe                ; 2 uses
  %i.fj = sub nsw i64 %i.fg, %i.fe
  %xtraiter = and i64 %i.fi, 3                    ; 3 uses
  %i.fk = icmp ult i64 %i.fj, 3
  br i1 %i.fk, label %.lr.ph341.i.i.epil.preheader, label %.lr.ph341.preheader.i.i.new

.lr.ph341.preheader.i.i.new:                      ; preds = %.lr.ph341.preheader.i.i
  %unroll_iter = and i64 %i.fi, -4
  br label %.lr.ph341.i.i

.lr.ph341.i.i:                                    ; preds = %.lr.ph341.i.i, %.lr.ph341.preheader.i.i.new
  %.0250339.i.i = phi i64 [ %i.fe, %.lr.ph341.preheader.i.i.new ], [ %i.ga, %.lr.ph341.i.i ] ; 5 uses
  %.0251338.i.i = phi i64 [ 0, %.lr.ph341.preheader.i.i.new ], [ %i.fz, %.lr.ph341.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph341.preheader.i.i.new ], [ %niter.next.3, %.lr.ph341.i.i ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0250339.i.i ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !105
  store i64 %.0251338.i.i, ptr %i.fl, align 8, !tbaa !105
  %i.fn = add i64 %i.fm, %.0251338.i.i            ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0250339.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !105
  store i64 %i.fn, ptr %i.fp, align 8, !tbaa !105
  %i.fr = add i64 %i.fq, %i.fn                    ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0250339.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !105
  store i64 %i.fr, ptr %i.ft, align 8, !tbaa !105
  %i.fv = add i64 %i.fu, %i.fr                    ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0250339.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !105
  store i64 %i.fv, ptr %i.fx, align 8, !tbaa !105
  %i.fz = add i64 %i.fy, %i.fv                    ; 2 uses
  %i.ga = add nuw nsw i64 %.0250339.i.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph346.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph341.i.i, !llvm.loop !82

.lr.ph346.preheader.i.i.loopexit.unr-lcssa:       ; preds = %.lr.ph341.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph346.preheader.i.i, label %.lr.ph341.i.i.epil.preheader

.lr.ph341.i.i.epil.preheader:                     ; preds = %.lr.ph346.preheader.i.i.loopexit.unr-lcssa, %.lr.ph341.preheader.i.i
  %.0250339.i.i.epil.init = phi i64 [ %i.fe, %.lr.ph341.preheader.i.i ], [ %i.ga, %.lr.ph346.preheader.i.i.loopexit.unr-lcssa ]
  %.0251338.i.i.epil.init = phi i64 [ 0, %.lr.ph341.preheader.i.i ], [ %i.fz, %.lr.ph346.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph341.i.i.epil

.lr.ph341.i.i.epil:                               ; preds = %.lr.ph341.i.i.epil, %.lr.ph341.i.i.epil.preheader
  %.0250339.i.i.epil = phi i64 [ %i.ge, %.lr.ph341.i.i.epil ], [ %.0250339.i.i.epil.init, %.lr.ph341.i.i.epil.preheader ] ; 2 uses
  %.0251338.i.i.epil = phi i64 [ %i.gd, %.lr.ph341.i.i.epil ], [ %.0251338.i.i.epil.init, %.lr.ph341.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph341.i.i.epil ], [ 0, %.lr.ph341.i.i.epil.preheader ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0250339.i.i.epil ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !105
  store i64 %.0251338.i.i.epil, ptr %i.gb, align 8, !tbaa !105
  %i.gd = add i64 %i.gc, %.0251338.i.i.epil
  %i.ge = add nuw nsw i64 %.0250339.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph346.preheader.i.i, label %.lr.ph341.i.i.epil, !llvm.loop !83

.lr.ph346.preheader.i.i:                          ; preds = %.lr.ph346.preheader.i.i.loopexit.unr-lcssa, %.lr.ph341.i.i.epil, %bb.af
  %i.gf = tail call ptr @kissat_malloc(ptr noundef nonnull %0, i64 noundef %i.af) #7 ; 3 uses
  br label %.lr.ph346.i.i

.lr.ph346.i.i:                                    ; preds = %.lr.ph346.i.i, %.lr.ph346.preheader.i.i
  %.0249344.i.i = phi ptr [ %i.gp, %.lr.ph346.i.i ], [ %i.ac, %.lr.ph346.preheader.i.i ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0249344.i.i, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !102
  %i.gi = and i32 %i.gh, 255
end_hunk_0
