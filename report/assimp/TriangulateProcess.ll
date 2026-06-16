inline.NumInlined: 605
inline.NumDeleted: 269
begin_hunk_0_@_ZN6mapbox6detail6EarcutIjE10indexCurveEPNS2_4NodeE:bb.a
  %i.l = fsub <2 x double> %i.j, %i.k
  %i.m = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.o = fmul <2 x double> %i.m, %i.n
  %i.p = fptosi <2 x double> %i.o to <2 x i32>    ; 2 uses
  %i.q = shl <2 x i32> %i.p, splat (i32 8)
  %i.r = or <2 x i32> %i.q, %i.p
  %i.s = and <2 x i32> %i.r, splat (i32 16711935) ; 2 uses
  %i.t = shl nuw nsw <2 x i32> %i.s, splat (i32 4)
  %i.u = or <2 x i32> %i.t, %i.s
  %i.v = and <2 x i32> %i.u, splat (i32 252645135) ; 2 uses
  %i.w = shl nuw nsw <2 x i32> %i.v, splat (i32 2)
  %i.x = or <2 x i32> %i.w, %i.v
  %i.y = and <2 x i32> %i.x, splat (i32 858993459) ; 3 uses
  %i.z = shl nuw <2 x i32> %i.y, <i32 2, i32 1>
  %i.aa = extractelement <2 x i32> %i.y, i64 0
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %i.ac = insertelement <2 x i32> %i.y, i32 %i.ab, i64 0
  %i.ad = or <2 x i32> %i.z, %i.ac
  %i.ae = and <2 x i32> %i.ad, <i32 -1431655766, i32 1431655765> ; 2 uses
  %shift = shufflevector <2 x i32> %i.ae, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i32> %i.ae, %shift
  %i.af = extractelement <2 x i32> %foldExtExtBinop, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ag = phi i32 [ %i.af, %bb.c ], [ %i.e, %bb.b ]
  store i32 %i.ag, ptr %i.d, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 4 uses
  %i.al = load <2 x ptr>, ptr %i.ah, align 8
  store <2 x ptr> %i.al, ptr %i.ai, align 8
  %.not19 = icmp eq ptr %i.ak, %1
  br i1 %.not19, label %bb.e, label %bb.b, !llvm.loop !54

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store ptr null, ptr %i.ao, align 8
  store ptr null, ptr %i.am, align 8
  br label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %._crit_edge81.i, %bb.e
  %.058.i = phi ptr [ %i.ak, %bb.e ], [ %.260.us.i, %._crit_edge81.i ] ; 2 uses
  %.0.i = phi i32 [ 1, %bb.e ], [ %i.bu, %._crit_edge81.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.058.i) ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.loopexit.us.i, %.lr.ph80.i
  %.04678.us.i = phi i32 [ %i.ap, %.loopexit.us.i ], [ 0, %.lr.ph80.i ] ; 2 uses
  %.04877.us.i = phi ptr [ %.149.us.i, %.loopexit.us.i ], [ null, %.lr.ph80.i ]
  %.05576.us.i = phi ptr [ %.253.us.i, %.loopexit.us.i ], [ %.058.i, %.lr.ph80.i ] ; 2 uses
  %.15975.us.i = phi ptr [ %.260.us.i, %.loopexit.us.i ], [ null, %.lr.ph80.i ]
  %i.ap = add nuw nsw i32 %.04678.us.i, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %exitcond.not.i = icmp eq i32 %i.aq, %.0.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i.preheader, label %bb.g, !llvm.loop !55

bb.g:                                             ; preds = %bb.f, %.lr.ph.us.i
  %.04469.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.aq, %bb.f ]
  %.05167.us.i = phi ptr [ %.05576.us.i, %.lr.ph.us.i ], [ %i.as, %bb.f ]
  %i.aq = add nuw nsw i32 %.04469.us.i, 1         ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05167.us.i, i64 56
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.not64.us.i = icmp eq ptr %i.as, null
  br i1 %.not64.us.i, label %._crit_edge.us.i.preheader, label %bb.f

