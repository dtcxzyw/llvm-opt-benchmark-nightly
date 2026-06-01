inline.NumInlined: 482
inline.NumDeleted: 295
begin_hunk_0_@_ZN4geos9algorithm9construct18LargestEmptyCircle13getRadiusLineEPKNS_4geom8GeometryEd:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !noalias !93
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0)
          to label %bb.b unwind label %bb.e, !noalias !93

bb.b:                                             ; preds = %.noexc3
  %i.m = load ptr, ptr %3, align 8, !tbaa !102, !noalias !93 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !59, !noalias !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !noalias !93
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %bb.c unwind label %bb.e, !noalias !93

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !55, !noalias !93
  invoke void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.43") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %3, align 8, !tbaa !102, !noalias !93 ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.f, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i: ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #15, !inline_history !104
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b, %.noexc3
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %3, align 8, !tbaa !102, !noalias !93 ; 3 uses
  %.not.i2.i = icmp eq ptr %i.x, null
  br i1 %.not.i2.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit4.i, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i3.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i3.i: ; preds = %bb.e
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #15, !inline_history !104
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit4.i

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit4.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i3.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !93
  br label %.body

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !93
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4, label %_ZNSt10unique_ptrIN4geos9operation8distance20IndexedFacetDistanceESt14default_deleteIS3_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN4geos9operation8distance20IndexedFacetDistanceEEclEPS3_.exit.i.i, label %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.ad) #15, !inline_history !88
  br label %_ZNKSt14default_deleteIN4geos9operation8distance20IndexedFacetDistanceEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4geos9operation8distance20IndexedFacetDistanceEEclEPS3_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i.i.i.i, %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #17
  br label %_ZNSt10unique_ptrIN4geos9operation8distance20IndexedFacetDistanceESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN4geos9operation8distance20IndexedFacetDistanceESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4geos9operation8distance20IndexedFacetDistanceEEclEPS3_.exit.i.i, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73 ; 3 uses
  %.not.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIN4geos9algorithm6locate25IndexedPointInAreaLocatorESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4geos9algorithm6locate25IndexedPointInAreaLocatorEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4geos9algorithm6locate25IndexedPointInAreaLocatorEEclEPS3_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4geos9operation8distance20IndexedFacetDistanceESt14default_deleteIS3_EED2Ev.exit.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #15, !inline_history !89
  br label %_ZNSt10unique_ptrIN4geos9algorithm6locate25IndexedPointInAreaLocatorESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN4geos9algorithm6locate25IndexedPointInAreaLocatorESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4geos9algorithm6locate25IndexedPointInAreaLocatorEEclEPS3_.exit.i.i, %_ZNSt10unique_ptrIN4geos9operation8distance20IndexedFacetDistanceESt14default_deleteIS3_EED2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN4geos9operation8distance20IndexedFacetDistanceD2Ev.exit.i, label %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i.i

_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN4geos9algorithm6locate25IndexedPointInAreaLocatorESt14default_deleteIS3_EED2Ev.exit.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.an) #15, !inline_history !90
  br label %_ZN4geos9operation8distance20IndexedFacetDistanceD2Ev.exit.i

_ZN4geos9operation8distance20IndexedFacetDistanceD2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4geos5index7strtree15TemplateSTRtreeIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEEEEclEPSA_.exit.i.i.i, %_ZNSt10unique_ptrIN4geos9algorithm6locate25IndexedPointInAreaLocatorESt14default_deleteIS3_EED2Ev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !66 ; 3 uses
  %.not.i2.i5 = icmp eq ptr %i.as, null
  br i1 %.not.i2.i5, label %_ZN4geos9algorithm9construct18LargestEmptyCircleD2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i: ; preds = %_ZN4geos9operation8distance20IndexedFacetDistanceD2Ev.exit.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.as) #15, !inline_history !91
  br label %_ZN4geos9algorithm9construct18LargestEmptyCircleD2Ev.exit

_ZN4geos9algorithm9construct18LargestEmptyCircleD2Ev.exit: ; preds = %_ZN4geos9operation8distance20IndexedFacetDistanceD2Ev.exit.i, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.h:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit4.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.w, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit4.i ]
  call void @_ZN4geos9algorithm9construct18LargestEmptyCircleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm9construct18LargestEmptyCircle13getRadiusLineEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.43") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.51", align 8 ; 9 uses
  tail call void @_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.51") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 2, i64 noundef 0)
  %i.h = load ptr, ptr %2, align 8, !tbaa !102    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !102    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !55
  invoke void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.43") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %2, align 8, !tbaa !102    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #15, !inline_history !105
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %2, align 8, !tbaa !102    ; 3 uses
  %.not.i2 = icmp eq ptr %i.x, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit4, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i3

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i3: ; preds = %bb.e
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #15, !inline_history !105
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit4

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit4: ; preds = %bb.e, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %3 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %5 = alloca %"class.geos::geom::Coordinate", align 16 ; 7 uses
  %6 = alloca %"class.std::priority_queue", align 8 ; 18 uses
  %7 = alloca %"class.std::vector.70", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57, !range !106, !noundef !107
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4geos9algorithm9construct18LargestEmptyCircle12initBoundaryEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.g) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !tbaa.struct !108
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !tbaa.struct !108
  store i8 1, ptr %i.a, align 8, !tbaa !57
  br label %bb.am

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %6, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN4geos9algorithm9construct18LargestEmptyCircle17createInitialGridEPKNS_4geom8EnvelopeERSt14priority_queueINS2_4CellESt6vectorIS8_SaIS8_EESt4lessIS8_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(25) %6)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !109
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 16, i1 false), !noalias !109
  store double +qnan, ptr %i.q, align 16, !tbaa !58, !noalias !109
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !59, !noalias !109
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 400
  %i.t = load ptr, ptr %i.s, align 8, !noalias !109
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc unwind label %bb.m, !inline_history !112 ; 0 uses

.noexc:                                           ; preds = %bb.e
  %i.v = load <2 x double>, ptr %5, align 16, !tbaa !56, !noalias !109 ; 2 uses
  %i.w = invoke noundef double @_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN4geos9algorithm9construct18LargestEmptyCircle18createCentroidCellEPKNS_4geom8GeometryE.exit unwind label %bb.m

