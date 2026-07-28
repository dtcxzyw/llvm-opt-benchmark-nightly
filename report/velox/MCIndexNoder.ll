inline.NumInlined: 488
inline.NumDeleted: 171
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE31addParentNodesFromVerticalSliceERKN9__gnu_cxx17__normal_iteratorIPNS1_15TemplateSTRNodeIS6_S7_EESt6vectorISC_SaISC_EEEESJ_:bb.a

._crit_edge:                                      ; preds = %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE16createBranchNodeEPKNS1_15TemplateSTRNodeIS6_S7_EESC_.exit, %bb.a, %_ZN4geos5index7strtree19TemplateSTRtreeImplIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE10sortNodesYERKN9__gnu_cxx17__normal_iteratorIPNS1_15TemplateSTRNodeIS6_S7_EESt6vectorISC_SaISC_EEEESJ_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit
  %i.i = icmp eq i64 %i.k, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph32, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %11)
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
  %i.o = load double, ptr %i.e, align 8, !tbaa !74
  %i.p = load double, ptr %i.f, align 8, !tbaa !46
  %i.q = fadd double %i.o, %i.p                   ; 3 uses
  %i.r = load double, ptr %i.m, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !46
  %i.u = fadd double %i.r, %i.t                   ; 3 uses
  %i.v = fcmp olt double %i.q, %i.u
  %i.w = load double, ptr %i.n, align 8, !tbaa !74
  %i.x = getelementptr inbounds i8, ptr %storemerge1831, i64 -40
  %i.y = load double, ptr %i.x, align 8, !tbaa !46
  %i.z = fadd double %i.w, %i.y                   ; 4 uses
  br i1 %i.v, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph32
  %i.aa = fcmp olt double %i.u, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.ab = fcmp olt double %i.q, %i.z
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph32
  %i.ac = fcmp olt double %i.q, %i.z
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ad = fcmp olt double %i.u, %i.z
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.am, %bb.o ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge1831, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %i.ae = load double, ptr %0, align 8, !tbaa !74
  %i.af = load double, ptr %i.g, align 8, !tbaa !46
  %i.ag = fadd double %i.ae, %i.af                ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i ], [ %i.am, %bb.m ] ; 10 uses
  %i.ah = load double, ptr %.sroa.010.1.i.i, align 8, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !46
  %i.ak = fadd double %i.ah, %i.aj
  %i.al = fcmp olt double %i.ak, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 48 ; 2 uses
  br i1 %i.al, label %bb.m, label %.preheader.i.i, !llvm.loop !109

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 6 uses
  %i.an = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !74
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !46
  %i.aq = fadd double %i.an, %i.ap
  %i.ar = fcmp olt double %i.ag, %i.aq
  br i1 %i.ar, label %.preheader.i.i, label %bb.n, !llvm.loop !110

bb.n:                                             ; preds = %.preheader.i.i
  %i.as = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.as, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.1.i.i, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i, !llvm.loop !111

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1831, i64 noundef %i.k)
  %i.at = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.au = sub i64 %i.at, %i.a                     ; 2 uses
  %i.av = icmp sgt i64 %i.au, 768
  br i1 %i.av, label %bb.b, label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  %scevgep = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.020.i.idx = phi i64 [ 48, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.d ] ; 3 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.d ] ; 4 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 5 uses
  %i.f = load <2 x double>, ptr %.sroa.0.020.i.ptr, align 8, !tbaa !51 ; 3 uses
  %shift = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.f, %shift
  %i.g = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.h = load double, ptr %0, align 8, !tbaa !74
  %i.i = load double, ptr %i.e, align 8, !tbaa !46
  %i.j = fadd double %i.h, %i.i
  %i.k = fcmp olt double %i.g, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.c

.loopexit.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.020.i.ptr, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i, i64 32, i1 false), !tbaa.struct !112
  %i.l = load double, ptr %.pn19.i, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !46
  %i.o = fadd double %i.l, %i.n
  %i.p = fcmp olt double %i.g, %i.o
  br i1 %i.p, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.c ] ; 5 uses
  %.sroa.08.012.i.i = phi ptr [ %.sroa.0.013.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.08.012.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.013.i.i, i64 48, i1 false), !tbaa.struct !56
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -48 ; 2 uses
  %i.q = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !74
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -40
  %i.s = load double, ptr %i.r, align 8, !tbaa !46
  %i.t = fadd double %i.q, %i.s
  %i.u = fcmp olt double %i.g, %i.t
  br i1 %i.u, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i, !llvm.loop !113

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.08.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.c ], [ %.sroa.0.013.i.i, %.lr.ph.i.i ] ; 2 uses
  store <2 x double> %i.f, ptr %.sroa.08.0.lcssa.i.i, align 8, !tbaa !51
  %.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx7.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i, i64 32, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i, %.loopexit.i
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 48 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.020.i.add, 768
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %bb.b, !llvm.loop !114

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %.not6.i = icmp eq ptr %i.v, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15
  %.sroa.0.07.i = phi ptr [ %i.ai, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15 ], [ %i.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i12)
  %i.w = load <2 x double>, ptr %.sroa.0.07.i, align 8, !tbaa !51 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i14, i64 32, i1 false), !tbaa.struct !112
  %shift65 = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop66 = fadd <2 x double> %i.w, %shift65
  %i.x = extractelement <2 x double> %foldExtExtBinop66, i64 0 ; 2 uses
  %.sroa.0.011.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -48 ; 2 uses
  %i.y = load double, ptr %.sroa.0.011.i.i, align 8, !tbaa !74
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -40
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46
  %i.ab = fadd double %i.y, %i.aa
  %i.ac = fcmp olt double %i.x, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i20, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i20
  %.sroa.0.013.i.i21 = phi ptr [ %.sroa.0.0.i.i23, %.lr.ph.i.i20 ], [ %.sroa.0.011.i.i, %.lr.ph.i13 ] ; 5 uses
  %.sroa.08.012.i.i22 = phi ptr [ %.sroa.0.013.i.i21, %.lr.ph.i.i20 ], [ %.sroa.0.07.i, %.lr.ph.i13 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.08.012.i.i22, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.013.i.i21, i64 48, i1 false), !tbaa.struct !56
  %.sroa.0.0.i.i23 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i21, i64 -48 ; 2 uses
  %i.ad = load double, ptr %.sroa.0.0.i.i23, align 8, !tbaa !74
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.013.i.i21, i64 -40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !46
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = fcmp olt double %i.x, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i20, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15, !llvm.loop !113

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15: ; preds = %.lr.ph.i.i20, %.lr.ph.i13
  %.sroa.08.0.lcssa.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.013.i.i21, %.lr.ph.i.i20 ] ; 2 uses
  store <2 x double> %i.w, ptr %.sroa.08.0.lcssa.i.i16, align 8, !tbaa !51
  %.sroa.7.0..sroa_idx7.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx7.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i12, i64 32, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i12)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 48 ; 2 uses
  %.not.i19 = icmp eq ptr %i.ai, %1
  br i1 %.not.i19, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13, !llvm.loop !115

