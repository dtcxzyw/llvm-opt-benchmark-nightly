inline.NumInlined: 129
inline.NumDeleted: 49
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"PointEvent - null node\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [26 x i8] c"EdgeEvent - null triangle\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"EdgeEvent - collinear points not supported\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"FlipEdgeEvent - null neighbor across\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"[Unsupported] Opposing point on constrained edge\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"FlipScanEdgeEvent - null neighbor across\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"FlipScanEdgeEvent - null opposing point\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"FlipScanEdgeEvent - null on either of points\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN3p2t5SweepD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN3p2t5SweepD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN3p2t8Orient2dERKNS_5PointES2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x double>, ptr %2, align 8       ; 2 uses
  %i.b = load <2 x double>, ptr %0, align 8
  %i.c = fsub <2 x double> %i.b, %i.a
  %i.d = load <2 x double>, ptr %1, align 8
  %i.e = fsub <2 x double> %i.d, %i.a
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.g = fmul <2 x double> %i.c, %i.f             ; 2 uses
  %shift = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.g, %shift
  %i.h = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  %i.j = fcmp ogt double %i.h, 0.000000e+00
  %.12 = zext i1 %i.j to i32
  %i.k = select i1 %i.i, i32 2, i32 %.12
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8             ; 2 uses
  %i.b = load double, ptr %1, align 8             ; 2 uses
  %i.c = fsub double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 2 uses
  %i.h = fsub double %i.e, %i.g
  %i.i = load double, ptr %3, align 8             ; 2 uses
  %i.j = fsub double %i.i, %i.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load double, ptr %i.k, align 8           ; 2 uses
  %i.m = fsub double %i.l, %i.g
  %i.n = fneg double %i.m
  %i.o = fmul double %i.j, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.c, double %i.h, double %i.o)
  %i.q = fcmp ult double %i.p, f0xBD719799812DEA11
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load double, ptr %2, align 8             ; 2 uses
  %i.s = fsub double %i.a, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load double, ptr %i.t, align 8           ; 2 uses
  %i.v = fsub double %i.e, %i.u
  %i.w = fsub double %i.i, %i.r
  %i.x = fsub double %i.l, %i.u
  %i.y = fneg double %i.x
  %i.z = fmul double %i.w, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.s, double %i.v, double %i.z)
  %i.ab = fcmp ugt double %i.aa, f0x3D719799812DEA11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i1 [ %i.ab, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep11TriangulateERNS_12SweepContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN3p2t12SweepContext17InitTriangulationEv(ptr noundef nonnull align 8 dereferenceable(200) %1)
  tail call void @_ZN3p2t12SweepContext20CreateAdvancingFrontEv(ptr noundef nonnull align 8 dereferenceable(200) %1)
  tail call void @_ZN3p2t5Sweep11SweepPointsERNS_12SweepContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.g, null
  br i1 %.not12.i, label %_ZN3p2t5Sweep19FinalizationPolygonERNS_12SweepContextE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.013.i = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.i = tail call noundef zeroext i1 @_ZN3p2t8Triangle20GetConstrainedEdgeCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %.013.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  br i1 %i.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = tail call noundef ptr @_ZN3p2t8Triangle11NeighborCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %.013.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h) ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN3p2t5Sweep19FinalizationPolygonERNS_12SweepContextE.exit, label %.lr.ph.i, !llvm.loop !3

.critedge.i:                                      ; preds = %.lr.ph.i
  tail call void @_ZN3p2t12SweepContext9MeshCleanERNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(57) %.013.i)
  br label %_ZN3p2t5Sweep19FinalizationPolygonERNS_12SweepContextE.exit

_ZN3p2t5Sweep19FinalizationPolygonERNS_12SweepContextE.exit: ; preds = %bb.b, %bb.a, %.critedge.i
  ret void
}

declare void @_ZN3p2t12SweepContext17InitTriangulationEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #3

declare void @_ZN3p2t12SweepContext20CreateAdvancingFrontEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep11SweepPointsERNS_12SweepContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ugt i64 %i.g, 8
  br i1 %i.h, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.b

