inline.NumInlined: 481
inline.NumDeleted: 226
begin_hunk_0_@_ZN4geos11triangulate28DelaunayTriangulationBuilder6createEv:bb.a
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 24
  %i.am = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 true)
  %i.an = shl nuw nsw i64 %i.am, 1
  %i.ao = xor i64 %i.an, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %i.af, ptr %i.ah, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.m
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.af, ptr %i.ah)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %bb.t

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %_ZN4geos11triangulate28DelaunayTriangulationBuilder10toVerticesERKNS_4geom18CoordinateSequenceE.exit, %.noexc
  %i.ap = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #15
          to label %bb.n unwind label %bb.t       ; 4 uses

bb.n:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !48
  invoke void @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivisionC1ERKNS_4geom8EnvelopeEd(ptr noundef nonnull align 8 dereferenceable(272) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3, double noundef %i.ar)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !41  ; 3 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !41
  %.not.i.i6 = icmp eq ptr %i.as, null
  br i1 %.not.i.i6, label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EE5resetEPS3_.exit, label %_ZNKSt14default_deleteIN4geos11triangulate8quadedge19QuadEdgeSubdivisionEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4geos11triangulate8quadedge19QuadEdgeSubdivisionEEclEPS3_.exit.i.i: ; preds = %bb.o
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.as) #12, !inline_history !61
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EE5resetEPS3_.exit

_ZNSt10unique_ptrIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIN4geos11triangulate8quadedge19QuadEdgeSubdivisionEEclEPS3_.exit.i.i
  %i.aw = phi ptr [ %i.ap, %bb.o ], [ %.pre, %_ZNKSt14default_deleteIN4geos11triangulate8quadedge19QuadEdgeSubdivisionEEclEPS3_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  invoke void @_ZN4geos11triangulate31IncrementalDelaunayTriangulatorC1EPNS0_8quadedge19QuadEdgeSubdivisionE(ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef %i.aw)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EE5resetEPS3_.exit
  invoke void @_ZN4geos11triangulate31IncrementalDelaunayTriangulator11insertSitesERKSt6vectorINS0_8quadedge6VertexESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.ax = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4geos11triangulate8quadedge6VertexESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.ax) #13
  br label %_ZNSt6vectorIN4geos11triangulate8quadedge6VertexESaIS3_EED2Ev.exit

_ZNSt6vectorIN4geos11triangulate8quadedge6VertexESaIS3_EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.a, %bb.b, %_ZNSt6vectorIN4geos11triangulate8quadedge6VertexESaIS3_EED2Ev.exit
  ret void

bb.t:                                             ; preds = %.noexc, %bb.m, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #13
  br label %bb.w

bb.v:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EE5resetEPS3_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.v ], [ %i.az, %bb.u ], [ %i.ay, %bb.t ]
  %i.bb = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN4geos11triangulate8quadedge6VertexESaIS3_EED2Ev.exit8, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #13
  br label %_ZNSt6vectorIN4geos11triangulate8quadedge6VertexESaIS3_EED2Ev.exit8

_ZNSt6vectorIN4geos11triangulate8quadedge6VertexESaIS3_EED2Ev.exit8: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %common.resume
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivisionC1ERKNS_4geom8EnvelopeEd(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(32), double noundef) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

declare void @_ZN4geos11triangulate31IncrementalDelaunayTriangulatorC1EPNS0_8quadedge19QuadEdgeSubdivisionE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) unnamed_addr #2

declare void @_ZN4geos11triangulate31IncrementalDelaunayTriangulator11insertSitesERKSt6vectorINS0_8quadedge6VertexESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(272) ptr @_ZN4geos11triangulate28DelaunayTriangulationBuilder14getSubdivisionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4geos11triangulate28DelaunayTriangulationBuilder6createEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate28DelaunayTriangulationBuilder8getEdgesERKNS_4geom15GeometryFactoryE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.44") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(45) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4geos11triangulate28DelaunayTriangulationBuilder6createEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4geos4geom15GeometryFactory21createMultiLineStringEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision8getEdgesERKNS_4geom15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(45) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZNK4geos4geom15GeometryFactory21createMultiLineStringEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.44") align 8, ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #2

declare void @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision8getEdgesERKNS_4geom15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.44") align 8, ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate28DelaunayTriangulationBuilder12getTrianglesERKNS_4geom15GeometryFactoryE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.52") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(45) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4geos11triangulate28DelaunayTriangulationBuilder6createEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4geos4geom15GeometryFactory24createGeometryCollectionEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.52") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision12getTrianglesERKNS_4geom15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.52") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(45) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZNK4geos4geom15GeometryFactory24createGeometryCollectionEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.52") align 8, ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #2

