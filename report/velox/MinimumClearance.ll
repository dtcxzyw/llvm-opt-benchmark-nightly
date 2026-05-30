inline.NumInlined: 851
inline.NumDeleted: 397
begin_hunk_0
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Error computing nearest neighbor\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"neither boundable is composite\00", align 1
@_ZTIN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util24IllegalArgumentExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTSN4geos4util24IllegalArgumentExceptionE = linkonce_odr constant [39 x i8] c"N4geos4util24IllegalArgumentExceptionE\00", comdat, align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"IllegalArgumentException\00", align 1
@_ZTVN4geos4util24IllegalArgumentExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util24IllegalArgumentExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN4geos9precision16MinimumClearanceC1EPKNS_4geom8GeometryE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos9precision16MinimumClearanceC2EPKNS_4geom8GeometryE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9precision16MinimumClearanceC2EPKNS_4geom8GeometryE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9precision16MinimumClearance11getDistanceEv(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4geos9precision16MinimumClearance7computeEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !20
  ret double %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9precision16MinimumClearance7computeEv(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.geos::index::strtree::TemplateSTRNodePair", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.31", align 1 ; 5 uses
  %.sroa.03.i.i.i.i.i.i.i.i = alloca { ptr, ptr }, align 8 ; 4 uses
  %4 = alloca %"class.std::priority_queue", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.31", align 1 ; 5 uses
  %7 = alloca %"class.geos::index::strtree::TemplateSTRNodePair", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %9 = alloca %"class.std::unique_ptr.18", align 8 ; 7 uses
  %10 = alloca %class.MinClearanceDistance, align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator.31", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.c = load ptr, ptr %0, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 2, i64 noundef 2)
  %i.k = load ptr, ptr %8, align 8, !tbaa !21
  store ptr null, ptr %8, align 8, !tbaa !21
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !21
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #16, !inline_history !40
  %.pr = load ptr, ptr %8, align 8, !tbaa !21     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit
  %i.p = load ptr, ptr %.pr, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #16, !inline_history !41
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store double +inf, ptr %i.s, align 8, !tbaa !20
  %i.t = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(40) %i.t)
  br i1 %i.x, label %bb.av, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.y = load ptr, ptr %0, align 8, !tbaa !7
  call void @_ZN4geos9operation8distance24FacetSequenceTreeBuilder5buildEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %9, ptr noundef %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store double +inf, ptr %10, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aa = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17
          to label %bb.d unwind label %bb.ao      ; 6 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ad, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.af, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !53
  %i.ah = load ptr, ptr %9, align 8, !tbaa !54    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  invoke void @_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE5buildEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 72 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE5buildEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %.noexc20 unwind label %bb.ap

.noexc20:                                         ; preds = %bb.e
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !56 ; 7 uses
  %.not4.i.i = icmp eq ptr %i.al, null
  br i1 %.not4.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %i.al, ptr %7, align 8, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !68
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  %i.aq = icmp eq ptr %i.ao, %i.al
  %spec.select.i.i.i.i.i.i.i = or i1 %i.ap, %i.aq
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  store double +inf, ptr %10, align 8, !tbaa !42
  %i.at = invoke fastcc noundef double @_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance8distanceEPKNS_9operation8distance13FacetSequenceES7_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.as, ptr noundef nonnull %i.as)
          to label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.i.i.i unwind label %bb.ap

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.i.i.i: ; preds = %bb.f
  %i.au = load <4 x double>, ptr %i.al, align 8, !tbaa !74 ; 2 uses
  %i.av = shufflevector <4 x double> %i.au, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.aw = shufflevector <4 x double> %i.au, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.ax = fsub <2 x double> %i.av, %i.aw          ; 3 uses
  %i.ay = fsub <2 x double> %i.ax, %i.ax
  %i.az = fsub <2 x double> %i.ay, %i.ax          ; 2 uses
  %i.ba = fcmp ogt <2 x double> %i.az, zeroinitializer
  %i.bb = select <2 x i1> %i.ba, <2 x double> %i.az, <2 x double> zeroinitializer ; 2 uses
  %i.bc = fmul <2 x double> %i.bb, %i.bb          ; 2 uses
  %shift = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bc, %shift
  %i.bd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i.i.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.bd)
  br label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.i.i.i