._crit_edge75:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph74, %._crit_edge
  %.072 = phi i64 [ 1, %.lr.ph74 ], [ %i.t, %._crit_edge ] ; 2 uses
  %i.k = tail call noundef ptr @_ZN3p2t12SweepContext8GetPointEm(ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef %.072) ; 3 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3p2t5Sweep10PointEventERNS_12SweepContextERNS_5PointE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.k) ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not69 = icmp eq ptr %i.n, %i.p
  br i1 %.not69, label %._crit_edge, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit, %bb.b
  %i.t = add nuw i64 %.072, 1                     ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = icmp ult i64 %i.t, %i.z
  br i1 %i.aa, label %bb.b, label %._crit_edge75, !llvm.loop !5

bb.c:                                             ; preds = %.lr.ph71, %_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit
  %.sroa.036.070 = phi ptr [ %i.n, %.lr.ph71 ], [ %i.sb, %_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.036.070, align 8   ; 9 uses
  store ptr %i.ab, ptr %i.i, align 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 11 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load double, ptr %i.af, align 8
  %i.ah = fcmp ogt double %i.ad, %i.ag
  %i.ai = zext i1 %i.ah to i8
  store i8 %i.ai, ptr %i.j, align 8
  %i.aj = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.ak = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.al = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.am = tail call noundef i32 @_ZN3p2t8Triangle9EdgeIndexEPKNS_5PointES3_(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.al) ; 3 uses
  %.not.i.not.i = icmp eq i32 %i.am, -1
  br i1 %.not.i.not.i, label %_ZN3p2t5Sweep20IsEdgeSideOfTriangleERNS_8TriangleERNS_5PointES4_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3p2t8Triangle19MarkConstrainedEdgeEi(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, i32 noundef %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not14.i.i = icmp eq ptr %i.aq, null
  br i1 %.not14.i.i, label %_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3p2t8Triangle19MarkConstrainedEdgeEPNS_5PointES2_(ptr noundef nonnull align 8 dereferenceable(57) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.al)
  br label %_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit

_ZN3p2t5Sweep20IsEdgeSideOfTriangleERNS_8TriangleERNS_5PointES4_.exit.i: ; preds = %bb.c
  %i.ar = load i8, ptr %i.j, align 8, !range !6, !noundef !7
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load ptr, ptr %i.ab, align 8            ; 7 uses
  %i.au = load double, ptr %i.at, align 8         ; 6 uses
  br i1 %i.as, label %bb.f, label %bb.t

bb.f:                                             ; preds = %_ZN3p2t5Sweep20IsEdgeSideOfTriangleERNS_8TriangleERNS_5PointES4_.exit.i
  %i.av = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8         ; 2 uses
  %i.ay = fcmp olt double %i.ax, %i.au
  br i1 %i.ay, label %.lr.ph.i.i, label %_ZN3p2t5Sweep13FillEdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit
  %.pre11.i.i125 = phi double [ %.pre11.i.i126, %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ], [ %i.au, %bb.f ] ; 4 uses
  %.pre.i.i122 = phi ptr [ %.pre.i.i118, %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ], [ %i.at, %bb.f ] ; 4 uses
  %i.az = phi double [ %i.ja, %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ], [ %i.au, %bb.f ] ; 5 uses
  %i.ba = phi ptr [ %i.jb, %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ], [ %i.at, %bb.f ] ; 3 uses
  %i.bb = phi double [ %i.jf, %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ], [ %i.ax, %bb.f ]
  %i.bc = phi ptr [ %i.je, %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ], [ %i.aw, %bb.f ]
  %i.bd = phi ptr [ %i.jd, %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ], [ %i.av, %bb.f ]
  %.010.i.i = phi ptr [ %.1.i.i, %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ], [ %i.l, %bb.f ] ; 9 uses
  %i.be = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.bf = load double, ptr %i.be, align 8
  %i.bg = fsub double %i.bf, %i.az
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load double, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = load double, ptr %i.bj, align 8         ; 2 uses
  %i.bl = fsub double %i.bi, %i.bk
  %i.bm = fmul double %i.bg, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = fsub double %i.bo, %i.bk
  %i.bq = fsub double %i.bb, %i.az
  %i.br = fmul double %i.bq, %i.bp
  %i.bs = fcmp ogt double %i.bm, %i.br
  br i1 %i.bs, label %bb.g, label %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bt = load ptr, ptr %.010.i.i, align 8        ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8         ; 2 uses
  %i.bv = fcmp olt double %i.bu, %i.az
  br i1 %i.bv, label %.lr.ph.i13, label %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit

.lr.ph.i13:                                       ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN3p2t5Sweep24FillRightConvexEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit, %.lr.ph.i13
  %.pre11.i.i124 = phi double [ %.pre11.i.i125, %.lr.ph.i13 ], [ %.pre11.i.i123, %_ZN3p2t5Sweep24FillRightConvexEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ]
  %.pre.i.i121 = phi ptr [ %.pre.i.i122, %.lr.ph.i13 ], [ %.pre.i.i120, %_ZN3p2t5Sweep24FillRightConvexEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ]
  %i.bx = phi double [ %i.az, %.lr.ph.i13 ], [ %i.iv, %_ZN3p2t5Sweep24FillRightConvexEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ] ; 3 uses
  %i.by = phi ptr [ %i.ba, %.lr.ph.i13 ], [ %i.iw, %_ZN3p2t5Sweep24FillRightConvexEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ] ; 2 uses
  %i.bz = phi double [ %i.bu, %.lr.ph.i13 ], [ %i.ix, %_ZN3p2t5Sweep24FillRightConvexEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ] ; 2 uses
  %i.ca = phi ptr [ %i.bt, %.lr.ph.i13 ], [ %i.iy, %_ZN3p2t5Sweep24FillRightConvexEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ] ; 2 uses
  %i.cb = load ptr, ptr %i.bw, align 8            ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8            ; 4 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %i.cg = load double, ptr %i.cf, align 8         ; 4 uses
  %i.ch = fsub double %i.bz, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = load double, ptr %i.ci, align 8         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load double, ptr %i.ck, align 8         ; 4 uses
  %i.cm = fsub double %i.cj, %i.cl
  %i.cn = fmul double %i.ch, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cp = load double, ptr %i.co, align 8
  %i.cq = fsub double %i.cp, %i.cl
  %i.cr = load double, ptr %i.cc, align 8         ; 2 uses
  %i.cs = fsub double %i.cr, %i.cg
  %i.ct = fmul double %i.cq, %i.cs
  %i.cu = fcmp ogt double %i.cn, %i.ct
  br i1 %i.cu, label %tailrecurse.i.i15, label %tailrecurse.i30.preheader

tailrecurse.i30.preheader:                        ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 3 uses
  %i.cy = load double, ptr %i.cx, align 8         ; 3 uses
  %i.cz = fsub double %i.cr, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load double, ptr %i.da, align 8         ; 3 uses
  %i.dc = fsub double %i.cl, %i.db
  %i.dd = fmul double %i.cz, %i.dc
  %i.de = fsub double %i.cj, %i.db
  %i.df = fsub double %i.cg, %i.cy
  %i.dg = fmul double %i.df, %i.de
  %i.dh = fcmp ogt double %i.dd, %i.dg
  br i1 %i.dh, label %tailrecurse.i30._crit_edge, label %.lr.ph66

.lr.ph66:                                         ; preds = %tailrecurse.i30.preheader
  %i.di = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.dj = load double, ptr %i.di, align 8
  %i.dk = fsub double %i.dj, %i.bx
  %i.dl = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.dm = load double, ptr %i.dl, align 8         ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.do = load double, ptr %i.dn, align 8
  %i.dp = fsub double %i.do, %i.dm
  br label %bb.s

tailrecurse.i.i15:                                ; preds = %bb.h, %bb.m
  %i.dq = phi ptr [ %i.el, %bb.m ], [ %i.cb, %bb.h ] ; 4 uses
  %i.dr = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 4 uses
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = load ptr, ptr %i.dq, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void @_ZN3p2t8TriangleC1ERNS_5PointES2_S2_(ptr noundef nonnull align 8 dereferenceable(57) %i.dr, ptr noundef nonnull align 8 dereferenceable(40) %i.du, ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 8 dereferenceable(40) %i.dy)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %tailrecurse.i.i15
  %i.dz = load ptr, ptr %i.ds, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void @_ZN3p2t8Triangle12MarkNeighborERS0_(ptr noundef nonnull align 8 dereferenceable(57) %i.dr, ptr noundef nonnull align 8 dereferenceable(57) %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  tail call void @_ZN3p2t8Triangle12MarkNeighborERS0_(ptr noundef nonnull align 8 dereferenceable(57) %i.dr, ptr noundef nonnull align 8 dereferenceable(57) %i.ed)
  tail call void @_ZN3p2t12SweepContext8AddToMapEPNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull %i.dr)
  %i.ee = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.ef = load ptr, ptr %i.ds, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store ptr %i.ee, ptr %i.eg, align 8
  %i.eh = load ptr, ptr %i.ds, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store ptr %i.eh, ptr %i.ei, align 8
  %i.ej = tail call noundef zeroext i1 @_ZN3p2t5Sweep8LegalizeERNS_12SweepContextERNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(57) %i.dr)
  br i1 %i.ej, label %_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN3p2t12SweepContext18MapTriangleToNodesERNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(57) %i.dr)
  br label %_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE.exit33

