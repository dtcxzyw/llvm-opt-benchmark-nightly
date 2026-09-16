Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pmr_slist_test?download=true
inline.NumInlined: 986
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5boost9container5slistI5emptyvE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23, !noalias !393 ; 2 uses
  store ptr %i.d, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !393
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #11, !noalias !393
  %i.e = load i64, ptr %1, align 8, !tbaa !26, !noalias !393
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %1, align 8, !tbaa !26, !noalias !393
  store ptr %i.d, ptr %0, align 8, !tbaa !31, !alias.scope !392
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEESK_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::dtl::iterator_from_iiterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.c = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !406 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit, label %bb.b, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit: ; preds = %bb.b
  %i.d = load ptr, ptr %3, align 8, !tbaa !30     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  store ptr %i.d, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !408
  %.not9.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not9.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.c, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit ] ; 2 uses
  %i.e = load ptr, ptr %.010.i.i, align 8, !tbaa !23, !noalias !408 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.010.i.i, i64 noundef 16) #11, !noalias !408
  %i.f = load i64, ptr %1, align 8, !tbaa !26, !noalias !408
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %1, align 8, !tbaa !26, !noalias !408
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit
  store ptr %i.d, ptr %0, align 8, !tbaa !31, !alias.scope !407
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef align 8 dead_on_return %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.c = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !423 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit, label %bb.b, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_ZN5boost9container5slistI5emptyvE12splice_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit, %.preheader.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.g, %.preheader.i.i ], [ %i.d, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit ] ; 4 uses
  %i.g = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !424 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i, label %.preheader.i.i, !llvm.loop !7

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i: ; preds = %.preheader.i.i
  %.not.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i, %i.d
  %.not17.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i, %.0.i.i.i.i.i.i.i
  %or.cond.i.i.i = or i1 %.not.i.i.i, %.not17.i.i.i
  %.not18.i.i.i = icmp eq ptr %i.d, %.0.i.i.i.i.i.i.i
  %or.cond19.i.i.i = or i1 %.not18.i.i.i, %or.cond.i.i.i
  br i1 %or.cond19.i.i.i, label %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i
  store ptr %i.g, ptr %i.d, align 8, !tbaa !23
  store ptr %i.c, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  store ptr %i.e, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i

_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i: ; preds = %bb.c, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i
  %i.h = load i64, ptr %2, align 8, !tbaa !26
  %i.i = load i64, ptr %0, align 8, !tbaa !26
  %i.j = add i64 %i.i, %i.h
  store i64 %i.j, ptr %0, align 8, !tbaa !26
  store i64 0, ptr %2, align 8, !tbaa !26
  br label %_ZN5boost9container5slistI5emptyvE12splice_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_.exit

_ZN5boost9container5slistI5emptyvE12splice_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_.exit: ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef align 8 dead_on_return %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.c = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !439 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i, label %bb.b, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i, %.preheader.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %.preheader.i.i.i ], [ %i.d, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i ] ; 4 uses
  %i.g = load ptr, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !440 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i.i, label %.preheader.i.i.i, !llvm.loop !7

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i.i: ; preds = %.preheader.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %i.d
  %.not17.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %.not17.i.i.i.i
  %.not18.i.i.i.i = icmp eq ptr %i.d, %.0.i.i.i.i.i.i.i.i
  %or.cond19.i.i.i.i = or i1 %.not18.i.i.i.i, %or.cond.i.i.i.i
  br i1 %or.cond19.i.i.i.i, label %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i.i
  store ptr %i.g, ptr %i.d, align 8, !tbaa !23
  store ptr %i.c, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !23
  store ptr %i.e, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i.i

_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i.i: ; preds = %bb.c, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i.i
  %i.h = load i64, ptr %2, align 8, !tbaa !26
  %i.i = load i64, ptr %0, align 8, !tbaa !26
  %i.j = add i64 %i.i, %i.h
  store i64 %i.j, ptr %0, align 8, !tbaa !26
  store i64 0, ptr %2, align 8, !tbaa !26
  br label %_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_.exit

