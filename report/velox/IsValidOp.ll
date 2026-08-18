inline.NumInlined: 909
inline.NumDeleted: 422
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_4geom10LinearRingENS1_14EnvelopeTraitsEE31addParentNodesFromVerticalSliceERKN9__gnu_cxx17__normal_iteratorIPNS1_15TemplateSTRNodeIS6_S7_EESt6vectorISC_SaISC_EEEESJ_:bb.a
  br i1 %.not, label %._crit_edge, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit, !llvm.loop !205

._crit_edge:                                      ; preds = %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_4geom10LinearRingENS1_14EnvelopeTraitsEE16createBranchNodeEPKNS1_15TemplateSTRNodeIS6_S7_EESC_.exit, %bb.a, %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS_4geom10LinearRingENS1_14EnvelopeTraitsEE10sortNodesYERKN9__gnu_cxx17__normal_iteratorIPNS1_15TemplateSTRNodeIS6_S7_EESt6vectorISC_SaISC_EEEESJ_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %5 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %6 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %7 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %8 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %9 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %10 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 768
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph32

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit
  %i.i = icmp eq i64 %i.k, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph32, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph32:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1831 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.01930 = phi i64 [ %i.k, %bb.b ], [ %2, %.lr.ph ]
  %i.j = phi i64 [ %i.au, %bb.b ], [ %i.c, %.lr.ph ]
  %i.k = add nsw i64 %.01930, -1                  ; 3 uses
  %i.l = udiv i64 %i.j, 96
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.l ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %storemerge1831, i64 -48 ; 5 uses
  %i.o = load double, ptr %i.e, align 8, !tbaa !178
  %i.p = load double, ptr %i.f, align 8, !tbaa !159
  %i.q = fadd double %i.o, %i.p                   ; 3 uses
  %i.r = load double, ptr %i.m, align 8, !tbaa !178
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !159
  %i.u = fadd double %i.r, %i.t                   ; 3 uses
  %i.v = fcmp olt double %i.q, %i.u
  %i.w = load double, ptr %i.n, align 8, !tbaa !178
  %i.x = getelementptr inbounds i8, ptr %storemerge1831, i64 -40
  %i.y = load double, ptr %i.x, align 8, !tbaa !159
  %i.z = fadd double %i.w, %i.y                   ; 4 uses
  br i1 %i.v, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph32
  %i.aa = fcmp olt double %i.u, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.ab = fcmp olt double %i.q, %i.z
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph32
  %i.ac = fcmp olt double %i.q, %i.z
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ad = fcmp olt double %i.u, %i.z
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.am, %bb.o ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge1831, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %i.ae = load double, ptr %0, align 8, !tbaa !178
  %i.af = load double, ptr %i.g, align 8, !tbaa !159
  %i.ag = fadd double %i.ae, %i.af                ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i ], [ %i.am, %bb.m ] ; 10 uses
  %i.ah = load double, ptr %.sroa.010.1.i.i, align 8, !tbaa !178
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !159
  %i.ak = fadd double %i.ah, %i.aj
  %i.al = fcmp olt double %i.ak, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 48 ; 2 uses
  br i1 %i.al, label %bb.m, label %.preheader.i.i, !llvm.loop !207

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 6 uses
  %i.an = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !178
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !159
  %i.aq = fadd double %i.an, %i.ap
  %i.ar = fcmp olt double %i.ag, %i.aq
  br i1 %i.ar, label %.preheader.i.i, label %bb.n, !llvm.loop !208

