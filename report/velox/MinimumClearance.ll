inline.NumInlined: 851
inline.NumDeleted: 397
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4geos9precision16MinimumClearance7computeEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br i1 %.09, label %bb.ar, label %.body

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn38 = phi { ptr, i32 } [ %i.js, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.jp) #16
  br label %.body

bb.as:                                            ; preds = %bb.al
  %i.jx = invoke fastcc noundef double @_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance8distanceEPKNS_9operation8distance13FacetSequenceES7_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %.val40.val109.i.i.i.i.i, ptr noundef nonnull %.val41.val111.i.i.i.i.i)
          to label %bb.at unwind label %bb.ap

bb.at:                                            ; preds = %bb.as
  store double %i.jx, ptr %i.s, align 8, !tbaa !20
  %i.jy = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.jz = load ptr, ptr %i.z, align 8, !tbaa !49  ; 3 uses
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !38
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 72
  %i.kc = load ptr, ptr %i.kb, align 8
  invoke void %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %i.jz, i64 noundef 0)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kd = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kf = load ptr, ptr %i.kd, align 8, !tbaa !38
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 72
  %i.kh = load ptr, ptr %i.kg, align 8
  invoke void %i.kh(ptr noundef nonnull align 8 dereferenceable(8) %i.kd, ptr noundef nonnull align 8 dereferenceable(24) %i.ke, i64 noundef 1)
          to label %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistanceD2Ev.exit unwind label %bb.aw

_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistanceD2Ev.exit: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef nonnull %i.jz) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.ki = load ptr, ptr %9, align 8, !tbaa !54    ; 3 uses
  %.not.i24 = icmp eq ptr %i.ki, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESt14default_deleteISA_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i

_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i: ; preds = %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistanceD2Ev.exit
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !38
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(96) %i.ki) #16, !inline_history !95
  br label %_ZNSt10unique_ptrIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESt14default_deleteISA_EED2Ev.exit

_ZNSt10unique_ptrIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESt14default_deleteISA_EED2Ev.exit: ; preds = %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistanceD2Ev.exit, %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %bb.a, %_ZNSt10unique_ptrIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESt14default_deleteISA_EED2Ev.exit
  ret void

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ap, %_ZNKSt14default_deleteIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEEEclEPSD_.exit.i55.i.i.i.i.i, %_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISD_SaISD_EENS2_23TemplateSTRtreeDistanceIS8_S9_SC_E16PairQueueCompareEED2Ev.exit53.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ar, %bb.aw
  %.pn.pn = phi { ptr, i32 } [ %.pn38, %bb.ar ], [ %i.jt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.km, %bb.aw ], [ %i.jr, %bb.ap ], [ %.pn26.i.i.i.i.i, %_ZNKSt14default_deleteIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEEEclEPSD_.exit.i55.i.i.i.i.i ], [ %.pn26.i.i.i.i.i, %_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISD_SaISD_EENS2_23TemplateSTRtreeDistanceIS8_S9_SC_E16PairQueueCompareEED2Ev.exit53.i.i.i.i.i ], [ %i.jt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %.val = load ptr, ptr %i.z, align 8, !tbaa !49  ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i25, label %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistanceD2Ev.exit26, label %bb.ax

bb.ax:                                            ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %.val) #19
  br label %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistanceD2Ev.exit26

_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistanceD2Ev.exit26: ; preds = %bb.ax, %.body, %bb.ao
  %.pn.pn.pn = phi { ptr, i32 } [ %i.jq, %bb.ao ], [ %.pn.pn, %.body ], [ %.pn.pn, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.kn = load ptr, ptr %9, align 8, !tbaa !54    ; 3 uses
  %.not.i27 = icmp eq ptr %i.kn, null
  br i1 %.not.i27, label %_ZNSt10unique_ptrIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESt14default_deleteISA_EED2Ev.exit29, label %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i28

_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i28: ; preds = %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistanceD2Ev.exit26
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !38
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(96) %i.kn) #16, !inline_history !95
  br label %_ZNSt10unique_ptrIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESt14default_deleteISA_EED2Ev.exit29

