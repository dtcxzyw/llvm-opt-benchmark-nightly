Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/TriangulateProcess?download=true
inline.NumInlined: 605
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE9constructIJRKjRKdSB_EEEPS4_DpOT_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6mapbox6detail6EarcutIjE10indexCurveEPNS2_4NodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.am, %bb.d ]   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 40 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.g = load double, ptr %i.a, align 8
  %i.h = load double, ptr %i.b, align 8
  %i.i = load double, ptr %i.c, align 8
  %i.j = load <2 x double>, ptr %i.f, align 8
  %i.k = insertelement <2 x double> poison, double %i.g, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.i, i64 1
  %i.m = fsub <2 x double> %i.j, %i.l
  %i.n = insertelement <2 x double> poison, double %i.h, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = fptosi <2 x double> %i.q to <2 x i32>    ; 2 uses
  %i.s = shl <2 x i32> %i.r, splat (i32 8)
  %i.t = or <2 x i32> %i.s, %i.r
  %i.u = and <2 x i32> %i.t, splat (i32 16711935) ; 2 uses
  %i.v = shl nuw nsw <2 x i32> %i.u, splat (i32 4)
  %i.w = or <2 x i32> %i.v, %i.u
  %i.x = and <2 x i32> %i.w, splat (i32 252645135) ; 2 uses
  %i.y = shl nuw nsw <2 x i32> %i.x, splat (i32 2)
  %i.z = or <2 x i32> %i.y, %i.x
  %i.aa = and <2 x i32> %i.z, splat (i32 858993459) ; 3 uses
  %i.ab = shl nuw <2 x i32> %i.aa, <i32 2, i32 1>
  %i.ac = extractelement <2 x i32> %i.aa, i64 0
  %i.ad = shl nuw nsw i32 %i.ac, 1
  %i.ae = insertelement <2 x i32> %i.aa, i32 %i.ad, i64 0
  %i.af = or <2 x i32> %i.ab, %i.ae
  %i.ag = and <2 x i32> %i.af, <i32 -1431655766, i32 1431655765> ; 2 uses
  %shift = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i32> %i.ag, %shift
  %i.ah = extractelement <2 x i32> %foldExtExtBinop, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ai = phi i32 [ %i.ah, %bb.c ], [ %i.e, %bb.b ]
  store i32 %i.ai, ptr %i.d, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.am = load ptr, ptr %i.al, align 8            ; 4 uses
  %i.an = load <2 x ptr>, ptr %i.aj, align 8
  store <2 x ptr> %i.an, ptr %i.ak, align 8
  %.not19 = icmp eq ptr %i.am, %1
  br i1 %.not19, label %bb.e, label %bb.b, !llvm.loop !61

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store ptr null, ptr %i.aq, align 8
  store ptr null, ptr %i.ao, align 8
  br label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %._crit_edge81.i, %bb.e
  %.058.i = phi ptr [ %i.am, %bb.e ], [ %.260.us.i, %._crit_edge81.i ] ; 2 uses
  %.0.i = phi i32 [ 1, %bb.e ], [ %i.bw, %._crit_edge81.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.058.i) ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.loopexit.us.i, %.lr.ph80.i
  %.04678.us.i = phi i32 [ %i.ar, %.loopexit.us.i ], [ 0, %.lr.ph80.i ] ; 2 uses
  %.04877.us.i = phi ptr [ %.149.us.i, %.loopexit.us.i ], [ null, %.lr.ph80.i ]
  %.05576.us.i = phi ptr [ %.253.us.i, %.loopexit.us.i ], [ %.058.i, %.lr.ph80.i ] ; 2 uses
  %.15975.us.i = phi ptr [ %.260.us.i, %.loopexit.us.i ], [ null, %.lr.ph80.i ]
  %i.ar = add nuw nsw i32 %.04678.us.i, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %exitcond.not.i = icmp eq i32 %i.as, %.0.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i.preheader, label %bb.g, !llvm.loop !62

