Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/LineBuilder?download=true
inline.NumInlined: 238
inline.NumDeleted: 150
begin_hunk_0_@_ZN4geos9operation7overlay11LineBuilder15collectLineEdgeEPNS_9geomgraph12DirectedEdgeENS1_9OverlayOp6OpCodeEPSt6vectorIPNS3_4EdgeESaISA_EE:bb.a
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = tail call noundef zeroext i1 @_ZN4geos9operation7overlay9OverlayOp12isResultOfOpERKNS_9geomgraph5LabelENS2_6OpCodeE(ptr noundef nonnull align 1 dereferenceable(8) %i.g, i32 noundef %2)
  br i1 %i.h, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(20) %i.c)
  br i1 %i.l, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.c, ptr %i.n, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.q, ptr %i.m, align 8, !tbaa !43
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %3, align 8, !tbaa !25     ; 4 uses
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.h, label %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #10 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store ptr %i.c, ptr %i.ad, align 8, !tbaa !44
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.i, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.r, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.not.i17.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #11
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ac, ptr %3, align 8, !tbaa !25
  store ptr %i.af, ptr %i.m, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !52
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.f, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  tail call void @_ZN4geos9geomgraph12DirectedEdge14setVisitedEdgeEb(ptr noundef nonnull align 8 dereferenceable(156) %1, i1 noundef zeroext true)
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %bb.d, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay11LineBuilder24collectBoundaryTouchEdgeEPNS_9geomgraph12DirectedEdgeENS1_9OverlayOp6OpCodeEPSt6vectorIPNS3_4EdgeESaISA_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4geos9geomgraph12DirectedEdge10isLineEdgeEv(ptr noundef nonnull align 8 dereferenceable(156) %1)
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 102
  %i.c = load i8, ptr %i.b, align 2, !tbaa !49, !range !50, !noundef !51
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN4geos9geomgraph12DirectedEdge18isInteriorAreaEdgeEv(ptr noundef nonnull align 8 dereferenceable(156) %1)
  br i1 %i.e, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(20) %i.g)
  br i1 %i.k, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = tail call noundef zeroext i1 @_ZN4geos9operation7overlay9OverlayOp12isResultOfOpERKNS_9geomgraph5LabelENS2_6OpCodeE(ptr noundef nonnull align 1 dereferenceable(8) %i.l, i32 noundef %2)
  %i.n = icmp eq i32 %2, 1
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.o, ptr %i.q, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.t, ptr %i.p, align 8, !tbaa !43
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backEOS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %3, align 8, !tbaa !25     ; 4 uses
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 5 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.i, label %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #10 ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store ptr %i.o, ptr %i.ag, align 8, !tbaa !44
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.j, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.u, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #11
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.af, ptr %3, align 8, !tbaa !25
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !52
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.g, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  tail call void @_ZN4geos9geomgraph12DirectedEdge14setVisitedEdgeEb(ptr noundef nonnull align 8 dereferenceable(156) %1, i1 noundef zeroext true)
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backEOS3_.exit, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN4geos9operation7overlay9OverlayOp12isResultOfOpERKNS_9geomgraph5LabelENS2_6OpCodeE(ptr noundef nonnull align 1 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare void @_ZN4geos9geomgraph12DirectedEdge14setVisitedEdgeEb(ptr noundef nonnull align 8 dereferenceable(156), i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4geos9geomgraph12DirectedEdge18isInteriorAreaEdgeEv(ptr noundef nonnull align 8 dereferenceable(156)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay11LineBuilder10propagateZEPNS_4geom18CoordinateSequenceE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 5 uses
  %.not126 = icmp eq i64 %i.d, 0
  br i1 %.not126, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.e = icmp eq ptr %.sroa.0.1, %.sroa.15.1
  br i1 %i.e, label %bb.ad, label %bb.i

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge115 = phi i64 [ %i.ac, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %bb.a ] ; 4 uses
  %.sroa.20.0114 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.15.0113 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.0.0112 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %bb.a ] ; 8 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %storemerge115)
          to label %bb.b unwind label %.loopexit101

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !81
  %i.l = fcmp uno double %i.k, 0.000000e+00
  br i1 %i.l, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %.sroa.15.0113, %.sroa.20.0114
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %storemerge115, ptr %.sroa.15.0113, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.15.0113, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.e:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %.sroa.20.0114 to i64
  %i.o = ptrtoint ptr %.sroa.0.0112 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #10
          to label %.noexc78 unwind label %.loopexit101 ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store i64 %storemerge115, ptr %i.y, align 8, !tbaa !82
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc78
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %.sroa.0.0112, i64 %i.p, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc78
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0.0112, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0.0112) #11
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit101:                                     ; preds = %.lr.ph, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %.sroa.0.1 = phi ptr [ %.sroa.0.0112, %bb.b ], [ %i.x, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0.0112, %bb.d ] ; 10 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0113, %bb.b ], [ %i.aa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.m, %bb.d ] ; 3 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.0114, %bb.b ], [ %i.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.20.0114, %bb.d ]
  %i.ac = add nuw i64 %storemerge115, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ad, align 8, !tbaa !81
  %i.ae = load i64, ptr %.sroa.0.1, align 8, !tbaa !82 ; 2 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %.loopexit100, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %1, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ae)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !81
  %i.al = load i64, ptr %.sroa.0.1, align 8, !tbaa !82
  %.not127 = icmp eq i64 %i.al, 0
  br i1 %.not127, label %.loopexit100, label %.lr.ph119

