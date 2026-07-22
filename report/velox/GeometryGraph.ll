inline.NumInlined: 915
inline.NumDeleted: 509
begin_hunk_0_@_ZSt20__throw_length_errorPKc

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

declare noundef zeroext i1 @_ZNK4geos4geom8Envelope6coversERKS1_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9geomgraph5index18SegmentIntersectorD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9geomgraph5index18SegmentIntersectorD0Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"class.geos::geomgraph::EdgeIntersection", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph23

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.i = icmp eq i64 %i.ah, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph23, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge12.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1222 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01321 = phi i64 [ %i.ah, %bb.b ], [ %2, %.lr.ph ]
  %i.j = phi i64 [ %i.aj, %bb.b ], [ %i.c, %.lr.ph ]
  %i.k = udiv i64 %i.j, 80
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1222, i64 -40
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_(ptr %0, ptr nonnull %i.e, ptr %i.l, ptr nonnull %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph23
  %.sroa.012.0.i.i = phi ptr [ %i.e, %.lr.ph23 ], [ %i.ag, %bb.j ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1222, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.j ]
  %i.n = load i64, ptr %i.f, align 8, !tbaa !158  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.w, %bb.g ] ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !158  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.p, %i.n
  br i1 %i.r, label %bb.f, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !207
  %i.u = load double, ptr %i.g, align 8, !tbaa !207
  %i.v = fcmp olt double %i.t, %i.u
  br i1 %i.v, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i.preheader

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40
  br label %bb.d, !llvm.loop !208

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i.backedge ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !158  ; 2 uses
  %i.z = icmp ult i64 %i.n, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i.backedge, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i
  %i.aa = icmp eq i64 %i.n, %i.y
  br i1 %i.aa, label %bb.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit9.i.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load double, ptr %i.g, align 8, !tbaa !207
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !207
  %i.ae = fcmp olt double %i.ab, %i.ad
  br i1 %i.ae, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit9.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i.backedge: ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, !llvm.loop !209

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit9.i.i: ; preds = %bb.i, %bb.h
  %i.af = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.af, label %bb.j, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.012.1.i.i, i64 40, i1 false), !tbaa.struct !161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1.i.i, i64 40, i1 false), !tbaa.struct !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !161
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40
  br label %bb.c, !llvm.loop !210

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit9.i.i
  %i.ah = add nsw i64 %.01321, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %.sroa.012.1.i.i, ptr %storemerge1222, i64 noundef %i.ah)
  %i.ai = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.aj = sub i64 %i.ai, %i.a                     ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 640
  br i1 %i.ak, label %bb.b, label %.loopexit, !llvm.loop !206

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.geos::geomgraph::EdgeIntersection", align 8 ; 4 uses
  %3 = alloca %"class.geos::geomgraph::EdgeIntersection", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph.i, label %bb.q

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %scevgep = getelementptr i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 40, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.l ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.l ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !158  ; 5 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !158  ; 2 uses
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.h, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 64
  %i.m = load double, ptr %i.l, align 8, !tbaa !106 ; 3 uses
  br i1 %i.k, label %bb.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = load double, ptr %i.f, align 8, !tbaa !207
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %bb.e, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.019.i.ptr, i64 40, i1 false), !tbaa.struct !161
  %i.p = icmp samesign ugt i64 %.sroa.0.019.i.idx, 40
  br i1 %i.p, label %bb.f, label %bb.g, !prof !211

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !161
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !161
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.l

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.03.i.i.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.0.019.i.ptr, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i
  %.sroa.08.0.i.i = phi ptr [ %.sroa.0.019.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i ], [ %.sroa.0.0.i.i, %bb.k ] ; 7 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.08.0.i.i, i64 -40 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.08.0.i.i, i64 -8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !158  ; 2 uses
  %i.t = icmp ult i64 %i.h, %i.s
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp eq i64 %i.h, %i.s
  br i1 %i.u, label %bb.j, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds i8, ptr %.sroa.08.0.i.i, i64 -16
  %i.w = load double, ptr %i.v, align 8, !tbaa !207
  %i.x = fcmp olt double %i.m, %i.w
  br i1 %i.x, label %bb.k, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

bb.k:                                             ; preds = %bb.j, %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.0.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.i, i64 40, i1 false), !tbaa.struct !161
  br label %bb.h, !llvm.loop !212

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %bb.j, %bb.i
  store <3 x double> %.sroa.03.i.i.sroa.0.0.copyload, ptr %.sroa.08.0.i.i, align 8
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 24
  store double %i.m, ptr %.sroa.4.0..sroa_idx4.i.i, align 8, !tbaa !106
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 32
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx6.i.i, align 8, !tbaa !118
  br label %bb.l