bb.g:                                             ; preds = %bb.f, %.lr.ph.us.i
  %.04469.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.as, %bb.f ]
  %.05167.us.i = phi ptr [ %.05576.us.i, %.lr.ph.us.i ], [ %i.au, %bb.f ]
  %i.as = add nuw nsw i32 %.04469.us.i, 1         ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05167.us.i, i64 56
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %.not64.us.i = icmp eq ptr %i.au, null
  br i1 %.not64.us.i, label %._crit_edge.us.i.preheader, label %bb.f

._crit_edge.us.i.preheader:                       ; preds = %bb.g, %bb.f
  %.2.us.i.ph = phi i32 [ %.0.i, %bb.f ], [ %i.as, %bb.g ]
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.preheader, %bb.p
  %.260.us.i = phi ptr [ %.361.us.i, %bb.p ], [ %.15975.us.i, %._crit_edge.us.i.preheader ] ; 3 uses
  %.156.us.i = phi ptr [ %.257.us.i, %bb.p ], [ %.05576.us.i, %._crit_edge.us.i.preheader ] ; 7 uses
  %.253.us.i = phi ptr [ %.354.us.i, %bb.p ], [ %i.au, %._crit_edge.us.i.preheader ] ; 11 uses
  %.149.us.i = phi ptr [ %.050.us.i, %bb.p ], [ %.04877.us.i, %._crit_edge.us.i.preheader ] ; 5 uses
  %.2.us.i = phi i32 [ %.3.us.i, %bb.p ], [ %.2.us.i.ph, %._crit_edge.us.i.preheader ] ; 5 uses
  %.043.us.i = phi i32 [ %.1.us.i, %bb.p ], [ %.0.i, %._crit_edge.us.i.preheader ] ; 6 uses
  %i.av = icmp sgt i32 %.2.us.i, 0
  br i1 %i.av, label %.critedge.thread.us.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.us.i
  %i.aw = icmp sgt i32 %.043.us.i, 0
  %i.ax = icmp ne ptr %.253.us.i, null
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %.critedge.us.i, label %.loopexit.us.i

.critedge.us.i:                                   ; preds = %bb.h
  %i.az = icmp eq i32 %.2.us.i, 0
  br i1 %i.az, label %bb.i, label %.critedge.thread.us.i

bb.i:                                             ; preds = %.critedge.us.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = add nsw i32 %.043.us.i, -1
  br label %bb.n

.critedge.thread.us.i:                            ; preds = %.critedge.us.i, %._crit_edge.us.i
  %i.bd = icmp ne i32 %.043.us.i, 0
  %i.be = icmp ne ptr %.253.us.i, null
  %or.cond.us.i = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond.us.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge.thread.us.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = add nsw i32 %.2.us.i, -1
  br label %bb.n

