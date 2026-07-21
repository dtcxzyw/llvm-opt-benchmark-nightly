inline.NumInlined: 511
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4geos9operation12intersection13clip_to_edgesERdS2_ddRKNS1_9RectangleE:bb.a
_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit33.sink.split: ; preds = %bb.k, %bb.o
  %.sink65 = phi double [ %i.am, %bb.o ], [ %i.ac, %bb.k ]
  %.sink63 = phi double [ %i.ar, %bb.o ], [ %i.ah, %bb.k ]
  %.sink61 = phi double [ %i.ao, %bb.o ], [ %i.ae, %bb.k ]
  %.sink59 = phi double [ %i.aj, %bb.o ], [ %i.z, %bb.k ]
  %i.as = fsub double %3, %.sink65
  %i.at = fdiv double %.sink63, %i.as
  %i.au = fadd double %.sink61, %i.at
  store double %i.au, ptr %0, align 8, !tbaa !7
  store double %.sink59, ptr %1, align 8, !tbaa !7
  br label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit33

_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit33: ; preds = %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit33.sink.split, %._crit_edge.i34, %._crit_edge.i31, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation12intersection21RectangleIntersection10clip_pointEPKNS_4geom5PointERNS1_28RectangleIntersectionBuilderERKNS1_9RectangleE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(82) %1)
  br i1 %i.e, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef double @_ZNK4geos4geom5Point4getXEv(ptr noundef nonnull align 8 dereferenceable(82) %1)
  %i.g = tail call noundef double @_ZNK4geos4geom5Point4getYEv(ptr noundef nonnull align 8 dereferenceable(82) %1)
  %i.h = load <4 x double>, ptr %3, align 8       ; 2 uses
  %i.i = insertelement <4 x double> poison, double %i.f, i64 0
  %i.j = insertelement <4 x double> %i.i, double %i.g, i64 1
  %i.k = shufflevector <4 x double> %i.j, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.l = fcmp olt <4 x double> %i.k, %i.h
  %i.m = fcmp ogt <4 x double> %i.k, %i.h
  %i.n = shufflevector <4 x i1> %i.m, <4 x i1> %i.l, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.o = freeze <4 x i1> %i.n
  %i.p = bitcast <4 x i1> %i.o to i4
  %i.q = icmp eq i4 %i.p, -1
  br i1 %i.q, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit: ; preds = %bb.c
  %i.r = load ptr, ptr %1, align 8, !tbaa !14, !noalias !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 416
  %i.t = load ptr, ptr %i.s, align 8, !noalias !16
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(82) %1), !noalias !16, !inline_history !19
  tail call void @_ZN4geos9operation12intersection28RectangleIntersectionBuilder3addEPNS_4geom5PointE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.u)
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef double @_ZNK4geos4geom5Point4getXEv(ptr noundef nonnull align 8 dereferenceable(82)) local_unnamed_addr #3

declare noundef double @_ZNK4geos4geom5Point4getYEv(ptr noundef nonnull align 8 dereferenceable(82)) local_unnamed_addr #3

declare void @_ZN4geos9operation12intersection28RectangleIntersectionBuilder3addEPNS_4geom5PointE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation12intersection21RectangleIntersection21clip_linestring_partsEPKNS_4geom10LineStringERNS1_28RectangleIntersectionBuilderERKNS1_9RectangleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::unique_ptr.20", align 8 ; 8 uses
  %7 = alloca %"class.std::vector", align 8       ; 13 uses
  %8 = alloca %"class.std::unique_ptr.20", align 8 ; 8 uses
  %9 = alloca %"class.std::vector", align 8       ; 11 uses
  %10 = alloca %"class.std::unique_ptr.20", align 8 ; 8 uses
  %11 = alloca %"class.std::vector", align 8      ; 11 uses
  %12 = alloca %"class.std::unique_ptr.20", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 11 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.en, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.f = invoke noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.c unwind label %bb.m       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.preheader540 unwind label %bb.m

.preheader540:                                    ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.lr.ph.preheader.preheader

.lr.ph.preheader.preheader:                       ; preds = %.preheader540, %.outer.outer.backedge
  %.0159.ph.ph1747 = phi i8 [ 0, %.preheader540 ], [ %.0159.ph.ph.be, %.outer.outer.backedge ] ; 2 uses
  %.0171.ph.ph1746 = phi i64 [ 0, %.preheader540 ], [ %.0171.ph.ph.be, %.outer.outer.backedge ] ; 3 uses
  %.0473.ph.ph1745 = phi double [ 0.000000e+00, %.preheader540 ], [ %.0473.ph.ph.be, %.outer.outer.backedge ] ; 2 uses
  %.0478.ph.ph1744 = phi double [ 0.000000e+00, %.preheader540 ], [ %.0478.ph.ph.be, %.outer.outer.backedge ] ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.0171.ph.ph1746 ; 2 uses
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !7 ; 2 uses
  %i.z = load <4 x double>, ptr %3, align 8       ; 3 uses
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ab = shufflevector <4 x double> %i.aa, <4 x double> %i.z, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ac = shufflevector <4 x double> %i.z, <4 x double> %i.aa, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ad = fcmp olt <4 x double> %i.ab, %i.ac
  %i.ae = freeze <4 x i1> %i.ad
  %i.af = bitcast <4 x i1> %i.ae to i4
  %i.ag = icmp eq i4 %i.af, -1
  br i1 %i.ag, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.preheader
  %i.ah = extractelement <4 x double> %i.z, i64 0
  %i.ai = extractelement <2 x double> %i.y, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer.backedge
  %i.aj = phi double [ %i.hm, %.outer.backedge ], [ %i.ah, %.lr.ph.preheader ] ; 23 uses
  %.pn1748 = phi ptr [ %i.hb, %.outer.backedge ], [ %i.x, %.lr.ph.preheader ]
  %i.ak = phi double [ %i.hl, %.outer.backedge ], [ %i.ai, %.lr.ph.preheader ] ; 4 uses
  %i.al = phi ptr [ %i.ha, %.outer.backedge ], [ %i.w, %.lr.ph.preheader ] ; 5 uses
  %.0478.ph8431731 = phi double [ %.7485, %.outer.backedge ], [ %.0478.ph.ph1744, %.lr.ph.preheader ] ; 3 uses
  %.0473.ph8441730 = phi double [ %.7, %.outer.backedge ], [ %.0473.ph.ph1745, %.lr.ph.preheader ] ; 3 uses
  %.0171.ph8451729 = phi i64 [ %.5176, %.outer.backedge ], [ %.0171.ph.ph1746, %.lr.ph.preheader ] ; 4 uses
  %.0159.ph8461728 = phi i8 [ %.0159.ph.be, %.outer.backedge ], [ %.0159.ph.ph1747, %.lr.ph.preheader ] ; 6 uses
  %.in = getelementptr inbounds nuw i8, ptr %.pn1748, i64 8
  %i.am = load double, ptr %.in, align 8, !tbaa !24 ; 4 uses
  %i.an = load double, ptr %i.j, align 8          ; 23 uses
  %i.ao = load double, ptr %i.k, align 8          ; 23 uses
  %i.ap = load double, ptr %i.l, align 8          ; 23 uses
  %i.aq = fcmp olt double %i.ak, %i.aj            ; 2 uses
  %i.ar = fcmp ogt double %i.ak, %i.an            ; 2 uses
  %or.cond33.i = select i1 %i.aq, i1 true, i1 %i.ar
  %i.as = fcmp olt double %i.am, %i.ao            ; 2 uses
  %or.cond34.i = select i1 %or.cond33.i, i1 true, i1 %i.as
  %i.at = fcmp ogt double %i.am, %i.ap            ; 2 uses
  %or.cond35.i = select i1 %or.cond34.i, i1 true, i1 %i.at
  br i1 %or.cond35.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.au = fcmp oeq double %i.ak, %i.aj
  br i1 %i.au, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = fcmp oeq double %i.ak, %i.an
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i32 [ 0, %bb.e ], [ 16, %bb.f ], [ 4, %bb.d ] ; 3 uses
  %i.aw = fcmp oeq double %i.am, %i.ao
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = or disjoint i32 %.0.i, 32
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit

