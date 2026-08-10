inline.NumInlined: 770
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6Gluco210SimpSolver20gatherTouchedClausesEv:bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <4 x i32> %wide.load, ptr %i.fb, align 4, !tbaa !10
  store <4 x i32> %wide.load74, ptr %i.fc, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count41.i
  br i1 %cmp.n, label %_ZN6Gluco23vecIjED2Ev.exit.i, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph28.preheader.i, %middle.block
  %indvars.iv36.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph28.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %indvars.iv34.i.ph = phi i64 [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph28.preheader.i ], [ %i.ex, %middle.block ] ; 2 uses
  %xtraiter94 = and i64 %wide.trip.count41.i, 3   ; 2 uses
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph28.i.prol.loopexit, label %.lr.ph28.i.prol

.lr.ph28.i.prol:                                  ; preds = %.lr.ph28.i.preheader, %.lr.ph28.i.prol
  %indvars.iv36.i.prol = phi i64 [ %indvars.iv.next37.i.prol, %.lr.ph28.i.prol ], [ %indvars.iv36.i.ph, %.lr.ph28.i.preheader ] ; 2 uses
  %indvars.iv34.i.prol = phi i64 [ %indvars.iv.next35.i.prol, %.lr.ph28.i.prol ], [ %indvars.iv34.i.ph, %.lr.ph28.i.preheader ] ; 2 uses
  %prol.iter96 = phi i64 [ %prol.iter96.next, %.lr.ph28.i.prol ], [ 0, %.lr.ph28.i.preheader ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv36.i.prol
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !10
  %indvars.iv.next35.i.prol = add nuw nsw i64 %indvars.iv34.i.prol, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv34.i.prol
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !10
  %indvars.iv.next37.i.prol = add nuw nsw i64 %indvars.iv36.i.prol, 1 ; 2 uses
  %prol.iter96.next = add i64 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i64 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %.lr.ph28.i.prol.loopexit, label %.lr.ph28.i.prol, !llvm.loop !158

.lr.ph28.i.prol.loopexit:                         ; preds = %.lr.ph28.i.prol, %.lr.ph28.i.preheader
  %indvars.iv36.i.unr = phi i64 [ %indvars.iv36.i.ph, %.lr.ph28.i.preheader ], [ %indvars.iv.next37.i.prol, %.lr.ph28.i.prol ]
  %indvars.iv34.i.unr = phi i64 [ %indvars.iv34.i.ph, %.lr.ph28.i.preheader ], [ %indvars.iv.next35.i.prol, %.lr.ph28.i.prol ]
  %i.fh = sub nsw i64 %indvars.iv36.i.ph, %wide.trip.count41.i
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %_ZN6Gluco23vecIjED2Ev.exit.i, label %.lr.ph28.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i.3, %.lr.ph.i ], [ %indvars.iv29.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.de, i64 %indvars.iv29.i
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !10
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv.i
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !10
  %i.fm = getelementptr [4 x i8], ptr %i.de, i64 %indvars.iv29.i
  %i.fn = getelementptr i8, ptr %i.fm, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !10
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 %i.fo, ptr %i.fq, align 4, !tbaa !10
  %i.fr = getelementptr [4 x i8], ptr %i.de, i64 %indvars.iv29.i
  %i.fs = getelementptr i8, ptr %i.fr, i64 8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !10
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i32 %i.ft, ptr %i.fv, align 4, !tbaa !10
  %i.fw = getelementptr [4 x i8], ptr %i.de, i64 %indvars.iv29.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 12
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 %i.fy, ptr %i.ga, align 4, !tbaa !10
  %indvars.iv.next30.i.3 = add nsw i64 %indvars.iv29.i, 4
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader.i, label %.lr.ph.i, !llvm.loop !159

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.prol.loopexit, %.lr.ph28.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i.3, %.lr.ph28.i ], [ %indvars.iv36.i.unr, %.lr.ph28.i.prol.loopexit ] ; 5 uses
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i.3, %.lr.ph28.i ], [ %indvars.iv34.i.unr, %.lr.ph28.i.prol.loopexit ] ; 5 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv36.i
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !10
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv34.i
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !10
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv36.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !10
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv34.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !10
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv36.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !10
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv34.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i32 %i.gl, ptr %i.gn, align 4, !tbaa !10
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv36.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !10
  %indvars.iv.next35.i.3 = add nuw nsw i64 %indvars.iv34.i, 4
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv34.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !10
  %indvars.iv.next37.i.3 = add nuw nsw i64 %indvars.iv36.i, 4 ; 2 uses
  %exitcond42.not.i.3 = icmp eq i64 %indvars.iv.next37.i.3, %wide.trip.count41.i
  br i1 %exitcond42.not.i.3, label %_ZN6Gluco23vecIjED2Ev.exit.i, label %.lr.ph28.i, !llvm.loop !160

_ZN6Gluco23vecIjED2Ev.exit.i:                     ; preds = %.lr.ph28.i.prol.loopexit, %.lr.ph28.i, %middle.block, %.preheader.i
  store i32 0, ptr %i.f, align 8, !tbaa !110
  store i32 %i.dj, ptr %i.e, align 4, !tbaa !109
  store i32 0, ptr %i.g, align 8, !tbaa !74
  tail call void @free(ptr noundef nonnull %i.de) #24
  store ptr %.sroa.0.1.i, ptr %i.d, align 8, !tbaa !73
  store i32 %.sroa.11.0.i, ptr %i.g, align 8, !tbaa !74
  store i32 %.sroa.16.1.i, ptr %i.aa, align 4, !tbaa !122
  %.pre49 = load ptr, ptr %i.co, align 8, !tbaa !73
  %.pre50 = load ptr, ptr %i.z, align 8, !tbaa !76
  br label %_ZN6Gluco25QueueIjE6insertEj.exit