_ZN4geos9algorithm9construct18LargestEmptyCircle18createCentroidCellEPKNS_4geom8GeometryE.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !109
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  %.promoted = load ptr, ptr %6, align 8, !tbaa !113 ; 3 uses
  %.promoted253 = load ptr, ptr %i.x, align 8, !tbaa !113 ; 3 uses
  %i.y = icmp eq ptr %.promoted, %.promoted253
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4geos9algorithm9construct18LargestEmptyCircle18createCentroidCellEPKNS_4geom8GeometryE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread
  %.sroa.12.0265 = phi double [ %i.w, %.lr.ph ], [ %.sroa.12.1, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread ] ; 2 uses
  %i.ah = phi ptr [ %.promoted, %.lr.ph ], [ %i.jl, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread ] ; 26 uses
  %i.ai = phi ptr [ %.promoted253, %.lr.ph ], [ %i.jk, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread ] ; 8 uses
  %i.aj = phi <2 x double> [ %i.v, %.lr.ph ], [ %i.cc, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread ]
  %i.ak = load <2 x double>, ptr %i.ah, align 8, !tbaa !56 ; 4 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.21.0.copyload = load double, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !56
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.22.0.copyload = load double, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !56 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.24.0.copyload = load double, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !56 ; 3 uses
  %i.al = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.ah to i64               ; 4 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp sgt i64 %i.an, 40
  br i1 %i.ao, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 -40 ; 3 uses
  %.sroa.06.i.i.i.sroa.0.0.copyload = load <4 x double>, ptr %i.ap, align 8
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.sroa.49.0.copyload.i.i.i = load double, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !tbaa.struct !115
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.am                    ; 2 uses
  %i.as = sdiv exact i64 %i.ar, 40                ; 3 uses
  %i.at = add nsw i64 %i.as, -1
  %i.au = sdiv i64 %i.at, 2
  %i.av = icmp sgt i64 %i.ar, 80
  br i1 %i.av, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.aw = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.ax = add i64 %i.aw, 2                        ; 2 uses
  %i.ay = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %i.ax
  %i.az = or disjoint i64 %i.aw, 1                ; 2 uses
  %i.ba = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !116
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.be = load double, ptr %i.bd, align 8, !tbaa !116
  %i.bf = fcmp olt double %i.bc, %i.be
  %spec.select.i.i.i.i = select i1 %i.bf, i64 %i.az, i64 %i.ax ; 4 uses
  %i.bg = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %spec.select.i.i.i.i
  %i.bh = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %.038.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !tbaa.struct !115
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.au
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !118

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bj = and i64 %i.as, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = add nsw i64 %i.as, -2
  %i.bm = ashr exact i64 %i.bl, 1
  %i.bn = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bm
  br i1 %i.bn, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bp = or disjoint i64 %i.bo, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.bp
  %i.br = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %i.bq, i64 40, i1 false), !tbaa.struct !115
  br label %.lr.ph.i.i.i.i.i.preheader

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS6_EEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.i ], [ %i.bp, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.j
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i1011.i.i.i, %bb.j ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i1011.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %.0919.i.i1011.i.i.i ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !116
  %i.bv = fcmp olt double %i.bu, %.sroa.49.0.copyload.i.i.i
  br i1 %i.bv, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS6_EEEEvT_SH_SH_RT0_.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bw = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %.018.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, ptr noundef nonnull align 8 dereferenceable(40) %i.bs, i64 40, i1 false), !tbaa.struct !115
  %.not12.i.i.i = icmp eq i64 %.0919.i.i1011.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS6_EEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !120

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS6_EEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.j ]
  %i.bx = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store <4 x double> %.sroa.06.i.i.i.sroa.0.0.copyload, ptr %i.bx, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store double %.sroa.49.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS6_EEEEvT_SH_SH_RT0_.exit.i.i, %bb.f
  %i.by = getelementptr inbounds i8, ptr %i.ai, i64 -40 ; 10 uses
  %i.bz = fcmp ogt double %.sroa.22.0.copyload, %.sroa.12.0265 ; 2 uses
  %i.ca = insertelement <2 x i1> poison, i1 %i.bz, i64 0
  %i.cb = shufflevector <2 x i1> %i.ca, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cc = select <2 x i1> %i.cb, <2 x double> %i.ak, <2 x double> %i.aj ; 2 uses
  %.sroa.12.1 = select i1 %i.bz, double %.sroa.22.0.copyload, double %.sroa.12.0265 ; 2 uses
  %i.cd = fcmp olt double %.sroa.24.0.copyload, 0.000000e+00
  br i1 %i.cd, label %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread, label %bb.n

bb.l:                                             ; preds = %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63

bb.m:                                             ; preds = %.noexc, %bb.e
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63

bb.n:                                             ; preds = %bb.k
  %i.cg = fcmp olt double %.sroa.22.0.copyload, 0.000000e+00
  br i1 %i.cg, label %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = fsub double %.sroa.24.0.copyload, %.sroa.12.1
  %i.ci = load double, ptr %0, align 8, !tbaa !7
  %i.cj = fcmp ogt double %i.ch, %i.ci
  br i1 %i.cj, label %bb.p, label %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread

_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit: ; preds = %bb.n
  %i.ck = load double, ptr %0, align 8, !tbaa !7
  %i.cl = fcmp ogt double %.sroa.24.0.copyload, %i.ck
  br i1 %i.cl, label %bb.p, label %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread

bb.p:                                             ; preds = %bb.o, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit
  %i.cm = fmul double %.sroa.21.0.copyload, 5.000000e-01 ; 19 uses
  %i.cn = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fsub <2 x double> %i.ak, %i.co          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store <2 x double> %i.cp, ptr %4, align 16, !tbaa !56
  store double +qnan, ptr %i.z, align 16, !tbaa !58
  %i.cq = invoke noundef double @_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.q unwind label %.loopexit200 ; 4 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.cr = load ptr, ptr %i.aa, align 8, !tbaa !121
  %.not.i66 = icmp eq ptr %i.by, %i.cr
  br i1 %.not.i66, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store <2 x double> %i.cp, ptr %i.by, align 8, !tbaa !56
  %i.cs = getelementptr inbounds i8, ptr %i.ai, i64 -24
  store double %i.cm, ptr %i.cs, align 8, !tbaa !123
  %i.ct = getelementptr inbounds i8, ptr %i.ai, i64 -16
  store double %i.cq, ptr %i.ct, align 8, !tbaa !124
  %i.cu = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.cv = fmul double %i.cm, f0x3FF6A09E667F3BCD
  %i.cw = fadd double %i.cv, %i.cq
  store double %i.cw, ptr %i.cu, align 8, !tbaa !116
  br label %.noexc17

bb.s:                                             ; preds = %bb.q
  %i.cx = ptrtoint ptr %i.by to i64
  %i.cy = sub i64 %i.cx, %i.am                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.t, label %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  store ptr %i.ah, ptr %6, align 8
  store ptr %i.by, ptr %i.x, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc68 unwind label %.loopexit.split-lp

.noexc68:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.da = sdiv exact i64 %i.cy, 40                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 230584300921369395)
  %i.de = select i1 %i.dc, i64 230584300921369395, i64 %i.dd ; 3 uses
  %.not.i.i.i67 = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i.i67)
  %i.df = mul nuw nsw i64 %i.de, 40
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #18
          to label %.noexc69 unwind label %.loopexit200 ; 6 uses