bb.l:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.lr.ph119:                                        ; preds = %bb.k, %bb.n
  %.056117 = phi i64 [ %i.au, %bb.n ], [ 0, %bb.k ] ; 3 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.056117)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.lr.ph119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 16, i1 false), !tbaa.struct !84
  store double %i.ak, ptr %i.ad, align 8, !tbaa !81
  %i.ar = load ptr, ptr %1, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.056117)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = add nuw i64 %.056117, 1                 ; 2 uses
  %i.av = load i64, ptr %.sroa.0.1, align 8, !tbaa !82 ; 2 uses
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph119, label %.loopexit100, !llvm.loop !77

bb.o:                                             ; preds = %bb.m, %.lr.ph119
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit100:                                     ; preds = %bb.n, %bb.k, %bb.i
  %i.ay = phi i64 [ 0, %bb.i ], [ 0, %bb.k ], [ %i.av, %bb.n ] ; 2 uses
  %i.az = ptrtoint ptr %.sroa.15.1 to i64
  %i.ba = ptrtoint ptr %.sroa.0.1 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 1
  br i1 %i.bd, label %.lr.ph123, label %._crit_edge124

._crit_edge124:                                   ; preds = %.loopexit99, %.loopexit100
  %.055.lcssa = phi i64 [ %i.ay, %.loopexit100 ], [ %i.bh, %.loopexit99 ] ; 3 uses
  %i.be = add i64 %i.d, -1
  %i.bf = icmp ult i64 %.055.lcssa, %i.be
  br i1 %i.bf, label %bb.x, label %.loopexit

.lr.ph123:                                        ; preds = %.loopexit100, %.loopexit99
  %.054121 = phi i64 [ %i.cm, %.loopexit99 ], [ 1, %.loopexit100 ] ; 2 uses
  %.055120 = phi i64 [ %i.bh, %.loopexit99 ], [ %i.ay, %.loopexit100 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1, i64 %.054121
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !82 ; 6 uses
  %i.bi = sub i64 %i.bh, %.055120                 ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 1
  br i1 %i.bj, label %bb.p, label %.loopexit99

bb.p:                                             ; preds = %.lr.ph123
  %i.bk = load ptr, ptr %1, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.bh)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %1, align 8, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.055120)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !81
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !81 ; 2 uses
  %i.bw = fsub double %i.bt, %i.bv
  %i.bx = uitofp i64 %i.bi to double
  %i.by = fdiv double %i.bw, %i.bx
  %.052159 = add i64 %.055120, 1                  ; 2 uses
  %i.bz = icmp ult i64 %.052159, %i.bh
  br i1 %i.bz, label %.lr.ph163, label %.loopexit99