common.resume:                                    ; preds = %bb.ad, %bb.y, %bb.p, %bb.k
  %.lcssa165.sink = phi ptr [ %i.oy, %bb.ad ], [ %i.mg, %bb.y ], [ %i.gi, %bb.p ], [ %i.dr, %bb.k ]
  %common.resume.op = phi { ptr, i32 } [ %i.pr, %bb.ad ], [ %i.mz, %bb.y ], [ %i.hb, %bb.p ], [ %i.ek, %bb.k ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa165.sink, i64 noundef 64) #18
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %tailrecurse.i.i15
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE.exit33: ; preds = %bb.i, %bb.j
  %i.el = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.en = load ptr, ptr %i.ab, align 8            ; 9 uses
  %.not.i.i16 = icmp eq ptr %i.em, %i.en
  %.pre11.i.i.pre.pre = load double, ptr %i.en, align 8 ; 8 uses
  br i1 %.not.i.i16, label %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE.exit33
  %i.eo = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8
  %i.eq = fsub double %i.ep, %.pre11.i.i.pre.pre
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.es = load double, ptr %i.er, align 8         ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eu = load double, ptr %i.et, align 8
  %i.ev = fsub double %i.eu, %i.es
end_hunk_0
begin_hunk_1_@_ZN3p2t5Sweep13NextFlipPointERNS_5PointES2_RNS_8TriangleES2_:bb.a
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8       ; 2 uses
  %i.b = load <2 x double>, ptr %2, align 8
  %i.c = fsub <2 x double> %i.b, %i.a
  %i.d = load <2 x double>, ptr %4, align 8
  %i.e = fsub <2 x double> %i.d, %i.a
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.g = fmul <2 x double> %i.c, %i.f             ; 2 uses
  %shift = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.g, %shift
  %i.h = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  %i.j = fcmp ogt double %i.h, 0.000000e+00
  %.12.i = zext i1 %i.j to i32
  %i.k = select i1 %i.i, i32 2, i32 %.12.i
  switch i32 %i.k, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN3p2t8Triangle8PointCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN3p2t8Triangle7PointCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #19
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep17FlipScanEdgeEventERNS_12SweepContextERNS_5PointES4_RNS_8TriangleES6_S4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(57) %4, ptr noundef nonnull align 8 dereferenceable(57) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3p2t8Triangle14NeighborAcrossERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