_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_.exit: ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef align 8 dead_on_return %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.c = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !457 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit, label %bb.b, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit: ; preds = %bb.b
  %i.d = load ptr, ptr %3, align 8, !tbaa !30     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit
  %.0.i.i.i.i.i.i3 = phi ptr [ %i.e, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit ], [ %i.f, %bb.c ] ; 4 uses
  %i.f = load ptr, ptr %.0.i.i.i.i.i.i3, align 8, !tbaa !23, !noalias !458 ; 5 uses
  %.not.i.i.i.i.i.i4 = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i.i.i.i4, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit5, label %bb.c, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit5: ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i, %.0.i.i.i.i.i.i3
  %.not17.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i, %i.d
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %.not17.i.i.i.i.i
  %.not18.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i3, %i.d
  %or.cond19.i.i.i.i.i = or i1 %.not18.i.i.i.i.i, %or.cond.i.i.i.i.i
  br i1 %or.cond19.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE12splice_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit5
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  store ptr %i.g, ptr %.0.i.i.i.i.i.i3, align 8, !tbaa !23
  store ptr %i.c, ptr %i.f, align 8, !tbaa !23
  store ptr %i.f, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN5boost9container5slistI5emptyvE12splice_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_.exit

_ZN5boost9container5slistI5emptyvE12splice_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_.exit: ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit5, %bb.d
  %i.h = load i64, ptr %0, align 8, !tbaa !26
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %0, align 8, !tbaa !26
  %i.j = load i64, ptr %2, align 8, !tbaa !26
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %2, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEEOS3_SK_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef align 8 dead_on_return %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %4 = load ptr, ptr %3, align 8, !tbaa !30       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.c = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !475 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i, label %bb.b, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i
  %.0.i.i.i.i.i.i3.i = phi ptr [ %i.d, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i ], [ %i.e, %bb.c ] ; 4 uses
  %i.e = load ptr, ptr %.0.i.i.i.i.i.i3.i, align 8, !tbaa !23, !noalias !476 ; 5 uses
  %.not.i.i.i.i.i.i4.i = icmp eq ptr %4, %i.e
  br i1 %.not.i.i.i.i.i.i4.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit5.i, label %bb.c, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit5.i: ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i3.i
  %.not17.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %4
  %or.cond.i.i.i.i.i.i = or i1 %.not17.i.i.i.i.i.i, %.not.i.i.i.i.i.i
  %.not18.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i3.i, %4
  %or.cond19.i.i.i.i.i.i = or i1 %.not18.i.i.i.i.i.i, %or.cond.i.i.i.i.i.i
  br i1 %or.cond19.i.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit5.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  store ptr %i.f, ptr %.0.i.i.i.i.i.i3.i, align 8, !tbaa !23
  store ptr %i.c, ptr %i.e, align 8, !tbaa !23
  store ptr %i.e, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_.exit

_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_.exit: ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit5.i, %bb.d
  %i.g = load i64, ptr %0, align 8, !tbaa !26
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %0, align 8, !tbaa !26
  %i.i = load i64, ptr %2, align 8, !tbaa !26
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %2, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef align 8 dead_on_return %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef align 8 dead_on_return %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.c = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !501 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit, label %bb.b, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit: ; preds = %bb.b
  %i.d = load ptr, ptr %3, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit
  %.0.i.i.i.i.i.i4 = phi ptr [ %i.e, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit ], [ %i.f, %bb.c ] ; 5 uses
  %i.f = load ptr, ptr %.0.i.i.i.i.i.i4, align 8, !tbaa !23, !noalias !502 ; 3 uses
  %.not.i.i.i.i.i.i5 = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i.i.i.i5, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6, label %bb.c, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6: ; preds = %bb.c
  %i.g = load ptr, ptr %4, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6
  %.0.i.i.i.i.i.i7 = phi ptr [ %i.e, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6 ], [ %i.h, %bb.d ] ; 5 uses
  %i.h = load ptr, ptr %.0.i.i.i.i.i.i7, align 8, !tbaa !23, !noalias !503 ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i.i.i8, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9, label %bb.d, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9: ; preds = %bb.d
  %.not6.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i4, %.0.i.i.i.i.i.i7
  br i1 %.not6.i.i.i, label %_ZN5boost9container5slistI5emptyvE12splice_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9, %.lr.ph.i.i.i
  %.08.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i ], [ 0, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9 ]
  %.057.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %.0.i.i.i.i.i.i4, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9 ]
  %i.i = load ptr, ptr %.057.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.j = add i64 %.08.i.i.i, 1                    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, %.0.i.i.i.i.i.i7
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i, %.0.i.i.i.i.i.i4
  %.not17.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i, %.0.i.i.i.i.i.i7
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %.not17.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE12splice_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i
  store ptr %i.h, ptr %.0.i.i.i.i.i.i4, align 8, !tbaa !23
  store ptr %i.c, ptr %.0.i.i.i.i.i.i7, align 8, !tbaa !23
  store ptr %i.f, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN5boost9container5slistI5emptyvE12splice_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit

_ZN5boost9container5slistI5emptyvE12splice_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit: ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i, %bb.e
  %.0.lcssa.i9.i.i = phi i64 [ %i.j, %bb.e ], [ %i.j, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i ], [ 0, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9 ] ; 2 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !26
  %i.l = add i64 %i.k, %.0.lcssa.i9.i.i
  store i64 %i.l, ptr %0, align 8, !tbaa !26
  %i.m = load i64, ptr %2, align 8, !tbaa !26
  %i.n = sub i64 %i.m, %.0.lcssa.i9.i.i
  store i64 %i.n, ptr %2, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEEOS3_SK_SK_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef align 8 dead_on_return %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef align 8 dead_on_return %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %5 = load ptr, ptr %3, align 8, !tbaa !30
  %6 = load ptr, ptr %4, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.c = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !528 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i, label %bb.b, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i
  %.0.i.i.i.i.i.i4.i = phi ptr [ %i.d, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i ], [ %i.e, %bb.c ] ; 5 uses
  %i.e = load ptr, ptr %.0.i.i.i.i.i.i4.i, align 8, !tbaa !23, !noalias !529 ; 3 uses
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %5, %i.e
  br i1 %.not.i.i.i.i.i.i5.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i, label %bb.c, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i: ; preds = %bb.c, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i
  %.0.i.i.i.i.i.i7.i = phi ptr [ %i.f, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i ], [ %i.d, %bb.c ] ; 5 uses
  %i.f = load ptr, ptr %.0.i.i.i.i.i.i7.i, align 8, !tbaa !23, !noalias !530 ; 3 uses
  %.not.i.i.i.i.i.i8.i = icmp eq ptr %6, %i.f
  br i1 %.not.i.i.i.i.i.i8.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i: ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i
  %.not6.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i4.i, %.0.i.i.i.i.i.i7.i
  br i1 %.not6.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i ], [ 0, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i ]
  %.057.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i4.i, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i ]
  %i.g = load ptr, ptr %.057.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.h = add i64 %.08.i.i.i.i, 1                  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %.0.i.i.i.i.i.i7.i
  br i1 %.not.i.i.i.i, label %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i4.i
  %.not17.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i7.i
  %or.cond.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %.not17.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i.i
  store ptr %i.f, ptr %.0.i.i.i.i.i.i4.i, align 8, !tbaa !23
  store ptr %i.c, ptr %.0.i.i.i.i.i.i7.i, align 8, !tbaa !23
  store ptr %i.e, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit

_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit: ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i.i, %bb.d
  %.0.lcssa.i9.i.i.i = phi i64 [ %i.h, %bb.d ], [ %i.h, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i.i ], [ 0, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i ] ; 2 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !26
  %i.j = add i64 %i.i, %.0.lcssa.i9.i.i.i
  store i64 %i.j, ptr %0, align 8, !tbaa !26
  %i.k = load i64, ptr %2, align 8, !tbaa !26
  %i.l = sub i64 %i.k, %.0.lcssa.i9.i.i.i
  store i64 %i.l, ptr %2, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE16priv_move_assignEOS3_NS_11move_detail5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not11.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE5clearEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.013.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i.i, i64 noundef 16) #11
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE5clearEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZN5boost9container5slistI5emptyvE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  store ptr %i.a, ptr %i.a, align 8, !tbaa !23
  store i64 0, ptr %0, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.e = icmp eq ptr %1, %0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container5slistI5emptyvE5clearEv.exit.i
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  %.not41.i.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = icmp eq ptr %i.f, %i.d                   ; 2 uses
  %or.cond.i.i.i.i.i = or i1 %.not41.i.i.i.i.i, %i.g
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %.preheader45.i.i.i.i.i