bb.n:                                             ; preds = %.preheader.i.i
  %i.as = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.as, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.1.i.i, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i, !llvm.loop !209

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1831, i64 noundef %i.k)
  %i.at = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.au = sub i64 %i.at, %i.a                     ; 2 uses
  %i.av = icmp sgt i64 %i.au, 768
  br i1 %i.av, label %bb.b, label %.loopexit, !llvm.loop !206

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7.i.i24 = alloca [32 x i8], align 8      ; 4 uses
  %2 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %.sroa.7.i.i12 = alloca [32 x i8], align 8      ; 4 uses
  %.sroa.7.i.i = alloca [32 x i8], align 8        ; 4 uses
  %3 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 768
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar.i = phi i64 [ 0, %.lr.ph.i ], [ %indvar.next.i, %bb.d ] ; 2 uses
  %.sroa.0.020.i.idx = phi i64 [ 48, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.d ] ; 2 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.d ] ; 5 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 6 uses
  %i.f = load <2 x double>, ptr %.sroa.0.020.i.ptr, align 8, !tbaa !70 ; 3 uses
  %shift = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.f, %shift
  %i.g = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.h = load double, ptr %0, align 8, !tbaa !178
  %i.i = load double, ptr %i.e, align 8, !tbaa !159
  %i.j = fadd double %i.h, %i.i
  %i.k = fcmp olt double %i.g, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.c

.loopexit.i:                                      ; preds = %bb.b
  %4 = add nuw i64 %indvar.i, 1                   ; 2 uses
  %5 = mul nuw nsw i64 %4, 48
  %.neg.i = mul nsw i64 %4, -48
  %i.l = add nsw i64 %.neg.i, 48                  ; 2 uses
  %scevgep22.i = getelementptr i8, ptr %.pn19.i, i64 %i.l
  %scevgep.i = getelementptr i8, ptr %.sroa.0.020.i.ptr, i64 %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.020.i.ptr, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %scevgep22.i, i64 %5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i, i64 32, i1 false), !tbaa.struct !210
  %i.m = load double, ptr %.pn19.i, align 8, !tbaa !178
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !159
  %i.p = fadd double %i.m, %i.o
  %i.q = fcmp olt double %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.c ] ; 5 uses
  %.sroa.08.012.i.i = phi ptr [ %.sroa.0.013.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.08.012.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.013.i.i, i64 48, i1 false), !tbaa.struct !166
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -48 ; 2 uses
  %i.r = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !178
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -40
  %i.t = load double, ptr %i.s, align 8, !tbaa !159
  %i.u = fadd double %i.r, %i.t
  %i.v = fcmp olt double %i.g, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i, !llvm.loop !211

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.08.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.c ], [ %.sroa.0.013.i.i, %.lr.ph.i.i ] ; 2 uses
  store <2 x double> %i.f, ptr %.sroa.08.0.lcssa.i.i, align 8, !tbaa !70
  %.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx7.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i, i64 32, i1 false), !tbaa.struct !210
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i, %.loopexit.i
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 48 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.020.i.add, 768
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %bb.b, !llvm.loop !212

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %.not6.i = icmp eq ptr %i.w, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15
  %.sroa.0.07.i = phi ptr [ %i.aj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15 ], [ %i.w, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i12)
  %i.x = load <2 x double>, ptr %.sroa.0.07.i, align 8, !tbaa !70 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i14, i64 32, i1 false), !tbaa.struct !210
  %shift65 = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop66 = fadd <2 x double> %i.x, %shift65
  %i.y = extractelement <2 x double> %foldExtExtBinop66, i64 0 ; 2 uses
  %.sroa.0.011.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -48 ; 2 uses
  %i.z = load double, ptr %.sroa.0.011.i.i, align 8, !tbaa !178
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -40
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !159
  %i.ac = fadd double %i.z, %i.ab
  %i.ad = fcmp olt double %i.y, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i20, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i20
  %.sroa.0.013.i.i21 = phi ptr [ %.sroa.0.0.i.i23, %.lr.ph.i.i20 ], [ %.sroa.0.011.i.i, %.lr.ph.i13 ] ; 5 uses
  %.sroa.08.012.i.i22 = phi ptr [ %.sroa.0.013.i.i21, %.lr.ph.i.i20 ], [ %.sroa.0.07.i, %.lr.ph.i13 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.08.012.i.i22, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.013.i.i21, i64 48, i1 false), !tbaa.struct !166
  %.sroa.0.0.i.i23 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i21, i64 -48 ; 2 uses
  %i.ae = load double, ptr %.sroa.0.0.i.i23, align 8, !tbaa !178
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.013.i.i21, i64 -40
  %i.ag = load double, ptr %i.af, align 8, !tbaa !159
  %i.ah = fadd double %i.ae, %i.ag
  %i.ai = fcmp olt double %i.y, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i20, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15, !llvm.loop !211

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15: ; preds = %.lr.ph.i.i20, %.lr.ph.i13
  %.sroa.08.0.lcssa.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.013.i.i21, %.lr.ph.i.i20 ] ; 2 uses
  store <2 x double> %i.x, ptr %.sroa.08.0.lcssa.i.i16, align 8, !tbaa !70
  %.sroa.7.0..sroa_idx7.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx7.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i12, i64 32, i1 false), !tbaa.struct !210
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i12)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 48 ; 2 uses
  %.not.i19 = icmp eq ptr %i.aj, %1
  br i1 %.not.i19, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13, !llvm.loop !213

