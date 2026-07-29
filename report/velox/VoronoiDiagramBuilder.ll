inline.NumInlined: 540
inline.NumDeleted: 315
begin_hunk_0_@_ZNK4geos4geom15GeometryFactory24createGeometryCollectionINS0_8GeometryEEESt10unique_ptrINS0_18GeometryCollectionESt14default_deleteIS5_EEOSt6vectorIS4_IT_S6_ISA_EESaISC_EE:bb.a
  br i1 %i.ac, label %bb.b, label %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit, !llvm.loop !111

_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i, %.thread.i
  invoke void @_ZN4geos4geom18GeometryCollectionC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.ad = load ptr, ptr %3, align 8, !tbaa !48    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ad, %bb.c ] ; 2 uses
  %i.ag = load ptr, ptr %.05.i.i.i, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i7, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #13, !inline_history !54
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.af
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !55

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ad, %bb.c ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.al) #15
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.e:                                             ; preds = %.lr.ph.i, %.noexc.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.am, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZdlPv(ptr noundef nonnull %i.a) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN4geos4geom8Envelope8expandByEdd(ptr noundef nonnull align 8 dereferenceable(32), double noundef, double noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4geos4geom8Envelope6coversERKS1_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph23, !llvm.loop !112

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
  %i.m = load double, ptr %0, align 8, !tbaa !113 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.u, %bb.g ] ; 11 uses
  %i.n = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !113 ; 2 uses
  %i.o = fcmp olt double %i.n, %i.m
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp ogt double %i.n, %i.m
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader, label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !115
  %i.s = load double, ptr %i.f, align 8, !tbaa !115
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.d, !llvm.loop !116

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.v = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !113 ; 2 uses
  %i.w = fcmp olt double %i.m, %i.v
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  %i.x = fcmp ogt double %i.m, %i.v
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load double, ptr %i.f, align 8, !tbaa !115
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !115
  %i.ab = fcmp olt double %i.y, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge: ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, !llvm.loop !117

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i: ; preds = %bb.i, %bb.h
  %i.ac = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ac, label %bb.j, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false), !tbaa.struct !118
  store <3 x double> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.0.1.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.c, !llvm.loop !119

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i
  %i.ae = add nsw i64 %.01321, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1222, i64 noundef %i.ae)
  %i.af = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ag = sub i64 %i.af, %i.a                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 384
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !112

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.n

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %indvar.i = phi i64 [ 0, %.lr.ph.i ], [ %indvar.next.i, %bb.i ] ; 2 uses
  %.sroa.07.021.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.07.021.i.add, %bb.i ] ; 2 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.07.021.i.ptr, %bb.i ] ; 3 uses
  %.sroa.07.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.021.i.idx ; 5 uses
  %2 = add nuw i64 %indvar.i, 1                   ; 2 uses
  %.neg.i = mul nsw i64 %2, -24
  %3 = add nsw i64 %.neg.i, 24                    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.sroa.07.021.i.ptr, i64 %3
  %.sroa.07.021.i.ptr.a = getelementptr i8, ptr %.pn20.i, i64 %3
  %4 = mul nuw nsw i64 %2, 24
  %i.f = load double, ptr %.sroa.07.021.i.ptr, align 8, !tbaa !113 ; 5 uses
  %i.g = load double, ptr %0, align 8, !tbaa !113 ; 2 uses
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ogt double %i.f, %i.g
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  %.sroa.6.0.copyload.i.pre.i = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i, align 8, !tbaa !8 ; 3 uses
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load double, ptr %i.e, align 8, !tbaa !115
  %i.k = fcmp olt double %.sroa.6.0.copyload.i.pre.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i

