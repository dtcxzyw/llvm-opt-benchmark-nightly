inline.NumInlined: 851
inline.NumDeleted: 397
begin_hunk_0_@_ZN4geos9precision16MinimumClearance7computeEv:bb.a
  %1 = alloca %"class.geos::index::strtree::TemplateSTRNodePair", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.31", align 1 ; 5 uses
  %4 = alloca %"class.std::priority_queue", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.31", align 1 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4geos9precision16MinimumClearance7computeEv:bb.a

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bn = getelementptr inbounds i8, ptr %.val3185.i.i.i.i.i, i64 -24 ; 3 uses
  %.sroa.03.i.i.i.i.i.i.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.bn, align 8
  %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.val3185.i.i.i.i.i, i64 -8
  %.sroa.46.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %.val3084.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !79
end_hunk_1
begin_hunk_2_@_ZN4geos9precision16MinimumClearance7computeEv:bb.a
_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i.i.i, %bb.j ], [ %.097.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.06.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.cu = getelementptr inbounds [24 x i8], ptr %.val3084.i.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store <2 x ptr> %.sroa.03.i.i.i.i.i.i.i.i.sroa.0.0.copyload, ptr %i.cu, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store double %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterINS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEEEvT_SR_SR_RT0_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_T1_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7.i.i26 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %2 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %.sroa.7.i.i13 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %.sroa.7.i.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 4 uses
  %3 = alloca %"class.geos::index::strtree::TemplateSTRNode", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
end_hunk_3
begin_hunk_4_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_:bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.03.i.i.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.020.i.ptr, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !tbaa.struct !145
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
end_hunk_4
begin_hunk_5_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_:bb.a

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.09.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  store <2 x double> %.sroa.03.i.i.sroa.0.0.copyload, ptr %.sroa.09.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 16
  store <2 x double> %i.h, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !tbaa !74
  %.sroa.7.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.d

end_hunk_5
begin_hunk_6_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_:bb.a

.lr.ph.i14:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i16
  %.sroa.0.07.i = phi ptr [ %i.ao, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i16 ], [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i13)
  %.sroa.03.i.i12.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.07.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %i.aa = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !74 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 32
end_hunk_6
begin_hunk_7_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_:bb.a

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i16: ; preds = %.lr.ph.i.i22, %.lr.ph.i14
  %.sroa.09.0.lcssa.i.i17 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i14 ], [ %.sroa.0.0.i.i24, %.lr.ph.i.i22 ] ; 3 uses
  store <2 x double> %.sroa.03.i.i12.sroa.0.0.copyload, ptr %.sroa.09.0.lcssa.i.i17, align 8
  %.sroa.5.0..sroa_idx4.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i17, i64 16
  store <2 x double> %i.aa, ptr %.sroa.5.0..sroa_idx4.i.i18, align 8, !tbaa !74
  %.sroa.7.0..sroa_idx8.i.i20 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i17, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i13, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i13)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 48 ; 2 uses
  %.not.i21 = icmp eq ptr %i.ao, %1
end_hunk_7
begin_hunk_8_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_:bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i26)
  %.sroa.03.i.i25.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.020.i31, align 8
  %.sroa.7.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i33, i64 16, i1 false), !tbaa.struct !145
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn19.i32, i64 16
end_hunk_8
begin_hunk_9_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_:bb.a

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_T0_.exit.i34: ; preds = %.lr.ph.i.i41, %bb.h
  %.sroa.09.0.lcssa.i.i35 = phi ptr [ %.sroa.0.020.i31, %bb.h ], [ %.sroa.0.0.i.i43, %.lr.ph.i.i41 ] ; 3 uses
  store <2 x double> %.sroa.03.i.i25.sroa.0.0.copyload, ptr %.sroa.09.0.lcssa.i.i35, align 8
  %.sroa.5.0..sroa_idx4.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i35, i64 16
  store <2 x double> %i.at, ptr %.sroa.5.0..sroa_idx4.i.i36, align 8, !tbaa !74
  %.sroa.7.0..sroa_idx8.i.i38 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i35, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i26, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i26)
  br label %bb.i

end_hunk_9
begin_hunk_10_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_T0_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 5 uses
  %.sroa.4.i = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
end_hunk_10
begin_hunk_11_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_:bb.a
.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_RT0_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.0.i.sroa.0.0.copyload = load <2 x double>, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32
  %i.f = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !74 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16
