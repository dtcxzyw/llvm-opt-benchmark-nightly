inline.NumInlined: 505
inline.NumDeleted: 237
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_T1_:bb.a
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !tbaa.struct !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.an, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge1831, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %i.af = load double, ptr %0, align 8, !tbaa !82
  %i.ag = load double, ptr %i.h, align 8, !tbaa !83
  %i.ah = fadd double %i.af, %i.ag                ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i ], [ %i.an, %bb.m ] ; 10 uses
  %i.ai = load double, ptr %.sroa.010.1.i.i, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !83
  %i.al = fadd double %i.ai, %i.ak
  %i.am = fcmp olt double %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 32 ; 2 uses
  br i1 %i.am, label %bb.m, label %.preheader.i.i, !llvm.loop !113

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 6 uses
  %i.ao = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !82
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !83
  %i.ar = fadd double %i.ao, %i.aq
  %i.as = fcmp olt double %i.ah, %i.ar
  br i1 %i.as, label %.preheader.i.i, label %bb.n, !llvm.loop !114

bb.n:                                             ; preds = %.preheader.i.i
  %i.at = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.at, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, i64 32, i1 false), !tbaa.struct !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, i64 32, i1 false), !tbaa.struct !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i, !llvm.loop !115

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1831, i64 noundef %i.l)
  %i.au = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.av = sub i64 %i.au, %i.a
  %i.aw = ashr exact i64 %i.av, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 16
  br i1 %i.ax, label %bb.b, label %.loopexit, !llvm.loop !112

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7.i.i24 = alloca { %"union.geos::index::strtree::TemplateSTRNode<geos::algorithm::locate::IndexedPointInAreaLocator::SegmentView, geos::index::strtree::IntervalTraits>::Body", ptr }, align 8 ; 4 uses
  %2 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %.sroa.7.i.i12 = alloca { %"union.geos::index::strtree::TemplateSTRNode<geos::algorithm::locate::IndexedPointInAreaLocator::SegmentView, geos::index::strtree::IntervalTraits>::Body", ptr }, align 8 ; 4 uses
  %.sroa.7.i.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<geos::algorithm::locate::IndexedPointInAreaLocator::SegmentView, geos::index::strtree::IntervalTraits>::Body", ptr }, align 8 ; 4 uses
  %3 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.020.i.idx = phi i64 [ 32, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.d ] ; 3 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.d ] ; 4 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 5 uses
  %i.f = load <2 x double>, ptr %.sroa.0.020.i.ptr, align 8, !tbaa !33 ; 3 uses
  %shift = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.f, %shift
  %i.g = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.h = load double, ptr %0, align 8, !tbaa !82
  %i.i = load double, ptr %i.e, align 8, !tbaa !83
  %i.j = fadd double %i.h, %i.i
  %i.k = fcmp olt double %i.g, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.c

