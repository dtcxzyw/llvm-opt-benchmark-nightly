inline.NumInlined: 851
inline.NumDeleted: 397
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4geos9precision16MinimumClearanceC2EPKNS_4geom8GeometryE:bb.a
; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9precision16MinimumClearance11getDistanceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4geos9precision16MinimumClearance7computeEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !20
  ret double %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9precision16MinimumClearance7computeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.geos::index::strtree::TemplateSTRNodePair", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.31", align 1 ; 5 uses
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
  %.sroa.03.i.i.i.i.i.i.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.bn, align 8
  %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.val3185.i.i.i.i.i, i64 -8
  %.sroa.46.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %.val3084.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !79
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bk                    ; 2 uses
  %i.bq = sdiv exact i64 %i.bp, 24                ; 3 uses
  %i.br = add nsw i64 %i.bq, -1
  %13 = sdiv i64 %i.br, 2
  %i.bs = icmp sgt i64 %i.bp, 48
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.042.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.bt = shl i64 %.042.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.bu = add i64 %i.bt, 2                        ; 2 uses
  %i.bv = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %i.bu
  %i.bw = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bx = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bv, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.by, align 8, !tbaa !75
  %i.bz = getelementptr i8, ptr %i.bx, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.bz, align 8, !tbaa !75
  %i.ca = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.ca, i64 %i.bw, i64 %i.bu ; 4 uses
  %i.cb = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %spec.select.i.i.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.042.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !tbaa.struct !79
  %i.cd = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i.i, %13
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !80

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ce = and i64 %i.bq, 1
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.h, label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.cg = add nsw i64 %i.bq, -2
  %i.ch = ashr exact i64 %i.cg, 1
  %i.ci = icmp eq i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, %i.ch
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 1
  %i.ck = or disjoint i64 %i.cj, 1                ; 2 uses
  %i.cl = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %i.ck
  %i.cm = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !tbaa.struct !79
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ck, %bb.i ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %bb.h ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %14 = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %14, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.j, %bb.k
  %.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.j ] ; 4 uses
  %.097.in.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i, -1
  %.097.i.i.i.i.i.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.097.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.co, align 8, !tbaa !75
  %i.cp = fcmp ogt double %.val2.i.i.i.i.i.i.i.i.i.i.i, %.sroa.46.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cp, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.06.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !tbaa.struct !79
  %i.cr = icmp sgt i64 %.06.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i, !llvm.loop !82

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i.i.i, %bb.j ], [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.06.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store <2 x ptr> %.sroa.03.i.i.i.i.i.i.i.i.sroa.0.0.copyload, ptr %i.cs, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store double %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ct = getelementptr inbounds i8, ptr %.val3185.i.i.i.i.i, i64 -24
  store ptr %i.ct, ptr %i.bf, align 8, !tbaa !83
  %.not74.i.i.i.i.i = icmp eq ptr %.sroa.065.082.i.i.i.i.i, null ; 2 uses
  %i.cu = fcmp ult double %.sroa.10.0.copyload.i.i.i.i.i, %.01283.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %.not74.i.i.i.i.i, i1 true, i1 %i.cu
  br i1 %or.cond.i.i.i.i.i, label %bb.n, label %.thread.thread.i.i.i.i.i

.thread.thread.i.i.i.i.i:                         ; preds = %bb.l
  %.val40100.i.i.i.i.i = load ptr, ptr %.sroa.065.082.i.i.i.i.i, align 8, !tbaa !66
  %i.cv = getelementptr i8, ptr %.sroa.065.082.i.i.i.i.i, i64 8
  %.val41101.i.i.i.i.i = load ptr, ptr %i.cv, align 8, !tbaa !68
  %i.cw = getelementptr i8, ptr %.val40100.i.i.i.i.i, i64 32
  %.val40.val102.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !72
  %i.cx = getelementptr i8, ptr %.val41101.i.i.i.i.i, i64 32
  %.val41.val103.i.i.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !72
  br label %bb.ai

bb.m:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEC2ERKNS1_15TemplateSTRNodeIS7_S8_EESG_RSB_.exit.i.i.i
  %i.cy = landingpad { ptr, i32 }
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
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload.i.i.i.i.i, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !69 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  %i.dc = icmp eq ptr %i.da, %.sroa.058.0.copyload.i.i.i.i.i
  %spec.select.i.i.i.i3.i.i.i = or i1 %i.db, %i.dc
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !69 ; 4 uses
  br i1 %spec.select.i.i.i.i3.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i6.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i6.i.i.i: ; preds = %bb.n
  %i.df = icmp eq ptr %i.de, null
  %i.dg = icmp eq ptr %i.de, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i2.i.i.i7.i.i.i = or i1 %i.df, %i.dg
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
  %i.dh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt14default_deleteISD_EED2Ev.exit.i.i.i.i.i unwind label %bb.r ; 4 uses

_ZNSt10unique_ptrIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt14default_deleteISD_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.q
  store ptr %.sroa.058.0.copyload.i.i.i.i.i, ptr %i.dh, align 16, !tbaa !78, !noalias !85
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !78, !noalias !85
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store double %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 16, !tbaa !74, !noalias !85
  br label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i6.i.i.i, %bb.n
  %i.dj = icmp ne ptr %i.da, null
  %i.dk = icmp ne ptr %i.da, %.sroa.058.0.copyload.i.i.i.i.i
  %spec.select.i.not.i.i.i.i.i.i.i = and i1 %i.dj, %i.dk ; 5 uses
  %i.dl = icmp ne ptr %i.de, null
  %i.dm = icmp ne ptr %i.de, %.sroa.8.0.copyload.i.i.i.i.i
  %spec.select.i.not.i34.i.i.i.i.i.i = and i1 %i.dl, %i.dm ; 2 uses
  %or.cond.i.i.i.i.i.i = and i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload.i.i.i.i.i, i64 8
  %i.do = load double, ptr %i.dn, align 8, !tbaa !88 ; 2 uses
  %i.dp = fcmp uno double %i.do, 0.000000e+00
  %i.dq = load double, ptr %.sroa.058.0.copyload.i.i.i.i.i, align 8
  %i.dr = fsub double %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload.i.i.i.i.i, i64 24
  %i.dt = load double, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload.i.i.i.i.i, i64 16
  %i.dv = load double, ptr %i.du, align 8
  %i.dw = fsub double %i.dt, %i.dv
  %i.dx = fmul double %i.dr, %i.dw
  %i.dy = select i1 %i.dp, double 0.000000e+00, double %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 8
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !88 ; 2 uses
  %i.eb = fcmp uno double %i.ea, 0.000000e+00
  %i.ec = load double, ptr %.sroa.8.0.copyload.i.i.i.i.i, align 8
  %i.ed = fsub double %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 24
  %i.ef = load double, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i.i.i.i.i, i64 16
  %i.eh = load double, ptr %i.eg, align 8
  %i.ei = fsub double %i.ef, %i.eh
  %i.ej = fmul double %i.ed, %i.ei
  %i.ek = select i1 %i.eb, double 0.000000e+00, double %i.ej
  %i.el = fcmp ule double %i.dy, %i.ek            ; 3 uses
  %.sroa.058.0.copyload..sroa.8.0.copyload.i.i.i.i.i = select i1 %i.el, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.058.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload..sroa.058.0.copyload.i.i.i.i.i = select i1 %i.el, ptr %.sroa.058.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  br label %.invoke.i.i.i.i.i

bb.t:                                             ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i4.i.i.i
  %brmerge.i.i.i.i.i = or i1 %spec.select.i.not.i.i.i.i.i.i.i, %spec.select.i.not.i34.i.i.i.i.i.i
  %.sroa.058.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.058.0.copyload.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i
  %.sroa.8.0.copyload.mux.i.i.i.i.i = select i1 %spec.select.i.not.i.i.i.i.i.i.i, ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.058.0.copyload.i.i.i.i.i
  %not.spec.select.i.not.i.i.i.i.i.i.i = xor i1 %spec.select.i.not.i.i.i.i.i.i.i, true
  br i1 %brmerge.i.i.i.i.i, label %.invoke.i.i.i.i.i, label %bb.y

.invoke.i.i.i.i.i:                                ; preds = %bb.t, %bb.s
  %i.em = phi ptr [ %.sroa.058.0.copyload.mux.i.i.i.i.i, %bb.t ], [ %.sroa.058.0.copyload..sroa.8.0.copyload.i.i.i.i.i, %bb.s ] ; 2 uses
  %i.en = phi ptr [ %.sroa.8.0.copyload.mux.i.i.i.i.i, %bb.t ], [ %.sroa.8.0.copyload..sroa.058.0.copyload.i.i.i.i.i, %bb.s ] ; 11 uses
  %i.eo = phi i1 [ %not.spec.select.i.not.i.i.i.i.i.i.i, %bb.t ], [ %i.el, %bb.s ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !69 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !89
  %i.et = icmp ult ptr %i.eq, %i.es
  br i1 %i.et, label %.lr.ph.i3.i.i.i.i, label %_ZN4geos5index7strtree23TemplateSTRtreeDistanceIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE13expandToQueueERKNS1_19TemplateSTRNodePairIS7_S8_SB_EERSt14priority_queueISE_St6vectorISE_SaISE_EENSC_16PairQueueCompareEEd.exit.i.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 40 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 2 uses
  %i.ez = fcmp oeq double %.01283.i.i.i.i.i, +inf ; 2 uses
  br i1 %i.eo, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i3.i.i.i.i, %.noexc5.i.i.i.i
  %.023.us.i.i.i.i.i = phi ptr [ %i.gu, %.noexc5.i.i.i.i ], [ %i.eq, %.lr.ph.i3.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %i.en, ptr %1, align 8, !tbaa !66
  store ptr %.023.us.i.i.i.i.i, ptr %i.bh, align 8, !tbaa !68
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !69 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  %i.fc = icmp eq ptr %i.fa, %i.en
  %spec.select.i.i.i.i.us.i.i.i.i.i = or i1 %i.fb, %i.fc
  br i1 %spec.select.i.i.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !69 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  %i.fg = icmp eq ptr %i.fe, %.023.us.i.i.i.i.i
  %spec.select.i2.i.i.i.us.i.i.i.i.i = or i1 %i.ff, %i.fg
  br i1 %spec.select.i2.i.i.i.us.i.i.i.i.i, label %bb.u, label %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i

_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.thread.i.i.us.i.i.i.i.i: ; preds = %_ZNK4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceE8isLeavesEv.exit.i.i.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 8
  %i.fi = load double, ptr %i.ev, align 8, !tbaa !74 ; 3 uses
  %i.fj = load double, ptr %i.fh, align 8, !tbaa !74 ; 3 uses
  %i.fk = fcmp olt double %i.fi, %i.fj
  %i.fl = select i1 %i.fk, double %i.fj, double %i.fi
  %i.fm = load double, ptr %.023.us.i.i.i.i.i, align 8, !tbaa !74 ; 3 uses
  %i.fn = load double, ptr %i.en, align 8, !tbaa !74 ; 3 uses
  %i.fo = fcmp olt double %i.fm, %i.fn
  %i.fp = select i1 %i.fo, double %i.fm, double %i.fn
  %i.fq = fsub double %i.fl, %i.fp
  %i.fr = fsub double %i.fi, %i.fn
  %i.fs = fsub double %i.fq, %i.fr
  %i.ft = fsub double %i.fj, %i.fm
  %i.fu = fsub double %i.fs, %i.ft                ; 2 uses
  %i.fv = fcmp ogt double %i.fu, 0.000000e+00
  %.sroa.speculated19.i.i.i.i.i.us.i.i.i.i.i = select i1 %i.fv, double %i.fu, double 0.000000e+00 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 24
  %i.fx = load double, ptr %i.ew, align 8, !tbaa !74 ; 3 uses
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !74 ; 3 uses
  %i.fz = fcmp olt double %i.fx, %i.fy
  %i.ga = select i1 %i.fz, double %i.fy, double %i.fx
  %i.gb = getelementptr inbounds nuw i8, ptr %.023.us.i.i.i.i.i, i64 16
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !74 ; 3 uses
  %i.gd = load double, ptr %i.ex, align 8, !tbaa !74 ; 3 uses
  %i.ge = fcmp olt double %i.gc, %i.gd
  %i.gf = select i1 %i.ge, double %i.gc, double %i.gd
  %i.gg = fsub double %i.ga, %i.gf
  %i.gh = fsub double %i.fx, %i.gd
  %i.gi = fsub double %i.gg, %i.gh
  %i.gj = fsub double %i.fy, %i.gc
  %i.gk = fsub double %i.gi, %i.gj                ; 2 uses
end_hunk_0