bb.e:                                             ; preds = %bb.a
  %i.aj = icmp eq ptr %0, %1
  br i1 %i.aj, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.preheader.i25

.preheader.i25:                                   ; preds = %bb.e
  %.sroa.0.017.i26 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not18.i27 = icmp eq ptr %.sroa.0.017.i26, %1
  br i1 %.not18.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.preheader.i25
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i28
  %.sroa.0.020.i29 = phi ptr [ %.sroa.0.017.i26, %.lr.ph.i28 ], [ %.sroa.0.0.i36, %bb.i ] ; 8 uses
  %.pn19.i30 = phi ptr [ %0, %.lr.ph.i28 ], [ %.sroa.0.020.i29, %bb.i ] ; 5 uses
  %i.al = load <2 x double>, ptr %.sroa.0.020.i29, align 8, !tbaa !51 ; 3 uses
  %shift68 = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fadd <2 x double> %i.al, %shift68
  %i.am = extractelement <2 x double> %foldExtExtBinop69, i64 0 ; 3 uses
  %i.an = load double, ptr %0, align 8, !tbaa !74
  %i.ao = load double, ptr %i.ak, align 8, !tbaa !46
  %i.ap = fadd double %i.an, %i.ao
  %i.aq = fcmp olt double %i.am, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.020.i29, i64 48, i1 false), !tbaa.struct !56
  %i.ar = ptrtoint ptr %.sroa.0.020.i29 to i64
  %i.as = sub i64 %i.ar, %i.b                     ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader.i.i.i.i.i.i43, label %.loopexit.i42

.lr.ph.preheader.i.i.i.i.i.i43:                   ; preds = %bb.g
  %4 = getelementptr inbounds nuw i8, ptr %.pn19.i30, i64 96
  %5 = udiv exact i64 %i.as, 48
  br label %.lr.ph.i.i.i.i.i.i44

.lr.ph.i.i.i.i.i.i44:                             ; preds = %.lr.ph.i.i.i.i.i.i44, %.lr.ph.preheader.i.i.i.i.i.i43
  %.010.i.i.i.i.i.i45 = phi i64 [ %8, %.lr.ph.i.i.i.i.i.i44 ], [ %5, %.lr.ph.preheader.i.i.i.i.i.i43 ] ; 2 uses
  %.069.i.i.i.i.i.i46 = phi ptr [ %7, %.lr.ph.i.i.i.i.i.i44 ], [ %4, %.lr.ph.preheader.i.i.i.i.i.i43 ]
  %.078.i.i.i.i.i.i47 = phi ptr [ %6, %.lr.ph.i.i.i.i.i.i44 ], [ %.sroa.0.020.i29, %.lr.ph.preheader.i.i.i.i.i.i43 ]
  %6 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47, i64 -48 ; 2 uses
  %7 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46, i64 -48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !56
  %8 = add nsw i64 %.010.i.i.i.i.i.i45, -1
  %9 = icmp samesign ugt i64 %.010.i.i.i.i.i.i45, 1
  br i1 %9, label %.lr.ph.i.i.i.i.i.i44, label %.loopexit.i42, !llvm.loop !116

.loopexit.i42:                                    ; preds = %.lr.ph.i.i.i.i.i.i44, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i24)
  %.sroa.7.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %.pn19.i30, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i24, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i31, i64 32, i1 false), !tbaa.struct !112
  %i.au = load double, ptr %.pn19.i30, align 8, !tbaa !74
  %i.av = getelementptr inbounds nuw i8, ptr %.pn19.i30, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !46
  %i.ax = fadd double %i.au, %i.aw
  %i.ay = fcmp olt double %i.am, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i38, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i32