.loopexit.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.ptr, i64 32, i1 false), !tbaa.struct !42
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !tbaa.struct !116
  %i.l = load double, ptr %.pn19.i, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !83
  %i.o = fadd double %i.l, %i.n
  %i.p = fcmp olt double %i.g, %i.o
  br i1 %i.p, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.c ] ; 5 uses
  %.sroa.08.012.i.i = phi ptr [ %.sroa.0.013.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.012.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.013.i.i, i64 32, i1 false), !tbaa.struct !42
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -32 ; 2 uses
  %i.q = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !82
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -24
  %i.s = load double, ptr %i.r, align 8, !tbaa !83
  %i.t = fadd double %i.q, %i.s
  %i.u = fcmp olt double %i.g, %i.t
  br i1 %i.u, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i, !llvm.loop !117

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.08.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.c ], [ %.sroa.0.013.i.i, %.lr.ph.i.i ] ; 2 uses
  store <2 x double> %i.f, ptr %.sroa.08.0.lcssa.i.i, align 8, !tbaa !33
  %.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i, %.loopexit.i
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 32 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.020.i.add, 512
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %bb.b, !llvm.loop !118

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.not6.i = icmp eq ptr %i.v, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15
  %.sroa.0.07.i = phi ptr [ %i.ai, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15 ], [ %i.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i12)
  %i.w = load <2 x double>, ptr %.sroa.0.07.i, align 8, !tbaa !33 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i14, i64 16, i1 false), !tbaa.struct !116
  %shift66 = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop67 = fadd <2 x double> %i.w, %shift66
  %i.x = extractelement <2 x double> %foldExtExtBinop67, i64 0 ; 2 uses
  %.sroa.0.011.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -32 ; 2 uses
  %i.y = load double, ptr %.sroa.0.011.i.i, align 8, !tbaa !82
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -24
  %i.aa = load double, ptr %i.z, align 8, !tbaa !83
  %i.ab = fadd double %i.y, %i.aa
  %i.ac = fcmp olt double %i.x, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i20, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i20
  %.sroa.0.013.i.i21 = phi ptr [ %.sroa.0.0.i.i23, %.lr.ph.i.i20 ], [ %.sroa.0.011.i.i, %.lr.ph.i13 ] ; 5 uses
  %.sroa.08.012.i.i22 = phi ptr [ %.sroa.0.013.i.i21, %.lr.ph.i.i20 ], [ %.sroa.0.07.i, %.lr.ph.i13 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.012.i.i22, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.013.i.i21, i64 32, i1 false), !tbaa.struct !42
  %.sroa.0.0.i.i23 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i21, i64 -32 ; 2 uses
  %i.ad = load double, ptr %.sroa.0.0.i.i23, align 8, !tbaa !82
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.013.i.i21, i64 -24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !83
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = fcmp olt double %i.x, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i20, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15, !llvm.loop !117

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15: ; preds = %.lr.ph.i.i20, %.lr.ph.i13
  %.sroa.08.0.lcssa.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.013.i.i21, %.lr.ph.i.i20 ] ; 2 uses
  store <2 x double> %i.w, ptr %.sroa.08.0.lcssa.i.i16, align 8, !tbaa !33
  %.sroa.7.0..sroa_idx7.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i.i18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i12, i64 16, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i12)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 32 ; 2 uses
  %.not.i19 = icmp eq ptr %i.ai, %1
  br i1 %.not.i19, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13, !llvm.loop !119

bb.e:                                             ; preds = %bb.a
  %i.aj = icmp eq ptr %0, %1
  br i1 %i.aj, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.preheader.i25

.preheader.i25:                                   ; preds = %bb.e
  %.sroa.0.017.i26 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not18.i27 = icmp eq ptr %.sroa.0.017.i26, %1
  br i1 %.not18.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.preheader.i25
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i28
  %.sroa.0.020.i29 = phi ptr [ %.sroa.0.017.i26, %.lr.ph.i28 ], [ %.sroa.0.0.i36, %bb.i ] ; 9 uses
  %.pn19.i30 = phi ptr [ %0, %.lr.ph.i28 ], [ %.sroa.0.020.i29, %bb.i ] ; 5 uses
  %i.al = load <2 x double>, ptr %.sroa.0.020.i29, align 8, !tbaa !33 ; 3 uses
  %shift69 = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop70 = fadd <2 x double> %i.al, %shift69
  %i.am = extractelement <2 x double> %foldExtExtBinop70, i64 0 ; 3 uses
  %i.an = load double, ptr %0, align 8, !tbaa !82
  %i.ao = load double, ptr %i.ak, align 8, !tbaa !83
  %i.ap = fadd double %i.an, %i.ao
  %i.aq = fcmp olt double %i.am, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i29, i64 32, i1 false), !tbaa.struct !42
  %i.ar = ptrtoint ptr %.sroa.0.020.i29 to i64
  %i.as = sub i64 %i.ar, %i.b
  %i.at = ashr exact i64 %i.as, 5                 ; 5 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.preheader.i43, label %.loopexit.i42

.lr.ph.i.i.i.i.i.preheader.i43:                   ; preds = %bb.g
  %4 = getelementptr inbounds nuw i8, ptr %.pn19.i30, i64 64 ; 2 uses
  %xtraiter = and i64 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i44.prol.loopexit, label %.lr.ph.i.i.i.i.i.i44.prol