declare void @_ZN4geos11triangulate8quadedge19QuadEdgeSubdivision12getTrianglesERKNS_4geom15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.52") align 8, ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate28DelaunayTriangulationBuilder8envelopeERKNS_4geom18CoordinateSequenceE(ptr dead_on_unwind noalias writable sret(%"class.geos::geom::Envelope") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.geos::geom::Envelope") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph29

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEET_SE_SE_T0_.exit
  %i.h = icmp eq i64 %i.ae, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph29, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph29:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1828 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01927 = phi i64 [ %i.ae, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.ag, %bb.b ], [ %i.c, %.lr.ph ]
  %i.j = udiv i64 %i.i, 48
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1828, i64 -24
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_SE_T0_(ptr %0, ptr nonnull %i.e, ptr %i.k, ptr nonnull %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph29
  %.sroa.012.0.i.i = phi ptr [ %i.e, %.lr.ph29 ], [ %i.ad, %bb.j ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1828, %.lr.ph29 ], [ %.sroa.0.1.i.i, %bb.j ]
  %i.m = load double, ptr %0, align 8, !tbaa !63  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.u, %bb.g ] ; 11 uses
  %i.n = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !63 ; 2 uses
  %i.o = fcmp olt double %i.n, %i.m
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp ogt double %i.n, %i.m
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.preheader, label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.preheader: ; preds = %bb.f, %bb.e
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !64
  %i.s = load double, ptr %i.f, align 8, !tbaa !64
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.preheader

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.d, !llvm.loop !65

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.backedge ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.v = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !63 ; 2 uses
  %i.w = fcmp olt double %i.m, %i.v
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.backedge, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i
  %i.x = fcmp ogt double %i.m, %i.v
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load double, ptr %i.f, align 8, !tbaa !64
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !64
  %i.ab = fcmp olt double %i.y, %i.aa
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.backedge: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, !llvm.loop !66

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i.i: ; preds = %bb.i, %bb.h
  %i.ac = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ac, label %bb.j, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEET_SE_SE_T0_.exit

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.c, !llvm.loop !67

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEET_SE_SE_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i.i
  %i.ae = add nsw i64 %.01927, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1828, i64 noundef %i.ae)
  %i.af = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ag = sub i64 %i.af, %i.a                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 384
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !62

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEET_SE_SE_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %3 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.q

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.lr.ph.i
  %.sroa.0.020.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.l ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.l ] ; 3 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 4 uses
  %i.f = load double, ptr %.sroa.0.020.i.ptr, align 8, !tbaa !63 ; 5 uses
  %i.g = load double, ptr %0, align 8, !tbaa !63  ; 2 uses
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ogt double %i.f, %i.g
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %.sroa.5.0.copyload.i.pre.i = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8, !tbaa !29 ; 3 uses
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load double, ptr %i.e, align 8, !tbaa !64
  %i.k = fcmp olt double %.sroa.5.0.copyload.i.pre.i, %i.j
  br i1 %i.k, label %bb.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.020.i.ptr, i64 24, i1 false), !tbaa.struct !28
  %i.l = icmp samesign ugt i64 %.sroa.0.020.i.idx, 24
  br i1 %i.l, label %bb.f, label %bb.g, !prof !68

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 40
  %.sroa.6.0.copyload.i.i = load double, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i
  %.sroa.09.0.i.i = phi ptr [ %.sroa.0.020.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i ], [ %.sroa.0.0.i.i, %bb.k ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -24 ; 3 uses
  %i.n = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !63 ; 2 uses
  %i.o = fcmp olt double %i.f, %i.n
  br i1 %i.o, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = fcmp ogt double %i.f, %i.n
  br i1 %i.p, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -16
  %i.r = load double, ptr %i.q, align 8, !tbaa !64
  %i.s = fcmp olt double %.sroa.5.0.copyload.i.pre.i, %i.r
  br i1 %i.s, label %bb.k, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i

bb.k:                                             ; preds = %bb.j, %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false), !tbaa.struct !28
  br label %bb.h, !llvm.loop !69

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i: ; preds = %bb.j, %bb.i
  store double %i.f, ptr %.sroa.09.0.i.i, align 8, !tbaa !29
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store double %.sroa.5.0.copyload.i.pre.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  store double %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx7.i.i, align 8, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.020.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %bb.b, !llvm.loop !70

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit: ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not6.i = icmp eq ptr %i.t, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17
  %.sroa.0.07.i = phi ptr [ %i.ad, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17 ], [ %i.t, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit ] ; 4 uses
  %i.u = load <2 x double>, ptr %.sroa.0.07.i, align 8, !tbaa !29 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %.sroa.6.0.copyload.i.i14 = load double, ptr %.sroa.6.0..sroa_idx.i.i13, align 8, !tbaa !29
  %i.v = extractelement <2 x double> %i.u, i64 0  ; 2 uses
  %i.w = extractelement <2 x double> %i.u, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i12
  %.sroa.09.0.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i16, %bb.p ] ; 5 uses
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i15, i64 -24 ; 3 uses
  %i.x = load double, ptr %.sroa.0.0.i.i16, align 8, !tbaa !63 ; 2 uses
  %i.y = fcmp olt double %i.v, %i.x
  br i1 %i.y, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = fcmp ogt double %i.v, %i.x
  br i1 %i.z, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds i8, ptr %.sroa.09.0.i.i15, i64 -16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !64
  %i.ac = fcmp olt double %i.w, %i.ab
  br i1 %i.ac, label %bb.p, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17