_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi double [ %sqrt.i.i.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.i.i.i ], [ %i.at, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %.0.i.i.i.i.i, ptr %i.be, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %4, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISD_SaISD_EENS2_23TemplateSTRtreeDistanceIS8_S9_SC_E16PairQueueCompareEE4pushERKSD_(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull readonly align 8 dereferenceable(24) %7)
          to label %.preheader.i.i.i.i.i unwind label %bb.m

.preheader.i.i.i.i.i:                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.val3080.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !76 ; 2 uses
  %.val3181.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !76 ; 2 uses
  %i.bg = icmp eq ptr %.val3080.i.i.i.i.i, %.val3181.i.i.i.i.i
  br i1 %i.bg, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.val3185.i.i.i.i.i = phi ptr [ %.val31.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ %.val3181.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %.val3084.i.i.i.i.i = phi ptr [ %.val30.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ %.val3080.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 15 uses
  %.01283.i.i.i.i.i = phi double [ %.2.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ +inf, %.lr.ph.i.preheader.i.i.i.i ] ; 7 uses
  %.sroa.065.082.i.i.i.i.i = phi ptr [ %.sroa.065.1.i.i.i.i.i, %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i ], [ null, %.lr.ph.i.preheader.i.i.i.i ] ; 16 uses
  %.sroa.058.0.copyload.i.i.i.i.i = load ptr, ptr %.val3084.i.i.i.i.i, align 8, !tbaa !78 ; 13 uses
  %.sroa.8.0..val32.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val3084.i.i.i.i.i, i64 8
  %.sroa.8.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.8.0..val32.sroa_idx.i.i.i.i.i, align 8, !tbaa !78 ; 13 uses
  %.sroa.10.0..val32.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val3084.i.i.i.i.i, i64 16
  %.sroa.10.0.copyload.i.i.i.i.i = load double, ptr %.sroa.10.0..val32.sroa_idx.i.i.i.i.i, align 8, !tbaa !74 ; 5 uses
  %i.bj = ptrtoint ptr %.val3185.i.i.i.i.i to i64
  %i.bk = ptrtoint ptr %.val3084.i.i.i.i.i to i64 ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp sgt i64 %i.bl, 24
  br i1 %i.bm, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bn = getelementptr inbounds i8, ptr %.val3185.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false)
  %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.val3185.i.i.i.i.i, i64 -8
  %.sroa.46.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %.val3084.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !79
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bk                    ; 2 uses
  %i.bq = sdiv exact i64 %i.bp, 24                ; 3 uses
  %i.br = add nsw i64 %i.bq, -1
  %i.bs = sdiv i64 %i.br, 2
  %i.bt = icmp sgt i64 %i.bp, 48
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.042.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.bu = shl i64 %.042.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.bv = add i64 %i.bu, 2                        ; 2 uses
  %i.bw = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %i.bv
  %i.bx = or disjoint i64 %i.bu, 1                ; 2 uses
  %i.by = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.bw, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.bz, align 8, !tbaa !75
  %i.ca = getelementptr i8, ptr %i.by, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ca, align 8, !tbaa !75
  %i.cb = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.cb, i64 %i.bx, i64 %i.bv ; 4 uses
  %i.cc = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %spec.select.i.i.i.i.i.i.i.i.i
  %i.cd = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.042.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !tbaa.struct !79
  %i.ce = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i.i, %i.bs
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !80

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.cf = and i64 %i.bq, 1
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ch = add nsw i64 %i.bq, -2
  %i.ci = ashr exact i64 %i.ch, 1
  %i.cj = icmp eq i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, %i.ci
  br i1 %i.cj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ck = shl nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 1
  %i.cl = or disjoint i64 %i.ck, 1                ; 2 uses
  %i.cm = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %i.cl
  %i.cn = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !tbaa.struct !79
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.i ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %bb.h ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.co = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.j, %bb.k
  %.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.j ] ; 4 uses
  %.097.in.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i, -1
  %.097.i.i.i.i.i.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.097.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.cq, align 8, !tbaa !75
  %i.cr = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i.i, %.sroa.46.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cr, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.06.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false), !tbaa.struct !79
  %i.ct = icmp sgt i64 %.06.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i, !llvm.loop !82

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i.i.i, %bb.j ], [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.06.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.cu = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store double %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i.i.i)
  br label %bb.l