.noexc69:                                         ; preds = %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy ; 4 uses
  store <2 x double> %i.cp, ptr %i.dh, align 8, !tbaa !56
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store double %i.cm, ptr %i.di, align 8, !tbaa !123
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store double %i.cq, ptr %i.dj, align 8, !tbaa !124
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dl = fmul double %i.cm, f0x3FF6A09E667F3BCD
  %i.dm = fadd double %i.dl, %i.cq
  store double %i.dm, ptr %i.dk, align 8, !tbaa !116
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.by
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc69, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i ], [ %i.dg, %.noexc69 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %.noexc69 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !115, !alias.scope !125
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dn, %i.by
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !129

_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc69
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dg, %.noexc69 ], [ %i.do, %.lr.ph.i.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #17
  %i.dq = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.dq, ptr %i.aa, align 8, !tbaa !121
  %.pre = ptrtoint ptr %i.dp to i64
  %.pre335 = ptrtoint ptr %i.dg to i64
  br label %.noexc17

.noexc17:                                         ; preds = %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.r
  %.pre-phi336 = phi i64 [ %.pre335, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.am, %bb.r ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.al, %bb.r ]
  %i.dr = phi ptr [ %i.dp, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.ai, %bb.r ] ; 13 uses
  %i.ds = phi ptr [ %i.dg, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.ah, %bb.r ] ; 11 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -40
  %.sroa.05.i.i.sroa.0.0.copyload = load <4 x double>, ptr %i.dt, align 8
  %.sroa.410.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.dr, i64 -8
  %.sroa.410.0.copyload.i.i = load double, ptr %.sroa.410.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !56 ; 2 uses
  %i.du = sub i64 %.pre-phi, %.pre-phi336         ; 4 uses
  %i.dv = sdiv exact i64 %i.du, 40                ; 4 uses
  %i.dw = add nsw i64 %i.dv, -1                   ; 2 uses
  %i.dx = icmp sgt i64 %i.du, 40
  br i1 %i.dx, label %.lr.ph.i.i.i, label %.loopexit199

.lr.ph.i.i.i:                                     ; preds = %.noexc17, %bb.u
  %.018.i.i.i = phi i64 [ %.0919.i1112.i.i, %bb.u ], [ %i.dw, %.noexc17 ] ; 3 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i1112.i.i = lshr i64 %.0919.in.i.i.i, 1  ; 3 uses
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %i.ds, i64 %.0919.i1112.i.i ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !116
  %i.eb = fcmp olt double %i.ea, %.sroa.410.0.copyload.i.i
  br i1 %i.eb, label %bb.u, label %.loopexit199

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.ec = getelementptr inbounds [40 x i8], ptr %i.ds, i64 %.018.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ec, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !tbaa.struct !115
  %.not.i.i = icmp eq i64 %.0919.i1112.i.i, 0
  br i1 %.not.i.i, label %.loopexit199, label %.lr.ph.i.i.i, !llvm.loop !120

.loopexit199:                                     ; preds = %bb.u, %.lr.ph.i.i.i, %.noexc17
  %.0.lcssa.i.i.i = phi i64 [ %i.dw, %.noexc17 ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.u ]
  %i.ed = getelementptr inbounds [40 x i8], ptr %i.ds, i64 %.0.lcssa.i.i.i ; 2 uses
  store <4 x double> %.sroa.05.i.i.sroa.0.0.copyload, ptr %i.ed, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store double %.sroa.410.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !56
  %i.ee = extractelement <2 x double> %i.ak, i64 0
  %i.ef = fadd double %i.ee, %i.cm                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store double %i.ef, ptr %3, align 8, !tbaa !130
  %i.eg = extractelement <2 x double> %i.cp, i64 1 ; 3 uses
  store double %i.eg, ptr %i.ab, align 8, !tbaa !131
  store double +qnan, ptr %i.ac, align 8, !tbaa !58
  %i.eh = invoke noundef double @_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.v unwind label %.loopexit201 ; 4 uses

bb.v:                                             ; preds = %.loopexit199
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ei = load ptr, ptr %i.aa, align 8, !tbaa !121
  %.not.i70 = icmp eq ptr %i.dr, %i.ei
  br i1 %.not.i70, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store double %i.ef, ptr %i.dr, align 8, !tbaa !132
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store double %i.eg, ptr %i.ej, align 8, !tbaa !133
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store double %i.cm, ptr %i.ek, align 8, !tbaa !123
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store double %i.eh, ptr %i.el, align 8, !tbaa !124
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.en = fmul double %i.cm, f0x3FF6A09E667F3BCD
  %i.eo = fadd double %i.en, %i.eh                ; 2 uses
  store double %i.eo, ptr %i.em, align 8, !tbaa !116
  br label %.noexc30

bb.x:                                             ; preds = %bb.v
  %i.ep = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.ep, label %bb.y, label %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i71

bb.y:                                             ; preds = %bb.x
  store ptr %i.ds, ptr %6, align 8
  store ptr %i.dr, ptr %i.x, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc83 unwind label %.loopexit.split-lp202

.noexc83:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i71: ; preds = %bb.x
  %.sroa.speculated.i.i.i72 = call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i.i72, %i.dv ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dv
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 230584300921369395)
  %i.et = select i1 %i.er, i64 230584300921369395, i64 %i.es ; 3 uses
  %.not.i.i.i73 = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i.i73)
  %i.eu = mul nuw nsw i64 %i.et, 40
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #18
          to label %.noexc84 unwind label %.loopexit201 ; 6 uses

.noexc84:                                         ; preds = %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i71
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.du ; 5 uses
  store double %i.ef, ptr %i.ew, align 8, !tbaa !132
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store double %i.eg, ptr %i.ex, align 8, !tbaa !133
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store double %i.cm, ptr %i.ey, align 8, !tbaa !123
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store double %i.eh, ptr %i.ez, align 8, !tbaa !124
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fb = fmul double %i.cm, f0x3FF6A09E667F3BCD
  %i.fc = fadd double %i.fb, %i.eh
  store double %i.fc, ptr %i.fa, align 8, !tbaa !116
  %.not10.i.i.i.i.i.i74 = icmp eq ptr %i.ds, %i.dr
  br i1 %.not10.i.i.i.i.i.i74, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i82, label %.lr.ph.i.i.i.i.i.i75

.lr.ph.i.i.i.i.i.i75:                             ; preds = %.noexc84, %.lr.ph.i.i.i.i.i.i75
  %.012.i.i.i.i.i.i76 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i75 ], [ %i.ev, %.noexc84 ] ; 2 uses
  %.0911.i.i.i.i.i.i77 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i75 ], [ %i.ds, %.noexc84 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i76, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i77, i64 40, i1 false), !tbaa.struct !115, !alias.scope !134
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i77, i64 40 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i76, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i78 = icmp eq ptr %i.fd, %i.dr
  br i1 %.not.i.i.i.i.i.i78, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i82, label %.lr.ph.i.i.i.i.i.i75, !llvm.loop !129

_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i82: ; preds = %.lr.ph.i.i.i.i.i.i75, %.noexc84
  %.0.lcssa.i.i.i.i.i.i80 = phi ptr [ %i.ev, %.noexc84 ], [ %i.fe, %.lr.ph.i.i.i.i.i.i75 ] ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %i.ds) #17
  %i.ff = getelementptr inbounds nuw [40 x i8], ptr %i.ev, i64 %i.et
  store ptr %i.ff, ptr %i.aa, align 8, !tbaa !121
  %.sroa.410.0..sroa.0.0..sroa_idx.i.i21.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i80, i64 32
  %.sroa.410.0.copyload.i.i22.pre = load double, ptr %.sroa.410.0..sroa.0.0..sroa_idx.i.i21.phi.trans.insert, align 8, !tbaa !56
  %.pre337 = ptrtoint ptr %i.ev to i64
  br label %.noexc30

.noexc30:                                         ; preds = %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i82, %bb.w
  %.pre-phi338 = phi i64 [ %.pre337, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i82 ], [ %.pre-phi336, %bb.w ] ; 2 uses
  %.sroa.410.0.copyload.i.i22 = phi double [ %.sroa.410.0.copyload.i.i22.pre, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i82 ], [ %i.eo, %bb.w ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i80.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i80, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i82 ], [ %i.dr, %bb.w ] ; 9 uses
  %i.fg = phi ptr [ %i.ev, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i82 ], [ %i.ds, %bb.w ] ; 13 uses
  %.0.lcssa.i.i.i.i.i.i80.pn550 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i80.pn to i64
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i80.pn, i64 40 ; 6 uses
  %.sroa.05.i.i20.sroa.0.0.copyload = load <4 x double>, ptr %.0.lcssa.i.i.i.i.i.i80.pn, align 8
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = sub i64 %i.fj, %.pre-phi338             ; 4 uses
  %i.fl = sdiv exact i64 %i.fk, 40                ; 4 uses
  %i.fm = add nsw i64 %i.fl, -1                   ; 2 uses
  %i.fn = icmp sgt i64 %i.fk, 40
  br i1 %i.fn, label %.lr.ph.i.i.i25, label %.loopexit198

.lr.ph.i.i.i25:                                   ; preds = %.noexc30, %bb.z
  %.018.i.i.i26 = phi i64 [ %.0919.i1112.i.i28, %bb.z ], [ %i.fm, %.noexc30 ] ; 3 uses
  %.0919.in.i.i.i27 = add nsw i64 %.018.i.i.i26, -1
  %.0919.i1112.i.i28 = lshr i64 %.0919.in.i.i.i27, 1 ; 3 uses
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %i.fg, i64 %.0919.i1112.i.i28 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !116
  %i.fr = fcmp olt double %i.fq, %.sroa.410.0.copyload.i.i22
  br i1 %i.fr, label %bb.z, label %.loopexit198

bb.z:                                             ; preds = %.lr.ph.i.i.i25
  %i.fs = getelementptr inbounds [40 x i8], ptr %i.fg, i64 %.018.i.i.i26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fs, ptr noundef nonnull align 8 dereferenceable(40) %i.fo, i64 40, i1 false), !tbaa.struct !115
  %.not.i.i29 = icmp eq i64 %.0919.i1112.i.i28, 0
  br i1 %.not.i.i29, label %.loopexit198, label %.lr.ph.i.i.i25, !llvm.loop !120

