Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pmr_slist_test?download=true
inline.NumInlined: 986
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_:bb.a
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
  %i.b = load ptr, ptr %3, align 8, !tbaa !30
  %i.c = load ptr, ptr %4, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.e = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !528 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i, label %bb.b, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i
  %.0.i.i.i.i.i.i4.i = phi ptr [ %i.f, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit.i ], [ %i.g, %bb.c ] ; 5 uses
  %i.g = load ptr, ptr %.0.i.i.i.i.i.i4.i, align 8, !tbaa !23, !noalias !529 ; 3 uses
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i.i.i.i.i5.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i, label %bb.c, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i: ; preds = %bb.c, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i
  %.0.i.i.i.i.i.i7.i = phi ptr [ %i.h, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = load ptr, ptr %.0.i.i.i.i.i.i7.i, align 8, !tbaa !23, !noalias !530 ; 3 uses
  %.not.i.i.i.i.i.i8.i = icmp eq ptr %i.c, %i.h
  br i1 %.not.i.i.i.i.i.i8.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i, label %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i, !llvm.loop !7

_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i: ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit6.i
  %.not6.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i4.i, %.0.i.i.i.i.i.i7.i
  br i1 %.not6.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ 0, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i ]
  %.057.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i4.i, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i ]
  %i.i = load ptr, ptr %.057.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.j = add i64 %.08.i.i.i.i, 1                  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %.0.i.i.i.i.i.i7.i
  br i1 %.not.i.i.i.i, label %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i4.i
  %.not17.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i7.i
  %or.cond.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %.not17.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i.i
  store ptr %i.h, ptr %.0.i.i.i.i.i.i4.i, align 8, !tbaa !23
  store ptr %i.e, ptr %.0.i.i.i.i.i.i7.i, align 8, !tbaa !23
  store ptr %i.g, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  br label %_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit

_ZN5boost9container5slistI5emptyvE6spliceENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEERS3_SK_SK_.exit: ; preds = %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i.i, %bb.d
  %.0.lcssa.i9.i.i.i = phi i64 [ %i.j, %bb.d ], [ %i.j, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE8distanceEPKNS0_10slist_nodeIS4_EESA_.exit.i.i.i ], [ 0, %_ZN5boost9container5slistI5emptyvE8previousENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEE.exit9.i ] ; 2 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !26
  %i.l = add i64 %i.k, %.0.lcssa.i9.i.i.i
  store i64 %i.l, ptr %0, align 8, !tbaa !26
  %i.m = load i64, ptr %2, align 8, !tbaa !26
  %i.n = sub i64 %i.m, %.0.lcssa.i9.i.i.i
  store i64 %i.n, ptr %2, align 8, !tbaa !26
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
  %1 = alloca %"class.boost::intrusive::slist_impl", align 8 ; 9 uses
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
  store i64 0, ptr %i.n, align 16, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  store ptr %i.q, ptr %i.q, align 8, !tbaa !23
  store i64 0, ptr %i.p, align 16, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  store ptr %i.s, ptr %i.s, align 8, !tbaa !23
  store i64 0, ptr %i.r, align 16, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  store ptr %i.u, ptr %i.u, align 8, !tbaa !23
  store i64 0, ptr %i.t, align 16, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  store ptr %i.w, ptr %i.w, align 8, !tbaa !23
  store i64 0, ptr %i.v, align 16, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  store ptr %i.y, ptr %i.y, align 8, !tbaa !23
  store i64 0, ptr %i.x, align 16, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  store ptr %i.aa, ptr %i.aa, align 8, !tbaa !23
  store i64 0, ptr %i.z, align 16, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  store ptr %i.ac, ptr %i.ac, align 8, !tbaa !23
  store i64 0, ptr %i.ab, align 16, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  store ptr %i.ae, ptr %i.ae, align 8, !tbaa !23
  store i64 0, ptr %i.ad, align 16, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  store ptr %i.ag, ptr %i.ag, align 8, !tbaa !23
  store i64 0, ptr %i.af, align 16, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  store ptr %i.ai, ptr %i.ai, align 8, !tbaa !23
  store i64 0, ptr %i.ah, align 16, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  store ptr %i.ak, ptr %i.ak, align 8, !tbaa !23
  store i64 0, ptr %i.aj, align 16, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  store ptr %i.am, ptr %i.am, align 8, !tbaa !23
  store i64 0, ptr %i.al, align 16, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  store ptr %i.ao, ptr %i.ao, align 8, !tbaa !23
  store i64 0, ptr %i.an, align 16, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 2 uses
  store ptr %i.aq, ptr %i.aq, align 8, !tbaa !23
  store i64 0, ptr %i.ap, align 16, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 2 uses
  store ptr %i.as, ptr %i.as, align 8, !tbaa !23
  store i64 0, ptr %i.ar, align 16, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 2 uses
  store ptr %i.au, ptr %i.au, align 8, !tbaa !23
  store i64 0, ptr %i.at, align 16, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  store ptr %i.aw, ptr %i.aw, align 8, !tbaa !23
  store i64 0, ptr %i.av, align 16, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 2 uses
  store ptr %i.ay, ptr %i.ay, align 8, !tbaa !23
  store i64 0, ptr %i.ax, align 16, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 392 ; 2 uses
  store ptr %i.ba, ptr %i.ba, align 8, !tbaa !23
  store i64 0, ptr %i.az, align 16, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 408 ; 2 uses
  store ptr %i.bc, ptr %i.bc, align 8, !tbaa !23
  store i64 0, ptr %i.bb, align 16, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 424 ; 2 uses
  store ptr %i.be, ptr %i.be, align 8, !tbaa !23
  store i64 0, ptr %i.bd, align 16, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 440 ; 2 uses
  store ptr %i.bg, ptr %i.bg, align 8, !tbaa !23
  store i64 0, ptr %i.bf, align 16, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 456 ; 2 uses
  store ptr %i.bi, ptr %i.bi, align 8, !tbaa !23
  store i64 0, ptr %i.bh, align 16, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 472 ; 2 uses
  store ptr %i.bk, ptr %i.bk, align 8, !tbaa !23
  store i64 0, ptr %i.bj, align 16, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 488 ; 2 uses
  store ptr %i.bm, ptr %i.bm, align 8, !tbaa !23
  store i64 0, ptr %i.bl, align 16, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 496
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 504 ; 2 uses
  store ptr %i.bo, ptr %i.bo, align 8, !tbaa !23
  store i64 0, ptr %i.bn, align 16, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 520 ; 2 uses
  store ptr %i.bq, ptr %i.bq, align 8, !tbaa !23
  store i64 0, ptr %i.bp, align 16, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 536 ; 2 uses
  store ptr %i.bs, ptr %i.bs, align 8, !tbaa !23
  store i64 0, ptr %i.br, align 16, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 552 ; 2 uses
  store ptr %i.bu, ptr %i.bu, align 8, !tbaa !23
  store i64 0, ptr %i.bt, align 16, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 560
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 2 uses
  store ptr %i.bw, ptr %i.bw, align 8, !tbaa !23
  store i64 0, ptr %i.bv, align 16, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 584 ; 2 uses
  store ptr %i.by, ptr %i.by, align 8, !tbaa !23
  store i64 0, ptr %i.bx, align 16, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 600 ; 2 uses
  store ptr %i.ca, ptr %i.ca, align 8, !tbaa !23
  store i64 0, ptr %i.bz, align 16, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 616 ; 2 uses
  store ptr %i.cc, ptr %i.cc, align 8, !tbaa !23
  store i64 0, ptr %i.cb, align 16, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 624
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 632 ; 2 uses
  store ptr %i.ce, ptr %i.ce, align 8, !tbaa !23
  store i64 0, ptr %i.cd, align 16, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 640
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  store ptr %i.cg, ptr %i.cg, align 8, !tbaa !23
  store i64 0, ptr %i.cf, align 16, !tbaa !26
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 664 ; 2 uses
  store ptr %i.ci, ptr %i.ci, align 8, !tbaa !23
  store i64 0, ptr %i.ch, align 16, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 680 ; 2 uses
  store ptr %i.ck, ptr %i.ck, align 8, !tbaa !23
  store i64 0, ptr %i.cj, align 16, !tbaa !26
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 696 ; 2 uses
  store ptr %i.cm, ptr %i.cm, align 8, !tbaa !23
  store i64 0, ptr %i.cl, align 16, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 2 uses
  store ptr %i.co, ptr %i.co, align 8, !tbaa !23
  store i64 0, ptr %i.cn, align 16, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 720
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 728 ; 2 uses
  store ptr %i.cq, ptr %i.cq, align 8, !tbaa !23
  store i64 0, ptr %i.cp, align 16, !tbaa !26
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 736
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 744 ; 2 uses
  store ptr %i.cs, ptr %i.cs, align 8, !tbaa !23
  store i64 0, ptr %i.cr, align 16, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 752
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 760 ; 2 uses
  store ptr %i.cu, ptr %i.cu, align 8, !tbaa !23
  store i64 0, ptr %i.ct, align 16, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 776 ; 2 uses
  store ptr %i.cw, ptr %i.cw, align 8, !tbaa !23
  store i64 0, ptr %i.cv, align 16, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 784
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 792 ; 2 uses
  store ptr %i.cy, ptr %i.cy, align 8, !tbaa !23
  store i64 0, ptr %i.cx, align 16, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 800
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 808 ; 2 uses
  store ptr %i.da, ptr %i.da, align 8, !tbaa !23
  store i64 0, ptr %i.cz, align 16, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 816
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 824 ; 2 uses
  store ptr %i.dc, ptr %i.dc, align 8, !tbaa !23
  store i64 0, ptr %i.db, align 16, !tbaa !26
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 840 ; 2 uses
  store ptr %i.de, ptr %i.de, align 8, !tbaa !23
  store i64 0, ptr %i.dd, align 16, !tbaa !26
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 848
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 856 ; 2 uses
  store ptr %i.dg, ptr %i.dg, align 8, !tbaa !23
  store i64 0, ptr %i.df, align 16, !tbaa !26
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 864
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 872 ; 2 uses
  store ptr %i.di, ptr %i.di, align 8, !tbaa !23
  store i64 0, ptr %i.dh, align 16, !tbaa !26
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 880
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 888 ; 2 uses
  store ptr %i.dk, ptr %i.dk, align 8, !tbaa !23
  store i64 0, ptr %i.dj, align 16, !tbaa !26
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 896
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 904 ; 2 uses
  store ptr %i.dm, ptr %i.dm, align 8, !tbaa !23
  store i64 0, ptr %i.dl, align 16, !tbaa !26
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 920 ; 2 uses
  store ptr %i.do, ptr %i.do, align 8, !tbaa !23
  store i64 0, ptr %i.dn, align 16, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 928
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 936 ; 2 uses
  store ptr %i.dq, ptr %i.dq, align 8, !tbaa !23
  store i64 0, ptr %i.dp, align 16, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 944
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 952 ; 2 uses
  store ptr %i.ds, ptr %i.ds, align 8, !tbaa !23
  store i64 0, ptr %i.dr, align 16, !tbaa !26
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 960
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 968 ; 2 uses
  store ptr %i.du, ptr %i.du, align 8, !tbaa !23
  store i64 0, ptr %i.dt, align 16, !tbaa !26
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 976
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 984 ; 2 uses
  store ptr %i.dw, ptr %i.dw, align 8, !tbaa !23
  store i64 0, ptr %i.dv, align 16, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 992
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 1000 ; 2 uses
  store ptr %i.dy, ptr %i.dy, align 8, !tbaa !23
  store i64 0, ptr %i.dx, align 16, !tbaa !26
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 1008
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 1016 ; 2 uses
  store ptr %i.ea, ptr %i.ea, align 8, !tbaa !23
  store i64 0, ptr %i.dz, align 16, !tbaa !26
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.a
  br i1 %i.ec, label %.preheader.._crit_edge_crit_edge, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.b
  %.promoted.a = load i64, ptr %0, align 8, !tbaa !26
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.c