bb.i:                                             ; preds = %bb.g
  %i.ay = fcmp oeq double %i.am, %i.ap
  br i1 %i.ay, label %bb.j, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit

bb.j:                                             ; preds = %bb.i
  %i.az = or disjoint i32 %.0.i, 8
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit: ; preds = %.outer.backedge, %.lr.ph.preheader.preheader, %bb.h, %bb.i, %bb.j
  %.0159.ph8461647 = phi i8 [ %.0159.ph8461728, %bb.i ], [ %.0159.ph8461728, %bb.j ], [ %.0159.ph8461728, %bb.h ], [ %.0159.ph.ph1747, %.lr.ph.preheader.preheader ], [ %.0159.ph.be, %.outer.backedge ] ; 2 uses
  %.0171.ph8451636 = phi i64 [ %.0171.ph8451729, %bb.i ], [ %.0171.ph8451729, %bb.j ], [ %.0171.ph8451729, %bb.h ], [ %.0171.ph.ph1746, %.lr.ph.preheader.preheader ], [ %.5176, %.outer.backedge ] ; 4 uses
  %.0473.ph8441614 = phi double [ %.0473.ph8441730, %bb.i ], [ %.0473.ph8441730, %bb.j ], [ %.0473.ph8441730, %bb.h ], [ %.0473.ph.ph1745, %.lr.ph.preheader.preheader ], [ %.7, %.outer.backedge ] ; 5 uses
  %.0478.ph8431592 = phi double [ %.0478.ph8431731, %bb.i ], [ %.0478.ph8431731, %bb.j ], [ %.0478.ph8431731, %bb.h ], [ %.0478.ph.ph1744, %.lr.ph.preheader.preheader ], [ %.7485, %.outer.backedge ] ; 5 uses
  %.018.i = phi i32 [ %.0.i, %bb.i ], [ %i.az, %bb.j ], [ %i.ax, %bb.h ], [ 1, %.lr.ph.preheader.preheader ], [ 1, %.outer.backedge ]
  %i.ba = add nuw i64 %.0171.ph8451636, 1         ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %i.d
  br i1 %i.bb, label %.lr.ph1739, label %.critedge10

bb.k:                                             ; preds = %.lr.ph
  %i.bc = add nuw i64 %.0171.ph8451729, 1         ; 9 uses
  %i.bd = icmp ult i64 %i.bc, %i.d                ; 4 uses
  br i1 %i.aq, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.k
  br i1 %i.bd, label %.lr.ph839, label %.critedge