.loopexit198:                                     ; preds = %bb.z, %.lr.ph.i.i.i25, %.noexc30
  %.0.lcssa.i.i.i23 = phi i64 [ %i.fm, %.noexc30 ], [ %.018.i.i.i26, %.lr.ph.i.i.i25 ], [ 0, %bb.z ]
  %i.ft = getelementptr inbounds [40 x i8], ptr %i.fg, i64 %.0.lcssa.i.i.i23 ; 2 uses
  store <4 x double> %.sroa.05.i.i20.sroa.0.0.copyload, ptr %i.ft, align 8
  %.sroa.4.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  store double %.sroa.410.0.copyload.i.i22, ptr %.sroa.4.0..sroa_idx.i.i24, align 8, !tbaa !56
  %i.fu = extractelement <2 x double> %i.ak, i64 1
  %i.fv = fadd double %i.fu, %i.cm                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.fw = extractelement <2 x double> %i.cp, i64 0 ; 3 uses
  store double %i.fw, ptr %2, align 8, !tbaa !130
  store double %i.fv, ptr %i.ad, align 8, !tbaa !131
  store double +qnan, ptr %i.ae, align 8, !tbaa !58
  %i.fx = invoke noundef double @_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.aa unwind label %.loopexit206 ; 4 uses

bb.aa:                                            ; preds = %.loopexit198
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.fy = load ptr, ptr %i.aa, align 8, !tbaa !121
  %.not.i86 = icmp eq ptr %i.fi, %i.fy
  br i1 %.not.i86, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store double %i.fw, ptr %i.fi, align 8, !tbaa !132
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i80.pn, i64 48
  store double %i.fv, ptr %i.fz, align 8, !tbaa !133
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i80.pn, i64 56
  store double %i.cm, ptr %i.ga, align 8, !tbaa !123
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i80.pn, i64 64
  store double %i.fx, ptr %i.gb, align 8, !tbaa !124
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i80.pn, i64 72
  %i.gd = fmul double %i.cm, f0x3FF6A09E667F3BCD
  %i.ge = fadd double %i.gd, %i.fx
  store double %i.ge, ptr %i.gc, align 8, !tbaa !116
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i80.pn, i64 80
  br label %.noexc44

bb.ac:                                            ; preds = %bb.aa
  %i.gg = icmp eq i64 %i.fk, 9223372036854775800
  br i1 %i.gg, label %bb.ad, label %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i87

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.fg, ptr %6, align 8
  store ptr %i.fi, ptr %i.x, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc99 unwind label %.loopexit.split-lp207

.noexc99:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i87: ; preds = %bb.ac
  %.sroa.speculated.i.i.i88 = call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  %i.gh = add nsw i64 %.sroa.speculated.i.i.i88, %i.fl ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.fl
  %i.gj = call i64 @llvm.umin.i64(i64 %i.gh, i64 230584300921369395)
  %i.gk = select i1 %i.gi, i64 230584300921369395, i64 %i.gj ; 3 uses
  %.not.i.i.i89 = icmp ne i64 %i.gk, 0
  call void @llvm.assume(i1 %.not.i.i.i89)
  %i.gl = mul nuw nsw i64 %i.gk, 40
  %i.gm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gl) #18
          to label %.noexc100 unwind label %.loopexit206 ; 7 uses

.noexc100:                                        ; preds = %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i87
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.fk ; 5 uses
  store double %i.fw, ptr %i.gn, align 8, !tbaa !132
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store double %i.fv, ptr %i.go, align 8, !tbaa !133
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store double %i.cm, ptr %i.gp, align 8, !tbaa !123
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store double %i.fx, ptr %i.gq, align 8, !tbaa !124
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gs = fmul double %i.cm, f0x3FF6A09E667F3BCD
  %i.gt = fadd double %i.gs, %i.fx
  store double %i.gt, ptr %i.gr, align 8, !tbaa !116
  %.not10.i.i.i.i.i.i90 = icmp eq ptr %i.fg, %i.fi
  br i1 %.not10.i.i.i.i.i.i90, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i98, label %.lr.ph.i.i.i.i.i.i91.preheader

.lr.ph.i.i.i.i.i.i91.preheader:                   ; preds = %.noexc100
  %i.gu = sub i64 %.0.lcssa.i.i.i.i.i.i80.pn550, %i.fh ; 2 uses
  %i.gv = udiv i64 %i.gu, 40
  %i.gw = add nuw nsw i64 %i.gv, 1
  %xtraiter = and i64 %i.gw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i91.prol.loopexit, label %.lr.ph.i.i.i.i.i.i91.prol

.lr.ph.i.i.i.i.i.i91.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i91.preheader, %.lr.ph.i.i.i.i.i.i91.prol
  %.012.i.i.i.i.i.i92.prol = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i.i91.prol ], [ %i.gm, %.lr.ph.i.i.i.i.i.i91.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i93.prol = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i.i91.prol ], [ %i.fg, %.lr.ph.i.i.i.i.i.i91.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i91.prol ], [ 0, %.lr.ph.i.i.i.i.i.i91.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i92.prol, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i93.prol, i64 40, i1 false), !tbaa.struct !115, !alias.scope !138
  %i.gx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i93.prol, i64 40 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i92.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i91.prol.loopexit, label %.lr.ph.i.i.i.i.i.i91.prol, !llvm.loop !142

.lr.ph.i.i.i.i.i.i91.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i91.prol, %.lr.ph.i.i.i.i.i.i91.preheader
  %.lcssa495.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i91.preheader ], [ %i.gy, %.lr.ph.i.i.i.i.i.i91.prol ]
  %.012.i.i.i.i.i.i92.unr = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i.i91.preheader ], [ %i.gy, %.lr.ph.i.i.i.i.i.i91.prol ]
  %.0911.i.i.i.i.i.i93.unr = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i91.preheader ], [ %i.gx, %.lr.ph.i.i.i.i.i.i91.prol ]
  %i.gz = icmp ult i64 %i.gu, 120
  br i1 %i.gz, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i98, label %.lr.ph.i.i.i.i.i.i91

.lr.ph.i.i.i.i.i.i91:                             ; preds = %.lr.ph.i.i.i.i.i.i91.prol.loopexit, %.lr.ph.i.i.i.i.i.i91
  %.012.i.i.i.i.i.i92 = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i.i91 ], [ %.012.i.i.i.i.i.i92.unr, %.lr.ph.i.i.i.i.i.i91.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i93 = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i91 ], [ %.0911.i.i.i.i.i.i93.unr, %.lr.ph.i.i.i.i.i.i91.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i92, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i93, i64 40, i1 false), !tbaa.struct !115, !alias.scope !138
  %i.ha = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i93, i64 40
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i92, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hb, ptr noundef nonnull align 8 dereferenceable(40) %i.ha, i64 40, i1 false), !tbaa.struct !115, !alias.scope !138
  %i.hc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i93, i64 80
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i92, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hd, ptr noundef nonnull align 8 dereferenceable(40) %i.hc, i64 40, i1 false), !tbaa.struct !115, !alias.scope !138
  %i.he = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i93, i64 120 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i92, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, ptr noundef nonnull align 8 dereferenceable(40) %i.he, i64 40, i1 false), !tbaa.struct !115, !alias.scope !138
  %i.hg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i93, i64 160
  %i.hh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i92, i64 160 ; 2 uses
  %.not.i.i.i.i.i.i94.3 = icmp eq ptr %i.he, %.0.lcssa.i.i.i.i.i.i80.pn
  br i1 %.not.i.i.i.i.i.i94.3, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i98, label %.lr.ph.i.i.i.i.i.i91, !llvm.loop !129