bb.p:                                             ; preds = %bb.o, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i16, i64 24, i1 false), !tbaa.struct !28
  br label %bb.m, !llvm.loop !69

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17: ; preds = %bb.o, %bb.n
  store <2 x double> %i.u, ptr %.sroa.09.0.i.i15, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx7.i.i19 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i15, i64 16
  store double %.sroa.6.0.copyload.i.i14, ptr %.sroa.6.0..sroa_idx7.i.i19, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ad, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %.lr.ph.i12, !llvm.loop !71

bb.q:                                             ; preds = %bb.a
  %i.ae = icmp eq ptr %0, %1
  br i1 %i.ae, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %.preheader.i21

.preheader.i21:                                   ; preds = %bb.q
  %.sroa.0.017.i22 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not18.i23 = icmp eq ptr %.sroa.0.017.i22, %1
  br i1 %.not18.i23, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.preheader.i21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.ac, %.lr.ph.i24
  %.sroa.0.020.i25 = phi ptr [ %.sroa.0.017.i22, %.lr.ph.i24 ], [ %.sroa.0.0.i37, %bb.ac ] ; 6 uses
  %.pn19.i26 = phi ptr [ %0, %.lr.ph.i24 ], [ %.sroa.0.020.i25, %bb.ac ] ; 4 uses
  %i.ag = load double, ptr %.sroa.0.020.i25, align 8, !tbaa !63 ; 5 uses
  %i.ah = load double, ptr %0, align 8, !tbaa !63 ; 2 uses
  %i.ai = fcmp olt double %i.ag, %i.ah
  br i1 %i.ai, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = fcmp ogt double %i.ag, %i.ah
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i27 = getelementptr inbounds nuw i8, ptr %.pn19.i26, i64 32
  %.sroa.5.0.copyload.i.pre.i28 = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i27, align 8, !tbaa !29 ; 3 uses
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = load double, ptr %i.af, align 8, !tbaa !64
  %i.al = fcmp olt double %.sroa.5.0.copyload.i.pre.i28, %i.ak
  br i1 %i.al, label %bb.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i29

bb.u:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.020.i25, i64 24, i1 false), !tbaa.struct !28
  %i.am = ptrtoint ptr %.sroa.0.020.i25 to i64
  %i.an = sub i64 %i.am, %i.b                     ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 24
  br i1 %i.ao, label %bb.v, label %bb.w, !prof !68

bb.v:                                             ; preds = %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn19.i26, i64 48
  %.neg28.i40 = udiv exact i64 %i.an, 24
  %.neg28.neg.i41 = sub nsw i64 0, %.neg28.i40
  %i.aq = getelementptr inbounds [24 x i8], ptr %i.ap, i64 %.neg28.neg.i41
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.an, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39

bb.w:                                             ; preds = %bb.u
  %i.ar = icmp eq i64 %i.an, 24
  br i1 %i.ar, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr inbounds nuw i8, ptr %.pn19.i26, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39: ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ac

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i29: ; preds = %bb.t, %bb.s
  %.sroa.6.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %.pn19.i26, i64 40
  %.sroa.6.0.copyload.i.i31 = load double, ptr %.sroa.6.0..sroa_idx.i.i30, align 8, !tbaa !29
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i29
  %.sroa.09.0.i.i32 = phi ptr [ %.sroa.0.020.i25, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i29 ], [ %.sroa.0.0.i.i33, %bb.ab ] ; 6 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i32, i64 -24 ; 3 uses
  %i.at = load double, ptr %.sroa.0.0.i.i33, align 8, !tbaa !63 ; 2 uses
  %i.au = fcmp olt double %i.ag, %i.at
  br i1 %i.au, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.av = fcmp ogt double %i.ag, %i.at
  br i1 %i.av, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i34, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = getelementptr inbounds i8, ptr %.sroa.09.0.i.i32, i64 -16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !64
  %i.ay = fcmp olt double %.sroa.5.0.copyload.i.pre.i28, %i.ax
  br i1 %i.ay, label %bb.ab, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i34