_ZN6Gluco25QueueIjE6insertEj.exit:                ; preds = %bb.m, %_ZN6Gluco23vecIjED2Ev.exit.i
  %i.gt = phi ptr [ %i.cw, %bb.m ], [ %.pre50, %_ZN6Gluco23vecIjED2Ev.exit.i ]
  %i.gu = phi ptr [ %i.ct, %bb.m ], [ %.pre49, %_ZN6Gluco23vecIjED2Ev.exit.i ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !10
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gx ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 4
  %i.ha = and i64 %i.gz, -4
  %i.hb = or disjoint i64 %i.ha, 2
  store i64 %i.hb, ptr %i.gy, align 4
  %.pre51 = load i32, ptr %i.cp, align 8, !tbaa !74
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph35, %_ZN6Gluco25QueueIjE6insertEj.exit
  %i.hc = phi i32 [ %i.cs, %.lr.ph35 ], [ %.pre51, %_ZN6Gluco25QueueIjE6insertEj.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv.next, %i.hd
  br i1 %i.he, label %.lr.ph35, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.r, %_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit
  %i.hf = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %indvars.iv44
  store i8 0, ptr %i.hg, align 1, !tbaa !77
  %.pre52 = load i32, ptr %i.t, align 8, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %._crit_edge
  %i.hh = phi i32 [ %i.bh, %bb.e ], [ %.pre52, %._crit_edge ] ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = icmp slt i64 %indvars.iv.next45, %i.hi
  br i1 %i.hj, label %bb.e, label %.preheader.loopexit, !llvm.loop !162

bb.t:                                             ; preds = %.lr.ph41, %bb.v
  %i.hk = phi i32 [ %i.az, %.lr.ph41 ], [ %i.ia, %bb.v ] ; 2 uses
  %i.hl = phi i32 [ %i.ba, %.lr.ph41 ], [ %i.ib, %bb.v ] ; 2 uses
  %i.hm = phi i32 [ %i.bb, %.lr.ph41 ], [ %i.ic, %bb.v ]
  %storemerge1040 = phi i32 [ 0, %.lr.ph41 ], [ %i.id, %bb.v ] ; 2 uses
  %i.hn = add nsw i32 %i.hl, %storemerge1040
  %i.ho = srem i32 %i.hn, %i.hk
  %i.hp = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.hq = sext i32 %i.ho to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !10
  %i.ht = load ptr, ptr %i.bg, align 8, !tbaa !76
  %i.hu = zext i32 %i.hs to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hu ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 4            ; 2 uses
  %i.hx = and i64 %i.hw, 3
  %i.hy = icmp eq i64 %i.hx, 2
  br i1 %i.hy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hz = and i64 %i.hw, -4
  store i64 %i.hz, ptr %i.hv, align 4
  %.pre56 = load i32, ptr %i.e, align 4, !tbaa !109
  %.pre57 = load i32, ptr %i.f, align 8, !tbaa !110
  %.pre58 = load i32, ptr %i.g, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ia = phi i32 [ %i.hk, %bb.t ], [ %.pre58, %bb.u ] ; 2 uses
  %i.ib = phi i32 [ %i.hl, %bb.t ], [ %.pre57, %bb.u ] ; 3 uses
  %i.ic = phi i32 [ %i.hm, %bb.t ], [ %.pre56, %bb.u ] ; 3 uses
  %i.id = add nuw nsw i32 %storemerge1040, 1      ; 2 uses
  %.not.i12 = icmp slt i32 %i.ic, %i.ib
  %i.ie = sub i32 %i.ic, %i.ib
  %i.if = select i1 %.not.i12, i32 %i.ia, i32 0
  %i.ig = add nsw i32 %i.ie, %i.if
  %i.ih = icmp slt i32 %i.id, %i.ig
  br i1 %i.ih, label %bb.t, label %._crit_edge42, !llvm.loop !163

._crit_edge42:                                    ; preds = %bb.v, %.preheader
  store i32 0, ptr %i.a, align 4, !tbaa !107
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %._crit_edge42
  ret void
}

declare void @_ZN6Gluco26Solver11cancelUntilEi(ptr noundef nonnull align 8 dereferenceable(1416), i32 noundef) local_unnamed_addr #2

declare void @_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj(ptr noundef nonnull align 8 dereferenceable(1416), i32, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6Gluco210SimpSolver24backwardSubsumptionCheckEb(ptr noundef nonnull align 8 dereferenceable(1684) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1636 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1428
  br label %.loopexit.outer

.loopexit.loopexit:                               ; preds = %.lr.ph127, %.thread99
  %.060.ph = phi i32 [ %.161125, %.lr.ph127 ], [ %.464, %.thread99 ]
  %.053.ph = phi i32 [ %.154126, %.lr.ph127 ], [ %.457, %.thread99 ]
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %.loopexit.loopexit, %bb.a
  %.060.ph164 = phi i32 [ %.060.ph, %.loopexit.loopexit ], [ 0, %bb.a ] ; 2 uses
  %.053.ph165 = phi i32 [ %.053.ph, %.loopexit.loopexit ], [ 0, %bb.a ] ; 2 uses
  %.050.ph = phi i32 [ %.151, %.loopexit.loopexit ], [ 0, %bb.a ]
  br label %.loopexit.outer166

.loopexit.outer166:                               ; preds = %.loopexit.outer, %_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit
  %.050.ph167 = phi i32 [ %.050.ph, %.loopexit.outer ], [ %.151, %_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit ] ; 4 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.outer166, %bb.g
  %i.p = load i32, ptr %i.b, align 4, !tbaa !109  ; 2 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !110  ; 4 uses
  %.not.i = icmp slt i32 %i.p, %i.q
  %i.r = sub i32 %i.p, %i.q
  %i.s = load i32, ptr %i.d, align 8              ; 4 uses
  %i.t = select i1 %.not.i, i32 %i.s, i32 0
  %i.u = add nsw i32 %i.t, %i.r                   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.w = load i32, ptr %i.e, align 8, !tbaa !108
  %i.x = load i32, ptr %i.f, align 8, !tbaa !97
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %.critedge, label %.thread104

.critedge:                                        ; preds = %.loopexit, %bb.b
  %i.z = load i8, ptr %i.g, align 8, !tbaa !112, !range !64, !noundef !65
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %2, label %bb.d

2:                                                ; preds = %.critedge
  %3 = load ptr, ptr %i.a, align 8, !tbaa !73     ; 3 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %_ZN6Gluco23vecIjE5clearEb.exit.i, label %_ZN6Gluco23vecIjE5clearEb.exit.i.thread

_ZN6Gluco23vecIjE5clearEb.exit.i.thread:          ; preds = %2
  store i32 0, ptr %i.d, align 8, !tbaa !74
  br label %4

_ZN6Gluco23vecIjE5clearEb.exit.i:                 ; preds = %2
  %.not.i1.i = icmp slt i32 %i.s, 1
  br i1 %.not.i1.i, label %4, label %bb.c

4:                                                ; preds = %_ZN6Gluco23vecIjE5clearEb.exit.i.thread, %_ZN6Gluco23vecIjE5clearEb.exit.i
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 1628 ; 2 uses
  %6 = load i32, ptr %5, align 4, !tbaa !122      ; 4 uses
  %.not.i.i.i = icmp slt i32 %6, 1
  br i1 %.not.i.i.i, label %7, label %_ZN6Gluco23vecIjE8capacityEi.exit.i.i

7:                                                ; preds = %4
  %8 = ashr i32 %6, 1
  %9 = and i32 %8, -2
  %10 = add nsw i32 %9, 2
  %11 = sub i32 2, %6
  %12 = and i32 %11, -2
  %13 = tail call noundef i32 @llvm.smax.i32(i32 %10, i32 %12)
  %14 = add nsw i32 %13, %6                       ; 2 uses
  store i32 %14, ptr %5, align 4, !tbaa !122
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %17 = tail call ptr @realloc(ptr noundef %3, i64 noundef %16) #27 ; 3 uses
  store ptr %17, ptr %i.a, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %_ZN6Gluco23vecIjE8capacityEi.exit.i.i

19:                                               ; preds = %7
  %20 = tail call ptr @__errno_location() #25
  %21 = load i32, ptr %20, align 4, !tbaa !10
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %23, label %_ZN6Gluco23vecIjE8capacityEi.exit.i.i

23:                                               ; preds = %19
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecIjE8capacityEi.exit.i.i:            ; preds = %19, %7, %4
  %24 = phi ptr [ null, %19 ], [ %17, %7 ], [ %3, %4 ]
  %25 = load i32, ptr %i.d, align 8, !tbaa !74    ; 3 uses
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6Gluco23vecIjE8capacityEi.exit.i.i
  %27 = sext i32 %25 to i64
  %28 = shl nsw i64 %27, 2
  %scevgep.i.i = getelementptr i8, ptr %24, i64 %28
  %29 = sub i32 0, %25
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 2
  %32 = add nuw nsw i64 %31, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %32, i1 false), !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN6Gluco23vecIjE8capacityEi.exit.i.i
  store i32 1, ptr %i.d, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %_ZN6Gluco23vecIjE5clearEb.exit.i, %._crit_edge.i.i
  store i32 0, ptr %i.b, align 4, !tbaa !109
  store i32 0, ptr %i.c, align 8, !tbaa !110
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !97
  store i32 %i.ab, ptr %i.e, align 8, !tbaa !108
  br label %.thread104

bb.d:                                             ; preds = %.critedge
  %i.ac = icmp eq i32 %i.u, 0
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !108 ; 3 uses
  %i.ae = load i32, ptr %i.f, align 8, !tbaa !97
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = add nsw i32 %i.ad, 1
  store i32 %i.ag, ptr %i.e, align 8, !tbaa !108
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.ai = sext i32 %i.ad to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ai
  %.sroa.040.0.copyload = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.ak = load i32, ptr %i.j, align 8, !tbaa !78
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %.sroa.040.0.copyload, ptr %i.ao, align 4, !tbaa !10
  %i.ap = load i32, ptr %i.j, align 8, !tbaa !78
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aq ; 3 uses
  %i.as = load i64, ptr %i.ar, align 4            ; 2 uses
  %i.at = lshr i64 %i.as, 32                      ; 5 uses
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %_ZN6Gluco26Clause15calcAbstractionEv.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 34359738368
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.at, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi159 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !10
  %wide.load160 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !10
  %i.az = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.ba = lshr <4 x i32> %wide.load160, splat (i32 1)
  %i.bb = and <4 x i32> %i.az, splat (i32 31)
  %i.bc = and <4 x i32> %i.ba, splat (i32 31)
  %i.bd = shl nuw <4 x i32> splat (i32 1), %i.bb
  %i.be = shl nuw <4 x i32> splat (i32 1), %i.bc
  %i.bf = or <4 x i32> %i.bd, %vec.phi            ; 2 uses
  %i.bg = or <4 x i32> %i.be, %vec.phi159         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bg, %i.bf
  %i.bi = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN6Gluco26Clause15calcAbstractionEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.bi, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.07.i = phi i32 [ %i.bn, %scalar.ph ], [ %.07.i.ph, %scalar.ph.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.bj, align 4, !tbaa !10
  %i.bk = lshr i32 %.sroa.0.0.copyload.i, 1
  %i.bl = and i32 %i.bk, 31
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = or i32 %i.bm, %.07.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.at
  br i1 %exitcond.not.i, label %_ZN6Gluco26Clause15calcAbstractionEv.exit, label %scalar.ph, !llvm.loop !165

_ZN6Gluco26Clause15calcAbstractionEv.exit:        ; preds = %scalar.ph, %middle.block, %bb.f
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bi, %middle.block ], [ %i.bn, %scalar.ph ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.at
  store i32 %.0.lcssa.i, ptr %i.bp, align 4, !tbaa !77
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !78
  tail call void @_ZN6Gluco25QueueIjE6insertEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.bq)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !110
  %.pre138 = load i32, ptr %i.d, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %_ZN6Gluco26Clause15calcAbstractionEv.exit, %bb.e, %bb.d
  %i.br = phi i32 [ %.pre138, %_ZN6Gluco26Clause15calcAbstractionEv.exit ], [ %i.s, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.bs = phi i32 [ %.pre, %_ZN6Gluco26Clause15calcAbstractionEv.exit ], [ %i.q, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !10 ; 2 uses
  %i.bx = add nsw i32 %i.bs, 1                    ; 2 uses
  %i.by = icmp eq i32 %i.bx, %i.br
  %spec.store.select.i = select i1 %i.by, i32 0, i32 %i.bx ; 3 uses
  store i32 %spec.store.select.i, ptr %i.c, align 8
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %i.ca = zext i32 %i.bw to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 4            ; 4 uses
  %i.cd = and i64 %i.cc, 3
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %bb.h, label %.loopexit, !llvm.loop !166

bb.h:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca ; 3 uses
  br i1 %1, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %i.k, align 8, !tbaa !100
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ch = add nsw i32 %.050.ph167, 1              ; 2 uses
  %i.ci = srem i32 %.050.ph167, 1000
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !109 ; 2 uses
  %.not.i80 = icmp slt i32 %i.ck, %spec.store.select.i
  %i.cl = sub i32 %i.ck, %spec.store.select.i
  %i.cm = select i1 %.not.i80, i32 %i.br, i32 0
  %i.cn = add nsw i32 %i.cl, %i.cm
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.cn, i32 noundef %.053.ph165, i32 noundef %.060.ph164) ; 0 uses
  %.pre139 = load i64, ptr %i.ce, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.cp = phi i64 [ %.pre139, %bb.k ], [ %i.cc, %bb.j ], [ %i.cc, %bb.i ], [ %i.cc, %bb.h ]
  %.151 = phi i32 [ %i.ch, %bb.k ], [ %i.ch, %bb.j ], [ %.050.ph167, %bb.i ], [ %.050.ph167, %bb.h ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 12 ; 6 uses
  %.sroa.027.0.copyload = load i32, ptr %i.cq, align 4, !tbaa !10
  %i.cr = ashr i32 %.sroa.027.0.copyload, 1       ; 4 uses
  %i.cs = lshr i64 %i.cp, 32                      ; 3 uses
  %i.ct = trunc nuw i64 %i.cs to i32
  %i.cu = icmp sgt i32 %i.ct, 1
  %.pre144.pre = load ptr, ptr %i.l, align 8, !tbaa !85 ; 6 uses
  br i1 %i.cu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %.phi.trans.insert = sext i32 %i.cr to i64
  %.phi.trans.insert140 = getelementptr inbounds [16 x i8], ptr %.pre144.pre, i64 %.phi.trans.insert
  %.phi.trans.insert141 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert140, i64 8
  %.pre142 = load i32, ptr %.phi.trans.insert141, align 8, !tbaa !74 ; 2 uses
  %i.cv = add nsw i64 %i.cs, -1                   ; 3 uses
  %xtraiter = and i64 %i.cv, 1
  %i.cw = icmp eq i64 %i.cs, 2
  br i1 %i.cw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cv, -2
  br label %bb.q

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre142, %.lr.ph ], [ %i.fe, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0122.epil.init = phi i32 [ %i.cr, %.lr.ph ], [ %spec.select109.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod179 = trunc i64 %i.cv to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.epil.init
  %.sroa.022.0.copyload.epil = load i32, ptr %i.cx, align 4, !tbaa !10
  %i.cy = ashr i32 %.sroa.022.0.copyload.epil, 1  ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [16 x i8], ptr %.pre144.pre, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !74
  %i.dd = icmp slt i32 %i.dc, %.epil.init
  %spec.select109.epil = select i1 %i.dd, i32 %i.cy, i32 %.0122.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.l
  %.0.lcssa = phi i32 [ %i.cr, %bb.l ], [ %spec.select109.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select109.epil, %.epil.preheader ] ; 2 uses
  %i.de = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.df = sext i32 %.0.lcssa to i64               ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !77
  %.not.i81 = icmp eq i8 %i.dh, 0
  br i1 %.not.i81, label %_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit, label %bb.m

end_hunk_0
begin_hunk_1_@_ZN6Gluco210SimpSolver24backwardSubsumptionCheckEb:bb.a

.lr.ph127.preheader:                              ; preds = %_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  br label %.lr.ph127

bb.q:                                             ; preds = %bb.q, %.lr.ph.new
  %i.en = phi i32 [ %.pre142, %.lr.ph.new ], [ %i.fe, %bb.q ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 3 uses
  %.0122 = phi i32 [ %i.cr, %.lr.ph.new ], [ %spec.select109.1, %bb.q ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %.sroa.022.0.copyload = load i32, ptr %i.eo, align 4, !tbaa !10
  %i.ep = ashr i32 %.sroa.022.0.copyload, 1       ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [16 x i8], ptr %.pre144.pre, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !74 ; 2 uses
  %i.eu = icmp slt i32 %i.et, %i.en
  %spec.select109 = select i1 %i.eu, i32 %i.ep, i32 %.0122
  %i.ev = tail call i32 @llvm.smin.i32(i32 %i.et, i32 %i.en) ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %.sroa.022.0.copyload.1 = load i32, ptr %i.ex, align 4, !tbaa !10
  %i.ey = ashr i32 %.sroa.022.0.copyload.1, 1     ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [16 x i8], ptr %.pre144.pre, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !74 ; 2 uses
  %i.fd = icmp slt i32 %i.fc, %i.ev
  %spec.select109.1 = select i1 %i.fd, i32 %i.ey, i32 %spec.select109 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fe = tail call i32 @llvm.smin.i32(i32 %i.fc, i32 %i.ev) ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.q, !llvm.loop !167

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %.thread99
  %.154126 = phi i32 [ %.457, %.thread99 ], [ %.053.ph165, %.lr.ph127.preheader ] ; 10 uses
  %.161125 = phi i32 [ %.464, %.thread99 ], [ %.060.ph164, %.lr.ph127.preheader ] ; 10 uses
  %.070124 = phi i32 [ %i.gt, %.thread99 ], [ 0, %.lr.ph127.preheader ] ; 10 uses
  %i.ff = load i64, ptr %i.ce, align 4            ; 2 uses
  %i.fg = and i64 %i.ff, 3
  %.not76 = icmp eq i64 %i.fg, 0
  br i1 %.not76, label %bb.r, label %.loopexit.loopexit

bb.r:                                             ; preds = %.lr.ph127
  %i.fh = sext i32 %.070124 to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !10 ; 4 uses
  %i.fk = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.fl = zext i32 %i.fj to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fl ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 4            ; 2 uses
  %i.fo = and i64 %i.fn, 3
  %.not77 = icmp ne i64 %i.fo, 0
  %.not78 = icmp eq i32 %i.fj, %i.bw
  %or.cond = or i1 %.not78, %.not77
  br i1 %or.cond, label %.thread99, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fp = load i32, ptr %i.o, align 4, !tbaa !60  ; 2 uses
  %i.fq = icmp eq i32 %i.fp, -1
  %i.fr = lshr i64 %i.fn, 32                      ; 5 uses
  %i.fs = trunc nuw i64 %i.fr to i32
  %i.ft = icmp sgt i32 %i.fp, %i.fs
  %or.cond112 = select i1 %i.fq, i1 true, i1 %i.ft
  br i1 %or.cond112, label %bb.t, label %.thread99

bb.t:                                             ; preds = %bb.s
  %i.fu = lshr i64 %i.ff, 32                      ; 4 uses
  %i.fv = icmp samesign ult i64 %i.fr, %i.fu
  br i1 %i.fv, label %.thread99, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.fu
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !77
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 12 ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fr
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !77
  %i.gb = xor i32 %i.ga, -1
  %i.gc = and i32 %i.fx, %i.gb
  %.not.i82 = icmp eq i32 %i.gc, 0
  br i1 %.not.i82, label %.preheader37.i, label %.thread99

.preheader37.i:                                   ; preds = %bb.u
  %.not3141.not.i = icmp eq i64 %i.fu, 0
  br i1 %.not3141.not.i, label %_ZNK6Gluco26Clause8subsumesERKS0_.exit.thread96, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader37.i, %.split.us.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %.split.us.i ], [ 0, %.preheader37.i ] ; 2 uses
  %.sroa.0.042.i = phi i32 [ %.us-phi.i, %.split.us.i ], [ -2, %.preheader37.i ]
  %.sroa.0.042.fr.i = freeze i32 %.sroa.0.042.i   ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv54.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !134 ; 4 uses
  %i.gf = icmp eq i32 %.sroa.0.042.fr.i, -2
  br i1 %i.gf, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.preheader.i, %bb.v
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84, %bb.v ], [ 0, %.preheader.i ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.i83
  %.sroa.03.0.copyload.us.i = load i32, ptr %i.gg, align 4, !tbaa !10
  %i.gh = icmp eq i32 %i.ge, %.sroa.03.0.copyload.us.i
  br i1 %i.gh, label %.split.us.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.us.i
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next.i84, %i.fr
  br i1 %exitcond.not.i85, label %.thread99, label %.lr.ph.split.us.i, !llvm.loop !168

bb.w:                                             ; preds = %bb.x
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %i.fr
  br i1 %exitcond53.not.i, label %.thread99, label %.lr.ph.split.i, !llvm.loop !168

.lr.ph.split.i:                                   ; preds = %.preheader.i, %bb.w
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.w ], [ 0, %.preheader.i ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv49.i
  %.sroa.03.0.copyload.i = load i32, ptr %i.gi, align 4, !tbaa !10 ; 2 uses
  %i.gj = icmp eq i32 %i.ge, %.sroa.03.0.copyload.i
  br i1 %i.gj, label %.split.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.gk = xor i32 %.sroa.03.0.copyload.i, %i.ge
  %i.gl = icmp eq i32 %i.gk, 1
  br i1 %i.gl, label %.split.us.i, label %bb.w

.split.us.i:                                      ; preds = %.lr.ph.split.us.i, %bb.x, %.lr.ph.split.i
  %.us-phi.i = phi i32 [ %i.ge, %bb.x ], [ -2, %.lr.ph.split.i ], [ %.sroa.0.042.fr.i, %.lr.ph.split.us.i ] ; 4 uses
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %i.fu
  br i1 %exitcond58.not.i, label %_ZNK6Gluco26Clause8subsumesERKS0_.exit, label %.preheader.i, !llvm.loop !169

_ZNK6Gluco26Clause8subsumesERKS0_.exit:           ; preds = %.split.us.i
  switch i32 %.us-phi.i, label %bb.y [
    i32 -2, label %_ZNK6Gluco26Clause8subsumesERKS0_.exit.thread96
    i32 -1, label %.thread99
  ]

_ZNK6Gluco26Clause8subsumesERKS0_.exit.thread96:  ; preds = %_ZNK6Gluco26Clause8subsumesERKS0_.exit, %.preheader37.i
  %i.gm = add nsw i32 %.154126, 1
  tail call void @_ZN6Gluco210SimpSolver12removeClauseEj(ptr noundef nonnull align 8 dereferenceable(1684) %0, i32 noundef %i.fj)
  br label %.thread99

bb.y:                                             ; preds = %_ZNK6Gluco26Clause8subsumesERKS0_.exit
  %i.gn = xor i32 %.us-phi.i, 1
  %i.go = tail call noundef zeroext i1 @_ZN6Gluco210SimpSolver16strengthenClauseEjNS_3LitE(ptr noundef nonnull align 8 dereferenceable(1684) %0, i32 noundef %i.fj, i32 %i.gn)
  br i1 %i.go, label %bb.z, label %.thread104

bb.z:                                             ; preds = %bb.y
  %i.gp = add nsw i32 %.161125, 1
  %i.gq = ashr i32 %.us-phi.i, 1
  %i.gr = icmp eq i32 %i.gq, %.0.lcssa
  %i.gs = sext i1 %i.gr to i32
  %spec.select = add nsw i32 %.070124, %i.gs
  br label %.thread99

.thread99:                                        ; preds = %bb.v, %bb.w, %_ZNK6Gluco26Clause8subsumesERKS0_.exit, %bb.s, %bb.t, %bb.u, %bb.z, %_ZNK6Gluco26Clause8subsumesERKS0_.exit.thread96, %bb.r
  %.373 = phi i32 [ %.070124, %bb.r ], [ %.070124, %bb.t ], [ %.070124, %bb.s ], [ %.070124, %_ZNK6Gluco26Clause8subsumesERKS0_.exit.thread96 ], [ %spec.select, %bb.z ], [ %.070124, %_ZNK6Gluco26Clause8subsumesERKS0_.exit ], [ %.070124, %bb.u ], [ %.070124, %bb.w ], [ %.070124, %bb.v ]
  %.464 = phi i32 [ %.161125, %bb.r ], [ %.161125, %bb.t ], [ %.161125, %bb.s ], [ %.161125, %_ZNK6Gluco26Clause8subsumesERKS0_.exit.thread96 ], [ %i.gp, %bb.z ], [ %.161125, %_ZNK6Gluco26Clause8subsumesERKS0_.exit ], [ %.161125, %bb.u ], [ %.161125, %bb.w ], [ %.161125, %bb.v ] ; 2 uses
  %.457 = phi i32 [ %.154126, %bb.r ], [ %.154126, %bb.t ], [ %.154126, %bb.s ], [ %i.gm, %_ZNK6Gluco26Clause8subsumesERKS0_.exit.thread96 ], [ %.154126, %bb.z ], [ %.154126, %_ZNK6Gluco26Clause8subsumesERKS0_.exit ], [ %.154126, %bb.u ], [ %.154126, %bb.w ], [ %.154126, %bb.v ] ; 2 uses
  %i.gt = add nsw i32 %.373, 1                    ; 2 uses
  %i.gu = load i32, ptr %i.em, align 8, !tbaa !74
  %i.gv = icmp slt i32 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph127, label %.loopexit.loopexit, !llvm.loop !170

.thread104:                                       ; preds = %bb.b, %bb.y, %bb.c
  %.6 = phi i1 [ false, %bb.y ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Gluco25QueueIjE5clearEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !73     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6Gluco23vecIjE5clearEb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !74
  br i1 %1, label %bb.b, label %_ZN6Gluco23vecIjE5clearEb.exit

bb.b:                                             ; preds = %.preheader.i
  tail call void @free(ptr noundef nonnull %i.a) #24
  store ptr null, ptr %0, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !122
  br label %_ZN6Gluco23vecIjE5clearEb.exit

_ZN6Gluco23vecIjE5clearEb.exit:                   ; preds = %bb.a, %.preheader.i, %bb.b
  %i.d = phi ptr [ null, %bb.a ], [ %i.a, %.preheader.i ], [ null, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !74
  %.not.i1 = icmp slt i32 %i.f, 1
  br i1 %.not.i1, label %bb.c, label %_ZN6Gluco23vecIjE6growToEi.exit

bb.c:                                             ; preds = %_ZN6Gluco23vecIjE5clearEb.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !122  ; 4 uses
  %.not.i.i = icmp slt i32 %i.h, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN6Gluco23vecIjE8capacityEi.exit.i

bb.d:                                             ; preds = %bb.c
  %2 = ashr i32 %i.h, 1
  %3 = and i32 %2, -2
  %4 = add nsw i32 %3, 2
  %5 = sub i32 2, %i.h
  %6 = and i32 %5, -2
  %7 = tail call noundef i32 @llvm.smax.i32(i32 %4, i32 %6)
  %i.i = add nsw i32 %7, %i.h                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !122
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call ptr @realloc(ptr noundef %i.d, i64 noundef %i.k) #27 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !73
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_ZN6Gluco23vecIjE8capacityEi.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__errno_location() #25
  %i.o = load i32, ptr %i.n, align 4, !tbaa !10
  %i.p = icmp eq i32 %i.o, 12
  br i1 %i.p, label %bb.f, label %_ZN6Gluco23vecIjE8capacityEi.exit.i

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecIjE8capacityEi.exit.i:              ; preds = %bb.e, %bb.d, %bb.c
  %i.q = phi ptr [ null, %bb.e ], [ %i.l, %bb.d ], [ %i.d, %bb.c ]
  %i.r = load i32, ptr %i.e, align 8, !tbaa !74   ; 3 uses
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN6Gluco23vecIjE8capacityEi.exit.i
  %i.t = sext i32 %i.r to i64
  %i.u = shl nsw i64 %i.t, 2
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.u
  %i.v = sub i32 0, %i.r
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.y, i1 false), !tbaa !10
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN6Gluco23vecIjE8capacityEi.exit.i
  store i32 1, ptr %i.e, align 8, !tbaa !74
  br label %_ZN6Gluco23vecIjE6growToEi.exit

_ZN6Gluco23vecIjE6growToEi.exit:                  ; preds = %_ZN6Gluco23vecIjE5clearEb.exit, %._crit_edge.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.z, align 4, !tbaa !109
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6Gluco210SimpSolver5asymmEij(ptr noundef nonnull align 8 dereferenceable(1684) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = load i64, ptr %i.d, align 4
  %i.f = and i64 %i.e, 3
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK6Gluco26Solver9satisfiedERKNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(1416) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.d) #24
  br i1 %i.g, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.j = load i32, ptr %i.i, align 8, !tbaa !97
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !84   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !90
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %._ZN6Gluco23vecIiE8capacityEi.exit_crit_edge.i

._ZN6Gluco23vecIiE8capacityEi.exit_crit_edge.i:   ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !83
  br label %_ZN6Gluco23vecIiE4pushERKi.exit

bb.d:                                             ; preds = %bb.c
  %i.p = ashr i32 %i.l, 1
  %i.q = and i32 %i.p, -2
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %i.s = add nuw nsw i32 %i.r, 2                  ; 2 uses
  %i.t = sub nsw i32 2147483647, %i.l
  %i.u = icmp samesign ugt i32 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.w = add nsw i32 %i.s, %i.l                   ; 2 uses
  store i32 %i.w, ptr %i.m, align 4, !tbaa !90
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 2
  %i.z = tail call ptr @realloc(ptr noundef %i.v, i64 noundef %i.y) #27 ; 3 uses
  store ptr %i.z, ptr %i.h, align 8, !tbaa !83
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.f, label %._ZN6Gluco23vecIiE4pushERKi.exit_crit_edge

._ZN6Gluco23vecIiE4pushERKi.exit_crit_edge:       ; preds = %bb.e
  %.pre = load i32, ptr %i.k, align 8, !tbaa !84
  br label %_ZN6Gluco23vecIiE4pushERKi.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecIiE4pushERKi.exit:                  ; preds = %._ZN6Gluco23vecIiE4pushERKi.exit_crit_edge, %._ZN6Gluco23vecIiE8capacityEi.exit_crit_edge.i
  %i.ab = phi i32 [ %i.l, %._ZN6Gluco23vecIiE8capacityEi.exit_crit_edge.i ], [ %.pre, %._ZN6Gluco23vecIiE4pushERKi.exit_crit_edge ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i, %._ZN6Gluco23vecIiE8capacityEi.exit_crit_edge.i ], [ %i.z, %._ZN6Gluco23vecIiE4pushERKi.exit_crit_edge ]
  %i.ad = add nsw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.k, align 8, !tbaa !84
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  store i32 %i.j, ptr %i.af, align 4, !tbaa !10
  %i.ag = load i64, ptr %i.d, align 4             ; 2 uses
  %i.ah = lshr i64 %i.ag, 32
  %i.ai = trunc nuw i64 %i.ah to i32
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6Gluco23vecIiE4pushERKi.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.g

._crit_edge:                                      ; preds = %.critedge, %_ZN6Gluco23vecIiE4pushERKi.exit
  %.sroa.010.0.lcssa = phi i32 [ -2, %_ZN6Gluco23vecIiE4pushERKi.exit ], [ %.sroa.010.1, %.critedge ]
  %i.am = tail call noundef i32 @_ZN6Gluco26Solver9propagateEv(ptr noundef nonnull align 8 dereferenceable(1416) %0) #24
  %.not24 = icmp eq i32 %i.am, -1
  tail call void @_ZN6Gluco26Solver11cancelUntilEi(ptr noundef nonnull align 8 dereferenceable(1416) %0, i32 noundef 0) #24
  br i1 %.not24, label %bb.k, label %bb.j

bb.g:                                             ; preds = %.lr.ph, %.critedge
  %i.an = phi i64 [ %i.ag, %.lr.ph ], [ %i.ay, %.critedge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.sroa.010.029 = phi i32 [ -2, %.lr.ph ], [ %.sroa.010.1, %.critedge ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %.sroa.04.0.copyload = load i32, ptr %i.ao, align 4, !tbaa !10 ; 5 uses
  %i.ap = ashr i32 %.sroa.04.0.copyload, 1        ; 2 uses
  %.not25 = icmp eq i32 %i.ap, %1
  br i1 %.not25, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !101
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  %i.at = trunc i32 %.sroa.04.0.copyload to i8
  %i.au = load i8, ptr %i.as, align 1, !tbaa !102
  %i.av = and i8 %i.at, 1
  %i.aw = xor i8 %i.au, %i.av
  %.not27 = icmp eq i8 %i.aw, 1
  br i1 %.not27, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = xor i32 %.sroa.04.0.copyload, 1
  tail call void @_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj(ptr noundef nonnull align 8 dereferenceable(1416) %0, i32 %i.ax, i32 noundef -1) #24
  %.pre31 = load i64, ptr %i.d, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.i
  %i.ay = phi i64 [ %.pre31, %bb.i ], [ %i.an, %bb.g ], [ %i.an, %bb.h ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %.sroa.010.029, %bb.i ], [ %.sroa.04.0.copyload, %bb.g ], [ %.sroa.04.0.copyload, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = ashr i64 %i.ay, 32
  %i.ba = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.g, label %._crit_edge, !llvm.loop !171

bb.j:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !172
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !172
  %i.be = tail call noundef zeroext i1 @_ZN6Gluco210SimpSolver16strengthenClauseEjNS_3LitE(ptr noundef nonnull align 8 dereferenceable(1684) %0, i32 noundef %2, i32 %.sroa.010.0.lcssa)
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.a, %bb.b
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.k ], [ false, %bb.j ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK6Gluco26Solver9satisfiedERKNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(1416), ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6Gluco210SimpSolver8asymmVarEi(ptr noundef nonnull align 8 dereferenceable(1684) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = sext i32 %1 to i64                       ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !77
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.h = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !74   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !73   ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !153, !nonnull !65, !align !95
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.p = phi i32 [ %i.j, %.lr.ph.i.i ], [ %i.aa, %bb.e ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Gluco215ClauseAllocator5relocERjRS0_:bb.a
  %i.cu = zext i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 %i.cx, ptr %i.cy, align 4
  %i.cz = load i32, ptr %1, align 4, !tbaa !10
  %i.da = load ptr, ptr %2, align 8, !tbaa !76
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db ; 2 uses
  %i.dd = load i64, ptr %i.d, align 4
  %i.de = and i64 %i.dd, 2147483648
  %i.df = load i64, ptr %i.dc, align 4
  %i.dg = and i64 %i.df, -2147483649
  %i.dh = or disjoint i64 %i.dg, %i.de
  store i64 %i.dh, ptr %i.dc, align 4
  br label %bb.k

bb.i:                                             ; preds = %_ZN6Gluco215ClauseAllocator5allocINS_6ClauseEEEjRKT_b.exit
  %i.di = and i64 %i.cf, 8
  %.not34 = icmp eq i64 %i.di, 0
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dj = lshr i64 %i.cf, 32                      ; 5 uses
  %i.dk = trunc nuw i64 %i.dj to i32
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i, label %_ZN6Gluco26Clause15calcAbstractionEv.exit

.lr.ph.i:                                         ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ce, i64 12 ; 2 uses
  %min.iters.check43 = icmp ult i64 %i.cf, 34359738368
  br i1 %min.iters.check43, label %scalar.ph42.preheader, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph.i
  %n.vec45 = and i64 %i.dj, 2147483640            ; 3 uses
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph44
  %index47 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body46 ] ; 2 uses
  %vec.phi48 = phi <4 x i32> [ zeroinitializer, %vector.ph44 ], [ %i.dv, %vector.body46 ]
  %vec.phi49 = phi <4 x i32> [ zeroinitializer, %vector.ph44 ], [ %i.dw, %vector.body46 ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index47 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load50 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !10
  %wide.load51 = load <4 x i32>, ptr %i.do, align 4, !tbaa !10
  %i.dp = lshr <4 x i32> %wide.load50, splat (i32 1)
  %i.dq = lshr <4 x i32> %wide.load51, splat (i32 1)
  %i.dr = and <4 x i32> %i.dp, splat (i32 31)
  %i.ds = and <4 x i32> %i.dq, splat (i32 31)
  %i.dt = shl nuw <4 x i32> splat (i32 1), %i.dr
  %i.du = shl nuw <4 x i32> splat (i32 1), %i.ds
  %i.dv = or <4 x i32> %i.dt, %vec.phi48          ; 2 uses
  %i.dw = or <4 x i32> %i.du, %vec.phi49          ; 2 uses
  %index.next52 = add nuw i64 %index47, 8         ; 2 uses
  %i.dx = icmp eq i64 %index.next52, %n.vec45
  br i1 %i.dx, label %middle.block53, label %vector.body46, !llvm.loop !209

middle.block53:                                   ; preds = %vector.body46
  %bin.rdx54 = or <4 x i32> %i.dw, %i.dv
  %i.dy = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx54) ; 2 uses
  %cmp.n55 = icmp eq i64 %i.dj, %n.vec45
  br i1 %cmp.n55, label %_ZN6Gluco26Clause15calcAbstractionEv.exit, label %scalar.ph42.preheader

scalar.ph42.preheader:                            ; preds = %.lr.ph.i, %middle.block53
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec45, %middle.block53 ]
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.dy, %middle.block53 ]
  br label %scalar.ph42

scalar.ph42:                                      ; preds = %scalar.ph42.preheader, %scalar.ph42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph42 ], [ %indvars.iv.i.ph, %scalar.ph42.preheader ] ; 2 uses
  %.07.i = phi i32 [ %i.ed, %scalar.ph42 ], [ %.07.i.ph, %scalar.ph42.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.dz, align 4, !tbaa !10
  %i.ea = lshr i32 %.sroa.0.0.copyload.i, 1
  %i.eb = and i32 %i.ea, 31
  %i.ec = shl nuw i32 1, %i.eb
  %i.ed = or i32 %i.ec, %.07.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dj
  br i1 %exitcond.not.i, label %_ZN6Gluco26Clause15calcAbstractionEv.exit, label %scalar.ph42, !llvm.loop !210

_ZN6Gluco26Clause15calcAbstractionEv.exit:        ; preds = %scalar.ph42, %middle.block53, %bb.j
  %.0.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.dy, %middle.block53 ], [ %i.ed, %scalar.ph42 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.dj
  store i32 %.0.lcssa.i, ptr %i.ef, align 4, !tbaa !77
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN6Gluco26Clause15calcAbstractionEv.exit, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Gluco210SimpSolver14garbageCollectEv(ptr noundef nonnull align 8 dereferenceable(1684) %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.Gluco2::ClauseAllocator", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !115  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !114  ; 2 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.not.i.not.i.i = icmp eq i32 %i.c, %i.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %1, i8 0, i64 20, i1 false)
  br i1 %.not.i.not.i.i, label %_ZN6Gluco215ClauseAllocatorC2Ej.exit, label %.preheader.i.preheader.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.preheader.i.i
  %i.h = icmp ult i32 %i.o, %i.f
  br i1 %i.h, label %.preheader.i.preheader.i.i, label %bb.c, !llvm.loop !211

.preheader.i.preheader.i.i:                       ; preds = %bb.a, %.preheader.i.i.i
  %i.i = phi i32 [ %i.o, %.preheader.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = lshr i32 %i.i, 3
  %i.l = add nuw i32 %i.j, %i.k
  %i.m = and i32 %i.l, -2
  %i.n = add i32 %i.i, 2
  %i.o = add i32 %i.n, %i.m                       ; 5 uses
  %.not6.i.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i.not.i.i, label %bb.b, label %.preheader.i.i.i, !llvm.loop !211

bb.b:                                             ; preds = %.preheader.i.preheader.i.i
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

bb.c:                                             ; preds = %.preheader.i.i.i
  store i32 %i.o, ptr %i.g, align 4, !tbaa !212
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 2
  %malloc.i.i = tail call ptr @malloc(i64 %i.q)   ; 2 uses
  %i.r = icmp eq ptr %malloc.i.i, null
  br i1 %i.r, label %bb.d, label %_ZN6Gluco2L8xreallocEPvm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr @__errno_location() #25
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10
  %i.u = icmp eq i32 %i.t, 12
  br i1 %i.u, label %bb.e, label %_ZN6Gluco2L8xreallocEPvm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco2L8xreallocEPvm.exit.i.i.i:              ; preds = %bb.d, %bb.c
  store ptr %malloc.i.i, ptr %1, align 8, !tbaa !76
  br label %_ZN6Gluco215ClauseAllocatorC2Ej.exit

_ZN6Gluco215ClauseAllocatorC2Ej.exit:             ; preds = %bb.a, %_ZN6Gluco2L8xreallocEPvm.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  tail call void @_ZN6Gluco210SimpSolver14cleanUpClausesEv(ptr noundef nonnull align 8 dereferenceable(1684) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !75, !range !64, !noundef !65
  store i8 %i.x, ptr %i.v, align 4, !tbaa !204
  call void @_ZN6Gluco210SimpSolver8relocAllERNS_15ClauseAllocatorE(ptr noundef nonnull align 8 dereferenceable(1684) %0, ptr noundef nonnull align 8 dereferenceable(21) %1)
  call void @_ZN6Gluco26Solver8relocAllERNS_15ClauseAllocatorE(ptr noundef nonnull align 8 dereferenceable(1416) %0, ptr noundef nonnull align 8 dereferenceable(21) %1) #24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i32, ptr %i.y, align 8, !tbaa !100
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6Gluco215ClauseAllocatorC2Ej.exit
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !115
  %i.ac = shl i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !115
  %i.af = shl i32 %i.ae, 2
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.ac, i32 noundef %i.af) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6Gluco215ClauseAllocatorC2Ej.exit
  %i.ah = load i8, ptr %i.v, align 4, !tbaa !204, !range !64, !noundef !65
  store i8 %i.ah, ptr %i.w, align 4, !tbaa !204
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN6Gluco215RegionAllocatorIjED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.ai) #24
  br label %_ZN6Gluco215RegionAllocatorIjED2Ev.exit

_ZN6Gluco215RegionAllocatorIjED2Ev.exit:          ; preds = %bb.h, %bb.g
  %i.aj = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load <2 x i32>, ptr %i.ak, align 8, !tbaa !10
  store <2 x i32> %i.al, ptr %i.b, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !114
  store i32 %i.an, ptr %i.d, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

declare void @_ZN6Gluco26Solver8relocAllERNS_15ClauseAllocatorE(ptr noundef nonnull align 8 dereferenceable(1416), ptr noundef nonnull align 8 dereferenceable(21)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Gluco210SimpSolver5resetEv(ptr noundef nonnull align 8 dereferenceable(1684) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN6Gluco26Solver5resetEv(ptr noundef nonnull align 8 dereferenceable(1416) %0) #24
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL8opt_grow, i64 48), align 8, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i32 %2, ptr %3, align 4, !tbaa !11
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1676
  store i32 0, ptr %4, align 4, !tbaa !107
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 1672
  store i32 0, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1452
  store i32 0, ptr %6, align 4, !tbaa !180
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1448
  store i32 0, ptr %7, align 8, !tbaa !172
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !73       ; 3 uses
  %.not.i.i = icmp eq ptr %9, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  br i1 %.not.i.i, label %_ZN6Gluco23vecIjE5clearEb.exit.i, label %_ZN6Gluco23vecIjE5clearEb.exit.i.thread

_ZN6Gluco23vecIjE5clearEb.exit.i.thread:          ; preds = %1
  store i32 0, ptr %.phi.trans.insert, align 8, !tbaa !74
  br label %11

_ZN6Gluco23vecIjE5clearEb.exit.i:                 ; preds = %1
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !74
  %10 = icmp slt i32 %.pre, 1
  br i1 %10, label %11, label %.lr.ph.i.i.a

11:                                               ; preds = %_ZN6Gluco23vecIjE5clearEb.exit.i.thread, %_ZN6Gluco23vecIjE5clearEb.exit.i
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 1628 ; 2 uses
  %14 = load i32, ptr %13, align 4, !tbaa !122    ; 4 uses
  %.not.i.i.i = icmp slt i32 %14, 1
  br i1 %.not.i.i.i, label %15, label %_ZN6Gluco23vecIjE8capacityEi.exit.i.i

15:                                               ; preds = %11
  %16 = ashr i32 %14, 1
  %17 = and i32 %16, -2
  %18 = add nsw i32 %17, 2
  %19 = sub i32 2, %14
  %20 = and i32 %19, -2
  %21 = tail call noundef i32 @llvm.smax.i32(i32 %18, i32 %20)
  %22 = add nsw i32 %21, %14                      ; 2 uses
  store i32 %22, ptr %13, align 4, !tbaa !122
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr @realloc(ptr noundef %9, i64 noundef %24) #27 ; 3 uses
  store ptr %25, ptr %8, align 8, !tbaa !73
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %_ZN6Gluco23vecIjE8capacityEi.exit.i.i

27:                                               ; preds = %15
  %28 = tail call ptr @__errno_location() #25
  %29 = load i32, ptr %28, align 4, !tbaa !10
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %31, label %_ZN6Gluco23vecIjE8capacityEi.exit.i.i

31:                                               ; preds = %27
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecIjE8capacityEi.exit.i.i:            ; preds = %27, %15, %11
  %32 = phi ptr [ null, %27 ], [ %25, %15 ], [ %9, %11 ]
  %33 = load i32, ptr %12, align 8, !tbaa !74     ; 3 uses
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6Gluco23vecIjE8capacityEi.exit.i.i
  %35 = sext i32 %33 to i64
  %36 = shl nsw i64 %35, 2
  %scevgep.i.i = getelementptr i8, ptr %32, i64 %36
  %37 = sub i32 0, %33
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 2
  %40 = add nuw nsw i64 %39, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %40, i1 false), !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN6Gluco23vecIjE8capacityEi.exit.i.i
  store i32 1, ptr %12, align 8, !tbaa !74
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %._crit_edge.i.i, %_ZN6Gluco23vecIjE5clearEb.exit.i
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1636
  store i32 0, ptr %i.a, align 4, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store i32 0, ptr %i.b, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 884
  store i8 1, ptr %i.d, align 4, !tbaa !75
  %i.e = tail call noundef i32 @_ZN6Gluco215RegionAllocatorIjE5allocEi(ptr noundef nonnull align 8 dereferenceable(21) %i.c, i32 noundef 5) ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.g = zext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 3 uses
  store i64 6442450952, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 -2, ptr %i.i, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 -2147483648, ptr %i.j, align 4, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store i32 %i.e, ptr %i.k, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i8 0, ptr %i.l, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !86   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i9.i, label %_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5clearEb.exit

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i.i.a, %_ZN6Gluco23vecIjED2Ev.exit.i12.i
  %.03.i.i = phi i32 [ %i.x, %_ZN6Gluco23vecIjED2Ev.exit.i12.i ], [ 0, %.lr.ph.i.i.a ]
  %i.q = load i32, ptr %i.n, align 8, !tbaa !86
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.n, align 8, !tbaa !86
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !85
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73   ; 2 uses
  %.not.i.i.i10.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i10.i, label %_ZN6Gluco23vecIjED2Ev.exit.i12.i, label %.preheader.i.i.i11.i

.preheader.i.i.i11.i:                             ; preds = %.lr.ph.i9.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !74
  tail call void @free(ptr noundef nonnull %i.v) #24
  br label %_ZN6Gluco23vecIjED2Ev.exit.i12.i

_ZN6Gluco23vecIjED2Ev.exit.i12.i:                 ; preds = %.preheader.i.i.i11.i, %.lr.ph.i9.i
  %i.x = add nuw nsw i32 %.03.i.i, 1              ; 2 uses
  %exitcond.not.i.i4 = icmp eq i32 %i.x, %i.o
  br i1 %exitcond.not.i.i4, label %_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5clearEb.exit, label %.lr.ph.i9.i, !llvm.loop !197

_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5clearEb.exit: ; preds = %_ZN6Gluco23vecIjED2Ev.exit.i12.i, %.lr.ph.i.i.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 0, ptr %i.y, align 8, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1544
  store i32 0, ptr %i.z, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store i32 0, ptr %i.aa, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1568
  store i32 0, ptr %i.ab, align 8, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store i32 0, ptr %i.ac, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1648
  store i32 0, ptr %i.ad, align 8, !tbaa !82
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 0, ptr %i.ae, align 8, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !84
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN6Gluco23vecINS_3LitEED2Ev.exit

.lr.ph.i:                                         ; preds = %_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5clearEb.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !83
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !83
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.a ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !10
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ao
  store i32 -1, ptr %i.ap, align 4, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = load i32, ptr %i.af, align 8, !tbaa !84
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next.i, %i.ar
  br i1 %i.as, label %bb.a, label %_ZN6Gluco23vecINS_3LitEED2Ev.exit, !llvm.loop !213

_ZN6Gluco23vecINS_3LitEED2Ev.exit:                ; preds = %bb.a, %_ZN6Gluco28OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5clearEb.exit
  store i32 0, ptr %i.af, align 8, !tbaa !84
  ret void
}

declare void @_ZN6Gluco26Solver5resetEv(ptr noundef nonnull align 8 dereferenceable(1416)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco26OptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !214
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !216
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !217
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.d, align 8, !tbaa !218
  %i.e = load atomic i8, ptr @_ZGVZN6Gluco26Option13getOptionListEvE7options acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN6Gluco26Option13getOptionListEv.exit, !prof !219

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6Gluco26Option13getOptionListEvE7options) #24
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN6Gluco26Option13getOptionListEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN6Gluco26Option13getOptionListEvE7options, i8 0, i64 16, i1 false)
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6Gluco23vecIPNS_6OptionEED2Ev, ptr nonnull @_ZZN6Gluco26Option13getOptionListEvE7options, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6Gluco26Option13getOptionListEvE7options) #24
  br label %_ZN6Gluco26Option13getOptionListEv.exit

_ZN6Gluco26Option13getOptionListEv.exit:          ; preds = %bb.a, %bb.b, %bb.c
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6Gluco26Option13getOptionListEvE7options, i64 8), align 8, !tbaa !220 ; 5 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6Gluco26Option13getOptionListEvE7options, i64 12), align 4, !tbaa !224
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %._ZN6Gluco23vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i

._ZN6Gluco23vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i: ; preds = %_ZN6Gluco26Option13getOptionListEv.exit
  %.pre.i = load ptr, ptr @_ZZN6Gluco26Option13getOptionListEvE7options, align 8, !tbaa !225
  br label %_ZN6Gluco23vecIPNS_6OptionEE4pushERKS2_.exit

bb.d:                                             ; preds = %_ZN6Gluco26Option13getOptionListEv.exit
  %i.l = ashr i32 %i.i, 1
  %i.m = and i32 %i.l, -2
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %i.o = add nuw nsw i32 %i.n, 2                  ; 2 uses
  %i.p = sub nsw i32 2147483647, %i.i
  %i.q = icmp samesign ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @_ZZN6Gluco26Option13getOptionListEvE7options, align 8, !tbaa !225
  %i.s = add nsw i32 %i.o, %i.i                   ; 2 uses
  store i32 %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6Gluco26Option13getOptionListEvE7options, i64 12), align 4, !tbaa !224
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = tail call ptr @realloc(ptr noundef %i.r, i64 noundef %i.u) #27 ; 3 uses
  store ptr %i.v, ptr @_ZZN6Gluco26Option13getOptionListEvE7options, align 8, !tbaa !225
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %._ZN6Gluco23vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge

._ZN6Gluco23vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge: ; preds = %bb.e
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6Gluco26Option13getOptionListEvE7options, i64 8), align 8, !tbaa !220
  br label %_ZN6Gluco23vecIPNS_6OptionEE4pushERKS2_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecIPNS_6OptionEE4pushERKS2_.exit:     ; preds = %._ZN6Gluco23vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge, %._ZN6Gluco23vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i
  %i.x = phi i32 [ %i.i, %._ZN6Gluco23vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i ], [ %.pre, %._ZN6Gluco23vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge ] ; 2 uses
  %i.y = phi ptr [ %.pre.i, %._ZN6Gluco23vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i ], [ %i.v, %._ZN6Gluco23vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge ]
  %i.z = add nsw i32 %i.x, 1
  store i32 %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6Gluco26Option13getOptionListEvE7options, i64 8), align 8, !tbaa !220
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  store ptr %0, ptr %i.ab, align 8, !tbaa !226
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Gluco210BoolOptionD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN6Gluco210BoolOption5parseEPKc(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
.lr.ph.i:
  %i.a = load i8, ptr %1, align 1, !tbaa !77
  %.not11.i = icmp eq i8 %i.a, 45
  br i1 %.not11.i, label %.lr.ph.i6, label %.critedge

.lr.ph.i6:                                        ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !77
  %.not11.i8.not.not = icmp eq i8 %i.c, 110
  br i1 %.not11.i8.not.not, label %.lr.ph.i6.1, label %_ZN6Gluco2L5matchIPKcEEbRT_S2_.exit13

.lr.ph.i6.1:                                      ; preds = %.lr.ph.i6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !77
  %.not11.i8.not.1.not = icmp eq i8 %i.e, 111
  br i1 %.not11.i8.not.1.not, label %.lr.ph.i6.2, label %_ZN6Gluco2L5matchIPKcEEbRT_S2_.exit13

.lr.ph.i6.2:                                      ; preds = %.lr.ph.i6.1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !77
  %.not11.i8.not.2.not = icmp ne i8 %i.g, 45      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %spec.select = zext i1 %.not11.i8.not.2.not to i8
end_hunk_2