._crit_edge.us.i.preheader:                       ; preds = %bb.g, %bb.f
  %.2.us.i.ph = phi i32 [ %.0.i, %bb.f ], [ %i.aq, %bb.g ]
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.preheader, %bb.p
  %.260.us.i = phi ptr [ %.361.us.i, %bb.p ], [ %.15975.us.i, %._crit_edge.us.i.preheader ] ; 3 uses
  %.156.us.i = phi ptr [ %.257.us.i, %bb.p ], [ %.05576.us.i, %._crit_edge.us.i.preheader ] ; 7 uses
  %.253.us.i = phi ptr [ %.354.us.i, %bb.p ], [ %i.as, %._crit_edge.us.i.preheader ] ; 11 uses
  %.149.us.i = phi ptr [ %.050.us.i, %bb.p ], [ %.04877.us.i, %._crit_edge.us.i.preheader ] ; 5 uses
  %.2.us.i = phi i32 [ %.3.us.i, %bb.p ], [ %.2.us.i.ph, %._crit_edge.us.i.preheader ] ; 5 uses
  %.043.us.i = phi i32 [ %.1.us.i, %bb.p ], [ %.0.i, %._crit_edge.us.i.preheader ] ; 6 uses
  %i.at = icmp sgt i32 %.2.us.i, 0
  br i1 %i.at, label %.critedge.thread.us.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.us.i
  %i.au = icmp sgt i32 %.043.us.i, 0
  %i.av = icmp ne ptr %.253.us.i, null
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.critedge.us.i, label %.loopexit.us.i

.critedge.us.i:                                   ; preds = %bb.h
  %i.ax = icmp eq i32 %.2.us.i, 0
  br i1 %i.ax, label %bb.i, label %.critedge.thread.us.i

bb.i:                                             ; preds = %.critedge.us.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 56
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = add nsw i32 %.043.us.i, -1
  br label %bb.n

.critedge.thread.us.i:                            ; preds = %.critedge.us.i, %._crit_edge.us.i
  %i.bb = icmp ne i32 %.043.us.i, 0
  %i.bc = icmp ne ptr %.253.us.i, null
  %or.cond.us.i = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond.us.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge.thread.us.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 56
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = add nsw i32 %.2.us.i, -1
  br label %bb.n

bb.k:                                             ; preds = %.critedge.thread.us.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 40
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 40
  %i.bj = load i32, ptr %i.bi, align 8
  %.not65.us.i = icmp sgt i32 %i.bh, %i.bj
  br i1 %.not65.us.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = add nsw i32 %.2.us.i, -1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = add nsw i32 %.043.us.i, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  %.257.us.i = phi ptr [ %.156.us.i, %bb.i ], [ %i.bl, %bb.l ], [ %.156.us.i, %bb.m ], [ %i.be, %bb.j ]
  %.354.us.i = phi ptr [ %i.az, %bb.i ], [ %.253.us.i, %bb.l ], [ %i.bo, %bb.m ], [ %.253.us.i, %bb.j ]
  %.050.us.i = phi ptr [ %.253.us.i, %bb.i ], [ %.156.us.i, %bb.l ], [ %.253.us.i, %bb.m ], [ %.156.us.i, %bb.j ] ; 4 uses
  %.3.us.i = phi i32 [ 0, %bb.i ], [ %i.bm, %bb.l ], [ %.2.us.i, %bb.m ], [ %i.bf, %bb.j ]
  %.1.us.i = phi i32 [ %i.ba, %bb.i ], [ %.043.us.i, %bb.l ], [ %i.bp, %bb.m ], [ %.043.us.i, %bb.j ]
  %.not66.us.i = icmp eq ptr %.149.us.i, null
  br i1 %.not66.us.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.149.us.i, i64 56
  store ptr %.050.us.i, ptr %i.bq, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.361.us.i = phi ptr [ %.260.us.i, %bb.o ], [ %.050.us.i, %bb.n ]
  %i.br = getelementptr inbounds nuw i8, ptr %.050.us.i, i64 48
  store ptr %.149.us.i, ptr %i.br, align 8
  br label %._crit_edge.us.i, !llvm.loop !56

.loopexit.us.i:                                   ; preds = %bb.h
  %.not.us.i = icmp eq ptr %.253.us.i, null
  br i1 %.not.us.i, label %._crit_edge81.i, label %.lr.ph.us.i, !llvm.loop !57