bb.k:                                             ; preds = %.critedge.thread.us.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 40
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 40
  %i.bl = load i32, ptr %i.bk, align 8
  %.not65.us.i = icmp sgt i32 %i.bj, %i.bl
  br i1 %.not65.us.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %.156.us.i, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = add nsw i32 %.2.us.i, -1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %.253.us.i, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = add nsw i32 %.043.us.i, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  %.257.us.i = phi ptr [ %.156.us.i, %bb.i ], [ %i.bn, %bb.l ], [ %.156.us.i, %bb.m ], [ %i.bg, %bb.j ]
  %.354.us.i = phi ptr [ %i.bb, %bb.i ], [ %.253.us.i, %bb.l ], [ %i.bq, %bb.m ], [ %.253.us.i, %bb.j ]
  %.050.us.i = phi ptr [ %.253.us.i, %bb.i ], [ %.156.us.i, %bb.l ], [ %.253.us.i, %bb.m ], [ %.156.us.i, %bb.j ] ; 4 uses
  %.3.us.i = phi i32 [ 0, %bb.i ], [ %i.bo, %bb.l ], [ %.2.us.i, %bb.m ], [ %i.bh, %bb.j ]
  %.1.us.i = phi i32 [ %i.bc, %bb.i ], [ %.043.us.i, %bb.l ], [ %i.br, %bb.m ], [ %.043.us.i, %bb.j ]
  %.not66.us.i = icmp eq ptr %.149.us.i, null
  br i1 %.not66.us.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %.149.us.i, i64 56
  store ptr %.050.us.i, ptr %i.bs, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.361.us.i = phi ptr [ %.260.us.i, %bb.o ], [ %.050.us.i, %bb.n ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.050.us.i, i64 48
  store ptr %.149.us.i, ptr %i.bt, align 8
  br label %._crit_edge.us.i, !llvm.loop !63

.loopexit.us.i:                                   ; preds = %bb.h
  %.not.us.i = icmp eq ptr %.253.us.i, null
  br i1 %.not.us.i, label %._crit_edge81.i, label %.lr.ph.us.i, !llvm.loop !64

._crit_edge81.i:                                  ; preds = %.loopexit.us.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.149.us.i, i64 56
  store ptr null, ptr %i.bu, align 8
  %i.bv = icmp eq i32 %.04678.us.i, 0
  %i.bw = shl nuw nsw i32 %.0.i, 1
  br i1 %i.bv, label %_ZN6mapbox6detail6EarcutIjE10sortLinkedEPNS2_4NodeE.exit, label %.lr.ph80.i, !llvm.loop !65

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
  %..i = select i1 %i.y, ptr %i.j, ptr %i.l
  %i.z = select i1 %i.y, double %i.k, double %i.m
  %i.aa = fcmp olt double %i.z, %i.p
  %..i75 = select i1 %i.aa, ptr %..i, ptr %i.o
  %2 = load double, ptr %..i75, align 8
  %i.ab = fcmp olt double %i.s, %i.f              ; 2 uses
  %..i76 = select i1 %i.ab, ptr %i.r, ptr %i.e
  %i.ac = select i1 %i.ab, double %i.s, double %i.f
  %i.ad = fcmp olt double %i.ac, %i.h
  %..i77 = select i1 %i.ad, ptr %..i76, ptr %i.g
  %3 = load double, ptr %..i77, align 8
  %i.ae = fcmp olt double %i.m, %i.k              ; 2 uses
  %..i78 = select i1 %i.ae, ptr %i.j, ptr %i.l
  %i.af = select i1 %i.ae, double %i.k, double %i.m
  %i.ag = fcmp olt double %i.p, %i.af
  %..i79 = select i1 %i.ag, ptr %..i78, ptr %i.o
  %4 = load double, ptr %..i79, align 8
  %i.ah = fcmp olt double %i.f, %i.s              ; 2 uses
  %..i80 = select i1 %i.ah, ptr %i.r, ptr %i.e
  %i.ai = select i1 %i.ah, double %i.s, double %i.f
  %i.aj = fcmp olt double %i.h, %i.ai
  %..i81 = select i1 %i.aj, ptr %..i80, ptr %i.g
  %5 = load double, ptr %..i81, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load double, ptr %i.ak, align 8         ; 2 uses
  %i.am = fsub double %2, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load double, ptr %i.ap, align 8         ; 2 uses
  %i.ar = fsub double %3, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.am, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  %i.au = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = fmul <2 x double> %i.at, %i.av
  %i.ax = fptosi <2 x double> %i.aw to <2 x i32>  ; 2 uses
  %i.ay = shl <2 x i32> %i.ax, splat (i32 8)
  %i.az = or <2 x i32> %i.ay, %i.ax
  %i.ba = and <2 x i32> %i.az, splat (i32 16711935) ; 2 uses
  %i.bb = shl nuw nsw <2 x i32> %i.ba, splat (i32 4)
  %i.bc = or <2 x i32> %i.bb, %i.ba
  %i.bd = and <2 x i32> %i.bc, splat (i32 252645135) ; 2 uses
  %i.be = shl nuw nsw <2 x i32> %i.bd, splat (i32 2)
  %i.bf = or <2 x i32> %i.be, %i.bd
  %i.bg = and <2 x i32> %i.bf, splat (i32 858993459) ; 3 uses
  %i.bh = extractelement <2 x i32> %i.bg, i64 1
  %i.bi = shl nuw i32 %i.bh, 2
  %i.bj = shl nuw nsw <2 x i32> %i.bg, splat (i32 1)
  %i.bk = insertelement <2 x i32> %i.bg, i32 %i.bi, i64 1
  %i.bl = or <2 x i32> %i.bj, %i.bk
  %i.bm = and <2 x i32> %i.bl, <i32 1431655765, i32 -1431655766> ; 2 uses
  %shift = shufflevector <2 x i32> %i.bm, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i32> %shift, %i.bm
  %i.bn = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.bo = fsub double %4, %i.al
  %i.bp = fsub double %5, %i.aq
  %i.bq = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bp, i64 1
  %i.bs = fmul <2 x double> %i.br, %i.av
  %i.bt = fptosi <2 x double> %i.bs to <2 x i32>  ; 2 uses
  %i.bu = shl <2 x i32> %i.bt, splat (i32 8)
  %i.bv = or <2 x i32> %i.bu, %i.bt
  %i.bw = and <2 x i32> %i.bv, splat (i32 16711935) ; 2 uses
  %i.bx = shl nuw nsw <2 x i32> %i.bw, splat (i32 4)
  %i.by = or <2 x i32> %i.bx, %i.bw
  %i.bz = and <2 x i32> %i.by, splat (i32 252645135) ; 2 uses
  %i.ca = shl nuw nsw <2 x i32> %i.bz, splat (i32 2)
  %i.cb = or <2 x i32> %i.ca, %i.bz
  %i.cc = and <2 x i32> %i.cb, splat (i32 858993459) ; 3 uses
  %i.cd = extractelement <2 x i32> %i.cc, i64 1
  %i.ce = shl nuw i32 %i.cd, 2
  %i.cf = shl nuw nsw <2 x i32> %i.cc, splat (i32 1)
  %i.cg = insertelement <2 x i32> %i.cc, i32 %i.ce, i64 1
  %i.ch = or <2 x i32> %i.cf, %i.cg
  %i.ci = and <2 x i32> %i.ch, <i32 1431655765, i32 -1431655766> ; 2 uses
  %shift103 = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop104 = or disjoint <2 x i32> %shift103, %i.ci
  %i.cj = extractelement <2 x i32> %foldExtExtBinop104, i64 0
  %.0.in85 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.086 = load ptr, ptr %.0.in85, align 8         ; 2 uses
  %.not87 = icmp eq ptr %.086, null
  br i1 %.not87, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ck = insertelement <2 x double> poison, double %i.k, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.h, i64 1
  %i.cm = insertelement <2 x double> poison, double %i.p, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.s, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread
  %.088 = phi ptr [ %.0, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread ], [ %.086, %.lr.ph.preheader ] ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.088, i64 40
  %i.cp = load i32, ptr %i.co, align 8
  %.not67 = icmp sgt i32 %i.cp, %i.cj
  br i1 %.not67, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.not72 = icmp eq ptr %.088, %i.b
  %.not73 = icmp eq ptr %.088, %i.d
  %or.cond = or i1 %.not72, %.not73
  br i1 %or.cond, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cq = getelementptr inbounds nuw i8, ptr %.088, i64 8
  %i.cr = load <2 x double>, ptr %i.cq, align 8   ; 4 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 1 ; 3 uses
  %i.ct = extractelement <2 x double> %i.cr, i64 0 ; 3 uses
  %i.cu = fsub <2 x double> %i.cl, %i.cr          ; 4 uses
  %i.cv = fsub <2 x double> %i.cn, %i.cr          ; 4 uses
  %i.cw = shufflevector <2 x double> %i.cu, <2 x double> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.cx = shufflevector <2 x double> %i.cu, <2 x double> %i.cv, <2 x i32> <i32 1, i32 3>
  %i.cy = fmul <2 x double> %i.cw, %i.cx          ; 2 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 0
  %i.da = extractelement <2 x double> %i.cy, i64 1
  %i.db = fcmp ult double %i.cz, %i.da
  br i1 %i.db, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dc = fsub double %i.f, %i.cs                 ; 2 uses
  %i.dd = extractelement <2 x double> %i.cv, i64 0
  %i.de = fmul double %i.dd, %i.dc
  %i.df = fsub double %i.m, %i.ct                 ; 2 uses
  %i.dg = extractelement <2 x double> %i.cu, i64 1
  %i.dh = fmul double %i.df, %i.dg
  %i.di = fcmp ult double %i.de, %i.dh
  br i1 %i.di, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit

_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit: ; preds = %bb.e
  %i.dj = extractelement <2 x double> %i.cv, i64 1
  %i.dk = fmul double %i.df, %i.dj
  %i.dl = extractelement <2 x double> %i.cu, i64 0
  %i.dm = fmul double %i.dl, %i.dc
  %i.dn = fcmp ult double %i.dk, %i.dm
  br i1 %i.dn, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit
  %i.do = getelementptr inbounds nuw i8, ptr %.088, i64 24
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.088, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dt = load double, ptr %i.ds, align 8
  %i.du = fsub double %i.cs, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dw = load double, ptr %i.dv, align 8
  %i.dx = fsub double %i.dw, %i.ct
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dz = load double, ptr %i.dy, align 8
  %i.ea = fsub double %i.ct, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.ec = load double, ptr %i.eb, align 8
  %i.ed = fsub double %i.ec, %i.cs
  %i.ee = fneg double %i.ed
  %i.ef = fmul double %i.ea, %i.ee
  %i.eg = tail call noundef double @llvm.fmuladd.f64(double %i.du, double %i.dx, double %i.ef)
  %i.eh = fcmp ult double %i.eg, 0.000000e+00
  br i1 %i.eh, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, label %.critedge2

_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread: ; preds = %bb.d, %bb.e, %bb.f, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit, %bb.c
  %.0.in = getelementptr inbounds nuw i8, ptr %.088, i64 56
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !66

.critedge:                                        ; preds = %.lr.ph, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit.thread, %bb.b
  %.1.in90 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.191 = load ptr, ptr %.1.in90, align 8         ; 2 uses
  %.not6892 = icmp eq ptr %.191, null
  br i1 %.not6892, label %.critedge2, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.critedge
  %i.ei = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.h, i64 1
  %i.ek = insertelement <2 x double> poison, double %i.p, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.s, i64 1
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82.thread
  %.193 = phi ptr [ %.1, %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82.thread ], [ %.191, %.lr.ph94.preheader ] ; 7 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.193, i64 40
  %i.en = load i32, ptr %i.em, align 8
  %.not69 = icmp slt i32 %i.en, %i.bn
  br i1 %.not69, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph94
  %.not70 = icmp eq ptr %.193, %i.b
  %.not71 = icmp eq ptr %.193, %i.d
  %or.cond83 = or i1 %.not70, %.not71
  br i1 %or.cond83, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eo = getelementptr inbounds nuw i8, ptr %.193, i64 8
  %i.ep = load <2 x double>, ptr %i.eo, align 8   ; 4 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 1 ; 3 uses
  %i.er = extractelement <2 x double> %i.ep, i64 0 ; 3 uses
  %i.es = fsub <2 x double> %i.ej, %i.ep          ; 4 uses
  %i.et = fsub <2 x double> %i.el, %i.ep          ; 4 uses
  %i.eu = shufflevector <2 x double> %i.es, <2 x double> %i.et, <2 x i32> <i32 0, i32 2>
  %i.ev = shufflevector <2 x double> %i.es, <2 x double> %i.et, <2 x i32> <i32 1, i32 3>
  %i.ew = fmul <2 x double> %i.eu, %i.ev          ; 2 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 0
  %i.ey = extractelement <2 x double> %i.ew, i64 1
  %i.ez = fcmp ult double %i.ex, %i.ey
  br i1 %i.ez, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fa = fsub double %i.f, %i.eq                 ; 2 uses
  %i.fb = extractelement <2 x double> %i.et, i64 0
  %i.fc = fmul double %i.fb, %i.fa
  %i.fd = fsub double %i.m, %i.er                 ; 2 uses
  %i.fe = extractelement <2 x double> %i.es, i64 1
  %i.ff = fmul double %i.fd, %i.fe
  %i.fg = fcmp ult double %i.fc, %i.ff
  br i1 %i.fg, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82.thread, label %_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82

_ZNK6mapbox6detail6EarcutIjE15pointInTriangleEdddddddd.exit82: ; preds = %bb.i
  %i.fh = extractelement <2 x double> %i.et, i64 1
  %i.fi = fmul double %i.fd, %i.fh
  %i.fj = extractelement <2 x double> %i.es, i64 0
  %i.fk = fmul double %i.fj, %i.fa
  %i.fl = fcmp ult double %i.fi, %i.fk
end_hunk_0