tailrecurse._crit_edge:                           ; preds = %_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit.thread, %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %tailrecurse._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
  unreachable

bb.c:                                             ; preds = %tailrecurse._crit_edge
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.d:                                             ; preds = %.lr.ph, %_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit.thread
  %i.f = phi ptr [ %i.a, %.lr.ph ], [ %i.as, %_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit.thread ] ; 5 uses
  %.tr5260 = phi ptr [ %6, %.lr.ph ], [ %i.ar, %_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit.thread ]
  %.tr5159 = phi ptr [ %5, %.lr.ph ], [ %i.f, %_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit.thread ]
  %i.g = tail call noundef ptr @_ZN3p2t8Triangle13OppositePointERS0_RKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %i.f, ptr noundef nonnull align 8 dereferenceable(57) %.tr5159, ptr noundef nonnull align 8 dereferenceable(40) %.tr5260) ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.6)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %bb.d
  %i.k = tail call noundef ptr @_ZN3p2t8Triangle8PointCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %4, ptr noundef nonnull align 8 dereferenceable(40) %3) ; 3 uses
  %i.l = tail call noundef ptr @_ZN3p2t8Triangle7PointCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %4, ptr noundef nonnull align 8 dereferenceable(40) %3) ; 3 uses
  %i.m = icmp eq ptr %i.k, null
  %i.n = icmp eq ptr %i.l, null
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.7)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.q = load double, ptr %3, align 8             ; 2 uses
  %i.r = load double, ptr %i.k, align 8           ; 2 uses
  %i.s = fsub double %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load double, ptr %i.t, align 8           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = load double, ptr %i.v, align 8           ; 2 uses
  %i.x = fsub double %i.u, %i.w
  %i.y = load double, ptr %i.g, align 8           ; 2 uses
  %i.z = fsub double %i.y, %i.r
  %i.aa = load double, ptr %i.c, align 8          ; 2 uses
  %i.ab = fsub double %i.aa, %i.w
  %i.ac = fneg double %i.ab
  %i.ad = fmul double %i.z, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.s, double %i.x, double %i.ad)
  %i.af = fcmp ult double %i.ae, f0xBD719799812DEA11
  br i1 %i.af, label %_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit, label %_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit.thread

