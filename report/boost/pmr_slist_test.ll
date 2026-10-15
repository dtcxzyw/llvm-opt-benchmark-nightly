Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pmr_slist_test?download=true
inline.NumInlined: 986
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5boost9container5slistI5emptyvEC2ERKS3_:bb.a
_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI5emptyEENS_9intrusive10slist_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEEmLm2EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container5slistI5emptyvE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23, !noalias !108
  store ptr %i.b, ptr %0, align 8, !tbaa !31, !alias.scope !107
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container5slistI5emptyvE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !31, !alias.scope !111
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat($_ZN5boost9container5slistI5emptyvEC5EOS3_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.a, ptr %i.a, align 8, !tbaa !23
  store i64 0, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.c = icmp eq ptr %1, %0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23   ; 4 uses
  %.not41.i.i.i.i = icmp eq ptr %i.d, null
  %i.e = icmp eq ptr %i.d, %i.b                   ; 2 uses
  %or.cond.i.i.i.i = or i1 %.not41.i.i.i.i, %i.e
  br i1 %or.cond.i.i.i.i, label %bb.c, label %.preheader45.i.i.i.i

.preheader45.i.i.i.i:                             ; preds = %bb.b, %.preheader45.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.f, %.preheader45.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i, label %.preheader45.i.i.i.i, !llvm.loop !7

_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i: ; preds = %.preheader45.i.i.i.i
  store ptr %i.a, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i, %bb.b
  %i.g = icmp eq ptr %i.d, %i.a
  %i.h = select i1 %i.g, ptr %i.b, ptr %i.d
  %i.i = select i1 %i.e, ptr %i.a, ptr %i.h
  store ptr %i.i, ptr %i.a, align 8, !tbaa !23
  store ptr %i.b, ptr %i.b, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.j, ptr %0, align 8, !tbaa !26
  store i64 0, ptr %1, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvEC2ERKS3_RKNS0_13new_allocatorIS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat($_ZN5boost9container5slistI5emptyvEC5ERKS3_RKNS0_13new_allocatorIS2_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.a, ptr %i.a, align 8, !tbaa !23
  store i64 0, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23, !noalias !122 ; 2 uses
  %.not4.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i, label %_ZN5boost9container5slistI5emptyvE12insert_afterINS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEEEENS6_ISK_Lb0EEESL_T_SN_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISN_mEE5valueoosr3dtl17is_input_iteratorISN_EE5valueL_ZNSO_7is_sameINSO_17integral_constantIjLj1EEESS_E5valueEEENSO_13enable_if_natEE4typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %.sroa.07.0 = phi ptr [ %i.i, %.noexc ], [ %i.c, %bb.a ]
  %i.d = phi ptr [ %i.e, %.noexc ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #12
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !23, !noalias !123
  store ptr %i.f, ptr %i.e, align 8, !tbaa !23, !noalias !123
  store ptr %i.e, ptr %i.d, align 8, !tbaa !23, !noalias !123
  %i.g = load i64, ptr %0, align 8, !tbaa !26, !noalias !123
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %0, align 8, !tbaa !26, !noalias !123
  %i.i = load ptr, ptr %.sroa.07.0, align 8, !tbaa !23, !noalias !124 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.b
  br i1 %.not.i, label %_ZN5boost9container5slistI5emptyvE12insert_afterINS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEEEENS6_ISK_Lb0EEESL_T_SN_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISN_mEE5valueoosr3dtl17is_input_iteratorISN_EE5valueL_ZNSO_7is_sameINSO_17integral_constantIjLj1EEESS_E5valueEEENSO_13enable_if_natEE4typeE.exit, label %.lr.ph.i, !llvm.loop !6

_ZN5boost9container5slistI5emptyvE12insert_afterINS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEEEENS6_ISK_Lb0EEESL_T_SN_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISN_mEE5valueoosr3dtl17is_input_iteratorISN_EE5valueL_ZNSO_7is_sameINSO_17integral_constantIjLj1EEESS_E5valueEEENSO_13enable_if_natEE4typeE.exit: ; preds = %.noexc, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.k, %i.a
  br i1 %.not11.i.i.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI5emptyEENS_9intrusive10slist_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEEmLm2EvEEED2Ev.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.013.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i.i, i64 noundef 16) #11
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.a
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI5emptyEENS_9intrusive10slist_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEEmLm2EvEEED2Ev.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI5emptyEENS_9intrusive10slist_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEEmLm2EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvEC2EOS3_RKNS0_13new_allocatorIS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat($_ZN5boost9container5slistI5emptyvEC5EOS3_RKNS0_13new_allocatorIS2_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.a, ptr %i.a, align 8, !tbaa !23
  store i64 0, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.c = icmp eq ptr %1, %0
  br i1 %i.c, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE4swapERSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23   ; 4 uses
  %.not41.i.i.i = icmp eq ptr %i.d, null
  %i.e = icmp eq ptr %i.d, %i.b                   ; 2 uses
  %or.cond.i.i.i = or i1 %.not41.i.i.i, %i.e
  br i1 %or.cond.i.i.i, label %bb.c, label %.preheader45.i.i.i

.preheader45.i.i.i:                               ; preds = %bb.b, %.preheader45.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.f, %.preheader45.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i, label %.preheader45.i.i.i, !llvm.loop !7

_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i: ; preds = %.preheader45.i.i.i
  store ptr %i.a, ptr %.0.i.i.i.i.i, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i
  %i.g = icmp eq ptr %i.d, %i.a
  %i.h = select i1 %i.g, ptr %i.b, ptr %i.d
  %i.i = select i1 %i.e, ptr %i.a, ptr %i.h
  store ptr %i.i, ptr %i.a, align 8, !tbaa !23
  store ptr %i.b, ptr %i.b, align 8, !tbaa !23
  br label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE4swapERSG_.exit

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE4swapERSG_.exit: ; preds = %bb.a, %bb.c
  %i.j = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.j, ptr %0, align 8, !tbaa !26
  store i64 0, ptr %1, align 8, !tbaa !26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23, !noalias !127
  store ptr %i.b, ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat($_ZN5boost9container5slistI5emptyvED5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not11.i.i.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI5emptyEENS_9intrusive10slist_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEEmLm2EvEEED2Ev.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.013.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i.i, i64 noundef 16) #11
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI5emptyEENS_9intrusive10slist_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEEmLm2EvEEED2Ev.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI5emptyEENS_9intrusive10slist_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEEmLm2EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost9container5slistI5emptyvEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZN5boost9container5slistI5emptyvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEEEEvT_SM_PNS_11move_detail22disable_if_convertibleISM_mvE4typeE.exit, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23, !noalias !147 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23, !noalias !148 ; 4 uses
  %.not17.i13 = icmp eq ptr %i.d, %i.c
  br i1 %.not17.i13, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %.not17.i18 = icmp eq ptr %i.b, %i.a
  br i1 %.not17.i18, label %bb.c, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %.not17.i = icmp eq ptr %i.g, %i.a
  br i1 %.not17.i, label %bb.c, label %.lr.ph, !llvm.loop !138

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.09.021.i14 = phi ptr [ %i.f, %.lr.ph.i ], [ %i.d, %.lr.ph.i.preheader ] ; 3 uses
  %i.e = phi ptr [ %i.g, %.lr.ph.i ], [ %i.b, %.lr.ph.i.preheader ]
  %i.f = load ptr, ptr %.sroa.09.021.i14, align 8, !tbaa !23 ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !23   ; 3 uses
  %.not.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !138

.critedge.i:                                      ; preds = %.lr.ph, %bb.b
  %2 = phi ptr [ %i.d, %bb.b ], [ %i.f, %.lr.ph ]
  %3 = phi ptr [ %i.b, %bb.b ], [ %i.g, %.lr.ph ] ; 2 uses
  %.sroa.013.0.lcssa.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.09.021.i14, %.lr.ph ] ; 2 uses
  %.not18.i = icmp eq ptr %3, %i.a
  br i1 %.not18.i, label %bb.c, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %.sroa.06.0.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %3, %.critedge.i ]
  %i.h = phi ptr [ %i.i, %.lr.ph.i.i ], [ %.sroa.013.0.lcssa.i, %.critedge.i ] ; 2 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #12, !noalias !149 ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !23, !noalias !150
  store ptr %i.j, ptr %i.i, align 8, !tbaa !23, !noalias !150
  store ptr %i.i, ptr %i.h, align 8, !tbaa !23, !noalias !150
  %i.k = load i64, ptr %0, align 8, !tbaa !26, !noalias !150
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %0, align 8, !tbaa !26, !noalias !150
  %i.m = load ptr, ptr %.sroa.06.0.i, align 8, !tbaa !23, !noalias !149 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container5slistI5emptyvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEEEEvT_SM_PNS_11move_detail22disable_if_convertibleISM_mvE4typeE.exit, label %.lr.ph.i.i, !llvm.loop !6

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %.critedge.i
  %4 = phi ptr [ %2, %.critedge.i ], [ %i.d, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.sroa.013.0.lcssa.i14 = phi ptr [ %.sroa.013.0.lcssa.i, %.critedge.i ], [ %i.c, %.lr.ph.i.preheader ], [ %.sroa.09.021.i14, %.lr.ph.i ]
  store ptr %i.c, ptr %.sroa.013.0.lcssa.i14, align 8, !tbaa !23, !noalias !151
  %.not9.i.i.i = icmp eq ptr %4, %i.c
  br i1 %.not9.i.i.i, label %_ZN5boost9container5slistI5emptyvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEEEEvT_SM_PNS_11move_detail22disable_if_convertibleISM_mvE4typeE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %4, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr %.010.i.i.i, align 8, !tbaa !23, !noalias !151 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.010.i.i.i, i64 noundef 16) #11, !noalias !151
  %i.o = load i64, ptr %0, align 8, !tbaa !26, !noalias !151
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %0, align 8, !tbaa !26, !noalias !151
  %.not.i.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i.i, label %_ZN5boost9container5slistI5emptyvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEEEEvT_SM_PNS_11move_detail22disable_if_convertibleISM_mvE4typeE.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5boost9container5slistI5emptyvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb1EEEEEvT_SM_PNS_11move_detail22disable_if_convertibleISM_mvE4typeE.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE5clearEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not11.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE17clear_and_disposeINS6_24allocator_node_destroyerINS3_13new_allocatorISA_EEEEEEvT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.013.i.i.i, align 8, !tbaa !23 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 16) #11
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE17clear_and_disposeINS6_24allocator_node_destroyerINS3_13new_allocatorISA_EEEEEEvT_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE17clear_and_disposeINS6_24allocator_node_destroyerINS3_13new_allocatorISA_EEEEEEvT_.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  store ptr %i.a, ptr %i.a, align 8, !tbaa !23
  store i64 0, ptr %0, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost9container5slistI5emptyvEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not11.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.c = load ptr, ptr %.013.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i.i, i64 noundef 16) #11
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  store ptr %i.a, ptr %i.a, align 8, !tbaa !23
  store i64 0, ptr %0, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  %.not41.i.i.i.i.i = icmp eq ptr %i.e, null
  %i.f = icmp eq ptr %i.e, %i.d                   ; 2 uses
  %or.cond.i.i.i.i.i = or i1 %.not41.i.i.i.i.i, %i.f
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE16priv_move_assignEOS3_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader45.i.i.i.i.i