.preheader:                                       ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit
  store i64 %i.ej, ptr %0, align 8, !tbaa !26
  %i.ee = icmp samesign ugt i32 %spec.select, 1
  br i1 %i.ee, label %.lr.ph146.preheader, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %bb.b, %.preheader
  %.024.lcssa204 = phi i32 [ %spec.select, %.preheader ], [ 0, %bb.b ]
  %.sroa.0107.0.lcssa203 = phi ptr [ %.sroa.0107.1.lcssa, %.preheader ], [ null, %bb.b ]
  %.pre = zext nneg i32 %.024.lcssa204 to i64
  br label %._crit_edge

.lr.ph146.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 2 uses
  br label %.lr.ph146

bb.c:                                             ; preds = %.lr.ph139, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit
  %i.ef = phi i64 [ %.promoted.a, %.lr.ph139 ], [ %i.ej, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit ]
  %i.eg = phi ptr [ %i.eb, %.lr.ph139 ], [ %i.gu, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit ] ; 6 uses
  %.024138 = phi i32 [ 0, %.lr.ph139 ], [ %spec.select, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit ] ; 5 uses
  %.not17.i.i.i.i = icmp eq ptr %i.d, %i.eg
  br i1 %.not17.i.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !23
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !23
  store ptr %i.eh, ptr %i.a, align 8, !tbaa !23
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !23
  store ptr %i.eg, ptr %i.d, align 8, !tbaa !23
  br label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_.exit

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_.exit: ; preds = %bb.c, %bb.d
  %3 = load i64, ptr %1, align 8, !tbaa !26
  %4 = add i64 %3, 1                              ; 3 uses
  %i.ej = add i64 %i.ef, -1                       ; 2 uses
  %.not148 = icmp eq i32 %.024138, 0
  br i1 %.not148, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_.exit
  %i.ek = zext nneg i32 %.024138 to i64
  %i.el = load ptr, ptr %i.ed, align 8, !tbaa !23 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ed
  br i1 %i.em, label %.critedge, label %.lr.ph262

