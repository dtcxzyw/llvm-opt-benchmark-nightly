inline.NumInlined: 191
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4geos9operation6relate13EdgeEndBundle6insertEPNS_9geomgraph7EdgeEndE:bb.a

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #14
  br label %_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !19
  store ptr %i.u, ptr %i.b, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !24
  br label %_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4geos9operation6relate13EdgeEndBundleD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4geos9operation6relate13EdgeEndBundleE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #14
  br label %_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4geos9geomgraph7EdgeEndESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.05 = phi i64 [ %i.q, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.05
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %i.l) #15
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.q = add nuw i64 %.05, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.h
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4geos9operation6relate13EdgeEndBundleD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4geos9operation6relate13EdgeEndBundleD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #15
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos9operation6relate13EdgeEndBundle11getEdgeEndsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(128) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6relate13EdgeEndBundle12computeLabelERKNS_9algorithm16BoundaryNodeRuleE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 1 %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 6 uses
  %.not21 = icmp eq ptr %i.b, %i.d
  br i1 %.not21, label %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us29.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %spec.select, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01023 = phi i1 [ %spec.select, %.lr.ph ], [ false, %bb.a ]
  %.sroa.017.022 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.017.022, align 8, !tbaa !17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  %i.g = load i8, ptr %i.f, align 1, !tbaa !28
  %i.h = icmp ugt i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 23
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp ugt i8 %i.j, 1
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  %spec.select = select i1 %i.l, i1 true, i1 %.01023 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph.i.us:                                      ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store <8 x i8> <i8 -1, i8 -1, i8 -1, i8 3, i8 -1, i8 -1, i8 -1, i8 3>, ptr %i.n, align 8
  br label %bb.b