.lr.ph.i.i38:                                     ; preds = %bb.h, %.lr.ph.i.i38
  %.sroa.0.013.i.i39 = phi ptr [ %.sroa.0.0.i.i41, %.lr.ph.i.i38 ], [ %.pn19.i30, %bb.h ] ; 5 uses
  %.sroa.08.012.i.i40 = phi ptr [ %.sroa.0.013.i.i39, %.lr.ph.i.i38 ], [ %.sroa.0.020.i29, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.08.012.i.i40, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.013.i.i39, i64 48, i1 false), !tbaa.struct !56
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i39, i64 -48 ; 2 uses
  %i.az = load double, ptr %.sroa.0.0.i.i41, align 8, !tbaa !74
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.013.i.i39, i64 -40
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !46
  %i.bc = fadd double %i.az, %i.bb
  %i.bd = fcmp olt double %i.am, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i38, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i32, !llvm.loop !113

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i32: ; preds = %.lr.ph.i.i38, %bb.h
  %.sroa.08.0.lcssa.i.i33 = phi ptr [ %.sroa.0.020.i29, %bb.h ], [ %.sroa.0.013.i.i39, %.lr.ph.i.i38 ] ; 2 uses
  store <2 x double> %i.al, ptr %.sroa.08.0.lcssa.i.i33, align 8, !tbaa !51
  %.sroa.7.0..sroa_idx7.i.i35 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i33, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx7.i.i35, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i24, i64 32, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i24)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i32, %.loopexit.i42
  %.sroa.0.0.i36 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i29, i64 48 ; 2 uses
  %.not.i37 = icmp eq ptr %.sroa.0.0.i36, %1
  br i1 %.not.i37, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %bb.f, !llvm.loop !114

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i15, %.preheader.i25, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i = alloca [32 x i8], align 8        ; 5 uses
  %.sroa.3.i = alloca [32 x i8], align 8          ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 48
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !51 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
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
  %i.r = load double, ptr %i.o, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !46
  %i.u = fadd double %i.r, %i.t
  %i.v = load double, ptr %i.q, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !46
  %i.y = fadd double %i.v, %i.x
  %i.z = fcmp olt double %i.u, %i.y
  %spec.select.i.i = select i1 %i.z, i64 %i.p, i64 %i.n ; 4 uses
  %i.aa = getelementptr inbounds [48 x i8], ptr %0, i64 %spec.select.i.i
  %i.ab = getelementptr inbounds [48 x i8], ptr %0, i64 %.041.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !tbaa.struct !56
  %i.ac = icmp slt i64 %spec.select.i.i, %i.k
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !117

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, i64 32, i1 false), !tbaa.struct !112
  br label %.lr.ph.i.preheader.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, i64 32, i1 false), !tbaa.struct !112
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, label %.lr.ph.i.preheader.i.i

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
  %i.ao = load double, ptr %i.an, align 8, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !46
  %i.ar = fadd double %i.ao, %i.aq
  %i.as = fcmp olt double %i.ar, %i.am
  br i1 %i.as, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds [48 x i8], ptr %0, i64 %.018.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false), !tbaa.struct !56
  %.not13.i = icmp eq i64 %.0919.i.i1112.i, 0
  br i1 %.not13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !118

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.au = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store <2 x double> %i.f, ptr %i.au, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx29.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.i.i, i64 32, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  %i.av = icmp sgt i64 %i.h, 48
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesXERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !51 ; 3 uses
  %.sroa.6.0..sroa.011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa.011.0..sroa_idx, i64 32, i1 false)
  %i.r = icmp slt i64 %.010, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.041.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010, %bb.c ] ; 2 uses
  %i.s = shl i64 %.041.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [48 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [48 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = load double, ptr %i.u, align 8, !tbaa !74
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !46
  %i.aa = fadd double %i.x, %i.z
  %i.ab = load double, ptr %i.w, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !46
  %i.ae = fadd double %i.ab, %i.ad
  %i.af = fcmp olt double %i.aa, %i.ae
  %spec.select.i = select i1 %i.af, i64 %i.v, i64 %i.t ; 4 uses
  %i.ag = getelementptr inbounds [48 x i8], ptr %0, i64 %spec.select.i
  %i.ah = getelementptr inbounds [48 x i8], ptr %0, i64 %.041.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false), !tbaa.struct !56
  %i.ai = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !117

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.010, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !56
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
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0919.i.i ; 3 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !46
  %i.aq = fadd double %i.an, %i.ap
  %i.ar = fcmp olt double %i.aq, %i.al
  br i1 %i.ar, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.018.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !tbaa.struct !56
  %i.at = icmp sgt i64 %.0919.i.i, %.010
  br i1 %i.at, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !118

.loopexit:                                        ; preds = %bb.f, %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0919.i.i, %bb.f ], [ %.018.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store <2 x double> %i.q, ptr %i.au, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx29.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, i64 32, i1 false)
  %.not = icmp eq i64 %.010, 0
  %i.av = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit19, label %bb.c, !llvm.loop !120

.loopexit19:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.16", align 1 ; 3 uses
  %4 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %5 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %6 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %7 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %8 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %9 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %10 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.16", align 1 ; 3 uses
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

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit
  %i.k = icmp eq i64 %i.m, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph32, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %11)
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
  %i.q = load double, ptr %i.f, align 8, !tbaa !75
  %i.r = load double, ptr %i.g, align 8, !tbaa !76
  %i.s = fadd double %i.q, %i.r                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !76
  %i.x = fadd double %i.u, %i.w                   ; 3 uses
  %i.y = fcmp olt double %i.s, %i.x
  %i.z = getelementptr inbounds i8, ptr %storemerge1831, i64 -32
  %i.aa = load double, ptr %i.z, align 8, !tbaa !75
  %i.ab = getelementptr inbounds i8, ptr %storemerge1831, i64 -24
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !76
  %i.ad = fadd double %i.aa, %i.ac                ; 4 uses
  br i1 %i.y, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph32
  %i.ae = fcmp olt double %i.x, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.af = fcmp olt double %i.s, %i.ad
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph32
  %i.ag = fcmp olt double %i.s, %i.ad
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ah = fcmp olt double %i.x, %i.ad
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.ar, %bb.o ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge1831, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %i.ai = load double, ptr %i.h, align 8, !tbaa !75
  %i.aj = load double, ptr %i.i, align 8, !tbaa !76
  %i.ak = fadd double %i.ai, %i.aj                ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i ], [ %i.ar, %bb.m ] ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !76
  %i.ap = fadd double %i.am, %i.ao
  %i.aq = fcmp olt double %i.ap, %i.ak
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 48 ; 2 uses
  br i1 %i.aq, label %bb.m, label %.preheader.i.i, !llvm.loop !122

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.at = load double, ptr %i.as, align 8, !tbaa !75
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.av = load double, ptr %i.au, align 8, !tbaa !76
  %i.aw = fadd double %i.at, %i.av
  %i.ax = fcmp olt double %i.ak, %i.aw
  br i1 %i.ax, label %.preheader.i.i, label %bb.n, !llvm.loop !123