bb.s:                                             ; preds = %bb.v
  %.052 = add i64 %.052161, 1                     ; 2 uses
  %i.ca = icmp ult i64 %.052, %i.bh
  br i1 %i.ca, label %.lr.ph163, label %.loopexit99, !llvm.loop !78

bb.t:                                             ; preds = %bb.p
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.u:                                             ; preds = %bb.q
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.lr.ph163:                                        ; preds = %bb.r, %bb.s
  %.052161 = phi i64 [ %.052, %bb.s ], [ %.052159, %bb.r ] ; 3 uses
  %.053160 = phi double [ %i.ch, %bb.s ], [ %i.bv, %bb.r ]
  %i.cd = load ptr, ptr %1, align 8, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.052161)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.lr.ph163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 16, i1 false), !tbaa.struct !84
  %i.ch = fadd double %i.by, %.053160             ; 2 uses
  store double %i.ch, ptr %i.ad, align 8, !tbaa !81
  %i.ci = load ptr, ptr %1, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.052161)
          to label %bb.s unwind label %bb.w, !llvm.loop !78

bb.w:                                             ; preds = %bb.v, %.lr.ph163
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit99:                                      ; preds = %bb.s, %bb.r, %.lr.ph123
  %i.cm = add nuw i64 %.054121, 1                 ; 2 uses
  %exitcond133.not = icmp eq i64 %i.cm, %i.bc
  br i1 %exitcond133.not, label %._crit_edge124, label %.lr.ph123, !llvm.loop !79

bb.x:                                             ; preds = %._crit_edge124
  %i.cn = load ptr, ptr %1, align 8, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.055.lcssa)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !81
  %.0164 = add nuw i64 %.055.lcssa, 1             ; 2 uses
  %3 = icmp ult i64 %.0164, %i.d
  br i1 %3, label %.lr.ph167, label %.loopexit

bb.z:                                             ; preds = %bb.ab
  %.0 = add nuw i64 %.0165, 1                     ; 2 uses
  %4 = icmp ult i64 %.0, %i.d
  br i1 %4, label %.lr.ph167, label %.loopexit, !llvm.loop !80

bb.aa:                                            ; preds = %bb.x
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.lr.ph167:                                        ; preds = %bb.y, %bb.z
  %.0165 = phi i64 [ %.0, %bb.z ], [ %.0164, %bb.y ] ; 3 uses
  %i.cu = load ptr, ptr %1, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.0165)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.lr.ph167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 16, i1 false), !tbaa.struct !84
  store double %i.cs, ptr %i.ad, align 8, !tbaa !81
  %i.cy = load ptr, ptr %1, align 8, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.0165)
          to label %bb.z unwind label %bb.ac, !llvm.loop !80

bb.ac:                                            ; preds = %bb.ab, %.lr.ph167
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit:                                        ; preds = %bb.z, %bb.y, %._crit_edge124
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %.loopexit
  %.not.i.i.i79 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1) #11
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.ad, %bb.ae
  ret void

bb.af:                                            ; preds = %bb.u, %bb.w, %bb.t, %bb.ac, %bb.aa, %bb.l, %bb.o
  %.pn73.pn = phi { ptr, i32 } [ %i.am, %bb.l ], [ %i.ax, %bb.o ], [ %i.cc, %bb.u ], [ %i.cb, %bb.t ], [ %i.cl, %bb.w ], [ %i.db, %bb.ac ], [ %i.ct, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit101, %.loopexit.split-lp, %bb.af
  %.sroa.0.0109 = phi ptr [ %.sroa.0.1, %bb.af ], [ %.sroa.0.0112, %.loopexit101 ], [ %.sroa.0.0112, %.loopexit.split-lp ] ; 2 uses
  %.pn76 = phi { ptr, i32 } [ %.pn73.pn, %bb.af ], [ %lpad.loopexit, %.loopexit101 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i80 = icmp eq ptr %.sroa.0.0109, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorImSaImEED2Ev.exit81, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.0109) #11
  br label %_ZNSt6vectorImSaImEED2Ev.exit81

_ZNSt6vectorImSaImEED2Ev.exit81:                  ; preds = %bb.ag, %bb.ah
  resume { ptr, i32 } %.pn76
}