_ZNSt10unique_ptrIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESt14default_deleteISA_EED2Ev.exit29: ; preds = %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistanceD2Ev.exit26, %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  resume { ptr, i32 } %.pn.pn.pn

bb.ay:                                            ; preds = %bb.an
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9precision16MinimumClearance7getLineEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  tail call void @_ZN4geos9precision16MinimumClearance7computeEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !20
  %i.c = fcmp oeq double %i.b, +inf
  %i.d = load ptr, ptr %1, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4geos4geom15GeometryFactory16createLineStringEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.f, i64 noundef 2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  invoke void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %2, align 8, !tbaa !21     ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #16, !inline_history !41
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !21     ; 3 uses
  %.not.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit4, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i3

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i3: ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #16, !inline_history !41
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit4

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit4: ; preds = %bb.e, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %bb.b
  ret void
}

declare void @_ZNK4geos4geom15GeometryFactory16createLineStringEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8, ptr noundef nonnull align 8 dereferenceable(45), i64 noundef) local_unnamed_addr #2

declare void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN4geos9operation8distance24FacetSequenceTreeBuilder5buildEPKNS_4geom8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance8distanceEPKNS_9operation8distance13FacetSequenceES7_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK4geos9operation8distance13FacetSequence4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %.not47.i = icmp eq i64 %i.a, 0
  br i1 %.not47.i, label %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance14vertexDistanceEPKNS_9operation8distance13FacetSequenceES7_.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.02745.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.n, %._crit_edge.i ] ; 2 uses
  %i.c = tail call noundef i64 @_ZNK4geos9operation8distance13FacetSequence4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %.not43.not.i = icmp eq i64 %i.c, 0
  br i1 %.not43.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %.03244.i = phi i64 [ %i.l, %bb.d ], [ 0, %.preheader.i ] ; 2 uses
  %i.d = tail call noundef ptr @_ZNK4geos9operation8distance13FacetSequence13getCoordinateEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.02745.i) ; 2 uses
  %i.e = tail call noundef ptr @_ZNK4geos9operation8distance13FacetSequence13getCoordinateEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %.03244.i) ; 2 uses
  %3 = load <2 x double>, ptr %i.d, align 8       ; 2 uses
  %4 = load <2 x double>, ptr %i.e, align 8       ; 2 uses
  %5 = fcmp oeq <2 x double> %3, %4               ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %.0.i.i = select i1 %6, i1 %7, i1 false
  br i1 %.0.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %8 = fsub <2 x double> %3, %4                   ; 2 uses
  %9 = fmul <2 x double> %8, %8                   ; 2 uses
  %shift = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %9, %shift
  %10 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %10) ; 2 uses
  %i.f = load double, ptr %0, align 8, !tbaa !42
  %i.g = fcmp olt double %sqrt.i.i, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double %sqrt.i.i, ptr %0, align 8, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !96
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !96
  %i.k = fcmp oeq double %10, 0.000000e+00
  br i1 %i.k, label %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance14vertexDistanceEPKNS_9operation8distance13FacetSequenceES7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.l = add nuw i64 %.03244.i, 1                 ; 2 uses
  %i.m = tail call noundef i64 @_ZNK4geos9operation8distance13FacetSequence4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %.not.i = icmp ult i64 %i.l, %i.m
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !97

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %i.n = add nuw i64 %.02745.i, 1                 ; 2 uses
  %i.o = tail call noundef i64 @_ZNK4geos9operation8distance13FacetSequence4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %.preheader.i, label %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance14vertexDistanceEPKNS_9operation8distance13FacetSequenceES7_.exit, !llvm.loop !98