.lr.ph839:                                        ; preds = %.preheader, %bb.l
  %.1172838 = phi i64 [ %i.bh, %bb.l ], [ %i.bc, %.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.1172838
  %i.bf = load double, ptr %i.be, align 8, !tbaa !26
  %i.bg = fcmp olt double %i.bf, %i.aj
  br i1 %i.bg, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph839
  %i.bh = add i64 %.1172838, 1                    ; 2 uses
  %exitcond1158.not = icmp eq i64 %i.bh, %i.d
  br i1 %exitcond1158.not, label %.thread, label %.lr.ph839, !llvm.loop !27

bb.m:                                             ; preds = %bb.c, %bb.b
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.n:                                             ; preds = %bb.k
  br i1 %i.ar, label %.preheader534, label %bb.p

.preheader534:                                    ; preds = %bb.n
  br i1 %i.bd, label %.lr.ph834, label %.critedge

.lr.ph834:                                        ; preds = %.preheader534, %bb.o
  %.2173833 = phi i64 [ %i.bm, %bb.o ], [ %i.bc, %.preheader534 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.2173833
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !26
  %i.bl = fcmp ogt double %i.bk, %i.an
  br i1 %i.bl, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph834
  %i.bm = add i64 %.2173833, 1                    ; 2 uses
  %exitcond1157.not = icmp eq i64 %i.bm, %i.d
  br i1 %exitcond1157.not, label %.thread, label %.lr.ph834, !llvm.loop !29

bb.p:                                             ; preds = %bb.n
  br i1 %i.as, label %.preheader536, label %bb.r

.preheader536:                                    ; preds = %bb.p
  br i1 %i.bd, label %.lr.ph829, label %.critedge

.lr.ph829:                                        ; preds = %.preheader536, %bb.q
  %.3174828 = phi i64 [ %i.br, %bb.q ], [ %i.bc, %.preheader536 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.3174828
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.bq = fcmp olt double %i.bp, %i.ao
  br i1 %i.bq, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.lr.ph829
  %i.br = add i64 %.3174828, 1                    ; 2 uses
  %exitcond1156.not = icmp eq i64 %i.br, %i.d
  br i1 %exitcond1156.not, label %.thread, label %.lr.ph829, !llvm.loop !30

bb.r:                                             ; preds = %bb.p
  %or.cond = select i1 %i.at, i1 %i.bd, i1 false
  br i1 %or.cond, label %.lr.ph825, label %.critedge

.lr.ph825:                                        ; preds = %bb.r, %bb.s
  %.4175824 = phi i64 [ %i.bw, %bb.s ], [ %i.bc, %bb.r ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.4175824
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = fcmp ogt double %i.bu, %i.ap
  br i1 %i.bv, label %bb.s, label %.critedge

bb.s:                                             ; preds = %.lr.ph825
  %i.bw = add i64 %.4175824, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %i.d
  br i1 %exitcond.not, label %.thread, label %.lr.ph825, !llvm.loop !31

.critedge:                                        ; preds = %.lr.ph825, %.lr.ph829, %.lr.ph834, %.lr.ph839, %.preheader536, %.preheader534, %.preheader, %bb.r
  %.5176 = phi i64 [ %.2173833, %.lr.ph834 ], [ %i.bc, %bb.r ], [ %i.bc, %.preheader536 ], [ %.1172838, %.lr.ph839 ], [ %i.bc, %.preheader ], [ %.3174828, %.lr.ph829 ], [ %i.bc, %.preheader534 ], [ %.4175824, %.lr.ph825 ] ; 7 uses
  %.not204 = icmp ult i64 %.5176, %i.d
  br i1 %.not204, label %bb.t, label %.thread

bb.t:                                             ; preds = %.critedge
  %i.bx = getelementptr [24 x i8], ptr %i.al, i64 %.5176 ; 4 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !26 ; 22 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !24 ; 20 uses
  %i.cb = fcmp ogt double %i.by, %i.aj
  %i.cc = fcmp olt double %i.by, %i.an
  %or.cond.i212 = select i1 %i.cb, i1 %i.cc, i1 false
  %i.cd = fcmp ogt double %i.ca, %i.ao
  %or.cond29.i213 = select i1 %or.cond.i212, i1 %i.cd, i1 false
  %i.ce = fcmp olt double %i.ca, %i.ap
  %or.cond32.i214 = select i1 %or.cond29.i213, i1 %i.ce, i1 false
  br i1 %or.cond32.i214, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit220, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = fcmp olt double %i.by, %i.aj
  %i.cg = fcmp ogt double %i.by, %i.an
  %or.cond33.i215 = select i1 %i.cf, i1 true, i1 %i.cg
  %i.ch = fcmp olt double %i.ca, %i.ao
  %or.cond34.i216 = select i1 %or.cond33.i215, i1 true, i1 %i.ch
  %i.ci = fcmp ogt double %i.ca, %i.ap
  %or.cond35.i217 = select i1 %or.cond34.i216, i1 true, i1 %i.ci
  br i1 %or.cond35.i217, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit220, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = fcmp oeq double %i.by, %i.aj
  br i1 %i.cj, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = fcmp oeq double %i.by, %i.an
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.0.i218 = phi i32 [ 0, %bb.w ], [ 16, %bb.x ], [ 4, %bb.v ] ; 3 uses
  %i.cl = fcmp oeq double %i.ca, %i.ao
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cm = or disjoint i32 %.0.i218, 32
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit220

bb.aa:                                            ; preds = %bb.y
  %i.cn = fcmp oeq double %i.ca, %i.ap
  br i1 %i.cn, label %bb.ab, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit220

bb.ab:                                            ; preds = %bb.aa
  %i.co = or disjoint i32 %.0.i218, 8
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit220

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit220: ; preds = %bb.t, %bb.u, %bb.z, %bb.aa, %bb.ab
  %.018.i219 = phi i32 [ 2, %bb.u ], [ 1, %bb.t ], [ %i.cm, %bb.z ], [ %i.co, %bb.ab ], [ %.0.i218, %bb.aa ] ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bx, i64 -24
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !26 ; 5 uses
  %i.cr = getelementptr i8, ptr %i.bx, i64 -16
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !24 ; 3 uses
  %i.ct = fcmp olt double %i.cq, %i.aj
  br i1 %i.ct, label %._crit_edge.i.i, label %bb.ad

._crit_edge.i.i:                                  ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit220
  %i.cu = fcmp oeq double %i.by, %i.aj            ; 2 uses
  %.6484 = select i1 %i.cu, double %i.ca, double %i.cs ; 3 uses
  %.6 = select i1 %i.cu, double %i.by, double %i.cq ; 4 uses
  %i.cv = fcmp une double %.6, %i.by
  br i1 %i.cv, label %bb.ac, label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.cw = fsub double %i.ca, %.6484
  %i.cx = fsub double %i.aj, %.6
  %i.cy = fmul double %i.cx, %i.cw
  br label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i

bb.ad:                                            ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit220
  %i.cz = fcmp ogt double %i.cq, %i.an
  br i1 %i.cz, label %._crit_edge.i28.i, label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i

._crit_edge.i28.i:                                ; preds = %bb.ad
  %i.da = fcmp oeq double %i.by, %i.an            ; 2 uses
  %.5483 = select i1 %i.da, double %i.ca, double %i.cs ; 3 uses
  %.5477 = select i1 %i.da, double %i.by, double %i.cq ; 4 uses
  %i.db = fcmp une double %.5477, %i.by
  br i1 %i.db, label %bb.ae, label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i

bb.ae:                                            ; preds = %._crit_edge.i28.i
  %i.dc = fsub double %i.ca, %.5483
  %i.dd = fsub double %i.an, %.5477
  %i.de = fmul double %i.dd, %i.dc
  br label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i

_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i: ; preds = %bb.ae, %bb.ac
  %.sink58.i = phi double [ %.5477, %bb.ae ], [ %.6, %bb.ac ]
  %.sink56.i = phi double [ %i.de, %bb.ae ], [ %i.cy, %bb.ac ]
  %.sink54.i = phi double [ %.5483, %bb.ae ], [ %.6484, %bb.ac ]
  %.sink.i = phi double [ %i.an, %bb.ae ], [ %i.aj, %bb.ac ]
  %i.df = fsub double %i.by, %.sink58.i
  %i.dg = fdiv double %.sink56.i, %i.df
  %i.dh = fadd double %.sink54.i, %i.dg
  br label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i

_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i: ; preds = %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i, %._crit_edge.i28.i, %bb.ad, %._crit_edge.i.i
  %.2480 = phi double [ %i.dh, %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i ], [ %.6484, %._crit_edge.i.i ], [ %.5483, %._crit_edge.i28.i ], [ %i.cs, %bb.ad ] ; 5 uses
  %.2 = phi double [ %.sink.i, %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i ], [ %.6, %._crit_edge.i.i ], [ %.5477, %._crit_edge.i28.i ], [ %i.cq, %bb.ad ] ; 3 uses
  %i.di = fcmp olt double %.2480, %i.ao
  br i1 %i.di, label %._crit_edge.i31.i, label %bb.ag

._crit_edge.i31.i:                                ; preds = %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i
  %i.dj = fcmp oeq double %i.ca, %i.ao            ; 2 uses
  %.4482 = select i1 %i.dj, double %i.ca, double %.2480 ; 4 uses
  %.4476 = select i1 %i.dj, double %i.by, double %.2 ; 3 uses
  %i.dk = fcmp une double %.4482, %i.ca
  br i1 %i.dk, label %bb.af, label %_ZN4geos9operation12intersection13clip_to_edgesERdS2_ddRKNS1_9RectangleE.exit

bb.af:                                            ; preds = %._crit_edge.i31.i
end_hunk_0
begin_hunk_1_@_ZN4geos9operation12intersection21RectangleIntersection21clip_linestring_partsEPKNS_4geom10LineStringERNS1_28RectangleIntersectionBuilderERKNS1_9RectangleE:bb.a
  %i.gb = fcmp oeq double %.5499, %i.ap
  br i1 %i.gb, label %bb.be, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit254

bb.be:                                            ; preds = %bb.bd
  %i.gc = or disjoint i32 %.0.i252, 8
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit254

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit254: ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit245, %bb.ax, %bb.bc, %bb.bd, %bb.be
  %.018.i253 = phi i32 [ 2, %bb.ax ], [ 1, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit245 ], [ %i.ga, %bb.bc ], [ %i.gc, %bb.be ], [ %.0.i252, %bb.bd ] ; 2 uses
  %i.gd = fcmp oeq double %.7, %.5491
  %i.ge = fcmp oeq double %.7485, %.5499
  %.not5.i.not526 = and i1 %i.ge, %i.gd
  %i.gf = icmp samesign ult i32 %.018.i244, 3
  %or.cond516.not523 = select i1 %.not5.i.not526, i1 true, i1 %i.gf
  %i.gg = icmp samesign ult i32 %.018.i253, 3
  %or.cond517.not521 = select i1 %or.cond516.not523, i1 true, i1 %i.gg
  %i.gh = and i32 %.018.i253, %.018.i244
  %i.gi = icmp samesign ugt i32 %i.gh, 2
  %or.cond519 = select i1 %or.cond517.not521, i1 true, i1 %i.gi
  br i1 %or.cond519, label %.outer.outer.backedge, label %bb.bf

bb.bf:                                            ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit254
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.gj = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %.noexc unwind label %bb.bk    ; 9 uses

.noexc:                                           ; preds = %bb.bf
  store ptr %i.gj, ptr %5, align 8, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  store ptr %i.gk, ptr %i.u, align 8, !tbaa !32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  store ptr %i.gn, ptr %i.v, align 8, !tbaa !33
  store double %.7, ptr %i.gj, align 8, !tbaa !7
  %.sroa.4408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store double %.7485, ptr %.sroa.4408.0..sroa_idx, align 8, !tbaa !7
  store double +qnan, ptr %i.gl, align 8, !tbaa !7
  store double %.5491, ptr %i.gm, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  store double %.5499, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !7
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.go = load ptr, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !14
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void %i.gr(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.20") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 0)
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %.noexc
  %i.gs = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.gt = load ptr, ptr %6, align 8, !tbaa !41
  store ptr null, ptr %6, align 8, !tbaa !41
  %i.gu = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory16createLineStringEPNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45) %i.gs, ptr noundef %i.gt)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN4geos9operation12intersection28RectangleIntersectionBuilder3addEPNS_4geom10LineStringE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.gu)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.gv = load ptr, ptr %6, align 8, !tbaa !41    ; 3 uses
  %.not.i = icmp eq ptr %i.gv, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %bb.bi
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !14
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gv) #17, !inline_history !43
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.bi, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.gz = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.gz) #19
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit268
  %.0159.ph.be = phi i8 [ %.0159.ph8461728, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit ], [ %spec.select, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit268 ] ; 2 uses
  %i.ha = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %.5176 ; 2 uses
  %i.hc = load <2 x double>, ptr %i.hb, align 8, !tbaa !7 ; 2 uses
  %i.hd = load <4 x double>, ptr %3, align 8      ; 3 uses
  %i.he = shufflevector <2 x double> %i.hc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hf = shufflevector <4 x double> %i.he, <4 x double> %i.hd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hg = shufflevector <4 x double> %i.hd, <4 x double> %i.he, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.hh = fcmp olt <4 x double> %i.hf, %i.hg
  %i.hi = freeze <4 x i1> %i.hh
  %i.hj = bitcast <4 x i1> %i.hi to i4
  %i.hk = icmp eq i4 %i.hj, -1
  %i.hl = extractelement <2 x double> %i.hc, i64 0
  %i.hm = extractelement <4 x double> %i.hd, i64 0
  br i1 %i.hk, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, label %.lr.ph