.lr.ph.i.i.i.i.i.i44.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i43, %.lr.ph.i.i.i.i.i.i44.prol
  %.010.i.i.i.i.i.i45.prol = phi i64 [ %7, %.lr.ph.i.i.i.i.i.i44.prol ], [ %i.at, %.lr.ph.i.i.i.i.i.preheader.i43 ]
  %.069.i.i.i.i.i.i46.prol = phi ptr [ %6, %.lr.ph.i.i.i.i.i.i44.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader.i43 ]
  %.078.i.i.i.i.i.i47.prol = phi ptr [ %5, %.lr.ph.i.i.i.i.i.i44.prol ], [ %.sroa.0.020.i29, %.lr.ph.i.i.i.i.i.preheader.i43 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i44.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i43 ]
  %5 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47.prol, i64 -32 ; 3 uses
  %6 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46.prol, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !42
  %7 = add nsw i64 %.010.i.i.i.i.i.i45.prol, -1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i44.prol.loopexit, label %.lr.ph.i.i.i.i.i.i44.prol, !llvm.loop !120

.lr.ph.i.i.i.i.i.i44.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i44.prol, %.lr.ph.i.i.i.i.i.preheader.i43
  %.010.i.i.i.i.i.i45.unr = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.preheader.i43 ], [ %7, %.lr.ph.i.i.i.i.i.i44.prol ]
  %.069.i.i.i.i.i.i46.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader.i43 ], [ %6, %.lr.ph.i.i.i.i.i.i44.prol ]
  %.078.i.i.i.i.i.i47.unr = phi ptr [ %.sroa.0.020.i29, %.lr.ph.i.i.i.i.i.preheader.i43 ], [ %5, %.lr.ph.i.i.i.i.i.i44.prol ]
  %8 = icmp ult i64 %i.at, 4
  br i1 %8, label %.loopexit.i42, label %.lr.ph.i.i.i.i.i.i44

.lr.ph.i.i.i.i.i.i44:                             ; preds = %.lr.ph.i.i.i.i.i.i44.prol.loopexit, %.lr.ph.i.i.i.i.i.i44
  %.010.i.i.i.i.i.i45 = phi i64 [ %15, %.lr.ph.i.i.i.i.i.i44 ], [ %.010.i.i.i.i.i.i45.unr, %.lr.ph.i.i.i.i.i.i44.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i46 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i44 ], [ %.069.i.i.i.i.i.i46.unr, %.lr.ph.i.i.i.i.i.i44.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i.i47 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i44 ], [ %.078.i.i.i.i.i.i47.unr, %.lr.ph.i.i.i.i.i.i44.prol.loopexit ] ; 4 uses
  %9 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47, i64 -32
  %10 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !42
  %11 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47, i64 -64
  %12 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !42
  %13 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47, i64 -96
  %14 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46, i64 -96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !42
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47, i64 -128 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46, i64 -128 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false), !tbaa.struct !42
  %15 = add nsw i64 %.010.i.i.i.i.i.i45, -4
  %16 = icmp sgt i64 %.010.i.i.i.i.i.i45, 4
  br i1 %16, label %.lr.ph.i.i.i.i.i.i44, label %.loopexit.i42, !llvm.loop !121

.loopexit.i42:                                    ; preds = %.lr.ph.i.i.i.i.i.i44.prol.loopexit, %.lr.ph.i.i.i.i.i.i44, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i24)
  %.sroa.7.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %.pn19.i30, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i31, i64 16, i1 false), !tbaa.struct !116
  %i.ax = load double, ptr %.pn19.i30, align 8, !tbaa !82
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn19.i30, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !83
  %i.ba = fadd double %i.ax, %i.az
  %i.bb = fcmp olt double %i.am, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i38, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i32