.loopexit.i:                                      ; preds = %bb.d, %bb.b
  %.sroa.0.i.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.07.021.i.ptr, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.07.021.i.ptr.a, i64 %4, i1 false)
  store <3 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 40
  %.sroa.7.0.copyload.i.i = load double, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i
  %.sroa.09.0.i.i = phi ptr [ %.sroa.07.021.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -24 ; 3 uses
  %i.l = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !113 ; 2 uses
  %i.m = fcmp olt double %i.f, %i.l
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = fcmp ogt double %i.f, %i.l
  br i1 %i.n, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -16
  %i.p = load double, ptr %i.o, align 8, !tbaa !115
  %i.q = fcmp olt double %.sroa.6.0.copyload.i.pre.i, %i.p
  br i1 %i.q, label %bb.h, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

bb.h:                                             ; preds = %bb.g, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false), !tbaa.struct !118
  br label %bb.e, !llvm.loop !120

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %bb.g, %bb.f
  store double %i.f, ptr %.sroa.09.0.i.i, align 8, !tbaa !8
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store double %.sroa.6.0.copyload.i.pre.i, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  store double %.sroa.7.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx7.i.i, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %.loopexit.i
  %.sroa.07.021.i.add = add nuw nsw i64 %.sroa.07.021.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.07.021.i.add, 384
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !121

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not4.i = icmp eq ptr %i.r, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11
  %.sroa.0.05.i = phi ptr [ %i.ab, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit ] ; 4 uses
  %i.s = load <2 x double>, ptr %.sroa.0.05.i, align 8, !tbaa !8 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16
  %.sroa.7.0.copyload.i.i8 = load double, ptr %.sroa.7.0..sroa_idx.i.i7, align 8, !tbaa !8
  %i.t = extractelement <2 x double> %i.s, i64 0  ; 2 uses
  %i.u = extractelement <2 x double> %i.s, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i6
  %.sroa.09.0.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i10, %bb.m ] ; 5 uses
  %.sroa.0.0.i.i10 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -24 ; 3 uses
  %i.v = load double, ptr %.sroa.0.0.i.i10, align 8, !tbaa !113 ; 2 uses
  %i.w = fcmp olt double %i.t, %i.v
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = fcmp ogt double %i.t, %i.v
  br i1 %i.x, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -16
  %i.z = load double, ptr %i.y, align 8, !tbaa !115
  %i.aa = fcmp olt double %i.u, %i.z
  br i1 %i.aa, label %bb.m, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11

bb.m:                                             ; preds = %bb.l, %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i10, i64 24, i1 false), !tbaa.struct !118
  br label %bb.j, !llvm.loop !120

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11: ; preds = %bb.l, %bb.k
  store <2 x double> %i.s, ptr %.sroa.09.0.i.i9, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx7.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i9, i64 16
  store double %.sroa.7.0.copyload.i.i8, ptr %.sroa.7.0..sroa_idx7.i.i13, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 24 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ab, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6, !llvm.loop !122

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
  %indvar.i20 = phi i64 [ 0, %.lr.ph.i19 ], [ %indvar.next.i39, %bb.w ] ; 3 uses
  %.sroa.07.021.i20 = phi ptr [ %.sroa.07.018.i17, %.lr.ph.i19 ], [ %.sroa.07.0.i32, %bb.w ] ; 7 uses
  %.pn20.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.07.021.i20, %bb.w ] ; 3 uses
  %5 = mul nuw i64 %indvar.i20, 24
  %6 = add i64 %5, 24
  %7 = udiv i64 %6, 24                            ; 2 uses
  %8 = icmp samesign ugt i64 %indvar.i20, 768614336404564649 ; 2 uses
  %9 = select i1 %8, i64 0, i64 24
  %.neg.i24 = mul i64 %7, -24
  %10 = add i64 %.neg.i24, %9                     ; 2 uses
  %scevgep.i25 = getelementptr i8, ptr %.sroa.07.021.i20, i64 %10
  %scevgep22.i26 = getelementptr i8, ptr %.pn20.i21, i64 %10
  %11 = zext i1 %8 to i64
  %12 = add nuw nsw i64 %7, %11
  %13 = mul nuw i64 %12, 24
  %i.ae = load double, ptr %.sroa.07.021.i20, align 8, !tbaa !113 ; 5 uses
  %i.af = load double, ptr %0, align 8, !tbaa !113 ; 2 uses
  %i.ag = fcmp olt double %i.ae, %i.af
  br i1 %i.ag, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = fcmp ogt double %i.ae, %i.af
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i22 = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 32
  %.sroa.6.0.copyload.i.pre.i23 = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i22, align 8, !tbaa !8 ; 3 uses
  br i1 %i.ah, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = load double, ptr %i.ad, align 8, !tbaa !115
  %i.aj = fcmp olt double %.sroa.6.0.copyload.i.pre.i23, %i.ai
  br i1 %i.aj, label %bb.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.0.i15.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.07.021.i20, align 8
  %i.ak = ptrtoint ptr %.sroa.07.021.i20 to i64
  %i.al = sub i64 %i.ak, %i.b
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i36, label %.loopexit.i34