bb.l:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cv = getelementptr inbounds i8, ptr %.val3185.i.i.i.i.i, i64 -24
  store ptr %i.cv, ptr %i.bf, align 8, !tbaa !83
  %.not74.i.i.i.i.i = icmp eq ptr %.sroa.065.082.i.i.i.i.i, null ; 2 uses
  %i.cw = fcmp ult double %.sroa.10.0.copyload.i.i.i.i.i, %.01283.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %.not74.i.i.i.i.i, i1 true, i1 %i.cw
  br i1 %or.cond.i.i.i.i.i, label %bb.n, label %.thread.thread.i.i.i.i.i

.thread.thread.i.i.i.i.i:                         ; preds = %bb.l
  %.val40100.i.i.i.i.i = load ptr, ptr %.sroa.065.082.i.i.i.i.i, align 8, !tbaa !66
  %i.cx = getelementptr i8, ptr %.sroa.065.082.i.i.i.i.i, i64 8
  %.val41101.i.i.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !68
  %i.cy = getelementptr i8, ptr %.val40100.i.i.i.i.i, i64 32
  %.val40.val102.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !72
  %i.cz = getelementptr i8, ptr %.val41101.i.i.i.i.i, i64 32
  %.val41.val103.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !72
  br label %bb.ai

bb.m:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.v, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.x, %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload.i.i.i.i.i, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !69 ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  %i.de = icmp eq ptr %i.dc, %.sroa.058.0.copyload.i.i.i.i.i
  %spec.select.i.i.i.i3.i.i.i = or i1 %i.dd, %i.de
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !69 ; 4 uses
  br i1 %spec.select.i.i.i.i3.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i6.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i6.i.i.i: ; preds = %bb.n
  %i.dh = icmp eq ptr %i.dg, null
  %i.di = icmp eq ptr %i.dg, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i2.i.i.i7.i.i.i = or i1 %i.dh, %i.di
  br i1 %spec.select.i2.i.i.i7.i.i.i, label %bb.o, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i

bb.o:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i6.i.i.i
  br i1 %.not74.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.sroa.058.0.copyload.i.i.i.i.i, ptr %.sroa.065.082.i.i.i.i.i, align 8, !tbaa !78
  %.sroa.8.0..val36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.065.082.i.i.i.i.i, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..val36.sroa_idx.i.i.i.i.i, align 8, !tbaa !78
  %.sroa.10.0..val36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.065.082.i.i.i.i.i, i64 16
  store double %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..val36.sroa_idx.i.i.i.i.i, align 8, !tbaa !74
  br label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.dj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt14default_deleteISD_EED2Ev.exit.i.i.i.i.i unwind label %bb.r ; 4 uses

_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt14default_deleteISD_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.q
  store ptr %.sroa.058.0.copyload.i.i.i.i.i, ptr %i.dj, align 16, !tbaa !78, !noalias !85
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !78, !noalias !85
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store double %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 16, !tbaa !74, !noalias !85
  br label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i6.i.i.i, %bb.n
  %i.dl = icmp ne ptr %i.dc, null
  %i.dm = icmp ne ptr %i.dc, %.sroa.058.0.copyload.i.i.i.i.i
  %spec.select.i.not.i.i.i.i.i.i.i = and i1 %i.dl, %i.dm ; 5 uses
  %i.dn = icmp ne ptr %i.dg, null
  %i.do = icmp ne ptr %i.dg, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i.not.i34.i.i.i.i.i.i = and i1 %i.dn, %i.do ; 2 uses
  %or.cond.i.i.i.i.i.i = and i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload.i.i.i.i.i, i64 8
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !88 ; 2 uses
  %i.dr = fcmp uno double %i.dq, 0.000000e+00
  %i.ds = load double, ptr %.sroa.058.0.copyload.i.i.i.i.i, align 8
  %i.dt = fsub double %i.dq, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload.i.i.i.i.i, i64 24
  %i.dv = load double, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload.i.i.i.i.i, i64 16
  %i.dx = load double, ptr %i.dw, align 8
  %i.dy = fsub double %i.dv, %i.dx
  %i.dz = fmul double %i.dt, %i.dy
  %i.ea = select i1 %i.dr, double 0.000000e+00, double %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 8
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !88 ; 2 uses
  %i.ed = fcmp uno double %i.ec, 0.000000e+00
  %i.ee = load double, ptr %.sroa.8.0.copyload.i.i.i.i.i, align 8
  %i.ef = fsub double %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 24
  %i.eh = load double, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 16
  %i.ej = load double, ptr %i.ei, align 8
  %i.ek = fsub double %i.eh, %i.ej
  %i.el = fmul double %i.ef, %i.ek
  %i.em = select i1 %i.ed, double 0.000000e+00, double %i.el
  %i.en = fcmp ule double %i.ea, %i.em            ; 3 uses
  %.sroa.058.0.copyload..sroa.8.0.copyload.i.i.i.i.i = select i1 %i.en, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.058.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload..sroa.058.0.copyload.i.i.i.i.i = select i1 %i.en, ptr %.sroa.058.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  br label %.invoke.i.i.i.i.i