_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i98: ; preds = %.lr.ph.i.i.i.i.i.i91.prol.loopexit, %.lr.ph.i.i.i.i.i.i91, %.noexc100
  %.0.lcssa.i.i.i.i.i.i96 = phi ptr [ %i.gm, %.noexc100 ], [ %.lcssa495.unr, %.lr.ph.i.i.i.i.i.i91.prol.loopexit ], [ %i.hh, %.lr.ph.i.i.i.i.i.i91 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i96, i64 40
  call void @_ZdlPv(ptr noundef nonnull %i.fg) #17
  %i.hj = getelementptr inbounds nuw [40 x i8], ptr %i.gm, i64 %i.gk
  store ptr %i.hj, ptr %i.aa, align 8, !tbaa !121
  %.pre339 = ptrtoint ptr %i.gm to i64
  br label %.noexc44

.noexc44:                                         ; preds = %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i98, %bb.ab
  %.pre-phi340 = phi i64 [ %.pre339, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i98 ], [ %.pre-phi338, %bb.ab ] ; 2 uses
  %i.hk = phi ptr [ %i.hi, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i98 ], [ %i.gf, %bb.ab ] ; 14 uses
  %i.hl = phi ptr [ %i.gm, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i98 ], [ %i.fg, %bb.ab ] ; 11 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -40
  %.sroa.05.i.i34.sroa.0.0.copyload = load <4 x double>, ptr %i.hm, align 8
  %.sroa.410.0..sroa.0.0..sroa_idx.i.i35 = getelementptr inbounds i8, ptr %i.hk, i64 -8
  %.sroa.410.0.copyload.i.i36 = load double, ptr %.sroa.410.0..sroa.0.0..sroa_idx.i.i35, align 8, !tbaa !56 ; 2 uses
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = sub i64 %i.hn, %.pre-phi340             ; 4 uses
  %i.hp = sdiv exact i64 %i.ho, 40                ; 4 uses
  %i.hq = add nsw i64 %i.hp, -1                   ; 2 uses
  %i.hr = icmp sgt i64 %i.ho, 40
  br i1 %i.hr, label %.lr.ph.i.i.i39, label %.loopexit197

.lr.ph.i.i.i39:                                   ; preds = %.noexc44, %bb.ae
  %.018.i.i.i40 = phi i64 [ %.0919.i1112.i.i42, %bb.ae ], [ %i.hq, %.noexc44 ] ; 3 uses
  %.0919.in.i.i.i41 = add nsw i64 %.018.i.i.i40, -1
  %.0919.i1112.i.i42 = lshr i64 %.0919.in.i.i.i41, 1 ; 3 uses
  %i.hs = getelementptr inbounds nuw [40 x i8], ptr %i.hl, i64 %.0919.i1112.i.i42 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !116
  %i.hv = fcmp olt double %i.hu, %.sroa.410.0.copyload.i.i36
  br i1 %i.hv, label %bb.ae, label %.loopexit197

bb.ae:                                            ; preds = %.lr.ph.i.i.i39
  %i.hw = getelementptr inbounds [40 x i8], ptr %i.hl, i64 %.018.i.i.i40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hw, ptr noundef nonnull align 8 dereferenceable(40) %i.hs, i64 40, i1 false), !tbaa.struct !115
  %.not.i.i43 = icmp eq i64 %.0919.i1112.i.i42, 0
  br i1 %.not.i.i43, label %.loopexit197, label %.lr.ph.i.i.i39, !llvm.loop !120

.loopexit197:                                     ; preds = %bb.ae, %.lr.ph.i.i.i39, %.noexc44
  %.0.lcssa.i.i.i37 = phi i64 [ %i.hq, %.noexc44 ], [ %.018.i.i.i40, %.lr.ph.i.i.i39 ], [ 0, %bb.ae ]
  %i.hx = getelementptr inbounds [40 x i8], ptr %i.hl, i64 %.0.lcssa.i.i.i37 ; 2 uses
  store <4 x double> %.sroa.05.i.i34.sroa.0.0.copyload, ptr %i.hx, align 8
  %.sroa.4.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  store double %.sroa.410.0.copyload.i.i36, ptr %.sroa.4.0..sroa_idx.i.i38, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store double %i.ef, ptr %1, align 8, !tbaa !130
  store double %i.fv, ptr %i.af, align 8, !tbaa !131
  store double +qnan, ptr %i.ag, align 8, !tbaa !58
  %i.hy = invoke noundef double @_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.af unwind label %.loopexit211 ; 4 uses

bb.af:                                            ; preds = %.loopexit197
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.hz = load ptr, ptr %i.aa, align 8, !tbaa !121
  %.not.i102 = icmp eq ptr %i.hk, %i.hz
  br i1 %.not.i102, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store double %i.ef, ptr %i.hk, align 8, !tbaa !132
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store double %i.fv, ptr %i.ia, align 8, !tbaa !133
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store double %i.cm, ptr %i.ib, align 8, !tbaa !123
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  store double %i.hy, ptr %i.ic, align 8, !tbaa !124
  %i.id = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.ie = fmul double %i.cm, f0x3FF6A09E667F3BCD
  %i.if = fadd double %i.ie, %i.hy                ; 2 uses
  store double %i.if, ptr %i.id, align 8, !tbaa !116
  br label %.noexc58

bb.ah:                                            ; preds = %bb.af
  %i.ig = icmp eq i64 %i.ho, 9223372036854775800
  br i1 %i.ig, label %bb.ai, label %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i103

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.hl, ptr %6, align 8
  store ptr %i.hk, ptr %i.x, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc115 unwind label %.loopexit.split-lp212

.noexc115:                                        ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i103: ; preds = %bb.ah
  %.sroa.speculated.i.i.i104 = call i64 @llvm.umax.i64(i64 %i.hp, i64 1)
  %i.ih = add nsw i64 %.sroa.speculated.i.i.i104, %i.hp ; 2 uses
  %i.ii = icmp ult i64 %i.ih, %i.hp
  %i.ij = call i64 @llvm.umin.i64(i64 %i.ih, i64 230584300921369395)
  %i.ik = select i1 %i.ii, i64 230584300921369395, i64 %i.ij ; 3 uses
  %.not.i.i.i105 = icmp ne i64 %i.ik, 0
  call void @llvm.assume(i1 %.not.i.i.i105)
  %i.il = mul nuw nsw i64 %i.ik, 40
  %i.im = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.il) #18
          to label %.noexc116 unwind label %.loopexit211 ; 6 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i103
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ho ; 5 uses
  store double %i.ef, ptr %i.in, align 8, !tbaa !132
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store double %i.fv, ptr %i.io, align 8, !tbaa !133
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store double %i.cm, ptr %i.ip, align 8, !tbaa !123
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  store double %i.hy, ptr %i.iq, align 8, !tbaa !124
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.is = fmul double %i.cm, f0x3FF6A09E667F3BCD
  %i.it = fadd double %i.is, %i.hy
  store double %i.it, ptr %i.ir, align 8, !tbaa !116
  %.not10.i.i.i.i.i.i106 = icmp eq ptr %i.hl, %i.hk
  br i1 %.not10.i.i.i.i.i.i106, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114, label %.lr.ph.i.i.i.i.i.i107

.lr.ph.i.i.i.i.i.i107:                            ; preds = %.noexc116, %.lr.ph.i.i.i.i.i.i107
  %.012.i.i.i.i.i.i108 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i107 ], [ %i.im, %.noexc116 ] ; 2 uses
  %.0911.i.i.i.i.i.i109 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i107 ], [ %i.hl, %.noexc116 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i108, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i109, i64 40, i1 false), !tbaa.struct !115, !alias.scope !144
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i109, i64 40 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i108, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i110 = icmp eq ptr %i.iu, %i.hk
  br i1 %.not.i.i.i.i.i.i110, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114, label %.lr.ph.i.i.i.i.i.i107, !llvm.loop !129

_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114: ; preds = %.lr.ph.i.i.i.i.i.i107, %.noexc116
  %.0.lcssa.i.i.i.i.i.i112 = phi ptr [ %i.im, %.noexc116 ], [ %i.iv, %.lr.ph.i.i.i.i.i.i107 ] ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %i.hl) #17
  %i.iw = getelementptr inbounds nuw [40 x i8], ptr %i.im, i64 %i.ik
  store ptr %i.iw, ptr %i.aa, align 8, !tbaa !121
  %.sroa.410.0..sroa.0.0..sroa_idx.i.i49.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i112, i64 32
  %.sroa.410.0.copyload.i.i50.pre = load double, ptr %.sroa.410.0..sroa.0.0..sroa_idx.i.i49.phi.trans.insert, align 8, !tbaa !56
  %.pre341 = ptrtoint ptr %i.im to i64
  br label %.noexc58