.preheader45.i.i.i.i.i:                           ; preds = %.loopexit, %.preheader45.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.g, %.preheader45.i.i.i.i.i ], [ %i.d, %.loopexit ] ; 2 uses
  %i.g = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i.i, label %.preheader45.i.i.i.i.i, !llvm.loop !7

_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i.i: ; preds = %.preheader45.i.i.i.i.i
  store ptr %i.a, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN5boost9container5slistI5emptyvE16priv_move_assignEOS3_NS_11move_detail5bool_ILb1EEE.exit

_ZN5boost9container5slistI5emptyvE16priv_move_assignEOS3_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %.loopexit, %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i.i
  %i.h = icmp eq ptr %i.e, %i.a
  %i.i = select i1 %i.h, ptr %i.d, ptr %i.e
  %i.j = select i1 %i.f, ptr %i.a, ptr %i.i
  store ptr %i.j, ptr %i.a, align 8, !tbaa !23
  store ptr %i.d, ptr %i.d, align 8, !tbaa !23
  %i.k = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.k, ptr %0, align 8, !tbaa !26
  store i64 0, ptr %1, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container5slistI5emptyvE16priv_move_assignEOS3_NS_11move_detail5bool_ILb1EEE.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE16priv_move_assignEOS3_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not11.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 16) #11
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE5clearEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZN5boost9container5slistI5emptyvE5clearEv.exit:  ; preds = %.lr.ph.i.i.i.i, %bb.a
  store ptr %i.a, ptr %i.a, align 8, !tbaa !23
  store i64 0, ptr %0, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.e = icmp eq ptr %1, %0
  br i1 %i.e, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvEaSEOSG_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container5slistI5emptyvE5clearEv.exit
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  %.not41.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = icmp eq ptr %i.f, %i.d                   ; 2 uses
  %or.cond.i.i.i.i = or i1 %.not41.i.i.i.i, %i.g
  br i1 %or.cond.i.i.i.i, label %bb.c, label %.preheader45.i.i.i.i

