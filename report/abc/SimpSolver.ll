inline.NumInlined: 754
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5Gluco10SimpSolver20gatherTouchedClausesEv:bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <4 x i32> %wide.load, ptr %i.fc, align 4, !tbaa !10
  store <4 x i32> %wide.load76, ptr %i.fd, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count41.i
  br i1 %cmp.n, label %_ZN5Gluco3vecIjED2Ev.exit.i, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph28.preheader.i, %middle.block
  %indvars.iv36.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph28.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %indvars.iv34.i.ph = phi i64 [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph28.preheader.i ], [ %i.ey, %middle.block ] ; 2 uses
  %xtraiter96 = and i64 %wide.trip.count41.i, 3   ; 2 uses
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.lr.ph28.i.prol.loopexit, label %.lr.ph28.i.prol

.lr.ph28.i.prol:                                  ; preds = %.lr.ph28.i.preheader, %.lr.ph28.i.prol
  %indvars.iv36.i.prol = phi i64 [ %indvars.iv.next37.i.prol, %.lr.ph28.i.prol ], [ %indvars.iv36.i.ph, %.lr.ph28.i.preheader ] ; 2 uses
  %indvars.iv34.i.prol = phi i64 [ %indvars.iv.next35.i.prol, %.lr.ph28.i.prol ], [ %indvars.iv34.i.ph, %.lr.ph28.i.preheader ] ; 2 uses
  %prol.iter98 = phi i64 [ %prol.iter98.next, %.lr.ph28.i.prol ], [ 0, %.lr.ph28.i.preheader ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv36.i.prol
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !10
  %indvars.iv.next35.i.prol = add nuw nsw i64 %indvars.iv34.i.prol, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv34.i.prol
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !10
  %indvars.iv.next37.i.prol = add nuw nsw i64 %indvars.iv36.i.prol, 1 ; 2 uses
  %prol.iter98.next = add i64 %prol.iter98, 1     ; 2 uses
  %prol.iter98.cmp.not = icmp eq i64 %prol.iter98.next, %xtraiter96
  br i1 %prol.iter98.cmp.not, label %.lr.ph28.i.prol.loopexit, label %.lr.ph28.i.prol, !llvm.loop !151

.lr.ph28.i.prol.loopexit:                         ; preds = %.lr.ph28.i.prol, %.lr.ph28.i.preheader
  %indvars.iv36.i.unr = phi i64 [ %indvars.iv36.i.ph, %.lr.ph28.i.preheader ], [ %indvars.iv.next37.i.prol, %.lr.ph28.i.prol ]
  %indvars.iv34.i.unr = phi i64 [ %indvars.iv34.i.ph, %.lr.ph28.i.preheader ], [ %indvars.iv.next35.i.prol, %.lr.ph28.i.prol ]
  %i.fi = sub nsw i64 %indvars.iv36.i.ph, %wide.trip.count41.i
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %_ZN5Gluco3vecIjED2Ev.exit.i, label %.lr.ph28.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i.3, %.lr.ph.i ], [ %indvars.iv29.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.df, i64 %indvars.iv29.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !10
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv.i
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !10
  %i.fn = getelementptr [4 x i8], ptr %i.df, i64 %indvars.iv29.i
  %i.fo = getelementptr i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !10
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %i.fp, ptr %i.fr, align 4, !tbaa !10
  %i.fs = getelementptr [4 x i8], ptr %i.df, i64 %indvars.iv29.i
  %i.ft = getelementptr i8, ptr %i.fs, i64 8
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !10
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store i32 %i.fu, ptr %i.fw, align 4, !tbaa !10
  %i.fx = getelementptr [4 x i8], ptr %i.df, i64 %indvars.iv29.i
  %i.fy = getelementptr i8, ptr %i.fx, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !10
  %indvars.iv.next30.i.3 = add nsw i64 %indvars.iv29.i, 4
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader.i, label %.lr.ph.i, !llvm.loop !152

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.prol.loopexit, %.lr.ph28.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i.3, %.lr.ph28.i ], [ %indvars.iv36.i.unr, %.lr.ph28.i.prol.loopexit ] ; 5 uses
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i.3, %.lr.ph28.i ], [ %indvars.iv34.i.unr, %.lr.ph28.i.prol.loopexit ] ; 5 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv36.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !10
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv34.i
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !10
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv36.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !10
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv34.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 %i.gh, ptr %i.gj, align 4, !tbaa !10
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv36.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !10
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv34.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i32 %i.gm, ptr %i.go, align 4, !tbaa !10
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv36.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !10
  %indvars.iv.next35.i.3 = add nuw nsw i64 %indvars.iv34.i, 4
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1.i, i64 %indvars.iv34.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 %i.gr, ptr %i.gt, align 4, !tbaa !10
  %indvars.iv.next37.i.3 = add nuw nsw i64 %indvars.iv36.i, 4 ; 2 uses
  %exitcond42.not.i.3 = icmp eq i64 %indvars.iv.next37.i.3, %wide.trip.count41.i
  br i1 %exitcond42.not.i.3, label %_ZN5Gluco3vecIjED2Ev.exit.i, label %.lr.ph28.i, !llvm.loop !153

_ZN5Gluco3vecIjED2Ev.exit.i:                      ; preds = %.lr.ph28.i.prol.loopexit, %.lr.ph28.i, %middle.block, %.preheader.i
  store i32 0, ptr %i.f, align 8, !tbaa !102
  store i32 %i.dk, ptr %i.e, align 4, !tbaa !101
  store i32 0, ptr %i.g, align 8, !tbaa !67
  tail call void @free(ptr noundef nonnull %i.df) #24
  store ptr %.sroa.0.1.i, ptr %i.d, align 8, !tbaa !66
  store i32 %.sroa.11.0.i, ptr %i.g, align 8, !tbaa !67
  store i32 %.sroa.16.1.i, ptr %i.aa, align 4, !tbaa !115
  %.pre50 = load ptr, ptr %i.cp, align 8, !tbaa !66
  %.pre51 = load ptr, ptr %i.z, align 8, !tbaa !69
  br label %_ZN5Gluco5QueueIjE6insertEj.exit