bb.bk:                                            ; preds = %bb.bf
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit259

bb.bl:                                            ; preds = %.noexc
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit257

bb.bm:                                            ; preds = %bb.bh, %bb.bg
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = load ptr, ptr %6, align 8, !tbaa !41    ; 3 uses
  %.not.i255 = icmp eq ptr %i.hq, null
  br i1 %.not.i255, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit257, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i256

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i256: ; preds = %bb.bm
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !14
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hq) #17, !inline_history !43
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit257

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit257: ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i256, %bb.bm, %bb.bl
  %.pn205 = phi { ptr, i32 } [ %i.ho, %bb.bl ], [ %i.hp, %bb.bm ], [ %i.hp, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i256 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.hu = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %.not.i.i.i258 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i258, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit259, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit257
  call void @_ZdlPv(ptr noundef nonnull %i.hu) #19
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit259

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit259: ; preds = %bb.bn, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit257, %bb.bk
  %.pn205.pn = phi { ptr, i32 } [ %i.hn, %bb.bk ], [ %.pn205, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit257 ], [ %.pn205, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.el

bb.bo:                                            ; preds = %_ZN4geos9operation12intersection13clip_to_edgesERdS2_ddRKNS1_9RectangleE.exit
  %i.hv = fcmp ogt double %.7, %i.aj
  %i.hw = fcmp olt double %.7, %i.an
  %or.cond.i260 = select i1 %i.hv, i1 %i.hw, i1 false
  %i.hx = fcmp ogt double %.7485, %i.ao
  %or.cond29.i261 = select i1 %or.cond.i260, i1 %i.hx, i1 false
  %i.hy = fcmp olt double %.7485, %i.ap
  %or.cond32.i262 = select i1 %or.cond29.i261, i1 %i.hy, i1 false
  br i1 %or.cond32.i262, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit268, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hz = fcmp olt double %.7, %i.aj
  %i.ia = fcmp ogt double %.7, %i.an
  %or.cond33.i263 = select i1 %i.hz, i1 true, i1 %i.ia
  %i.ib = fcmp olt double %.7485, %i.ao
  %or.cond34.i264 = select i1 %or.cond33.i263, i1 true, i1 %i.ib
  %i.ic = fcmp ogt double %.7485, %i.ap
  %or.cond35.i265 = select i1 %or.cond34.i264, i1 true, i1 %i.ic
  br i1 %or.cond35.i265, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit268, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.id = fcmp oeq double %.7, %i.aj
  br i1 %i.id, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ie = fcmp oeq double %.7, %i.an
  br i1 %i.ie, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.0.i266 = phi i32 [ 0, %bb.br ], [ 16, %bb.bs ], [ 4, %bb.bq ] ; 3 uses
  %i.if = fcmp oeq double %.7485, %i.ao
  br i1 %i.if, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ig = or disjoint i32 %.0.i266, 32
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit268

bb.bv:                                            ; preds = %bb.bt
  %i.ih = fcmp oeq double %.7485, %i.ap
  br i1 %i.ih, label %bb.bw, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit268

bb.bw:                                            ; preds = %bb.bv
  %i.ii = or disjoint i32 %.0.i266, 8
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit268

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit268: ; preds = %bb.bo, %bb.bp, %bb.bu, %bb.bv, %bb.bw
  %.018.i267 = phi i32 [ 2, %bb.bp ], [ 1, %bb.bo ], [ %i.ig, %bb.bu ], [ %i.ii, %bb.bw ], [ %.0.i266, %bb.bv ]
  %i.ij = and i32 %.018.i267, %.018.i219
  %i.ik = icmp samesign ugt i32 %i.ij, 2
  %spec.select = select i1 %i.ik, i8 %.0159.ph8461728, i8 1
  br label %.outer.backedge

.lr.ph1739:                                       ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread
  %i.il = phi i64 [ %i.pc, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread ], [ %i.ba, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 7 uses
  %.01838101738 = phi i64 [ %.1184, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread ], [ %.0171.ph8451636, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 8 uses
  %.01818111737 = phi i32 [ %.1182, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread ], [ %.018.i, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 2 uses
  %.61778121736 = phi i64 [ %i.il, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread ], [ %.0171.ph8451636, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 3 uses
  %.21618131735 = phi i8 [ %.7166, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread ], [ %.0159.ph8461647, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 5 uses
  %i.im = load ptr, ptr %4, align 8, !tbaa !20    ; 4 uses
  %i.in = getelementptr inbounds [24 x i8], ptr %i.im, i64 %i.il ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load <2 x double>, ptr %i.in, align 8, !tbaa !7 ; 2 uses
  %i.iq = load double, ptr %i.io, align 8, !tbaa !24 ; 8 uses
  %i.ir = load <4 x double>, ptr %3, align 8      ; 3 uses
  %i.is = load double, ptr %i.l, align 8          ; 9 uses
  %i.it = load double, ptr %i.j, align 8          ; 8 uses
  %i.iu = load double, ptr %i.k, align 8          ; 9 uses
  %i.iv = extractelement <2 x double> %i.ip, i64 0 ; 8 uses
  %i.iw = extractelement <4 x double> %i.ir, i64 0 ; 8 uses
  %i.ix = fcmp ogt double %i.iv, %i.iw
  %i.iy = fcmp olt double %i.iv, %i.it
  %or.cond.i269 = select i1 %i.ix, i1 %i.iy, i1 false
  %i.iz = fcmp ogt double %i.iq, %i.iu
  %or.cond29.i270 = select i1 %or.cond.i269, i1 %i.iz, i1 false
  %i.ja = fcmp olt double %i.iq, %i.is
  %or.cond32.i271 = select i1 %or.cond29.i270, i1 %i.ja, i1 false
  br i1 %or.cond32.i271, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph1739
  %i.jb = shufflevector <2 x double> %i.ip, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jc = shufflevector <4 x double> %i.jb, <4 x double> %i.ir, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jd = shufflevector <4 x double> %i.ir, <4 x double> %i.jb, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.je = fcmp ogt <4 x double> %i.jc, %i.jd
  %i.jf = freeze <4 x i1> %i.je                   ; 3 uses
  %i.jg = bitcast <4 x i1> %i.jf to i4
  %.not1749 = icmp eq i4 %i.jg, 0
  br i1 %.not1749, label %bb.by, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread508

bb.by:                                            ; preds = %bb.bx
  %i.jh = fcmp oeq double %i.iv, %i.iw
  br i1 %i.jh, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ji = fcmp oeq double %i.iv, %i.it
  br i1 %i.ji, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %.0.i275 = phi i32 [ 0, %bb.bz ], [ 16, %bb.ca ], [ 4, %bb.by ] ; 3 uses
  %i.jj = fcmp oeq double %i.iq, %i.iu
  br i1 %i.jj, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jk = or disjoint i32 %.0.i275, 32
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277

bb.cd:                                            ; preds = %bb.cb
  %i.jl = fcmp oeq double %i.iq, %i.is
  br i1 %i.jl, label %bb.ce, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277

bb.ce:                                            ; preds = %bb.cd
  %i.jm = or disjoint i32 %.0.i275, 8
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277: ; preds = %bb.cc, %bb.cd, %bb.ce
  %.018.i276 = phi i32 [ %i.jm, %bb.ce ], [ %.0.i275, %bb.cd ], [ %i.jk, %bb.cc ] ; 6 uses
  switch i32 %.018.i276, label %bb.dl [
    i32 1, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread
    i32 2, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread508
  ]

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread508: ; preds = %bb.bx, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.im, i64 %.61778121736 ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !26 ; 11 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !24 ; 11 uses
  %i.jr = extractelement <4 x i1> %i.jf, i64 2
  br i1 %i.jr, label %._crit_edge.i.i292, label %bb.cg

._crit_edge.i.i292:                               ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread508
  %i.js = fcmp oeq double %i.jo, %i.iw            ; 2 uses
  %.10504 = select i1 %i.js, double %i.jq, double %i.iq ; 3 uses
  %.10 = select i1 %i.js, double %i.jo, double %i.iv ; 4 uses
  %i.jt = fcmp une double %.10, %i.jo
  br i1 %i.jt, label %bb.cf, label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i278

bb.cf:                                            ; preds = %._crit_edge.i.i292
  %i.ju = fsub double %i.jq, %.10504
  %i.jv = fsub double %i.iw, %.10
  %i.jw = fmul double %i.jv, %i.ju
  br label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i287

bb.cg:                                            ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread508
  %i.jx = extractelement <4 x i1> %i.jf, i64 0
  br i1 %i.jx, label %._crit_edge.i28.i286, label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i278

._crit_edge.i28.i286:                             ; preds = %bb.cg
  %i.jy = fcmp oeq double %i.jo, %i.it            ; 2 uses
  %.9503 = select i1 %i.jy, double %i.jq, double %i.iq ; 3 uses
  %.9 = select i1 %i.jy, double %i.jo, double %i.iv ; 4 uses
  %i.jz = fcmp une double %.9, %i.jo
  br i1 %i.jz, label %bb.ch, label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i278

bb.ch:                                            ; preds = %._crit_edge.i28.i286
  %i.ka = fsub double %i.jq, %.9503
  %i.kb = fsub double %i.it, %.9
  %i.kc = fmul double %i.kb, %i.ka
  br label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i287

_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i287: ; preds = %bb.ch, %bb.cf
  %.sink58.i288 = phi double [ %.9, %bb.ch ], [ %.10, %bb.cf ]
  %.sink56.i289 = phi double [ %i.kc, %bb.ch ], [ %i.jw, %bb.cf ]
  %.sink54.i290 = phi double [ %.9503, %bb.ch ], [ %.10504, %bb.cf ]
  %.sink.i291 = phi double [ %i.it, %bb.ch ], [ %i.iw, %bb.cf ]
  %i.kd = fsub double %i.jo, %.sink58.i288
  %i.ke = fdiv double %.sink56.i289, %i.kd
  %i.kf = fadd double %.sink54.i290, %i.ke
  br label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i278

_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i278: ; preds = %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i287, %._crit_edge.i28.i286, %bb.cg, %._crit_edge.i.i292
  %.6500 = phi double [ %i.kf, %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i287 ], [ %.10504, %._crit_edge.i.i292 ], [ %.9503, %._crit_edge.i28.i286 ], [ %i.iq, %bb.cg ] ; 5 uses
  %.6492 = phi double [ %.sink.i291, %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.sink.split.i287 ], [ %.10, %._crit_edge.i.i292 ], [ %.9, %._crit_edge.i28.i286 ], [ %i.iv, %bb.cg ] ; 3 uses
  %i.kg = fcmp olt double %.6500, %i.iu
  br i1 %i.kg, label %._crit_edge.i31.i285, label %bb.cj

._crit_edge.i31.i285:                             ; preds = %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i278
  %i.kh = fcmp oeq double %i.jq, %i.iu            ; 2 uses
  %.8502 = select i1 %i.kh, double %i.jq, double %.6500 ; 4 uses
  %.8 = select i1 %i.kh, double %i.jo, double %.6492 ; 3 uses
  %i.ki = fcmp une double %.8502, %i.jq
  br i1 %i.ki, label %bb.ci, label %_ZN4geos9operation12intersection13clip_to_edgesERdS2_ddRKNS1_9RectangleE.exit293

bb.ci:                                            ; preds = %._crit_edge.i31.i285
  %i.kj = fsub double %i.jo, %.8
  %i.kk = fsub double %i.iu, %.8502
  %i.kl = fmul double %i.kk, %i.kj
  br label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit33.sink.split.i280

bb.cj:                                            ; preds = %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit.i278
  %i.km = fcmp ogt double %.6500, %i.is
  br i1 %i.km, label %._crit_edge.i34.i279, label %_ZN4geos9operation12intersection13clip_to_edgesERdS2_ddRKNS1_9RectangleE.exit293

._crit_edge.i34.i279:                             ; preds = %bb.cj
  %i.kn = fcmp oeq double %i.jq, %i.is            ; 2 uses
  %.7501 = select i1 %i.kn, double %i.jq, double %.6500 ; 4 uses
  %.7493 = select i1 %i.kn, double %i.jo, double %.6492 ; 3 uses
  %i.ko = fcmp une double %.7501, %i.jq
  br i1 %i.ko, label %bb.ck, label %_ZN4geos9operation12intersection13clip_to_edgesERdS2_ddRKNS1_9RectangleE.exit293

bb.ck:                                            ; preds = %._crit_edge.i34.i279
  %i.kp = fsub double %i.jo, %.7493
  %i.kq = fsub double %i.is, %.7501
  %i.kr = fmul double %i.kq, %i.kp
  br label %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit33.sink.split.i280

_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit33.sink.split.i280: ; preds = %bb.ck, %bb.ci
  %.sink65.i281 = phi double [ %.7501, %bb.ck ], [ %.8502, %bb.ci ]
  %.sink63.i282 = phi double [ %i.kr, %bb.ck ], [ %i.kl, %bb.ci ]
  %.sink61.i283 = phi double [ %.7493, %bb.ck ], [ %.8, %bb.ci ]
  %.sink59.i284 = phi double [ %i.is, %bb.ck ], [ %i.iu, %bb.ci ]
  %i.ks = fsub double %i.jq, %.sink65.i281
  %i.kt = fdiv double %.sink63.i282, %i.ks
  %i.ku = fadd double %.sink61.i283, %i.kt
  br label %_ZN4geos9operation12intersection13clip_to_edgesERdS2_ddRKNS1_9RectangleE.exit293

_ZN4geos9operation12intersection13clip_to_edgesERdS2_ddRKNS1_9RectangleE.exit293: ; preds = %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit33.sink.split.i280, %._crit_edge.i34.i279, %bb.cj, %._crit_edge.i31.i285
  %.11505 = phi double [ %.sink59.i284, %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit33.sink.split.i280 ], [ %.8502, %._crit_edge.i31.i285 ], [ %.7501, %._crit_edge.i34.i279 ], [ %.6500, %bb.cj ] ; 9 uses
  %.11 = phi double [ %i.ku, %_ZN4geos9operation12intersection13clip_one_edgeERdS2_ddd.exit33.sink.split.i280 ], [ %.8, %._crit_edge.i31.i285 ], [ %.7493, %._crit_edge.i34.i279 ], [ %.6492, %bb.cj ] ; 9 uses
  %i.kv = fcmp ogt double %.11, %i.iw
  %i.kw = fcmp olt double %.11, %i.it
  %or.cond.i294 = select i1 %i.kv, i1 %i.kw, i1 false
  %i.kx = fcmp ogt double %.11505, %i.iu
  %or.cond29.i295 = select i1 %or.cond.i294, i1 %i.kx, i1 false
  %i.ky = fcmp olt double %.11505, %i.is
  %or.cond32.i296 = select i1 %or.cond29.i295, i1 %i.ky, i1 false
  br i1 %or.cond32.i296, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit302, label %bb.cl

bb.cl:                                            ; preds = %_ZN4geos9operation12intersection13clip_to_edgesERdS2_ddRKNS1_9RectangleE.exit293
  %i.kz = fcmp olt double %.11, %i.iw
  %i.la = fcmp ogt double %.11, %i.it
  %or.cond33.i297 = select i1 %i.kz, i1 true, i1 %i.la
  %i.lb = fcmp olt double %.11505, %i.iu
  %or.cond34.i298 = select i1 %or.cond33.i297, i1 true, i1 %i.lb
  %i.lc = fcmp ogt double %.11505, %i.is
  %or.cond35.i299 = select i1 %or.cond34.i298, i1 true, i1 %i.lc
  br i1 %or.cond35.i299, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit302, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ld = fcmp oeq double %.11, %i.iw
  br i1 %i.ld, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.le = fcmp oeq double %.11, %i.it
  br i1 %i.le, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %.0.i300 = phi i32 [ 0, %bb.cn ], [ 16, %bb.co ], [ 4, %bb.cm ] ; 3 uses
  %i.lf = fcmp oeq double %.11505, %i.iu
  br i1 %i.lf, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.lg = or disjoint i32 %.0.i300, 32
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit302
end_hunk_1
begin_hunk_2_@_ZN4geos9operation12intersection21RectangleIntersection21clip_linestring_partsEPKNS_4geom10LineStringERNS1_28RectangleIntersectionBuilderERKNS1_9RectangleE:bb.a
_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.cv
  %i.lv = phi ptr [ %i.lq, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ null, %bb.cv ] ; 2 uses
  %i.lw = phi i64 [ %i.lu, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ 0, %bb.cv ]
  %i.lx = getelementptr inbounds [24 x i8], ptr %i.im, i64 %.01838101738
  %i.ly = ptrtoint ptr %i.lv to i64
  %i.lz = sub i64 %i.lw, %i.ly
  %i.ma = getelementptr inbounds i8, ptr %i.lv, i64 %i.lz
  invoke void @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ma, ptr %i.lx, ptr nonnull %i.in)
          to label %bb.cw unwind label %bb.dc

bb.cw:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit
  %i.mb = load ptr, ptr %7, align 8, !tbaa !45    ; 5 uses
  br i1 %i.ln, label %bb.cx, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit324

bb.cx:                                            ; preds = %bb.cw
  %i.mc = load ptr, ptr %i.q, align 8, !tbaa !33  ; 8 uses
  %i.md = load ptr, ptr %i.r, align 8, !tbaa !32
  %.not.i309 = icmp eq ptr %i.mc, %i.md
  br i1 %.not.i309, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store double %.11, ptr %i.mc, align 8, !tbaa !26
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store double %.11505, ptr %i.me, align 8, !tbaa !24
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store double +qnan, ptr %i.mf, align 8, !tbaa !44
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  store ptr %i.mg, ptr %i.q, align 8, !tbaa !33
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit324

bb.cz:                                            ; preds = %bb.cx
  %i.mh = ptrtoint ptr %i.mc to i64
  %i.mi = ptrtoint ptr %i.mb to i64
  %i.mj = sub i64 %i.mh, %i.mi                    ; 3 uses
  %i.mk = icmp eq i64 %i.mj, 9223372036854775800
  br i1 %i.mk, label %bb.da, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i310

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc322 unwind label %.loopexit.split-lp530

.noexc322:                                        ; preds = %bb.da
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i310: ; preds = %bb.cz
  %i.ml = sdiv exact i64 %i.mj, 24                ; 3 uses
  %.sroa.speculated.i.i.i311 = call i64 @llvm.umax.i64(i64 %i.ml, i64 1)
  %i.mm = add nsw i64 %.sroa.speculated.i.i.i311, %i.ml ; 2 uses
  %i.mn = icmp ult i64 %i.mm, %i.ml
  %i.mo = call i64 @llvm.umin.i64(i64 %i.mm, i64 384307168202282325)
  %i.mp = select i1 %i.mn, i64 384307168202282325, i64 %i.mo ; 3 uses
  %.not.i.i.i312 = icmp ne i64 %i.mp, 0
  call void @llvm.assume(i1 %.not.i.i.i312)
  %i.mq = mul nuw nsw i64 %i.mp, 24
  %i.mr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mq) #18
          to label %.noexc323 unwind label %.loopexit529 ; 5 uses

.noexc323:                                        ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i310
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mj ; 3 uses
  store double %.11, ptr %i.ms, align 8, !tbaa !26
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store double %.11505, ptr %i.mt, align 8, !tbaa !24
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  store double +qnan, ptr %i.mu, align 8, !tbaa !44
  %.not10.i.i.i.i.i.i313 = icmp eq ptr %i.mb, %i.mc
  br i1 %.not10.i.i.i.i.i.i313, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i318, label %.lr.ph.i.i.i.i.i.i314

.lr.ph.i.i.i.i.i.i314:                            ; preds = %.noexc323, %.lr.ph.i.i.i.i.i.i314
  %.012.i.i.i.i.i.i315 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i314 ], [ %i.mr, %.noexc323 ] ; 2 uses
  %.0911.i.i.i.i.i.i316 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i314 ], [ %i.mb, %.noexc323 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i315, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i316, i64 24, i1 false), !tbaa.struct !46, !alias.scope !47
  %i.mv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i316, i64 24 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i315, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i317 = icmp eq ptr %i.mv, %i.mc
  br i1 %.not.i.i.i.i.i.i317, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i318, label %.lr.ph.i.i.i.i.i.i314, !llvm.loop !51

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i318: ; preds = %.lr.ph.i.i.i.i.i.i314, %.noexc323
  %.0.lcssa.i.i.i.i.i.i319 = phi ptr [ %i.mr, %.noexc323 ], [ %i.mw, %.lr.ph.i.i.i.i.i.i314 ]
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i319, i64 24
  %.not.i34.i.i320 = icmp eq ptr %i.mb, null
  br i1 %.not.i34.i.i320, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i321, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i318
  call void @_ZdlPv(ptr noundef nonnull %i.mb) #19
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i321

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i321: ; preds = %bb.db, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i318
  store ptr %i.mr, ptr %7, align 8, !tbaa !20
  store ptr %i.mx, ptr %i.q, align 8, !tbaa !33
  %i.my = getelementptr inbounds nuw [24 x i8], ptr %i.mr, i64 %i.mp
  store ptr %i.my, ptr %i.r, align 8, !tbaa !32
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit324

bb.dc:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit324: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i321, %bb.cy, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.na = load ptr, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !14
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8
  invoke void %i.nd(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.20") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.na, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 0)
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit324
  %i.ne = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.nf = load ptr, ptr %8, align 8, !tbaa !41
  store ptr null, ptr %8, align 8, !tbaa !41
  %i.ng = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory16createLineStringEPNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45) %i.ne, ptr noundef %i.nf)
          to label %bb.de unwind label %bb.di

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN4geos9operation12intersection28RectangleIntersectionBuilder3addEPNS_4geom10LineStringE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.ng)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.nh = load ptr, ptr %8, align 8, !tbaa !41    ; 3 uses
  %.not.i325 = icmp eq ptr %i.nh, null
  br i1 %.not.i325, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit327, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i326

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i326: ; preds = %bb.df
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !14
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8
  call void %i.nk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.nh) #17, !inline_history !43
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit327

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit327: ; preds = %bb.df, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.nl = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %.not.i.i.i328 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i328, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit329, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit327
  call void @_ZdlPv(ptr noundef nonnull %i.nl) #19
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit329

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit329: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit327, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.critedge10.thread