end_hunk_11
begin_hunk_12_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_:bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = sdiv exact i64 %i.h, 48                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
end_hunk_12
begin_hunk_13_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_:bb.a
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !tbaa.struct !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false), !tbaa.struct !145
  br label %.lr.ph.i.preheader.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false), !tbaa.struct !145
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_RT0_.exit, label %.lr.ph.i.preheader.i.i
end_hunk_13
begin_hunk_14_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_:bb.a
_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_SS_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.ax = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 3 uses
  store <2 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x double> %i.f, ptr %.sroa.2.0..sroa_idx25.i.i, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx29.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.ay = icmp sgt i64 %i.h, 48
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !151
end_hunk_14
begin_hunk_15_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4 = alloca { %"union.geos::index::strtree::TemplateSTRNode<const geos::operation::distance::FacetSequence *, geos::index::strtree::EnvelopeTraits>::Body", ptr }, align 8 ; 2 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
end_hunk_15
begin_hunk_16_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_:bb.a
bb.c:                                             ; preds = %.loopexit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.ay, %.loopexit ] ; 8 uses
  %i.p = getelementptr inbounds [48 x i8], ptr %0, i64 %.010 ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load <2 x double>, ptr %i.p, align 8
  %.sroa.5.0..sroa.011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.q = load <2 x double>, ptr %.sroa.5.0..sroa.011.0..sroa_idx, align 8, !tbaa !74 ; 3 uses
  %.sroa.7.0..sroa.011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
end_hunk_16
begin_hunk_17_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19TemplateSTRtreeImplISA_SB_E10sortNodesYERKSH_SN_EUlRKSC_SP_E_EEEvT_SS_RT0_:bb.a
.loopexit:                                        ; preds = %bb.f, %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0919.i.i, %bb.f ], [ %.018.i.i, %.lr.ph.i.i ]
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0.lcssa.i.i ; 3 uses
  store <2 x double> %.sroa.0.sroa.0.0.copyload, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x double> %i.q, ptr %.sroa.2.0..sroa_idx25.i, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
end_hunk_17
begin_hunk_18_@pthread_mutex_unlock
; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISD_SaISD_EENS2_23TemplateSTRtreeDistanceIS8_S9_SC_E16PairQueueCompareEE4pushERKSD_(ptr noundef nonnull align 8 captures(none) dereferenceable(25) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_18
begin_hunk_19_@_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISD_SaISD_EENS2_23TemplateSTRtreeDistanceIS8_S9_SC_E16PairQueueCompareEE4pushERKSD_:bb.a
  %.val = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i ] ; 3 uses
  %.val3 = phi ptr [ %.val3.pre, %bb.b ], [ %i.r, %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i ] ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %.val, i64 -24
  %.sroa.07.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.x, align 8
  %.sroa.412.0..sroa.0.0..val3.sroa_idx.i = getelementptr inbounds i8, ptr %.val, i64 -8
  %.sroa.412.0.copyload.i = load double, ptr %.sroa.412.0..sroa.0.0..val3.sroa_idx.i, align 8, !tbaa !74 ; 2 uses
  %i.y = ptrtoint ptr %.val to i64
end_hunk_19
begin_hunk_20_@_ZNSt14priority_queueIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISD_SaISD_EENS2_23TemplateSTRtreeDistanceIS8_S9_SC_E16PairQueueCompareEE4pushERKSD_:bb.a
_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree19TemplateSTRNodePairIPKNS2_9operation8distance13FacetSequenceENS4_14EnvelopeTraitsEZNS2_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESt6vectorISF_SaISF_EEEENS4_23TemplateSTRtreeDistanceISA_SB_SE_E16PairQueueCompareEEvT_SO_T0_.exit: ; preds = %.lr.ph.i.i, %bb.f, %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE9push_backERKSD_.exit
  %.0.lcssa.i.i = phi i64 [ %i.ac, %_ZNSt6vectorIN4geos5index7strtree19TemplateSTRNodePairIPKNS0_9operation8distance13FacetSequenceENS2_14EnvelopeTraitsEZNS0_9precision16MinimumClearance7computeEvE20MinClearanceDistanceEESaISD_EE9push_backERKSD_.exit ], [ %.097.i.i, %bb.f ], [ %.06.i.i, %.lr.ph.i.i ]
  %i.aj = getelementptr inbounds [24 x i8], ptr %.val3, i64 %.0.lcssa.i.i ; 2 uses
  store <2 x ptr> %.sroa.07.i.sroa.0.0.copyload, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store double %.sroa.412.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !74
  ret void
}

end_hunk_20