bb.e:                                             ; preds = %bb.a
  %i.ak = icmp eq ptr %0, %1
  br i1 %i.ak, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.preheader.i25

.preheader.i25:                                   ; preds = %bb.e
  %.sroa.0.017.i26 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not18.i27 = icmp eq ptr %.sroa.0.017.i26, %1
  br i1 %.not18.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.preheader.i25
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i28
  %indvar.i29 = phi i64 [ 0, %.lr.ph.i28 ], [ %indvar.next.i43, %bb.i ] ; 3 uses
  %.sroa.0.020.i30 = phi ptr [ %.sroa.0.017.i26, %.lr.ph.i28 ], [ %.sroa.0.0.i41, %bb.i ] ; 8 uses
  %.pn19.i31 = phi ptr [ %0, %.lr.ph.i28 ], [ %.sroa.0.020.i30, %bb.i ] ; 5 uses
  %6 = mul nuw i64 %indvar.i29, 48
  %7 = add i64 %6, 48
  %8 = udiv i64 %7, 48                            ; 2 uses
  %9 = icmp samesign ugt i64 %indvar.i29, 384307168202282324 ; 2 uses
  %10 = select i1 %9, i64 0, i64 48
  %.neg.i33 = mul i64 %8, -48
  %11 = add i64 %.neg.i33, %10                    ; 2 uses
  %scevgep.i34 = getelementptr i8, ptr %.sroa.0.020.i30, i64 %11
  %scevgep22.i35 = getelementptr i8, ptr %.pn19.i31, i64 %11
  %12 = zext i1 %9 to i64
  %i.am = add nuw nsw i64 %8, %12
  %13 = mul nuw i64 %i.am, 48
  %i.an = load <2 x double>, ptr %.sroa.0.020.i30, align 8, !tbaa !70 ; 3 uses
  %shift68 = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fadd <2 x double> %i.an, %shift68
  %i.ao = extractelement <2 x double> %foldExtExtBinop69, i64 0 ; 3 uses
  %i.ap = load double, ptr %0, align 8, !tbaa !178
  %i.aq = load double, ptr %i.al, align 8, !tbaa !159
  %i.ar = fadd double %i.ap, %i.aq
  %i.as = fcmp olt double %i.ao, %i.ar
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.020.i30, i64 48, i1 false), !tbaa.struct !166
  %i.at = ptrtoint ptr %.sroa.0.020.i30 to i64
  %i.au = sub i64 %i.at, %i.b
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.preheader.i.i.i.i.i.i49, label %.loopexit.i48

.lr.ph.preheader.i.i.i.i.i.i49:                   ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i34, ptr align 8 %scevgep22.i35, i64 %13, i1 false)
  br label %.loopexit.i48

.loopexit.i48:                                    ; preds = %.lr.ph.preheader.i.i.i.i.i.i49, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i24)
  %.sroa.7.0..sroa_idx.i.i36 = getelementptr inbounds nuw i8, ptr %.pn19.i31, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i24, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i36, i64 32, i1 false), !tbaa.struct !210
  %i.aw = load double, ptr %.pn19.i31, align 8, !tbaa !178
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn19.i31, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !159
  %i.az = fadd double %i.aw, %i.ay
  %i.ba = fcmp olt double %i.ao, %i.az
  br i1 %i.ba, label %.lr.ph.i.i44, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i37

