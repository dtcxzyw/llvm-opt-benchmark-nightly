inline.NumInlined: 1048
inline.NumDeleted: 486
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryES6_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN4geos9operation8distance24FacetSequenceTreeBuilder5buildEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 dereferenceable(8) %2, ptr noundef %0)
  %i.a = invoke noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !7      ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4geos9operation8distance20IndexedFacetDistanceD2Ev.exit, label %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i

_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(96) %i.b) #15, !inline_history !12
  br label %_ZN4geos9operation8distance20IndexedFacetDistanceD2Ev.exit

_ZN4geos9operation8distance20IndexedFacetDistanceD2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret double %i.a

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %2, align 8, !tbaa !7      ; 3 uses
  %.not.i.i3 = icmp eq ptr %i.g, null
  br i1 %.not.i.i3, label %_ZN4geos9operation8distance20IndexedFacetDistanceD2Ev.exit5, label %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i4

_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i4: ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g) #15, !inline_history !12
  br label %_ZN4geos9operation8distance20IndexedFacetDistanceD2Ev.exit5

_ZN4geos9operation8distance20IndexedFacetDistanceD2Ev.exit5: ; preds = %bb.c, %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::index::strtree::TemplateSTRNodePair", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.7", align 1  ; 5 uses
  %5 = alloca %"class.std::priority_queue", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 5 uses
  %8 = alloca %"class.geos::index::strtree::TemplateSTRNodePair", align 8 ; 6 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @_ZN4geos9operation8distance24FacetSequenceTreeBuilder5buildEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %9, align 8, !tbaa !7      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE5buildEv(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE5buildEv(ptr noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %.noexc13 unwind label %bb.am

.noexc13:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 9 uses
  %.not4.i.i = icmp eq ptr %i.h, null
  br i1 %.not4.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %.noexc13
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !13   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %i.i, ptr %8, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = icmp eq ptr %i.l, %i.i
  %spec.select.i.i.i.i.i.i.i = or i1 %i.m, %i.n
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp eq ptr %i.p, %i.h
  %spec.select.i2.i.i.i.i.i.i = or i1 %i.q, %i.r
  br i1 %spec.select.i2.i.i.i.i.i.i, label %bb.d, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.i.i.i

bb.d:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = invoke noundef double @_ZNK4geos9operation8distance13FacetSequence8distanceERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i unwind label %bb.am

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.i.i.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = load double, ptr %i.x, align 8, !tbaa !32 ; 3 uses
  %i.aa = load double, ptr %i.y, align 8, !tbaa !32 ; 3 uses
  %i.ab = fcmp olt double %i.z, %i.aa
  %i.ac = select i1 %i.ab, double %i.aa, double %i.z
  %i.ad = load double, ptr %i.h, align 8, !tbaa !32 ; 3 uses
  %i.ae = load double, ptr %i.i, align 8, !tbaa !32 ; 3 uses
  %i.af = fcmp olt double %i.ad, %i.ae
  %i.ag = select i1 %i.af, double %i.ad, double %i.ae
  %i.ah = fsub double %i.ac, %i.ag
  %i.ai = fsub double %i.z, %i.ae
  %i.aj = fsub double %i.ah, %i.ai
  %i.ak = fsub double %i.aa, %i.ad
  %i.al = fsub double %i.aj, %i.ak                ; 2 uses
  %i.am = fcmp ogt double %i.al, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i.i.i.i = select i1 %i.am, double %i.al, double 0.000000e+00 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ap = load double, ptr %i.an, align 8, !tbaa !32 ; 3 uses
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !32 ; 3 uses
  %i.ar = fcmp olt double %i.ap, %i.aq
  %i.as = select i1 %i.ar, double %i.aq, double %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !32 ; 3 uses
  %i.aw = load double, ptr %i.at, align 8, !tbaa !32 ; 3 uses
  %i.ax = fcmp olt double %i.av, %i.aw
  %i.ay = select i1 %i.ax, double %i.av, double %i.aw
  %i.az = fsub double %i.as, %i.ay
  %i.ba = fsub double %i.ap, %i.aw
  %i.bb = fsub double %i.az, %i.ba
  %i.bc = fsub double %i.aq, %i.av
  %i.bd = fsub double %i.bb, %i.bc                ; 2 uses
  %i.be = fcmp ogt double %i.bd, 0.000000e+00
  %.sroa.speculated.i.i.i.i.i.i.i.i = select i1 %i.be, double %i.bd, double 0.000000e+00 ; 2 uses
  %i.bf = fmul double %.sroa.speculated19.i.i.i.i.i.i.i.i, %.sroa.speculated19.i.i.i.i.i.i.i.i
  %i.bg = fmul double %.sroa.speculated.i.i.i.i.i.i.i.i, %.sroa.speculated.i.i.i.i.i.i.i.i
  %i.bh = fadd double %i.bf, %i.bg
  %sqrt.i.i.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.bh)
  br label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i

_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i: ; preds = %bb.d, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi double [ %sqrt.i.i.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.i.i.i ], [ %i.w, %bb.d ]
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %.0.i.i.i.i.i, ptr %i.bi, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %5, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance8distanceEPKNS0_4geom8GeometryEE13FacetDistanceEESt6vectorISG_SaISG_EENS2_23TemplateSTRtreeDistanceIS8_S9_SF_E16PairQueueCompareEE4pushERKSG_(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %8)
          to label %.preheader.i.i.i.i.i unwind label %bb.k

.preheader.i.i.i.i.i:                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.val3024.i.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !34 ; 2 uses
  %.val3125.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !34 ; 2 uses
  %i.bk = icmp eq ptr %.val3024.i.i.i.i.i, %.val3125.i.i.i.i.i
  br i1 %i.bk, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.val3129.i.i.i.i.i = phi ptr [ %.val31.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ %.val3125.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %.val3028.i.i.i.i.i = phi ptr [ %.val30.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ %.val3024.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 15 uses
  %.01227.i.i.i.i.i = phi double [ %.2.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ +inf, %.lr.ph.i.preheader.i.i.i.i ] ; 7 uses
  %.sroa.09.026.i.i.i.i.i = phi ptr [ %.sroa.09.1.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ null, %.lr.ph.i.preheader.i.i.i.i ] ; 16 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load ptr, ptr %.val3028.i.i.i.i.i, align 8, !tbaa !36 ; 13 uses
  %.sroa.8.0..val32.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val3028.i.i.i.i.i, i64 8
  %.sroa.8.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.8.0..val32.sroa_idx.i.i.i.i.i, align 8, !tbaa !36 ; 13 uses
  %.sroa.10.0..val32.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val3028.i.i.i.i.i, i64 16
  %.sroa.10.0.copyload.i.i.i.i.i = load double, ptr %.sroa.10.0..val32.sroa_idx.i.i.i.i.i, align 8, !tbaa !32 ; 5 uses
  %i.bn = ptrtoint ptr %.val3129.i.i.i.i.i to i64
  %i.bo = ptrtoint ptr %.val3028.i.i.i.i.i to i64 ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp sgt i64 %i.bp, 24
  br i1 %i.bq, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.br = getelementptr inbounds i8, ptr %.val3129.i.i.i.i.i, i64 -24 ; 3 uses
  %.sroa.03.i.i.i.i.i.i.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.br, align 8
  %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.val3129.i.i.i.i.i, i64 -8
  %.sroa.46.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %.val3028.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !37
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.bo                    ; 2 uses
  %i.bu = sdiv exact i64 %i.bt, 24                ; 3 uses
  %i.bv = add nsw i64 %i.bu, -1
  %12 = sdiv i64 %i.bv, 2
  %i.bw = icmp sgt i64 %i.bt, 48
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.042.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.bx = shl i64 %.042.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.by = add i64 %i.bx, 2                        ; 2 uses
  %i.bz = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.by
  %i.ca = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.cb = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.bz, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cc, align 8, !tbaa !33
  %i.cd = getelementptr i8, ptr %i.cb, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cd, align 8, !tbaa !33
  %i.ce = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.ce, i64 %i.ca, i64 %i.by ; 4 uses
  %i.cf = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %spec.select.i.i.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.042.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !tbaa.struct !37
  %i.ch = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i.i, %12
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !38

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ci = and i64 %i.bu, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ck = add nsw i64 %i.bu, -2
  %i.cl = ashr exact i64 %i.ck, 1
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, %i.cl
  br i1 %i.cm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cn = shl nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.co
  %i.cq = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false), !tbaa.struct !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.co, %bb.g ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %13 = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %13, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance8distanceEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.h, %bb.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.h ] ; 4 uses
  %.097.in.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i, -1
  %.097.i.i.i.i.i.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.097.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cs, align 8, !tbaa !33
  %i.ct = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i.i, %.sroa.46.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.ct, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance8distanceEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.06.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !tbaa.struct !37
  %i.cv = icmp sgt i64 %.06.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance8distanceEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i, !llvm.loop !40

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance8distanceEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i.i.i, %bb.h ], [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %.06.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.cw = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store <2 x ptr> %.sroa.03.i.i.i.i.i.i.i.i.sroa.0.0.copyload, ptr %i.cw, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store double %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance8distanceEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cx = getelementptr inbounds i8, ptr %.val3129.i.i.i.i.i, i64 -24
  store ptr %i.cx, ptr %i.bj, align 8, !tbaa !41
  %.not18.i.i.i.i.i = icmp eq ptr %.sroa.09.026.i.i.i.i.i, null ; 2 uses
  %i.cy = fcmp ult double %.sroa.10.0.copyload.i.i.i.i.i, %.01227.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %.not18.i.i.i.i.i, i1 true, i1 %i.cy
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %.thread.thread.i.i.i.i.i

.thread.thread.i.i.i.i.i:                         ; preds = %bb.j
  %.val4044.i.i.i.i.i = load ptr, ptr %.sroa.09.026.i.i.i.i.i, align 8, !tbaa !23
  %i.cz = getelementptr i8, ptr %.sroa.09.026.i.i.i.i.i, i64 8
  %.val4145.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !26
  %i.da = getelementptr i8, ptr %.val4044.i.i.i.i.i, i64 32
  %.val40.val46.i.i.i.i.i = load ptr, ptr %i.da, align 8, !tbaa !30
  %i.db = getelementptr i8, ptr %.val4145.i.i.i.i.i, i64 32
  %.val41.val47.i.i.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !30
  br label %bb.ag

bb.k:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.t, %bb.s
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.v, %bb.u
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !27 ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  %i.dg = icmp eq ptr %i.de, %.sroa.02.0.copyload.i.i.i.i.i
  %spec.select.i.i.i.i3.i.i.i = or i1 %i.df, %i.dg
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27 ; 4 uses
  br i1 %spec.select.i.i.i.i3.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i: ; preds = %bb.l
  %i.dj = icmp eq ptr %i.di, null
  %i.dk = icmp eq ptr %i.di, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i2.i.i.i7.i.i.i = or i1 %i.dj, %i.dk
  br i1 %spec.select.i2.i.i.i7.i.i.i, label %bb.m, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i

bb.m:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i
  br i1 %.not18.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %.sroa.09.026.i.i.i.i.i, align 8, !tbaa !36
  %.sroa.8.0..val36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.026.i.i.i.i.i, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..val36.sroa_idx.i.i.i.i.i, align 8, !tbaa !36
  %.sroa.10.0..val36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.026.i.i.i.i.i, i64 16
  store double %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..val36.sroa_idx.i.i.i.i.i, align 8, !tbaa !32
  br label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
          to label %_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance8distanceEPKNS0_4geom8GeometryEE13FacetDistanceEESt14default_deleteISG_EED2Ev.exit.i.i.i.i.i unwind label %bb.p ; 4 uses

_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance8distanceEPKNS0_4geom8GeometryEE13FacetDistanceEESt14default_deleteISG_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.o
  store ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %i.dl, align 16, !tbaa !36, !noalias !43
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !36, !noalias !43
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store double %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 16, !tbaa !32, !noalias !43
  br label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i, %bb.l
  %i.dn = icmp ne ptr %i.de, null
  %i.do = icmp ne ptr %i.de, %.sroa.02.0.copyload.i.i.i.i.i
  %spec.select.i.not.i.i.i.i.i.i.i = and i1 %i.dn, %i.do ; 5 uses
  %i.dp = icmp ne ptr %i.di, null
  %i.dq = icmp ne ptr %i.di, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i.not.i34.i.i.i.i.i.i = and i1 %i.dp, %i.dq ; 2 uses
  %or.cond.i.i.i.i.i.i = and i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 8
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !46 ; 2 uses
  %i.dt = fcmp uno double %i.ds, 0.000000e+00
  %i.du = load double, ptr %.sroa.02.0.copyload.i.i.i.i.i, align 8
  %i.dv = fsub double %i.ds, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 24
  %i.dx = load double, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 16
  %i.dz = load double, ptr %i.dy, align 8
  %i.ea = fsub double %i.dx, %i.dz
  %i.eb = fmul double %i.dv, %i.ea
  %i.ec = select i1 %i.dt, double 0.000000e+00, double %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !46 ; 2 uses
  %i.ef = fcmp uno double %i.ee, 0.000000e+00
  %i.eg = load double, ptr %.sroa.8.0.copyload.i.i.i.i.i, align 8
  %i.eh = fsub double %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 24
  %i.ej = load double, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 16
  %i.el = load double, ptr %i.ek, align 8
  %i.em = fsub double %i.ej, %i.el
  %i.en = fmul double %i.eh, %i.em
  %i.eo = select i1 %i.ef, double 0.000000e+00, double %i.en
  %i.ep = fcmp ule double %i.ec, %i.eo            ; 3 uses
  %.sroa.02.0.copyload..sroa.8.0.copyload.i.i.i.i.i = select i1 %i.ep, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload..sroa.02.0.copyload.i.i.i.i.i = select i1 %i.ep, ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  br label %.invoke.i.i.i.i.i

bb.r:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %brmerge.i.i.i.i.i = or i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  %.sroa.02.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i
  %not.spec.select.i.not.i.i.i.i.i.i.i = xor i1 %spec.select.i.not.i.i.i.i.i.i.i, true
  br i1 %brmerge.i.i.i.i.i, label %.invoke.i.i.i.i.i, label %bb.w

.invoke.i.i.i.i.i:                                ; preds = %bb.r, %bb.q
  %i.eq = phi ptr [ %.sroa.02.0.copyload.mux.i.i.i.i.i, %bb.r ], [ %.sroa.02.0.copyload..sroa.8.0.copyload.i.i.i.i.i, %bb.q ] ; 2 uses
  %i.er = phi ptr [ %.sroa.8.0.copyload.mux.i.i.i.i.i, %bb.r ], [ %.sroa.8.0.copyload..sroa.02.0.copyload.i.i.i.i.i, %bb.q ] ; 11 uses
  %i.es = phi i1 [ %not.spec.select.i.not.i.i.i.i.i.i.i, %bb.r ], [ %i.ep, %bb.q ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !27 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !47
  %i.ex = icmp ult ptr %i.eu, %i.ew
  br i1 %i.ex, label %.lr.ph.i3.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 40 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 2 uses
  %i.fd = fcmp oeq double %.01227.i.i.i.i.i, +inf ; 2 uses
  br i1 %i.es, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i3.i.i.i.i, %.noexc5.i.i.i.i
  %.02.us.i.i.i.i.i = phi ptr [ %i.gy, %.noexc5.i.i.i.i ], [ %i.eu, %.lr.ph.i3.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %i.er, ptr %2, align 8, !tbaa !23
  store ptr %.02.us.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !26
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !27 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  %i.fg = icmp eq ptr %i.fe, %i.er
  %spec.select.i.i.i.i.us.i.i.i.i.i = or i1 %i.ff, %i.fg
  br i1 %spec.select.i.i.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !27 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  %i.fk = icmp eq ptr %i.fi, %.02.us.i.i.i.i.i
  %spec.select.i2.i.i.i.us.i.i.i.i.i = or i1 %i.fj, %i.fk
  br i1 %spec.select.i2.i.i.i.us.i.i.i.i.i, label %bb.s, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 8
  %i.fm = load double, ptr %i.ez, align 8, !tbaa !32 ; 3 uses
  %i.fn = load double, ptr %i.fl, align 8, !tbaa !32 ; 3 uses
  %i.fo = fcmp olt double %i.fm, %i.fn
  %i.fp = select i1 %i.fo, double %i.fn, double %i.fm
  %i.fq = load double, ptr %.02.us.i.i.i.i.i, align 8, !tbaa !32 ; 3 uses
  %i.fr = load double, ptr %i.er, align 8, !tbaa !32 ; 3 uses
  %i.fs = fcmp olt double %i.fq, %i.fr
  %i.ft = select i1 %i.fs, double %i.fq, double %i.fr
  %i.fu = fsub double %i.fp, %i.ft
  %i.fv = fsub double %i.fm, %i.fr
  %i.fw = fsub double %i.fu, %i.fv
  %i.fx = fsub double %i.fn, %i.fq
  %i.fy = fsub double %i.fw, %i.fx                ; 2 uses
  %i.fz = fcmp ogt double %i.fy, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i = select i1 %i.fz, double %i.fy, double 0.000000e+00 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 24
  %i.gb = load double, ptr %i.fa, align 8, !tbaa !32 ; 3 uses
  %i.gc = load double, ptr %i.ga, align 8, !tbaa !32 ; 3 uses
  %i.gd = fcmp olt double %i.gb, %i.gc
  %i.ge = select i1 %i.gd, double %i.gc, double %i.gb
  %i.gf = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 16
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !32 ; 3 uses
  %i.gh = load double, ptr %i.fb, align 8, !tbaa !32 ; 3 uses
  %i.gi = fcmp olt double %i.gg, %i.gh
  %i.gj = select i1 %i.gi, double %i.gg, double %i.gh
  %i.gk = fsub double %i.ge, %i.gj
  %i.gl = fsub double %i.gb, %i.gh
  %i.gm = fsub double %i.gk, %i.gl
  %i.gn = fsub double %i.gc, %i.gg
  %i.go = fsub double %i.gm, %i.gn                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4geos9operation8distance20IndexedFacetDistance13nearestPointsEPKNS_4geom8GeometryE:bb.a
bb.b:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i6
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.e) #18
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %.thread, %bb.b
  %lpad.phi35 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.b ]
  %i.o = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN4geos9operation8distance16GeometryLocationESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.o) #18
  br label %_ZNSt6vectorIN4geos9operation8distance16GeometryLocationESaIS3_EED2Ev.exit