bb.n:                                             ; preds = %.preheader.i.i
  %i.ay = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ay, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.1.i.i, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_SR_T0_.exit.i, !llvm.loop !124

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1831, i64 noundef %i.m)
  %i.az = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ba = sub i64 %i.az, %i.a                     ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 768
  br i1 %i.bb, label %bb.b, label %.loopexit, !llvm.loop !121

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEET_SR_SR_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7.i.i26 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::index::chain::MonotoneChain *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %2 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %.sroa.7.i.i13 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::index::chain::MonotoneChain *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %.sroa.7.i.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::index::chain::MonotoneChain *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %3 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 768
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %scevgep = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.020.i.idx = phi i64 [ 48, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.d ] ; 3 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.d ] ; 4 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 64
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !51 ; 3 uses
  %shift = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.h, %shift
  %i.i = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.j = load double, ptr %i.e, align 8, !tbaa !75
  %i.k = load double, ptr %i.f, align 8, !tbaa !76
  %i.l = fadd double %i.j, %i.k
  %i.m = fcmp olt double %i.i, %i.l
  br i1 %i.m, label %.loopexit.i, label %bb.c

.loopexit.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.020.i.ptr, i64 48, i1 false), !tbaa.struct !56
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.03.i.i.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.020.i.ptr, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !tbaa.struct !125
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !76
  %i.r = fadd double %i.o, %i.q
  %i.s = fcmp olt double %i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.09.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.c ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09.012.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i, i64 48, i1 false), !tbaa.struct !56
  %i.t = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -80
  %i.u = load double, ptr %i.t, align 8, !tbaa !75
  %i.v = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -72
  %i.w = load double, ptr %i.v, align 8, !tbaa !76
  %i.x = fadd double %i.u, %i.w
  %i.y = fcmp olt double %i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i, !llvm.loop !126

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.09.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  store <2 x double> %.sroa.03.i.i.sroa.0.0.copyload, ptr %.sroa.09.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 16
  store <2 x double> %i.h, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !tbaa !51
  %.sroa.7.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !tbaa.struct !125
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i, %.loopexit.i
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 48 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.020.i.add, 768
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %bb.b, !llvm.loop !127

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %.not6.i = icmp eq ptr %i.z, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16
  %.sroa.0.07.i = phi ptr [ %i.ao, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16 ], [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i13)
  %.sroa.03.i.i12.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.07.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %i.aa = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !51 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i15, i64 16, i1 false), !tbaa.struct !125
  %shift67 = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop68 = fadd <2 x double> %i.aa, %shift67
  %i.ab = extractelement <2 x double> %foldExtExtBinop68, i64 0 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -32
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !75
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !76
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = fcmp olt double %i.ab, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16

.lr.ph.i.i22:                                     ; preds = %.lr.ph.i14, %.lr.ph.i.i22
  %.sroa.09.012.i.i23 = phi ptr [ %.sroa.0.0.i.i24, %.lr.ph.i.i22 ], [ %.sroa.0.07.i, %.lr.ph.i14 ] ; 4 uses
  %.sroa.0.0.i.i24 = getelementptr inbounds i8, ptr %.sroa.09.012.i.i23, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09.012.i.i23, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i24, i64 48, i1 false), !tbaa.struct !56
  %i.ai = getelementptr inbounds i8, ptr %.sroa.09.012.i.i23, i64 -80
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !75
  %i.ak = getelementptr inbounds i8, ptr %.sroa.09.012.i.i23, i64 -72
  %i.al = load double, ptr %i.ak, align 8, !tbaa !76
  %i.am = fadd double %i.aj, %i.al
  %i.an = fcmp olt double %i.ab, %i.am
  br i1 %i.an, label %.lr.ph.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16, !llvm.loop !126

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16: ; preds = %.lr.ph.i.i22, %.lr.ph.i14
  %.sroa.09.0.lcssa.i.i17 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i14 ], [ %.sroa.0.0.i.i24, %.lr.ph.i.i22 ] ; 3 uses
  store <2 x double> %.sroa.03.i.i12.sroa.0.0.copyload, ptr %.sroa.09.0.lcssa.i.i17, align 8
  %.sroa.5.0..sroa_idx4.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i17, i64 16
  store <2 x double> %i.aa, ptr %.sroa.5.0..sroa_idx4.i.i18, align 8, !tbaa !51
  %.sroa.7.0..sroa_idx8.i.i20 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i17, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i13, i64 16, i1 false), !tbaa.struct !125
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i13)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 48 ; 2 uses
  %.not.i21 = icmp eq ptr %i.ao, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i14, !llvm.loop !128

bb.e:                                             ; preds = %bb.a
  %i.ap = icmp eq ptr %0, %1
  br i1 %i.ap, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.preheader.i27