.lr.ph.i.i44:                                     ; preds = %bb.h, %.lr.ph.i.i44
  %.sroa.0.013.i.i45 = phi ptr [ %.sroa.0.0.i.i47, %.lr.ph.i.i44 ], [ %.pn19.i31, %bb.h ] ; 5 uses
  %.sroa.08.012.i.i46 = phi ptr [ %.sroa.0.013.i.i45, %.lr.ph.i.i44 ], [ %.sroa.0.020.i30, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.08.012.i.i46, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.013.i.i45, i64 48, i1 false), !tbaa.struct !166
  %.sroa.0.0.i.i47 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i45, i64 -48 ; 2 uses
  %i.bb = load double, ptr %.sroa.0.0.i.i47, align 8, !tbaa !178
  %i.bc = getelementptr inbounds i8, ptr %.sroa.0.013.i.i45, i64 -40
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !159
  %i.be = fadd double %i.bb, %i.bd
  %i.bf = fcmp olt double %i.ao, %i.be
  br i1 %i.bf, label %.lr.ph.i.i44, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i37, !llvm.loop !211

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i37: ; preds = %.lr.ph.i.i44, %bb.h
  %.sroa.08.0.lcssa.i.i38 = phi ptr [ %.sroa.0.020.i30, %bb.h ], [ %.sroa.0.013.i.i45, %.lr.ph.i.i44 ] ; 2 uses
  store <2 x double> %i.an, ptr %.sroa.08.0.lcssa.i.i38, align 8, !tbaa !70
  %.sroa.7.0..sroa_idx7.i.i40 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i38, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx7.i.i40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i24, i64 32, i1 false), !tbaa.struct !210
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i24)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i37, %.loopexit.i48
  %.sroa.0.0.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i30, i64 48 ; 2 uses
  %.not.i42 = icmp eq ptr %.sroa.0.0.i41, %1
  %indvar.next.i43 = add nuw nsw i64 %indvar.i29, 1
  br i1 %.not.i42, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %bb.f, !llvm.loop !212

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15, %.preheader.i25, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i = alloca [32 x i8], align 8        ; 5 uses
  %.sroa.3.i = alloca [32 x i8], align 8          ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 48
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !70 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = sdiv exact i64 %i.h, 48                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.h, 96
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.041.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [48 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [48 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.o, align 8, !tbaa !178
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !159
  %i.u = fadd double %i.r, %i.t
  %i.v = load double, ptr %i.q, align 8, !tbaa !178
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !159
  %i.y = fadd double %i.v, %i.x
  %i.z = fcmp olt double %i.u, %i.y
  %spec.select.i.i = select i1 %i.z, i64 %i.p, i64 %i.n ; 4 uses
  %i.aa = getelementptr inbounds [48 x i8], ptr %0, i64 %spec.select.i.i
  %i.ab = getelementptr inbounds [48 x i8], ptr %0, i64 %.041.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !tbaa.struct !166
  %i.ac = icmp slt i64 %spec.select.i.i, %i.k
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !214

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.i, 1
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
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, i64 32, i1 false), !tbaa.struct !210
  br label %.lr.ph.i.preheader.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, i64 32, i1 false), !tbaa.struct !210
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, label %.lr.ph.i.preheader.i.i

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
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0919.i.i1112.i ; 3 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !178
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !159
  %i.ar = fadd double %i.ao, %i.aq
  %i.as = fcmp olt double %i.ar, %i.am
  br i1 %i.as, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds [48 x i8], ptr %0, i64 %.018.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false), !tbaa.struct !166
  %.not13.i = icmp eq i64 %.0919.i.i1112.i, 0
  br i1 %.not13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !215

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.au = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store <2 x double> %i.f, ptr %i.au, align 8, !tbaa !70
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx29.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.i.i, i64 32, i1 false), !tbaa.struct !210
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  %i.av = icmp sgt i64 %i.h, 48
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !216

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.3 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 96
  br i1 %i.d, label %.loopexit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 48                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.av, %.loopexit ] ; 8 uses
  %i.p = getelementptr inbounds [48 x i8], ptr %0, i64 %.010 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !70 ; 3 uses
  %.sroa.6.0..sroa.011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa.011.0..sroa_idx, i64 32, i1 false)
  %i.r = icmp slt i64 %.010, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.041.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010, %bb.c ] ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.ctlz.i64
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.92", align 1 ; 3 uses
  %4 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %5 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %6 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %7 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %8 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %9 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %10 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.92", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 768
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph32

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit
  %i.k = icmp eq i64 %i.m, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph32, !llvm.loop !218

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph32:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1831 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.01930 = phi i64 [ %i.m, %bb.b ], [ %2, %.lr.ph ]
  %i.l = phi i64 [ %i.ba, %bb.b ], [ %i.c, %.lr.ph ]
  %i.m = add nsw i64 %.01930, -1                  ; 3 uses
  %i.n = udiv i64 %i.l, 96
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.n ; 6 uses
  %i.p = getelementptr inbounds i8, ptr %storemerge1831, i64 -48 ; 4 uses
  %i.q = load double, ptr %i.f, align 8, !tbaa !179
  %i.r = load double, ptr %i.g, align 8, !tbaa !180
  %i.s = fadd double %i.q, %i.r                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !179
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !180
  %i.x = fadd double %i.u, %i.w                   ; 3 uses
  %i.y = fcmp olt double %i.s, %i.x
  %i.z = getelementptr inbounds i8, ptr %storemerge1831, i64 -32
  %i.aa = load double, ptr %i.z, align 8, !tbaa !179
  %i.ab = getelementptr inbounds i8, ptr %storemerge1831, i64 -24
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !180
  %i.ad = fadd double %i.aa, %i.ac                ; 4 uses
  br i1 %i.y, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph32
  %i.ae = fcmp olt double %i.x, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.af = fcmp olt double %i.s, %i.ad
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph32
  %i.ag = fcmp olt double %i.s, %i.ad
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ah = fcmp olt double %i.x, %i.ad
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.ar, %bb.o ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge1831, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %i.ai = load double, ptr %i.h, align 8, !tbaa !179
  %i.aj = load double, ptr %i.i, align 8, !tbaa !180
  %i.ak = fadd double %i.ai, %i.aj                ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i ], [ %i.ar, %bb.m ] ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !179
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !180
  %i.ap = fadd double %i.am, %i.ao
  %i.aq = fcmp olt double %i.ap, %i.ak
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 48 ; 2 uses
  br i1 %i.aq, label %bb.m, label %.preheader.i.i, !llvm.loop !219

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.at = load double, ptr %i.as, align 8, !tbaa !179
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.av = load double, ptr %i.au, align 8, !tbaa !180
  %i.aw = fadd double %i.at, %i.av
  %i.ax = fcmp olt double %i.ak, %i.aw
  br i1 %i.ax, label %.preheader.i.i, label %bb.n, !llvm.loop !220