.lr.ph.i.i38:                                     ; preds = %bb.h, %.lr.ph.i.i38
  %.sroa.0.013.i.i39 = phi ptr [ %.sroa.0.0.i.i41, %.lr.ph.i.i38 ], [ %.pn19.i30, %bb.h ] ; 5 uses
  %.sroa.08.012.i.i40 = phi ptr [ %.sroa.0.013.i.i39, %.lr.ph.i.i38 ], [ %.sroa.0.020.i29, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.012.i.i40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.013.i.i39, i64 32, i1 false), !tbaa.struct !42
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i39, i64 -32 ; 2 uses
  %i.bc = load double, ptr %.sroa.0.0.i.i41, align 8, !tbaa !82
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.013.i.i39, i64 -24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !83
  %i.bf = fadd double %i.bc, %i.be
  %i.bg = fcmp olt double %i.am, %i.bf
  br i1 %i.bg, label %.lr.ph.i.i38, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i32, !llvm.loop !117

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i32: ; preds = %.lr.ph.i.i38, %bb.h
  %.sroa.08.0.lcssa.i.i33 = phi ptr [ %.sroa.0.020.i29, %bb.h ], [ %.sroa.0.013.i.i39, %.lr.ph.i.i38 ] ; 2 uses
  store <2 x double> %i.al, ptr %.sroa.08.0.lcssa.i.i33, align 8, !tbaa !33
  %.sroa.7.0..sroa_idx7.i.i35 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i33, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i.i35, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i24, i64 16, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i24)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i32, %.loopexit.i42
  %.sroa.0.0.i36 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i29, i64 32 ; 2 uses
  %.not.i37 = icmp eq ptr %.sroa.0.0.i36, %1
  br i1 %.not.i37, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %bb.f, !llvm.loop !118

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15, %.preheader.i25, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<geos::algorithm::locate::IndexedPointInAreaLocator::SegmentView, geos::index::strtree::IntervalTraits>::Body", ptr }, align 8 ; 5 uses
  %.sroa.3.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<geos::algorithm::locate::IndexedPointInAreaLocator::SegmentView, geos::index::strtree::IntervalTraits>::Body", ptr }, align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !33 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !42
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 5                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.i, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.041.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [32 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [32 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.o, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !83
  %i.u = fadd double %i.r, %i.t
  %i.v = load double, ptr %i.q, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !83
  %i.y = fadd double %i.v, %i.x
  %i.z = fcmp olt double %i.u, %i.y
  %spec.select.i.i = select i1 %i.z, i64 %i.p, i64 %i.n ; 4 uses
  %i.aa = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i
  %i.ab = getelementptr inbounds [32 x i8], ptr %0, i64 %.041.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !tbaa.struct !42
  %i.ac = icmp slt i64 %spec.select.i.i, %i.k
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !122

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.h, 32
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.i, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !tbaa.struct !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i, i64 16, i1 false), !tbaa.struct !116
  br label %.lr.ph.i.preheader.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i, i64 16, i1 false), !tbaa.struct !116
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.c, %.thread.i
  %.1.i10.i = phi i64 [ %i.aj, %.thread.i ], [ %.0.lcssa.i.i, %bb.c ]
  %shift = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.f, %shift
  %i.am = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.preheader.i.i
  %.018.i.i.i = phi i64 [ %.0919.i.i1112.i, %bb.d ], [ %.1.i10.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i1112.i = lshr i64 %.0919.in.i.i.i, 1  ; 3 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i1112.i ; 3 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !83
  %i.ar = fadd double %i.ao, %i.aq
  %i.as = fcmp olt double %i.ar, %i.am
  br i1 %i.as, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds [32 x i8], ptr %0, i64 %.018.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false), !tbaa.struct !42
  %.not13.i = icmp eq i64 %.0919.i.i1112.i, 0
  br i1 %.not13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !123

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.au = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store <2 x double> %i.f, ptr %i.au, align 8, !tbaa !33
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx29.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  %i.av = icmp sgt i64 %i.h, 32
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !124

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS2_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS4_14IntervalTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.3 = alloca { %"union.geos::index::strtree::TemplateSTRNode<geos::algorithm::locate::IndexedPointInAreaLocator::SegmentView, geos::index::strtree::IntervalTraits>::Body", ptr }, align 8 ; 2 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 32
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.av, %.loopexit ] ; 8 uses
  %i.p = getelementptr inbounds [32 x i8], ptr %0, i64 %.010 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !33 ; 3 uses
  %.sroa.6.0..sroa.011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.011.0..sroa_idx, i64 16, i1 false)
  %i.r = icmp slt i64 %.010, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.041.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010, %bb.c ] ; 2 uses
  %i.s = shl i64 %.041.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [32 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = load double, ptr %i.u, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !83
  %i.aa = fadd double %i.x, %i.z
  %i.ab = load double, ptr %i.w, align 8, !tbaa !82
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !83
  %i.ae = fadd double %i.ab, %i.ad
  %i.af = fcmp olt double %i.aa, %i.ae
  %spec.select.i = select i1 %i.af, i64 %i.v, i64 %i.t ; 4 uses
  %i.ag = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i
  %i.ah = getelementptr inbounds [32 x i8], ptr %0, i64 %.041.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !tbaa.struct !42
  %i.ai = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !122

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.010, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !tbaa.struct !42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i, %.010
  br i1 %i.ak, label %.lr.ph.i.preheader.i, label %.loopexit

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %shift = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.q, %shift
  %i.al = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.preheader.i
  %.018.i.i = phi i64 [ %.0919.i.i, %bb.f ], [ %.1.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i.i = sdiv i64 %.0919.in.i.i, 2          ; 4 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i ; 3 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !83
  %i.aq = fadd double %i.an, %i.ap
  %i.ar = fcmp olt double %i.aq, %i.al
  br i1 %i.ar, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.018.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false), !tbaa.struct !42
  %i.at = icmp sgt i64 %.0919.i.i, %.010
  br i1 %i.at, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !123

.loopexit:                                        ; preds = %bb.f, %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0919.i.i, %bb.f ], [ %.018.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store <2 x double> %i.q, ptr %i.au, align 8, !tbaa !33
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx29.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, i64 16, i1 false)
  %.not = icmp eq i64 %.010, 0
  %i.av = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit19, label %bb.c, !llvm.loop !125