.noexc58:                                         ; preds = %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114, %bb.ag
  %.pre-phi342 = phi i64 [ %.pre341, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114 ], [ %.pre-phi340, %bb.ag ]
  %.sroa.410.0.copyload.i.i50 = phi double [ %.sroa.410.0.copyload.i.i50.pre, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114 ], [ %i.if, %bb.ag ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i112.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i112, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114 ], [ %i.hk, %bb.ag ] ; 2 uses
  %i.ix = phi ptr [ %i.im, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114 ], [ %i.hl, %bb.ag ] ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i112.pn, i64 40 ; 2 uses
  %.sroa.05.i.i48.sroa.0.0.copyload = load <4 x double>, ptr %.0.lcssa.i.i.i.i.i.i112.pn, align 8
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = sub i64 %i.iz, %.pre-phi342             ; 2 uses
  %i.jb = sdiv exact i64 %i.ja, 40
  %i.jc = add nsw i64 %i.jb, -1                   ; 2 uses
  %i.jd = icmp sgt i64 %i.ja, 40
  br i1 %i.jd, label %.lr.ph.i.i.i53, label %.loopexit

.lr.ph.i.i.i53:                                   ; preds = %.noexc58, %bb.aj
  %.018.i.i.i54 = phi i64 [ %.0919.i1112.i.i56, %bb.aj ], [ %i.jc, %.noexc58 ] ; 3 uses
  %.0919.in.i.i.i55 = add nsw i64 %.018.i.i.i54, -1
  %.0919.i1112.i.i56 = lshr i64 %.0919.in.i.i.i55, 1 ; 3 uses
  %i.je = getelementptr inbounds nuw [40 x i8], ptr %i.ix, i64 %.0919.i1112.i.i56 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !116
  %i.jh = fcmp olt double %i.jg, %.sroa.410.0.copyload.i.i50
  br i1 %i.jh, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %.lr.ph.i.i.i53
  %i.ji = getelementptr inbounds [40 x i8], ptr %i.ix, i64 %.018.i.i.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ji, ptr noundef nonnull align 8 dereferenceable(40) %i.je, i64 40, i1 false), !tbaa.struct !115
  %.not.i.i57 = icmp eq i64 %.0919.i1112.i.i56, 0
  br i1 %.not.i.i57, label %.loopexit, label %.lr.ph.i.i.i53, !llvm.loop !120

.loopexit:                                        ; preds = %bb.aj, %.lr.ph.i.i.i53, %.noexc58
  %.0.lcssa.i.i.i51 = phi i64 [ %i.jc, %.noexc58 ], [ %.018.i.i.i54, %.lr.ph.i.i.i53 ], [ 0, %bb.aj ]
  %i.jj = getelementptr inbounds [40 x i8], ptr %i.ix, i64 %.0.lcssa.i.i.i51 ; 2 uses
  store <4 x double> %.sroa.05.i.i48.sroa.0.0.copyload, ptr %i.jj, align 8
  %.sroa.4.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  store double %.sroa.410.0.copyload.i.i50, ptr %.sroa.4.0..sroa_idx.i.i52, align 8, !tbaa !56
  br label %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread

.loopexit200:                                     ; preds = %bb.p, %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ah, ptr %6, align 8
  store ptr %i.by, ptr %i.x, align 8
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread

.loopexit201:                                     ; preds = %.loopexit199, %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i71
  %lpad.loopexit203 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ds, ptr %6, align 8
  store ptr %i.dr, ptr %i.x, align 8
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread

.loopexit.split-lp202:                            ; preds = %bb.y
  %lpad.loopexit.split-lp204 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread

.loopexit206:                                     ; preds = %.loopexit198, %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i87
  %lpad.loopexit208 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fg, ptr %6, align 8
  store ptr %i.fi, ptr %i.x, align 8
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread

.loopexit.split-lp207:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp209 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread

.loopexit211:                                     ; preds = %.loopexit197, %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i103
  %lpad.loopexit213 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hl, ptr %6, align 8
  store ptr %i.hk, ptr %i.x, align 8
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread

.loopexit.split-lp212:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp214 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread

_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread: ; preds = %bb.k, %bb.o, %.loopexit, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit
  %i.jk = phi ptr [ %i.by, %bb.k ], [ %i.by, %bb.o ], [ %i.iy, %.loopexit ], [ %i.by, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit ] ; 3 uses
  %i.jl = phi ptr [ %i.ah, %bb.k ], [ %i.ah, %bb.o ], [ %i.ix, %.loopexit ], [ %i.ah, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit ] ; 3 uses
  %i.jm = icmp eq ptr %i.jl, %i.jk
  br i1 %i.jm, label %._crit_edge, label %bb.f, !llvm.loop !148

._crit_edge:                                      ; preds = %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread, %_ZN4geos9algorithm9construct18LargestEmptyCircle18createCentroidCellEPKNS_4geom8GeometryE.exit
  %.lcssa254 = phi ptr [ %.promoted253, %_ZN4geos9algorithm9construct18LargestEmptyCircle18createCentroidCellEPKNS_4geom8GeometryE.exit ], [ %i.jk, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread ]
  %.lcssa244 = phi ptr [ %.promoted, %_ZN4geos9algorithm9construct18LargestEmptyCircle18createCentroidCellEPKNS_4geom8GeometryE.exit ], [ %i.jl, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread ] ; 3 uses
  %i.jn = phi <2 x double> [ %i.v, %_ZN4geos9algorithm9construct18LargestEmptyCircle18createCentroidCellEPKNS_4geom8GeometryE.exit ], [ %i.cc, %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread ]
  store ptr %.lcssa244, ptr %6, align 8
  store ptr %.lcssa254, ptr %i.x, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store <2 x double> %i.jn, ptr %i.jo, align 8, !tbaa !56
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !55
  %i.jr = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %i.jq, ptr noundef nonnull align 8 dereferenceable(24) %i.jo)
          to label %bb.ak unwind label %bb.an     ; 7 uses

bb.ak:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZNK4geos9operation8distance20IndexedFacetDistance13nearestPointsEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.70") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.js, ptr noundef %i.jr)
          to label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit unwind label %bb.ao

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %bb.ak
  %i.jt = load ptr, ptr %7, align 8, !tbaa !149   ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, ptr noundef nonnull align 8 dereferenceable(24) %i.jt, i64 24, i1 false), !tbaa.struct !108
  store i8 1, ptr %i.a, align 8, !tbaa !57
  call void @_ZdlPv(ptr noundef nonnull %i.jt) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.not.i = icmp eq ptr %i.jr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit
  %i.jv = load ptr, ptr %i.jr, align 8, !tbaa !59
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(82) %i.jr) #15, !inline_history !152
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i
  %.not.i.i.i.i = icmp eq ptr %.lcssa244, null
  br i1 %.not.i.i.i.i, label %_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.lcssa244) #17
  br label %_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EED2Ev.exit

_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.a, %_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EED2Ev.exit, %bb.c
  ret void

bb.an:                                            ; preds = %._crit_edge
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63

