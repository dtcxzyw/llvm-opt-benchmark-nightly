inline.NumInlined: 1048
inline.NumDeleted: 486
begin_hunk_0

$_ZTVN4geos4util24IllegalArgumentExceptionE = comdat any

@.str = private unnamed_addr constant [59 x i8] c"Cannot calculate IndexedFacetDistance on empty geometries.\00", align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error computing nearest neighbor\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"neither boundable is composite\00", align 1
@_ZTIN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util24IllegalArgumentExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTSN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant [39 x i8] c"N4geos4util24IllegalArgumentExceptionE\00", comdat, align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"IllegalArgumentException\00", align 1
@_ZTVN4geos4util24IllegalArgumentExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util24IllegalArgumentExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryES6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::operation::distance::IndexedFacetDistance", align 8 ; 7 uses
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
define noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.bw = sdiv i64 %i.bv, 2
  %i.bx = icmp sgt i64 %i.bt, 48
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.042.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.by = shl i64 %.042.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.bz = add i64 %i.by, 2                        ; 2 uses
  %i.ca = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.bz
  %i.cb = or disjoint i64 %i.by, 1                ; 2 uses
  %i.cc = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.ca, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cd, align 8, !tbaa !33
  %i.ce = getelementptr i8, ptr %i.cc, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ce, align 8, !tbaa !33
  %i.cf = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.cf, i64 %i.cb, i64 %i.bz ; 4 uses
  %i.cg = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %spec.select.i.i.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.042.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !tbaa.struct !37
  %i.ci = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i.i, %i.bw
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !38

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.cj = and i64 %i.bu, 1
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.cl = add nsw i64 %i.bu, -2
  %i.cm = ashr exact i64 %i.cl, 1
  %i.cn = icmp eq i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, %i.cm
  br i1 %i.cn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.co = shl nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 1
  %i.cp = or disjoint i64 %i.co, 1                ; 2 uses
  %i.cq = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.cp
  %i.cr = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !tbaa.struct !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cp, %bb.g ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cs = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance8distanceEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.h, %bb.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.h ] ; 4 uses
  %.097.in.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i, -1
  %.097.i.i.i.i.i.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.097.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cu, align 8, !tbaa !33
  %i.cv = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i.i, %.sroa.46.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cv, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance8distanceEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.06.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !tbaa.struct !37
  %i.cx = icmp sgt i64 %.06.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance8distanceEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i, !llvm.loop !40

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance8distanceEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i.i.i, %bb.h ], [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %.06.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.cy = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store <2 x ptr> %.sroa.03.i.i.i.i.i.i.i.i.sroa.0.0.copyload, ptr %i.cy, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store double %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance8distanceEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %.val3129.i.i.i.i.i, i64 -24
  store ptr %i.cz, ptr %i.bj, align 8, !tbaa !41
  %.not18.i.i.i.i.i = icmp eq ptr %.sroa.09.026.i.i.i.i.i, null ; 2 uses
  %i.da = fcmp ult double %.sroa.10.0.copyload.i.i.i.i.i, %.01227.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %.not18.i.i.i.i.i, i1 true, i1 %i.da
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %.thread.thread.i.i.i.i.i

.thread.thread.i.i.i.i.i:                         ; preds = %bb.j
  %.val4044.i.i.i.i.i = load ptr, ptr %.sroa.09.026.i.i.i.i.i, align 8, !tbaa !23
  %i.db = getelementptr i8, ptr %.sroa.09.026.i.i.i.i.i, i64 8
  %.val4145.i.i.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !26
  %i.dc = getelementptr i8, ptr %.val4044.i.i.i.i.i, i64 32
  %.val40.val46.i.i.i.i.i = load ptr, ptr %i.dc, align 8, !tbaa !30
  %i.dd = getelementptr i8, ptr %.val4145.i.i.i.i.i, i64 32
  %.val41.val47.i.i.i.i.i = load ptr, ptr %i.dd, align 8, !tbaa !30
  br label %bb.ag

bb.k:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i
  %i.de = landingpad { ptr, i32 }
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
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !27 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  %i.di = icmp eq ptr %i.dg, %.sroa.02.0.copyload.i.i.i.i.i
  %spec.select.i.i.i.i3.i.i.i = or i1 %i.dh, %i.di
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !27 ; 4 uses
  br i1 %spec.select.i.i.i.i3.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i: ; preds = %bb.l
  %i.dl = icmp eq ptr %i.dk, null
  %i.dm = icmp eq ptr %i.dk, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i2.i.i.i7.i.i.i = or i1 %i.dl, %i.dm
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
  %i.dn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
          to label %_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance8distanceEPKNS0_4geom8GeometryEE13FacetDistanceEESt14default_deleteISG_EED2Ev.exit.i.i.i.i.i unwind label %bb.p ; 4 uses

_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance8distanceEPKNS0_4geom8GeometryEE13FacetDistanceEESt14default_deleteISG_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.o
  store ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %i.dn, align 16, !tbaa !36, !noalias !43
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !36, !noalias !43
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store double %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 16, !tbaa !32, !noalias !43
  br label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i, %bb.l
  %i.dp = icmp ne ptr %i.dg, null
  %i.dq = icmp ne ptr %i.dg, %.sroa.02.0.copyload.i.i.i.i.i
  %spec.select.i.not.i.i.i.i.i.i.i = and i1 %i.dp, %i.dq ; 5 uses
  %i.dr = icmp ne ptr %i.dk, null
  %i.ds = icmp ne ptr %i.dk, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i.not.i34.i.i.i.i.i.i = and i1 %i.dr, %i.ds ; 2 uses
  %or.cond.i.i.i.i.i.i = and i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 8
  %i.du = load double, ptr %i.dt, align 8, !tbaa !46 ; 2 uses
  %i.dv = fcmp uno double %i.du, 0.000000e+00
  %i.dw = load double, ptr %.sroa.02.0.copyload.i.i.i.i.i, align 8
  %i.dx = fsub double %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 24
  %i.dz = load double, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 16
  %i.eb = load double, ptr %i.ea, align 8
  %i.ec = fsub double %i.dz, %i.eb
  %i.ed = fmul double %i.dx, %i.ec
  %i.ee = select i1 %i.dv, double 0.000000e+00, double %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !46 ; 2 uses
  %i.eh = fcmp uno double %i.eg, 0.000000e+00
  %i.ei = load double, ptr %.sroa.8.0.copyload.i.i.i.i.i, align 8
  %i.ej = fsub double %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 24
  %i.el = load double, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 16
  %i.en = load double, ptr %i.em, align 8
  %i.eo = fsub double %i.el, %i.en
  %i.ep = fmul double %i.ej, %i.eo
  %i.eq = select i1 %i.eh, double 0.000000e+00, double %i.ep
  %i.er = fcmp ule double %i.ee, %i.eq            ; 3 uses
  %.sroa.02.0.copyload..sroa.8.0.copyload.i.i.i.i.i = select i1 %i.er, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload..sroa.02.0.copyload.i.i.i.i.i = select i1 %i.er, ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  br label %.invoke.i.i.i.i.i

bb.r:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %brmerge.i.i.i.i.i = or i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  %.sroa.02.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i
  %not.spec.select.i.not.i.i.i.i.i.i.i = xor i1 %spec.select.i.not.i.i.i.i.i.i.i, true
  br i1 %brmerge.i.i.i.i.i, label %.invoke.i.i.i.i.i, label %bb.w

.invoke.i.i.i.i.i:                                ; preds = %bb.r, %bb.q
  %i.es = phi ptr [ %.sroa.02.0.copyload.mux.i.i.i.i.i, %bb.r ], [ %.sroa.02.0.copyload..sroa.8.0.copyload.i.i.i.i.i, %bb.q ] ; 2 uses
  %i.et = phi ptr [ %.sroa.8.0.copyload.mux.i.i.i.i.i, %bb.r ], [ %.sroa.8.0.copyload..sroa.02.0.copyload.i.i.i.i.i, %bb.q ] ; 11 uses
  %i.eu = phi i1 [ %not.spec.select.i.not.i.i.i.i.i.i.i, %bb.r ], [ %i.er, %bb.q ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !27 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !47
  %i.ez = icmp ult ptr %i.ew, %i.ey
  br i1 %i.ez, label %.lr.ph.i3.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 2 uses
  %i.ff = fcmp oeq double %.01227.i.i.i.i.i, +inf ; 2 uses
  br i1 %i.eu, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i3.i.i.i.i, %.noexc5.i.i.i.i
  %.02.us.i.i.i.i.i = phi ptr [ %i.ha, %.noexc5.i.i.i.i ], [ %i.ew, %.lr.ph.i3.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %i.et, ptr %2, align 8, !tbaa !23
  store ptr %.02.us.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !26
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !27 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  %i.fi = icmp eq ptr %i.fg, %i.et
  %spec.select.i.i.i.i.us.i.i.i.i.i = or i1 %i.fh, %i.fi
  br i1 %spec.select.i.i.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !27 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  %i.fm = icmp eq ptr %i.fk, %.02.us.i.i.i.i.i
  %spec.select.i2.i.i.i.us.i.i.i.i.i = or i1 %i.fl, %i.fm
  br i1 %spec.select.i2.i.i.i.us.i.i.i.i.i, label %bb.s, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 8
  %i.fo = load double, ptr %i.fb, align 8, !tbaa !32 ; 3 uses
  %i.fp = load double, ptr %i.fn, align 8, !tbaa !32 ; 3 uses
  %i.fq = fcmp olt double %i.fo, %i.fp
  %i.fr = select i1 %i.fq, double %i.fp, double %i.fo
  %i.fs = load double, ptr %.02.us.i.i.i.i.i, align 8, !tbaa !32 ; 3 uses
  %i.ft = load double, ptr %i.et, align 8, !tbaa !32 ; 3 uses
  %i.fu = fcmp olt double %i.fs, %i.ft
  %i.fv = select i1 %i.fu, double %i.fs, double %i.ft
  %i.fw = fsub double %i.fr, %i.fv
  %i.fx = fsub double %i.fo, %i.ft
  %i.fy = fsub double %i.fw, %i.fx
  %i.fz = fsub double %i.fp, %i.fs
  %i.ga = fsub double %i.fy, %i.fz                ; 2 uses
  %i.gb = fcmp ogt double %i.ga, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i = select i1 %i.gb, double %i.ga, double 0.000000e+00 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 24
  %i.gd = load double, ptr %i.fc, align 8, !tbaa !32 ; 3 uses
  %i.ge = load double, ptr %i.gc, align 8, !tbaa !32 ; 3 uses
  %i.gf = fcmp olt double %i.gd, %i.ge
  %i.gg = select i1 %i.gf, double %i.ge, double %i.gd
  %i.gh = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 16
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !32 ; 3 uses
  %i.gj = load double, ptr %i.fd, align 8, !tbaa !32 ; 3 uses
  %i.gk = fcmp olt double %i.gi, %i.gj
  %i.gl = select i1 %i.gk, double %i.gi, double %i.gj
  %i.gm = fsub double %i.gg, %i.gl
  %i.gn = fsub double %i.gd, %i.gj
  %i.go = fsub double %i.gm, %i.gn
  %i.gp = fsub double %i.ge, %i.gi
  %i.gq = fsub double %i.go, %i.gp                ; 2 uses
  %i.gr = fcmp ogt double %i.gq, 0.000000e+00
  %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i = select i1 %i.gr, double %i.gq, double 0.000000e+00 ; 2 uses
  %i.gs = fmul double %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i, %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i
  %i.gt = fmul double %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i, %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i
  %i.gu = fadd double %i.gs, %i.gt
  %sqrt.i.i.i.i.us.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.gu)
  br label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.us.i.i.i.i.i

bb.s:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i
  %i.gv = load ptr, ptr %i.fe, align 8, !tbaa !30
  %i.gw = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !30
  %i.gy = invoke noundef double @_ZNK4geos9operation8distance13FacetSequence8distanceERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.gv, ptr noundef nonnull align 8 dereferenceable(64) %i.gx)
          to label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.us.i.i.i.i.i unwind label %.loopexit.i.i.i.i

_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.us.i.i.i.i.i: ; preds = %bb.s, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i
  %.0.i.i.us.i.i.i.i.i = phi double [ %sqrt.i.i.i.i.us.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i ], [ %i.gy, %bb.s ] ; 2 uses
  store double %.0.i.i.us.i.i.i.i.i, ptr %i.bm, align 8, !tbaa !33
  %i.gz = fcmp olt double %.0.i.i.us.i.i.i.i.i, %.01227.i.i.i.i.i
  %or.cond.us.i.i.i.i.i = or i1 %i.ff, %i.gz
  br i1 %or.cond.us.i.i.i.i.i, label %bb.t, label %.noexc5.i.i.i.i

bb.t:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.us.i.i.i.i.i
  invoke fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance8distanceEPKNS0_4geom8GeometryEE13FacetDistanceEESt6vectorISG_SaISG_EENS2_23TemplateSTRtreeDistanceIS8_S9_SF_E16PairQueueCompareEE4pushERKSG_(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc5.i.i.i.i:                                  ; preds = %bb.t, %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.us.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.ha = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 48 ; 2 uses
  %i.hb = load ptr, ptr %i.ex, align 8, !tbaa !47
  %i.hc = icmp ult ptr %i.ha, %i.hb
  br i1 %i.hc, label %.lr.ph.split.us.i.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i, !llvm.loop !48

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i3.i.i.i.i, %.noexc7.i.i.i.i
  %.02.i.i.i.i.i = phi ptr [ %i.ix, %.noexc7.i.i.i.i ], [ %i.ew, %.lr.ph.i3.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %.02.i.i.i.i.i, ptr %2, align 8, !tbaa !23
  store ptr %i.et, ptr %i.bl, align 8, !tbaa !26
  %i.hd = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !27 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  %i.hg = icmp eq ptr %i.he, %.02.i.i.i.i.i
  %spec.select.i.i.i.i13.i.i.i.i.i = or i1 %i.hf, %i.hg
  br i1 %spec.select.i.i.i.i13.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i
  %i.hh = load ptr, ptr %i.fa, align 8, !tbaa !27 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  %i.hj = icmp eq ptr %i.hh, %i.et
  %spec.select.i2.i.i.i20.i.i.i.i.i = or i1 %i.hi, %i.hj
  br i1 %spec.select.i2.i.i.i20.i.i.i.i.i, label %bb.u, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i

bb.u:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !30
  %i.hm = load ptr, ptr %i.fe, align 8, !tbaa !30
  %i.hn = invoke noundef double @_ZNK4geos9operation8distance13FacetSequence8distanceERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.hl, ptr noundef nonnull align 8 dereferenceable(64) %i.hm)
          to label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit21.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 8
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !32 ; 3 uses
  %i.hq = load double, ptr %i.fb, align 8, !tbaa !32 ; 3 uses
  %i.hr = fcmp olt double %i.hp, %i.hq
  %i.hs = select i1 %i.hr, double %i.hq, double %i.hp
  %i.ht = load double, ptr %i.et, align 8, !tbaa !32 ; 3 uses
  %i.hu = load double, ptr %.02.i.i.i.i.i, align 8, !tbaa !32 ; 3 uses
  %i.hv = fcmp olt double %i.ht, %i.hu
  %i.hw = select i1 %i.hv, double %i.ht, double %i.hu
  %i.hx = fsub double %i.hs, %i.hw
  %i.hy = fsub double %i.hp, %i.hu
  %i.hz = fsub double %i.hx, %i.hy
  %i.ia = fsub double %i.hq, %i.ht
  %i.ib = fsub double %i.hz, %i.ia                ; 2 uses
  %i.ic = fcmp ogt double %i.ib, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i15.i.i.i.i.i = select i1 %i.ic, double %i.ib, double 0.000000e+00 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 24
  %i.ie = load double, ptr %i.id, align 8, !tbaa !32 ; 3 uses
  %i.if = load double, ptr %i.fc, align 8, !tbaa !32 ; 3 uses
  %i.ig = fcmp olt double %i.ie, %i.if
  %i.ih = select i1 %i.ig, double %i.if, double %i.ie
  %i.ii = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 16
  %i.ij = load double, ptr %i.fd, align 8, !tbaa !32 ; 3 uses
  %i.ik = load double, ptr %i.ii, align 8, !tbaa !32 ; 3 uses
  %i.il = fcmp olt double %i.ij, %i.ik
  %i.im = select i1 %i.il, double %i.ij, double %i.ik
  %i.in = fsub double %i.ih, %i.im
  %i.io = fsub double %i.ie, %i.ik
  %i.ip = fsub double %i.in, %i.io
  %i.iq = fsub double %i.if, %i.ij
  %i.ir = fsub double %i.ip, %i.iq                ; 2 uses
  %i.is = fcmp ogt double %i.ir, 0.000000e+00
  %.sroa.speculated.i.i.i.i.i16.i.i.i.i.i = select i1 %i.is, double %i.ir, double 0.000000e+00 ; 2 uses
  %i.it = fmul double %.sroa.speculated19.i.i.i.i.i15.i.i.i.i.i, %.sroa.speculated19.i.i.i.i.i15.i.i.i.i.i
  %i.iu = fmul double %.sroa.speculated.i.i.i.i.i16.i.i.i.i.i, %.sroa.speculated.i.i.i.i.i16.i.i.i.i.i
  %i.iv = fadd double %i.it, %i.iu
  %sqrt.i.i.i.i17.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.iv)
  br label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit21.i.i.i.i.i

_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit21.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i, %bb.u
  %.0.i.i18.i.i.i.i.i = phi double [ %sqrt.i.i.i.i17.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i ], [ %i.hn, %bb.u ] ; 2 uses
  store double %.0.i.i18.i.i.i.i.i, ptr %i.bm, align 8, !tbaa !33
  %i.iw = fcmp olt double %.0.i.i18.i.i.i.i.i, %.01227.i.i.i.i.i
  %or.cond.i4.i.i.i.i = or i1 %i.ff, %i.iw
  br i1 %or.cond.i4.i.i.i.i, label %bb.v, label %.noexc7.i.i.i.i

bb.v:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit21.i.i.i.i.i
  invoke fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance8distanceEPKNS0_4geom8GeometryEE13FacetDistanceEESt6vectorISG_SaISG_EENS2_23TemplateSTRtreeDistanceIS8_S9_SF_E16PairQueueCompareEE4pushERKSG_(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc7.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc7.i.i.i.i:                                  ; preds = %bb.v, %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit21.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.ix = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 48 ; 2 uses
  %i.iy = load ptr, ptr %i.ex, align 8, !tbaa !47
  %i.iz = icmp ult ptr %i.ix, %i.iy
  br i1 %i.iz, label %.lr.ph.split.i.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance8distanceEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i, !llvm.loop !48

bb.w:                                             ; preds = %bb.r
  %i.ja = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.x unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %3)
end_hunk_0
begin_hunk_1_@_ZNK4geos9operation8distance20IndexedFacetDistance13nearestPointsEPKNS_4geom8GeometryE:bb.a

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i6: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit
  %i.j = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
          to label %.lr.ph.i.i.i.i.i.i10.preheader unwind label %bb.b ; 5 uses

.lr.ph.i.i.i.i.i.i10.preheader:                   ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i6
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !57, !alias.scope !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @_ZdlPv(ptr noundef nonnull %i.e) #18
  store ptr %i.j, ptr %0, align 8, !tbaa !58
  store ptr %i.l, ptr %i.c, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.m, ptr %i.d, align 8, !tbaa !62
  %i.n = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN4geos9operation8distance16GeometryLocationESaIS3_EED2Ev.exit24, label %bb.d

.thread:                                          ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

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
define void @_ZNK4geos9operation8distance20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.11") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.bw = sdiv i64 %i.bv, 2
  %i.bx = icmp sgt i64 %i.bt, 48
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.042.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.by = shl i64 %.042.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.bz = add i64 %i.by, 2                        ; 2 uses
  %i.ca = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.bz
  %i.cb = or disjoint i64 %i.by, 1                ; 2 uses
  %i.cc = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.ca, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cd, align 8, !tbaa !70
  %i.ce = getelementptr i8, ptr %i.cc, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ce, align 8, !tbaa !70
  %i.cf = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.cf, i64 %i.cb, i64 %i.bz ; 4 uses
  %i.cg = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %spec.select.i.i.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.042.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !tbaa.struct !37
  %i.ci = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i.i, %i.bw
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !73

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.cj = and i64 %i.bu, 1
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.cl = add nsw i64 %i.bu, -2
  %i.cm = ashr exact i64 %i.cl, 1
  %i.cn = icmp eq i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, %i.cm
  br i1 %i.cn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.co = shl nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 1
  %i.cp = or disjoint i64 %i.co, 1                ; 2 uses
  %i.cq = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %i.cp
  %i.cr = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !tbaa.struct !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cp, %bb.g ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cs = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance16nearestLocationsEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.h, %bb.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.h ] ; 4 uses
  %.097.in.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i, -1
  %.097.i.i.i.i.i.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.097.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cu, align 8, !tbaa !70
  %i.cv = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i.i, %.sroa.46.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cv, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance16nearestLocationsEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.06.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !tbaa.struct !37
  %i.cx = icmp sgt i64 %.06.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance16nearestLocationsEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i, !llvm.loop !74

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance16nearestLocationsEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i.i.i, %bb.h ], [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %.06.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.cy = getelementptr inbounds [24 x i8], ptr %.val3028.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store <2 x ptr> %.sroa.03.i.i.i.i.i.i.i.i.sroa.0.0.copyload, ptr %i.cy, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store double %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNKS7_20IndexedFacetDistance16nearestLocationsEPKNS2_4geom8GeometryEE13FacetDistanceEESt6vectorISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SH_E16PairQueueCompareEEEEvT_SU_SU_RT0_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %.val3129.i.i.i.i.i, i64 -24
  store ptr %i.cz, ptr %i.bj, align 8, !tbaa !75
  %.not18.i.i.i.i.i = icmp eq ptr %.sroa.09.026.i.i.i.i.i, null ; 2 uses
  %i.da = fcmp ult double %.sroa.10.0.copyload.i.i.i.i.i, %.01227.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %.not18.i.i.i.i.i, i1 true, i1 %i.da
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %.thread.thread.i.i.i.i.i

.thread.thread.i.i.i.i.i:                         ; preds = %bb.j
  %.val4044.i.i.i.i.i = load ptr, ptr %.sroa.09.026.i.i.i.i.i, align 8, !tbaa !67
  %i.db = getelementptr i8, ptr %.sroa.09.026.i.i.i.i.i, i64 8
  %.val4145.i.i.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !69
  %i.dc = getelementptr i8, ptr %.val4044.i.i.i.i.i, i64 32
  %.val40.val46.i.i.i.i.i = load ptr, ptr %i.dc, align 8, !tbaa !30
  %i.dd = getelementptr i8, ptr %.val4145.i.i.i.i.i, i64 32
  %.val41.val47.i.i.i.i.i = load ptr, ptr %i.dd, align 8, !tbaa !30
  br label %bb.ag

bb.k:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.i.i.i
  %i.de = landingpad { ptr, i32 }
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
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !27 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  %i.di = icmp eq ptr %i.dg, %.sroa.02.0.copyload.i.i.i.i.i
  %spec.select.i.i.i.i3.i.i.i = or i1 %i.dh, %i.di
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !27 ; 4 uses
  br i1 %spec.select.i.i.i.i3.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i: ; preds = %bb.l
  %i.dl = icmp eq ptr %i.dk, null
  %i.dm = icmp eq ptr %i.dk, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i2.i.i.i7.i.i.i = or i1 %i.dl, %i.dm
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
  %i.dn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
          to label %_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance16nearestLocationsEPKNS0_4geom8GeometryEE13FacetDistanceEESt14default_deleteISG_EED2Ev.exit.i.i.i.i.i unwind label %bb.p ; 4 uses

_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance16nearestLocationsEPKNS0_4geom8GeometryEE13FacetDistanceEESt14default_deleteISG_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.o
  store ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %i.dn, align 16, !tbaa !36, !noalias !77
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !36, !noalias !77
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store double %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 16, !tbaa !32, !noalias !77
  br label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i6.i.i.i, %bb.l
  %i.dp = icmp ne ptr %i.dg, null
  %i.dq = icmp ne ptr %i.dg, %.sroa.02.0.copyload.i.i.i.i.i
  %spec.select.i.not.i.i.i.i.i.i.i = and i1 %i.dp, %i.dq ; 5 uses
  %i.dr = icmp ne ptr %i.dk, null
  %i.ds = icmp ne ptr %i.dk, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i.not.i34.i.i.i.i.i.i = and i1 %i.dr, %i.ds ; 2 uses
  %or.cond.i.i.i.i.i.i = and i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 8
  %i.du = load double, ptr %i.dt, align 8, !tbaa !46 ; 2 uses
  %i.dv = fcmp uno double %i.du, 0.000000e+00
  %i.dw = load double, ptr %.sroa.02.0.copyload.i.i.i.i.i, align 8
  %i.dx = fsub double %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 24
  %i.dz = load double, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i, i64 16
  %i.eb = load double, ptr %i.ea, align 8
  %i.ec = fsub double %i.dz, %i.eb
  %i.ed = fmul double %i.dx, %i.ec
  %i.ee = select i1 %i.dv, double 0.000000e+00, double %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !46 ; 2 uses
  %i.eh = fcmp uno double %i.eg, 0.000000e+00
  %i.ei = load double, ptr %.sroa.8.0.copyload.i.i.i.i.i, align 8
  %i.ej = fsub double %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 24
  %i.el = load double, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 16
  %i.en = load double, ptr %i.em, align 8
  %i.eo = fsub double %i.el, %i.en
  %i.ep = fmul double %i.ej, %i.eo
  %i.eq = select i1 %i.eh, double 0.000000e+00, double %i.ep
  %i.er = fcmp ule double %i.ee, %i.eq            ; 3 uses
  %.sroa.02.0.copyload..sroa.8.0.copyload.i.i.i.i.i = select i1 %i.er, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload..sroa.02.0.copyload.i.i.i.i.i = select i1 %i.er, ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  br label %.invoke.i.i.i.i.i

bb.r:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %brmerge.i.i.i.i.i = or i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  %.sroa.02.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.02.0.copyload.i.i.i.i.i
  %not.spec.select.i.not.i.i.i.i.i.i.i = xor i1 %spec.select.i.not.i.i.i.i.i.i.i, true
  br i1 %brmerge.i.i.i.i.i, label %.invoke.i.i.i.i.i, label %bb.w

.invoke.i.i.i.i.i:                                ; preds = %bb.r, %bb.q
  %i.es = phi ptr [ %.sroa.02.0.copyload.mux.i.i.i.i.i, %bb.r ], [ %.sroa.02.0.copyload..sroa.8.0.copyload.i.i.i.i.i, %bb.q ] ; 2 uses
  %i.et = phi ptr [ %.sroa.8.0.copyload.mux.i.i.i.i.i, %bb.r ], [ %.sroa.8.0.copyload..sroa.02.0.copyload.i.i.i.i.i, %bb.q ] ; 11 uses
  %i.eu = phi i1 [ %not.spec.select.i.not.i.i.i.i.i.i.i, %bb.r ], [ %i.er, %bb.q ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !27 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !47
  %i.ez = icmp ult ptr %i.ew, %i.ey
  br i1 %i.ez, label %.lr.ph.i3.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 2 uses
  %i.ff = fcmp oeq double %.01227.i.i.i.i.i, +inf ; 2 uses
  br i1 %i.eu, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i3.i.i.i.i, %.noexc5.i.i.i.i
  %.02.us.i.i.i.i.i = phi ptr [ %i.ha, %.noexc5.i.i.i.i ], [ %i.ew, %.lr.ph.i3.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %i.et, ptr %3, align 8, !tbaa !67
  store ptr %.02.us.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !69
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !27 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  %i.fi = icmp eq ptr %i.fg, %i.et
  %spec.select.i.i.i.i.us.i.i.i.i.i = or i1 %i.fh, %i.fi
  br i1 %spec.select.i.i.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !27 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  %i.fm = icmp eq ptr %i.fk, %.02.us.i.i.i.i.i
  %spec.select.i2.i.i.i.us.i.i.i.i.i = or i1 %i.fl, %i.fm
  br i1 %spec.select.i2.i.i.i.us.i.i.i.i.i, label %bb.s, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 8
  %i.fo = load double, ptr %i.fb, align 8, !tbaa !32 ; 3 uses
  %i.fp = load double, ptr %i.fn, align 8, !tbaa !32 ; 3 uses
  %i.fq = fcmp olt double %i.fo, %i.fp
  %i.fr = select i1 %i.fq, double %i.fp, double %i.fo
  %i.fs = load double, ptr %.02.us.i.i.i.i.i, align 8, !tbaa !32 ; 3 uses
  %i.ft = load double, ptr %i.et, align 8, !tbaa !32 ; 3 uses
  %i.fu = fcmp olt double %i.fs, %i.ft
  %i.fv = select i1 %i.fu, double %i.fs, double %i.ft
  %i.fw = fsub double %i.fr, %i.fv
  %i.fx = fsub double %i.fo, %i.ft
  %i.fy = fsub double %i.fw, %i.fx
  %i.fz = fsub double %i.fp, %i.fs
  %i.ga = fsub double %i.fy, %i.fz                ; 2 uses
  %i.gb = fcmp ogt double %i.ga, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i = select i1 %i.gb, double %i.ga, double 0.000000e+00 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 24
  %i.gd = load double, ptr %i.fc, align 8, !tbaa !32 ; 3 uses
  %i.ge = load double, ptr %i.gc, align 8, !tbaa !32 ; 3 uses
  %i.gf = fcmp olt double %i.gd, %i.ge
  %i.gg = select i1 %i.gf, double %i.ge, double %i.gd
  %i.gh = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 16
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !32 ; 3 uses
  %i.gj = load double, ptr %i.fd, align 8, !tbaa !32 ; 3 uses
  %i.gk = fcmp olt double %i.gi, %i.gj
  %i.gl = select i1 %i.gk, double %i.gi, double %i.gj
  %i.gm = fsub double %i.gg, %i.gl
  %i.gn = fsub double %i.gd, %i.gj
  %i.go = fsub double %i.gm, %i.gn
  %i.gp = fsub double %i.ge, %i.gi
  %i.gq = fsub double %i.go, %i.gp                ; 2 uses
  %i.gr = fcmp ogt double %i.gq, 0.000000e+00
  %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i = select i1 %i.gr, double %i.gq, double 0.000000e+00 ; 2 uses
  %i.gs = fmul double %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i, %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i
  %i.gt = fmul double %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i, %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i
  %i.gu = fadd double %i.gs, %i.gt
  %sqrt.i.i.i.i.us.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.gu)
  br label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.us.i.i.i.i.i

bb.s:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i
  %i.gv = load ptr, ptr %i.fe, align 8, !tbaa !30
  %i.gw = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !30
  %i.gy = invoke noundef double @_ZNK4geos9operation8distance13FacetSequence8distanceERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.gv, ptr noundef nonnull align 8 dereferenceable(64) %i.gx)
          to label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.us.i.i.i.i.i unwind label %.loopexit.i.i.i.i

_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.us.i.i.i.i.i: ; preds = %bb.s, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i
  %.0.i.i.us.i.i.i.i.i = phi double [ %sqrt.i.i.i.i.us.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i ], [ %i.gy, %bb.s ] ; 2 uses
  store double %.0.i.i.us.i.i.i.i.i, ptr %i.bm, align 8, !tbaa !70
  %i.gz = fcmp olt double %.0.i.i.us.i.i.i.i.i, %.01227.i.i.i.i.i
  %or.cond.us.i.i.i.i.i = or i1 %i.ff, %i.gz
  br i1 %or.cond.us.i.i.i.i.i, label %bb.t, label %.noexc5.i.i.i.i

bb.t:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.us.i.i.i.i.i
  invoke fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance16nearestLocationsEPKNS0_4geom8GeometryEE13FacetDistanceEESt6vectorISG_SaISG_EENS2_23TemplateSTRtreeDistanceIS8_S9_SF_E16PairQueueCompareEE4pushERKSG_(ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc5.i.i.i.i:                                  ; preds = %bb.t, %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit.us.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ha = getelementptr inbounds nuw i8, ptr %.02.us.i.i.i.i.i, i64 48 ; 2 uses
  %i.hb = load ptr, ptr %i.ex, align 8, !tbaa !47
  %i.hc = icmp ult ptr %i.ha, %i.hb
  br i1 %i.hc, label %.lr.ph.split.us.i.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i, !llvm.loop !80

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i3.i.i.i.i, %.noexc7.i.i.i.i
  %.02.i.i.i.i.i = phi ptr [ %i.ix, %.noexc7.i.i.i.i ], [ %i.ew, %.lr.ph.i3.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %.02.i.i.i.i.i, ptr %3, align 8, !tbaa !67
  store ptr %i.et, ptr %i.bl, align 8, !tbaa !69
  %i.hd = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !27 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  %i.hg = icmp eq ptr %i.he, %.02.i.i.i.i.i
  %spec.select.i.i.i.i13.i.i.i.i.i = or i1 %i.hf, %i.hg
  br i1 %spec.select.i.i.i.i13.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i
  %i.hh = load ptr, ptr %i.fa, align 8, !tbaa !27 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  %i.hj = icmp eq ptr %i.hh, %i.et
  %spec.select.i2.i.i.i20.i.i.i.i.i = or i1 %i.hi, %i.hj
  br i1 %spec.select.i2.i.i.i20.i.i.i.i.i, label %bb.u, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i

bb.u:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !30
  %i.hm = load ptr, ptr %i.fe, align 8, !tbaa !30
  %i.hn = invoke noundef double @_ZNK4geos9operation8distance13FacetSequence8distanceERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.hl, ptr noundef nonnull align 8 dereferenceable(64) %i.hm)
          to label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit21.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 8
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !32 ; 3 uses
  %i.hq = load double, ptr %i.fb, align 8, !tbaa !32 ; 3 uses
  %i.hr = fcmp olt double %i.hp, %i.hq
  %i.hs = select i1 %i.hr, double %i.hq, double %i.hp
  %i.ht = load double, ptr %i.et, align 8, !tbaa !32 ; 3 uses
  %i.hu = load double, ptr %.02.i.i.i.i.i, align 8, !tbaa !32 ; 3 uses
  %i.hv = fcmp olt double %i.ht, %i.hu
  %i.hw = select i1 %i.hv, double %i.ht, double %i.hu
  %i.hx = fsub double %i.hs, %i.hw
  %i.hy = fsub double %i.hp, %i.hu
  %i.hz = fsub double %i.hx, %i.hy
  %i.ia = fsub double %i.hq, %i.ht
  %i.ib = fsub double %i.hz, %i.ia                ; 2 uses
  %i.ic = fcmp ogt double %i.ib, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i15.i.i.i.i.i = select i1 %i.ic, double %i.ib, double 0.000000e+00 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 24
  %i.ie = load double, ptr %i.id, align 8, !tbaa !32 ; 3 uses
  %i.if = load double, ptr %i.fc, align 8, !tbaa !32 ; 3 uses
  %i.ig = fcmp olt double %i.ie, %i.if
  %i.ih = select i1 %i.ig, double %i.if, double %i.ie
  %i.ii = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 16
  %i.ij = load double, ptr %i.fd, align 8, !tbaa !32 ; 3 uses
  %i.ik = load double, ptr %i.ii, align 8, !tbaa !32 ; 3 uses
  %i.il = fcmp olt double %i.ij, %i.ik
  %i.im = select i1 %i.il, double %i.ij, double %i.ik
  %i.in = fsub double %i.ih, %i.im
  %i.io = fsub double %i.ie, %i.ik
  %i.ip = fsub double %i.in, %i.io
  %i.iq = fsub double %i.if, %i.ij
  %i.ir = fsub double %i.ip, %i.iq                ; 2 uses
  %i.is = fcmp ogt double %i.ir, 0.000000e+00
  %.sroa.speculated.i.i.i.i.i16.i.i.i.i.i = select i1 %i.is, double %i.ir, double 0.000000e+00 ; 2 uses
  %i.it = fmul double %.sroa.speculated19.i.i.i.i.i15.i.i.i.i.i, %.sroa.speculated19.i.i.i.i.i15.i.i.i.i.i
  %i.iu = fmul double %.sroa.speculated.i.i.i.i.i16.i.i.i.i.i, %.sroa.speculated.i.i.i.i.i16.i.i.i.i.i
  %i.iv = fadd double %i.it, %i.iu
  %sqrt.i.i.i.i17.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.iv)
  br label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit21.i.i.i.i.i

_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit21.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i, %bb.u
  %.0.i.i18.i.i.i.i.i = phi double [ %sqrt.i.i.i.i17.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i ], [ %i.hn, %bb.u ] ; 2 uses
  store double %.0.i.i18.i.i.i.i.i, ptr %i.bm, align 8, !tbaa !70
  %i.iw = fcmp olt double %.0.i.i18.i.i.i.i.i, %.01227.i.i.i.i.i
  %or.cond.i4.i.i.i.i = or i1 %i.ff, %i.iw
  br i1 %or.cond.i4.i.i.i.i, label %bb.v, label %.noexc7.i.i.i.i

bb.v:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit21.i.i.i.i.i
  invoke fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNKS5_20IndexedFacetDistance16nearestLocationsEPKNS0_4geom8GeometryEE13FacetDistanceEESt6vectorISG_SaISG_EENS2_23TemplateSTRtreeDistanceIS8_S9_SF_E16PairQueueCompareEE4pushERKSG_(ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc7.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc7.i.i.i.i:                                  ; preds = %bb.v, %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESJ_RSE_.exit21.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ix = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 48 ; 2 uses
  %i.iy = load ptr, ptr %i.ex, align 8, !tbaa !47
  %i.iz = icmp ult ptr %i.ix, %i.iy
  br i1 %i.iz, label %.lr.ph.split.i.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNKS4_20IndexedFacetDistance16nearestLocationsEPKNS_4geom8GeometryEE13FacetDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SE_EERSt14priority_queueISH_St6vectorISH_SaISH_EENSF_16PairQueueCompareEEd.exit.i.i.i.i.i, !llvm.loop !80

bb.w:                                             ; preds = %bb.r
  %i.ja = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.x unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %4)
end_hunk_1