bb.t:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %brmerge.i.i.i.i.i = or i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  %.sroa.058.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.058.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.058.0.copyload.i.i.i.i.i
  %not.spec.select.i.not.i.i.i.i.i.i.i = xor i1 %spec.select.i.not.i.i.i.i.i.i.i, true
  br i1 %brmerge.i.i.i.i.i, label %.invoke.i.i.i.i.i, label %bb.y

.invoke.i.i.i.i.i:                                ; preds = %bb.t, %bb.s
  %i.eo = phi ptr [ %.sroa.058.0.copyload.mux.i.i.i.i.i, %bb.t ], [ %.sroa.058.0.copyload..sroa.8.0.copyload.i.i.i.i.i, %bb.s ] ; 2 uses
  %i.ep = phi ptr [ %.sroa.8.0.copyload.mux.i.i.i.i.i, %bb.t ], [ %.sroa.8.0.copyload..sroa.058.0.copyload.i.i.i.i.i, %bb.s ] ; 11 uses
  %i.eq = phi i1 [ %not.spec.select.i.not.i.i.i.i.i.i.i, %bb.t ], [ %i.en, %bb.s ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !69 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 32 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !89
  %i.ev = icmp ult ptr %i.es, %i.eu
  br i1 %i.ev, label %.lr.ph.i3.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 40 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 32 ; 2 uses
  %i.fb = fcmp oeq double %.01283.i.i.i.i.i, +inf ; 2 uses
  br i1 %i.eq, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i3.i.i.i.i, %.noexc5.i.i.i.i
  %.023.us.i.i.i.i.i = phi ptr [ %i.gw, %.noexc5.i.i.i.i ], [ %i.es, %.lr.ph.i3.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %i.ep, ptr %1, align 8, !tbaa !66
  store ptr %.023.us.i.i.i.i.i, ptr %i.bh, align 8, !tbaa !68
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !69 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  %i.fe = icmp eq ptr %i.fc, %i.ep
  %spec.select.i.i.i.i.us.i.i.i.i.i = or i1 %i.fd, %i.fe
  br i1 %spec.select.i.i.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !69 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  %i.fi = icmp eq ptr %i.fg, %.023.us.i.i.i.i.i
  %spec.select.i2.i.i.i.us.i.i.i.i.i = or i1 %i.fh, %i.fi
  br i1 %spec.select.i2.i.i.i.us.i.i.i.i.i, label %bb.u, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 8
  %i.fk = load double, ptr %i.ex, align 8, !tbaa !74 ; 3 uses
  %i.fl = load double, ptr %i.fj, align 8, !tbaa !74 ; 3 uses
  %i.fm = fcmp olt double %i.fk, %i.fl
  %i.fn = select i1 %i.fm, double %i.fl, double %i.fk
  %i.fo = load double, ptr %.023.us.i.i.i.i.i, align 8, !tbaa !74 ; 3 uses
  %i.fp = load double, ptr %i.ep, align 8, !tbaa !74 ; 3 uses
  %i.fq = fcmp olt double %i.fo, %i.fp
  %i.fr = select i1 %i.fq, double %i.fo, double %i.fp
  %i.fs = fsub double %i.fn, %i.fr
  %i.ft = fsub double %i.fk, %i.fp
  %i.fu = fsub double %i.fs, %i.ft
  %i.fv = fsub double %i.fl, %i.fo
  %i.fw = fsub double %i.fu, %i.fv                ; 2 uses
  %i.fx = fcmp ogt double %i.fw, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i = select i1 %i.fx, double %i.fw, double 0.000000e+00 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 24
  %i.fz = load double, ptr %i.ey, align 8, !tbaa !74 ; 3 uses
  %i.ga = load double, ptr %i.fy, align 8, !tbaa !74 ; 3 uses
  %i.gb = fcmp olt double %i.fz, %i.ga
  %i.gc = select i1 %i.gb, double %i.ga, double %i.fz
  %i.gd = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 16
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !74 ; 3 uses
  %i.gf = load double, ptr %i.ez, align 8, !tbaa !74 ; 3 uses
  %i.gg = fcmp olt double %i.ge, %i.gf
  %i.gh = select i1 %i.gg, double %i.ge, double %i.gf
  %i.gi = fsub double %i.gc, %i.gh
  %i.gj = fsub double %i.fz, %i.gf
  %i.gk = fsub double %i.gi, %i.gj
  %i.gl = fsub double %i.ga, %i.ge
  %i.gm = fsub double %i.gk, %i.gl                ; 2 uses
  %i.gn = fcmp ogt double %i.gm, 0.000000e+00
  %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i = select i1 %i.gn, double %i.gm, double 0.000000e+00 ; 2 uses
  %i.go = fmul double %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i, %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i
  %i.gp = fmul double %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i, %.sroa.speculated.i.i.i.i.i.us.i.i.i.i.i
  %i.gq = fadd double %i.go, %i.gp
  %sqrt.i.i.i.i.us.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.gq)
  br label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.us.i.i.i.i.i

bb.u:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i
  %i.gr = load ptr, ptr %i.fa, align 8, !tbaa !72
  %i.gs = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !72
  store double +inf, ptr %10, align 8, !tbaa !42
  %i.gu = invoke fastcc noundef double @_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance8distanceEPKNS_9operation8distance13FacetSequenceES7_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.gr, ptr noundef %i.gt)
          to label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.us.i.i.i.i.i unwind label %.loopexit.i.i.i.i