.lr.ph.i.i.i.i.i.i36:                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i25, ptr align 8 %scevgep22.i26, i64 %13, i1 false)
  br label %.loopexit.i34

.loopexit.i34:                                    ; preds = %.lr.ph.i.i.i.i.i.i36, %bb.r
  store <3 x double> %.sroa.0.i15.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.w

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24: ; preds = %bb.q, %bb.p
  %.sroa.7.0..sroa_idx.i.i25 = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 40
  %.sroa.7.0.copyload.i.i26 = load double, ptr %.sroa.7.0..sroa_idx.i.i25, align 8, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24
  %.sroa.09.0.i.i27 = phi ptr [ %.sroa.07.021.i20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i24 ], [ %.sroa.0.0.i.i28, %bb.v ] ; 6 uses
  %.sroa.0.0.i.i28 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i27, i64 -24 ; 3 uses
  %i.an = load double, ptr %.sroa.0.0.i.i28, align 8, !tbaa !113 ; 2 uses
  %i.ao = fcmp olt double %i.ae, %i.an
  br i1 %i.ao, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = fcmp ogt double %i.ae, %i.an
  br i1 %i.ap, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds i8, ptr %.sroa.09.0.i.i27, i64 -16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !115
  %i.as = fcmp olt double %.sroa.6.0.copyload.i.pre.i23, %i.ar
  br i1 %i.as, label %bb.v, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29

bb.v:                                             ; preds = %bb.u, %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i27, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i28, i64 24, i1 false), !tbaa.struct !118
  br label %bb.s, !llvm.loop !120

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29: ; preds = %bb.u, %bb.t
  store double %i.ae, ptr %.sroa.09.0.i.i27, align 8, !tbaa !8
  %.sroa.6.0..sroa_idx5.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i27, i64 8
  store double %.sroa.6.0.copyload.i.pre.i23, ptr %.sroa.6.0..sroa_idx5.i.i30, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx7.i.i31 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i27, i64 16
  store double %.sroa.7.0.copyload.i.i26, ptr %.sroa.7.0..sroa_idx7.i.i31, align 8, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i29, %.loopexit.i34
  %.sroa.07.0.i32 = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i20, i64 24 ; 2 uses
  %.not.i33 = icmp eq ptr %.sroa.07.0.i32, %1
  %indvar.next.i39 = add nuw nsw i64 %indvar.i20, 1
  br i1 %.not.i33, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.o, !llvm.loop !121

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.w, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11, %.preheader.i16, %bb.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !118
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
  %i.r = load double, ptr %i.o, align 8, !tbaa !113 ; 2 uses
  %i.s = load double, ptr %i.q, align 8, !tbaa !113 ; 2 uses
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = fcmp ogt double %i.r, %i.s
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !115
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !115
  %i.z = fcmp olt double %i.w, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.n, %bb.d ], [ %i.n, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %.lr.ph.i.i ] ; 4 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.043.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !118
  %i.ad = icmp slt i64 %i.aa, %i.k
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !123

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !118
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
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !113 ; 2 uses
  %i.as = fcmp olt double %i.ar, %i.ao
  br i1 %i.as, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.at = fcmp ogt double %i.ar, %i.ao
  br i1 %i.at, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !115
  %i.aw = fcmp olt double %i.av, %i.ap
  br i1 %i.aw, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.019.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !118
  %.not.i = icmp eq i64 %.0920.i.i89.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !124

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.g ], [ 0, %bb.j ], [ %.019.i.i.i, %bb.h ], [ %.019.i.i.i, %bb.i ]
  %i.ay = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store <2 x double> %i.f, ptr %i.ay, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store double %.sroa.6.0.copyload.i, ptr %.sroa.4.0..sroa_idx29.i.i, align 8, !tbaa !8
  %i.az = icmp sgt i64 %i.h, 24
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !125

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
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
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !8 ; 3 uses
  %.sroa.6.0..sroa.010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa.010.0..sroa_idx, align 8, !tbaa !8
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i
  %.043.i = phi i64 [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ], [ %.08, %bb.c ] ; 2 uses
  %i.s = shl i64 %.043.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 3 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %i.s, 1                  ; 3 uses
  %i.w = getelementptr inbounds [24 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = load double, ptr %i.u, align 8, !tbaa !113 ; 2 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !113 ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = fcmp ogt double %i.x, %i.y
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !115
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !115
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.i
  %i.ag = phi i64 [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %.lr.ph.i ] ; 4 uses
  %i.ah = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %.043.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !118
  %i.aj = icmp slt i64 %i.ag, %i.i
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !123

._crit_edge.i:                                    ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ] ; 2 uses
  %i.ak = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !118
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
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !113 ; 2 uses
  %i.aq = fcmp olt double %i.ap, %i.am
  br i1 %i.aq, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ar = fcmp ogt double %i.ap, %i.am
  br i1 %i.ar, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !115
  %i.au = fcmp olt double %i.at, %i.an
  br i1 %i.au, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.av = getelementptr inbounds [24 x i8], ptr %0, i64 %.019.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !118
  %i.aw = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.aw, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !124