.loopexit19:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

declare void @_ZN4geos9algorithm18RayCrossingCounter12countSegmentERKNS_4geom10CoordinateES5_(ptr noundef nonnull align 8 dereferenceable(13), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }

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
!8 = !{!9, !18, i64 72}
!9 = !{!"_ZTSN4geos5index7strtree19TemplateSTRtreeImplINS_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS1_14IntervalTraitsEEE", !10, i64 0, !12, i64 40, !16, i64 64, !18, i64 72, !18, i64 80}
!10 = !{!"_ZTSSt5mutex", !11, i64 0}
!11 = !{!"_ZTSSt12__mutex_base", !6, i64 0}
!12 = !{!"_ZTSSt6vectorIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEESaIS9_EE", !13, i64 0}
!13 = !{!"_ZTSSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEESaIS9_EE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEESaIS9_EE12_Vector_implE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEESaIS9_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"p1 _ZTSN4geos5index7strtree15TemplateSTRNodeINS_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS1_14IntervalTraitsEEE", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!9, !18, i64 80}
!20 = !{!15, !16, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p2 _ZTSN4geos4geom10LineStringE", !23, i64 0}
!23 = !{!"any p2 pointer", !17, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSN4geos4geom10LineStringE", !17, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !7, i64 0}
!28 = distinct !{null}
!29 = !{!9, !16, i64 64}
!30 = !{!18, !18, i64 0}
!31 = !{!32, !22, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10LineStringESaIS4_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!33 = !{!34, !34, i64 0}
!34 = !{!"double", !6, i64 0}
!35 = !{!15, !16, i64 8}
!36 = !{!15, !16, i64 16}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !17, i64 0}
!39 = !{!40, !16, i64 24}
!40 = !{!"_ZTSN4geos5index7strtree15TemplateSTRNodeINS_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS1_14IntervalTraitsEEE", !41, i64 0, !6, i64 16, !16, i64 24}
!41 = !{!"_ZTSN4geos5index7strtree8IntervalE", !34, i64 0, !34, i64 8}
!42 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !43, i64 24, i64 8, !44}
!43 = !{!6, !6, i64 0}
!44 = !{!16, !16, i64 0}
!45 = !{!46, !48}
!46 = distinct !{!46, !47, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!47 = distinct !{!47, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEES9_SaIS9_EEvPT_PT0_RT1_"}
!48 = distinct !{!48, !47, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN4geos6detail11make_uniqueINS_9algorithm6locate25IndexedPointInAreaLocator23IntervalIndexedGeometryEJRKNS_4geom8GeometryEEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!54 = distinct !{!54, !"_ZN4geos6detail11make_uniqueINS_9algorithm6locate25IndexedPointInAreaLocator23IntervalIndexedGeometryEJRKNS_4geom8GeometryEEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!55 = !{!56, !56, i64 0}
!56 = !{!"p1 _ZTSN4geos9algorithm6locate25IndexedPointInAreaLocator23IntervalIndexedGeometryE", !17, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTSN4geos4geom8GeometryE", !17, i64 0}
!59 = !{!60, !56, i64 0}
!60 = !{!"_ZTSSt10_Head_baseILm0EPN4geos9algorithm6locate25IndexedPointInAreaLocator23IntervalIndexedGeometryELb0EE", !56, i64 0}
!61 = !{!62, !58, i64 8}
!62 = !{!"_ZTSN4geos9algorithm6locate25IndexedPointInAreaLocatorE", !63, i64 0, !58, i64 8, !64, i64 16}
!63 = !{!"_ZTSN4geos9algorithm6locate22PointOnGeometryLocatorE"}
!64 = !{!"_ZTSSt10unique_ptrIN4geos9algorithm6locate25IndexedPointInAreaLocator23IntervalIndexedGeometryESt14default_deleteIS4_EE", !65, i64 0}
!65 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos9algorithm6locate25IndexedPointInAreaLocator23IntervalIndexedGeometryESt14default_deleteIS4_ELb1ELb1EE", !66, i64 0}
!66 = !{!"_ZTSSt15__uniq_ptr_implIN4geos9algorithm6locate25IndexedPointInAreaLocator23IntervalIndexedGeometryESt14default_deleteIS4_EE", !67, i64 0}
!67 = !{!"_ZTSSt5tupleIJPN4geos9algorithm6locate25IndexedPointInAreaLocator23IntervalIndexedGeometryESt14default_deleteIS4_EEE", !68, i64 0}
!68 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos9algorithm6locate25IndexedPointInAreaLocator23IntervalIndexedGeometryESt14default_deleteIS4_EEE", !60, i64 0}
!69 = !{}
!70 = !{i64 8}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN4geos6detail11make_uniqueINS_9algorithm6locate25IndexedPointInAreaLocator23IntervalIndexedGeometryEJRKNS_4geom8GeometryEEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!73 = distinct !{!73, !"_ZN4geos6detail11make_uniqueINS_9algorithm6locate25IndexedPointInAreaLocator23IntervalIndexedGeometryEJRKNS_4geom8GeometryEEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!74 = !{!75, !5, i64 8}
!75 = !{!"_ZTSN4geos9algorithm18RayCrossingCounterE", !38, i64 0, !5, i64 8, !76, i64 12}
!76 = !{!"bool", !6, i64 0}
!77 = !{!75, !76, i64 12}
!78 = !{!79, !34, i64 8}
!79 = !{!"_ZTSN4geos4geom10CoordinateE", !34, i64 0, !34, i64 8, !34, i64 16}
!80 = !{!81, !81, i64 0}
!81 = !{!"p1 _ZTSN4geos9algorithm18RayCrossingCounterE", !17, i64 0}
!82 = !{!41, !34, i64 0}
!83 = !{!41, !34, i64 8}
!84 = !{!85, !38, i64 0}
!85 = !{!"_ZTSN4geos9algorithm6locate25IndexedPointInAreaLocator11SegmentViewE", !38, i64 0}
!86 = !{ptr @_ZN4geos9algorithm6locate25IndexedPointInAreaLocatorD2Ev}
!87 = distinct !{!87, !50}
!88 = distinct !{!88, !50}
!89 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !50}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !50}
!95 = distinct !{!95, !50}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEES9_SaIS9_EEvPT_PT0_RT1_"}
!99 = distinct !{!99, !98, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!100 = !{!101, !16, i64 0}
!101 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeINS1_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS3_14IntervalTraitsEEESt6vectorISA_SaISA_EEEE", !16, i64 0}
!102 = !{!103, !81, i64 0}
!103 = !{!"_ZTSZN4geos9algorithm6locate25IndexedPointInAreaLocator6locateEPKNS_4geom10CoordinateEE3$_0", !81, i64 0}
!104 = distinct !{!104, !50}
!105 = distinct !{!105, !50}
!106 = !{!107, !109}
!107 = distinct !{!107, !108, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!108 = distinct !{!108, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEES9_SaIS9_EEvPT_PT0_RT1_"}
!109 = distinct !{!109, !108, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeINS0_9algorithm6locate25IndexedPointInAreaLocator11SegmentViewENS2_14IntervalTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!110 = distinct !{!110, !50}
!111 = distinct !{!111, !50}
!112 = distinct !{!112, !50}
!113 = distinct !{!113, !50}
!114 = distinct !{!114, !50}
!115 = distinct !{!115, !50}
!116 = !{i64 0, i64 8, !43, i64 8, i64 8, !44}
!117 = distinct !{!117, !50}
!118 = distinct !{!118, !50}
!119 = distinct !{!119, !50}
!120 = distinct !{!120, !91}
!121 = distinct !{!121, !50}
!122 = distinct !{!122, !50}
!123 = distinct !{!123, !50}
!124 = distinct !{!124, !50}
!125 = distinct !{!125, !50}
end_hunk_0