bb.n:                                             ; preds = %.preheader.i.i
  %i.ay = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ay, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.1.i.i, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i, !llvm.loop !221

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1831, i64 noundef %i.m)
  %i.az = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ba = sub i64 %i.az, %i.a                     ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 768
  br i1 %i.bb, label %bb.b, label %.loopexit, !llvm.loop !218

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7.i.i26 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::geom::LinearRing *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %2 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %.sroa.7.i.i13 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::geom::LinearRing *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %.sroa.7.i.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::geom::LinearRing *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %3 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 768
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar.i = phi i64 [ 0, %.lr.ph.i ], [ %indvar.next.i, %bb.d ] ; 2 uses
  %.sroa.0.020.i.idx = phi i64 [ 48, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.d ] ; 2 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.d ] ; 5 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 64
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !70 ; 3 uses
  %shift = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.h, %shift
  %i.i = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.j = load double, ptr %i.e, align 8, !tbaa !179
  %i.k = load double, ptr %i.f, align 8, !tbaa !180
  %i.l = fadd double %i.j, %i.k
  %i.m = fcmp olt double %i.i, %i.l
  br i1 %i.m, label %.loopexit.i, label %bb.c

.loopexit.i:                                      ; preds = %bb.b
  %4 = add nuw i64 %indvar.i, 1                   ; 2 uses
  %5 = mul nuw nsw i64 %4, 48
  %.neg.i = mul nsw i64 %4, -48
  %i.n = add nsw i64 %.neg.i, 48                  ; 2 uses
  %scevgep22.i = getelementptr i8, ptr %.pn19.i, i64 %i.n
  %scevgep.i = getelementptr i8, ptr %.sroa.0.020.i.ptr, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.020.i.ptr, i64 48, i1 false), !tbaa.struct !166
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %scevgep22.i, i64 %5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.03.i.i.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.020.i.ptr, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !tbaa.struct !222
  %i.o = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !179
  %i.q = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !180
  %i.s = fadd double %i.p, %i.r
  %i.t = fcmp olt double %i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.09.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.c ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09.012.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i, i64 48, i1 false), !tbaa.struct !166
  %i.u = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -80
  %i.v = load double, ptr %i.u, align 8, !tbaa !179
  %i.w = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -72
  %i.x = load double, ptr %i.w, align 8, !tbaa !180
  %i.y = fadd double %i.v, %i.x
  %i.z = fcmp olt double %i.i, %i.y
  br i1 %i.z, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i, !llvm.loop !223

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.09.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  store <2 x double> %.sroa.03.i.i.sroa.0.0.copyload, ptr %.sroa.09.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 16
  store <2 x double> %i.h, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !tbaa !70
  %.sroa.7.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i, %.loopexit.i
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 48 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.020.i.add, 768
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %bb.b, !llvm.loop !224

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %.not6.i = icmp eq ptr %i.aa, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16
  %.sroa.0.07.i = phi ptr [ %i.ap, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16 ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i13)
  %.sroa.03.i.i12.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.07.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %i.ab = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !70 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i15, i64 16, i1 false), !tbaa.struct !222
  %shift67 = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop68 = fadd <2 x double> %i.ab, %shift67
  %i.ac = extractelement <2 x double> %foldExtExtBinop68, i64 0 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -32
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !179
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !180
  %i.ah = fadd double %i.ae, %i.ag
  %i.ai = fcmp olt double %i.ac, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16