bb.ab:                                            ; preds = %bb.aa, %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i33, i64 24, i1 false), !tbaa.struct !28
  br label %bb.y, !llvm.loop !69

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i34: ; preds = %bb.aa, %bb.z
  store double %i.ag, ptr %.sroa.09.0.i.i32, align 8, !tbaa !29
  %.sroa.5.0..sroa_idx5.i.i35 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i32, i64 8
  store double %.sroa.5.0.copyload.i.pre.i28, ptr %.sroa.5.0..sroa_idx5.i.i35, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx7.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i32, i64 16
  store double %.sroa.6.0.copyload.i.i31, ptr %.sroa.6.0..sroa_idx7.i.i36, align 8, !tbaa !29
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i34, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39
  %.sroa.0.0.i37 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i25, i64 24 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.0.0.i37, %1
  br i1 %.not.i38, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %bb.r, !llvm.loop !70

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit: ; preds = %bb.ac, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17, %.preheader.i21, %bb.q, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !29 ; 3 uses
  %.sroa.510.0..sroa.0.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %.sroa.510.0.copyload.i = load double, ptr %.sroa.510.0..sroa.0.0..sroa_idx.i, align 8, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.h, 48
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i
  %.042.i.i = phi i64 [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.042.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 3 uses
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 3 uses
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.o, align 8, !tbaa !63 ; 2 uses
  %i.s = load double, ptr %i.q, align 8, !tbaa !63 ; 2 uses
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = fcmp ogt double %i.r, %i.s
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !64
  %i.z = fcmp olt double %i.w, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.n, %bb.d ], [ %i.n, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %.lr.ph.i.i ] ; 4 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.042.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !28
  %i.ad = icmp slt i64 %i.aa, %i.k
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !72

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i ] ; 5 uses
  %i.ae = and i64 %i.i, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ag = add nsw i64 %i.i, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa.i.i, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nsw i64 %.0.lcssa.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ak
  %i.am = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.ak, %bb.f ], [ %.0.lcssa.i.i, %bb.e ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i, 0
  br i1 %i.an, label %.lr.ph.i.i.i.preheader, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %i.ao = extractelement <2 x double> %i.f, i64 0 ; 2 uses
  %i.ap = extractelement <2 x double> %i.f, i64 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.j
  %.019.i.i.i = phi i64 [ %.0920.i.i1112.i, %bb.j ], [ %.1.i.i, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i1112.i = lshr i64 %.0920.in.i.i.i, 1  ; 3 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0920.i.i1112.i ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.as = fcmp olt double %i.ar, %i.ao
  br i1 %i.as, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.at = fcmp ogt double %i.ar, %i.ao
  br i1 %i.at, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !64
  %i.aw = fcmp olt double %i.av, %i.ap
  br i1 %i.aw, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.019.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !28
  %.not.i = icmp eq i64 %.0920.i.i1112.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !73

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.g ], [ 0, %bb.j ], [ %.019.i.i.i, %bb.h ], [ %.019.i.i.i, %bb.i ]
  %i.ay = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store <2 x double> %i.f, ptr %i.ay, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store double %.sroa.510.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !29
  %i.az = icmp sgt i64 %i.h, 24
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 48
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 24                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_SF_T1_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ay, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_SF_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [24 x i8], ptr %0, i64 %.08 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !29 ; 3 uses
  %.sroa.518.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.518.0.copyload = load double, ptr %.sroa.518.0..sroa.0.0..sroa_idx, align 8, !tbaa !29
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i
  %.042.i = phi i64 [ %i.ag, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i ], [ %.08, %bb.c ] ; 2 uses
  %i.s = shl i64 %.042.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 3 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %i.s, 1                  ; 3 uses
  %i.w = getelementptr inbounds [24 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = load double, ptr %i.u, align 8, !tbaa !63 ; 2 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !63 ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = fcmp ogt double %i.x, %i.y
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !64
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.i
  %i.ag = phi i64 [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %.lr.ph.i ] ; 4 uses
  %i.ah = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %.042.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !28
  %i.aj = icmp slt i64 %i.ag, %i.i
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %i.ag, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.ak = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.08
  br i1 %i.al, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_SF_T1_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.am = extractelement <2 x double> %i.q, i64 0 ; 2 uses
  %i.an = extractelement <2 x double> %i.q, i64 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.k
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.k ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ao = getelementptr inbounds [24 x i8], ptr %0, i64 %.0920.i.i ; 3 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !63 ; 2 uses
  %i.aq = fcmp olt double %i.ap, %i.am
  br i1 %i.aq, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ar = fcmp ogt double %i.ap, %i.am
  br i1 %i.ar, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_SF_T1_T2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !64
  %i.au = fcmp olt double %i.at, %i.an
  br i1 %i.au, label %bb.k, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.av = getelementptr inbounds [24 x i8], ptr %0, i64 %.019.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !28
  %i.aw = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_SF_T1_T2_.exit, !llvm.loop !73

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_SF_T1_T2_.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.h ], [ %.019.i.i, %bb.j ], [ %.019.i.i, %bb.i ], [ %.0920.i.i, %bb.k ]
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store <2 x double> %i.q, ptr %i.ax, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store double %.sroa.518.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !29
  %.not = icmp eq i64 %.08, 0
  %i.ay = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !75

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_SF_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_SE_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %5 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %7 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %8 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %9 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %i.a = load double, ptr %1, align 8, !tbaa !63  ; 6 uses
  %i.b = load double, ptr %2, align 8, !tbaa !63  ; 6 uses
  %i.c = fcmp olt double %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %i.a, %i.b
  br i1 %i.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !64
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = load double, ptr %3, align 8, !tbaa !63  ; 4 uses
  %i.k = fcmp olt double %i.b, %i.j
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = fcmp ogt double %i.b, %i.j
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !64
  %i.q = fcmp olt double %i.n, %i.p
  br i1 %i.q, label %bb.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27: ; preds = %bb.f, %bb.e
  %i.r = fcmp olt double %i.a, %i.j
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27
  %i.s = fcmp ogt double %i.a, %i.j
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !64
  %i.x = fcmp olt double %i.u, %i.w
  br i1 %i.x, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit: ; preds = %bb.c, %bb.b
  %i.y = load double, ptr %3, align 8, !tbaa !63  ; 4 uses
  %i.z = fcmp olt double %i.a, %i.y
  br i1 %i.z, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit
  %i.aa = fcmp ogt double %i.a, %i.y
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !64
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %bb.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31

bb.m:                                             ; preds = %bb.l, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31: ; preds = %bb.l, %bb.k
  %i.ag = fcmp olt double %i.b, %i.y
  br i1 %i.ag, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31
  %i.ah = fcmp ogt double %i.b, %i.y
  br i1 %i.ah, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !64
  %i.am = fcmp olt double %i.aj, %i.al
  br i1 %i.am, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33

bb.p:                                             ; preds = %bb.o, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33, %bb.p, %bb.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN4geos11triangulate8quadedge6VertexC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %.sroa.0.i.i.i.i = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph23

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit
  %i.h = icmp eq i64 %i.ae, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph23, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge12.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1222 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01321 = phi i64 [ %i.ae, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.ag, %bb.b ], [ %i.c, %.lr.ph ]
  %i.j = udiv i64 %i.i, 48
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1222, i64 -24
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr nonnull %i.e, ptr %i.k, ptr nonnull %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph23
  %.sroa.012.0.i.i = phi ptr [ %i.e, %.lr.ph23 ], [ %i.ad, %bb.j ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1222, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.j ]
  %i.m = load double, ptr %0, align 8, !tbaa !63  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.u, %bb.g ] ; 11 uses
  %i.n = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !63 ; 2 uses
  %i.o = fcmp olt double %i.n, %i.m
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp ogt double %i.n, %i.m
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader, label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !64
  %i.s = load double, ptr %i.f, align 8, !tbaa !64
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.d, !llvm.loop !77

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.v = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !63 ; 2 uses
  %i.w = fcmp olt double %i.m, %i.v
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  %i.x = fcmp ogt double %i.m, %i.v
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load double, ptr %i.f, align 8, !tbaa !64
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !64
  %i.ab = fcmp olt double %i.y, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge: ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, !llvm.loop !78

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i: ; preds = %bb.i, %bb.h
  %i.ac = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ac, label %bb.j, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.c, !llvm.loop !79

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i
  %i.ae = add nsw i64 %.01321, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1222, i64 noundef %i.ae)
  %i.af = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ag = sub i64 %i.af, %i.a                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 384
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i15 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %.sroa.0.i = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.n

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.07.021.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.07.021.i.add, %bb.i ] ; 3 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.07.021.i.ptr, %bb.i ] ; 2 uses
  %.sroa.07.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.021.i.idx ; 4 uses
  %i.f = load double, ptr %.sroa.07.021.i.ptr, align 8, !tbaa !63 ; 5 uses
  %i.g = load double, ptr %0, align 8, !tbaa !63  ; 2 uses
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ogt double %i.f, %i.g
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  %.sroa.6.0.copyload.i.pre.i = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i, align 8, !tbaa !29 ; 3 uses
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load double, ptr %i.e, align 8, !tbaa !64
  %i.k = fcmp olt double %.sroa.6.0.copyload.i.pre.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i