.lr.ph:                                           ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next207 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !23 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.eo
  br i1 %i.eq, label %.lr.ph..critedge.loopexit.split.loop.exit_crit_edge, label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.er = phi ptr [ %i.ep, %.lr.ph ], [ %i.el, %.lr.ph.preheader ] ; 5 uses
  %i.es = phi ptr [ %i.eo, %.lr.ph ], [ %i.ed, %.lr.ph.preheader ] ; 19 uses
  %i.et = phi ptr [ %i.en, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %indvars.iv261 = phi i64 [ %indvars.iv.next207, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.eu = phi i64 [ %i.gh, %.lr.ph ], [ %4, %.lr.ph.preheader ] ; 3 uses
  %i.ev = icmp eq ptr %i.et, %1                   ; 2 uses
  br i1 %i.ev, label %.critedge.lr.ph.split.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph262
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !23  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.ew, null
  %.not41.i.i.i = icmp eq ptr %i.er, null
  %i.ex = icmp eq ptr %i.ew, %i.d                 ; 2 uses
  br i1 %.not41.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ey = icmp eq ptr %i.ew, %i.es
  br i1 %i.ey, label %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i, label %.preheader45.i.i.i

.preheader45.i.i.i:                               ; preds = %bb.f, %.preheader45.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.ez, %.preheader45.i.i.i ], [ %i.es, %bb.f ] ; 2 uses
  %i.ez = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.es, %i.ez
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i, label %.preheader45.i.i.i, !llvm.loop !7

_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i: ; preds = %.preheader45.i.i.i, %bb.f
  %i.fa = phi ptr [ %i.es, %bb.f ], [ %.0.i.i.i.i.i, %.preheader45.i.i.i ]
  store ptr %i.d, ptr %i.fa, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit.i.i.i, %bb.e
  %i.fb = or i1 %.not.i.i.i, %i.ex
  br i1 %i.fb, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fc = icmp eq ptr %i.er, %i.d
  br i1 %i.fc, label %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit44.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %.preheader.i.i.i
  %.0.i.i42.i.i.i = phi ptr [ %i.fd, %.preheader.i.i.i ], [ %i.d, %bb.h ] ; 2 uses
  %i.fd = load ptr, ptr %.0.i.i42.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i43.i.i.i = icmp eq ptr %i.d, %i.fd
  br i1 %.not.i.i43.i.i.i, label %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit44.i.i.i, label %.preheader.i.i.i, !llvm.loop !7

_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit44.i.i.i: ; preds = %.preheader.i.i.i, %bb.h
  %i.fe = phi ptr [ %i.d, %bb.h ], [ %.0.i.i42.i.i.i, %.preheader.i.i.i ]
  store ptr %i.es, ptr %i.fe, align 8, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %bb.g, %_ZN5boost9intrusive25circular_slist_algorithmsINS0_17slist_node_traitsIPvEEE17get_previous_nodeEPNS0_10slist_nodeIS3_EE.exit44.i.i.i
  %i.ff = icmp eq ptr %i.er, %i.d
  %i.fg = select i1 %i.ff, ptr %i.es, ptr %i.er
  store ptr %i.fg, ptr %i.d, align 8, !tbaa !23
  %i.fh = icmp eq ptr %i.ew, %i.es
  %i.fi = select i1 %i.fh, ptr %i.d, ptr %i.ew
  %i.fj = select i1 %i.ex, ptr %i.es, ptr %i.fi   ; 3 uses
  store ptr %i.fj, ptr %i.es, align 8, !tbaa !23
  %i.fk = load i64, ptr %i.et, align 8, !tbaa !26 ; 2 uses
  store i64 %i.eu, ptr %i.et, align 8, !tbaa !26
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv261, 1 ; 3 uses
  %i.fl = icmp eq ptr %i.fj, %i.es
  br i1 %i.fl, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit, label %.critedge.i.preheader

.critedge.i.preheader:                            ; preds = %.thread
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !23
  br label %.critedge.i

.critedge.lr.ph.split.us.i:                       ; preds = %.lr.ph262
  %i.fn = load i64, ptr %i.et, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv261, 1
  %i.fo = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.d
  call void @llvm.assume(i1 %i.fp)
  br label %.preheader.i.preheader.i

.critedge.i:                                      ; preds = %.critedge.i.preheader, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i
  %i.fq = phi i64 [ %i.gf, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ], [ %i.eu, %.critedge.i.preheader ] ; 2 uses
  %i.fr = phi i64 [ %i.ge, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ], [ %i.fk, %.critedge.i.preheader ] ; 2 uses
  %i.fs = phi ptr [ %i.gc, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ], [ %i.fj, %.critedge.i.preheader ] ; 5 uses
  %i.ft = phi ptr [ %i.gd, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ], [ %i.fm, %.critedge.i.preheader ] ; 4 uses
  %i.fu = icmp eq ptr %i.ft, %i.d
  br i1 %i.fu, label %.preheader.i.preheader.i, label %.preheader.i

.preheader.i.preheader.i:                         ; preds = %.critedge.i, %.critedge.lr.ph.split.us.i
  %indvars.iv.next206209 = phi i64 [ %indvars.iv.next, %.critedge.lr.ph.split.us.i ], [ %indvars.iv.next205, %.critedge.i ]
  %i.fv = phi i64 [ %i.fn, %.critedge.lr.ph.split.us.i ], [ %i.fr, %.critedge.i ]
  %i.fw = phi i64 [ %i.eu, %.critedge.lr.ph.split.us.i ], [ %i.fq, %.critedge.i ]
  %.us-phi.i = phi ptr [ %i.fo, %.critedge.lr.ph.split.us.i ], [ %i.ft, %.critedge.i ]
  %.us-phi54.i = phi ptr [ %i.er, %.critedge.lr.ph.split.us.i ], [ %i.fs, %.critedge.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.preheader.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.fx, %.preheader.i.i ], [ %i.es, %.preheader.i.preheader.i ] ; 5 uses
  %i.fx = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23, !noalias !564 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.es, %i.fx
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i, label %.preheader.i.i, !llvm.loop !7

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i: ; preds = %.preheader.i.i
  %.not17.i.i.i = icmp eq ptr %i.d, %.0.i.i.i.i.i.i.i
  %.not18.i.i.i = icmp eq ptr %i.es, %.0.i.i.i.i.i.i.i
  %i.fy = or i1 %.not17.i.i.i, %.not18.i.i.i
  %or.cond19.i.i.i = or i1 %i.ev, %i.fy
  br i1 %or.cond19.i.i.i, label %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i
  store ptr %i.fx, ptr %i.es, align 8, !tbaa !23
  store ptr %.us-phi.i, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  store ptr %.us-phi54.i, ptr %i.d, align 8, !tbaa !23
  br label %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i

_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i: ; preds = %bb.i, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i
  %i.fz = add i64 %i.fv, %i.fw                    ; 2 uses
  store i64 %i.fz, ptr %1, align 8, !tbaa !26
  store i64 0, ptr %i.et, align 8, !tbaa !26
  br label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %.sroa.026.0.i = phi ptr [ %i.gb, %.preheader.i ], [ %i.fs, %.critedge.i ] ; 5 uses
  %.0.i = phi i64 [ %i.ga, %.preheader.i ], [ 0, %.critedge.i ]
  %i.ga = add i64 %.0.i, 1                        ; 3 uses
  %i.gb = load ptr, ptr %.sroa.026.0.i, align 8, !tbaa !23 ; 3 uses
  %.not48.i = icmp eq ptr %i.gb, %i.es
  br i1 %.not48.i, label %.critedge2.i, label %.preheader.i, !llvm.loop !10

.critedge2.i:                                     ; preds = %.preheader.i
  %.not17.i.i.i.i40 = icmp eq ptr %i.d, %.sroa.026.0.i
  %.not18.i.i.i.i41 = icmp eq ptr %i.es, %.sroa.026.0.i
  %or.cond19.i.i.i.i42 = or i1 %.not18.i.i.i.i41, %.not17.i.i.i.i40
  br i1 %or.cond19.i.i.i.i42, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i, label %bb.j

bb.j:                                             ; preds = %.critedge2.i
  store ptr %i.gb, ptr %i.es, align 8, !tbaa !23
  store ptr %i.ft, ptr %.sroa.026.0.i, align 8, !tbaa !23
  store ptr %i.fs, ptr %i.d, align 8, !tbaa !23
  %.pre98.i = load ptr, ptr %i.es, align 8, !tbaa !23
  br label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i: ; preds = %bb.j, %.critedge2.i
  %i.gc = phi ptr [ %i.fs, %.critedge2.i ], [ %.pre98.i, %bb.j ] ; 2 uses
  %i.gd = phi ptr [ %i.ft, %.critedge2.i ], [ %i.fs, %bb.j ]
  %i.ge = add i64 %i.fr, %i.ga                    ; 2 uses
  %i.gf = sub i64 %i.fq, %i.ga                    ; 2 uses
  store i64 %i.gf, ptr %i.et, align 8, !tbaa !26
  %i.gg = icmp eq ptr %i.gc, %i.es
  br i1 %i.gg, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit, label %.critedge.i

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit: ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i, %.thread, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i
  %indvars.iv.next207 = phi i64 [ %indvars.iv.next205, %.thread ], [ %indvars.iv.next206209, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i ], [ %indvars.iv.next205, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ] ; 4 uses
  %i.gh = phi i64 [ %i.fk, %.thread ], [ %i.fz, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i ], [ %i.ge, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ] ; 3 uses
  %.sroa.0107.3 = phi ptr [ %i.d, %.thread ], [ %.0.i.i.i.i.i.i.i, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i ], [ %.sroa.026.0.i, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next207, %i.ek
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.lr.ph..critedge.loopexit.split.loop.exit_crit_edge: ; preds = %.lr.ph
  %i.gi = trunc nuw nsw i64 %indvars.iv.next207 to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit, %.lr.ph.preheader, %.lr.ph..critedge.loopexit.split.loop.exit_crit_edge, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_.exit
  %i.gj = phi i64 [ %4, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_.exit ], [ %4, %.lr.ph.preheader ], [ %i.gh, %.lr.ph..critedge.loopexit.split.loop.exit_crit_edge ], [ %i.gh, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit ]
  %.sroa.0107.1.lcssa = phi ptr [ %i.eg, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_.exit ], [ %i.eg, %.lr.ph.preheader ], [ %.sroa.0107.3, %.lr.ph..critedge.loopexit.split.loop.exit_crit_edge ], [ %.sroa.0107.3, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit ] ; 2 uses
  %.023.lcssa = phi i32 [ 0, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_.exit ], [ 0, %.lr.ph.preheader ], [ %i.gi, %.lr.ph..critedge.loopexit.split.loop.exit_crit_edge ], [ %.024138, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.critedge
  %.0.i.i.i.i = phi ptr [ %.sroa.0107.1.lcssa, %.critedge ], [ %i.gk, %bb.k ] ; 4 uses
  %i.gk = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !23, !noalias !565 ; 3 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.d, %i.gk
  br i1 %.not.i.i.i.i43, label %bb.l, label %bb.k, !llvm.loop !7

bb.l:                                             ; preds = %bb.k
  %i.gl = zext nneg i32 %.023.lcssa to i64
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.gl ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.gm, %1
  %.not17.i.i.i45 = icmp eq ptr %i.gn, %.0.i.i.i.i
  %or.cond.i.i.i46 = or i1 %.not.i.i.i44, %.not17.i.i.i45
  %.not18.i.i.i47 = icmp eq ptr %i.d, %.0.i.i.i.i
  %or.cond19.i.i.i48 = or i1 %.not18.i.i.i47, %or.cond.i.i.i46
  br i1 %or.cond19.i.i.i48, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.go = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !23
  store ptr %i.gk, ptr %i.d, align 8, !tbaa !23
  store ptr %i.gp, ptr %.0.i.i.i.i, align 8, !tbaa !23
  store ptr %i.go, ptr %i.gn, align 8, !tbaa !23
  br label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit: ; preds = %bb.l, %bb.m
  %i.gq = load i64, ptr %i.gm, align 16, !tbaa !26
  %i.gr = add i64 %i.gq, %i.gj
  store i64 %i.gr, ptr %i.gm, align 16, !tbaa !26
  store i64 0, ptr %1, align 8, !tbaa !26
  %i.gs = icmp eq i32 %.023.lcssa, %.024138
  %i.gt = zext i1 %i.gs to i32
  %spec.select = add nuw nsw i32 %.024138, %i.gt  ; 4 uses
  %i.gu = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.a
  br i1 %i.gv, label %.preheader, label %bb.c, !llvm.loop !552

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit81
  %indvars.iv170 = phi i64 [ 1, %.lr.ph146.preheader ], [ %indvars.iv.next171, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit81 ] ; 2 uses
  %i.gw = getelementptr [16 x i8], ptr %2, i64 %indvars.iv170 ; 7 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 -16    ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 7 uses
  %i.gz = getelementptr i8, ptr %i.gw, i64 -8     ; 11 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !23 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.gz
  br i1 %i.hb, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit81, label %.critedge.lr.ph.split.i51

.critedge.lr.ph.split.i51:                        ; preds = %.lr.ph146
  %i.hc = load ptr, ptr %i.gy, align 8, !tbaa !23
  br label %.critedge.i52

.critedge.i52:                                    ; preds = %.critedge.lr.ph.split.i51, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i62
  %i.hd = phi ptr [ %i.hn, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i62 ], [ %i.ha, %.critedge.lr.ph.split.i51 ] ; 5 uses
  %i.he = phi ptr [ %i.ho, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i62 ], [ %i.hc, %.critedge.lr.ph.split.i51 ] ; 4 uses
  %i.hf = icmp eq ptr %i.he, %i.gy
  br i1 %i.hf, label %.preheader.i.i66, label %.preheader.i53

.preheader.i.i66:                                 ; preds = %.critedge.i52, %.preheader.i.i66
  %.0.i.i.i.i.i.i.i67 = phi ptr [ %i.hg, %.preheader.i.i66 ], [ %i.gz, %.critedge.i52 ] ; 5 uses
  %i.hg = load ptr, ptr %.0.i.i.i.i.i.i.i67, align 8, !tbaa !23, !noalias !566 ; 3 uses
  %.not.i.i.i.i.i.i.i68 = icmp eq ptr %i.gz, %i.hg
  br i1 %.not.i.i.i.i.i.i.i68, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i69, label %.preheader.i.i66, !llvm.loop !7

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i69: ; preds = %.preheader.i.i66
  %.not17.i.i.i70 = icmp eq ptr %i.gy, %.0.i.i.i.i.i.i.i67
  %.not18.i.i.i71 = icmp eq ptr %i.gz, %.0.i.i.i.i.i.i.i67
  %i.hh = or i1 %.not17.i.i.i70, %.not18.i.i.i71
  br i1 %i.hh, label %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i73, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i69
  store ptr %i.hg, ptr %i.gz, align 8, !tbaa !23
  store ptr %i.he, ptr %.0.i.i.i.i.i.i.i67, align 8, !tbaa !23
  store ptr %i.hd, ptr %i.gy, align 8, !tbaa !23
  br label %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i73

_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i73: ; preds = %bb.n, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE8previousENS0_14slist_iteratorISF_Lb0EEE.exit.i.i69
  %i.hi = load i64, ptr %i.gx, align 16, !tbaa !26
  %i.hj = load i64, ptr %i.gw, align 16, !tbaa !26
  %i.hk = add i64 %i.hj, %i.hi
  store i64 %i.hk, ptr %i.gw, align 16, !tbaa !26
  store i64 0, ptr %i.gx, align 16, !tbaa !26
  br label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit81

.preheader.i53:                                   ; preds = %.critedge.i52, %.preheader.i53
  %.sroa.026.0.i54 = phi ptr [ %i.hm, %.preheader.i53 ], [ %i.hd, %.critedge.i52 ] ; 5 uses
  %.0.i55 = phi i64 [ %i.hl, %.preheader.i53 ], [ 0, %.critedge.i52 ]
  %i.hl = add i64 %.0.i55, 1                      ; 3 uses
  %i.hm = load ptr, ptr %.sroa.026.0.i54, align 8, !tbaa !23 ; 3 uses
  %.not48.i56 = icmp eq ptr %i.hm, %i.gz
  br i1 %.not48.i56, label %.critedge2.i57, label %.preheader.i53, !llvm.loop !10

.critedge2.i57:                                   ; preds = %.preheader.i53
  %.not17.i.i.i.i58 = icmp eq ptr %i.gy, %.sroa.026.0.i54
  %.not18.i.i.i.i59 = icmp eq ptr %i.gz, %.sroa.026.0.i54
  %or.cond19.i.i.i.i60 = or i1 %.not18.i.i.i.i59, %.not17.i.i.i.i58
  br i1 %or.cond19.i.i.i.i60, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i62, label %bb.o

bb.o:                                             ; preds = %.critedge2.i57
  store ptr %i.hm, ptr %i.gz, align 8, !tbaa !23
  store ptr %i.he, ptr %.sroa.026.0.i54, align 8, !tbaa !23
  store ptr %i.hd, ptr %i.gy, align 8, !tbaa !23
  %.pre98.i61 = load ptr, ptr %i.gz, align 8, !tbaa !23
  br label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i62

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i62: ; preds = %bb.o, %.critedge2.i57
  %i.hn = phi ptr [ %i.hd, %.critedge2.i57 ], [ %.pre98.i61, %bb.o ] ; 2 uses
  %i.ho = phi ptr [ %i.he, %.critedge2.i57 ], [ %i.hd, %bb.o ]
  %i.hp = load i64, ptr %i.gw, align 16, !tbaa !26
  %i.hq = add i64 %i.hp, %i.hl
  store i64 %i.hq, ptr %i.gw, align 16, !tbaa !26
  %i.hr = load i64, ptr %i.gx, align 16, !tbaa !26
  %i.hs = sub i64 %i.hr, %i.hl
  store i64 %i.hs, ptr %i.gx, align 16, !tbaa !26
  %i.ht = icmp eq ptr %i.hn, %i.gz
  br i1 %i.ht, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit81, label %.critedge.i52

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit81: ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i62, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i73, %.lr.ph146
  %.sroa.0107.4 = phi ptr [ %i.gy, %.lr.ph146 ], [ %.0.i.i.i.i.i.i.i67, %_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE14transfer_afterEPNS0_10slist_nodeIS4_EES9_S9_.exit.i.i73 ], [ %.sroa.026.0.i54, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i62 ]
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count
  br i1 %exitcond173.not, label %._crit_edge, label %.lr.ph146, !llvm.loop !559

._crit_edge:                                      ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit81, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %wide.trip.count, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit81 ]
  %.sroa.0107.2.lcssa = phi ptr [ %.sroa.0107.0.lcssa203, %.preheader.._crit_edge_crit_edge ], [ %.sroa.0107.4, %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_PNS0_14slist_iteratorISF_Lb1EEE.exit81 ]
  %i.hu = getelementptr [16 x i8], ptr %2, i64 %.pre-phi ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 -8     ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %._crit_edge
  %.0.i.i.i.i82 = phi ptr [ %.sroa.0107.2.lcssa, %._crit_edge ], [ %i.hw, %bb.p ] ; 4 uses
  %i.hw = load ptr, ptr %.0.i.i.i.i82, align 8, !tbaa !23, !noalias !567 ; 2 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.hv, %i.hw
  br i1 %.not.i.i.i.i83, label %bb.q, label %bb.p, !llvm.loop !7

bb.q:                                             ; preds = %bb.p
  %i.hx = getelementptr i8, ptr %i.hu, i64 -16
  %i.hy = load i64, ptr %i.hx, align 16, !tbaa !26
  %.not.i.i.i85 = icmp eq ptr %i.a, %i.hv
  %.not17.i.i.i86 = icmp eq ptr %i.a, %.0.i.i.i.i82
  %or.cond.i.i.i87 = or i1 %.not.i.i.i85, %.not17.i.i.i86
  %.not18.i.i.i88 = icmp eq ptr %i.hv, %.0.i.i.i.i82
  %or.cond19.i.i.i89 = or i1 %.not18.i.i.i88, %or.cond.i.i.i87
  br i1 %or.cond19.i.i.i89, label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit90, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hz = load ptr, ptr %i.hv, align 8, !tbaa !23
  %i.ia = load ptr, ptr %i.a, align 8, !tbaa !23
  store ptr %i.ia, ptr %.0.i.i.i.i82, align 8, !tbaa !23
  store ptr %i.hz, ptr %i.a, align 8, !tbaa !23
  br label %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit90

_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit90: ; preds = %bb.q, %bb.r
  %i.ib = load i64, ptr %0, align 8, !tbaa !26
  %i.ic = add i64 %i.ib, %i.hy
  store i64 %i.ic, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12splice_afterENS0_14slist_iteratorISF_Lb1EEERSG_SI_SI_m.exit90, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { allocsize(0) }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = distinct !{!5, !27}
!6 = distinct !{!6, !27}
!7 = distinct !{!7, !27}
!8 = distinct !{!8, !27}
!9 = distinct !{!9, !27}
!10 = distinct !{!10, !27}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"p1 _ZTSN5boost9intrusive10slist_nodeIPvEE", !20, i64 0}
!22 = !{!"_ZTSN5boost9intrusive10slist_nodeIPvEE", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"long", !16, i64 0}
!25 = !{!"_ZTSN5boost9intrusive6detail11size_holderILb1EmvEE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"_ZTSN5boost9intrusive17iiterator_membersIPNS0_10slist_nodeIPvEEPKNS0_8bhtraitsINS_9container9base_nodeI5emptyNS7_3dtl10slist_hookIS3_EELb0EEENS0_17slist_node_traitsIS3_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEELb0EEE", !21, i64 0}
!29 = !{!"_ZTSN5boost9intrusive14slist_iteratorINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEELb0EEE", !28, i64 0}
!30 = !{!29, !21, i64 0}
!31 = !{!28, !21, i64 0}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!"p1 _ZTSN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvEE", !20, i64 0}
!34 = !{!"_ZTSN5boost9intrusive14slist_iteratorINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEELb1EEE", !28, i64 0}
!35 = !{!34, !21, i64 0}
!36 = distinct !{!36, !"_ZN5boost9container5slistI5emptyvE11erase_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEESK_"}
!37 = distinct !{!37, !36, !"_ZN5boost9container5slistI5emptyvE11erase_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb1EEESK_: argument 0"}
!38 = distinct !{!38, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE23erase_after_and_disposeINS6_24allocator_node_destroyerINS3_13new_allocatorISA_EEEEEENS0_14slist_iteratorISF_Lb0EEENSM_ISF_Lb1EEESO_T_"}
!39 = distinct !{!39, !38, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE23erase_after_and_disposeINS6_24allocator_node_destroyerINS3_13new_allocatorISA_EEEEEENS0_14slist_iteratorISF_Lb0EEENSM_ISF_Lb1EEESO_T_: argument 0"}
!40 = distinct !{!40, !"_ZN5boost9container5slistI5emptyvE12insert_afterINS0_29value_init_construct_iteratorIS2_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS7_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS8_ISM_Lb1EEET_SP_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISP_mEE5valueoosr3dtl17is_input_iteratorISP_EE5valueL_ZNSQ_7is_sameINSQ_17integral_constantIjLj1EEESU_E5valueEEENSQ_13enable_if_natEE4typeE"}
!41 = distinct !{!41, !40, !"_ZN5boost9container5slistI5emptyvE12insert_afterINS0_29value_init_construct_iteratorIS2_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS7_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS8_ISM_Lb1EEET_SP_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISP_mEE5valueoosr3dtl17is_input_iteratorISP_EE5valueL_ZNSQ_7is_sameINSQ_17integral_constantIjLj1EEESU_E5valueEEENSQ_13enable_if_natEE4typeE: argument 0"}
!42 = distinct !{!42, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12insert_afterENS0_14slist_iteratorISF_Lb1EEERSA_"}
!43 = distinct !{!43, !42, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12insert_afterENS0_14slist_iteratorISF_Lb1EEERSA_: argument 0"}
!44 = !{!39, !37}
end_hunk_0