.loopexit:                                        ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.h ], [ %.019.i.i, %bb.j ], [ %.019.i.i, %bb.i ], [ %.0920.i.i, %bb.k ]
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store <2 x double> %i.q, ptr %i.ax, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store double %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx29.i, align 8, !tbaa !8
  %.not = icmp eq i64 %.08, 0
  %i.ay = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit18, label %bb.c, !llvm.loop !126

.loopexit18:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !113 ; 6 uses
  %i.b = load double, ptr %2, align 8, !tbaa !113 ; 6 uses
  %i.c = fcmp olt double %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %i.a, %i.b
  br i1 %i.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !115
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %bb.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = load double, ptr %3, align 8, !tbaa !113 ; 4 uses
  %i.k = fcmp olt double %i.b, %i.j
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = fcmp ogt double %i.b, %i.j
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !115
  %i.q = fcmp olt double %i.n, %i.p
  br i1 %i.q, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sroa.0.i.i.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !118
  store <3 x double> %.sroa.0.i.i.sroa.0.0.copyload, ptr %2, align 8
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27: ; preds = %bb.f, %bb.e
  %i.r = fcmp olt double %i.a, %i.j
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27
  %i.s = fcmp ogt double %i.a, %i.j
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !115
  %i.x = fcmp olt double %i.u, %i.w
  br i1 %i.x, label %bb.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29

bb.j:                                             ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27
  %.sroa.0.i.i30.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !118
  store <3 x double> %.sroa.0.i.i30.sroa.0.0.copyload, ptr %3, align 8
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29: ; preds = %bb.i, %bb.h
  %.sroa.0.i.i31.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !118
  store <3 x double> %.sroa.0.i.i31.sroa.0.0.copyload, ptr %1, align 8
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.c, %bb.b
  %i.y = load double, ptr %3, align 8, !tbaa !113 ; 4 uses
  %i.z = fcmp olt double %i.a, %i.y
  br i1 %i.z, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %i.aa = fcmp ogt double %i.a, %i.y
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !115
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !115
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %bb.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33

bb.m:                                             ; preds = %bb.l, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %.sroa.0.i.i34.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !118
  store <3 x double> %.sroa.0.i.i34.sroa.0.0.copyload, ptr %1, align 8
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33: ; preds = %bb.l, %bb.k
  %i.ag = fcmp olt double %i.b, %i.y
  br i1 %i.ag, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33
  %i.ah = fcmp ogt double %i.b, %i.y
  br i1 %i.ah, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !115
  %i.am = fcmp olt double %i.aj, %i.al
  br i1 %i.am, label %bb.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36

bb.p:                                             ; preds = %bb.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit33
  %.sroa.0.i.i37.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !118
  store <3 x double> %.sroa.0.i.i37.sroa.0.0.copyload, ptr %3, align 8
  br label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36: ; preds = %bb.o, %bb.n
  %.sroa.0.i.i38.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !118
  store <3 x double> %.sroa.0.i.i38.sroa.0.0.copyload, ptr %2, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit36, %bb.p, %bb.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