.loopexit.i:                                      ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.021.i.ptr, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.07.021.i.idx, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 40
  %.sroa.7.0.copyload.i.i = load double, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i
  %.sroa.09.0.i.i = phi ptr [ %.sroa.07.021.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -24 ; 3 uses
  %i.l = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !63 ; 2 uses
  %i.m = fcmp olt double %i.f, %i.l
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = fcmp ogt double %i.f, %i.l
  br i1 %i.n, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -16
  %i.p = load double, ptr %i.o, align 8, !tbaa !64
  %i.q = fcmp olt double %.sroa.6.0.copyload.i.pre.i, %i.p
  br i1 %i.q, label %bb.h, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

bb.h:                                             ; preds = %bb.g, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false), !tbaa.struct !28
  br label %bb.e, !llvm.loop !80

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %bb.g, %bb.f
  store double %i.f, ptr %.sroa.09.0.i.i, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store double %.sroa.6.0.copyload.i.pre.i, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !tbaa !29
  %.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  store double %.sroa.7.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx7.i.i, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %.loopexit.i
  %.sroa.07.021.i.add = add nuw nsw i64 %.sroa.07.021.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.07.021.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !81

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not4.i = icmp eq ptr %i.r, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11
  %.sroa.0.05.i = phi ptr [ %i.ab, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit ] ; 4 uses
  %i.s = load <2 x double>, ptr %.sroa.0.05.i, align 8, !tbaa !29 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16
  %.sroa.7.0.copyload.i.i8 = load double, ptr %.sroa.7.0..sroa_idx.i.i7, align 8, !tbaa !29
  %i.t = extractelement <2 x double> %i.s, i64 0  ; 2 uses
  %i.u = extractelement <2 x double> %i.s, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i6
  %.sroa.09.0.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i10, %bb.m ] ; 5 uses
  %.sroa.0.0.i.i10 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -24 ; 3 uses
  %i.v = load double, ptr %.sroa.0.0.i.i10, align 8, !tbaa !63 ; 2 uses
  %i.w = fcmp olt double %i.t, %i.v
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = fcmp ogt double %i.t, %i.v
  br i1 %i.x, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -16
  %i.z = load double, ptr %i.y, align 8, !tbaa !64
  %i.aa = fcmp olt double %i.u, %i.z
  br i1 %i.aa, label %bb.m, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11