bb.ao:                                            ; preds = %bb.ak
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.not.i61 = icmp eq ptr %i.jr, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i62

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i62: ; preds = %bb.ao
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !59
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(82) %i.jr) #15, !inline_history !152
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63: ; preds = %bb.m, %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i62, %bb.ao, %bb.an, %bb.l
  %.pn10.pn.pn.pn.ph = phi { ptr, i32 } [ %i.jy, %bb.an ], [ %i.jz, %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i62 ], [ %i.jz, %bb.ao ], [ %i.cf, %bb.m ], [ %i.ce, %bb.l ] ; 2 uses
  %.pr = load ptr, ptr %6, align 8, !tbaa !153    ; 2 uses
  %.not.i.i.i.i64 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i64, label %_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EED2Ev.exit65, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread: ; preds = %.loopexit.split-lp, %.loopexit200, %.loopexit.split-lp202, %.loopexit201, %.loopexit.split-lp207, %.loopexit206, %.loopexit.split-lp212, %.loopexit211, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63
  %.pn10.pn.pn.pn366 = phi { ptr, i32 } [ %.pn10.pn.pn.pn.ph, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63 ], [ %lpad.loopexit.split-lp214, %.loopexit.split-lp212 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp204, %.loopexit.split-lp202 ], [ %lpad.loopexit.split-lp209, %.loopexit.split-lp207 ], [ %lpad.loopexit213, %.loopexit211 ], [ %lpad.loopexit208, %.loopexit206 ], [ %lpad.loopexit203, %.loopexit201 ], [ %lpad.loopexit, %.loopexit200 ]
  %i.kd = phi ptr [ %.pr, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63 ], [ %i.hl, %.loopexit.split-lp212 ], [ %i.ah, %.loopexit.split-lp ], [ %i.ds, %.loopexit.split-lp202 ], [ %i.fg, %.loopexit.split-lp207 ], [ %i.hl, %.loopexit211 ], [ %i.fg, %.loopexit206 ], [ %i.ds, %.loopexit201 ], [ %i.ah, %.loopexit200 ]
  call void @_ZdlPv(ptr noundef nonnull %i.kd) #17
  br label %_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EED2Ev.exit65

_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EED2Ev.exit65: ; preds = %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread
  %.pn10.pn.pn.pn367 = phi { ptr, i32 } [ %.pn10.pn.pn.pn.ph, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63 ], [ %.pn10.pn.pn.pn366, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit63.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  resume { ptr, i32 } %.pn10.pn.pn.pn367
}

declare noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm9construct18LargestEmptyCircle14getRadiusPointEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.35") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = tail call noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  store ptr %i.d, ptr %0, align 8, !tbaa !86
  ret void
}

declare void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.43") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm9construct18LargestEmptyCircle17createInitialGridEPKNS_4geom8EnvelopeERSt14priority_queueINS2_4CellESt6vectorIS8_SaIS8_EESt4lessIS8_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(25) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 8 ; 8 uses
  %i.a = load double, ptr %1, align 8, !tbaa !154 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !155 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !156 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !157 ; 3 uses
  %i.h = fcmp uno double %i.c, 0.000000e+00       ; 2 uses
  %i.i = fsub double %i.c, %i.a
  %.0.i = select i1 %i.h, double 0.000000e+00, double %i.i ; 2 uses
  %i.j = fsub double %i.g, %i.e
  %.0.i24 = select i1 %i.h, double 0.000000e+00, double %i.j ; 2 uses
  %i.k = fcmp olt double %.0.i24, %.0.i
  %.sroa.speculated = select i1 %i.k, double %.0.i24, double %.0.i ; 3 uses
  %i.l = fmul double %.sroa.speculated, 5.000000e-01 ; 5 uses
  %i.m = fcmp olt double %i.a, %i.c
  br i1 %i.m, label %.preheader.lr.ph, label %._crit_edge42

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.n = fcmp olt double %i.e, %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = fmul double %i.l, f0x3FF6A09E667F3BCD    ; 2 uses
  br i1 %i.n, label %.preheader.us, label %._crit_edge42

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.02341.us = phi double [ %i.cl, %._crit_edge.us ], [ %i.a, %.preheader.lr.ph ] ; 2 uses
  %i.x = fadd double %i.l, %.02341.us             ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EE7emplaceIJddRddEEEvDpOT_.exit.us
  %.040.us = phi double [ %i.e, %.preheader.us ], [ %i.cj, %_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EE7emplaceIJddRddEEEvDpOT_.exit.us ] ; 2 uses
  %i.y = fadd double %i.l, %.040.us               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store double %i.x, ptr %3, align 8, !tbaa !130
  store double %i.y, ptr %i.o, align 8, !tbaa !131
  store double +qnan, ptr %i.p, align 8, !tbaa !58
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !73   ; 3 uses
  %.not.i.us = icmp eq ptr %i.z, null
  br i1 %.not.i.us, label %.critedge.i.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !158
  %i.ae = icmp eq i8 %i.ad, 2
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.ag = call noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 4 uses
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.ai = invoke noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.ag)
          to label %bb.e unwind label %.split.us

bb.e:                                             ; preds = %bb.d
  %i.aj = fneg double %i.ai
  br label %bb.g

.critedge.i.us:                                   ; preds = %bb.b
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.al = call noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i.us, %bb.c
  %.sroa.0.0.i.us = phi ptr [ %i.ag, %bb.c ], [ %i.al, %.critedge.i.us ] ; 3 uses
  %i.am = invoke noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %.sroa.0.0.i.us)
          to label %bb.g unwind label %.split45.us

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.us = phi ptr [ %i.ag, %bb.e ], [ %.sroa.0.0.i.us, %bb.f ] ; 3 uses
  %.0.i25.us = phi double [ %i.aj, %bb.e ], [ %i.am, %bb.f ] ; 4 uses
  %.not.i.i26.us = icmp eq ptr %.sroa.0.1.i.us, null
  br i1 %.not.i.i26.us, label %_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE.exit.us, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.us

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.us: ; preds = %bb.g
  %i.an = load ptr, ptr %.sroa.0.1.i.us, align 8, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(82) %.sroa.0.1.i.us) #15, !inline_history !159
  br label %_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE.exit.us

_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE.exit.us: ; preds = %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.us, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !160 ; 10 uses
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !121
  %.not.i27.us = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i27.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE.exit.us
  store double %i.x, ptr %i.aq, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store double %i.y, ptr %i.as, align 8, !tbaa !133
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store double %i.l, ptr %i.at, align 8, !tbaa !123
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store double %.0.i25.us, ptr %i.au, align 8, !tbaa !124
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.aw = fadd double %i.w, %.0.i25.us
  store double %i.aw, ptr %i.av, align 8, !tbaa !116
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  store ptr %i.ax, ptr %i.u, align 8, !tbaa !160
  %.pre = load ptr, ptr %2, align 8, !tbaa !113
  br label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12emplace_backIJddRddEEEvDpOT_.exit.us

bb.i:                                             ; preds = %_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE.exit.us
  %i.ay = load ptr, ptr %2, align 8, !tbaa !153   ; 5 uses
  %i.az = ptrtoint ptr %i.aq to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %.split49.us, label %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.i
  %i.bd = sdiv exact i64 %i.bb, 40                ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.us, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 230584300921369395)
  %i.bh = select i1 %i.bf, i64 230584300921369395, i64 %i.bg ; 3 uses
  %.not.i.i.i.us = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.us)
  %i.bi = mul nuw nsw i64 %i.bh, 40
  %i.bj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #18 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 5 uses
  store double %i.x, ptr %i.bk, align 8, !tbaa !132
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store double %i.y, ptr %i.bl, align 8, !tbaa !133
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %i.l, ptr %i.bm, align 8, !tbaa !123
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store double %.0.i25.us, ptr %i.bn, align 8, !tbaa !124
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bp = fadd double %i.w, %.0.i25.us
  store double %i.bp, ptr %i.bo, align 8, !tbaa !116
  %.not10.i.i.i.i.i.i.us = icmp eq ptr %i.ay, %i.aq
  br i1 %.not10.i.i.i.i.i.i.us, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit35.i.i.us, label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.us ], [ %i.bj, %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i.us ] ; 2 uses
  %.0911.i.i.i.i.i.i.us = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.us ], [ %i.ay, %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i.us, i64 40, i1 false), !tbaa.struct !115, !alias.scope !161
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.us, i64 40 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.us, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.us = icmp eq ptr %i.bq, %i.aq
  br i1 %.not.i.i.i.i.i.i.us, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit35.i.i.us, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !129