bb.l:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 40 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 640
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !213

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %.not4.i = icmp eq ptr %i.y, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i10
  %.sroa.0.05.i = phi ptr [ %i.ag, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i10 ], [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit ] ; 5 uses
  %.sroa.03.i.i6.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.0.05.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 24
  %.sroa.4.0.copyload.i.i = load double, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !106 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 32
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !118 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i7
  %.sroa.08.0.i.i8 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i7 ], [ %.sroa.0.0.i.i9, %bb.p ] ; 7 uses
  %.sroa.0.0.i.i9 = getelementptr inbounds i8, ptr %.sroa.08.0.i.i8, i64 -40 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.08.0.i.i8, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !158 ; 2 uses
  %i.ab = icmp ult i64 %.sroa.5.0.copyload.i.i, %i.aa
  br i1 %i.ab, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp eq i64 %.sroa.5.0.copyload.i.i, %i.aa
  br i1 %i.ac, label %bb.o, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i10

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds i8, ptr %.sroa.08.0.i.i8, i64 -16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !207
  %i.af = fcmp olt double %.sroa.4.0.copyload.i.i, %i.ae
  br i1 %i.af, label %bb.p, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i10

bb.p:                                             ; preds = %bb.o, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.0.i.i8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.i9, i64 40, i1 false), !tbaa.struct !161
  br label %bb.m, !llvm.loop !212

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i10: ; preds = %bb.o, %bb.n
  store <3 x double> %.sroa.03.i.i6.sroa.0.0.copyload, ptr %.sroa.08.0.i.i8, align 8
  %.sroa.4.0..sroa_idx4.i.i11 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i8, i64 24
  store double %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i11, align 8, !tbaa !106
  %.sroa.5.0..sroa_idx6.i.i12 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i8, i64 32
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx6.i.i12, align 8, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 40 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ag, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i7, !llvm.loop !214

bb.q:                                             ; preds = %bb.a
  %i.ah = icmp eq ptr %0, %1
  br i1 %i.ah, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.preheader.i15

.preheader.i15:                                   ; preds = %bb.q
  %.sroa.0.016.i16 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not17.i17 = icmp eq ptr %.sroa.0.016.i16, %1
  br i1 %.not17.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.preheader.i15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.r

bb.r:                                             ; preds = %bb.ac, %.lr.ph.i18
  %.sroa.0.019.i19 = phi ptr [ %.sroa.0.016.i16, %.lr.ph.i18 ], [ %.sroa.0.0.i27, %bb.ac ] ; 6 uses
  %.pn18.i20 = phi ptr [ %0, %.lr.ph.i18 ], [ %.sroa.0.019.i19, %bb.ac ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn18.i20, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !158 ; 5 uses
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !158 ; 2 uses
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = icmp eq i64 %i.al, %i.am
  %4 = getelementptr inbounds nuw i8, ptr %.pn18.i20, i64 64
  %5 = load double, ptr %4, align 8, !tbaa !106   ; 3 uses
  br i1 %i.ao, label %bb.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i21

bb.t:                                             ; preds = %bb.s
  %i.ap = load double, ptr %i.aj, align 8, !tbaa !207
  %i.aq = fcmp olt double %5, %i.ap
  br i1 %i.aq, label %bb.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i21

bb.u:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.019.i19, i64 40, i1 false), !tbaa.struct !161
  %i.ar = ptrtoint ptr %.sroa.0.019.i19 to i64
  %i.as = sub i64 %i.ar, %i.b                     ; 4 uses
  %i.at = icmp sgt i64 %i.as, 40
  br i1 %i.at, label %bb.v, label %bb.w, !prof !211

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %.pn18.i20, i64 80
  %.neg27.i30 = udiv exact i64 %i.as, 40
  %.neg27.neg.i31 = sub nsw i64 0, %.neg27.i30
  %i.av = getelementptr inbounds [40 x i8], ptr %i.au, i64 %.neg27.neg.i31
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.as, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29

bb.w:                                             ; preds = %bb.u
  %i.aw = icmp eq i64 %i.as, 40
  br i1 %i.aw, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn18.i20, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !161
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29: ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !161
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ac

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i21: ; preds = %bb.t, %bb.s
  %.sroa.03.i.i14.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.0.019.i19, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i21
  %.sroa.08.0.i.i22 = phi ptr [ %.sroa.0.019.i19, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i21 ], [ %.sroa.0.0.i.i23, %bb.ab ] ; 7 uses
  %.sroa.0.0.i.i23 = getelementptr inbounds i8, ptr %.sroa.08.0.i.i22, i64 -40 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.08.0.i.i22, i64 -8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !158 ; 2 uses
  %i.ba = icmp ult i64 %i.al, %i.az
  br i1 %i.ba, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bb = icmp eq i64 %i.al, %i.az
  br i1 %i.bb, label %bb.aa, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24

bb.aa:                                            ; preds = %bb.z
  %i.bc = getelementptr inbounds i8, ptr %.sroa.08.0.i.i22, i64 -16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !207
  %i.be = fcmp olt double %5, %i.bd
  br i1 %i.be, label %bb.ab, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24