bb.m:                                             ; preds = %bb.l, %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i10, i64 24, i1 false), !tbaa.struct !28
  br label %bb.j, !llvm.loop !80

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11: ; preds = %bb.l, %bb.k
  store <2 x double> %i.s, ptr %.sroa.09.0.i.i9, align 8, !tbaa !29
  %.sroa.7.0..sroa_idx7.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i9, i64 16
  store double %.sroa.7.0.copyload.i.i8, ptr %.sroa.7.0..sroa_idx7.i.i13, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 24 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ab, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6, !llvm.loop !82

bb.n:                                             ; preds = %bb.a
  %i.ac = icmp eq ptr %0, %1
  br i1 %i.ac, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.n
  %.sroa.07.018.i17 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not19.i18 = icmp eq ptr %.sroa.07.018.i17, %1
  br i1 %.not19.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.lr.ph.i19
  %.sroa.07.021.i20 = phi ptr [ %.sroa.07.018.i17, %.lr.ph.i19 ], [ %.sroa.07.0.i32, %bb.w ] ; 7 uses
  %.pn20.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.07.021.i20, %bb.w ] ; 3 uses
  %i.ae = load double, ptr %.sroa.07.021.i20, align 8, !tbaa !63 ; 5 uses
  %i.af = load double, ptr %0, align 8, !tbaa !63 ; 2 uses
  %i.ag = fcmp olt double %i.ae, %i.af
  br i1 %i.ag, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = fcmp ogt double %i.ae, %i.af
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i22 = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 32
  %.sroa.6.0.copyload.i.pre.i23 = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i22, align 8, !tbaa !29 ; 3 uses
  br i1 %i.ah, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = load double, ptr %i.ad, align 8, !tbaa !64
  %i.aj = fcmp olt double %.sroa.6.0.copyload.i.pre.i23, %i.ai
  br i1 %i.aj, label %bb.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24

bb.r:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i15)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.021.i20, i64 24, i1 false), !tbaa.struct !28
  %i.ak = ptrtoint ptr %.sroa.07.021.i20 to i64
  %i.al = sub i64 %i.ak, %i.b                     ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader.i.i.i.i.i.i35, label %.loopexit.i34

.lr.ph.preheader.i.i.i.i.i.i35:                   ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 48
  %i.ao = udiv exact i64 %i.al, 24
  br label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.lr.ph.i.i.i.i.i.i36, %.lr.ph.preheader.i.i.i.i.i.i35
  %.010.i.i.i.i.i.i37 = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i36 ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i.i35 ] ; 2 uses
  %.069.i.i.i.i.i.i38 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i36 ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i.i35 ]
  %.078.i.i.i.i.i.i39 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i36 ], [ %.sroa.07.021.i20, %.lr.ph.preheader.i.i.i.i.i.i35 ]
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i39, i64 -24 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i38, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !tbaa.struct !28
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i37, -1
  %i.as = icmp samesign ugt i64 %.010.i.i.i.i.i.i37, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i36, label %.loopexit.i34, !llvm.loop !83

.loopexit.i34:                                    ; preds = %.lr.ph.i.i.i.i.i.i36, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i15, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i15)
  br label %bb.w

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24: ; preds = %bb.q, %bb.p
  %.sroa.7.0..sroa_idx.i.i25 = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 40
  %.sroa.7.0.copyload.i.i26 = load double, ptr %.sroa.7.0..sroa_idx.i.i25, align 8, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24
  %.sroa.09.0.i.i27 = phi ptr [ %.sroa.07.021.i20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24 ], [ %.sroa.0.0.i.i28, %bb.v ] ; 6 uses
  %.sroa.0.0.i.i28 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i27, i64 -24 ; 3 uses
  %i.at = load double, ptr %.sroa.0.0.i.i28, align 8, !tbaa !63 ; 2 uses
  %i.au = fcmp olt double %i.ae, %i.at
  br i1 %i.au, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = fcmp ogt double %i.ae, %i.at
  br i1 %i.av, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds i8, ptr %.sroa.09.0.i.i27, i64 -16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !64
  %i.ay = fcmp olt double %.sroa.6.0.copyload.i.pre.i23, %i.ax
  br i1 %i.ay, label %bb.v, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29

bb.v:                                             ; preds = %bb.u, %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i27, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i28, i64 24, i1 false), !tbaa.struct !28
  br label %bb.s, !llvm.loop !80

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29: ; preds = %bb.u, %bb.t
  store double %i.ae, ptr %.sroa.09.0.i.i27, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx5.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i27, i64 8
  store double %.sroa.6.0.copyload.i.pre.i23, ptr %.sroa.6.0..sroa_idx5.i.i30, align 8, !tbaa !29
  %.sroa.7.0..sroa_idx7.i.i31 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i27, i64 16
  store double %.sroa.7.0.copyload.i.i26, ptr %.sroa.7.0..sroa_idx7.i.i31, align 8, !tbaa !29
  br label %bb.w