.lr.ph.i.i22:                                     ; preds = %.lr.ph.i14, %.lr.ph.i.i22
  %.sroa.09.012.i.i23 = phi ptr [ %.sroa.0.0.i.i24, %.lr.ph.i.i22 ], [ %.sroa.0.07.i, %.lr.ph.i14 ] ; 4 uses
  %.sroa.0.0.i.i24 = getelementptr inbounds i8, ptr %.sroa.09.012.i.i23, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09.012.i.i23, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i24, i64 48, i1 false), !tbaa.struct !166
  %i.aj = getelementptr inbounds i8, ptr %.sroa.09.012.i.i23, i64 -80
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !179
  %i.al = getelementptr inbounds i8, ptr %.sroa.09.012.i.i23, i64 -72
  %i.am = load double, ptr %i.al, align 8, !tbaa !180
  %i.an = fadd double %i.ak, %i.am
  %i.ao = fcmp olt double %i.ac, %i.an
  br i1 %i.ao, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16, !llvm.loop !223

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16: ; preds = %.lr.ph.i.i22, %.lr.ph.i14
  %.sroa.09.0.lcssa.i.i17 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i14 ], [ %.sroa.0.0.i.i24, %.lr.ph.i.i22 ] ; 3 uses
  store <2 x double> %.sroa.03.i.i12.sroa.0.0.copyload, ptr %.sroa.09.0.lcssa.i.i17, align 8
  %.sroa.5.0..sroa_idx4.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i17, i64 16
  store <2 x double> %i.ab, ptr %.sroa.5.0..sroa_idx4.i.i18, align 8, !tbaa !70
  %.sroa.7.0..sroa_idx8.i.i20 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i17, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i13, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i13)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 48 ; 2 uses
  %.not.i21 = icmp eq ptr %i.ap, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i14, !llvm.loop !225