bb.ab:                                            ; preds = %bb.aa, %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.0.i.i22, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.i23, i64 40, i1 false), !tbaa.struct !161
  br label %bb.y, !llvm.loop !212

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24: ; preds = %bb.aa, %bb.z
  store <3 x double> %.sroa.03.i.i14.sroa.0.0.copyload, ptr %.sroa.08.0.i.i22, align 8
  %.sroa.4.0..sroa_idx4.i.i25 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i22, i64 24
  store double %5, ptr %.sroa.4.0..sroa_idx4.i.i25, align 8, !tbaa !106
  %.sroa.5.0..sroa_idx6.i.i26 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i22, i64 32
  store i64 %i.al, ptr %.sroa.5.0..sroa_idx6.i.i26, align 8, !tbaa !118
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i19, i64 40 ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.r, !llvm.loop !213

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.ac, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i10, %.preheader.i15, %bb.q, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 40
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -40 ; 4 uses
  %.sroa.05.i.sroa.0.0.copyload = load <3 x double>, ptr %i.e, align 8
  %.sroa.48.0..sroa.0.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16
  %.sroa.48.0.copyload.i = load double, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i, align 8, !tbaa !106 ; 2 uses
  %.sroa.59.0..sroa.0.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa.0.0..sroa_idx.i, align 8, !tbaa !118 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !161
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.a                       ; 3 uses
  %i.h = sdiv exact i64 %i.g, 40                  ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp sgt i64 %i.g, 80
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i
  %.041.i.i = phi i64 [ %i.ab, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = shl i64 %.041.i.i, 1                     ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 3 uses
  %i.n = getelementptr inbounds [40 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [40 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !158  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !158  ; 2 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.v = icmp eq i64 %i.r, %i.t
  br i1 %i.v, label %bb.c, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !207
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !207
  %i.aa = fcmp olt double %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ab = phi i64 [ %i.o, %bb.d ], [ %i.m, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.ac = getelementptr inbounds [40 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [40 x i8], ptr %0, i64 %.041.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !tbaa.struct !161
  %i.ae = icmp slt i64 %i.ab, %i.j
  br i1 %i.ae, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !215

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.ab, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i ] ; 5 uses
  %i.af = and i64 %i.h, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = add nsw i64 %i.h, -2
  %i.ai = ashr exact i64 %i.ah, 1
  %i.aj = icmp eq i64 %.0.lcssa.i.i, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = shl nsw i64 %.0.lcssa.i.i, 1
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = getelementptr inbounds [40 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false), !tbaa.struct !161
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.al, %bb.f ], [ %.0.lcssa.i.i, %bb.e ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ao = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.j
  %.019.i.i.i = phi i64 [ %.0920.i.i1011.i, %bb.j ], [ %.1.i.i, %bb.g ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i1011.i = lshr i64 %.0920.in.i.i.i, 1  ; 3 uses
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0920.i.i1011.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !158 ; 2 uses
  %i.as = icmp ult i64 %i.ar, %.sroa.59.0.copyload.i
  br i1 %i.as, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.at = icmp eq i64 %i.ar, %.sroa.59.0.copyload.i
  br i1 %i.at, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = load double, ptr %i.au, align 8, !tbaa !207
  %i.aw = fcmp olt double %i.av, %.sroa.48.0.copyload.i
  br i1 %i.aw, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.019.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !tbaa.struct !161
  %.not.i = icmp eq i64 %.0920.i.i1011.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !216

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.g ], [ 0, %bb.j ], [ %.019.i.i.i, %bb.h ], [ %.019.i.i.i, %bb.i ]
  %i.ay = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 3 uses
  store <3 x double> %.sroa.05.i.sroa.0.0.copyload, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store double %.sroa.48.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !106
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i64 %.sroa.59.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !118
  %i.az = icmp sgt i64 %i.g, 40
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !217

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 80
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 40                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit, %bb.b
  %.07 = phi i64 [ %i.g, %bb.b ], [ %i.ay, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [40 x i8], ptr %0, i64 %.07 ; 3 uses
  %.sroa.013.sroa.0.0.copyload25 = load <3 x double>, ptr %i.p, align 8
  %.sroa.416.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.416.0.copyload = load double, ptr %.sroa.416.0..sroa.0.0..sroa_idx, align 8, !tbaa !106 ; 2 uses
  %.sroa.517.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.517.0.copyload = load i64, ptr %.sroa.517.0..sroa.0.0..sroa_idx, align 8, !tbaa !118 ; 3 uses
  %i.q = icmp slt i64 %.07, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i
  %.041.i = phi i64 [ %i.ah, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i ], [ %.07, %bb.c ] ; 2 uses
  %i.r = shl i64 %.041.i, 1                       ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 3 uses
  %i.t = getelementptr inbounds [40 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [40 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !158  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !158  ; 2 uses
  %i.aa = icmp ult i64 %i.x, %i.z
  br i1 %i.aa, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ab = icmp eq i64 %i.x, %i.z
  br i1 %i.ab, label %bb.e, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !207
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !207
  %i.ag = fcmp olt double %i.ad, %i.af
end_hunk_0