_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit35.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.us, %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i.us
  %.0.lcssa.i.i.i.i.i.i.us = phi ptr [ %i.bj, %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i.us ], [ %i.br, %.lr.ph.i.i.i.i.i.i.us ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.us, i64 40 ; 2 uses
  %.not.i36.i.i.us = icmp eq ptr %i.ay, null
  br i1 %.not.i36.i.i.us, label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.us, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit35.i.i.us
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #17
  br label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.us

_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.us: ; preds = %bb.j, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit35.i.i.us
  store ptr %i.bj, ptr %2, align 8, !tbaa !153
  store ptr %i.bs, ptr %i.u, align 8, !tbaa !160
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bh
  store ptr %i.bt, ptr %i.v, align 8, !tbaa !121
  br label %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12emplace_backIJddRddEEEvDpOT_.exit.us

_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12emplace_backIJddRddEEEvDpOT_.exit.us: ; preds = %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.us, %bb.h
  %i.bu = phi ptr [ %i.bs, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.us ], [ %i.ax, %bb.h ] ; 3 uses
  %i.bv = phi ptr [ %i.bj, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.us ], [ %.pre, %bb.h ] ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -40
  %.sroa.05.i.i.sroa.0.0.copyload = load <4 x double>, ptr %i.bw, align 8
  %.sroa.410.0..sroa.0.0..sroa_idx.i.i.us = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %.sroa.410.0.copyload.i.i.us = load double, ptr %.sroa.410.0..sroa.0.0..sroa_idx.i.i.us, align 8, !tbaa !56 ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = sdiv exact i64 %i.bz, 40
  %i.cb = add nsw i64 %i.ca, -1                   ; 2 uses
  %i.cc = icmp sgt i64 %i.bz, 40
  br i1 %i.cc, label %.lr.ph.i.i.i.us, label %_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EE7emplaceIJddRddEEEvDpOT_.exit.us

.lr.ph.i.i.i.us:                                  ; preds = %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12emplace_backIJddRddEEEvDpOT_.exit.us, %bb.k
  %.018.i.i.i.us = phi i64 [ %.0919.i1112.i.i.us, %bb.k ], [ %i.cb, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12emplace_backIJddRddEEEvDpOT_.exit.us ] ; 3 uses
  %.0919.in.i.i.i.us = add nsw i64 %.018.i.i.i.us, -1
  %.0919.i1112.i.i.us = lshr i64 %.0919.in.i.i.i.us, 1 ; 3 uses
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.bv, i64 %.0919.i1112.i.i.us ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !116
  %i.cg = fcmp olt double %i.cf, %.sroa.410.0.copyload.i.i.us
  br i1 %i.cg, label %bb.k, label %_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EE7emplaceIJddRddEEEvDpOT_.exit.us

bb.k:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ch = getelementptr inbounds [40 x i8], ptr %i.bv, i64 %.018.i.i.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i64 40, i1 false), !tbaa.struct !115
  %.not.i.i.us = icmp eq i64 %.0919.i1112.i.i.us, 0
  br i1 %.not.i.i.us, label %_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EE7emplaceIJddRddEEEvDpOT_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !120

_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EE7emplaceIJddRddEEEvDpOT_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.k, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12emplace_backIJddRddEEEvDpOT_.exit.us
  %.0.lcssa.i.i.i.us = phi i64 [ %i.cb, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12emplace_backIJddRddEEEvDpOT_.exit.us ], [ %.018.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.k ]
  %i.ci = getelementptr inbounds [40 x i8], ptr %i.bv, i64 %.0.lcssa.i.i.i.us ; 2 uses
  store <4 x double> %.sroa.05.i.i.sroa.0.0.copyload, ptr %i.ci, align 8
  %.sroa.4.0..sroa_idx.i.i.us = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store double %.sroa.410.0.copyload.i.i.us, ptr %.sroa.4.0..sroa_idx.i.i.us, align 8, !tbaa !56
  %i.cj = fadd double %.sroa.speculated, %.040.us ; 2 uses
  %i.ck = fcmp olt double %i.cj, %i.g
  br i1 %i.ck, label %bb.b, label %._crit_edge.us, !llvm.loop !165

._crit_edge.us:                                   ; preds = %_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EE7emplaceIJddRddEEEvDpOT_.exit.us
  %i.cl = fadd double %.sroa.speculated, %.02341.us ; 2 uses
  %i.cm = fcmp olt double %i.cl, %i.c
  br i1 %i.cm, label %.preheader.us, label %._crit_edge42, !llvm.loop !166

.split.us:                                        ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.split45.us:                                      ; preds = %bb.f
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

._crit_edge42:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.a
  ret void

bb.l:                                             ; preds = %.split45.us, %.split.us
  %.sroa.0.2.i = phi ptr [ %i.ag, %.split.us ], [ %.sroa.0.0.i.us, %.split45.us ] ; 3 uses
  %.pn.i = phi { ptr, i32 } [ %i.cn, %.split.us ], [ %i.co, %.split45.us ]
  %.not.i11.i = icmp eq ptr %.sroa.0.2.i, null
  br i1 %.not.i11.i, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit13.i, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i12.i

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i12.i: ; preds = %bb.l
  %i.cp = load ptr, ptr %.sroa.0.2.i, align 8, !tbaa !59
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(82) %.sroa.0.2.i) #15, !inline_history !159
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit13.i

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit13.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i12.i, %bb.l
  resume { ptr, i32 } %.pn.i

.split49.us:                                      ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsEdd(ptr noundef nonnull align 8 dereferenceable(144) %0, double noundef %1, double noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store double %1, ptr %3, align 8, !tbaa !130
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double +qnan, ptr %i.b, align 8, !tbaa !58
  %i.c = call noundef double @_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load double, ptr %i.a, align 8, !tbaa !116 ; 3 uses
  %i.c = fcmp olt double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !124
  %i.f = fcmp olt double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load double, ptr %0, align 8, !tbaa !7
  %i.h = fcmp ogt double %i.b, %i.g
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !124
  %i.k = fsub double %i.b, %i.j
  %i.l = load double, ptr %0, align 8, !tbaa !7
  %i.m = fcmp ogt double %i.k, %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i1 [ %i.m, %bb.d ], [ %i.h, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef signext i8 %i.e(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %1)
  %i.g = icmp eq i8 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = tail call noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 4 uses
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.m = invoke noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.j)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = fneg double %i.m
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.critedge:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.r = tail call noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.b
  %.sroa.0.0 = phi ptr [ %i.j, %bb.b ], [ %i.r, %.critedge ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = invoke noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %.sroa.0.0)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.0.1 = phi ptr [ %i.j, %bb.d ], [ %.sroa.0.0, %bb.f ] ; 3 uses
  %.0 = phi double [ %i.n, %bb.d ], [ %i.t, %bb.f ]
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i: ; preds = %bb.h
  %i.v = load ptr, ptr %.sroa.0.1, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(82) %.sroa.0.1) #15, !inline_history !152
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i
  ret double %.0

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.0.2 = phi ptr [ %i.j, %bb.e ], [ %.sroa.0.0, %bb.g ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.u, %bb.g ]
  %.not.i11 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit13, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i12

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i12: ; preds = %bb.i
  %i.y = load ptr, ptr %.sroa.0.2, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(82) %.sroa.0.2) #15, !inline_history !152
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit13

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit13: ; preds = %bb.i, %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i12
  resume { ptr, i32 } %.pn
}

declare noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm9construct18LargestEmptyCircle18createCentroidCellEPKNS_4geom8GeometryE(ptr dead_on_unwind noalias writable writeonly sret(%"class.geos::algorithm::construct::LargestEmptyCircle::Cell") align 8 captures(none) initializes((0, 40)) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.a, align 16, !tbaa !58
  %i.b = load ptr, ptr %2, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  %i.f = load <2 x double>, ptr %3, align 16, !tbaa !56
  %i.g = call noundef double @_ZN4geos9algorithm9construct18LargestEmptyCircle21distanceToConstraintsERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  store <2 x double> %i.f, ptr %0, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.g, ptr %i.i, align 8, !tbaa !124
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = fadd double %i.g, 0.000000e+00
  store double %i.k, ptr %i.j, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
end_hunk_0