._crit_edge81.i:                                  ; preds = %.loopexit.us.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.149.us.i, i64 56
  store ptr null, ptr %i.bs, align 8
  %i.bt = icmp eq i32 %.04678.us.i, 0
  %i.bu = shl nuw nsw i32 %.0.i, 1
  br i1 %i.bt, label %_ZN6mapbox6detail6EarcutIjE10sortLinkedEPNS2_4NodeE.exit, label %.lr.ph80.i, !llvm.loop !58

_ZN6mapbox6detail6EarcutIjE10sortLinkedEPNS2_4NodeE.exit: ; preds = %._crit_edge81.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6mapbox6detail6EarcutIjE11isEarHashedEPNS2_4NodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load double, ptr %i.e, align 8           ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.h = load double, ptr %i.g, align 8           ; 5 uses
  %i.i = fsub double %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.k = load double, ptr %i.j, align 8           ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load double, ptr %i.l, align 8           ; 8 uses
  %i.n = fsub double %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.p = load double, ptr %i.o, align 8           ; 5 uses
  %i.q = fsub double %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.s = load double, ptr %i.r, align 8           ; 7 uses
  %i.t = fsub double %i.s, %i.f
  %i.u = fneg double %i.t
  %i.v = fmul double %i.q, %i.u
  %i.w = tail call noundef double @llvm.fmuladd.f64(double %i.i, double %i.n, double %i.v)
  %i.x = fcmp ult double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.b, label %.critedge2