.preheader.i27:                                   ; preds = %bb.e
  %.sroa.0.017.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not18.i29 = icmp eq ptr %.sroa.0.017.i28, %1
  br i1 %.not18.i29, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.preheader.i27
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i30
  %.sroa.0.020.i31 = phi ptr [ %.sroa.0.017.i28, %.lr.ph.i30 ], [ %.sroa.0.0.i39, %bb.i ] ; 8 uses
  %.pn19.i32 = phi ptr [ %0, %.lr.ph.i30 ], [ %.sroa.0.020.i31, %bb.i ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 64
  %i.at = load <2 x double>, ptr %i.as, align 8, !tbaa !51 ; 3 uses
  %shift70 = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop71 = fadd <2 x double> %i.at, %shift70
  %i.au = extractelement <2 x double> %foldExtExtBinop71, i64 0 ; 3 uses
  %i.av = load double, ptr %i.aq, align 8, !tbaa !75
  %i.aw = load double, ptr %i.ar, align 8, !tbaa !76
  %i.ax = fadd double %i.av, %i.aw
  %i.ay = fcmp olt double %i.au, %i.ax
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.020.i31, i64 48, i1 false), !tbaa.struct !56
  %i.az = ptrtoint ptr %.sroa.0.020.i31 to i64
  %i.ba = sub i64 %i.az, %i.b                     ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.preheader.i.i.i.i.i.i45, label %.loopexit.i44

.lr.ph.preheader.i.i.i.i.i.i45:                   ; preds = %bb.g
  %4 = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 96
  %5 = udiv exact i64 %i.ba, 48
  br label %.lr.ph.i.i.i.i.i.i46

.lr.ph.i.i.i.i.i.i46:                             ; preds = %.lr.ph.i.i.i.i.i.i46, %.lr.ph.preheader.i.i.i.i.i.i45
  %.010.i.i.i.i.i.i47 = phi i64 [ %8, %.lr.ph.i.i.i.i.i.i46 ], [ %5, %.lr.ph.preheader.i.i.i.i.i.i45 ] ; 2 uses
  %.069.i.i.i.i.i.i48 = phi ptr [ %7, %.lr.ph.i.i.i.i.i.i46 ], [ %4, %.lr.ph.preheader.i.i.i.i.i.i45 ]
  %.078.i.i.i.i.i.i49 = phi ptr [ %6, %.lr.ph.i.i.i.i.i.i46 ], [ %.sroa.0.020.i31, %.lr.ph.preheader.i.i.i.i.i.i45 ]
  %6 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i49, i64 -48 ; 2 uses
  %7 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i48, i64 -48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !56
  %8 = add nsw i64 %.010.i.i.i.i.i.i47, -1
  %9 = icmp samesign ugt i64 %.010.i.i.i.i.i.i47, 1
  br i1 %9, label %.lr.ph.i.i.i.i.i.i46, label %.loopexit.i44, !llvm.loop !116

.loopexit.i44:                                    ; preds = %.lr.ph.i.i.i.i.i.i46, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i26)
  %.sroa.03.i.i25.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.020.i31, align 8
  %.sroa.7.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i33, i64 16, i1 false), !tbaa.struct !125
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !75
  %i.be = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !76
  %i.bg = fadd double %i.bd, %i.bf
  %i.bh = fcmp olt double %i.au, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i41, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i34

