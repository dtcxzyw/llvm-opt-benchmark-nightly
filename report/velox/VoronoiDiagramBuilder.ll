Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/VoronoiDiagramBuilder?download=true
inline.NumInlined: 540
inline.NumDeleted: 315
begin_hunk_0_@_ZNK4geos4geom15GeometryFactory24createGeometryCollectionINS0_8GeometryEEESt10unique_ptrINS0_18GeometryCollectionESt14default_deleteIS5_EEOSt6vectorIS4_IT_S6_ISA_EESaISC_EE:bb.a
  %i.af = icmp ult i64 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit, !llvm.loop !116

_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i
  invoke void @_ZN4geos4geom18GeometryCollectionC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.ag = load ptr, ptr %3, align 8, !tbaa !49    ; 3 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !50  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.am, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ag, %bb.b ] ; 2 uses
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i7, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #13, !inline_history !2
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8, %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.an = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ag, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #15
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.d:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.ao, %bb.d ]
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph23, !llvm.loop !118

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

bb.c:                                             ; preds = %bb.g, %.lr.ph23
  %.sroa.012.0.i.i = phi ptr [ %i.e, %.lr.ph23 ], [ %i.ad, %bb.g ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1222, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.g ]
  %i.m = load double, ptr %0, align 8, !tbaa !58  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i ] ; 11 uses
  %i.n = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !58 ; 2 uses
  %i.o = fcmp olt double %i.n, %i.m
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp ogt double %i.n, %i.m
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.preheader, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !59
  %i.s = load double, ptr %i.f, align 8, !tbaa !59
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.d, !llvm.loop !119

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.backedge ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.v = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !58 ; 2 uses
  %i.w = fcmp olt double %i.m, %i.v
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.backedge, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i
  %i.x = fcmp ogt double %i.m, %i.v
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.thread19.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i: ; preds = %bb.f
  %i.y = load double, ptr %i.f, align 8, !tbaa !59
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !59
  %i.ab = fcmp olt double %i.y, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.thread19.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.backedge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i, !llvm.loop !120

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.thread19.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i, %bb.f
  %i.ac = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ac, label %bb.g, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.thread19.i.i
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false), !tbaa.struct !60
  store <3 x double> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.0.1.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.c, !llvm.loop !121

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.thread19.i.i
  %i.ae = add nsw i64 %.01321, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1222, i64 noundef %i.ae)
  %i.af = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ag = sub i64 %i.af, %i.a                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 384
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !118

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
  br i1 %i.d, label %.lr.ph.i, label %bb.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvar.i = phi i64 [ 0, %.lr.ph.i ], [ %indvar.next.i, %bb.f ] ; 2 uses
  %.sroa.07.023.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.07.023.i.add, %bb.f ] ; 2 uses
  %.pn22.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.07.023.i.ptr, %bb.f ] ; 3 uses
  %.sroa.07.023.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.023.i.idx ; 5 uses
  %2 = add nuw i64 %indvar.i, 1                   ; 2 uses
  %.neg.i = mul nsw i64 %2, -24
  %i.f = add nsw i64 %.neg.i, 24                  ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.sroa.07.023.i.ptr, i64 %i.f
  %scevgep24.i = getelementptr i8, ptr %.pn22.i, i64 %i.f
  %3 = mul nuw nsw i64 %2, 24
  %i.g = load double, ptr %.sroa.07.023.i.ptr, align 8, !tbaa !58 ; 5 uses
  %i.h = load double, ptr %0, align 8, !tbaa !58  ; 2 uses
  %i.i = fcmp olt double %i.g, %i.h
  br i1 %i.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fcmp ogt double %i.g, %i.h
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 32
  %.sroa.6.0.copyload.i.pre.i = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i, align 8, !tbaa !16 ; 3 uses
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread17.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.k = load double, ptr %i.e, align 8, !tbaa !59
  %i.l = fcmp olt double %.sroa.6.0.copyload.i.pre.i, %i.k
  br i1 %i.l, label %.loopexit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread17.i