_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance14vertexDistanceEPKNS_9operation8distance13FacetSequenceES7_.exit: ; preds = %._crit_edge.i, %bb.c, %bb.a
  %i.q = tail call noundef i64 @_ZNK4geos9operation8distance13FacetSequence4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance14vertexDistanceEPKNS_9operation8distance13FacetSequenceES7_.exit
  %i.s = tail call noundef i64 @_ZNK4geos9operation8distance13FacetSequence4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance14vertexDistanceEPKNS_9operation8distance13FacetSequenceES7_.exit
  %i.u = load double, ptr %0, align 8, !tbaa !42  ; 2 uses
  %i.v = fcmp ugt double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance15segmentDistanceEPKNS_9operation8distance13FacetSequenceES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2)
  %i.w = load double, ptr %0, align 8, !tbaa !42  ; 2 uses
  %i.x = fcmp ugt double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance15segmentDistanceEPKNS_9operation8distance13FacetSequenceES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef nonnull %1)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.h
  %i.y = load double, ptr %0, align 8, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.f
  %.0 = phi double [ %i.u, %bb.f ], [ %i.w, %bb.g ], [ %i.y, %.sink.split ]
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @_ZdlPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

declare noundef i64 @_ZNK4geos9operation8distance13FacetSequence4sizeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZZN4geos9precision16MinimumClearance7computeEvEN20MinClearanceDistance15segmentDistanceEPKNS_9operation8distance13FacetSequenceES7_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::LineSegment", align 8 ; 5 uses
  %i.a = tail call noundef i64 @_ZNK4geos9operation8distance13FacetSequence4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %.not54 = icmp eq i64 %i.a, 0
  br i1 %.not54, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.03352 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ae, %._crit_edge ] ; 2 uses
  %i.d = call noundef i64 @_ZNK4geos9operation8distance13FacetSequence4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %.not50 = icmp ugt i64 %i.d, 1
  br i1 %.not50, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.03851 = phi i64 [ %i.ac, %bb.e ], [ 1, %.preheader ] ; 3 uses
  %i.e = call noundef ptr @_ZNK4geos9operation8distance13FacetSequence13getCoordinateEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.03352) ; 5 uses
  %i.f = add i64 %.03851, -1
  %i.g = call noundef ptr @_ZNK4geos9operation8distance13FacetSequence13getCoordinateEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.f) ; 4 uses
  %i.h = call noundef ptr @_ZNK4geos9operation8distance13FacetSequence13getCoordinateEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %.03851) ; 4 uses
  %i.i = load double, ptr %i.e, align 8, !tbaa !99 ; 2 uses
  %i.j = load double, ptr %i.g, align 8, !tbaa !99
  %i.k = fcmp oeq double %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load double, ptr %i.n, align 8
  %i.p = fcmp oeq double %i.m, %i.o
  %.0.i = select i1 %i.k, i1 %i.p, i1 false
  br i1 %.0.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = load double, ptr %i.h, align 8, !tbaa !99
  %i.r = fcmp oeq double %i.i, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = load double, ptr %i.s, align 8
  %i.u = fcmp oeq double %i.m, %i.t
  %.0.i40 = select i1 %i.r, i1 %i.u, i1 false
  br i1 %.0.i40, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h) ; 3 uses
  %i.w = load double, ptr %0, align 8, !tbaa !42
  %i.x = fcmp olt double %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %i.v, ptr %0, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !96
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !96
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.ab = fcmp oeq double %i.v, 0.000000e+00
  br i1 %i.ab, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.lr.ph, %bb.b
  %i.ac = add nuw i64 %.03851, 1                  ; 2 uses
  %i.ad = call noundef i64 @_ZNK4geos9operation8distance13FacetSequence4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %.not = icmp ult i64 %i.ac, %i.ad
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.ae = add nuw i64 %.03352, 1                  ; 2 uses
  %i.af = call noundef i64 @_ZNK4geos9operation8distance13FacetSequence4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %.preheader, label %.loopexit, !llvm.loop !101