bb.b:                                             ; preds = %bb.a
  %i.y = fcmp olt double %i.k, %i.m               ; 2 uses
  %2 = select i1 %i.y, double %i.k, double %i.m
  %..i = select i1 %i.y, ptr %i.j, ptr %i.l
  %i.z = fcmp olt double %2, %i.p
  %..i75 = select i1 %i.z, ptr %..i, ptr %i.o
  %i.aa = load double, ptr %..i75, align 8
  %i.ab = fcmp olt double %i.s, %i.f              ; 2 uses
  %3 = select i1 %i.ab, double %i.s, double %i.f
  %..i76 = select i1 %i.ab, ptr %i.r, ptr %i.e
  %i.ac = fcmp olt double %3, %i.h
  %..i77 = select i1 %i.ac, ptr %..i76, ptr %i.g
  %i.ad = load double, ptr %..i77, align 8
  %i.ae = fcmp olt double %i.m, %i.k              ; 2 uses
  %4 = select i1 %i.ae, double %i.k, double %i.m
  %..i78 = select i1 %i.ae, ptr %i.j, ptr %i.l
  %i.af = fcmp olt double %i.p, %4
  %..i79 = select i1 %i.af, ptr %..i78, ptr %i.o
  %i.ag = load double, ptr %..i79, align 8
  %i.ah = fcmp olt double %i.f, %i.s              ; 2 uses
  %5 = select i1 %i.ah, double %i.s, double %i.f
  %..i80 = select i1 %i.ah, ptr %i.r, ptr %i.e
  %i.ai = fcmp olt double %i.h, %5
  %..i81 = select i1 %i.ai, ptr %..i80, ptr %i.g
  %i.aj = load double, ptr %..i81, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load double, ptr %i.ak, align 8         ; 2 uses
  %i.am = fsub double %i.aa, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load double, ptr %i.an, align 8         ; 4 uses
  %i.ap = fmul double %i.am, %i.ao
  %i.aq = fptosi double %i.ap to i32              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load double, ptr %i.ar, align 8         ; 2 uses
  %i.at = fsub double %i.ad, %i.as
  %i.au = fmul double %i.ao, %i.at
  %i.av = fptosi double %i.au to i32              ; 2 uses
  %i.aw = shl i32 %i.aq, 8
  %i.ax = or i32 %i.aw, %i.aq
  %i.ay = and i32 %i.ax, 16711935                 ; 2 uses
  %i.az = shl nuw nsw i32 %i.ay, 4
  %i.ba = or i32 %i.az, %i.ay
  %i.bb = and i32 %i.ba, 252645135                ; 2 uses
  %i.bc = shl nuw nsw i32 %i.bb, 2
  %i.bd = or i32 %i.bc, %i.bb
  %i.be = and i32 %i.bd, 858993459                ; 2 uses
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = or i32 %i.bf, %i.be
  %i.bh = and i32 %i.bg, 1431655765
  %i.bi = shl i32 %i.av, 8
  %i.bj = or i32 %i.bi, %i.av
  %i.bk = and i32 %i.bj, 16711935                 ; 2 uses
  %i.bl = shl nuw nsw i32 %i.bk, 4
  %i.bm = or i32 %i.bl, %i.bk
  %i.bn = and i32 %i.bm, 252645135                ; 2 uses
  %i.bo = shl nuw nsw i32 %i.bn, 2
  %i.bp = or i32 %i.bo, %i.bn
  %i.bq = and i32 %i.bp, 858993459                ; 2 uses
  %i.br = shl nuw i32 %i.bq, 2
  %i.bs = shl nuw nsw i32 %i.bq, 1
  %i.bt = or i32 %i.br, %i.bs
  %i.bu = and i32 %i.bt, -1431655766
  %i.bv = or disjoint i32 %i.bu, %i.bh
  %i.bw = fsub double %i.ag, %i.al
  %i.bx = fmul double %i.bw, %i.ao
  %i.by = fptosi double %i.bx to i32              ; 2 uses
  %i.bz = fsub double %i.aj, %i.as
  %i.ca = fmul double %i.ao, %i.bz
  %i.cb = fptosi double %i.ca to i32              ; 2 uses
  %i.cc = shl i32 %i.by, 8
  %i.cd = or i32 %i.cc, %i.by
  %i.ce = and i32 %i.cd, 16711935                 ; 2 uses
  %i.cf = shl nuw nsw i32 %i.ce, 4
  %i.cg = or i32 %i.cf, %i.ce
  %i.ch = and i32 %i.cg, 252645135                ; 2 uses
  %i.ci = shl nuw nsw i32 %i.ch, 2
  %i.cj = or i32 %i.ci, %i.ch
  %i.ck = and i32 %i.cj, 858993459                ; 2 uses
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = or i32 %i.cl, %i.ck
  %i.cn = and i32 %i.cm, 1431655765
  %i.co = shl i32 %i.cb, 8
  %i.cp = or i32 %i.co, %i.cb
  %i.cq = and i32 %i.cp, 16711935                 ; 2 uses
  %i.cr = shl nuw nsw i32 %i.cq, 4
  %i.cs = or i32 %i.cr, %i.cq
  %i.ct = and i32 %i.cs, 252645135                ; 2 uses
  %i.cu = shl nuw nsw i32 %i.ct, 2
  %i.cv = or i32 %i.cu, %i.ct
  %i.cw = and i32 %i.cv, 858993459                ; 2 uses
  %i.cx = shl nuw i32 %i.cw, 2
  %i.cy = shl nuw nsw i32 %i.cw, 1
  %i.cz = or i32 %i.cx, %i.cy
  %i.da = and i32 %i.cz, -1431655766
  %i.db = or disjoint i32 %i.da, %i.cn
  %.0.in85 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.086 = load ptr, ptr %.0.in85, align 8         ; 2 uses
  %.not87 = icmp eq ptr %.086, null
  br i1 %.not87, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread
  %.088 = phi ptr [ %.0, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread ], [ %.086, %bb.b ] ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.088, i64 40
  %i.dd = load i32, ptr %i.dc, align 8
  %.not67 = icmp sgt i32 %i.dd, %i.db
  br i1 %.not67, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.not72 = icmp eq ptr %.088, %i.b
  %.not73 = icmp eq ptr %.088, %i.d
  %or.cond = or i1 %.not72, %.not73
  br i1 %or.cond, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %.088, i64 8
  %i.df = load double, ptr %i.de, align 8         ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.088, i64 16
  %i.dh = load double, ptr %i.dg, align 8         ; 5 uses
  %i.di = fsub double %i.k, %i.df                 ; 2 uses
  %i.dj = fsub double %i.h, %i.dh                 ; 2 uses
  %i.dk = fmul double %i.di, %i.dj
  %i.dl = fsub double %i.p, %i.df                 ; 2 uses
  %i.dm = fsub double %i.s, %i.dh                 ; 2 uses
  %i.dn = fmul double %i.dl, %i.dm
  %i.do = fcmp ult double %i.dk, %i.dn
  br i1 %i.do, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dp = fsub double %i.f, %i.dh                 ; 2 uses
  %i.dq = fmul double %i.dl, %i.dp
  %i.dr = fsub double %i.m, %i.df                 ; 2 uses
  %i.ds = fmul double %i.dr, %i.dj
  %i.dt = fcmp ult double %i.dq, %i.ds
  br i1 %i.dt, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit

_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit: ; preds = %bb.e
  %i.du = fmul double %i.dr, %i.dm
  %i.dv = fmul double %i.di, %i.dp
  %i.dw = fcmp ult double %i.du, %i.dv
  br i1 %i.dw, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %.088, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.088, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ec = load double, ptr %i.eb, align 8
  %i.ed = fsub double %i.dh, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ef = load double, ptr %i.ee, align 8
  %i.eg = fsub double %i.ef, %i.df
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ei = load double, ptr %i.eh, align 8
  %i.ej = fsub double %i.df, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.el = load double, ptr %i.ek, align 8
  %i.em = fsub double %i.el, %i.dh
  %i.en = fneg double %i.em
  %i.eo = fmul double %i.ej, %i.en
  %i.ep = tail call noundef double @llvm.fmuladd.f64(double %i.ed, double %i.eg, double %i.eo)
  %i.eq = fcmp ult double %i.ep, 0.000000e+00
  br i1 %i.eq, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, label %.critedge2

_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread: ; preds = %bb.d, %bb.e, %bb.f, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit, %bb.c
  %.0.in = getelementptr inbounds nuw i8, ptr %.088, i64 56
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !59

.critedge:                                        ; preds = %.lr.ph, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, %bb.b
  %.1.in90 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.191 = load ptr, ptr %.1.in90, align 8         ; 2 uses
  %.not6892 = icmp eq ptr %.191, null
  br i1 %.not6892, label %.critedge2, label %.lr.ph94

.lr.ph94:                                         ; preds = %.critedge, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82.thread
  %.193 = phi ptr [ %.1, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82.thread ], [ %.191, %.critedge ] ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.193, i64 40
  %i.es = load i32, ptr %i.er, align 8
  %.not69 = icmp slt i32 %i.es, %i.bv
  br i1 %.not69, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph94
  %.not70 = icmp eq ptr %.193, %i.b
  %.not71 = icmp eq ptr %.193, %i.d
  %or.cond83 = or i1 %.not70, %.not71
  br i1 %or.cond83, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.et = getelementptr inbounds nuw i8, ptr %.193, i64 8
  %i.eu = load double, ptr %i.et, align 8         ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.193, i64 16
  %i.ew = load double, ptr %i.ev, align 8         ; 5 uses
  %i.ex = fsub double %i.k, %i.eu                 ; 2 uses
  %i.ey = fsub double %i.h, %i.ew                 ; 2 uses
  %i.ez = fmul double %i.ex, %i.ey
  %i.fa = fsub double %i.p, %i.eu                 ; 2 uses
  %i.fb = fsub double %i.s, %i.ew                 ; 2 uses
  %i.fc = fmul double %i.fa, %i.fb
  %i.fd = fcmp ult double %i.ez, %i.fc
  br i1 %i.fd, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fe = fsub double %i.f, %i.ew                 ; 2 uses
  %i.ff = fmul double %i.fa, %i.fe
  %i.fg = fsub double %i.m, %i.eu                 ; 2 uses
  %i.fh = fmul double %i.fg, %i.ey
  %i.fi = fcmp ult double %i.ff, %i.fh
  br i1 %i.fi, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82.thread, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82

_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82: ; preds = %bb.i
  %i.fj = fmul double %i.fg, %i.fb
  %i.fk = fmul double %i.ex, %i.fe
  %i.fl = fcmp ult double %i.fj, %i.fk
  br i1 %i.fl, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82
  %i.fm = getelementptr inbounds nuw i8, ptr %.193, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.193, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
end_hunk_0