bb.dh:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit324
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit332

bb.di:                                            ; preds = %bb.de, %bb.dd
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.no = load ptr, ptr %8, align 8, !tbaa !41    ; 3 uses
  %.not.i330 = icmp eq ptr %i.no, null
  br i1 %.not.i330, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit332, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i331

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i331: ; preds = %bb.di
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !14
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8
  call void %i.nr(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.no) #17, !inline_history !43
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit332

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit332: ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i331, %bb.di, %bb.dh
  %.pn196 = phi { ptr, i32 } [ %i.nm, %bb.dh ], [ %i.nn, %bb.di ], [ %i.nn, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i331 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.dj

bb.dj:                                            ; preds = %.loopexit529, %.loopexit.split-lp530, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit332, %bb.dc
  %.pn196.pn = phi { ptr, i32 } [ %.pn196, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit332 ], [ %i.mz, %bb.dc ], [ %lpad.loopexit531, %.loopexit529 ], [ %lpad.loopexit.split-lp532, %.loopexit.split-lp530 ]
  %i.ns = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %.not.i.i.i333 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i333, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit334, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_ZdlPv(ptr noundef nonnull %i.ns) #19
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit334

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit334: ; preds = %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.el

bb.dl:                                            ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277
  %i.nt = and i32 %.018.i276, %.01818111737
  %i.nu = icmp samesign ugt i32 %i.nt, 2
  br i1 %i.nu, label %bb.dm, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread

bb.dm:                                            ; preds = %bb.dl
  %i.nv = icmp ult i64 %.01838101738, %.61778121736
  %i.nw = trunc nuw i8 %.21618131735 to i1        ; 2 uses
  %or.cond16 = select i1 %i.nv, i1 true, i1 %i.nw
  br i1 %or.cond16, label %bb.dn, label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %i.nw, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i336, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit350

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i336: ; preds = %bb.dn
  %i.nx = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i347 unwind label %.loopexit ; 6 uses

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i347: ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i336
  store double %.0473.ph8441614, ptr %i.nx, align 8, !tbaa !26
  %13 = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store double %.0478.ph8431592, ptr %13, align 8, !tbaa !24
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store double +qnan, ptr %i.ny, align 8, !tbaa !44
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 24 ; 3 uses
  store ptr %i.nx, ptr %9, align 8, !tbaa !20
  store ptr %i.nz, ptr %i.m, align 8, !tbaa !33
  store ptr %i.nz, ptr %i.n, align 8, !tbaa !32
  %i.oa = ptrtoint ptr %i.nz to i64
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit350

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i336
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit350: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i347, %bb.dn
  %i.ob = phi ptr [ %i.nx, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i347 ], [ null, %bb.dn ] ; 2 uses
  %i.oc = phi i64 [ %i.oa, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i347 ], [ 0, %bb.dn ]
  %i.od = getelementptr inbounds [24 x i8], ptr %i.im, i64 %.01838101738
  %i.oe = ptrtoint ptr %i.ob to i64
  %i.of = sub i64 %i.oc, %i.oe
  %i.og = getelementptr inbounds i8, ptr %i.ob, i64 %i.of
  invoke void @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.og, ptr %i.od, ptr nonnull %i.in)
          to label %bb.do unwind label %bb.dt