.loopexit.i:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, %bb.b
  %.sroa.0.i.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.07.023.i.ptr, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %scevgep24.i, i64 %3, i1 false)
  store <3 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread17.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, %bb.c
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 40
  %.sroa.7.0.copyload.i.i = load double, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread17.i
  %.sroa.09.0.i.i = phi ptr [ %.sroa.07.023.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread17.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -24 ; 3 uses
  %i.m = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !58 ; 2 uses
  %i.n = fcmp olt double %i.g, %i.m
  br i1 %i.n, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = fcmp ogt double %i.g, %i.m
  br i1 %i.o, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -16
  %i.q = load double, ptr %i.p, align 8, !tbaa !59
  %i.r = fcmp olt double %.sroa.6.0.copyload.i.pre.i, %i.q
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false), !tbaa.struct !60
  br label %bb.d, !llvm.loop !122

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i, %bb.e
  store double %i.g, ptr %.sroa.09.0.i.i, align 8, !tbaa !16
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store double %.sroa.6.0.copyload.i.pre.i, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !tbaa !16
  %.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  store double %.sroa.7.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx7.i.i, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %.loopexit.i
  %.sroa.07.023.i.add = add nuw nsw i64 %.sroa.07.023.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.07.023.i.add, 384
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !123

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not4.i = icmp eq ptr %i.s, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12
  %.sroa.0.05.i = phi ptr [ %i.ac, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12 ], [ %i.s, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit ] ; 4 uses
  %i.t = load <2 x double>, ptr %.sroa.0.05.i, align 8, !tbaa !16 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16
  %.sroa.7.0.copyload.i.i8 = load double, ptr %.sroa.7.0..sroa_idx.i.i7, align 8, !tbaa !16
  %i.u = extractelement <2 x double> %i.t, i64 0  ; 2 uses
  %i.v = extractelement <2 x double> %i.t, i64 1
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i16, %.lr.ph.i6
  %.sroa.09.0.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i10, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i16 ] ; 5 uses
  %.sroa.0.0.i.i10 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -24 ; 3 uses
  %i.w = load double, ptr %.sroa.0.0.i.i10, align 8, !tbaa !58 ; 2 uses
  %i.x = fcmp olt double %i.u, %i.w
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i16, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = fcmp ogt double %i.u, %i.w
  br i1 %i.y, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i11

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i11: ; preds = %bb.h
  %i.z = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !59
  %i.ab = fcmp olt double %i.v, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i16: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i11, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i10, i64 24, i1 false), !tbaa.struct !60
  br label %bb.g, !llvm.loop !122

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i11, %bb.h
  store <2 x double> %i.t, ptr %.sroa.09.0.i.i9, align 8, !tbaa !16
  %.sroa.7.0..sroa_idx7.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i9, i64 16
  store double %.sroa.7.0.copyload.i.i8, ptr %.sroa.7.0..sroa_idx7.i.i14, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 24 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ac, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6, !llvm.loop !124

bb.i:                                             ; preds = %bb.a
  %i.ad = icmp eq ptr %0, %1
  br i1 %i.ad, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.i
  %.sroa.07.020.i19 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not21.i20 = icmp eq ptr %.sroa.07.020.i19, %1
  br i1 %.not21.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i21
  %indvar.i22 = phi i64 [ 0, %.lr.ph.i21 ], [ %indvar.next.i43, %bb.n ] ; 3 uses
  %.sroa.07.023.i23 = phi ptr [ %.sroa.07.020.i19, %.lr.ph.i21 ], [ %.sroa.07.0.i41, %bb.n ] ; 7 uses
  %.pn22.i24 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.07.023.i23, %bb.n ] ; 3 uses
  %i.af = mul nuw i64 %indvar.i22, 24
  %i.ag = add i64 %i.af, 24
  %i.ah = udiv i64 %i.ag, 24                      ; 2 uses
  %4 = icmp samesign ugt i64 %indvar.i22, 768614336404564649 ; 2 uses
  %5 = select i1 %4, i64 0, i64 24
  %.neg.i26 = mul i64 %i.ah, -24
  %6 = add i64 %.neg.i26, %5                      ; 2 uses
  %scevgep.i27 = getelementptr i8, ptr %.sroa.07.023.i23, i64 %6
  %scevgep24.i28 = getelementptr i8, ptr %.pn22.i24, i64 %6
  %7 = zext i1 %4 to i64
  %i.ai = add nuw nsw i64 %i.ah, %7
  %i.aj = mul nuw i64 %i.ai, 24
  %i.ak = load double, ptr %.sroa.07.023.i23, align 8, !tbaa !58 ; 5 uses
  %i.al = load double, ptr %0, align 8, !tbaa !58 ; 2 uses
  %i.am = fcmp olt double %i.ak, %i.al
  br i1 %i.am, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i45, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = fcmp ogt double %i.ak, %i.al
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i29 = getelementptr inbounds nuw i8, ptr %.pn22.i24, i64 32
  %.sroa.6.0.copyload.i.pre.i30 = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i29, align 8, !tbaa !16 ; 3 uses
  br i1 %i.an, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread17.i32, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i31

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i31: ; preds = %bb.k
  %i.ao = load double, ptr %i.ae, align 8, !tbaa !59
  %i.ap = fcmp olt double %.sroa.6.0.copyload.i.pre.i30, %i.ao
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i45, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread17.i32

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i45: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i31, %bb.j
  %.sroa.0.i17.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.07.023.i23, align 8
  %i.aq = ptrtoint ptr %.sroa.07.023.i23 to i64
  %i.ar = sub i64 %i.aq, %i.b
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.preheader.i.i.i.i.i.i47, label %.loopexit.i46

.lr.ph.preheader.i.i.i.i.i.i47:                   ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i45
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i27, ptr align 8 %scevgep24.i28, i64 %i.aj, i1 false)
  br label %.loopexit.i46