_ZN5Gluco5QueueIjE6insertEj.exit:                 ; preds = %bb.m, %_ZN5Gluco3vecIjED2Ev.exit.i
  %i.gu = phi ptr [ %i.cx, %bb.m ], [ %.pre51, %_ZN5Gluco3vecIjED2Ev.exit.i ]
  %i.gv = phi ptr [ %i.cu, %bb.m ], [ %.pre50, %_ZN5Gluco3vecIjED2Ev.exit.i ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !10
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gy ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 4
  %i.hb = and i64 %i.ha, -4
  %i.hc = or disjoint i64 %i.hb, 2
  store i64 %i.hc, ptr %i.gz, align 4
  %.pre52 = load i32, ptr %i.cq, align 8, !tbaa !67
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph36, %_ZN5Gluco5QueueIjE6insertEj.exit
  %i.hd = phi i32 [ %i.ct, %.lr.ph36 ], [ %.pre52, %_ZN5Gluco5QueueIjE6insertEj.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp slt i64 %indvars.iv.next, %i.he
  br i1 %i.hf, label %.lr.ph36, label %._crit_edge, !llvm.loop !154

._crit_edge:                                      ; preds = %bb.r, %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit
  %i.hg = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %indvars.iv45
  store i8 0, ptr %i.hh, align 1, !tbaa !70
  %.pre53 = load i32, ptr %i.t, align 8, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %._crit_edge
  %i.hi = phi i32 [ %i.bh, %bb.e ], [ %.pre53, %._crit_edge ] ; 2 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next46, %i.hj
  br i1 %i.hk, label %bb.e, label %.preheader.loopexit, !llvm.loop !155

bb.t:                                             ; preds = %.lr.ph42, %bb.v
  %i.hl = phi i32 [ %i.az, %.lr.ph42 ], [ %i.ib, %bb.v ] ; 2 uses
  %i.hm = phi i32 [ %i.ba, %.lr.ph42 ], [ %i.ic, %bb.v ] ; 2 uses
  %i.hn = phi i32 [ %i.bb, %.lr.ph42 ], [ %i.id, %bb.v ]
  %storemerge1041 = phi i32 [ 0, %.lr.ph42 ], [ %i.ie, %bb.v ] ; 2 uses
  %i.ho = add nsw i32 %i.hm, %storemerge1041
  %i.hp = srem i32 %i.ho, %i.hl
  %i.hq = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.hr = sext i32 %i.hp to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !10
  %i.hu = load ptr, ptr %i.bg, align 8, !tbaa !69
  %i.hv = zext i32 %i.ht to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hv ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 4            ; 2 uses
  %i.hy = and i64 %i.hx, 3
  %i.hz = icmp eq i64 %i.hy, 2
  br i1 %i.hz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ia = and i64 %i.hx, -4
  store i64 %i.ia, ptr %i.hw, align 4
  %.pre57 = load i32, ptr %i.e, align 4, !tbaa !101
  %.pre58 = load i32, ptr %i.f, align 8, !tbaa !102
  %.pre59 = load i32, ptr %i.g, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ib = phi i32 [ %i.hl, %bb.t ], [ %.pre59, %bb.u ] ; 2 uses
  %i.ic = phi i32 [ %i.hm, %bb.t ], [ %.pre58, %bb.u ] ; 3 uses
  %i.id = phi i32 [ %i.hn, %bb.t ], [ %.pre57, %bb.u ] ; 3 uses
  %i.ie = add nuw nsw i32 %storemerge1041, 1      ; 2 uses
  %.not.i13 = icmp slt i32 %i.id, %i.ic
  %i.if = sub i32 %i.id, %i.ic
  %i.ig = select i1 %.not.i13, i32 %i.ib, i32 0
  %i.ih = add nsw i32 %i.if, %i.ig
  %i.ii = icmp slt i32 %i.ie, %i.ih
  br i1 %i.ii, label %bb.t, label %._crit_edge43, !llvm.loop !156

._crit_edge43:                                    ; preds = %bb.v, %.preheader
  store i32 0, ptr %i.a, align 4, !tbaa !99
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %._crit_edge43
  ret void
}

declare void @_ZN5Gluco6Solver11cancelUntilEi(ptr noundef nonnull align 8 dereferenceable(1216), i32 noundef) local_unnamed_addr #2

declare void @_ZN5Gluco6Solver16uncheckedEnqueueENS_3LitEj(ptr noundef nonnull align 8 dereferenceable(1216), i32, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5Gluco10SimpSolver24backwardSubsumptionCheckEb(ptr noundef nonnull align 8 dereferenceable(1484) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1436 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1228
  br label %.loopexit.outer

.loopexit.loopexit:                               ; preds = %.lr.ph127, %.thread99
  %.060.ph = phi i32 [ %.161125, %.lr.ph127 ], [ %.464, %.thread99 ]
  %.053.ph = phi i32 [ %.154126, %.lr.ph127 ], [ %.457, %.thread99 ]
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %.loopexit.loopexit, %bb.a
  %.060.ph165 = phi i32 [ %.060.ph, %.loopexit.loopexit ], [ 0, %bb.a ] ; 2 uses
  %.053.ph166 = phi i32 [ %.053.ph, %.loopexit.loopexit ], [ 0, %bb.a ] ; 2 uses
  %.050.ph = phi i32 [ %.151, %.loopexit.loopexit ], [ 0, %bb.a ]
  br label %.loopexit.outer167

.loopexit.outer167:                               ; preds = %.loopexit.outer, %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit
  %.050.ph168 = phi i32 [ %.050.ph, %.loopexit.outer ], [ %.151, %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit ] ; 4 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.outer167, %bb.g
  %i.p = load i32, ptr %i.b, align 4, !tbaa !101  ; 2 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !102  ; 4 uses
  %.not.i = icmp slt i32 %i.p, %i.q
  %i.r = sub i32 %i.p, %i.q
  %i.s = load i32, ptr %i.d, align 8              ; 3 uses
  %i.t = select i1 %.not.i, i32 %i.s, i32 0
  %i.u = add nsw i32 %i.t, %i.r                   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.w = load i32, ptr %i.e, align 8, !tbaa !100
  %i.x = load i32, ptr %i.f, align 8, !tbaa !89
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %.critedge, label %.thread104

.critedge:                                        ; preds = %.loopexit, %bb.b
  %i.z = load i8, ptr %i.g, align 8, !tbaa !104, !range !57, !noundef !58
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  tail call void @_ZN5Gluco5QueueIjE5clearEb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i1 noundef zeroext false)
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !89
  store i32 %i.ab, ptr %i.e, align 8, !tbaa !100
  br label %.thread104

bb.d:                                             ; preds = %.critedge
  %i.ac = icmp eq i32 %i.u, 0
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !100 ; 3 uses
  %i.ae = load i32, ptr %i.f, align 8, !tbaa !89
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = add nsw i32 %i.ad, 1
  store i32 %i.ag, ptr %i.e, align 8, !tbaa !100
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.ai = sext i32 %i.ad to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ai
  %.sroa.040.0.copyload = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.ak = load i32, ptr %i.j, align 8, !tbaa !71
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !69  ; 2 uses
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %.sroa.040.0.copyload, ptr %i.ao, align 4, !tbaa !10
  %i.ap = load i32, ptr %i.j, align 8, !tbaa !71
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aq ; 3 uses
  %i.as = load i64, ptr %i.ar, align 4            ; 2 uses
  %i.at = lshr i64 %i.as, 32                      ; 5 uses
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %_ZN5Gluco6Clause15calcAbstractionEv.exit

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
  %vec.phi160 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !10
  %wide.load161 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !10
  %i.az = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.ba = lshr <4 x i32> %wide.load161, splat (i32 1)
  %i.bb = and <4 x i32> %i.az, splat (i32 31)
  %i.bc = and <4 x i32> %i.ba, splat (i32 31)
  %i.bd = shl nuw <4 x i32> splat (i32 1), %i.bb
  %i.be = shl nuw <4 x i32> splat (i32 1), %i.bc
  %i.bf = or <4 x i32> %i.bd, %vec.phi            ; 2 uses
  %i.bg = or <4 x i32> %i.be, %vec.phi160         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bg, %i.bf
  %i.bi = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN5Gluco6Clause15calcAbstractionEv.exit, label %scalar.ph.preheader

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
  br i1 %exitcond.not.i, label %_ZN5Gluco6Clause15calcAbstractionEv.exit, label %scalar.ph, !llvm.loop !158

_ZN5Gluco6Clause15calcAbstractionEv.exit:         ; preds = %scalar.ph, %middle.block, %bb.f
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bi, %middle.block ], [ %i.bn, %scalar.ph ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.at
  store i32 %.0.lcssa.i, ptr %i.bp, align 4, !tbaa !70
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !71
  tail call void @_ZN5Gluco5QueueIjE6insertEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.bq)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !102
  %.pre138 = load i32, ptr %i.d, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Gluco6Clause15calcAbstractionEv.exit, %bb.e, %bb.d
  %i.br = phi i32 [ %.pre138, %_ZN5Gluco6Clause15calcAbstractionEv.exit ], [ %i.s, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.bs = phi i32 [ %.pre, %_ZN5Gluco6Clause15calcAbstractionEv.exit ], [ %i.q, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !10 ; 2 uses
  %i.bx = add nsw i32 %i.bs, 1                    ; 2 uses
  %i.by = icmp eq i32 %i.bx, %i.br
  %spec.store.select.i = select i1 %i.by, i32 0, i32 %i.bx ; 3 uses
  store i32 %spec.store.select.i, ptr %i.c, align 8
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !69  ; 2 uses
  %i.ca = zext i32 %i.bw to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 4            ; 4 uses
  %i.cd = and i64 %i.cc, 3
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %bb.h, label %.loopexit, !llvm.loop !159

bb.h:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca ; 3 uses
  br i1 %1, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %i.k, align 8, !tbaa !92
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ch = add nsw i32 %.050.ph168, 1              ; 2 uses
  %i.ci = srem i32 %.050.ph168, 1000
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !101 ; 2 uses
  %.not.i80 = icmp slt i32 %i.ck, %spec.store.select.i
  %i.cl = sub i32 %i.ck, %spec.store.select.i
  %i.cm = select i1 %.not.i80, i32 %i.br, i32 0
  %i.cn = add nsw i32 %i.cl, %i.cm
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.cn, i32 noundef %.053.ph166, i32 noundef %.060.ph165) ; 0 uses
  %.pre139 = load i64, ptr %i.ce, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.cp = phi i64 [ %.pre139, %bb.k ], [ %i.cc, %bb.j ], [ %i.cc, %bb.i ], [ %i.cc, %bb.h ]
  %.151 = phi i32 [ %i.ch, %bb.k ], [ %i.ch, %bb.j ], [ %.050.ph168, %bb.i ], [ %.050.ph168, %bb.h ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 12 ; 6 uses
  %.sroa.027.0.copyload = load i32, ptr %i.cq, align 4, !tbaa !10
  %i.cr = ashr i32 %.sroa.027.0.copyload, 1       ; 4 uses
  %i.cs = lshr i64 %i.cp, 32                      ; 3 uses
  %i.ct = trunc nuw i64 %i.cs to i32
  %i.cu = icmp sgt i32 %i.ct, 1
  %.pre144.pre = load ptr, ptr %i.l, align 8, !tbaa !77 ; 6 uses
  br i1 %i.cu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %.phi.trans.insert = sext i32 %i.cr to i64
  %.phi.trans.insert140 = getelementptr inbounds [16 x i8], ptr %.pre144.pre, i64 %.phi.trans.insert
  %.phi.trans.insert141 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert140, i64 8
  %.pre142 = load i32, ptr %.phi.trans.insert141, align 8, !tbaa !67 ; 2 uses
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
  %.epil.init = phi i32 [ %.pre142, %.lr.ph ], [ %i.ff, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0122.epil.init = phi i32 [ %i.cr, %.lr.ph ], [ %spec.select109.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod180 = trunc i64 %i.cv to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.epil.init
  %.sroa.022.0.copyload.epil = load i32, ptr %i.cx, align 4, !tbaa !10
  %i.cy = ashr i32 %.sroa.022.0.copyload.epil, 1  ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [16 x i8], ptr %.pre144.pre, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !67
  %i.dd = icmp slt i32 %i.dc, %.epil.init
  %spec.select109.epil = select i1 %i.dd, i32 %i.cy, i32 %.0122.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.l
  %.0.lcssa = phi i32 [ %i.cr, %bb.l ], [ %spec.select109.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select109.epil, %.epil.preheader ] ; 2 uses
  %i.de = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.df = sext i32 %.0.lcssa to i64               ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !70
  %.not.i81 = icmp eq i8 %i.dh, 0
  br i1 %.not.i81, label %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit, label %bb.m

end_hunk_0
begin_hunk_1_@_ZN5Gluco10SimpSolver24backwardSubsumptionCheckEb:bb.a

.lr.ph127.preheader:                              ; preds = %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  br label %.lr.ph127

bb.q:                                             ; preds = %bb.q, %.lr.ph.new
  %i.eo = phi i32 [ %.pre142, %.lr.ph.new ], [ %i.ff, %bb.q ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 3 uses
  %.0122 = phi i32 [ %i.cr, %.lr.ph.new ], [ %spec.select109.1, %bb.q ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %.sroa.022.0.copyload = load i32, ptr %i.ep, align 4, !tbaa !10
  %i.eq = ashr i32 %.sroa.022.0.copyload, 1       ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [16 x i8], ptr %.pre144.pre, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !67 ; 2 uses
  %i.ev = icmp slt i32 %i.eu, %i.eo
  %spec.select109 = select i1 %i.ev, i32 %i.eq, i32 %.0122
  %i.ew = tail call i32 @llvm.smin.i32(i32 %i.eu, i32 %i.eo) ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.022.0.copyload.1 = load i32, ptr %i.ey, align 4, !tbaa !10
  %i.ez = ashr i32 %.sroa.022.0.copyload.1, 1     ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [16 x i8], ptr %.pre144.pre, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !67 ; 2 uses
  %i.fe = icmp slt i32 %i.fd, %i.ew
  %spec.select109.1 = select i1 %i.fe, i32 %i.ez, i32 %spec.select109 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ff = tail call i32 @llvm.smin.i32(i32 %i.fd, i32 %i.ew) ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.q, !llvm.loop !160

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %.thread99
  %.154126 = phi i32 [ %.457, %.thread99 ], [ %.053.ph166, %.lr.ph127.preheader ] ; 10 uses
  %.161125 = phi i32 [ %.464, %.thread99 ], [ %.060.ph165, %.lr.ph127.preheader ] ; 10 uses
  %.070124 = phi i32 [ %i.gu, %.thread99 ], [ 0, %.lr.ph127.preheader ] ; 10 uses
  %i.fg = load i64, ptr %i.ce, align 4            ; 2 uses
  %i.fh = and i64 %i.fg, 3
  %.not76 = icmp eq i64 %i.fh, 0
  br i1 %.not76, label %bb.r, label %.loopexit.loopexit

bb.r:                                             ; preds = %.lr.ph127
  %i.fi = sext i32 %.070124 to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !10 ; 4 uses
  %i.fl = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fm ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 4            ; 2 uses
  %i.fp = and i64 %i.fo, 3
  %.not77 = icmp ne i64 %i.fp, 0
  %.not78 = icmp eq i32 %i.fk, %i.bw
  %or.cond = or i1 %.not78, %.not77
  br i1 %or.cond, label %.thread99, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fq = load i32, ptr %i.o, align 4, !tbaa !53  ; 2 uses
  %i.fr = icmp eq i32 %i.fq, -1
  %i.fs = lshr i64 %i.fo, 32                      ; 5 uses
  %i.ft = trunc nuw i64 %i.fs to i32
  %i.fu = icmp sgt i32 %i.fq, %i.ft
  %or.cond112 = select i1 %i.fr, i1 true, i1 %i.fu
  br i1 %or.cond112, label %bb.t, label %.thread99

bb.t:                                             ; preds = %bb.s
  %i.fv = lshr i64 %i.fg, 32                      ; 4 uses
  %i.fw = icmp samesign ult i64 %i.fs, %i.fv
  br i1 %i.fw, label %.thread99, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.fv
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !70
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 12 ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fs
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !70
  %i.gc = xor i32 %i.gb, -1
  %i.gd = and i32 %i.fy, %i.gc
  %.not.i82 = icmp eq i32 %i.gd, 0
  br i1 %.not.i82, label %.preheader37.i, label %.thread99

.preheader37.i:                                   ; preds = %bb.u
  %.not3141.not.i = icmp eq i64 %i.fv, 0
  br i1 %.not3141.not.i, label %_ZNK5Gluco6Clause8subsumesERKS0_.exit.thread96, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader37.i, %.split.us.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %.split.us.i ], [ 0, %.preheader37.i ] ; 2 uses
  %.sroa.0.042.i = phi i32 [ %.us-phi.i, %.split.us.i ], [ -2, %.preheader37.i ]
  %.sroa.0.042.fr.i = freeze i32 %.sroa.0.042.i   ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv54.i
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !127 ; 4 uses
  %i.gg = icmp eq i32 %.sroa.0.042.fr.i, -2
  br i1 %i.gg, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.preheader.i, %bb.v
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84, %bb.v ], [ 0, %.preheader.i ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.i83
  %.sroa.03.0.copyload.us.i = load i32, ptr %i.gh, align 4, !tbaa !10
  %i.gi = icmp eq i32 %i.gf, %.sroa.03.0.copyload.us.i
  br i1 %i.gi, label %.split.us.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.us.i
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next.i84, %i.fs
  br i1 %exitcond.not.i85, label %.thread99, label %.lr.ph.split.us.i, !llvm.loop !161

bb.w:                                             ; preds = %bb.x
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %i.fs
  br i1 %exitcond53.not.i, label %.thread99, label %.lr.ph.split.i, !llvm.loop !161

.lr.ph.split.i:                                   ; preds = %.preheader.i, %bb.w
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.w ], [ 0, %.preheader.i ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv49.i
  %.sroa.03.0.copyload.i = load i32, ptr %i.gj, align 4, !tbaa !10 ; 2 uses
  %i.gk = icmp eq i32 %i.gf, %.sroa.03.0.copyload.i
  br i1 %i.gk, label %.split.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.gl = xor i32 %.sroa.03.0.copyload.i, %i.gf
  %i.gm = icmp eq i32 %i.gl, 1
  br i1 %i.gm, label %.split.us.i, label %bb.w

.split.us.i:                                      ; preds = %.lr.ph.split.us.i, %bb.x, %.lr.ph.split.i
  %.us-phi.i = phi i32 [ %i.gf, %bb.x ], [ -2, %.lr.ph.split.i ], [ %.sroa.0.042.fr.i, %.lr.ph.split.us.i ] ; 4 uses
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %i.fv
  br i1 %exitcond58.not.i, label %_ZNK5Gluco6Clause8subsumesERKS0_.exit, label %.preheader.i, !llvm.loop !162

_ZNK5Gluco6Clause8subsumesERKS0_.exit:            ; preds = %.split.us.i
  switch i32 %.us-phi.i, label %bb.y [
    i32 -2, label %_ZNK5Gluco6Clause8subsumesERKS0_.exit.thread96
    i32 -1, label %.thread99
  ]

_ZNK5Gluco6Clause8subsumesERKS0_.exit.thread96:   ; preds = %_ZNK5Gluco6Clause8subsumesERKS0_.exit, %.preheader37.i
  %i.gn = add nsw i32 %.154126, 1
  tail call void @_ZN5Gluco10SimpSolver12removeClauseEj(ptr noundef nonnull align 8 dereferenceable(1484) %0, i32 noundef %i.fk)
  br label %.thread99

bb.y:                                             ; preds = %_ZNK5Gluco6Clause8subsumesERKS0_.exit
  %i.go = xor i32 %.us-phi.i, 1
  %i.gp = tail call noundef zeroext i1 @_ZN5Gluco10SimpSolver16strengthenClauseEjNS_3LitE(ptr noundef nonnull align 8 dereferenceable(1484) %0, i32 noundef %i.fk, i32 %i.go)
  br i1 %i.gp, label %bb.z, label %.thread104

bb.z:                                             ; preds = %bb.y
  %i.gq = add nsw i32 %.161125, 1
  %i.gr = ashr i32 %.us-phi.i, 1
  %i.gs = icmp eq i32 %i.gr, %.0.lcssa
  %i.gt = sext i1 %i.gs to i32
  %spec.select = add nsw i32 %.070124, %i.gt
  br label %.thread99

.thread99:                                        ; preds = %bb.v, %bb.w, %_ZNK5Gluco6Clause8subsumesERKS0_.exit, %bb.s, %bb.t, %bb.u, %bb.z, %_ZNK5Gluco6Clause8subsumesERKS0_.exit.thread96, %bb.r
  %.373 = phi i32 [ %.070124, %bb.r ], [ %.070124, %bb.t ], [ %.070124, %bb.s ], [ %.070124, %_ZNK5Gluco6Clause8subsumesERKS0_.exit.thread96 ], [ %spec.select, %bb.z ], [ %.070124, %_ZNK5Gluco6Clause8subsumesERKS0_.exit ], [ %.070124, %bb.u ], [ %.070124, %bb.w ], [ %.070124, %bb.v ]
  %.464 = phi i32 [ %.161125, %bb.r ], [ %.161125, %bb.t ], [ %.161125, %bb.s ], [ %.161125, %_ZNK5Gluco6Clause8subsumesERKS0_.exit.thread96 ], [ %i.gq, %bb.z ], [ %.161125, %_ZNK5Gluco6Clause8subsumesERKS0_.exit ], [ %.161125, %bb.u ], [ %.161125, %bb.w ], [ %.161125, %bb.v ] ; 2 uses
  %.457 = phi i32 [ %.154126, %bb.r ], [ %.154126, %bb.t ], [ %.154126, %bb.s ], [ %i.gn, %_ZNK5Gluco6Clause8subsumesERKS0_.exit.thread96 ], [ %.154126, %bb.z ], [ %.154126, %_ZNK5Gluco6Clause8subsumesERKS0_.exit ], [ %.154126, %bb.u ], [ %.154126, %bb.w ], [ %.154126, %bb.v ] ; 2 uses
  %i.gu = add nsw i32 %.373, 1                    ; 2 uses
  %i.gv = load i32, ptr %i.en, align 8, !tbaa !67
  %i.gw = icmp slt i32 %i.gu, %i.gv
  br i1 %i.gw, label %.lr.ph127, label %.loopexit.loopexit, !llvm.loop !163

.thread104:                                       ; preds = %bb.b, %bb.y, %bb.c
  %.6 = phi i1 [ false, %bb.y ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Gluco5QueueIjE5clearEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5Gluco3vecIjE5clearEb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !67
  br i1 %1, label %bb.b, label %_ZN5Gluco3vecIjE5clearEb.exit

bb.b:                                             ; preds = %.preheader.i
  tail call void @free(ptr noundef nonnull %i.a) #24
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !115
  br label %_ZN5Gluco3vecIjE5clearEb.exit

_ZN5Gluco3vecIjE5clearEb.exit:                    ; preds = %bb.a, %.preheader.i, %bb.b
  %i.d = phi ptr [ null, %bb.a ], [ %i.a, %.preheader.i ], [ null, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !67
  %.not.i1 = icmp slt i32 %i.f, 1
  br i1 %.not.i1, label %bb.c, label %_ZN5Gluco3vecIjE6growToEi.exit

bb.c:                                             ; preds = %_ZN5Gluco3vecIjE5clearEb.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !115  ; 4 uses
  %.not.i.i = icmp slt i32 %i.h, 1
  br i1 %.not.i.i, label %2, label %_ZN5Gluco3vecIjE8capacityEi.exit.i

2:                                                ; preds = %bb.c
  %3 = sub i32 2, %i.h
  %4 = and i32 %3, -2
  %5 = ashr i32 %i.h, 1
  %6 = and i32 %5, -2
  %7 = add nsw i32 %6, 2
  %8 = tail call noundef i32 @llvm.smax.i32(i32 %7, i32 %4) ; 2 uses
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %bb.f, label %bb.d

bb.d:                                             ; preds = %2
  %i.i = add nsw i32 %8, %i.h                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !115
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call ptr @realloc(ptr noundef %i.d, i64 noundef %i.k) #27 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !66
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_ZN5Gluco3vecIjE8capacityEi.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__errno_location() #25
  %i.o = load i32, ptr %i.n, align 4, !tbaa !10
  %i.p = icmp eq i32 %i.o, 12
  br i1 %i.p, label %bb.f, label %_ZN5Gluco3vecIjE8capacityEi.exit.i

bb.f:                                             ; preds = %bb.e, %2
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

_ZN5Gluco3vecIjE8capacityEi.exit.i:               ; preds = %bb.e, %bb.d, %bb.c
  %i.q = phi ptr [ null, %bb.e ], [ %i.l, %bb.d ], [ %i.d, %bb.c ]
  %i.r = load i32, ptr %i.e, align 8, !tbaa !67   ; 3 uses
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN5Gluco3vecIjE8capacityEi.exit.i
  %i.t = sext i32 %i.r to i64
  %i.u = shl nsw i64 %i.t, 2
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.u
  %i.v = sub i32 0, %i.r
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.y, i1 false), !tbaa !10
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN5Gluco3vecIjE8capacityEi.exit.i
  store i32 1, ptr %i.e, align 8, !tbaa !67
  br label %_ZN5Gluco3vecIjE6growToEi.exit

_ZN5Gluco3vecIjE6growToEi.exit:                   ; preds = %_ZN5Gluco3vecIjE5clearEb.exit, %._crit_edge.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.z, align 4, !tbaa !101
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5Gluco10SimpSolver5asymmEij(ptr noundef nonnull align 8 dereferenceable(1484) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = load i64, ptr %i.d, align 4
  %i.f = and i64 %i.e, 3
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK5Gluco6Solver9satisfiedERKNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.d) #24
  br i1 %i.g, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.j = load i32, ptr %i.i, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !82
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %._ZN5Gluco3vecIiE8capacityEi.exit_crit_edge.i

._ZN5Gluco3vecIiE8capacityEi.exit_crit_edge.i:    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !75
  br label %_ZN5Gluco3vecIiE4pushERKi.exit

bb.d:                                             ; preds = %bb.c
  %i.p = ashr i32 %i.l, 1
  %i.q = and i32 %i.p, -2
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %i.s = add nuw nsw i32 %i.r, 2                  ; 2 uses
  %i.t = sub nsw i32 2147483647, %i.l
  %i.u = icmp samesign ugt i32 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.w = add nsw i32 %i.s, %i.l                   ; 2 uses
  store i32 %i.w, ptr %i.m, align 4, !tbaa !82
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 2
  %i.z = tail call ptr @realloc(ptr noundef %i.v, i64 noundef %i.y) #27 ; 3 uses
  store ptr %i.z, ptr %i.h, align 8, !tbaa !75
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.f, label %._ZN5Gluco3vecIiE4pushERKi.exit_crit_edge

._ZN5Gluco3vecIiE4pushERKi.exit_crit_edge:        ; preds = %bb.e
  %.pre = load i32, ptr %i.k, align 8, !tbaa !76
  br label %_ZN5Gluco3vecIiE4pushERKi.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

_ZN5Gluco3vecIiE4pushERKi.exit:                   ; preds = %._ZN5Gluco3vecIiE4pushERKi.exit_crit_edge, %._ZN5Gluco3vecIiE8capacityEi.exit_crit_edge.i
  %i.ab = phi i32 [ %i.l, %._ZN5Gluco3vecIiE8capacityEi.exit_crit_edge.i ], [ %.pre, %._ZN5Gluco3vecIiE4pushERKi.exit_crit_edge ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i, %._ZN5Gluco3vecIiE8capacityEi.exit_crit_edge.i ], [ %i.z, %._ZN5Gluco3vecIiE4pushERKi.exit_crit_edge ]
  %i.ad = add nsw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.k, align 8, !tbaa !76
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  store i32 %i.j, ptr %i.af, align 4, !tbaa !10
  %i.ag = load i64, ptr %i.d, align 4             ; 2 uses
  %i.ah = lshr i64 %i.ag, 32
  %i.ai = trunc nuw i64 %i.ah to i32
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Gluco3vecIiE4pushERKi.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.g

._crit_edge:                                      ; preds = %.critedge, %_ZN5Gluco3vecIiE4pushERKi.exit
  %.sroa.010.0.lcssa = phi i32 [ -2, %_ZN5Gluco3vecIiE4pushERKi.exit ], [ %.sroa.010.1, %.critedge ]
  %i.am = tail call noundef i32 @_ZN5Gluco6Solver9propagateEv(ptr noundef nonnull align 8 dereferenceable(1216) %0) #24
  %.not24 = icmp eq i32 %i.am, -1
  tail call void @_ZN5Gluco6Solver11cancelUntilEi(ptr noundef nonnull align 8 dereferenceable(1216) %0, i32 noundef 0) #24
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
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !93
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  %i.at = trunc i32 %.sroa.04.0.copyload to i8
  %i.au = load i8, ptr %i.as, align 1, !tbaa !94
  %i.av = and i8 %i.at, 1
  %i.aw = xor i8 %i.au, %i.av
  %.not27 = icmp eq i8 %i.aw, 1
  br i1 %.not27, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = xor i32 %.sroa.04.0.copyload, 1
  tail call void @_ZN5Gluco6Solver16uncheckedEnqueueENS_3LitEj(ptr noundef nonnull align 8 dereferenceable(1216) %0, i32 %i.ax, i32 noundef -1) #24
  %.pre31 = load i64, ptr %i.d, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.i
  %i.ay = phi i64 [ %.pre31, %bb.i ], [ %i.an, %bb.g ], [ %i.an, %bb.h ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %.sroa.010.029, %bb.i ], [ %.sroa.04.0.copyload, %bb.g ], [ %.sroa.04.0.copyload, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = ashr i64 %i.ay, 32
  %i.ba = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.g, label %._crit_edge, !llvm.loop !164

bb.j:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !165
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !165
  %i.be = tail call noundef zeroext i1 @_ZN5Gluco10SimpSolver16strengthenClauseEjNS_3LitE(ptr noundef nonnull align 8 dereferenceable(1484) %0, i32 noundef %2, i32 %.sroa.010.0.lcssa)
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.a, %bb.b
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.k ], [ false, %bb.j ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK5Gluco6Solver9satisfiedERKNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(1216), ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5Gluco10SimpSolver8asymmVarEi(ptr noundef nonnull align 8 dereferenceable(1484) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = sext i32 %1 to i64                       ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE6lookupERKi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.h = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN5Gluco8OccListsIiNS_3vecIjEENS_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !66   ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !146, !nonnull !58, !align !87
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.p = phi i32 [ %i.j, %.lr.ph.i.i ], [ %i.aa, %bb.e ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Gluco15ClauseAllocator5relocERjRS0_:bb.a

middle.block53:                                   ; preds = %vector.body46
  %bin.rdx54 = or <4 x i32> %i.dw, %i.dv
  %i.dy = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx54) ; 2 uses
  %cmp.n55 = icmp eq i64 %i.dj, %n.vec45
  br i1 %cmp.n55, label %_ZN5Gluco6Clause15calcAbstractionEv.exit, label %scalar.ph42.preheader

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
  br i1 %exitcond.not.i, label %_ZN5Gluco6Clause15calcAbstractionEv.exit, label %scalar.ph42, !llvm.loop !201

_ZN5Gluco6Clause15calcAbstractionEv.exit:         ; preds = %scalar.ph42, %middle.block53, %bb.j
  %.0.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.dy, %middle.block53 ], [ %i.ed, %scalar.ph42 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.dj
  store i32 %.0.lcssa.i, ptr %i.ef, align 4, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN5Gluco6Clause15calcAbstractionEv.exit, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Gluco10SimpSolver14garbageCollectEv(ptr noundef nonnull align 8 dereferenceable(1484) %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.Gluco::ClauseAllocator", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.not.i.not.i.i = icmp eq i32 %i.c, %i.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %1, i8 0, i64 20, i1 false)
  br i1 %.not.i.not.i.i, label %_ZN5Gluco15ClauseAllocatorC2Ej.exit, label %.preheader.i.preheader.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.preheader.i.i
  %i.h = icmp ult i32 %i.o, %i.f
  br i1 %i.h, label %.preheader.i.preheader.i.i, label %bb.c, !llvm.loop !202

.preheader.i.preheader.i.i:                       ; preds = %bb.a, %.preheader.i.i.i
  %i.i = phi i32 [ %i.o, %.preheader.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = lshr i32 %i.i, 3
  %i.l = add nuw i32 %i.j, %i.k
  %i.m = and i32 %i.l, -2
  %i.n = add i32 %i.i, 2
  %i.o = add i32 %i.n, %i.m                       ; 5 uses
  %.not6.i.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i.not.i.i, label %bb.b, label %.preheader.i.i.i, !llvm.loop !202

bb.b:                                             ; preds = %.preheader.i.preheader.i.i
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

bb.c:                                             ; preds = %.preheader.i.i.i
  store i32 %i.o, ptr %i.g, align 4, !tbaa !203
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 2
  %malloc.i.i = tail call ptr @malloc(i64 %i.q)   ; 2 uses
  %i.r = icmp eq ptr %malloc.i.i, null
  br i1 %i.r, label %bb.d, label %_ZN5GlucoL8xreallocEPvm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr @__errno_location() #25
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10
  %i.u = icmp eq i32 %i.t, 12
  br i1 %i.u, label %bb.e, label %_ZN5GlucoL8xreallocEPvm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

_ZN5GlucoL8xreallocEPvm.exit.i.i.i:               ; preds = %bb.d, %bb.c
  store ptr %malloc.i.i, ptr %1, align 8, !tbaa !69
  br label %_ZN5Gluco15ClauseAllocatorC2Ej.exit

_ZN5Gluco15ClauseAllocatorC2Ej.exit:              ; preds = %bb.a, %_ZN5GlucoL8xreallocEPvm.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  tail call void @_ZN5Gluco10SimpSolver14cleanUpClausesEv(ptr noundef nonnull align 8 dereferenceable(1484) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !68, !range !57, !noundef !58
  store i8 %i.x, ptr %i.v, align 4, !tbaa !195
  call void @_ZN5Gluco10SimpSolver8relocAllERNS_15ClauseAllocatorE(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull align 8 dereferenceable(21) %1)
  call void @_ZN5Gluco6Solver8relocAllERNS_15ClauseAllocatorE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull align 8 dereferenceable(21) %1) #24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i32, ptr %i.y, align 8, !tbaa !92
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5Gluco15ClauseAllocatorC2Ej.exit
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !107
  %i.ac = shl i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !107
  %i.af = shl i32 %i.ae, 2
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.ac, i32 noundef %i.af) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5Gluco15ClauseAllocatorC2Ej.exit
  %i.ah = load i8, ptr %i.v, align 4, !tbaa !195, !range !57, !noundef !58
  store i8 %i.ah, ptr %i.w, align 4, !tbaa !195
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN5Gluco15RegionAllocatorIjED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.ai) #24
  br label %_ZN5Gluco15RegionAllocatorIjED2Ev.exit

_ZN5Gluco15RegionAllocatorIjED2Ev.exit:           ; preds = %bb.h, %bb.g
  %i.aj = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load <2 x i32>, ptr %i.ak, align 8, !tbaa !10
  store <2 x i32> %i.al, ptr %i.b, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !106
  store i32 %i.an, ptr %i.d, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

declare void @_ZN5Gluco6Solver8relocAllERNS_15ClauseAllocatorE(ptr noundef nonnull align 8 dereferenceable(1216), ptr noundef nonnull align 8 dereferenceable(21)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Gluco10SimpSolver5resetEv(ptr noundef nonnull align 8 dereferenceable(1484) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5Gluco6Solver5resetEv(ptr noundef nonnull align 8 dereferenceable(1216) %0) #24
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL8opt_grow, i64 48), align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1220
  store i32 %i.a, ptr %i.b, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1476
  store i32 0, ptr %i.c, align 4, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1472
  store i32 0, ptr %i.d, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1252
  store i32 0, ptr %i.e, align 4, !tbaa !172
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store i32 0, ptr %i.f, align 8, !tbaa !165
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5Gluco3vecIjE5clearEb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i32 0, ptr %i.i, align 8, !tbaa !67
  br label %_ZN5Gluco3vecIjE5clearEb.exit

_ZN5Gluco3vecIjE5clearEb.exit:                    ; preds = %bb.a, %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73
  %.not.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i1, label %_ZN5Gluco3vecIcE5clearEb.exit, label %.preheader.i2

.preheader.i2:                                    ; preds = %_ZN5Gluco3vecIjE5clearEb.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i32 0, ptr %i.l, align 8, !tbaa !74
  br label %_ZN5Gluco3vecIcE5clearEb.exit

_ZN5Gluco3vecIcE5clearEb.exit:                    ; preds = %_ZN5Gluco3vecIjE5clearEb.exit, %.preheader.i2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store i32 0, ptr %i.m, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 0, ptr %i.n, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 0, ptr %i.o, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %.not.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i3, label %_ZN5Gluco3vecIiE5clearEb.exit, label %.preheader.i4

.preheader.i4:                                    ; preds = %_ZN5Gluco3vecIcE5clearEb.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1368
  store i32 0, ptr %i.r, align 8, !tbaa !76
  br label %_ZN5Gluco3vecIiE5clearEb.exit

_ZN5Gluco3vecIiE5clearEb.exit:                    ; preds = %_ZN5Gluco3vecIcE5clearEb.exit, %.preheader.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !76
  %i.v = icmp sgt i32 %i.u, 0
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !75 ; 2 uses
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i.a

.lr.ph.i:                                         ; preds = %_ZN5Gluco3vecIiE5clearEb.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !10
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !76
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %bb.b, label %.preheader.i.i.a, !llvm.loop !105

._crit_edge.i.a:                                  ; preds = %_ZN5Gluco3vecIiE5clearEb.exit
  %.not.i.i.a = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.a, label %_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE5clearEb.exit.a, label %.preheader.i.i.a

.preheader.i.i.a:                                 ; preds = %bb.b, %._crit_edge.i.a
  store i32 0, ptr %i.t, align 8, !tbaa !76
  br label %_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE5clearEb.exit.a

_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE5clearEb.exit.a: ; preds = %._crit_edge.i.a, %.preheader.i.i.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1416
  tail call void @_ZN5Gluco5QueueIjE5clearEb(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !73
  %.not.i5 = icmp eq ptr %i.ah, null
  br i1 %.not.i5, label %_ZN5Gluco3vecIcE5clearEb.exit7, label %.preheader.i6

.preheader.i6:                                    ; preds = %_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE5clearEb.exit.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1448
  store i32 0, ptr %i.ai, align 8, !tbaa !74
  br label %_ZN5Gluco3vecIcE5clearEb.exit7

_ZN5Gluco3vecIcE5clearEb.exit7:                   ; preds = %_ZN5Gluco4HeapINS_10SimpSolver6ElimLtEE5clearEb.exit.a, %.preheader.i6
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73
  %.not.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i8, label %.lr.ph.i.i.a, label %.preheader.i9

.preheader.i9:                                    ; preds = %_ZN5Gluco3vecIcE5clearEb.exit7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store i32 0, ptr %i.al, align 8, !tbaa !74
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %.preheader.i9, %_ZN5Gluco3vecIcE5clearEb.exit7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 884
  store i8 1, ptr %i.an, align 4, !tbaa !68
  %i.ao = tail call noundef i32 @_ZN5Gluco15RegionAllocatorIjE5allocEi(ptr noundef nonnull align 8 dereferenceable(21) %i.am, i32 noundef 5) ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  store i64 6442450952, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 -2, ptr %i.as, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 %i.ao, ptr %i.au, align 8, !tbaa !71
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i8 0, ptr %i.av, align 8, !tbaa !72
  ret void
}

declare void @_ZN5Gluco6Solver5resetEv(ptr noundef nonnull align 8 dereferenceable(1216)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco6OptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !204
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !206
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !207
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.d, align 8, !tbaa !208
  %i.e = load atomic i8, ptr @_ZGVZN5Gluco6Option13getOptionListEvE7options acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN5Gluco6Option13getOptionListEv.exit, !prof !209

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Gluco6Option13getOptionListEvE7options) #24
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN5Gluco6Option13getOptionListEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN5Gluco6Option13getOptionListEvE7options, i8 0, i64 16, i1 false)
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5Gluco3vecIPNS_6OptionEED2Ev, ptr nonnull @_ZZN5Gluco6Option13getOptionListEvE7options, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Gluco6Option13getOptionListEvE7options) #24
  br label %_ZN5Gluco6Option13getOptionListEv.exit

_ZN5Gluco6Option13getOptionListEv.exit:           ; preds = %bb.a, %bb.b, %bb.c
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, i64 8), align 8, !tbaa !210 ; 5 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, i64 12), align 4, !tbaa !214
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %._ZN5Gluco3vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i

._ZN5Gluco3vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i: ; preds = %_ZN5Gluco6Option13getOptionListEv.exit
  %.pre.i = load ptr, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, align 8, !tbaa !215
  br label %_ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit

bb.d:                                             ; preds = %_ZN5Gluco6Option13getOptionListEv.exit
  %i.l = ashr i32 %i.i, 1
  %i.m = and i32 %i.l, -2
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %i.o = add nuw nsw i32 %i.n, 2                  ; 2 uses
  %i.p = sub nsw i32 2147483647, %i.i
  %i.q = icmp samesign ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, align 8, !tbaa !215
  %i.s = add nsw i32 %i.o, %i.i                   ; 2 uses
  store i32 %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, i64 12), align 4, !tbaa !214
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = tail call ptr @realloc(ptr noundef %i.r, i64 noundef %i.u) #27 ; 3 uses
  store ptr %i.v, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, align 8, !tbaa !215
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %._ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge

._ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge: ; preds = %bb.e
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, i64 8), align 8, !tbaa !210
  br label %_ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

_ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit:      ; preds = %._ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge, %._ZN5Gluco3vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i
  %i.x = phi i32 [ %i.i, %._ZN5Gluco3vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i ], [ %.pre, %._ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge ] ; 2 uses
  %i.y = phi ptr [ %.pre.i, %._ZN5Gluco3vecIPNS_6OptionEE8capacityEi.exit_crit_edge.i ], [ %i.v, %._ZN5Gluco3vecIPNS_6OptionEE4pushERKS2_.exit_crit_edge ]
  %i.z = add nsw i32 %i.x, 1
  store i32 %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Gluco6Option13getOptionListEvE7options, i64 8), align 8, !tbaa !210
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  store ptr %0, ptr %i.ab, align 8, !tbaa !216
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Gluco10BoolOptionD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5Gluco10BoolOption5parseEPKc(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
.lr.ph.i:
  %i.a = load i8, ptr %1, align 1, !tbaa !70
  %.not11.i = icmp eq i8 %i.a, 45
  br i1 %.not11.i, label %.lr.ph.i6, label %.critedge

.lr.ph.i6:                                        ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !70
  %.not11.i8.not.not = icmp eq i8 %i.c, 110
  br i1 %.not11.i8.not.not, label %.lr.ph.i6.1, label %_ZN5GlucoL5matchIPKcEEbRT_S2_.exit13

.lr.ph.i6.1:                                      ; preds = %.lr.ph.i6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !70
  %.not11.i8.not.1.not = icmp eq i8 %i.e, 111
  br i1 %.not11.i8.not.1.not, label %.lr.ph.i6.2, label %_ZN5GlucoL5matchIPKcEEbRT_S2_.exit13

.lr.ph.i6.2:                                      ; preds = %.lr.ph.i6.1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !70
  %.not11.i8.not.2.not = icmp ne i8 %i.g, 45      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %spec.select = zext i1 %.not11.i8.not.2.not to i8
  %spec.select22 = select i1 %.not11.i8.not.2.not, ptr %i.b, ptr %i.h
  br label %_ZN5GlucoL5matchIPKcEEbRT_S2_.exit13

_ZN5GlucoL5matchIPKcEEbRT_S2_.exit13:             ; preds = %.lr.ph.i6.2, %.lr.ph.i6, %.lr.ph.i6.1
  %.not11.i8.not21 = phi i8 [ 1, %.lr.ph.i6 ], [ %spec.select, %.lr.ph.i6.2 ], [ 1, %.lr.ph.i6.1 ]
  %.114 = phi ptr [ %i.b, %.lr.ph.i6 ], [ %spec.select22, %.lr.ph.i6.2 ], [ %i.b, %.lr.ph.i6.1 ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !204
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.114, ptr noundef nonnull dereferenceable(1) %i.j) #28
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.a, label %.critedge

bb.a:                                             ; preds = %_ZN5GlucoL5matchIPKcEEbRT_S2_.exit13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.not11.i8.not21, ptr %i.l, align 8, !tbaa !218
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %_ZN5GlucoL5matchIPKcEEbRT_S2_.exit13, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %_ZN5GlucoL5matchIPKcEEbRT_S2_.exit13 ], [ false, %.lr.ph.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Gluco10BoolOption4helpEb(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !204  ; 2 uses
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.34, ptr noundef %i.c, ptr noundef %i.c) #29 ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #28
  %.mask = and i64 %i.f, 9223372036854775807
  %.not = icmp eq i64 %.mask, 16
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !220
  %fputc = tail call i32 @fputc(i32 32, ptr %i.g) ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !220
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i8, ptr %i.i, align 8, !tbaa !218, !range !57, !noundef !58
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.k, ptr @.str.37, ptr @.str.38
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.l) #29 ; 0 uses
  br i1 %1, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05 = phi i32 [ %i.o, %.lr.ph ], [ 0, %bb.a ]
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !220
end_hunk_2