_ZNSt6vectorIN4geos9operation8distance16GeometryLocationESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %lpad.phi35

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i10.preheader
  call void @_ZdlPv(ptr noundef nonnull %i.n) #18
  br label %_ZNSt6vectorIN4geos9operation8distance16GeometryLocationESaIS3_EED2Ev.exit24

_ZNSt6vectorIN4geos9operation8distance16GeometryLocationESaIS3_EED2Ev.exit24: ; preds = %.lr.ph.i.i.i.i.i.i10.preheader, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

declare void @_ZN4geos9operation8distance24FacetSequenceTreeBuilder5buildEPKNS_4geom8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noundef double @_ZNK4geos9operation8distance13FacetSequence8distanceERKS2_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos9operation8distance20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.11") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.geos::index::strtree::TemplateSTRNodePair.43", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 5 uses
  %6 = alloca %"class.std::priority_queue.52", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.7", align 1  ; 5 uses
  %9 = alloca %"class.geos::index::strtree::TemplateSTRNodePair.43", align 8 ; 6 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @_ZN4geos9operation8distance24FacetSequenceTreeBuilder5buildEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef %2)
  %i.a = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %10, align 8, !tbaa !7     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE5buildEv(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE5buildEv(ptr noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %.noexc13 unwind label %bb.am

.noexc13:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 9 uses
  %.not4.i.i = icmp eq ptr %i.h, null
  br i1 %.not4.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %.noexc13
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !13   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr %i.i, ptr %9, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = icmp eq ptr %i.l, %i.i
  %spec.select.i.i.i.i.i.i.i = or i1 %i.m, %i.n
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp eq ptr %i.p, %i.h
  %spec.select.i2.i.i.i.i.i.i = or i1 %i.q, %i.r
  br i1 %spec.select.i2.i.i.i.i.i.i, label %bb.d, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.i.i.i

bb.d:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = invoke noundef double @_ZNK4geos9operation8distance13FacetSequence8distanceERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i unwind label %bb.am

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.i.i.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = load double, ptr %i.x, align 8, !tbaa !32 ; 3 uses
  %i.aa = load double, ptr %i.y, align 8, !tbaa !32 ; 3 uses
  %i.ab = fcmp olt double %i.z, %i.aa
  %i.ac = select i1 %i.ab, double %i.aa, double %i.z
  %i.ad = load double, ptr %i.h, align 8, !tbaa !32 ; 3 uses
  %i.ae = load double, ptr %i.i, align 8, !tbaa !32 ; 3 uses
  %i.af = fcmp olt double %i.ad, %i.ae
  %i.ag = select i1 %i.af, double %i.ad, double %i.ae
  %i.ah = fsub double %i.ac, %i.ag
  %i.ai = fsub double %i.z, %i.ae
  %i.aj = fsub double %i.ah, %i.ai
  %i.ak = fsub double %i.aa, %i.ad
  %i.al = fsub double %i.aj, %i.ak                ; 2 uses
  %i.am = fcmp ogt double %i.al, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i.i.i.i = select i1 %i.am, double %i.al, double 0.000000e+00 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ap = load double, ptr %i.an, align 8, !tbaa !32 ; 3 uses
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !32 ; 3 uses
  %i.ar = fcmp olt double %i.ap, %i.aq
  %i.as = select i1 %i.ar, double %i.aq, double %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !32 ; 3 uses
  %i.aw = load double, ptr %i.at, align 8, !tbaa !32 ; 3 uses
  %i.ax = fcmp olt double %i.av, %i.aw
  %i.ay = select i1 %i.ax, double %i.av, double %i.aw
  %i.az = fsub double %i.as, %i.ay
  %i.ba = fsub double %i.ap, %i.aw
  %i.bb = fsub double %i.az, %i.ba
  %i.bc = fsub double %i.aq, %i.av
  %i.bd = fsub double %i.bb, %i.bc                ; 2 uses
  %i.be = fcmp ogt double %i.bd, 0.000000e+00
  %.sroa.speculated.i.i.i.i.i.i.i.i = select i1 %i.be, double %i.bd, double 0.000000e+00 ; 2 uses
  %i.bf = fmul double %.sroa.speculated19.i.i.i.i.i.i.i.i, %.sroa.speculated19.i.i.i.i.i.i.i.i
  %i.bg = fmul double %.sroa.speculated.i.i.i.i.i.i.i.i, %.sroa.speculated.i.i.i.i.i.i.i.i
  %i.bh = fadd double %i.bf, %i.bg
  %sqrt.i.i.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.bh)
  br label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i

_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i: ; preds = %bb.d, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi double [ %sqrt.i.i.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.i.i.i ], [ %i.w, %bb.d ]
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %.0.i.i.i.i.i, ptr %i.bi, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %6, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance16nearestLocationsEPKNS0_4geom8GeometryEE13FacetDistanceEESt6vectorISG_SaISG_EENS2_23TemplateSTRtreeDistanceIS8_S9_SF_E16PairQueueCompareEE4pushERKSG_(ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %9)
          to label %.preheader.i.i.i.i.i unwind label %bb.k

.preheader.i.i.i.i.i:                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.val3024.i.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !71 ; 2 uses
  %.val3125.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !71 ; 2 uses
  %i.bk = icmp eq ptr %.val3024.i.i.i.i.i, %.val3125.i.i.i.i.i
  br i1 %i.bk, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.val3129.i.i.i.i.i = phi ptr [ %.val31.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ %.val3125.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %.val3028.i.i.i.i.i = phi ptr [ %.val30.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ %.val3024.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 15 uses
  %.01227.i.i.i.i.i = phi double [ %.2.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ +inf, %.lr.ph.i.preheader.i.i.i.i ] ; 7 uses
  %.sroa.09.026.i.i.i.i.i = phi ptr [ %.sroa.09.1.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ null, %.lr.ph.i.preheader.i.i.i.i ] ; 16 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load ptr, ptr %.val3028.i.i.i.i.i, align 8, !tbaa !36 ; 13 uses
  %.sroa.8.0..val32.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val3028.i.i.i.i.i, i64 8
  %.sroa.8.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.8.0..val32.sroa_idx.i.i.i.i.i, align 8, !tbaa !36 ; 13 uses
  %.sroa.10.0..val32.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val3028.i.i.i.i.i, i64 16
  %.sroa.10.0.copyload.i.i.i.i.i = load double, ptr %.sroa.10.0..val32.sroa_idx.i.i.i.i.i, align 8, !tbaa !32 ; 5 uses
  %i.bn = ptrtoint ptr %.val3129.i.i.i.i.i to i64
  %i.bo = ptrtoint ptr %.val3028.i.i.i.i.i to i64 ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp sgt i64 %i.bp, 24
  br i1 %i.bq, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.br = getelementptr inbounds i8, ptr %.val3129.i.i.i.i.i, i64 -24 ; 3 uses
  %.sroa.03.i.i.i.i.i.i.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.br, align 8
  %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.val3129.i.i.i.i.i, i64 -8
  %.sroa.46.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %.val3028.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !37
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.bo                    ; 2 uses
  %i.bu = sdiv exact i64 %i.bt, 24                ; 3 uses
  %i.bv = add nsw i64 %i.bu, -1
  %13 = sdiv i64 %i.bv, 2
  %i.bw = icmp sgt i64 %i.bt, 48
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.042.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.bx = shl i64 %.042.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.by = add i64 %i.bx, 2                        ; 2 uses
  %i.bz = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.by
  %i.ca = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.cb = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.bz, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cc, align 8, !tbaa !70
  %i.cd = getelementptr i8, ptr %i.cb, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cd, align 8, !tbaa !70
  %i.ce = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.ce, i64 %i.ca, i64 %i.by ; 4 uses
  %i.cf = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %spec.select.i.i.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.042.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !tbaa.struct !37
  %i.ch = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i.i, %13
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !73

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ci = and i64 %i.bu, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ck = add nsw i64 %i.bu, -2
  %i.cl = ashr exact i64 %i.ck, 1
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, %i.cl
  br i1 %i.cm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cn = shl nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.co
  %i.cq = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false), !tbaa.struct !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.co, %bb.g ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %14 = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %14, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance16nearestLocationsEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.h, %bb.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.h ] ; 4 uses
  %.097.in.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i, -1
  %.097.i.i.i.i.i.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.097.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cs, align 8, !tbaa !70
  %i.ct = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i.i, %.sroa.46.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.ct, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance16nearestLocationsEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.06.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !tbaa.struct !37
  %i.cv = icmp sgt i64 %.06.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance16nearestLocationsEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i, !llvm.loop !74

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance16nearestLocationsEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i.i.i, %bb.h ], [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %.06.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.cw = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store <2 x ptr> %.sroa.03.i.i.i.i.i.i.i.i.sroa.0.0.copyload, ptr %i.cw, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store double %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance16nearestLocationsEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cx = getelementptr inbounds i8, ptr %.val3129.i.i.i.i.i, i64 -24
  store ptr %i.cx, ptr %i.bj, align 8, !tbaa !75
  %.not18.i.i.i.i.i = icmp eq ptr %.sroa.09.026.i.i.i.i.i, null ; 2 uses
  %i.cy = fcmp ult double %.sroa.10.0.copyload.i.i.i.i.i, %.01227.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %.not18.i.i.i.i.i, i1 true, i1 %i.cy
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %.thread.thread.i.i.i.i.i

.thread.thread.i.i.i.i.i:                         ; preds = %bb.j
  %.val4044.i.i.i.i.i = load ptr, ptr %.sroa.09.026.i.i.i.i.i, align 8, !tbaa !67
  %i.cz = getelementptr i8, ptr %.sroa.09.026.i.i.i.i.i, i64 8
  %.val4145.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !69
  %i.da = getelementptr i8, ptr %.val4044.i.i.i.i.i, i64 32
  %.val40.val46.i.i.i.i.i = load ptr, ptr %i.da, align 8, !tbaa !30
  %i.db = getelementptr i8, ptr %.val4145.i.i.i.i.i, i64 32
  %.val41.val47.i.i.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !30
  br label %bb.ag

bb.k:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.t, %bb.s
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.v, %bb.u
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !27 ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  %i.dg = icmp eq ptr %i.de, %.sroa.02.0.copyload.i.i.i.i.i
  %spec.select.i.i.i.i3.i.i.i = or i1 %i.df, %i.dg
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27 ; 4 uses
  br i1 %spec.select.i.i.i.i3.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i: ; preds = %bb.l
  %i.dj = icmp eq ptr %i.di, null
  %i.dk = icmp eq ptr %i.di, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i2.i.i.i7.i.i.i = or i1 %i.dj, %i.dk
  br i1 %spec.select.i2.i.i.i7.i.i.i, label %bb.m, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i

bb.m:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i
  br i1 %.not18.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %.sroa.09.026.i.i.i.i.i, align 8, !tbaa !36
  %.sroa.8.0..val36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.026.i.i.i.i.i, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..val36.sroa_idx.i.i.i.i.i, align 8, !tbaa !36
  %.sroa.10.0..val36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.026.i.i.i.i.i, i64 16
  store double %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..val36.sroa_idx.i.i.i.i.i, align 8, !tbaa !32
  br label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
          to label %_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance16nearestLocationsEPKNS0_4geom8GeometryEE13FacetDistanceEESt14default_deleteISG_EED2Ev.exit.i.i.i.i.i unwind label %bb.p ; 4 uses

_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance16nearestLocationsEPKNS0_4geom8GeometryEE13FacetDistanceEESt14default_deleteISG_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.o
  store ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %i.dl, align 16, !tbaa !36, !noalias !77
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !36, !noalias !77
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store double %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 16, !tbaa !32, !noalias !77
  br label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i, %bb.l
  %i.dn = icmp ne ptr %i.de, null
  %i.do = icmp ne ptr %i.de, %.sroa.02.0.copyload.i.i.i.i.i
  %spec.select.i.not.i.i.i.i.i.i.i = and i1 %i.dn, %i.do ; 5 uses
  %i.dp = icmp ne ptr %i.di, null
  %i.dq = icmp ne ptr %i.di, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i.not.i34.i.i.i.i.i.i = and i1 %i.dp, %i.dq ; 2 uses
  %or.cond.i.i.i.i.i.i = and i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 8
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !46 ; 2 uses
  %i.dt = fcmp uno double %i.ds, 0.000000e+00
  %i.du = load double, ptr %.sroa.02.0.copyload.i.i.i.i.i, align 8
  %i.dv = fsub double %i.ds, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 24
  %i.dx = load double, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 16
  %i.dz = load double, ptr %i.dy, align 8
  %i.ea = fsub double %i.dx, %i.dz
  %i.eb = fmul double %i.dv, %i.ea
  %i.ec = select i1 %i.dt, double 0.000000e+00, double %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !46 ; 2 uses
  %i.ef = fcmp uno double %i.ee, 0.000000e+00
  %i.eg = load double, ptr %.sroa.8.0.copyload.i.i.i.i.i, align 8
  %i.eh = fsub double %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 24
  %i.ej = load double, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 16
  %i.el = load double, ptr %i.ek, align 8
  %i.em = fsub double %i.ej, %i.el
  %i.en = fmul double %i.eh, %i.em
  %i.eo = select i1 %i.ef, double 0.000000e+00, double %i.en
  %i.ep = fcmp ule double %i.ec, %i.eo            ; 3 uses
  %.sroa.02.0.copyload..sroa.8.0.copyload.i.i.i.i.i = select i1 %i.ep, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload..sroa.02.0.copyload.i.i.i.i.i = select i1 %i.ep, ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  br label %.invoke.i.i.i.i.i

bb.r:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %brmerge.i.i.i.i.i = or i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  %.sroa.02.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i
  %not.spec.select.i.not.i.i.i.i.i.i.i = xor i1 %spec.select.i.not.i.i.i.i.i.i.i, true
  br i1 %brmerge.i.i.i.i.i, label %.invoke.i.i.i.i.i, label %bb.w

.invoke.i.i.i.i.i:                                ; preds = %bb.r, %bb.q
  %i.eq = phi ptr [ %.sroa.02.0.copyload.mux.i.i.i.i.i, %bb.r ], [ %.sroa.02.0.copyload..sroa.8.0.copyload.i.i.i.i.i, %bb.q ] ; 2 uses
  %i.er = phi ptr [ %.sroa.8.0.copyload.mux.i.i.i.i.i, %bb.r ], [ %.sroa.8.0.copyload..sroa.02.0.copyload.i.i.i.i.i, %bb.q ] ; 11 uses
  %i.es = phi i1 [ %not.spec.select.i.not.i.i.i.i.i.i.i, %bb.r ], [ %i.ep, %bb.q ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !27 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !47
  %i.ex = icmp ult ptr %i.eu, %i.ew
  br i1 %i.ex, label %.lr.ph.i3.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 40 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 2 uses
  %i.fd = fcmp oeq double %.01227.i.i.i.i.i, +inf ; 2 uses
  br i1 %i.es, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i3.i.i.i.i, %.noexc5.i.i.i.i
  %.02.us.i.i.i.i.i = phi ptr [ %i.gy, %.noexc5.i.i.i.i ], [ %i.eu, %.lr.ph.i3.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %i.er, ptr %3, align 8, !tbaa !67
  store ptr %.02.us.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !69
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !27 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  %i.fg = icmp eq ptr %i.fe, %i.er
  %spec.select.i.i.i.i.us.i.i.i.i.i = or i1 %i.ff, %i.fg
  br i1 %spec.select.i.i.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !27 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  %i.fk = icmp eq ptr %i.fi, %.02.us.i.i.i.i.i
  %spec.select.i2.i.i.i.us.i.i.i.i.i = or i1 %i.fj, %i.fk
  br i1 %spec.select.i2.i.i.i.us.i.i.i.i.i, label %bb.s, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 8
  %i.fm = load double, ptr %i.ez, align 8, !tbaa !32 ; 3 uses
  %i.fn = load double, ptr %i.fl, align 8, !tbaa !32 ; 3 uses
  %i.fo = fcmp olt double %i.fm, %i.fn
  %i.fp = select i1 %i.fo, double %i.fn, double %i.fm
  %i.fq = load double, ptr %.02.us.i.i.i.i.i, align 8, !tbaa !32 ; 3 uses
  %i.fr = load double, ptr %i.er, align 8, !tbaa !32 ; 3 uses
  %i.fs = fcmp olt double %i.fq, %i.fr
  %i.ft = select i1 %i.fs, double %i.fq, double %i.fr
  %i.fu = fsub double %i.fp, %i.ft
  %i.fv = fsub double %i.fm, %i.fr
  %i.fw = fsub double %i.fu, %i.fv
  %i.fx = fsub double %i.fn, %i.fq
  %i.fy = fsub double %i.fw, %i.fx                ; 2 uses
  %i.fz = fcmp ogt double %i.fy, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i = select i1 %i.fz, double %i.fy, double 0.000000e+00 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 24
  %i.gb = load double, ptr %i.fa, align 8, !tbaa !32 ; 3 uses
  %i.gc = load double, ptr %i.ga, align 8, !tbaa !32 ; 3 uses
  %i.gd = fcmp olt double %i.gb, %i.gc
  %i.ge = select i1 %i.gd, double %i.gc, double %i.gb
  %i.gf = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 16
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !32 ; 3 uses
  %i.gh = load double, ptr %i.fb, align 8, !tbaa !32 ; 3 uses
  %i.gi = fcmp olt double %i.gg, %i.gh
  %i.gj = select i1 %i.gi, double %i.gg, double %i.gh
  %i.gk = fsub double %i.ge, %i.gj
  %i.gl = fsub double %i.gb, %i.gh
  %i.gm = fsub double %i.gk, %i.gl
  %i.gn = fsub double %i.gc, %i.gg
  %i.go = fsub double %i.gm, %i.gn                ; 2 uses
end_hunk_1