.preheader45.i.i.i.i:                             ; preds = %bb.b, %.preheader45.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.h, %.preheader45.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i, label %.preheader45.i.i.i.i, !llvm.loop !7

_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i: ; preds = %.preheader45.i.i.i.i
  store ptr %i.a, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i
  %i.i = icmp eq ptr %i.f, %i.a
  %i.j = select i1 %i.i, ptr %i.d, ptr %i.f
  %i.k = select i1 %i.g, ptr %i.a, ptr %i.j
  store ptr %i.k, ptr %i.a, align 8, !tbaa !23
  store ptr %i.d, ptr %i.d, align 8, !tbaa !23
  br label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvEaSEOSG_.exit

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvEaSEOSG_.exit: ; preds = %_ZN5boost9container5slistI5emptyvE5clearEv.exit, %bb.c
  %i.l = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.l, ptr %0, align 8, !tbaa !26
  store i64 0, ptr %1, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost9container5slistI5emptyvEaSESt16initializer_listIS2_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.sroa.017.0.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.013.0.i, %bb.b ] ; 3 uses
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.f, %bb.b ]  ; 3 uses
  %.sroa.013.0.i = load ptr, ptr %.sroa.017.0.i, align 8, !tbaa !23 ; 3 uses
  %i.c = icmp ne ptr %.sroa.013.0.i, %i.b         ; 2 uses
  %i.d = icmp ne ptr %.0.i, %i.a                  ; 2 uses
  %i.e = select i1 %i.c, i1 %i.d, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %i.e, label %bb.b, label %bb.c, !llvm.loop !8

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.lr.ph.i.i, label %bb.d

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %.0.i, %bb.c ]
  %i.g = phi ptr [ %i.h, %.lr.ph.i.i ], [ %.sroa.017.0.i, %bb.c ] ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #12, !noalias !160 ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !23, !noalias !161
  store ptr %i.i, ptr %i.h, align 8, !tbaa !23, !noalias !161
  store ptr %i.h, ptr %i.g, align 8, !tbaa !23, !noalias !161
  %i.j = load i64, ptr %0, align 8, !tbaa !26, !noalias !161
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %0, align 8, !tbaa !26, !noalias !161
  %i.l = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container5slistI5emptyvE6assignIPKS2_EEvT_S7_PNS_11move_detail22disable_if_convertibleIS7_mvE4typeE.exit, label %.lr.ph.i.i, !llvm.loop !5

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %.sroa.017.0.i, align 8, !tbaa !23, !noalias !162
  br i1 %i.c, label %.lr.ph.i.i.i, label %_ZN5boost9container5slistI5emptyvE6assignIPKS2_EEvT_S7_PNS_11move_detail22disable_if_convertibleIS7_mvE4typeE.exit

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.sroa.013.0.i, %bb.d ] ; 2 uses
  %i.m = load ptr, ptr %.010.i.i.i, align 8, !tbaa !23, !noalias !162 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.010.i.i.i, i64 noundef 16) #11, !noalias !162
  %i.n = load i64, ptr %0, align 8, !tbaa !26, !noalias !162
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %0, align 8, !tbaa !26, !noalias !162
  %.not.i.i.i = icmp eq ptr %i.m, %i.b
  br i1 %.not.i.i.i, label %_ZN5boost9container5slistI5emptyvE6assignIPKS2_EEvT_S7_PNS_11move_detail22disable_if_convertibleIS7_mvE4typeE.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5boost9container5slistI5emptyvE6assignIPKS2_EEvT_S7_PNS_11move_detail22disable_if_convertibleIS7_mvE4typeE.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE6assignEmRKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
end_hunk_0