bb.w:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29, %.loopexit.i34
  %.sroa.07.0.i32 = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i20, i64 24 ; 2 uses
  %.not.i33 = icmp eq ptr %.sroa.07.0.i32, %1
  br i1 %.not.i33, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.o, !llvm.loop !81

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.w, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11, %.preheader.i16, %bb.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !29 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.h, 48
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  %.043.i.i = phi i64 [ %i.aa, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.043.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 3 uses
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 3 uses
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.o, align 8, !tbaa !63 ; 2 uses
  %i.s = load double, ptr %i.q, align 8, !tbaa !63 ; 2 uses
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = fcmp ogt double %i.r, %i.s
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !64
  %i.z = fcmp olt double %i.w, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.n, %bb.d ], [ %i.n, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %.lr.ph.i.i ] ; 4 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.043.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !28
  %i.ad = icmp slt i64 %i.aa, %i.k
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !84

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i ] ; 5 uses
  %i.ae = and i64 %i.i, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ag = add nsw i64 %i.i, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa.i.i, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nsw i64 %.0.lcssa.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ak
  %i.am = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.ak, %bb.f ], [ %.0.lcssa.i.i, %bb.e ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i, 0
  br i1 %i.an, label %.lr.ph.i.i.i.preheader, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %i.ao = extractelement <2 x double> %i.f, i64 0 ; 2 uses
  %i.ap = extractelement <2 x double> %i.f, i64 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.j
  %.019.i.i.i = phi i64 [ %.0920.i.i89.i, %bb.j ], [ %.1.i.i, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i89.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0920.i.i89.i ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.as = fcmp olt double %i.ar, %i.ao
  br i1 %i.as, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.at = fcmp ogt double %i.ar, %i.ao
  br i1 %i.at, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !64
  %i.aw = fcmp olt double %i.av, %i.ap
  br i1 %i.aw, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.019.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !28
  %.not.i = icmp eq i64 %.0920.i.i89.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !85

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.g ], [ 0, %bb.j ], [ %.019.i.i.i, %bb.h ], [ %.019.i.i.i, %bb.i ]
  %i.ay = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store <2 x double> %i.f, ptr %i.ay, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store double %.sroa.6.0.copyload.i, ptr %.sroa.4.0..sroa_idx29.i.i, align 8, !tbaa !29
  %i.az = icmp sgt i64 %i.h, 24
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 48
  br i1 %i.d, label %.loopexit18, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 24                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ay, %.loopexit ] ; 8 uses
  %i.p = getelementptr inbounds [24 x i8], ptr %0, i64 %.08 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !29 ; 3 uses
  %.sroa.6.0..sroa.010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa.010.0..sroa_idx, align 8, !tbaa !29
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i
  %.043.i = phi i64 [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ], [ %.08, %bb.c ] ; 2 uses
  %i.s = shl i64 %.043.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 3 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %i.s, 1                  ; 3 uses
  %i.w = getelementptr inbounds [24 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = load double, ptr %i.u, align 8, !tbaa !63 ; 2 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !63 ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = fcmp ogt double %i.x, %i.y
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !64
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.i
  %i.ag = phi i64 [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %.lr.ph.i ] ; 4 uses
  %i.ah = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %.043.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !28
  %i.aj = icmp slt i64 %i.ag, %i.i
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !84

._crit_edge.i:                                    ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ] ; 2 uses
  %i.ak = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.08
  br i1 %i.al, label %.lr.ph.i.i.preheader, label %.loopexit

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.am = extractelement <2 x double> %i.q, i64 0 ; 2 uses
  %i.an = extractelement <2 x double> %i.q, i64 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.k
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.k ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ao = getelementptr inbounds [24 x i8], ptr %0, i64 %.0920.i.i ; 3 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !63 ; 2 uses
  %i.aq = fcmp olt double %i.ap, %i.am
  br i1 %i.aq, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ar = fcmp ogt double %i.ap, %i.am
  br i1 %i.ar, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !64
  %i.au = fcmp olt double %i.at, %i.an
  br i1 %i.au, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.av = getelementptr inbounds [24 x i8], ptr %0, i64 %.019.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !28
  %i.aw = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.aw, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !85

.loopexit:                                        ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.h ], [ %.019.i.i, %bb.j ], [ %.019.i.i, %bb.i ], [ %.0920.i.i, %bb.k ]
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store <2 x double> %i.q, ptr %i.ax, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store double %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx29.i, align 8, !tbaa !29
  %.not = icmp eq i64 %.08, 0
  %i.ay = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit18, label %bb.c, !llvm.loop !87

.loopexit18:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.i.i38 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %.sroa.0.i.i37 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %.sroa.0.i.i34 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %.sroa.0.i.i31 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %.sroa.0.i.i30 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %.sroa.0.i.i = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %i.a = load double, ptr %1, align 8, !tbaa !63  ; 6 uses
  %i.b = load double, ptr %2, align 8, !tbaa !63  ; 6 uses
  %i.c = fcmp olt double %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %i.a, %i.b
  br i1 %i.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !64
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %bb.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = load double, ptr %3, align 8, !tbaa !63  ; 4 uses
  %i.k = fcmp olt double %i.b, %i.j
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = fcmp ogt double %i.b, %i.j
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !64
  %i.q = fcmp olt double %i.n, %i.p
  br i1 %i.q, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27: ; preds = %bb.f, %bb.e
  %i.r = fcmp olt double %i.a, %i.j
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27
  %i.s = fcmp ogt double %i.a, %i.j
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !64
  %i.x = fcmp olt double %i.u, %i.w
  br i1 %i.x, label %bb.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29