.loopexit.i46:                                    ; preds = %.lr.ph.preheader.i.i.i.i.i.i47, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i45
  store <3 x double> %.sroa.0.i17.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.n

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread17.i32: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i31, %bb.k
  %.sroa.7.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %.pn22.i24, i64 40
  %.sroa.7.0.copyload.i.i34 = load double, ptr %.sroa.7.0..sroa_idx.i.i33, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i44, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread17.i32
  %.sroa.09.0.i.i35 = phi ptr [ %.sroa.07.023.i23, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread17.i32 ], [ %.sroa.0.0.i.i36, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i44 ] ; 6 uses
  %.sroa.0.0.i.i36 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i35, i64 -24 ; 3 uses
  %i.at = load double, ptr %.sroa.0.0.i.i36, align 8, !tbaa !58 ; 2 uses
  %i.au = fcmp olt double %i.ak, %i.at
  br i1 %i.au, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = fcmp ogt double %i.ak, %i.at
  br i1 %i.av, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i38, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i37

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i37: ; preds = %bb.m
  %i.aw = getelementptr inbounds i8, ptr %.sroa.09.0.i.i35, i64 -16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !59
  %i.ay = fcmp olt double %.sroa.6.0.copyload.i.pre.i30, %i.ax
  br i1 %i.ay, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i44, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i38

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i44: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i37, %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i35, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i36, i64 24, i1 false), !tbaa.struct !60
  br label %bb.l, !llvm.loop !122

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i38: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4geos11triangulate8quadedge6VertexENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i37, %bb.m
  store double %i.ak, ptr %.sroa.09.0.i.i35, align 8, !tbaa !16
  %.sroa.6.0..sroa_idx5.i.i39 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i35, i64 8
  store double %.sroa.6.0.copyload.i.pre.i30, ptr %.sroa.6.0..sroa_idx5.i.i39, align 8, !tbaa !16
  %.sroa.7.0..sroa_idx7.i.i40 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i35, i64 16
  store double %.sroa.7.0.copyload.i.i34, ptr %.sroa.7.0..sroa_idx7.i.i40, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i38, %.loopexit.i46
  %.sroa.07.0.i41 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i23, i64 24 ; 2 uses
  %.not.i42 = icmp eq ptr %.sroa.07.0.i41, %1
  %indvar.next.i43 = add nuw nsw i64 %indvar.i22, 1
  br i1 %.not.i42, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.j, !llvm.loop !123

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12, %.preheader.i18, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit
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
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !16 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !60
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.h, 48
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread44.i.i
  %.047.i.i = phi i64 [ %i.aa, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread44.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.047.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 3 uses
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.o, align 8, !tbaa !58 ; 2 uses
  %i.s = load double, ptr %i.q, align 8, !tbaa !58 ; 2 uses
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = fcmp ogt double %i.r, %i.s
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread44.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !59
  %i.z = fcmp olt double %i.w, %i.y
  %cond.fr.i.i = freeze i1 %i.z
  br i1 %cond.fr.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread44.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %.lr.ph.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread44.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread44.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %bb.b
  %i.aa = phi i64 [ %i.p, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i ], [ %i.n, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i ], [ %i.n, %bb.b ] ; 4 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.047.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !60
  %i.ad = icmp slt i64 %i.aa, %i.k
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread44.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread44.i.i ] ; 5 uses
  %i.ae = and i64 %i.i, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ag = add nsw i64 %i.i, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa.i.i, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = shl nsw i64 %.0.lcssa.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ak
  %i.am = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.ak, %bb.d ], [ %.0.lcssa.i.i, %bb.c ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i, 0
  br i1 %i.an, label %.lr.ph.i.i.i.preheader, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.ao = extractelement <2 x double> %i.f, i64 0 ; 2 uses
  %i.ap = extractelement <2 x double> %i.f, i64 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i
  %.021.i.i.i = phi i64 [ %.0922.i.i89.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i ], [ %.1.i.i, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.0922.in.i.i.i = add nsw i64 %.021.i.i.i, -1
  %.0922.i.i89.i = lshr i64 %.0922.in.i.i.i, 1    ; 3 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0922.i.i89.i ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %i.as = fcmp olt double %i.ar, %i.ao
  br i1 %i.as, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.at = fcmp ogt double %i.ar, %i.ao
  br i1 %i.at, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !59
  %i.aw = fcmp olt double %i.av, %i.ap
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.021.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !60
  %.not.i = icmp eq i64 %.0922.i.i89.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit: ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.021.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i ], [ %.021.i.i.i, %bb.f ]
  %i.ay = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store <2 x double> %i.f, ptr %i.ay, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store double %.sroa.6.0.copyload.i, ptr %.sroa.4.0..sroa_idx29.i.i, align 8, !tbaa !16
  %i.az = icmp sgt i64 %i.h, 24
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !125

end_hunk_0