.loopexit:                                        ; preds = %._crit_edge, %bb.d, %bb.a
  ret void
}

declare noundef ptr @_ZNK4geos9operation8distance13FacetSequence13getCoordinateEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE5buildEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 7 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #18
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 4 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = sdiv exact i64 %i.k, 48                  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.l, ptr %i.m, align 8, !tbaa !102
  %i.n = icmp ugt i64 %i.l, 1
  br i1 %i.n, label %.lr.ph29.i, label %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE8treeSizeEm.exit.thread

.lr.ph29.i:                                       ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !103
  %i.q = uitofp i64 %i.p to double                ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph29.i
  %.027.i = phi i64 [ %i.l, %.lr.ph29.i ], [ %i.ag, %._crit_edge.i ] ; 2 uses
  %.02226.i = phi i64 [ %i.l, %.lr.ph29.i ], [ %.lcssa37, %._crit_edge.i ] ; 3 uses
  %i.r = uitofp i64 %.02226.i to double           ; 2 uses
  %i.s = fdiv double %i.r, %i.q
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.t)
  %i.u = tail call double @llvm.ceil.f64(double %sqrt.i.i)
  %i.v = fptoui double %i.u to i64                ; 6 uses
  %i.w = uitofp i64 %i.v to double
  %i.x = fdiv double %i.r, %i.w
  %i.y = tail call double @llvm.ceil.f64(double %i.x)
  %i.z = fptoui double %i.y to i64                ; 3 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE8treeSizeEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %xtraiter = and i64 %i.v, 1
  %i.aa = icmp eq i64 %i.v, 1
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.v, -2
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.01424.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %._crit_edge.i.unr-lcssa ]
  %.123.i.epil.init = phi i64 [ %.02226.i, %.lr.ph.i.preheader ], [ %i.ao, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod39 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %.sroa.speculated.i.epil = tail call i64 @llvm.umin.i64(i64 %.123.i.epil.init, i64 %i.z)
  %i.ab = uitofp i64 %.sroa.speculated.i.epil to double
  %i.ac = fdiv double %i.ab, %i.q
  %i.ad = tail call double @llvm.ceil.f64(double %i.ac)
  %i.ae = fptoui double %i.ad to i64
  %i.af = add i64 %.01424.i.epil.init, %i.ae
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa37 = phi i64 [ %i.at, %._crit_edge.i.unr-lcssa ], [ %i.af, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.ag = add i64 %.lcssa37, %.027.i              ; 2 uses
  %i.ah = icmp ugt i64 %.lcssa37, 1
  br i1 %i.ah, label %bb.e, label %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE8treeSizeEm.exit, !llvm.loop !104

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01424.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.at, %.lr.ph.i ]
  %.123.i = phi i64 [ %.02226.i, %.lr.ph.i.preheader.new ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.123.i, i64 %i.z) ; 2 uses
  %i.ai = sub i64 %.123.i, %.sroa.speculated.i    ; 2 uses
  %i.aj = uitofp i64 %.sroa.speculated.i to double
  %i.ak = fdiv double %i.aj, %i.q
  %i.al = tail call double @llvm.ceil.f64(double %i.ak)
  %i.am = fptoui double %i.al to i64
  %i.an = add i64 %.01424.i, %i.am
  %.sroa.speculated.i.1 = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.z) ; 2 uses
  %i.ao = sub i64 %i.ai, %.sroa.speculated.i.1    ; 2 uses
  %i.ap = uitofp i64 %.sroa.speculated.i.1 to double
  %i.aq = fdiv double %i.ap, %i.q
  %i.ar = tail call double @llvm.ceil.f64(double %i.aq)
  %i.as = fptoui double %i.ar to i64
  %i.at = add i64 %i.an, %i.as                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !105