_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit:   ; preds = %bb.l
  %i.ag = load double, ptr %i.l, align 8          ; 2 uses
  %i.ah = fsub double %i.q, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aj = load double, ptr %i.ai, align 8         ; 2 uses
  %i.ak = fsub double %i.u, %i.aj
  %i.al = fsub double %i.y, %i.ag
  %i.am = fsub double %i.aa, %i.aj
  %i.an = fneg double %i.am
  %i.ao = fmul double %i.al, %i.an
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ak, double %i.ao)
  %i.aq = fcmp ugt double %i.ap, f0x3D719799812DEA11
  br i1 %i.aq, label %bb.m, label %_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit.thread

bb.m:                                             ; preds = %_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit
  tail call void @_ZN3p2t5Sweep13FlipEdgeEventERNS_12SweepContextERNS_5PointES4_PNS_8TriangleES4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.g)
  ret void

_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit.thread: ; preds = %bb.l, %_ZN3p2t10InScanAreaERKNS_5PointES2_S2_S2_.exit
  %i.ar = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3p2t5Sweep13NextFlipPointERNS_5PointES2_RNS_8TriangleES2_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(57) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.g) ; 2 uses
  %i.as = tail call noundef ptr @_ZN3p2t8Triangle14NeighborAcrossERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.ar) ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %tailrecurse._crit_edge, label %bb.d

bb.n:                                             ; preds = %bb.g, %bb.k, %bb.c
  %.sink = phi ptr [ %i.i, %bb.g ], [ %i.o, %bb.k ], [ %i.d, %bb.c ]
  %.pn44 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.p, %bb.k ], [ %i.e, %bb.c ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #19
  resume { ptr, i32 } %.pn44
}

declare void @_ZN3p2t8Triangle17ClearDelunayEdgesEv(ptr noundef nonnull align 8 dereferenceable(57)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3p2t5SweepD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.a, %i.c
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.d = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN3p2t4NodeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #18
  br label %_ZNSt6vectorIPN3p2t4NodeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN3p2t4NodeESaIS2_EED2Ev.exit:       ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.04.08 = phi ptr [ %i.l, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.04.08, align 8      ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 40) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = !{ptr @_ZN3p2t5Sweep25FillRightConcaveEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE}
!15 = !{ptr @_ZN3p2t5Sweep24FillLeftConcaveEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE}
end_hunk_1