_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.us.i.i.i.i.i: ; preds = %bb.u, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i
  %.0.i.i.us.i.i.i.i.i = phi double [ %sqrt.i.i.i.i.us.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i ], [ %i.gu, %bb.u ] ; 2 uses
  store double %.0.i.i.us.i.i.i.i.i, ptr %i.bi, align 8, !tbaa !75
  %i.gv = fcmp olt double %.0.i.i.us.i.i.i.i.i, %.01283.i.i.i.i.i
  %or.cond.us.i.i.i.i.i = or i1 %i.fb, %i.gv
  br i1 %or.cond.us.i.i.i.i.i, label %bb.v, label %.noexc5.i.i.i.i

bb.v:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.us.i.i.i.i.i
  invoke fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISD_SaISD_EENS2_23TemplateSTRtreeDistanceIS8_S9_SC_E16PairQueueCompareEE4pushERKSD_(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc5.i.i.i.i:                                  ; preds = %bb.v, %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.us.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.gw = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 48 ; 2 uses
  %i.gx = load ptr, ptr %i.et, align 8, !tbaa !89
  %i.gy = icmp ult ptr %i.gw, %i.gx
  br i1 %i.gy, label %.lr.ph.split.us.i.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i, !llvm.loop !90

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i3.i.i.i.i, %.noexc7.i.i.i.i
  %.023.i.i.i.i.i = phi ptr [ %i.it, %.noexc7.i.i.i.i ], [ %i.es, %.lr.ph.i3.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %.023.i.i.i.i.i, ptr %1, align 8, !tbaa !66
  store ptr %i.ep, ptr %i.bh, align 8, !tbaa !68
  %i.gz = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !69 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  %i.hc = icmp eq ptr %i.ha, %.023.i.i.i.i.i
  %spec.select.i.i.i.i13.i.i.i.i.i = or i1 %i.hb, %i.hc
  br i1 %spec.select.i.i.i.i13.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i
  %i.hd = load ptr, ptr %i.ew, align 8, !tbaa !69 ; 2 uses
  %i.he = icmp eq ptr %i.hd, null
  %i.hf = icmp eq ptr %i.hd, %i.ep
  %spec.select.i2.i.i.i20.i.i.i.i.i = or i1 %i.he, %i.hf
  br i1 %spec.select.i2.i.i.i20.i.i.i.i.i, label %bb.w, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i

bb.w:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !72
  %i.hi = load ptr, ptr %i.fa, align 8, !tbaa !72
  store double +inf, ptr %10, align 8, !tbaa !42
  %i.hj = invoke fastcc noundef double @_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance8distanceEPKNS_9operation8distance13FacetSequenceES7_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.hh, ptr noundef %i.hi)
          to label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit21.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i19.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 8
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !74 ; 3 uses
  %i.hm = load double, ptr %i.ex, align 8, !tbaa !74 ; 3 uses
  %i.hn = fcmp olt double %i.hl, %i.hm
  %i.ho = select i1 %i.hn, double %i.hm, double %i.hl
  %i.hp = load double, ptr %i.ep, align 8, !tbaa !74 ; 3 uses
  %i.hq = load double, ptr %.023.i.i.i.i.i, align 8, !tbaa !74 ; 3 uses
  %i.hr = fcmp olt double %i.hp, %i.hq
  %i.hs = select i1 %i.hr, double %i.hp, double %i.hq
  %i.ht = fsub double %i.ho, %i.hs
  %i.hu = fsub double %i.hl, %i.hq
  %i.hv = fsub double %i.ht, %i.hu
  %i.hw = fsub double %i.hm, %i.hp
  %i.hx = fsub double %i.hv, %i.hw                ; 2 uses
  %i.hy = fcmp ogt double %i.hx, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i15.i.i.i.i.i = select i1 %i.hy, double %i.hx, double 0.000000e+00 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 24
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !74 ; 3 uses
  %i.ib = load double, ptr %i.ey, align 8, !tbaa !74 ; 3 uses
  %i.ic = fcmp olt double %i.ia, %i.ib
  %i.id = select i1 %i.ic, double %i.ib, double %i.ia
  %i.ie = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 16
  %i.if = load double, ptr %i.ez, align 8, !tbaa !74 ; 3 uses
  %i.ig = load double, ptr %i.ie, align 8, !tbaa !74 ; 3 uses
  %i.ih = fcmp olt double %i.if, %i.ig
  %i.ii = select i1 %i.ih, double %i.if, double %i.ig
  %i.ij = fsub double %i.id, %i.ii
  %i.ik = fsub double %i.ia, %i.ig
  %i.il = fsub double %i.ij, %i.ik
  %i.im = fsub double %i.ib, %i.if
  %i.in = fsub double %i.il, %i.im                ; 2 uses
  %i.io = fcmp ogt double %i.in, 0.000000e+00
  %.sroa.speculated.i.i.i.i.i16.i.i.i.i.i = select i1 %i.io, double %i.in, double 0.000000e+00 ; 2 uses
  %i.ip = fmul double %.sroa.speculated19.i.i.i.i.i15.i.i.i.i.i, %.sroa.speculated19.i.i.i.i.i15.i.i.i.i.i
  %i.iq = fmul double %.sroa.speculated.i.i.i.i.i16.i.i.i.i.i, %.sroa.speculated.i.i.i.i.i16.i.i.i.i.i
  %i.ir = fadd double %i.ip, %i.iq
  %sqrt.i.i.i.i17.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.ir)
  br label %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit21.i.i.i.i.i