declare noundef ptr @_ZNK4geos4geom15GeometryFactory16createLineStringEPNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay11LineBuilder18labelIsolatedLinesEPSt6vectorIPNS_9geomgraph4EdgeESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.012 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.e ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.012
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(152) %i.k)
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  %i.r = load i8, ptr %i.q, align 1, !tbaa !89    ; 2 uses
  %i.s = zext i8 %i.r to i64
  %i.t = icmp eq i8 %i.r, 0
  br i1 %i.t, label %.loopexit, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = add nuw nsw i64 %.057.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.s
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !85

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.057.i.i = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %.057.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !54
  %.not.i.i = icmp eq i8 %i.w, -1
  br i1 %.not.i.i, label %bb.d, label %_ZNK4geos9geomgraph5Label6isNullEj.exit

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(152) %i.k), !inline_history !90
  %i.ac = load ptr, ptr %0, align 8, !tbaa !21
  %i.ad = tail call noundef ptr @_ZNK4geos9operation22GeometryGraphOperation14getArgGeometryEj(ptr noundef nonnull align 8 dereferenceable(176) %i.ac, i32 noundef 0)
  %i.ae = tail call noundef signext i8 @_ZN4geos9algorithm12PointLocator6locateERKNS_4geom10CoordinateEPKNS2_8GeometryE(ptr noundef nonnull align 4 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef %i.ad)
  store i8 %i.ae, ptr %i.l, align 8, !tbaa !54
  br label %bb.e

_ZNK4geos9geomgraph5Label6isNullEj.exit:          ; preds = %.lr.ph.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(152) %i.k), !inline_history !90
  %i.ak = load ptr, ptr %0, align 8, !tbaa !21
  %i.al = tail call noundef ptr @_ZNK4geos9operation22GeometryGraphOperation14getArgGeometryEj(ptr noundef nonnull align 8 dereferenceable(176) %i.ak, i32 noundef 1)
  %i.am = tail call noundef signext i8 @_ZN4geos9algorithm12PointLocator6locateERKNS_4geom10CoordinateEPKNS2_8GeometryE(ptr noundef nonnull align 4 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 %i.am, ptr %i.an, align 4, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %_ZNK4geos9geomgraph5Label6isNullEj.exit, %bb.b
  %i.ao = add nuw i64 %.012, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !86
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay11LineBuilder17labelIsolatedLineEPNS_9geomgraph4EdgeEh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %1, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(152) %1)
  %i.g = load ptr, ptr %0, align 8, !tbaa !21
  %i.h = zext i8 %2 to i32
  %i.i = tail call noundef ptr @_ZNK4geos9operation22GeometryGraphOperation14getArgGeometryEj(ptr noundef nonnull align 8 dereferenceable(176) %i.g, i32 noundef %i.h)
  %i.j = tail call noundef signext i8 @_ZN4geos9algorithm12PointLocator6locateERKNS_4geom10CoordinateEPKNS2_8GeometryE(ptr noundef nonnull align 4 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = zext i8 %2 to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  store i8 %i.j, ptr %i.m, align 1, !tbaa !54
  ret void
}

declare noundef signext i8 @_ZN4geos9algorithm12PointLocator6locateERKNS_4geom10CoordinateEPKNS2_8GeometryE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4geos9operation22GeometryGraphOperation14getArgGeometryEj(ptr noundef nonnull align 8 dereferenceable(176), i32 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !34}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
end_hunk_0