bb.e:                                             ; preds = %bb.a
  %i.aq = icmp eq ptr %0, %1
  br i1 %i.aq, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.preheader.i27

.preheader.i27:                                   ; preds = %bb.e
  %.sroa.0.017.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not18.i29 = icmp eq ptr %.sroa.0.017.i28, %1
  br i1 %.not18.i29, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.preheader.i27
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i30
  %indvar.i31 = phi i64 [ 0, %.lr.ph.i30 ], [ %indvar.next.i46, %bb.i ] ; 3 uses
  %.sroa.0.020.i32 = phi ptr [ %.sroa.0.017.i28, %.lr.ph.i30 ], [ %.sroa.0.0.i44, %bb.i ] ; 8 uses
  %.pn19.i33 = phi ptr [ %0, %.lr.ph.i30 ], [ %.sroa.0.020.i32, %bb.i ] ; 5 uses
  %6 = mul nuw i64 %indvar.i31, 48
  %7 = add i64 %6, 48
  %8 = udiv i64 %7, 48                            ; 2 uses
  %9 = icmp samesign ugt i64 %indvar.i31, 384307168202282324 ; 2 uses
  %10 = select i1 %9, i64 0, i64 48
  %.neg.i35 = mul i64 %8, -48
  %11 = add i64 %.neg.i35, %10                    ; 2 uses
  %scevgep.i36 = getelementptr i8, ptr %.sroa.0.020.i32, i64 %11
  %scevgep22.i37 = getelementptr i8, ptr %.pn19.i33, i64 %11
  %12 = zext i1 %9 to i64
  %i.at = add nuw nsw i64 %8, %12
  %13 = mul nuw i64 %i.at, 48
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i33, i64 64
  %i.av = load <2 x double>, ptr %i.au, align 8, !tbaa !70 ; 3 uses
  %shift70 = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop71 = fadd <2 x double> %i.av, %shift70
  %i.aw = extractelement <2 x double> %foldExtExtBinop71, i64 0 ; 3 uses
  %i.ax = load double, ptr %i.ar, align 8, !tbaa !179
  %i.ay = load double, ptr %i.as, align 8, !tbaa !180
  %i.az = fadd double %i.ax, %i.ay
  %i.ba = fcmp olt double %i.aw, %i.az
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.020.i32, i64 48, i1 false), !tbaa.struct !166
  %i.bb = ptrtoint ptr %.sroa.0.020.i32 to i64
  %i.bc = sub i64 %i.bb, %i.b
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.preheader.i.i.i.i.i.i51, label %.loopexit.i50

.lr.ph.preheader.i.i.i.i.i.i51:                   ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i36, ptr align 8 %scevgep22.i37, i64 %13, i1 false)
  br label %.loopexit.i50

.loopexit.i50:                                    ; preds = %.lr.ph.preheader.i.i.i.i.i.i51, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i26)
  %.sroa.03.i.i25.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.020.i32, align 8
  %.sroa.7.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %.pn19.i33, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i38, i64 16, i1 false), !tbaa.struct !222
  %i.be = getelementptr inbounds nuw i8, ptr %.pn19.i33, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !179
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn19.i33, i64 24
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !180
  %i.bi = fadd double %i.bf, %i.bh
  %i.bj = fcmp olt double %i.aw, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i47, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i39