_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit21.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i, %bb.w
  %.0.i.i18.i.i.i.i.i = phi double [ %sqrt.i.i.i.i17.i.i.i.i.i, %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i14.i.i.i.i.i ], [ %i.hj, %bb.w ] ; 2 uses
  store double %.0.i.i18.i.i.i.i.i, ptr %i.bi, align 8, !tbaa !75
  %i.is = fcmp olt double %.0.i.i18.i.i.i.i.i, %.01283.i.i.i.i.i
  %or.cond.i4.i.i.i.i = or i1 %i.fb, %i.is
  br i1 %or.cond.i4.i.i.i.i, label %bb.x, label %.noexc7.i.i.i.i

bb.x:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit21.i.i.i.i.i
  invoke fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISD_SaISD_EENS2_23TemplateSTRtreeDistanceIS8_S9_SC_E16PairQueueCompareEE4pushERKSD_(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc7.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc7.i.i.i.i:                                  ; preds = %bb.x, %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit21.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.it = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 48 ; 2 uses
  %i.iu = load ptr, ptr %i.et, align 8, !tbaa !89
  %i.iv = icmp ult ptr %i.it, %i.iu
  br i1 %i.iv, label %.lr.ph.split.i.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i, !llvm.loop !90

bb.y:                                             ; preds = %bb.t
  %i.iw = call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i

end_hunk_0