bb.do:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit350
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.oh = load ptr, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !14
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8
  invoke void %i.ok(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.20") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.oh, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 0)
          to label %bb.dp unwind label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.ol = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.om = load ptr, ptr %10, align 8, !tbaa !41
  store ptr null, ptr %10, align 8, !tbaa !41
  %i.on = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory16createLineStringEPNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45) %i.ol, ptr noundef %i.om)
          to label %bb.dq unwind label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN4geos9operation12intersection28RectangleIntersectionBuilder3addEPNS_4geom10LineStringE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.on)
          to label %bb.dr unwind label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %i.oo = load ptr, ptr %10, align 8, !tbaa !41   ; 3 uses
  %.not.i353 = icmp eq ptr %i.oo, null
  br i1 %.not.i353, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit355, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i354

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i354: ; preds = %bb.dr
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !14
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.oo) #17, !inline_history !43
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit355

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit355: ; preds = %bb.dr, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i354
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.os = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %.not.i.i.i356 = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i356, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit357, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit355
  call void @_ZdlPv(ptr noundef nonnull %i.os) #19
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit357

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit357: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit355, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread

bb.dt:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit350
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.du:                                            ; preds = %bb.do
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit360

bb.dv:                                            ; preds = %bb.dq, %bb.dp
  %i.ov = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ow = load ptr, ptr %10, align 8, !tbaa !41   ; 3 uses
  %.not.i358 = icmp eq ptr %i.ow, null
  br i1 %.not.i358, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit360, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i359

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i359: ; preds = %bb.dv
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !14
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ow) #17, !inline_history !43
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit360

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit360: ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i359, %bb.dv, %bb.du
  %.pn = phi { ptr, i32 } [ %i.ou, %bb.du ], [ %i.ov, %bb.dv ], [ %i.ov, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i359 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.dt, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit360
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ot, %bb.dt ], [ %.pn, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit360 ]
  %.pr = load ptr, ptr %9, align 8, !tbaa !20
  br label %bb.dw