.lr.ph.i.i47:                                     ; preds = %bb.h, %.lr.ph.i.i47
  %.sroa.09.012.i.i48 = phi ptr [ %.sroa.0.0.i.i49, %.lr.ph.i.i47 ], [ %.sroa.0.020.i32, %bb.h ] ; 4 uses
  %.sroa.0.0.i.i49 = getelementptr inbounds i8, ptr %.sroa.09.012.i.i48, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09.012.i.i48, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i49, i64 48, i1 false), !tbaa.struct !166
  %i.bk = getelementptr inbounds i8, ptr %.sroa.09.012.i.i48, i64 -80
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !179
  %i.bm = getelementptr inbounds i8, ptr %.sroa.09.012.i.i48, i64 -72
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !180
  %i.bo = fadd double %i.bl, %i.bn
  %i.bp = fcmp olt double %i.aw, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i47, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i39, !llvm.loop !223

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i39: ; preds = %.lr.ph.i.i47, %bb.h
  %.sroa.09.0.lcssa.i.i40 = phi ptr [ %.sroa.0.020.i32, %bb.h ], [ %.sroa.0.0.i.i49, %.lr.ph.i.i47 ] ; 3 uses
  store <2 x double> %.sroa.03.i.i25.sroa.0.0.copyload, ptr %.sroa.09.0.lcssa.i.i40, align 8
  %.sroa.5.0..sroa_idx4.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i40, i64 16
  store <2 x double> %i.av, ptr %.sroa.5.0..sroa_idx4.i.i41, align 8, !tbaa !70
  %.sroa.7.0..sroa_idx8.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i40, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i43, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i26, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i26)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i39, %.loopexit.i50
  %.sroa.0.0.i44 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i32, i64 48 ; 2 uses
  %.not.i45 = icmp eq ptr %.sroa.0.0.i44, %1
  %indvar.next.i46 = add nuw nsw i64 %indvar.i31, 1
  br i1 %.not.i45, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %bb.f, !llvm.loop !224

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16, %.preheader.i27, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::geom::LinearRing *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 5 uses
  %.sroa.4.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::geom::LinearRing *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 48
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.0.i.sroa.0.0.copyload = load <2 x double>, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32
  %i.f = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !70 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !166
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = sdiv exact i64 %i.h, 48                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.h, 96
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.041.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [48 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [48 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !179
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !180
  %i.v = fadd double %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !179
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !180
  %i.aa = fadd double %i.x, %i.z
  %i.ab = fcmp olt double %i.v, %i.aa
  %spec.select.i.i = select i1 %i.ab, i64 %i.p, i64 %i.n ; 4 uses
  %i.ac = getelementptr inbounds [48 x i8], ptr %0, i64 %spec.select.i.i
  %i.ad = getelementptr inbounds [48 x i8], ptr %0, i64 %.041.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !tbaa.struct !166
  %i.ae = icmp slt i64 %spec.select.i.i, %i.k
  br i1 %i.ae, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !226

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.af = and i64 %i.i, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ah = add nsw i64 %i.i, -2
  %i.ai = ashr exact i64 %i.ah, 1
  %i.aj = icmp eq i64 %.0.lcssa.i.i, %i.ai
  br i1 %i.aj, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ak = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !tbaa.struct !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false), !tbaa.struct !222
  br label %.lr.ph.i.preheader.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false), !tbaa.struct !222
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.c, %.thread.i
  %.1.i10.i = phi i64 [ %i.al, %.thread.i ], [ %.0.lcssa.i.i, %bb.c ]
  %shift = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.f, %shift
  %i.ao = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.preheader.i.i
  %.018.i.i.i = phi i64 [ %.0919.i.i1112.i, %bb.d ], [ %.1.i10.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i1112.i = lshr i64 %.0919.in.i.i.i, 1  ; 3 uses
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0919.i.i1112.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !179
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load double, ptr %i.as, align 8, !tbaa !180
  %i.au = fadd double %i.ar, %i.at
  %i.av = fcmp olt double %i.au, %i.ao
  br i1 %i.av, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aw = getelementptr inbounds [48 x i8], ptr %0, i64 %.018.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false), !tbaa.struct !166
  %.not13.i = icmp eq i64 %.0919.i.i1112.i, 0
  br i1 %.not13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !227

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.ax = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 3 uses
  store <2 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x double> %i.f, ptr %.sroa.2.0..sroa_idx25.i.i, align 8, !tbaa !70
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx29.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.ay = icmp sgt i64 %i.h, 48
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !228

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_4geom10LinearRingENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::geom::LinearRing *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 2 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 96
  br i1 %i.d, label %.loopexit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 48                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.l
  br label %bb.c

end_hunk_1