_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE8treeSizeEm.exit: ; preds = %._crit_edge.i, %bb.e
  %.0.lcssa.i = phi i64 [ %i.ag, %._crit_edge.i ], [ %.027.i, %bb.e ] ; 2 uses
  %i.au = icmp ugt i64 %.0.lcssa.i, 192153584101141162
  br i1 %i.au, label %bb.f, label %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE8treeSizeEm.exit.thread

bb.f:                                             ; preds = %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE8treeSizeEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE8treeSizeEm.exit.thread: ; preds = %bb.d, %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE8treeSizeEm.exit
  %.0.lcssa.i21 = phi i64 [ %.0.lcssa.i, %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE8treeSizeEm.exit ], [ %i.l, %bb.d ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !106
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.j
  %i.az = sdiv exact i64 %i.ay, 48
  %i.ba = icmp ult i64 %i.az, %.0.lcssa.i21
  br i1 %i.ba, label %_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_M_allocateEm.exit.i: ; preds = %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE8treeSizeEm.exit.thread
  %i.bb = mul nuw nsw i64 %.0.lcssa.i21, 48
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #17
          to label %.lr.ph.i.i.i.i.i unwind label %bb.i ; 5 uses

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.bc, %_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !107, !alias.scope !108
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !112

_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not.i8.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE13_M_deallocateEPSA_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #19
  br label %_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE13_M_deallocateEPSA_m.exit.i

_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE13_M_deallocateEPSA_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit.i
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !113
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k ; 2 uses
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !114
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %.0.lcssa.i21
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !106
  %.pre29 = sdiv exact i64 %i.k, 48
  br label %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE7reserveEm.exit

_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE13_M_deallocateEPSA_m.exit.i, %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE8treeSizeEm.exit.thread
end_hunk_0
begin_hunk_1_@_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.am = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.am) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %0, align 8, !tbaa !38
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !91    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.y
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.aq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ap, %bb.i ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  call void @_ZdlPv(ptr noundef %i.as) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @_ZdlPv(ptr noundef nonnull %0) #19
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4geos9precision16MinimumClearanceE", !9, i64 0, !11, i64 8, !12, i64 16}
!9 = !{!"p1 _ZTSN4geos4geom8GeometryE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!"_ZTSSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !13, i64 0}
!13 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_ELb1ELb1EE", !14, i64 0}
!14 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !15, i64 0}
!15 = !{!"_ZTSSt5tupleIJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !16, i64 0}
!16 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !17, i64 0}
!17 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom18CoordinateSequenceELb0EE", !18, i64 0}
!18 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !10, i64 0}
!19 = !{!17, !18, i64 0}
!20 = !{!8, !11, i64 8}
!21 = !{!18, !18, i64 0}
!22 = !{!23, !31, i64 24}
!23 = !{!"_ZTSN4geos4geom8GeometryE", !24, i64 8, !4, i64 16, !31, i64 24, !10, i64 32}
!24 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !25, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !26, i64 0}
!26 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !27, i64 0}
!27 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !28, i64 0}
!28 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !29, i64 0}
!29 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !30, i64 0}
!30 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !10, i64 0}
!31 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !10, i64 0}
!32 = !{!33, !36, i64 32}
!33 = !{!"_ZTSN4geos4geom15GeometryFactoryE", !34, i64 8, !4, i64 24, !36, i64 32, !4, i64 40, !37, i64 44}
!34 = !{!"_ZTSN4geos4geom14PrecisionModelE", !35, i64 0, !11, i64 8}
!35 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !5, i64 0}
!36 = !{!"p1 _ZTSN4geos4geom25CoordinateSequenceFactoryE", !10, i64 0}
!37 = !{!"bool", !5, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !6, i64 0}
!40 = distinct !{null, null, null, null, null}
!41 = distinct !{null, null}
!42 = !{!43, !11, i64 0}
!43 = !{!"_ZTSZN4geos9precision16MinimumClearance7computeEvE20MinClearanceDistance", !11, i64 0, !44, i64 8}
!44 = !{!"_ZTSSt6vectorIN4geos4geom10CoordinateESaIS2_EE", !45, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE12_Vector_implE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!48 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !10, i64 0}
!49 = !{!47, !48, i64 0}
!50 = !{!47, !48, i64 16}
!51 = !{!52, !11, i64 16}
!52 = !{!"_ZTSN4geos4geom10CoordinateE", !11, i64 0, !11, i64 8, !11, i64 16}
!53 = !{!47, !48, i64 8}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 _ZTSN4geos5index7strtree15TemplateSTRtreeIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEEE", !10, i64 0}
!56 = !{!57, !64, i64 64}
!57 = !{!"_ZTSN4geos5index7strtree19TemplateSTRtreeImplIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEEE", !58, i64 0, !60, i64 40, !64, i64 64, !65, i64 72, !65, i64 80}
!58 = !{!"_ZTSSt5mutex", !59, i64 0}
!59 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!60 = !{!"_ZTSSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESaISA_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 _ZTSN4geos5index7strtree15TemplateSTRNodeIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEEE", !10, i64 0}
!65 = !{!"long", !5, i64 0}
!66 = !{!67, !64, i64 0}
!67 = !{!"_ZTSN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEE", !64, i64 0, !64, i64 8, !11, i64 16}
!68 = !{!67, !64, i64 8}
!69 = !{!70, !64, i64 40}
!70 = !{!"_ZTSN4geos5index7strtree15TemplateSTRNodeIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEEE", !71, i64 0, !5, i64 32, !64, i64 40}
!71 = !{!"_ZTSN4geos4geom8EnvelopeE", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 _ZTSN4geos9operation8distance13FacetSequenceE", !10, i64 0}
!74 = !{!11, !11, i64 0}
!75 = !{!67, !11, i64 16}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 _ZTSN4geos5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEE", !10, i64 0}
!78 = !{!64, !64, i64 0}
!79 = !{i64 0, i64 8, !78, i64 8, i64 8, !78, i64 16, i64 8, !74}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = distinct !{!82, !81}
!83 = !{!84, !77, i64 8}
!84 = !{!"_ZTSNSt12_Vector_baseIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN4geos6detail11make_uniqueINS_5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS3_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEEJRSE_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!87 = distinct !{!87, !"_ZN4geos6detail11make_uniqueINS_5index7strtree19TemplateSTRNodePairIPKNS_9operation8distance13FacetSequenceENS3_14EnvelopeTraitsEZNS_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEEJRSE_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!88 = !{!71, !11, i64 8}
!89 = !{!5, !5, i64 0}
!90 = distinct !{!90, !81}
!91 = !{!92, !94, i64 0}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !93, i64 0, !65, i64 8, !5, i64 16}
!93 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !94, i64 0}
!94 = !{!"p1 omnipotent char", !10, i64 0}
!95 = distinct !{null, null}
!96 = !{i64 0, i64 8, !74, i64 8, i64 8, !74, i64 16, i64 8, !74}
!97 = distinct !{!97, !81}
!98 = distinct !{!98, !81}
!99 = !{!52, !11, i64 0}
!100 = distinct !{!100, !81}
!101 = distinct !{!101, !81}
!102 = !{!57, !65, i64 80}
!103 = !{!57, !65, i64 72}
!104 = distinct !{!104, !81}
!105 = distinct !{!105, !81}
!106 = !{!63, !64, i64 16}
!107 = !{i64 0, i64 8, !74, i64 8, i64 8, !74, i64 16, i64 8, !74, i64 24, i64 8, !74, i64 32, i64 8, !89, i64 40, i64 8, !78}
!108 = !{!109, !111}
!109 = distinct !{!109, !110, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESA_SaISA_EEvPT_PT0_RT1_: argument 0"}
!110 = distinct !{!110, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESA_SaISA_EEvPT_PT0_RT1_"}
!111 = distinct !{!111, !110, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESA_SaISA_EEvPT_PT0_RT1_: argument 1"}
!112 = distinct !{!112, !81}
!113 = !{!63, !64, i64 0}
!114 = !{!63, !64, i64 8}
!115 = !{!116, !64, i64 0}
!116 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS1_9operation8distance13FacetSequenceENS3_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEE", !64, i64 0}
!117 = distinct !{!117, !81}
!118 = !{!65, !65, i64 0}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS9_SB_: argument 0"}
!121 = distinct !{!121, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS9_SB_"}
!122 = !{i64 0, i64 8, !74, i64 8, i64 8, !74, i64 16, i64 8, !74, i64 24, i64 8, !74}
!123 = !{!71, !11, i64 0}
!124 = !{!71, !11, i64 16}
!125 = !{!71, !11, i64 24}
!126 = distinct !{!126, !81}
!127 = distinct !{!127, !81}
!128 = distinct !{!128, !81}
!129 = distinct !{!129, !81}
!130 = distinct !{!130, !81}
!131 = distinct !{!131, !81}
!132 = !{i64 0, i64 8, !74, i64 8, i64 8, !74, i64 16, i64 8, !89, i64 24, i64 8, !78}
!133 = distinct !{!133, !81}
!134 = distinct !{!134, !81}
!135 = distinct !{!135, !81}
!136 = distinct !{!136, !81}
!137 = distinct !{!137, !81}
!138 = distinct !{!138, !81}
!139 = distinct !{!139, !81}
!140 = distinct !{!140, !81}
!141 = distinct !{!141, !81}
!142 = distinct !{!142, !81}
!143 = distinct !{!143, !81}
!144 = distinct !{!144, !81}
!145 = !{i64 0, i64 8, !89, i64 8, i64 8, !78}
!146 = distinct !{!146, !81}
!147 = distinct !{!147, !81}
!148 = distinct !{!148, !81}
!149 = distinct !{!149, !81}
!150 = distinct !{!150, !81}
!151 = distinct !{!151, !81}
!152 = distinct !{!152, !81}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS9_SB_: argument 0"}
!155 = distinct !{!155, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS_9operation8distance13FacetSequenceENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS9_SB_"}
!156 = !{!157, !159}
!157 = distinct !{!157, !158, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESA_SaISA_EEvPT_PT0_RT1_: argument 0"}
!158 = distinct !{!158, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESA_SaISA_EEvPT_PT0_RT1_"}
!159 = distinct !{!159, !158, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESA_SaISA_EEvPT_PT0_RT1_: argument 1"}
!160 = !{!161, !163}
!161 = distinct !{!161, !162, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESA_SaISA_EEvPT_PT0_RT1_: argument 0"}
!162 = distinct !{!162, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESA_SaISA_EEvPT_PT0_RT1_"}
!163 = distinct !{!163, !162, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEESA_SaISA_EEvPT_PT0_RT1_: argument 1"}
!164 = !{!84, !77, i64 16}
!165 = !{!84, !77, i64 0}
!166 = !{!167, !169}
!167 = distinct !{!167, !168, !"_ZSt19__relocate_object_aIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESD_SaISD_EEvPT_PT0_RT1_: argument 0"}
!168 = distinct !{!168, !"_ZSt19__relocate_object_aIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESD_SaISD_EEvPT_PT0_RT1_"}
!169 = distinct !{!169, !168, !"_ZSt19__relocate_object_aIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESD_SaISD_EEvPT_PT0_RT1_: argument 1"}
!170 = distinct !{!170, !81}
!171 = !{!93, !94, i64 0}
!172 = !{!92, !65, i64 8}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!175 = distinct !{!175, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!176 = !{!177, !174}
!177 = distinct !{!177, !178, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!178 = distinct !{!178, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!181 = distinct !{!181, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
end_hunk_1