bb.dw:                                            ; preds = %thread-pre-split, %.loopexit
  %i.pa = phi ptr [ %.pr, %thread-pre-split ], [ null, %.loopexit ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn.pn.ph, %thread-pre-split ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i361 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i.i361, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit362, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @_ZdlPv(ptr noundef nonnull %i.pa) #19
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit362

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit362: ; preds = %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.el

.critedge10.thread:                               ; preds = %bb.cu, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit329
  %i.pb = icmp eq i64 %.01838101738, 0
  br label %.loopexit546.split.loop.exit

_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread: ; preds = %.lr.ph1739, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit357, %bb.dm, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277, %bb.dl
  %.1184 = phi i64 [ %.01838101738, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277 ], [ %.01838101738, %bb.dl ], [ %i.il, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit357 ], [ %.01838101738, %.lr.ph1739 ], [ %i.il, %bb.dm ] ; 3 uses
  %.1182 = phi i32 [ %.018.i276, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277 ], [ %.018.i276, %bb.dl ], [ %.018.i276, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit357 ], [ 1, %.lr.ph1739 ], [ %.018.i276, %bb.dm ]
  %.7166 = phi i8 [ %.21618131735, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277 ], [ %.21618131735, %bb.dl ], [ 0, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit357 ], [ %.21618131735, %.lr.ph1739 ], [ 0, %bb.dm ] ; 2 uses
  %i.pc = add nuw i64 %i.il, 1                    ; 3 uses
  %i.pd = icmp ult i64 %i.pc, %i.d
  br i1 %i.pd, label %.lr.ph1739, label %..critedge10_crit_edge, !llvm.loop !52

..critedge10_crit_edge:                           ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread
  %i.pe = icmp ult i64 %.1184, %i.il
  br label %.critedge10

.critedge10:                                      ; preds = %..critedge10_crit_edge, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit
  %.2161813.lcssa = phi i8 [ %.7166, %..critedge10_crit_edge ], [ %.0159.ph8461647, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 2 uses
  %.6177812.lcssa = phi i1 [ %i.pe, %..critedge10_crit_edge ], [ false, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ]
  %.0183810.lcssa = phi i64 [ %.1184, %..critedge10_crit_edge ], [ %.0171.ph8451636, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 2 uses
  %.lcssa = phi i64 [ %i.pc, %..critedge10_crit_edge ], [ %i.ba, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 3 uses
  %i.pf = icmp eq i64 %.0183810.lcssa, 0
  br i1 %i.pf, label %.loopexit546.split.loop.exit, label %bb.dy

bb.dy:                                            ; preds = %.critedge10
  %i.pg = trunc nuw i8 %.2161813.lcssa to i1      ; 2 uses
  %or.cond18 = select i1 %.6177812.lcssa, i1 true, i1 %i.pg
  br i1 %or.cond18, label %bb.dz, label %.outer.outer.backedge

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %i.pg, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i364, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit378

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i364: ; preds = %bb.dz
  %i.ph = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i375 unwind label %.loopexit541 ; 6 uses

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i375: ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i364
  store double %.0473.ph8441614, ptr %i.ph, align 8, !tbaa !26
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store double %.0478.ph8431592, ptr %i.pi, align 8, !tbaa !24
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store double +qnan, ptr %i.pj, align 8, !tbaa !44
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 24 ; 3 uses
  store ptr %i.ph, ptr %11, align 8, !tbaa !20
  store ptr %i.pk, ptr %i.s, align 8, !tbaa !33
  store ptr %i.pk, ptr %i.t, align 8, !tbaa !32
  %i.pl = ptrtoint ptr %i.pk to i64
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit378

.loopexit541:                                     ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i364
  %lpad.loopexit543 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit378: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i375, %bb.dz
  %i.pm = phi ptr [ %i.ph, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i375 ], [ null, %bb.dz ] ; 2 uses
  %i.pn = phi i64 [ %i.pl, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i375 ], [ 0, %bb.dz ]
  %i.po = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.pp = getelementptr inbounds [24 x i8], ptr %i.po, i64 %.0183810.lcssa
  %i.pq = getelementptr inbounds [24 x i8], ptr %i.po, i64 %.lcssa
  %i.pr = ptrtoint ptr %i.pm to i64
  %i.ps = sub i64 %i.pn, %i.pr
  %i.pt = getelementptr inbounds i8, ptr %i.pm, i64 %i.ps
  invoke void @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.pt, ptr nonnull %i.pp, ptr nonnull %i.pq)
          to label %bb.ea unwind label %bb.ef

bb.ea:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRdS6_EEEvDpOT_.exit378
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.pu = load ptr, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !14
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = load ptr, ptr %i.pw, align 8
  invoke void %i.px(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.20") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.pu, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 0)
          to label %bb.eb unwind label %bb.eg

bb.eb:                                            ; preds = %bb.ea
  %i.py = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.pz = load ptr, ptr %12, align 8, !tbaa !41
  store ptr null, ptr %12, align 8, !tbaa !41
  %i.qa = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory16createLineStringEPNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45) %i.py, ptr noundef %i.pz)
end_hunk_2