bb.b:                                             ; preds = %.thread.i.us, %.lr.ph.i.us
  %.01329.i.us = phi i32 [ 0, %.lr.ph.i.us ], [ %i.w, %.thread.i.us ] ; 2 uses
  %.01428.i.us = phi i8 [ 0, %.lr.ph.i.us ], [ %i.x, %.thread.i.us ] ; 2 uses
  %.sroa.016.027.i.us = phi ptr [ %i.b, %.lr.ph.i.us ], [ %i.y, %.thread.i.us ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.016.027.i.us, align 8, !tbaa !17 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 19
  %i.q = load i8, ptr %i.p, align 1, !tbaa !28
  %.not.i.i.us = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.us, label %.thread.i.us, label %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i.us

_ZNK4geos9geomgraph5Label11getLocationEj.exit.i.us: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load i8, ptr %i.r, align 1, !tbaa !31
  %.fr.i.us = freeze i8 %i.s                      ; 2 uses
  %i.t = icmp eq i8 %.fr.i.us, 1
  %i.u = zext i1 %i.t to i32
  %spec.select.i.us = add nsw i32 %.01329.i.us, %i.u
  %i.v = icmp eq i8 %.fr.i.us, 0
  %spec.select25.i.us = select i1 %i.v, i8 1, i8 %.01428.i.us
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i.us, %bb.b
  %i.w = phi i32 [ %.01329.i.us, %bb.b ], [ %spec.select.i.us, %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i.us ] ; 3 uses
  %i.x = phi i8 [ %.01428.i.us, %bb.b ], [ %spec.select25.i.us, %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i.us ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i.us, i64 8 ; 2 uses
  %.not.i.us = icmp eq ptr %i.y, %i.d
  br i1 %.not.i.us, label %._crit_edge.i.us, label %bb.b

._crit_edge.i.us:                                 ; preds = %.thread.i.us
  %i.z = add nsw i8 %i.x, -1
  %i.aa = icmp sgt i32 %i.w, 0
  br i1 %i.aa, label %bb.c, label %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us

bb.c:                                             ; preds = %._crit_edge.i.us
  %i.ab = tail call noundef signext i8 @_ZN4geos9geomgraph13GeometryGraph17determineBoundaryERKNS_9algorithm16BoundaryNodeRuleEi(ptr noundef nonnull align 1 %1, i32 noundef %i.w)
  %.pre41 = load ptr, ptr %i.a, align 8, !tbaa !27
  %.pre42 = load ptr, ptr %i.c, align 8, !tbaa !27
  br label %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us

_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us: ; preds = %bb.c, %._crit_edge.i.us
  %i.ac = phi ptr [ %.pre42, %bb.c ], [ %i.d, %._crit_edge.i.us ] ; 6 uses
  %i.ad = phi ptr [ %.pre41, %bb.c ], [ %i.b, %._crit_edge.i.us ] ; 6 uses
  %.0.i.us = phi i8 [ %i.ab, %bb.c ], [ %i.z, %._crit_edge.i.us ]
  store i8 %.0.i.us, ptr %i.n, align 8, !tbaa !31
  %.not28.i.i.us = icmp eq ptr %i.ad, %i.ac
  br i1 %.not28.i.i.us, label %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us.1, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.us, %.lr.ph.i.i.us
  %.sroa.016.029.i.i.us = phi ptr [ %i.ad, %.lr.ph.i.i.us ], [ %i.al, %.critedge.i.i.us ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.016.029.i.i.us, align 8, !tbaa !17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 19
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !28
  %i.ai = icmp ult i8 %i.ah, 2
  br i1 %i.ai, label %.critedge.i.i.us, label %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us

_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !31
  switch i8 %i.ak, label %.critedge.i.i.us [
    i8 0, label %bb.e
    i8 2, label %2
  ]

2:                                                ; preds = %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us
  store i8 2, ptr %i.ae, align 1, !tbaa !31
  br label %.critedge.i.i.us

bb.e:                                             ; preds = %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us
  store i8 0, ptr %i.ae, align 1, !tbaa !31
  br label %.lr.ph.i3.i.us

.critedge.i.i.us:                                 ; preds = %bb.d, %2, %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.016.029.i.i.us, i64 8 ; 2 uses
  %.not.i.i11.us = icmp eq ptr %i.al, %i.ac
  br i1 %.not.i.i11.us, label %.lr.ph.i3.i.us, label %bb.d

.lr.ph.i3.i.us:                                   ; preds = %.critedge.i.i.us, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i5.i.us, %.lr.ph.i3.i.us
  %.sroa.016.029.i4.i.us = phi ptr [ %i.ad, %.lr.ph.i3.i.us ], [ %i.at, %.critedge.i5.i.us ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.016.029.i4.i.us, align 8, !tbaa !17 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 19
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !28
  %i.aq = icmp ugt i8 %i.ap, 2
  br i1 %i.aq, label %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i7.i.us, label %.critedge.i5.i.us

_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i7.i.us: ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 18
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !31
  switch i8 %i.as, label %.critedge.i5.i.us [
    i8 0, label %bb.g
    i8 2, label %3
  ]

3:                                                ; preds = %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i7.i.us
  store i8 2, ptr %i.am, align 2, !tbaa !31
  br label %.critedge.i5.i.us

bb.g:                                             ; preds = %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i7.i.us
  store i8 0, ptr %i.am, align 2, !tbaa !31
  br label %.lr.ph.i.us.1.preheader

.critedge.i5.i.us:                                ; preds = %3, %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i7.i.us, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.016.029.i4.i.us, i64 8 ; 2 uses
  %.not.i6.i.us = icmp eq ptr %i.at, %i.ac
  br i1 %.not.i6.i.us, label %.lr.ph.i.us.1.preheader, label %bb.f

.lr.ph.i.us.1.preheader:                          ; preds = %.critedge.i5.i.us, %bb.g
  br label %.lr.ph.i.us.1

.lr.ph.i.us.1:                                    ; preds = %.lr.ph.i.us.1.preheader, %.thread.i.us.1
  %.01329.i.us.1 = phi i32 [ %i.bc, %.thread.i.us.1 ], [ 0, %.lr.ph.i.us.1.preheader ] ; 2 uses
  %.01428.i.us.1 = phi i8 [ %i.bd, %.thread.i.us.1 ], [ 0, %.lr.ph.i.us.1.preheader ] ; 2 uses
  %.sroa.016.027.i.us.1 = phi ptr [ %i.be, %.thread.i.us.1 ], [ %i.ad, %.lr.ph.i.us.1.preheader ] ; 2 uses
  %i.au = load ptr, ptr %.sroa.016.027.i.us.1, align 8, !tbaa !17 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 23
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !28
  %.not.i.i.us.1 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.us.1, label %.thread.i.us.1, label %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i.us.1

_ZNK4geos9geomgraph5Label11getLocationEj.exit.i.us.1: ; preds = %.lr.ph.i.us.1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !31
  %.fr.i.us.1 = freeze i8 %i.ay                   ; 2 uses
  %i.az = icmp eq i8 %.fr.i.us.1, 1
  %i.ba = zext i1 %i.az to i32
  %spec.select.i.us.1 = add nsw i32 %.01329.i.us.1, %i.ba
  %i.bb = icmp eq i8 %.fr.i.us.1, 0
  %spec.select25.i.us.1 = select i1 %i.bb, i8 1, i8 %.01428.i.us.1
  br label %.thread.i.us.1

.thread.i.us.1:                                   ; preds = %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i.us.1, %.lr.ph.i.us.1
  %i.bc = phi i32 [ %.01329.i.us.1, %.lr.ph.i.us.1 ], [ %spec.select.i.us.1, %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i.us.1 ] ; 3 uses
  %i.bd = phi i8 [ %.01428.i.us.1, %.lr.ph.i.us.1 ], [ %spec.select25.i.us.1, %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i.us.1 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i.us.1, i64 8 ; 2 uses
  %.not.i.us.1 = icmp eq ptr %i.be, %i.ac
  br i1 %.not.i.us.1, label %._crit_edge.i.us.1, label %.lr.ph.i.us.1

._crit_edge.i.us.1:                               ; preds = %.thread.i.us.1
  %i.bf = add nsw i8 %i.bd, -1
  %i.bg = icmp sgt i32 %i.bc, 0
  br i1 %i.bg, label %bb.h, label %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us.1

bb.h:                                             ; preds = %._crit_edge.i.us.1
  %i.bh = tail call noundef signext i8 @_ZN4geos9geomgraph13GeometryGraph17determineBoundaryERKNS_9algorithm16BoundaryNodeRuleEi(ptr noundef nonnull align 1 %1, i32 noundef %i.bc)
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !27
  %.pre44 = load ptr, ptr %i.c, align 8, !tbaa !27
  br label %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us.1

_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us.1: ; preds = %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us, %bb.h, %._crit_edge.i.us.1
  %i.bi = phi ptr [ %.pre44, %bb.h ], [ %i.ac, %._crit_edge.i.us.1 ], [ %i.ac, %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us ] ; 3 uses
  %i.bj = phi ptr [ %.pre43, %bb.h ], [ %i.ad, %._crit_edge.i.us.1 ], [ %i.ad, %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us ] ; 3 uses
  %.0.i.us.1 = phi i8 [ %i.bh, %bb.h ], [ %i.bf, %._crit_edge.i.us.1 ], [ -1, %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.0.i.us.1, ptr %i.bk, align 4, !tbaa !31
  %.not28.i.i.us.1 = icmp eq ptr %i.bj, %i.bi
  br i1 %.not28.i.i.us.1, label %.split26.us, label %.lr.ph.i.i.us.1

.lr.ph.i.i.us.1:                                  ; preds = %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us.1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i.i.us.1, %.lr.ph.i.i.us.1
  %.sroa.016.029.i.i.us.1 = phi ptr [ %i.bj, %.lr.ph.i.i.us.1 ], [ %i.bs, %.critedge.i.i.us.1 ] ; 2 uses
  %i.bm = load ptr, ptr %.sroa.016.029.i.i.us.1, align 8, !tbaa !17 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 23
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp ult i8 %i.bo, 2
  br i1 %i.bp, label %.critedge.i.i.us.1, label %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us.1

_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us.1: ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 21
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  switch i8 %i.br, label %.critedge.i.i.us.1 [
    i8 0, label %bb.k
    i8 2, label %bb.j
  ]

bb.j:                                             ; preds = %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us.1
  store i8 2, ptr %i.bl, align 1, !tbaa !31
  br label %.critedge.i.i.us.1

bb.k:                                             ; preds = %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us.1
  store i8 0, ptr %i.bl, align 1, !tbaa !31
  br label %.lr.ph.i3.i.us.1

.critedge.i.i.us.1:                               ; preds = %bb.i, %bb.j, %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i.i.us.1
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.016.029.i.i.us.1, i64 8 ; 2 uses
  %.not.i.i11.us.1 = icmp eq ptr %i.bs, %i.bi
  br i1 %.not.i.i11.us.1, label %.lr.ph.i3.i.us.1, label %bb.i

.lr.ph.i3.i.us.1:                                 ; preds = %.critedge.i.i.us.1, %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i5.i.us.1, %.lr.ph.i3.i.us.1
  %.sroa.016.029.i4.i.us.1 = phi ptr [ %i.bj, %.lr.ph.i3.i.us.1 ], [ %i.cf, %.critedge.i5.i.us.1 ] ; 2 uses
  %i.bu = load ptr, ptr %.sroa.016.029.i4.i.us.1, align 8, !tbaa !17 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 19
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.bx = icmp ugt i8 %i.bw, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 23
  %i.bz = load i8, ptr %i.by, align 1             ; 2 uses
  %i.ca = icmp ugt i8 %i.bz, 1
  %i.cb = select i1 %i.bx, i1 true, i1 %i.ca
  %i.cc = icmp ugt i8 %i.bz, 2
  %or.cond88 = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond88, label %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i7.i.us.1, label %.critedge.i5.i.us.1

_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i7.i.us.1: ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 22
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !31
  switch i8 %i.ce, label %.critedge.i5.i.us.1 [
    i8 0, label %bb.n
    i8 2, label %bb.m
  ]

bb.m:                                             ; preds = %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i7.i.us.1
  store i8 2, ptr %i.bt, align 2, !tbaa !31
  br label %.critedge.i5.i.us.1

bb.n:                                             ; preds = %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i7.i.us.1
  store i8 0, ptr %i.bt, align 2, !tbaa !31
  br label %.split26.us

.critedge.i5.i.us.1:                              ; preds = %bb.m, %_ZNK4geos9geomgraph5Label11getLocationEjj.exit.i7.i.us.1, %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.016.029.i4.i.us.1, i64 8 ; 2 uses
  %.not.i6.i.us.1 = icmp eq ptr %i.cf, %i.bi
  br i1 %.not.i6.i.us.1, label %.split26.us, label %bb.l

_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us29.preheader: ; preds = %bb.a
  %.sroa.4.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i16 -1, ptr %.sroa.4.0..sroa_idx74, align 1
  %.sroa.9.4..sroa_idx75 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i16 -1, ptr %.sroa.9.4..sroa_idx75, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 1, ptr %i.ch, align 1, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 1, ptr %i.ci, align 1, !tbaa !28
  store i8 -1, ptr %i.cg, align 8, !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 -1, ptr %i.cj, align 4, !tbaa !31
  br label %.split26.us

.split26.us:                                      ; preds = %.critedge.i5.i.us.1, %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us.1, %bb.n, %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.1, %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit.us29.preheader
  ret void

.lr.ph.i:                                         ; preds = %._crit_edge
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i16 -1, ptr %.sroa.413.0..sroa_idx, align 1
  %.sroa.9.4..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i16 -1, ptr %.sroa.9.4..sroa_idx, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 -1, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 1, ptr %i.cl, align 1, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 -1, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 1, ptr %i.cn, align 1, !tbaa !28
  br label %bb.o

._crit_edge.i:                                    ; preds = %.thread.i
  %i.co = add nsw i8 %i.cz, -1
  %i.cp = icmp sgt i32 %i.cy, 0
  br i1 %i.cp, label %bb.p, label %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit

bb.o:                                             ; preds = %.thread.i, %.lr.ph.i
  %.01329.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cy, %.thread.i ] ; 2 uses
  %.01428.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cz, %.thread.i ] ; 2 uses
  %.sroa.016.027.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.da, %.thread.i ] ; 2 uses
  %i.cq = load ptr, ptr %.sroa.016.027.i, align 8, !tbaa !17 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 19
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !28
  %.not.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i, label %.thread.i, label %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i

_ZNK4geos9geomgraph5Label11getLocationEj.exit.i:  ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !31
  %.fr.i = freeze i8 %i.cu                        ; 2 uses
  %i.cv = icmp eq i8 %.fr.i, 1
  %i.cw = zext i1 %i.cv to i32
  %spec.select.i = add nsw i32 %.01329.i, %i.cw
  %i.cx = icmp eq i8 %.fr.i, 0
  %spec.select25.i = select i1 %i.cx, i8 1, i8 %.01428.i
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i, %bb.o
  %i.cy = phi i32 [ %.01329.i, %bb.o ], [ %spec.select.i, %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i ] ; 3 uses
  %i.cz = phi i8 [ %.01428.i, %bb.o ], [ %spec.select25.i, %_ZNK4geos9geomgraph5Label11getLocationEj.exit.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.da, %i.d
  br i1 %.not.i, label %._crit_edge.i, label %bb.o

bb.p:                                             ; preds = %._crit_edge.i
  %i.db = tail call noundef signext i8 @_ZN4geos9geomgraph13GeometryGraph17determineBoundaryERKNS_9algorithm16BoundaryNodeRuleEi(ptr noundef nonnull align 1 %1, i32 noundef %i.cy)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !27
  %.pre40 = load ptr, ptr %i.c, align 8, !tbaa !27
  br label %_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit

_ZN4geos9operation6relate13EdgeEndBundle14computeLabelOnEhRKNS_9algorithm16BoundaryNodeRuleE.exit: ; preds = %._crit_edge.i, %bb.p
  %i.dc = phi ptr [ %.pre40, %bb.p ], [ %i.d, %._crit_edge.i ] ; 2 uses
  %i.dd = phi ptr [ %.pre, %bb.p ], [ %i.b, %._crit_edge.i ] ; 2 uses
  %.0.i = phi i8 [ %i.db, %bb.p ], [ %i.co, %._crit_edge.i ]
  store i8 %.0.i, ptr %i.ck, align 8, !tbaa !31
  %.not26.i.1 = icmp eq ptr %i.dd, %i.dc
end_hunk_0