.lr.ph.i.i41:                                     ; preds = %bb.h, %.lr.ph.i.i41
  %.sroa.09.012.i.i42 = phi ptr [ %.sroa.0.0.i.i43, %.lr.ph.i.i41 ], [ %.sroa.0.020.i31, %bb.h ] ; 4 uses
  %.sroa.0.0.i.i43 = getelementptr inbounds i8, ptr %.sroa.09.012.i.i42, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09.012.i.i42, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i43, i64 48, i1 false), !tbaa.struct !56
  %i.bi = getelementptr inbounds i8, ptr %.sroa.09.012.i.i42, i64 -80
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !75
  %i.bk = getelementptr inbounds i8, ptr %.sroa.09.012.i.i42, i64 -72
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !76
  %i.bm = fadd double %i.bj, %i.bl
  %i.bn = fcmp olt double %i.au, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i41, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i34, !llvm.loop !126

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i34: ; preds = %.lr.ph.i.i41, %bb.h
  %.sroa.09.0.lcssa.i.i35 = phi ptr [ %.sroa.0.020.i31, %bb.h ], [ %.sroa.0.0.i.i43, %.lr.ph.i.i41 ] ; 3 uses
  store <2 x double> %.sroa.03.i.i25.sroa.0.0.copyload, ptr %.sroa.09.0.lcssa.i.i35, align 8
  %.sroa.5.0..sroa_idx4.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i35, i64 16
  store <2 x double> %i.at, ptr %.sroa.5.0..sroa_idx4.i.i36, align 8, !tbaa !51
  %.sroa.7.0..sroa_idx8.i.i38 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i35, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i26, i64 16, i1 false), !tbaa.struct !125
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i26)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i34, %.loopexit.i44
  %.sroa.0.0.i39 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i31, i64 48 ; 2 uses
  %.not.i40 = icmp eq ptr %.sroa.0.0.i39, %1
  br i1 %.not.i40, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit, label %bb.f, !llvm.loop !127

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_T0_.exit.i16, %.preheader.i27, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::index::chain::MonotoneChain *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 5 uses
  %.sroa.4.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::index::chain::MonotoneChain *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 48
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.0.i.sroa.0.0.copyload = load <2 x double>, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32
  %i.f = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !51 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !56
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
  %i.s = load double, ptr %i.r, align 8, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !76
  %i.v = fadd double %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !76
  %i.aa = fadd double %i.x, %i.z
  %i.ab = fcmp olt double %i.v, %i.aa
  %spec.select.i.i = select i1 %i.ab, i64 %i.p, i64 %i.n ; 4 uses
  %i.ac = getelementptr inbounds [48 x i8], ptr %0, i64 %spec.select.i.i
  %i.ad = getelementptr inbounds [48 x i8], ptr %0, i64 %.041.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !tbaa.struct !56
  %i.ae = icmp slt i64 %spec.select.i.i, %i.k
  br i1 %i.ae, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !129

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false), !tbaa.struct !125
  br label %.lr.ph.i.preheader.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false), !tbaa.struct !125
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, label %.lr.ph.i.preheader.i.i

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
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load double, ptr %i.as, align 8, !tbaa !76
  %i.au = fadd double %i.ar, %i.at
  %i.av = fcmp olt double %i.au, %i.ao
  br i1 %i.av, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aw = getelementptr inbounds [48 x i8], ptr %0, i64 %.018.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false), !tbaa.struct !56
  %.not13.i = icmp eq i64 %.0919.i.i1112.i, 0
  br i1 %.not13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !130

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.ax = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 3 uses
  store <2 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x double> %i.f, ptr %.sroa.2.0..sroa_idx25.i.i, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx29.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false), !tbaa.struct !125
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.ay = icmp sgt i64 %i.h, 48
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_SR_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS3_5chain13MonotoneChainENS4_14EnvelopeTraitsEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplIS9_SA_E10sortNodesYERKSG_SM_EUlRKSB_SO_E_EEEvT_SR_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::index::chain::MonotoneChain *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 2 uses
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
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.ay, %.loopexit ] ; 8 uses
  %i.p = getelementptr inbounds [48 x i8], ptr %0, i64 %.010 ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load <2 x double>, ptr %i.p, align 8
  %.sroa.5.0..sroa.011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.q = load <2 x double>, ptr %.sroa.5.0..sroa.011.0..sroa_idx, align 8, !tbaa !51 ; 3 uses
  %.sroa.7.0..sroa.011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa.011.0..sroa_idx, i64 16, i1 false)
  %i.r = icmp slt i64 %.010, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.041.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010, %bb.c ] ; 2 uses
  %i.s = shl i64 %.041.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [48 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [48 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aa = load double, ptr %i.z, align 8, !tbaa !76
  %i.ab = fadd double %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !76
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = fcmp olt double %i.ab, %i.ag
  %spec.select.i = select i1 %i.ah, i64 %i.v, i64 %i.t ; 4 uses
  %i.ai = getelementptr inbounds [48 x i8], ptr %0, i64 %spec.select.i
  %i.aj = getelementptr inbounds [48 x i8], ptr %0, i64 %.041.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 48, i1 false), !tbaa.struct !56
  %i.ak = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !129

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.010, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.am = icmp sgt i64 %.1.i, %.010
  br i1 %i.am, label %.lr.ph.i.preheader.i, label %.loopexit

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %shift = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.q, %shift
  %i.an = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.preheader.i
  %.018.i.i = phi i64 [ %.0919.i.i, %bb.f ], [ %.1.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i.i = sdiv i64 %.0919.in.i.i, 2          ; 4 uses
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0919.i.i ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !76
  %i.at = fadd double %i.aq, %i.as
  %i.au = fcmp olt double %i.at, %i.an
  br i1 %i.au, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.018.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i64 48, i1 false), !tbaa.struct !56
  %i.aw = icmp sgt i64 %.0919.i.i, %.010
  br i1 %i.aw, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !130

.loopexit:                                        ; preds = %bb.f, %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0919.i.i, %bb.f ], [ %.018.i.i, %.lr.ph.i.i ]
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0.lcssa.i.i ; 3 uses
  store <2 x double> %.sroa.0.sroa.0.0.copyload, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x double> %i.q, ptr %.sroa.2.0..sroa_idx25.i, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx29.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  %.not = icmp eq i64 %.010, 0
  %i.ay = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit19, label %bb.c, !llvm.loop !132

.loopexit19:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE17_M_realloc_insertIJRPKS9_SF_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNKSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #15 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !57     ; 4 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !57     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !tbaa.struct !50
  %.promoted.i.i = load double, ptr %i.q, align 1, !alias.scope !133 ; 2 uses
  %.06.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.t = icmp ult ptr %.06.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %_ZNKSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.promoted9.i.i = load double, ptr %i.u, align 8, !tbaa !46, !alias.scope !133
  %.promoted10.i.i = load double, ptr %i.v, align 8, !alias.scope !133
  %.promoted11.i.i = load double, ptr %i.w, align 8, !alias.scope !133
  br label %bb.c