.preheader45.i.i.i.i.i:                           ; preds = %bb.b, %.preheader45.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.h, %.preheader45.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.h
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i.i, label %.preheader45.i.i.i.i.i, !llvm.loop !7

_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i.i: ; preds = %.preheader45.i.i.i.i.i
  store ptr %i.a, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i.i.i, %bb.b
  %i.i = icmp eq ptr %i.f, %i.a
  %i.j = select i1 %i.i, ptr %i.d, ptr %i.f
  %i.k = select i1 %i.g, ptr %i.a, ptr %i.j
  store ptr %i.k, ptr %i.a, align 8, !tbaa !23
  store ptr %i.d, ptr %i.d, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5boost9container5slistI5emptyvE5clearEv.exit.i
  %i.l = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.l, ptr %0, align 8, !tbaa !26
  store i64 0, ptr %1, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE17insertion_functorC2ERNS_9intrusive10slist_implINS5_8bhtraitsINS0_9base_nodeIS2_NS0_3dtl10slist_hookIPvEELb0EEENS5_17slist_node_traitsISB_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj2EEEmLm2EvEENS5_14slist_iteratorISI_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 dead_on_return %2) unnamed_addr #1 comdat($_ZN5boost9container5slistI5emptyvE17insertion_functorC5ERNS_9intrusive10slist_implINS5_8bhtraitsINS0_9base_nodeIS2_NS0_3dtl10slist_hookIPvEELb0EEENS5_17slist_node_traitsISB_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj2EEEmLm2EvEENS5_14slist_iteratorISI_Lb1EEE) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !533
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !31, !alias.scope !534
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container5slistI5emptyvE17insertion_functorclERNS0_9base_nodeIS2_NS0_3dtl10slist_hookIPvEELb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !538, !nonnull !539, !align !540 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23, !noalias !541
  store ptr %i.d, ptr %1, align 8, !tbaa !23, !noalias !541
  store ptr %1, ptr %i.c, align 8, !tbaa !23, !noalias !541
  %i.e = load i64, ptr %i.a, align 8, !tbaa !26, !noalias !541
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.a, align 8, !tbaa !26, !noalias !541
  store ptr %1, ptr %i.b, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.g, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container5slistI5emptyvE17insertion_functor14inserted_firstEv(ptr dead_on_unwind noalias writable sret(%"class.boost::intrusive::slist_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  store ptr %i.c, ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef i32 @main() local_unnamed_addr #6 {
bb.a:
  %0 = alloca %"class.boost::container::slist", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @_ZN5boost9container5slistI5emptyvEC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  call void @_ZN5boost9container5slistI5emptyvED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret i32 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE4sortINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive::slist_impl", align 8 ; 7 uses
  %2 = alloca %"class.boost::intrusive::detail::array_initializer", align 16 ; 136 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %.not = icmp eq ptr %i.c, %i.a
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 28 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !23
  store i64 0, ptr %1, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.e, align 8, !tbaa !23
  store i64 0, ptr %2, align 16, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.g, align 8, !tbaa !23
  store i64 0, ptr %i.f, align 16, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.i, ptr %i.i, align 8, !tbaa !23
  store i64 0, ptr %i.h, align 16, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.k, align 8, !tbaa !23
  store i64 0, ptr %i.j, align 16, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  store ptr %i.m, ptr %i.m, align 8, !tbaa !23
  store i64 0, ptr %i.l, align 16, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store ptr %i.o, ptr %i.o, align 8, !tbaa !23
end_hunk_0