bb.j:                                             ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i30)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i30, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i30, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i30)
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i31)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i31, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i31, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i31)
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.c, %bb.b
  %i.y = load double, ptr %3, align 8, !tbaa !63  ; 4 uses
  %i.z = fcmp olt double %i.a, %i.y
  br i1 %i.z, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %i.aa = fcmp ogt double %i.a, %i.y
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !64
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %bb.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33

bb.m:                                             ; preds = %bb.l, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i34)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i34, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i34, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i34)
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33: ; preds = %bb.l, %bb.k
  %i.ag = fcmp olt double %i.b, %i.y
  br i1 %i.ag, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33
  %i.ah = fcmp ogt double %i.b, %i.y
  br i1 %i.ah, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !64
  %i.am = fcmp olt double %i.aj, %i.al
  br i1 %i.am, label %bb.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36

bb.p:                                             ; preds = %bb.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i37)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i37, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i37, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i37)
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i38)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i38, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i38, i64 24, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i38)
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36, %bb.p, %bb.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { noreturn nounwind }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = distinct !{null, null}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !11, i64 0}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTSN4geos4geom10CoordinateE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"double", !5, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSN4geos4geom23CoordinateArraySequenceE", !11, i64 0}
!20 = !{!21, !10, i64 0}
!21 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom18CoordinateSequenceELb0EE", !10, i64 0}
!22 = !{!23, !14, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!24 = distinct !{null}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4geos11triangulate8quadedge6VertexESaIS3_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN4geos11triangulate8quadedge6VertexE", !11, i64 0}
!28 = !{i64 0, i64 8, !29, i64 8, i64 8, !29, i64 16, i64 8, !29}
!29 = !{!17, !17, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!26, !27, i64 8}
!33 = !{!26, !27, i64 16}
!34 = distinct !{!34, !31}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN4geos11triangulate28DelaunayTriangulationBuilder24extractUniqueCoordinatesERKNS_4geom8GeometryE: argument 0"}
!37 = distinct !{!37, !"_ZN4geos11triangulate28DelaunayTriangulationBuilder24extractUniqueCoordinatesERKNS_4geom8GeometryE"}
!38 = !{ptr @_ZN4geos11triangulate28DelaunayTriangulationBuilder24extractUniqueCoordinatesERKNS_4geom8GeometryE}
!39 = distinct !{ptr @_ZN4geos11triangulate28DelaunayTriangulationBuilder24extractUniqueCoordinatesERKNS_4geom8GeometryE, null, null}
!40 = distinct !{null, null, null, null, null}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTSN4geos11triangulate8quadedge19QuadEdgeSubdivisionE", !11, i64 0}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN4geos11triangulate28DelaunayTriangulationBuilder10toVerticesERKNS_4geom18CoordinateSequenceE: argument 0"}
!45 = distinct !{!45, !"_ZN4geos11triangulate28DelaunayTriangulationBuilder10toVerticesERKNS_4geom18CoordinateSequenceE"}
!46 = distinct !{ptr @_ZN4geos11triangulate28DelaunayTriangulationBuilder10toVerticesERKNS_4geom18CoordinateSequenceE, null}
!47 = !{!27, !27, i64 0}
!48 = !{!49, !17, i64 8}
!49 = !{!"_ZTSN4geos11triangulate28DelaunayTriangulationBuilderE", !50, i64 0, !17, i64 8, !55, i64 16}
!50 = !{!"_ZTSSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !51, i64 0}
!51 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_ELb1ELb1EE", !52, i64 0}
!52 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !53, i64 0}
!53 = !{!"_ZTSSt5tupleIJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !54, i64 0}
!54 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !21, i64 0}
!55 = !{!"_ZTSSt10unique_ptrIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EE", !56, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_ELb1ELb1EE", !57, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_implIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EE", !58, i64 0}
!58 = !{!"_ZTSSt5tupleIJPN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EEE", !59, i64 0}
!59 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EEE", !60, i64 0}
!60 = !{!"_ZTSSt10_Head_baseILm0EPN4geos11triangulate8quadedge19QuadEdgeSubdivisionELb0EE", !42, i64 0}
!61 = distinct !{null, null, null}
!62 = distinct !{!62, !31}
!63 = !{!16, !17, i64 0}
!64 = !{!16, !17, i64 8}
!65 = distinct !{!65, !31}
!66 = distinct !{!66, !31}
!67 = distinct !{!67, !31}
!68 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!69 = distinct !{!69, !31}
!70 = distinct !{!70, !31}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !31}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !31}
!77 = distinct !{!77, !31}
!78 = distinct !{!78, !31}
!79 = distinct !{!79, !31}
!80 = distinct !{!80, !31}
!81 = distinct !{!81, !31}
!82 = distinct !{!82, !31}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, !31}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !31}
end_hunk_0