bb.c:                                             ; preds = %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i, %.lr.ph.i.i
  %i.x = phi double [ %.promoted11.i.i, %.lr.ph.i.i ], [ %i.ax, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 2 uses
  %i.y = phi double [ %.promoted10.i.i, %.lr.ph.i.i ], [ %i.ay, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 2 uses
  %i.z = phi double [ %.promoted9.i.i, %.lr.ph.i.i ], [ %i.az, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 3 uses
  %.08.i.i = phi ptr [ %.06.i.i, %.lr.ph.i.i ], [ %.0.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 3 uses
  %.pn7.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %.08.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 6 uses
  %i.aa = phi double [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ba, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ] ; 2 uses
  %i.ab = fcmp uno double %i.z, 0.000000e+00
  %i.ac = load double, ptr %.08.i.i, align 8, !tbaa !74, !noalias !133 ; 3 uses
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 64
  %i.af = load double, ptr %i.ae, align 8, !tbaa !75, !noalias !133
  %i.ag = load <2 x double>, ptr %i.ad, align 8, !tbaa !51, !noalias !133 ; 2 uses
  store <2 x double> %i.ag, ptr %i.u, align 8, !tbaa !51, !alias.scope !133
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 72
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !76, !noalias !133
  %i.aj = extractelement <2 x double> %i.ag, i64 0
  br label %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i

bb.e:                                             ; preds = %bb.c
  %i.ak = fcmp olt double %i.ac, %i.aa
  %i.al = select i1 %i.ak, double %i.ac, double %i.aa ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !46, !noalias !133 ; 3 uses
  %i.ao = fcmp ogt double %i.an, %i.z
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %i.an, ptr %i.u, align 8, !tbaa !46, !alias.scope !133
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi double [ %i.an, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 64
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !75, !noalias !133 ; 3 uses
  %i.as = fcmp olt double %i.ar, %i.y
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.ar, ptr %i.v, align 8, !tbaa !75, !alias.scope !133
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = phi double [ %i.ar, %bb.h ], [ %i.y, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pn7.i.i, i64 72
  %i.av = load double, ptr %i.au, align 8, !tbaa !76, !noalias !133 ; 2 uses
  %i.aw = fcmp ogt double %i.av, %i.x
  br i1 %i.aw, label %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i, label %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i

_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i: ; preds = %bb.i, %bb.d
  %.sink.i.i = phi double [ %i.ai, %bb.d ], [ %i.av, %bb.i ] ; 2 uses
  %.ph21.i.i = phi double [ %i.af, %bb.d ], [ %i.at, %bb.i ]
  %.ph22.i.i = phi double [ %i.aj, %bb.d ], [ %i.ap, %bb.i ]
  %.ph23.i.i = phi double [ %i.ac, %bb.d ], [ %i.al, %bb.i ]
  store double %.sink.i.i, ptr %i.w, align 8, !tbaa !76, !alias.scope !133
  br label %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i

_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i: ; preds = %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i, %bb.i
  %i.ax = phi double [ %i.x, %bb.i ], [ %.sink.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i ]
  %i.ay = phi double [ %i.at, %bb.i ], [ %.ph21.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i ]
  %i.az = phi double [ %i.ap, %bb.i ], [ %.ph22.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i ]
  %i.ba = phi double [ %i.al, %bb.i ], [ %.ph23.i.i, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.sink.split.i.i ] ; 2 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 48 ; 2 uses
  %i.bb = icmp ult ptr %.0.i.i, %i.s
  br i1 %i.bb, label %bb.c, label %.loopexit, !llvm.loop !106

.loopexit:                                        ; preds = %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i, %_ZNKSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE12_M_check_lenEmPKc.exit
  %.lcssa.i.i = phi double [ %.promoted.i.i, %_ZNKSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %_ZN4geos5index7strtree14EnvelopeTraits15expandToIncludeERNS_4geom8EnvelopeERKS4_.exit.i.i ]
  store double %.lcssa.i.i, ptr %i.q, align 1, !alias.scope !133
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.s, ptr %i.bc, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.r, ptr %i.bd, align 8, !tbaa !53
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.p, %.loopexit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %i.c, %.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !tbaa.struct !56, !alias.scope !136
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !62

_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.bf, %.lr.ph.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, %.lr.ph.i.i.i.i28
  %.012.i.i.i.i29 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i28 ], [ %i.bg, %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 2 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i28 ], [ %1, %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i30, i64 48, i1 false), !tbaa.struct !56, !alias.scope !140
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 48 ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.bh, %i.b
  br i1 %.not.i.i.i.i31, label %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33, label %.lr.ph.i.i.i.i28, !llvm.loop !62

_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33: ; preds = %.lr.ph.i.i.i.i28, %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit
  %.0.lcssa.i.i.i.i32 = phi ptr [ %i.bg, %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ], [ %i.bi, %.lr.ph.i.i.i.i28 ]
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !55
  store ptr %.0.lcssa.i.i.i.i32, ptr %i.a, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

declare void @_ZNK4geos5index5chain13MonotoneChain15computeOverlapsEPKS2_dPNS1_26MonotoneChainOverlapActionE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }

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
!8 = !{!9, !30, i64 136}
!9 = !{!"_ZTSN4geos6noding12MCIndexNoderE", !10, i64 0, !14, i64 16, !19, i64 40, !30, i64 136, !5, i64 144, !31, i64 152, !32, i64 160}
!10 = !{!"_ZTSN4geos6noding15SinglePassNoderE", !11, i64 0, !12, i64 8}
!11 = !{!"_ZTSN4geos6noding5NoderE"}
!12 = !{!"p1 _ZTSN4geos6noding18SegmentIntersectorE", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"_ZTSSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE", !15, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIN4geos5index5chain13MonotoneChainESaIS3_EE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN4geos5index5chain13MonotoneChainESaIS3_EE12_Vector_implE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN4geos5index5chain13MonotoneChainESaIS3_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 _ZTSN4geos5index5chain13MonotoneChainE", !13, i64 0}
!19 = !{!"_ZTSN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE", !20, i64 0, !21, i64 8}
!20 = !{!"_ZTSN4geos5index12SpatialIndexE"}
!21 = !{!"_ZTSN4geos5index7strtree19TemplateSTRtreeImplIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE", !22, i64 0, !24, i64 40, !28, i64 64, !29, i64 72, !29, i64 80}
!22 = !{!"_ZTSSt5mutex", !23, i64 0}
!23 = !{!"_ZTSSt12__mutex_base", !6, i64 0}
!24 = !{!"_ZTSSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE", !25, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE12_Vector_implE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE", !13, i64 0}
!29 = !{!"long", !6, i64 0}
!30 = !{!"p1 _ZTSSt6vectorIPN4geos6noding13SegmentStringESaIS3_EE", !13, i64 0}
!31 = !{!"double", !6, i64 0}
!32 = !{!"bool", !6, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p2 _ZTSN4geos6noding13SegmentStringE", !35, i64 0}
!35 = !{!"any p2 pointer", !13, i64 0}
!36 = !{!9, !32, i64 160}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTSN4geos6noding13SegmentStringE", !13, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !7, i64 0}
!43 = !{ptr @_ZN4geos6noding12MCIndexNoder3addEPNS0_13SegmentStringE}
!44 = !{!18, !18, i64 0}
!45 = !{!9, !31, i64 152}
!46 = !{!47, !31, i64 8}
!47 = !{!"_ZTSN4geos4geom8EnvelopeE", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!48 = !{!27, !28, i64 8}
!49 = !{!27, !28, i64 16}
!50 = !{i64 0, i64 8, !51, i64 8, i64 8, !51, i64 16, i64 8, !51, i64 24, i64 8, !51}
!51 = !{!31, !31, i64 0}
!52 = !{!6, !6, i64 0}
!53 = !{!54, !28, i64 40}
!54 = !{!"_ZTSN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE", !47, i64 0, !6, i64 32, !28, i64 40}
!55 = !{!27, !28, i64 0}
!56 = !{i64 0, i64 8, !51, i64 8, i64 8, !51, i64 16, i64 8, !51, i64 24, i64 8, !51, i64 32, i64 8, !52, i64 40, i64 8, !57}
!57 = !{!28, !28, i64 0}
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!60 = distinct !{!60, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_"}
!61 = distinct !{!61, !60, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!10, !12, i64 8}
!65 = !{!66, !31, i64 16}
!66 = !{!"_ZTSN4geos4geom10CoordinateE", !31, i64 0, !31, i64 8, !31, i64 16}
!67 = !{!12, !12, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTSN4geos6noding12MCIndexNoder20SegmentOverlapActionE", !13, i64 0}
!70 = !{!71, !72, i64 16}
!71 = !{!"_ZTSZN4geos6noding12MCIndexNoder15intersectChainsEvE3$_0", !18, i64 0, !69, i64 8, !72, i64 16}
!72 = !{!"p1 _ZTSN4geos6noding12MCIndexNoderE", !13, i64 0}
!73 = !{!21, !28, i64 64}
!74 = !{!47, !31, i64 0}
!75 = !{!47, !31, i64 16}
!76 = !{!47, !31, i64 24}
!77 = !{!9, !5, i64 144}
!78 = distinct !{null}
!79 = !{!80, !13, i64 8}
!80 = !{!"_ZTSN4geos5index5chain13MonotoneChainE", !81, i64 0, !13, i64 8, !29, i64 16, !29, i64 24, !47, i64 32}
!81 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !13, i64 0}
!82 = !{!83, !12, i64 104}
!83 = !{!"_ZTSN4geos6noding12MCIndexNoder20SegmentOverlapActionE", !84, i64 0, !12, i64 104}
!84 = !{!"_ZTSN4geos5index5chain26MonotoneChainOverlapActionE", !85, i64 8, !85, i64 56}
!85 = !{!"_ZTSN4geos4geom11LineSegmentE", !66, i64 0, !66, i64 24}
!86 = !{i64 8}
!87 = !{!21, !29, i64 80}
!88 = !{!21, !29, i64 72}
!89 = distinct !{!89, !63}
!90 = distinct !{!90, !63}
!91 = !{!92, !94}
!92 = distinct !{!92, !93, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!93 = distinct !{!93, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_"}
!94 = distinct !{!94, !93, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!95 = !{!96, !28, i64 0}
!96 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_5chain13MonotoneChainENS3_14EnvelopeTraitsEEESt6vectorISA_SaISA_EEEE", !28, i64 0}
!97 = !{!71, !18, i64 0}
!98 = !{!71, !69, i64 8}
!99 = distinct !{null, null}
!100 = distinct !{!100, !63}
!101 = distinct !{!101, !63}
!102 = !{!29, !29, i64 0}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS8_SA_: argument 0"}
!105 = distinct !{!105, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS8_SA_"}
!106 = distinct !{!106, !63}
!107 = distinct !{!107, !63}
!108 = distinct !{!108, !63}
!109 = distinct !{!109, !63}
!110 = distinct !{!110, !63}
!111 = distinct !{!111, !63}
!112 = !{i64 0, i64 8, !51, i64 8, i64 8, !51, i64 16, i64 8, !52, i64 24, i64 8, !57}
!113 = distinct !{!113, !63}
!114 = distinct !{!114, !63}
!115 = distinct !{!115, !63}
!116 = distinct !{!116, !63}
!117 = distinct !{!117, !63}
!118 = distinct !{!118, !63}
!119 = distinct !{!119, !63}
!120 = distinct !{!120, !63}
!121 = distinct !{!121, !63}
!122 = distinct !{!122, !63}
!123 = distinct !{!123, !63}
!124 = distinct !{!124, !63}
!125 = !{i64 0, i64 8, !52, i64 8, i64 8, !57}
!126 = distinct !{!126, !63}
!127 = distinct !{!127, !63}
!128 = distinct !{!128, !63}
!129 = distinct !{!129, !63}
!130 = distinct !{!130, !63}
!131 = distinct !{!131, !63}
!132 = distinct !{!132, !63}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS8_SA_: argument 0"}
!135 = distinct !{!135, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS8_SA_"}
!136 = !{!137, !139}
!137 = distinct !{!137, !138, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!138 = distinct !{!138, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_"}
!139 = distinct !{!139, !138, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!140 = !{!141, !143}
!141 = distinct !{!141, !142, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!142 = distinct !{!142, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_"}
!143 = distinct !{!143, !142, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
end_hunk_0