declare void @_ZN4geos4geom18GeometryCollectionC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(45)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = distinct !{null, null, null, null, null}
!16 = distinct !{null, null}
!17 = !{!18, !32, i64 24}
!18 = !{!"_ZTSN4geos11triangulate21VoronoiDiagramBuilderE", !19, i64 0, !9, i64 8, !25, i64 16, !32, i64 24, !33, i64 32}
!19 = !{!"_ZTSSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_ELb1ELb1EE", !21, i64 0}
!21 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !22, i64 0}
!22 = !{!"_ZTSSt5tupleIJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !23, i64 0}
!23 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !24, i64 0}
!24 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom18CoordinateSequenceELb0EE", !11, i64 0}
!25 = !{!"_ZTSSt10unique_ptrIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EE", !26, i64 0}
!26 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_ELb1ELb1EE", !27, i64 0}
!27 = !{!"_ZTSSt15__uniq_ptr_implIN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EE", !28, i64 0}
!28 = !{!"_ZTSSt5tupleIJPN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EEE", !29, i64 0}
!29 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos11triangulate8quadedge19QuadEdgeSubdivisionESt14default_deleteIS3_EEE", !30, i64 0}
!30 = !{!"_ZTSSt10_Head_baseILm0EPN4geos11triangulate8quadedge19QuadEdgeSubdivisionELb0EE", !31, i64 0}
!31 = !{!"p1 _ZTSN4geos11triangulate8quadedge19QuadEdgeSubdivisionE", !12, i64 0}
!32 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !12, i64 0}
!33 = !{!"_ZTSN4geos4geom8EnvelopeE", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!34 = !{!18, !9, i64 8}
!35 = !{!31, !31, i64 0}
!36 = !{i64 0, i64 8, !8, i64 8, i64 8, !8, i64 16, i64 8, !8, i64 24, i64 8, !8}
!37 = !{!33, !9, i64 8}
!38 = !{!33, !9, i64 0}
!39 = !{!33, !9, i64 24}
!40 = !{!33, !9, i64 16}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTSN4geos11triangulate8quadedge6VertexE", !12, i64 0}
!43 = distinct !{null, null, null}
!44 = !{!45, !42, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN4geos11triangulate8quadedge6VertexESaIS3_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTSN4geos4geom18GeometryCollectionE", !12, i64 0}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE", !12, i64 0}
!51 = !{!49, !50, i64 8}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTSN4geos4geom8GeometryE", !12, i64 0}
!54 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!50, !50, i64 0}
!58 = !{!59, !47, i64 0}
!59 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom18GeometryCollectionELb0EE", !47, i64 0}
!60 = !{!61, !68, i64 24}
!61 = !{!"_ZTSN4geos4geom8GeometryE", !62, i64 8, !5, i64 16, !68, i64 24, !12, i64 32}
!62 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !63, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !64, i64 0}
!64 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !65, i64 0}
!65 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !66, i64 0}
!66 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !67, i64 0}
!67 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !32, i64 0}
!68 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !12, i64 0}
!69 = !{!49, !50, i64 16}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!72 = distinct !{!72, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!75 = !{!74, !76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!71, !79}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !56, !81, !82}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!"branch_weights", i32 4, i32 12}
!84 = distinct !{!84, !56, !81, !82}
!85 = distinct !{!85, !56, !81}
!86 = !{!61, !12, i64 32}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!89 = distinct !{!89, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!92 = !{!91, !93}
!93 = distinct !{!93, !94}
!94 = distinct !{!94, !"LVerDomain"}
!95 = !{!88, !96}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !56, !81, !82}
!98 = distinct !{!98, !56, !81, !82}
!99 = distinct !{!99, !56, !81}
!100 = distinct !{null, null}
!101 = distinct !{null, null, null, null, null}
!102 = !{!103, !103, i64 0}
!103 = !{!"p1 _ZTSN4geos4geom15MultiLineStringE", !12, i64 0}
!104 = !{!105, !53, i64 0}
!105 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !53, i64 0}
!106 = distinct !{null, null}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE: argument 0"}
!109 = distinct !{!109, !"_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE"}
!110 = distinct !{null, null, null, null, null, null}
!111 = distinct !{!111, !56}
!112 = distinct !{!112, !56}
!113 = !{!114, !9, i64 0}
!114 = !{!"_ZTSN4geos4geom10CoordinateE", !9, i64 0, !9, i64 8, !9, i64 16}
!115 = !{!114, !9, i64 8}
!116 = distinct !{!116, !56}
!117 = distinct !{!117, !56}
!118 = !{i64 0, i64 8, !8, i64 8, i64 8, !8, i64 16, i64 8, !8}
!119 = distinct !{!119, !56}
!120 = distinct !{!120, !56}
!121 = distinct !{!121, !56}
!122 = distinct !{!122, !56}
!123 = distinct !{!123, !56}
!124 = distinct !{!124, !56}
!125 = distinct !{!125, !56}
!126 = distinct !{!126, !56}
end_hunk_0
