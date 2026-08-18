inline.NumInlined: 27416
inline.NumDeleted: 3410
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS4_16simple_allocatorIS6_EEE7reserveEm:bb.a

bb.f:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS0_3dtl4pairINS2_24movable_and_copyable_intES6_EEEEPS7_S9_NS4_18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i.i.i
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !17
  %i.ap = shl i64 %i.ao, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ap) #21
  %.pre.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !16
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i.i: ; preds = %bb.f, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS0_3dtl4pairINS2_24movable_and_copyable_intES6_EEEEPS7_S9_NS4_18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS0_3dtl4pairINS2_24movable_and_copyable_intES6_EEEEPS7_S9_NS4_18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i.i.i
  %i.aq = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS0_3dtl4pairINS2_24movable_and_copyable_intES6_EEEEPS7_S9_NS4_18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.f ], [ %i.j, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS0_3dtl4pairINS2_24movable_and_copyable_intES6_EEEEPS7_S9_NS4_18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i.i.i ]
  store ptr %i.g, ptr %0, align 8, !tbaa !15
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !16
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  br label %_ZN5boost9container3dtl17flat_tree_reserveINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEEEEvRT_NSB_9size_typeENS_11move_detail5bool_ILb1EEE.exit

_ZN5boost9container3dtl17flat_tree_reserveINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEEEEvRT_NSB_9size_typeENS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.a, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS4_16simple_allocatorIS6_EEE16extract_sequenceEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !19
  store <2 x i64> %i.d, ptr %i.b, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS4_16simple_allocatorIS6_EEE16get_sequence_refEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS4_16simple_allocatorIS6_EEE17get_sequence_crefEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS4_16simple_allocatorIS6_EEE20adopt_sequence_equalEONS0_6vectorIS6_SC_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.f = load ptr, ptr %1, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !573  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.k = trunc i64 %i.j to i32
  %i.l = shl i32 %i.k, 1
  %i.m = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.l
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.i, align 8, !tbaa !573  ; 2 uses
  %.not.i.i6.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i6.i.i.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit9.i.i.i, label %.preheader.i.i.i7.i.i.i

.preheader.i.i.i7.i.i.i:                          ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.p = trunc i64 %i.o to i32
  %i.q = shl i32 %i.p, 1
  %i.r = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i.i, %i.q
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit9.i.i.i

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit9.i.i.i: ; preds = %.preheader.i.i.i7.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.n

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i: ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.d, !prof !18

bb.d:                                             ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not3.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.d
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 1
  %i.v = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i, %i.u
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.d
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.w = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i.i, label %bb.e, !prof !18

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !47
  %i.z = shl i64 %i.y, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #21
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i.i: ; preds = %bb.e, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %i.aa, ptr %0, align 8, !tbaa !15
  %i.ab = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  store <2 x i64> %i.ab, ptr %i.a, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_NS_11move_detail5bool_ILb1EEE.exit

_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS4_16simple_allocatorIS6_EEE21adopt_sequence_uniqueEONS0_6vectorIS6_SC_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS5_16simple_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESC_.exit, label %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit

_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.d = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.f = lshr i64 %i.b, 1
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !9, !noalias !632 ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !15, !noalias !635 ; 6 uses
  %.idx18 = shl i64 %.pre, 3                      ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx18 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr i8, ptr %i.i, i64 %.idx18
  %scevgep = getelementptr i8, ptr %i.k, i64 -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.at, %bb.f ] ; 8 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !638
  %i.n = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !21, !noalias !638
  %.not9.i = icmp slt i32 %i.m, %i.n
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 5 uses
  %.not1018.i = icmp eq ptr %i.o, %i.j
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.preheader.i
  %i.p = add i64 %.idx18, -24                     ; 2 uses
  %2 = shl i64 %indvar, 3                         ; 2 uses
  %i.q = sub i64 %i.p, %2
  %i.r = and i64 %i.q, 8
  %lcmp.mod.not.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph20.i.prol, label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol:                                  ; preds = %.lr.ph20.i.preheader
  %i.s = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !638
  %i.t = load i32, ptr %i.o, align 4, !tbaa !21, !noalias !638 ; 2 uses
  %.not11.i.prol = icmp slt i32 %i.s, %i.t
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph20.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph20.i.prol
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !21, !noalias !638
  store i32 0, ptr %i.o, align 4, !tbaa !21, !noalias !638
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.x = load i32, ptr %i.v, align 4, !tbaa !21, !noalias !638
  store i32 %i.x, ptr %i.w, align 4, !tbaa !21, !noalias !638
  store i32 0, ptr %i.v, align 4, !tbaa !21, !noalias !638
  br label %.lr.ph20.i.prol.loopexit.unr-lcssa

.lr.ph20.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph20.i.prol
  %i.y = phi ptr [ %i.u, %bb.b ], [ %i.l, %.lr.ph20.i.prol ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 16
  br label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol.loopexit:                         ; preds = %.lr.ph20.i.prol.loopexit.unr-lcssa, %.lr.ph20.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph20.i.preheader ], [ %i.y, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.l, %.lr.ph20.i.preheader ], [ %i.y, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr55 = phi ptr [ %i.o, %.lr.ph20.i.preheader ], [ %i.z, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.sroa.0.119.i.unr = phi ptr [ %.sroa.0.017.i, %.lr.ph20.i.preheader ], [ %i.o, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %i.aa = icmp eq i64 %i.p, %2
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.prol.loopexit, %bb.e
  %i.ab = phi ptr [ %i.ar, %bb.e ], [ %.unr, %.lr.ph20.i.prol.loopexit ] ; 4 uses
  %i.ac = phi ptr [ %i.as, %bb.e ], [ %.unr55, %.lr.ph20.i.prol.loopexit ] ; 5 uses
  %.sroa.0.119.i = phi ptr [ %i.ak, %bb.e ], [ %.sroa.0.119.i.unr, %.lr.ph20.i.prol.loopexit ]
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !21, !noalias !638
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !21, !noalias !638 ; 2 uses
  %.not11.i = icmp slt i32 %i.ad, %i.ae
  br i1 %.not11.i, label %bb.c, label %.lr.ph20.i.1

bb.c:                                             ; preds = %.lr.ph20.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !21, !noalias !638
  store i32 0, ptr %i.ac, align 4, !tbaa !21, !noalias !638
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.119.i, i64 12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !21, !noalias !638
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !21, !noalias !638
  store i32 0, ptr %i.ag, align 4, !tbaa !21, !noalias !638
  br label %.lr.ph20.i.1

.lr.ph20.i.1:                                     ; preds = %bb.c, %.lr.ph20.i
  %i.aj = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.lr.ph20.i ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !21, !noalias !638
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !21, !noalias !638 ; 2 uses
  %.not11.i.1 = icmp slt i32 %i.al, %i.am
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph20.i.1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store i32 %i.am, ptr %i.an, align 4, !tbaa !21, !noalias !638
  store i32 0, ptr %i.ak, align 4, !tbaa !21, !noalias !638
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !21, !noalias !638
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !21, !noalias !638
  store i32 0, ptr %i.ao, align 4, !tbaa !21, !noalias !638
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph20.i.1
  %i.ar = phi ptr [ %i.an, %bb.d ], [ %i.aj, %.lr.ph20.i.1 ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.as, %i.j
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph20.i, !llvm.loop !641

bb.f:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !642

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph20.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit, %.preheader.i
  %i.au = phi ptr [ %i.ar, %bb.e ], [ %i.l, %.preheader.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit ], [ %.lcssa.unr, %.lr.ph20.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit, %.loopexit.i
  %i.aw = phi ptr [ %i.av, %.loopexit.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit ] ; 2 uses
  %.not.i10 = icmp eq ptr %i.aw, %i.j
  br i1 %.not.i10, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESC_.exit, label %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_3dtl4pairINS2_24movable_and_copyable_intES6_EEEEPS7_EENS4_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_3dtl4pairINS2_24movable_and_copyable_intES6_EEEEPS7_EENS4_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit
  %i.ax = ptrtoint ptr %i.j to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3                 ; 2 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !noalias !643
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = shl i32 %i.bb, 1
  %i.bd = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.bc
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !643
  %i.be = sub i64 %.pre, %i.ba
  store i64 %i.be, ptr %i.a, align 8, !tbaa !16, !noalias !643
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESC_.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESC_.exit: ; preds = %bb.a, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS0_3dtl4pairINS2_24movable_and_copyable_intES6_EEEEPS7_EENS4_33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %.not.i11 = icmp eq ptr %1, %0
  br i1 %.not.i11, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvEaSEOS9_.exit, label %bb.g, !prof !18

bb.g:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESC_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !9  ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.g
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = shl i32 %i.bh, 1
  %i.bj = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.bi
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.g
  store i64 0, ptr %i.bf, align 8, !tbaa !9
  %i.bk = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !47
  %i.bn = shl i64 %i.bm, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #21
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i: ; preds = %bb.h, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i
  %i.bo = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %i.bo, ptr %0, align 8, !tbaa !15
  %i.bp = load <2 x i64>, ptr %i.a, align 8, !tbaa !19
  store <2 x i64> %i.bp, ptr %i.bf, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvEaSEOS9_.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvEaSEOS9_.exit: ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESC_.exit, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS4_16simple_allocatorIS6_EEE20adopt_sequence_equalENS0_15ordered_range_tEONS0_6vectorIS6_SC_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, %0
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvEaSEOS9_.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.f = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i, label %bb.c, !prof !18

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47
  %i.i = shl i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #21
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i: ; preds = %bb.c, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %i.j, ptr %0, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !19
  store <2 x i64> %i.l, ptr %i.a, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvEaSEOS9_.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvEaSEOS9_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS4_16simple_allocatorIS6_EEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS6_SC_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, %0
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvEaSEOS9_.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.f = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i, label %bb.c, !prof !18

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE5clearEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47
  %i.i = shl i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #21
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_move_assignIS8_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SB_E4typeELj0EEENSE_12is_differentISJ_S8_EENSE_5bool_ILb0EEESO_E4typeE.exit.i

end_hunk_0
begin_hunk_1_@_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESaIS6_EE7reserveEm:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_S8_NS2_18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i.i.i.i
  %i.ao = shl i64 %i.b, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ao) #24
  %.pre.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !657
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i.i: ; preds = %bb.f, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_S8_NS2_18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i.thread.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_S8_NS2_18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i.i.i.i
  %i.ap = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_S8_NS2_18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.f ], [ %i.j, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_S8_NS2_18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i.thread.i.i.i ]
  store ptr %i.g, ptr %0, align 8, !tbaa !656
  store i64 %i.ap, ptr %i.i, align 8, !tbaa !657
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  br label %_ZN5boost9container3dtl17flat_tree_reserveINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEEEEvRT_NSA_9size_typeENS_11move_detail5bool_ILb1EEE.exit

_ZN5boost9container3dtl17flat_tree_reserveINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEEEEvRT_NSA_9size_typeENS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.a, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESaIS6_EE16extract_sequenceEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vector.6") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !656
  store ptr %i.a, ptr %0, align 8, !tbaa !656
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !19
  store <2 x i64> %i.d, ptr %i.b, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESaIS6_EE16get_sequence_refEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESaIS6_EE17get_sequence_crefEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESaIS6_EE20adopt_sequence_equalEONS0_6vectorIS6_SB_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !653  ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !653
  %i.f = load ptr, ptr %1, align 8, !tbaa !656
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !653
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !573  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_.exit.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.k = trunc i64 %i.j to i32
  %i.l = shl i32 %i.k, 1
  %i.m = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.l
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_.exit.i

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.i, align 8, !tbaa !573  ; 2 uses
  %.not.i.i6.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i6.i.i.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit9.i.i.i, label %.preheader.i.i.i7.i.i.i

.preheader.i.i.i7.i.i.i:                          ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.p = trunc i64 %i.o to i32
  %i.q = shl i32 %i.p, 1
  %i.r = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i.i, %i.q
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit9.i.i.i

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit9.i.i.i: ; preds = %.preheader.i.i.i7.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.n

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_.exit.i: ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.d, !prof !18

bb.d:                                             ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_.exit.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !653  ; 2 uses
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not3.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.d
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 1
  %i.v = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i, %i.u
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.d
  store i64 0, ptr %i.a, align 8, !tbaa !653
  %i.w = load ptr, ptr %0, align 8, !tbaa !679    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i.i, label %bb.e, !prof !18

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !680
  %i.z = shl i64 %i.y, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #24
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i.i: ; preds = %bb.e, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !656
  store ptr %i.aa, ptr %0, align 8, !tbaa !656
  %i.ab = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  store <2 x i64> %i.ab, ptr %i.a, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_NS_11move_detail5bool_ILb1EEE.exit

_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_.exit.i, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESaIS6_EE21adopt_sequence_uniqueEONS0_6vectorIS6_SB_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !653  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESB_.exit, label %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit

_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.d = load ptr, ptr %1, align 8, !tbaa !656    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.f = lshr i64 %i.b, 1
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !653, !noalias !1249 ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !656, !noalias !1252 ; 6 uses
  %.idx18 = shl i64 %.pre, 3                      ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx18 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr i8, ptr %i.i, i64 %.idx18
  %scevgep = getelementptr i8, ptr %i.k, i64 -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.at, %bb.f ] ; 8 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !1255
  %i.n = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !21, !noalias !1255
  %.not9.i = icmp slt i32 %i.m, %i.n
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 5 uses
  %.not1018.i = icmp eq ptr %i.o, %i.j
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.preheader.i
  %i.p = add i64 %.idx18, -24                     ; 2 uses
  %2 = shl i64 %indvar, 3                         ; 2 uses
  %i.q = sub i64 %i.p, %2
  %i.r = and i64 %i.q, 8
  %lcmp.mod.not.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph20.i.prol, label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol:                                  ; preds = %.lr.ph20.i.preheader
  %i.s = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !1255
  %i.t = load i32, ptr %i.o, align 4, !tbaa !21, !noalias !1255 ; 2 uses
  %.not11.i.prol = icmp slt i32 %i.s, %i.t
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph20.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph20.i.prol
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !21, !noalias !1255
  store i32 0, ptr %i.o, align 4, !tbaa !21, !noalias !1255
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.x = load i32, ptr %i.v, align 4, !tbaa !21, !noalias !1255
  store i32 %i.x, ptr %i.w, align 4, !tbaa !21, !noalias !1255
  store i32 0, ptr %i.v, align 4, !tbaa !21, !noalias !1255
  br label %.lr.ph20.i.prol.loopexit.unr-lcssa

.lr.ph20.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph20.i.prol
  %i.y = phi ptr [ %i.u, %bb.b ], [ %i.l, %.lr.ph20.i.prol ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 16
  br label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol.loopexit:                         ; preds = %.lr.ph20.i.prol.loopexit.unr-lcssa, %.lr.ph20.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph20.i.preheader ], [ %i.y, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.l, %.lr.ph20.i.preheader ], [ %i.y, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr55 = phi ptr [ %i.o, %.lr.ph20.i.preheader ], [ %i.z, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.sroa.0.119.i.unr = phi ptr [ %.sroa.0.017.i, %.lr.ph20.i.preheader ], [ %i.o, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %i.aa = icmp eq i64 %i.p, %2
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.prol.loopexit, %bb.e
  %i.ab = phi ptr [ %i.ar, %bb.e ], [ %.unr, %.lr.ph20.i.prol.loopexit ] ; 4 uses
  %i.ac = phi ptr [ %i.as, %bb.e ], [ %.unr55, %.lr.ph20.i.prol.loopexit ] ; 5 uses
  %.sroa.0.119.i = phi ptr [ %i.ak, %bb.e ], [ %.sroa.0.119.i.unr, %.lr.ph20.i.prol.loopexit ]
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !21, !noalias !1255
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !21, !noalias !1255 ; 2 uses
  %.not11.i = icmp slt i32 %i.ad, %i.ae
  br i1 %.not11.i, label %bb.c, label %.lr.ph20.i.1

bb.c:                                             ; preds = %.lr.ph20.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !21, !noalias !1255
  store i32 0, ptr %i.ac, align 4, !tbaa !21, !noalias !1255
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.119.i, i64 12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !21, !noalias !1255
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !21, !noalias !1255
  store i32 0, ptr %i.ag, align 4, !tbaa !21, !noalias !1255
  br label %.lr.ph20.i.1

.lr.ph20.i.1:                                     ; preds = %bb.c, %.lr.ph20.i
  %i.aj = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.lr.ph20.i ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !21, !noalias !1255
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !21, !noalias !1255 ; 2 uses
  %.not11.i.1 = icmp slt i32 %i.al, %i.am
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph20.i.1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store i32 %i.am, ptr %i.an, align 4, !tbaa !21, !noalias !1255
  store i32 0, ptr %i.ak, align 4, !tbaa !21, !noalias !1255
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !21, !noalias !1255
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !21, !noalias !1255
  store i32 0, ptr %i.ao, align 4, !tbaa !21, !noalias !1255
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph20.i.1
  %i.ar = phi ptr [ %i.an, %bb.d ], [ %i.aj, %.lr.ph20.i.1 ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.as, %i.j
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph20.i, !llvm.loop !641

bb.f:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !642

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph20.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit, %.preheader.i
  %i.au = phi ptr [ %i.ar, %bb.e ], [ %i.l, %.preheader.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit ], [ %.lcssa.unr, %.lr.ph20.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit, %.loopexit.i
  %i.aw = phi ptr [ %i.av, %.loopexit.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit ] ; 2 uses
  %.not.i10 = icmp eq ptr %i.aw, %i.j
  br i1 %.not.i10, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESB_.exit, label %_ZN5boost9container15destroy_alloc_nISaINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SA_m.exit.i

_ZN5boost9container15destroy_alloc_nISaINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SA_m.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit
  %i.ax = ptrtoint ptr %i.j to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3                 ; 2 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !noalias !1258
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = shl i32 %i.bb, 1
  %i.bd = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.bc
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !1258
  %i.be = sub i64 %.pre, %i.ba
  store i64 %i.be, ptr %i.a, align 8, !tbaa !657, !noalias !1258
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESB_.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESB_.exit: ; preds = %bb.a, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit, %_ZN5boost9container15destroy_alloc_nISaINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_SA_m.exit.i
  %.not.i11 = icmp eq ptr %1, %0
  br i1 %.not.i11, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvEaSEOS8_.exit, label %bb.g, !prof !18

bb.g:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESB_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !653 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.g
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = shl i32 %i.bh, 1
  %i.bj = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.bi
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.g
  store i64 0, ptr %i.bf, align 8, !tbaa !653
  %i.bk = load ptr, ptr %0, align 8, !tbaa !679   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !680
  %i.bn = shl i64 %i.bm, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #24
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i: ; preds = %bb.h, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i
  %i.bo = load ptr, ptr %1, align 8, !tbaa !656
  store ptr %i.bo, ptr %0, align 8, !tbaa !656
  %i.bp = load <2 x i64>, ptr %i.a, align 8, !tbaa !19
  store <2 x i64> %i.bp, ptr %i.bf, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvEaSEOS8_.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvEaSEOS8_.exit: ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESB_.exit, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESaIS6_EE20adopt_sequence_equalENS0_15ordered_range_tEONS0_6vectorIS6_SB_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, %0
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvEaSEOS8_.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !653  ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !653
  %i.f = load ptr, ptr %0, align 8, !tbaa !679    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i, label %bb.c, !prof !18

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !680
  %i.i = shl i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #24
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i: ; preds = %bb.c, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !656
  store ptr %i.j, ptr %0, align 8, !tbaa !656
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !19
  store <2 x i64> %i.l, ptr %i.a, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvEaSEOS8_.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvEaSEOS8_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESaIS6_EE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS6_SB_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, %0
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvEaSEOS8_.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !653  ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !653
  %i.f = load ptr, ptr %0, align 8, !tbaa !679    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i, label %bb.c, !prof !18

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE5clearEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !680
  %i.i = shl i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #24
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_move_assignIS7_EEvONS1_IS6_T_vEEPNS_11move_detail13disable_if_orIvNS2_10is_versionINS0_14real_allocatorIS6_SA_E4typeELj0EEENSD_12is_differentISI_S7_EENSD_5bool_ILb0EEESN_E4typeE.exit.i

end_hunk_1
begin_hunk_2_@_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10EvvEEE20adopt_sequence_equalEOSC_:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_12small_vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EELm10EvvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1278 ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !1278
  %i.f = load ptr, ptr %1, align 8, !tbaa !1268
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1278
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !573  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EELm10EvvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.k = trunc i64 %i.j to i32
  %i.l = shl i32 %i.k, 1
  %i.m = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.l
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EELm10EvvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.i, align 8, !tbaa !573  ; 2 uses
  %.not.i.i6.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i6.i.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit9.i.i, label %.preheader.i.i.i7.i.i

.preheader.i.i.i7.i.i:                            ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.p = trunc i64 %i.o to i32
  %i.q = shl i32 %i.p, 1
  %i.r = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i, %i.q
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit9.i.i

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit9.i.i: ; preds = %.preheader.i.i.i7.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.n

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EELm10EvvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit: ; preds = %bb.b, %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container12small_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELm10EvvEaSEOS7_.exit, label %bb.d, !prof !18

bb.d:                                             ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EELm10EvvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit
  %i.s = load ptr, ptr %1, align 8, !tbaa !1268   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.a, align 8, !tbaa !1278 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.e
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.v = trunc i64 %i.u to i32
  %i.w = shl i32 %i.v, 1
  %i.x = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i, %i.w
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %bb.e
  store i64 0, ptr %i.a, align 8, !tbaa !1278
  %i.y = load ptr, ptr %0, align 8, !tbaa !1287   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = icmp eq ptr %i.z, %i.y
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.aa, !prof !1288
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignISA_EEvONS1_IS6_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, label %bb.f, !prof !1288

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1289
  %i.ad = shl i64 %i.ac, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #21
  %.pre.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !1268
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignISA_EEvONS1_IS6_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignISA_EEvONS1_IS6_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i
  %i.ae = phi ptr [ %i.s, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.f ]
  store ptr %i.ae, ptr %0, align 8, !tbaa !1268
  %i.af = load <2 x i64>, ptr %i.g, align 8, !tbaa !19
  store <2 x i64> %i.af, ptr %i.a, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container12small_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELm10EvvEaSEOS7_.exit

bb.g:                                             ; preds = %bb.d
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !1278, !noalias !1861
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ag
  invoke void @_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS6_EEEEvT_SG_PNS_11move_detail13disable_if_orIvNSH_7is_sameINSH_17integral_constantIjLj1EEENSK_IjLj0EEEEENSH_14is_convertibleISG_mEENS2_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %i.s, ptr %i.ah, ptr noundef null)
          to label %.noexc.i.i.i unwind label %bb.h

.noexc.i.i.i:                                     ; preds = %bb.g
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.noexc.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = shl i32 %i.aj, 1
  %i.al = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i, %i.ak
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  store i64 0, ptr %i.g, align 8, !tbaa !1278
  br label %_ZN5boost9container12small_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELm10EvvEaSEOS7_.exit

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #22
  unreachable

_ZN5boost9container12small_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELm10EvvEaSEOS7_.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EELm10EvvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignISA_EEvONS1_IS6_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10EvvEEE21adopt_sequence_uniqueEOSC_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_12small_vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EELm10EvvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_12small_vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EELm10EvvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1278 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit.thread, label %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit.thread: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !1268, !noalias !1864
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESE_.exit

_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.e = load ptr, ptr %1, align 8, !tbaa !1268   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.g = lshr i64 %i.b, 1
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 false)
  %i.i = sub nuw nsw i64 64, %i.h
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef %i.e, ptr noundef nonnull %i.f, i64 noundef %i.i, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1278, !noalias !1867 ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !1268, !noalias !1864 ; 8 uses
  %.idx17 = shl i64 %.pre, 3                      ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %.idx17 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr i8, ptr %i.j, i64 %.idx17
  %scevgep = getelementptr i8, ptr %i.l, i64 -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.m = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.au, %bb.f ] ; 8 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 6 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21, !noalias !1870
  %i.o = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !21, !noalias !1870
  %.not9.i = icmp slt i32 %i.n, %i.o
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 5 uses
  %.not1018.i = icmp eq ptr %i.p, %i.k
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.preheader.i
  %i.q = add i64 %.idx17, -24                     ; 2 uses
  %2 = shl i64 %indvar, 3                         ; 2 uses
  %i.r = sub i64 %i.q, %2
  %i.s = and i64 %i.r, 8
  %lcmp.mod.not.not = icmp eq i64 %i.s, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph20.i.prol, label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol:                                  ; preds = %.lr.ph20.i.preheader
  %i.t = load i32, ptr %i.m, align 4, !tbaa !21, !noalias !1870
  %i.u = load i32, ptr %i.p, align 4, !tbaa !21, !noalias !1870 ; 2 uses
  %.not11.i.prol = icmp slt i32 %i.t, %i.u
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph20.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph20.i.prol
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !21, !noalias !1870
  store i32 0, ptr %i.p, align 4, !tbaa !21, !noalias !1870
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.y = load i32, ptr %i.w, align 4, !tbaa !21, !noalias !1870
  store i32 %i.y, ptr %i.x, align 4, !tbaa !21, !noalias !1870
  store i32 0, ptr %i.w, align 4, !tbaa !21, !noalias !1870
  br label %.lr.ph20.i.prol.loopexit.unr-lcssa

.lr.ph20.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph20.i.prol
  %i.z = phi ptr [ %i.v, %bb.b ], [ %i.m, %.lr.ph20.i.prol ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 16
  br label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol.loopexit:                         ; preds = %.lr.ph20.i.prol.loopexit.unr-lcssa, %.lr.ph20.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph20.i.preheader ], [ %i.z, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.m, %.lr.ph20.i.preheader ], [ %i.z, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr57 = phi ptr [ %i.p, %.lr.ph20.i.preheader ], [ %i.aa, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.sroa.0.119.i.unr = phi ptr [ %.sroa.0.017.i, %.lr.ph20.i.preheader ], [ %i.p, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %i.ab = icmp eq i64 %i.q, %2
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.prol.loopexit, %bb.e
  %i.ac = phi ptr [ %i.as, %bb.e ], [ %.unr, %.lr.ph20.i.prol.loopexit ] ; 4 uses
  %i.ad = phi ptr [ %i.at, %bb.e ], [ %.unr57, %.lr.ph20.i.prol.loopexit ] ; 5 uses
  %.sroa.0.119.i = phi ptr [ %i.al, %bb.e ], [ %.sroa.0.119.i.unr, %.lr.ph20.i.prol.loopexit ]
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !21, !noalias !1870
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !21, !noalias !1870 ; 2 uses
  %.not11.i = icmp slt i32 %i.ae, %i.af
  br i1 %.not11.i, label %bb.c, label %.lr.ph20.i.1

bb.c:                                             ; preds = %.lr.ph20.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !21, !noalias !1870
  store i32 0, ptr %i.ad, align 4, !tbaa !21, !noalias !1870
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.119.i, i64 12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !21, !noalias !1870
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !21, !noalias !1870
  store i32 0, ptr %i.ah, align 4, !tbaa !21, !noalias !1870
  br label %.lr.ph20.i.1

.lr.ph20.i.1:                                     ; preds = %bb.c, %.lr.ph20.i
  %i.ak = phi ptr [ %i.ag, %bb.c ], [ %i.ac, %.lr.ph20.i ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !21, !noalias !1870
  %i.an = load i32, ptr %i.al, align 4, !tbaa !21, !noalias !1870 ; 2 uses
  %.not11.i.1 = icmp slt i32 %i.am, %i.an
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph20.i.1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !21, !noalias !1870
  store i32 0, ptr %i.al, align 4, !tbaa !21, !noalias !1870
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !21, !noalias !1870
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !21, !noalias !1870
  store i32 0, ptr %i.ap, align 4, !tbaa !21, !noalias !1870
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph20.i.1
  %i.as = phi ptr [ %i.ao, %bb.d ], [ %i.ak, %.lr.ph20.i.1 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.at, %i.k
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph20.i, !llvm.loop !641

bb.f:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.k
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !642

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph20.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit, %.preheader.i
  %i.av = phi ptr [ %i.as, %bb.e ], [ %i.m, %.preheader.i ], [ %i.j, %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit ], [ %.lcssa.unr, %.lr.ph20.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit, %.loopexit.i
  %i.ax = phi ptr [ %i.aw, %.loopexit.i ], [ %i.j, %_ZN5boost7movelib7pdqsortIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_T0_.exit ] ; 2 uses
  %.not.i10 = icmp eq ptr %i.ax, %i.k
  br i1 %.not.i10, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESE_.exit, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_EENS3_33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_EENS3_33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit
  %i.ay = ptrtoint ptr %i.k to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !noalias !1873
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = shl i32 %i.bc, 1
  %i.be = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.bd
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !1873
  %i.bf = sub i64 %.pre, %i.bb
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !1270, !noalias !1873
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESE_.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESE_.exit: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit.thread, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_EENS3_33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit.i
  %i.bg = phi ptr [ %i.d, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit.thread ], [ %i.j, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit ], [ %i.j, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_EENS3_33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit.i ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container12small_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELm10EvvEaSEOS7_.exit, label %bb.g, !prof !18

bb.g:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESE_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, %i.bg
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1278 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.h
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = shl i32 %i.bk, 1
  %i.bm = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i, %i.bl
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %bb.h
  store i64 0, ptr %i.bi, align 8, !tbaa !1278
  %i.bn = load ptr, ptr %0, align 8, !tbaa !1287  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = icmp eq ptr %i.bo, %i.bn
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.bp, !prof !1288
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignISA_EEvONS1_IS6_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, label %bb.i, !prof !1288

bb.i:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1289
  %i.bs = shl i64 %i.br, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #21
  %.pre.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !1268
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignISA_EEvONS1_IS6_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignISA_EEvONS1_IS6_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i: ; preds = %bb.i, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i
  %i.bt = phi ptr [ %i.bg, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.i ]
  store ptr %i.bt, ptr %0, align 8, !tbaa !1268
  %i.bu = load <2 x i64>, ptr %i.a, align 8, !tbaa !19
  store <2 x i64> %i.bu, ptr %i.bi, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container12small_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELm10EvvEaSEOS7_.exit

bb.j:                                             ; preds = %bb.g
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !1278, !noalias !1876
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bv
  invoke void @_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS6_EEEEvT_SG_PNS_11move_detail13disable_if_orIvNSH_7is_sameINSH_17integral_constantIjLj1EEENSK_IjLj0EEEEENSH_14is_convertibleISG_mEENS2_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %i.bg, ptr %i.bw, ptr noundef null)
          to label %.noexc.i.i.i unwind label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.j
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !1278 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.noexc.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.by = trunc i64 %i.bx to i32
  %i.bz = shl i32 %i.by, 1
  %i.ca = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i, %i.bz
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  store i64 0, ptr %i.a, align 8, !tbaa !1278
  br label %_ZN5boost9container12small_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELm10EvvEaSEOS7_.exit

bb.k:                                             ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #22
  unreachable

_ZN5boost9container12small_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELm10EvvEaSEOS7_.exit: ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESE_.exit, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignISA_EEvONS1_IS6_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_12small_vectorIS6_Lm10EvvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSC_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container12small_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELm10EvvEaSEOS7_.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !1268   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1278 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.e = trunc i64 %i.d to i32
  %i.f = shl i32 %i.e, 1
  %i.g = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i, %i.f
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %bb.c
  store i64 0, ptr %i.c, align 8, !tbaa !1278
  %i.h = load ptr, ptr %0, align 8, !tbaa !1287   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = icmp eq ptr %i.i, %i.h
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.j, !prof !1288
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignISA_EEvONS1_IS6_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, label %bb.d, !prof !1288

bb.d:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1289
  %i.m = shl i64 %i.l, 3
end_hunk_2
begin_hunk_3_@_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_NSC_5bool_ILb1EEE:bb.a
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.07.i.i.i8.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !21
  %i.bg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bi = add nuw i64 %.07.i.i.i8.i.i, 4          ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !3251

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.loopexit.unr-lcssa, %.preheader.i.i.i7.i.i
  %.07.i.i.i8.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i7.i.i ], [ %i.bi, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter10, 0
  call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.07.i.i.i8.i.i.epil = phi i64 [ %.07.i.i.i8.i.i.epil.init, %.epil.preheader ], [ %i.bm, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.07.i.i.i8.i.i.epil
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !21
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bm = add nuw i64 %.07.i.i.i8.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter10
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i, label %bb.f, !llvm.loop !3252

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.loopexit.unr-lcssa, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.ap

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod16.not = icmp eq i64 %xtraiter14, 0
  br i1 %lcmp.mod16.not, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_.exit, label %.epil.preheader13

.epil.preheader13:                                ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i
  %.07.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.ao, %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_.exit.loopexit.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter14, 0
  call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader13
  %.07.i.i.i.i.i.epil = phi i64 [ %.07.i.i.i.i.i.epil.init, %.epil.preheader13 ], [ %i.bq, %bb.g ] ; 2 uses
  %epil.iter15 = phi i64 [ 0, %.epil.preheader13 ], [ %epil.iter15.next, %bb.g ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i.i.i.i.i.epil
  store i32 -2147483648, ptr %i.bn, align 4, !tbaa !21
  %i.bo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bq = add nuw i64 %.07.i.i.i.i.i.epil, 1
  %epil.iter15.next = add i64 %epil.iter15, 1     ; 2 uses
  %epil.iter15.cmp.not = icmp eq i64 %epil.iter15.next, %xtraiter14
  br i1 %epil.iter15.cmp.not, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_.exit, label %bb.g, !llvm.loop !3253

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_.exit.loopexit.unr-lcssa, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i = icmp eq ptr %1, %0
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEaSEOS6_.exit, label %bb.h, !prof !18

bb.h:                                             ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_.exit
  %i.br = load i64, ptr %i.a, align 8, !tbaa !2615 ; 5 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.h
  %i.bs = load ptr, ptr %0, align 8, !tbaa !2619  ; 2 uses
  %xtraiter20 = and i64 %i.br, 3                  ; 2 uses
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.br, %.lr.ph.i.preheader.i.i.i.i.i ]
  %storemerge4.i.i.i.i.i.i.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bs, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter22 = phi i64 [ %prol.iter22.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ]
  %i.bt = add i64 %.05.i.i.i.i.i.i.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i.prol, align 4, !tbaa !21
  %i.bu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bv = add i32 %i.bu, -1
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter22.next = add i64 %prol.iter22, 1     ; 2 uses
  %prol.iter22.cmp.not = icmp eq i64 %prol.iter22.next, %xtraiter20
  br i1 %prol.iter22.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3254

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.i.unr = phi i64 [ %i.br, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.i.unr = phi ptr [ %i.bs, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bx = icmp ult i64 %i.br, 4
  br i1 %i.bx, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i, align 4, !tbaa !21
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !21
  %i.cb = add i32 %i.by, -2
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.cc, align 4, !tbaa !21
  %i.cd = add i32 %i.by, -3
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 12
  %i.cf = add i64 %.05.i.i.i.i.i.i, -4            ; 2 uses
  store i32 -2147483648, ptr %i.ce, align 4, !tbaa !21
  %i.cg = add i32 %i.by, -4
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2645

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.h
  store i64 0, ptr %i.a, align 8, !tbaa !2615
  %i.ci = load ptr, ptr %0, align 8, !tbaa !2646  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_move_assignIS5_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S8_E4typeELj0EEENSB_12is_differentISH_S5_EENSB_5bool_ILb0EEESM_E4typeE.exit.i, label %bb.i, !prof !18

bb.i:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !2647
  %i.cl = shl i64 %i.ck, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cl) #21
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_move_assignIS5_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S8_E4typeELj0EEENSB_12is_differentISH_S5_EENSB_5bool_ILb0EEESM_E4typeE.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_move_assignIS5_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S8_E4typeELj0EEENSB_12is_differentISH_S5_EENSB_5bool_ILb0EEESM_E4typeE.exit.i: ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i
  %i.cm = load ptr, ptr %1, align 8, !tbaa !2619
  store ptr %i.cm, ptr %0, align 8, !tbaa !2619
  %i.cn = load <2 x i64>, ptr %i.t, align 8, !tbaa !19
  store <2 x i64> %i.cn, ptr %i.a, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEaSEOS6_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEaSEOS6_.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_move_assignIS5_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S8_E4typeELj0EEENSB_12is_differentISH_S5_EENSB_5bool_ILb0EEESM_E4typeE.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE21adopt_sequence_uniqueEONS0_6vectorIS4_SB_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_NSC_5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorINS0_4test24movable_and_copyable_intENS4_16simple_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_NSC_5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2615 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit

_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 2
  %i.d = load ptr, ptr %1, align 8, !tbaa !2619   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.f = lshr i64 %i.b, 1
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_NS0_9iter_sizeISF_E4typeEb(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !2615, !noalias !3255 ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !2619, !noalias !3258 ; 6 uses
  %.idx18 = shl i64 %.pre, 2                      ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx18 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = getelementptr i8, ptr %i.i, i64 %.idx18
  %scevgep = getelementptr i8, ptr %i.k, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.ak, %bb.f ] ; 7 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !3261
  %i.n = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !21, !noalias !3261
  %.not9.i = icmp slt i32 %i.m, %i.n
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 4 ; 4 uses
  %.not1018.i = icmp eq ptr %i.o, %i.j
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph19.i.preheader

.lr.ph19.i.preheader:                             ; preds = %.preheader.i
  %i.p = add i64 %.idx18, -12                     ; 2 uses
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.q = sub i64 %i.p, %2
  %i.r = and i64 %i.q, 4
  %lcmp.mod.not.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph19.i.prol, label %.lr.ph19.i.prol.loopexit

.lr.ph19.i.prol:                                  ; preds = %.lr.ph19.i.preheader
  %i.s = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !3261
  %i.t = load i32, ptr %i.o, align 4, !tbaa !21, !noalias !3261 ; 2 uses
  %.not11.i.prol = icmp slt i32 %i.s, %i.t
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph19.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph19.i.prol
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !21, !noalias !3261
  store i32 0, ptr %i.o, align 4, !tbaa !21, !noalias !3261
  br label %.lr.ph19.i.prol.loopexit.unr-lcssa

.lr.ph19.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph19.i.prol
  %i.v = phi ptr [ %i.u, %bb.b ], [ %i.l, %.lr.ph19.i.prol ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8
  br label %.lr.ph19.i.prol.loopexit

.lr.ph19.i.prol.loopexit:                         ; preds = %.lr.ph19.i.prol.loopexit.unr-lcssa, %.lr.ph19.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph19.i.preheader ], [ %i.v, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.l, %.lr.ph19.i.preheader ], [ %i.v, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %.unr55 = phi ptr [ %i.o, %.lr.ph19.i.preheader ], [ %i.w, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %i.x = icmp eq i64 %i.p, %2
  br i1 %i.x, label %.loopexit.i, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.prol.loopexit, %bb.e
  %i.y = phi ptr [ %i.ai, %bb.e ], [ %.unr, %.lr.ph19.i.prol.loopexit ] ; 3 uses
  %i.z = phi ptr [ %i.aj, %bb.e ], [ %.unr55, %.lr.ph19.i.prol.loopexit ] ; 4 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !21, !noalias !3261
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !21, !noalias !3261 ; 2 uses
  %.not11.i = icmp slt i32 %i.aa, %i.ab
  br i1 %.not11.i, label %bb.c, label %.lr.ph19.i.1

bb.c:                                             ; preds = %.lr.ph19.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !21, !noalias !3261
  store i32 0, ptr %i.z, align 4, !tbaa !21, !noalias !3261
  br label %.lr.ph19.i.1

.lr.ph19.i.1:                                     ; preds = %bb.c, %.lr.ph19.i
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ %i.y, %.lr.ph19.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !21, !noalias !3261
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !21, !noalias !3261 ; 2 uses
  %.not11.i.1 = icmp slt i32 %i.af, %i.ag
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph19.i.1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !21, !noalias !3261
  store i32 0, ptr %i.ae, align 4, !tbaa !21, !noalias !3261
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph19.i.1
  %i.ai = phi ptr [ %i.ah, %bb.d ], [ %i.ad, %.lr.ph19.i.1 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.aj, %i.j
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph19.i, !llvm.loop !3264

bb.f:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 4 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3265

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph19.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit, %.preheader.i
  %i.al = phi ptr [ %i.ai, %bb.e ], [ %i.l, %.preheader.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit ], [ %.lcssa.unr, %.lr.ph19.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit, %.loopexit.i
  %i.an = phi ptr [ %i.am, %.loopexit.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit ] ; 4 uses
  %.not.i10 = icmp eq ptr %i.an, %i.j
  br i1 %.not.i10, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit
  %i.ao = ptrtoint ptr %i.j to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 5 uses
  %xtraiter56 = and i64 %i.ar, 3                  ; 2 uses
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph.i8.i.prol
  %.05.i.i.prol = phi i64 [ %i.as, %.lr.ph.i8.i.prol ], [ %i.ar, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.av, %.lr.ph.i8.i.prol ], [ %i.an, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.i.prol ], [ 0, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %i.as = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !21, !noalias !3266
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3266
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3266
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter56
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !3269

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.ar, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.as, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.an, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %i.aw = icmp ult i64 %i.ar, 4
  br i1 %i.aw, label %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.be, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bg, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !21, !noalias !3266
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3266 ; 4 uses
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3266
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !21, !noalias !3266
  %i.ba = add i32 %i.ax, -2
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3266
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !21, !noalias !3266
  %i.bc = add i32 %i.ax, -3
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3266
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.be = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !21, !noalias !3266
  %i.bf = add i32 %i.ax, -4
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3266
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !2645

_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bh = sub i64 %.pre, %i.ar
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !2620, !noalias !3266
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.a, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %.not.i11 = icmp eq ptr %1, %0
  br i1 %.not.i11, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEaSEOS6_.exit, label %bb.g, !prof !18

bb.g:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !2615 ; 5 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.g
  %i.bk = load ptr, ptr %0, align 8, !tbaa !2619  ; 2 uses
  %xtraiter58 = and i64 %i.bj, 3                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bj, %.lr.ph.i.preheader.i.i.i.i.i ]
  %storemerge4.i.i.i.i.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bk, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ]
  %i.bl = add i64 %.05.i.i.i.i.i.i.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i.prol, align 4, !tbaa !21
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3270

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.i.unr = phi i64 [ %i.bj, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.i.unr = phi ptr [ %i.bk, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bp = icmp ult i64 %i.bj, 4
  br i1 %i.bp, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i, align 4, !tbaa !21
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.bs, align 4, !tbaa !21
  %i.bt = add i32 %i.bq, -2
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.bu, align 4, !tbaa !21
  %i.bv = add i32 %i.bq, -3
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 12
  %i.bx = add i64 %.05.i.i.i.i.i.i, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bw, align 4, !tbaa !21
  %i.by = add i32 %i.bq, -4
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2645

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.g
  store i64 0, ptr %i.bi, align 8, !tbaa !2615
  %i.ca = load ptr, ptr %0, align 8, !tbaa !2646  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_move_assignIS5_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S8_E4typeELj0EEENSB_12is_differentISH_S5_EENSB_5bool_ILb0EEESM_E4typeE.exit.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !2647
  %i.cd = shl i64 %i.cc, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cd) #21
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_move_assignIS5_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S8_E4typeELj0EEENSB_12is_differentISH_S5_EENSB_5bool_ILb0EEESM_E4typeE.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_move_assignIS5_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S8_E4typeELj0EEENSB_12is_differentISH_S5_EENSB_5bool_ILb0EEESM_E4typeE.exit.i: ; preds = %bb.h, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5clearEv.exit.i.i.i
  %i.ce = load ptr, ptr %1, align 8, !tbaa !2619
  store ptr %i.ce, ptr %0, align 8, !tbaa !2619
  %i.cf = load <2 x i64>, ptr %i.a, align 8, !tbaa !19
  store <2 x i64> %i.cf, ptr %i.bi, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEaSEOS6_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEaSEOS6_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_move_assignIS5_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S8_E4typeELj0EEENSB_12is_differentISH_S5_EENSB_5bool_ILb0EEESM_E4typeE.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE20adopt_sequence_equalENS0_15ordered_range_tEONS0_6vectorIS4_SB_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, %0
end_hunk_3
begin_hunk_4_@_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_NSB_5bool_ILb1EEE:bb.a
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.07.i.i.i8.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !21
  %i.bg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bi = add nuw i64 %.07.i.i.i8.i.i, 4          ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !3251

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.loopexit.unr-lcssa, %.preheader.i.i.i7.i.i
  %.07.i.i.i8.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i7.i.i ], [ %i.bi, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter10, 0
  call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.07.i.i.i8.i.i.epil = phi i64 [ %.07.i.i.i8.i.i.epil.init, %.epil.preheader ], [ %i.bm, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.07.i.i.i8.i.i.epil
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !21
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bm = add nuw i64 %.07.i.i.i8.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter10
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i, label %bb.f, !llvm.loop !3903

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.loopexit.unr-lcssa, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.ap

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod16.not = icmp eq i64 %xtraiter14, 0
  br i1 %lcmp.mod16.not, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_.exit, label %.epil.preheader13

.epil.preheader13:                                ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i
  %.07.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.ao, %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_.exit.loopexit.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter14, 0
  call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader13
  %.07.i.i.i.i.i.epil = phi i64 [ %.07.i.i.i.i.i.epil.init, %.epil.preheader13 ], [ %i.bq, %bb.g ] ; 2 uses
  %epil.iter15 = phi i64 [ 0, %.epil.preheader13 ], [ %epil.iter15.next, %bb.g ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i.i.i.i.i.epil
  store i32 -2147483648, ptr %i.bn, align 4, !tbaa !21
  %i.bo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bq = add nuw i64 %.07.i.i.i.i.i.epil, 1
  %epil.iter15.next = add i64 %epil.iter15, 1     ; 2 uses
  %epil.iter15.cmp.not = icmp eq i64 %epil.iter15.next, %xtraiter14
  br i1 %epil.iter15.cmp.not, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_.exit, label %bb.g, !llvm.loop !3904

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_.exit.loopexit.unr-lcssa, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i = icmp eq ptr %1, %0
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit, label %bb.h, !prof !18

bb.h:                                             ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_.exit
  %i.br = load i64, ptr %i.a, align 8, !tbaa !3280 ; 5 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.h
  %i.bs = load ptr, ptr %0, align 8, !tbaa !3283  ; 2 uses
  %xtraiter20 = and i64 %i.br, 3                  ; 2 uses
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.br, %.lr.ph.i.preheader.i.i.i.i.i ]
  %storemerge4.i.i.i.i.i.i.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bs, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter22 = phi i64 [ %prol.iter22.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ]
  %i.bt = add i64 %.05.i.i.i.i.i.i.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i.prol, align 4, !tbaa !21
  %i.bu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bv = add i32 %i.bu, -1
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter22.next = add i64 %prol.iter22, 1     ; 2 uses
  %prol.iter22.cmp.not = icmp eq i64 %prol.iter22.next, %xtraiter20
  br i1 %prol.iter22.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3905

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.i.unr = phi i64 [ %i.br, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.i.unr = phi ptr [ %i.bs, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bx = icmp ult i64 %i.br, 4
  br i1 %i.bx, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i, align 4, !tbaa !21
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !21
  %i.cb = add i32 %i.by, -2
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.cc, align 4, !tbaa !21
  %i.cd = add i32 %i.by, -3
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 12
  %i.cf = add i64 %.05.i.i.i.i.i.i, -4            ; 2 uses
  store i32 -2147483648, ptr %i.ce, align 4, !tbaa !21
  %i.cg = add i32 %i.by, -4
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3309

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.h
  store i64 0, ptr %i.a, align 8, !tbaa !3280
  %i.ci = load ptr, ptr %0, align 8, !tbaa !3310  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_move_assignIS4_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit.i, label %bb.i, !prof !18

bb.i:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !3311
  %i.cl = shl i64 %i.ck, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cl) #24
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_move_assignIS4_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_move_assignIS4_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit.i: ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i
  %i.cm = load ptr, ptr %1, align 8, !tbaa !3283
  store ptr %i.cm, ptr %0, align 8, !tbaa !3283
  %i.cn = load <2 x i64>, ptr %i.t, align 8, !tbaa !19
  store <2 x i64> %i.cn, ptr %i.a, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_move_assignIS4_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESaIS4_EE21adopt_sequence_uniqueEONS0_6vectorIS4_SA_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_NSB_5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorINS0_4test24movable_and_copyable_intESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSF_T0_NSB_5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3280 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit

_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 2
  %i.d = load ptr, ptr %1, align 8, !tbaa !3283   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.f = lshr i64 %i.b, 1
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_NS0_9iter_sizeISF_E4typeEb(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !3280, !noalias !3906 ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !3283, !noalias !3909 ; 6 uses
  %.idx18 = shl i64 %.pre, 2                      ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx18 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = getelementptr i8, ptr %i.i, i64 %.idx18
  %scevgep = getelementptr i8, ptr %i.k, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.ak, %bb.f ] ; 7 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !3912
  %i.n = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !21, !noalias !3912
  %.not9.i = icmp slt i32 %i.m, %i.n
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 4 ; 4 uses
  %.not1018.i = icmp eq ptr %i.o, %i.j
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph19.i.preheader

.lr.ph19.i.preheader:                             ; preds = %.preheader.i
  %i.p = add i64 %.idx18, -12                     ; 2 uses
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.q = sub i64 %i.p, %2
  %i.r = and i64 %i.q, 4
  %lcmp.mod.not.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph19.i.prol, label %.lr.ph19.i.prol.loopexit

.lr.ph19.i.prol:                                  ; preds = %.lr.ph19.i.preheader
  %i.s = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !3912
  %i.t = load i32, ptr %i.o, align 4, !tbaa !21, !noalias !3912 ; 2 uses
  %.not11.i.prol = icmp slt i32 %i.s, %i.t
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph19.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph19.i.prol
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !21, !noalias !3912
  store i32 0, ptr %i.o, align 4, !tbaa !21, !noalias !3912
  br label %.lr.ph19.i.prol.loopexit.unr-lcssa

.lr.ph19.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph19.i.prol
  %i.v = phi ptr [ %i.u, %bb.b ], [ %i.l, %.lr.ph19.i.prol ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8
  br label %.lr.ph19.i.prol.loopexit

.lr.ph19.i.prol.loopexit:                         ; preds = %.lr.ph19.i.prol.loopexit.unr-lcssa, %.lr.ph19.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph19.i.preheader ], [ %i.v, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.l, %.lr.ph19.i.preheader ], [ %i.v, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %.unr55 = phi ptr [ %i.o, %.lr.ph19.i.preheader ], [ %i.w, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %i.x = icmp eq i64 %i.p, %2
  br i1 %i.x, label %.loopexit.i, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.prol.loopexit, %bb.e
  %i.y = phi ptr [ %i.ai, %bb.e ], [ %.unr, %.lr.ph19.i.prol.loopexit ] ; 3 uses
  %i.z = phi ptr [ %i.aj, %bb.e ], [ %.unr55, %.lr.ph19.i.prol.loopexit ] ; 4 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !21, !noalias !3912
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !21, !noalias !3912 ; 2 uses
  %.not11.i = icmp slt i32 %i.aa, %i.ab
  br i1 %.not11.i, label %bb.c, label %.lr.ph19.i.1

bb.c:                                             ; preds = %.lr.ph19.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !21, !noalias !3912
  store i32 0, ptr %i.z, align 4, !tbaa !21, !noalias !3912
  br label %.lr.ph19.i.1

.lr.ph19.i.1:                                     ; preds = %bb.c, %.lr.ph19.i
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ %i.y, %.lr.ph19.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !21, !noalias !3912
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !21, !noalias !3912 ; 2 uses
  %.not11.i.1 = icmp slt i32 %i.af, %i.ag
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph19.i.1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !21, !noalias !3912
  store i32 0, ptr %i.ae, align 4, !tbaa !21, !noalias !3912
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph19.i.1
  %i.ai = phi ptr [ %i.ah, %bb.d ], [ %i.ad, %.lr.ph19.i.1 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.aj, %i.j
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph19.i, !llvm.loop !3264

bb.f:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 4 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3265

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph19.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit, %.preheader.i
  %i.al = phi ptr [ %i.ai, %bb.e ], [ %i.l, %.preheader.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit ], [ %.lcssa.unr, %.lr.ph19.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit, %.loopexit.i
  %i.an = phi ptr [ %i.am, %.loopexit.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit ] ; 4 uses
  %.not.i10 = icmp eq ptr %i.an, %i.j
  br i1 %.not.i10, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit
  %i.ao = ptrtoint ptr %i.j to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 5 uses
  %xtraiter56 = and i64 %i.ar, 3                  ; 2 uses
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph.i8.i.prol
  %.05.i.i.prol = phi i64 [ %i.as, %.lr.ph.i8.i.prol ], [ %i.ar, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.av, %.lr.ph.i8.i.prol ], [ %i.an, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.i.prol ], [ 0, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %i.as = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !21, !noalias !3915
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3915
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3915
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter56
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !3918

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.ar, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.as, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.an, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %i.aw = icmp ult i64 %i.ar, 4
  br i1 %i.aw, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.be, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bg, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !21, !noalias !3915
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3915 ; 4 uses
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3915
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !21, !noalias !3915
  %i.ba = add i32 %i.ax, -2
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3915
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !21, !noalias !3915
  %i.bc = add i32 %i.ax, -3
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3915
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.be = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !21, !noalias !3915
  %i.bf = add i32 %i.ax, -4
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !3915
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !3309

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bh = sub i64 %.pre, %i.ar
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !3284, !noalias !3915
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit: ; preds = %bb.a, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %.not.i11 = icmp eq ptr %1, %0
  br i1 %.not.i11, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit, label %bb.g, !prof !18

bb.g:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !3280 ; 5 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.g
  %i.bk = load ptr, ptr %0, align 8, !tbaa !3283  ; 2 uses
  %xtraiter58 = and i64 %i.bj, 3                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bj, %.lr.ph.i.preheader.i.i.i.i.i ]
  %storemerge4.i.i.i.i.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bk, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ]
  %i.bl = add i64 %.05.i.i.i.i.i.i.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i.prol, align 4, !tbaa !21
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3919

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.i.unr = phi i64 [ %i.bj, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.i.unr = phi ptr [ %i.bk, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bp = icmp ult i64 %i.bj, 4
  br i1 %i.bp, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i, align 4, !tbaa !21
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.bs, align 4, !tbaa !21
  %i.bt = add i32 %i.bq, -2
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.bu, align 4, !tbaa !21
  %i.bv = add i32 %i.bq, -3
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 12
  %i.bx = add i64 %.05.i.i.i.i.i.i, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bw, align 4, !tbaa !21
  %i.by = add i32 %i.bq, -4
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3309

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.g
  store i64 0, ptr %i.bi, align 8, !tbaa !3280
  %i.ca = load ptr, ptr %0, align 8, !tbaa !3310  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_move_assignIS4_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !3311
  %i.cd = shl i64 %i.cc, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cd) #24
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_move_assignIS4_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_move_assignIS4_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit.i: ; preds = %bb.h, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5clearEv.exit.i.i.i
  %i.ce = load ptr, ptr %1, align 8, !tbaa !3283
  store ptr %i.ce, ptr %0, align 8, !tbaa !3283
  %i.cf = load <2 x i64>, ptr %i.a, align 8, !tbaa !19
  store <2 x i64> %i.cf, ptr %i.bi, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_move_assignIS4_EEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESaIS4_EE20adopt_sequence_equalENS0_15ordered_range_tEONS0_6vectorIS4_SA_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, %0
end_hunk_4
begin_hunk_5_@_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_12small_vectorIS4_Lm10EvvEEE20adopt_sequence_equalEOSB_:bb.a
  %niter15 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.new ], [ %niter15.next.3, %bb.c ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i.i.i.i.i.i
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !21
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 -2147483648, ptr %i.ad, align 4, !tbaa !21
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !21
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !21
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ao = add nuw i64 %.07.i.i.i.i.i.i, 4         ; 2 uses
  %niter15.next.3 = add nuw i64 %niter15, 4       ; 2 uses
  %niter15.ncmp.3 = icmp eq i64 %niter15.next.3, %unroll_iter14
  br i1 %niter15.ncmp.3, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit.i.loopexit.unr-lcssa, label %bb.c, !llvm.loop !3251

bb.d:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !3248 ; 4 uses
  %.not.i.i6.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i6.i.i.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.i, label %.preheader.i.i.i7.i.i.i

.preheader.i.i.i7.i.i.i:                          ; preds = %bb.d
  %i.ar = load ptr, ptr %2, align 8, !tbaa !3250  ; 5 uses
  %xtraiter6 = and i64 %i.aq, 3                   ; 3 uses
  %i.as = icmp ult i64 %i.aq, 4
  br i1 %i.as, label %.epil.preheader, label %.preheader.i.i.i7.i.i.i.new

.preheader.i.i.i7.i.i.i.new:                      ; preds = %.preheader.i.i.i7.i.i.i
  %unroll_iter = and i64 %i.aq, -4
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.i.i7.i.i.i.new
  %.07.i.i.i8.i.i.i = phi i64 [ 0, %.preheader.i.i.i7.i.i.i.new ], [ %i.bi, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i7.i.i.i.new ], [ %niter.next.3, %bb.e ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.07.i.i.i8.i.i.i
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !21
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.07.i.i.i8.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 -2147483648, ptr %i.ax, align 4, !tbaa !21
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.07.i.i.i8.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !21
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.07.i.i.i8.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !21
  %i.bg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bi = add nuw i64 %.07.i.i.i8.i.i.i, 4        ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !3251

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod7.not = icmp eq i64 %xtraiter6, 0
  br i1 %lcmp.mod7.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i7.i.i.i
  %.07.i.i.i8.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i7.i.i.i ], [ %i.bi, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter6, 0
  call void @llvm.assume(i1 %lcmp.mod8)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.07.i.i.i8.i.i.i.epil = phi i64 [ %.07.i.i.i8.i.i.i.epil.init, %.epil.preheader ], [ %i.bm, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.07.i.i.i8.i.i.i.epil
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !21
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bm = add nuw i64 %.07.i.i.i8.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter6
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.i, label %bb.f, !llvm.loop !4542

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit10.i.i.i.loopexit.unr-lcssa, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.ap

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod12.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod12.not, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit.i, label %.epil.preheader9

.epil.preheader9:                                 ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %i.ao, %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter10, 0
  call void @llvm.assume(i1 %lcmp.mod13)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader9
  %.07.i.i.i.i.i.i.epil = phi i64 [ %.07.i.i.i.i.i.i.epil.init, %.epil.preheader9 ], [ %i.bq, %bb.g ] ; 2 uses
  %epil.iter11 = phi i64 [ 0, %.epil.preheader9 ], [ %epil.iter11.next, %bb.g ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i.i.i.i.i.i.epil
  store i32 -2147483648, ptr %i.bn, align 4, !tbaa !21
  %i.bo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bq = add nuw i64 %.07.i.i.i.i.i.i.epil, 1
  %epil.iter11.next = add i64 %epil.iter11, 1     ; 2 uses
  %epil.iter11.cmp.not = icmp eq i64 %epil.iter11.next, %xtraiter10
  br i1 %epil.iter11.cmp.not, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit.i, label %bb.g, !llvm.loop !4543

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit.i: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit.i.loopexit.unr-lcssa, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_NSA_5bool_ILb1EEE.exit, label %bb.h, !prof !18

bb.h:                                             ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit.i
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_NSA_5bool_ILb1EEE.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #22
  unreachable

_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_NSA_5bool_ILb1EEE.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_12small_vectorIS4_Lm10EvvEEE21adopt_sequence_uniqueEOSB_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_NSA_5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_NSA_5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3939 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit

_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 2
  %i.d = load ptr, ptr %1, align 8, !tbaa !3929   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.f = lshr i64 %i.b, 1
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_NS0_9iter_sizeISF_E4typeEb(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !3939, !noalias !4544 ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !3929, !noalias !4547 ; 6 uses
  %.idx17 = shl i64 %.pre, 2                      ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx17 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = getelementptr i8, ptr %i.i, i64 %.idx17
  %scevgep = getelementptr i8, ptr %i.k, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.ak, %bb.f ] ; 7 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !4550
  %i.n = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !21, !noalias !4550
  %.not9.i = icmp slt i32 %i.m, %i.n
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 4 ; 4 uses
  %.not1018.i = icmp eq ptr %i.o, %i.j
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph19.i.preheader

.lr.ph19.i.preheader:                             ; preds = %.preheader.i
  %i.p = add i64 %.idx17, -12                     ; 2 uses
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.q = sub i64 %i.p, %2
  %i.r = and i64 %i.q, 4
  %lcmp.mod.not.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph19.i.prol, label %.lr.ph19.i.prol.loopexit

.lr.ph19.i.prol:                                  ; preds = %.lr.ph19.i.preheader
  %i.s = load i32, ptr %i.l, align 4, !tbaa !21, !noalias !4550
  %i.t = load i32, ptr %i.o, align 4, !tbaa !21, !noalias !4550 ; 2 uses
  %.not11.i.prol = icmp slt i32 %i.s, %i.t
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph19.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph19.i.prol
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !21, !noalias !4550
  store i32 0, ptr %i.o, align 4, !tbaa !21, !noalias !4550
  br label %.lr.ph19.i.prol.loopexit.unr-lcssa

.lr.ph19.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph19.i.prol
  %i.v = phi ptr [ %i.u, %bb.b ], [ %i.l, %.lr.ph19.i.prol ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8
  br label %.lr.ph19.i.prol.loopexit

.lr.ph19.i.prol.loopexit:                         ; preds = %.lr.ph19.i.prol.loopexit.unr-lcssa, %.lr.ph19.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph19.i.preheader ], [ %i.v, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.l, %.lr.ph19.i.preheader ], [ %i.v, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %.unr52 = phi ptr [ %i.o, %.lr.ph19.i.preheader ], [ %i.w, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %i.x = icmp eq i64 %i.p, %2
  br i1 %i.x, label %.loopexit.i, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.prol.loopexit, %bb.e
  %i.y = phi ptr [ %i.ai, %bb.e ], [ %.unr, %.lr.ph19.i.prol.loopexit ] ; 3 uses
  %i.z = phi ptr [ %i.aj, %bb.e ], [ %.unr52, %.lr.ph19.i.prol.loopexit ] ; 4 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !21, !noalias !4550
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !21, !noalias !4550 ; 2 uses
  %.not11.i = icmp slt i32 %i.aa, %i.ab
  br i1 %.not11.i, label %bb.c, label %.lr.ph19.i.1

bb.c:                                             ; preds = %.lr.ph19.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !21, !noalias !4550
  store i32 0, ptr %i.z, align 4, !tbaa !21, !noalias !4550
  br label %.lr.ph19.i.1

.lr.ph19.i.1:                                     ; preds = %bb.c, %.lr.ph19.i
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ %i.y, %.lr.ph19.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !21, !noalias !4550
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !21, !noalias !4550 ; 2 uses
  %.not11.i.1 = icmp slt i32 %i.af, %i.ag
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph19.i.1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !21, !noalias !4550
  store i32 0, ptr %i.ae, align 4, !tbaa !21, !noalias !4550
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph19.i.1
  %i.ai = phi ptr [ %i.ah, %bb.d ], [ %i.ad, %.lr.ph19.i.1 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.aj, %i.j
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph19.i, !llvm.loop !3264

bb.f:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 4 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3265

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph19.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit, %.preheader.i
  %i.al = phi ptr [ %i.ai, %bb.e ], [ %i.l, %.preheader.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit ], [ %.lcssa.unr, %.lr.ph19.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit, %.loopexit.i
  %i.an = phi ptr [ %i.am, %.loopexit.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit ] ; 4 uses
  %.not.i10 = icmp eq ptr %i.an, %i.j
  br i1 %.not.i10, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit
  %i.ao = ptrtoint ptr %i.j to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 5 uses
  %xtraiter53 = and i64 %i.ar, 3                  ; 2 uses
  %lcmp.mod54.not = icmp eq i64 %xtraiter53, 0
  br i1 %lcmp.mod54.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph.i8.i.prol
  %.05.i.i.prol = phi i64 [ %i.as, %.lr.ph.i8.i.prol ], [ %i.ar, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.av, %.lr.ph.i8.i.prol ], [ %i.an, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.i.prol ], [ 0, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %i.as = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !21, !noalias !4553
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !4553
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !4553
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter53
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !4556

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.ar, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.as, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.an, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %i.aw = icmp ult i64 %i.ar, 4
  br i1 %i.aw, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.be, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bg, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !21, !noalias !4553
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !4553 ; 4 uses
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !4553
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !21, !noalias !4553
  %i.ba = add i32 %i.ax, -2
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !4553
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !21, !noalias !4553
  %i.bc = add i32 %i.ax, -3
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !4553
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.be = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !21, !noalias !4553
  %i.bf = add i32 %i.ax, -4
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !4553
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !3943

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bh = sub i64 %.pre, %i.ar
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !3931, !noalias !4553
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit: ; preds = %bb.a, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEaSEOS4_.exit, label %bb.g, !prof !18

bb.g:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEaSEOS4_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #22
  unreachable

_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEaSEOS4_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_12small_vectorIS4_Lm10EvvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSB_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEaSEOS4_.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEaSEOS4_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22
  unreachable

_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_12small_vectorIS4_Lm10EvvEEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEOSB_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEaSEOS4_.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEaSEOS4_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22
  unreachable

_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10EvvEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_12small_vectorIS4_Lm10EvvEEE20priv_in_range_or_endENS0_12vec_iteratorIPS4_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3929, !noalias !4557 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2663   ; 2 uses
  %.not = icmp ule ptr %i.a, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.d
  %i.f = icmp ule ptr %i.b, %i.e
  %i.g = select i1 %.not, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE4DataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE4DataC5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE4DataC2ERKNS0_13new_allocatorIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE4DataC5ERKNS0_13new_allocatorIS4_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

end_hunk_5
begin_hunk_6_@_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_NSA_5bool_ILb1EEE:bb.a
  %bound145 = icmp ugt ptr %scevgep43, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict46 = and i1 %bound044, %bound145
  br i1 %found.conflict46, label %.lr.ph.i21.i.i.i.i.preheader, label %vector.ph49

vector.ph49:                                      ; preds = %vector.memcheck42
  %n.vec50 = and i64 %i.fi, -8                    ; 3 uses
  %i.fl = and i64 %i.fi, 7
  %i.fm = shl i64 %n.vec50, 2
  %i.fn = getelementptr i8, ptr %.0.lcssa.i20.i.i.i.i, i64 %i.fm
  %i.fo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre.i.i.i, i64 0
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph49
  %index52 = phi i64 [ 0, %vector.ph49 ], [ %index.next55, %vector.body51 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.fo, %vector.ph49 ], [ %i.fr, %vector.body51 ]
  %vec.phi53 = phi <4 x i32> [ zeroinitializer, %vector.ph49 ], [ %i.fs, %vector.body51 ]
  %i.fp = shl i64 %index52, 2
  %next.gep54 = getelementptr i8, ptr %.0.lcssa.i20.i.i.i.i, i64 %i.fp ; 2 uses
  %i.fq = getelementptr i8, ptr %next.gep54, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep54, align 4, !tbaa !21, !alias.scope !5923, !noalias !5926
  store <4 x i32> splat (i32 -2147483648), ptr %i.fq, align 4, !tbaa !21, !alias.scope !5923, !noalias !5926
  %i.fr = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.fs = add <4 x i32> %vec.phi53, splat (i32 -1) ; 2 uses
  %index.next55 = add nuw i64 %index52, 8         ; 2 uses
  %i.ft = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.ft, label %middle.block56, label %vector.body51, !llvm.loop !5928

middle.block56:                                   ; preds = %vector.body51
  %bin.rdx = add <4 x i32> %i.fs, %i.fr
  %i.fu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.fu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !alias.scope !5926
  %cmp.n57 = icmp eq i64 %i.fi, %n.vec50
  br i1 %cmp.n57, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.i21.i.i.i.i.preheader

.lr.ph.i21.i.i.i.i.preheader:                     ; preds = %vector.memcheck42, %.lr.ph.i21.i.preheader.i.i.i, %middle.block56
  %.ph139 = phi i32 [ %.pre.i.i.i, %vector.memcheck42 ], [ %.pre.i.i.i, %.lr.ph.i21.i.preheader.i.i.i ], [ %i.fu, %middle.block56 ] ; 2 uses
  %.05.i.i.i.i.i.ph = phi i64 [ %i.fi, %vector.memcheck42 ], [ %i.fi, %.lr.ph.i21.i.preheader.i.i.i ], [ %i.fl, %middle.block56 ] ; 4 uses
  %storemerge4.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i20.i.i.i.i, %vector.memcheck42 ], [ %.0.lcssa.i20.i.i.i.i, %.lr.ph.i21.i.preheader.i.i.i ], [ %i.fn, %middle.block56 ] ; 2 uses
  %i.fv = add i64 %.05.i.i.i.i.i.ph, -1
  %xtraiter155 = and i64 %.05.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %.lr.ph.i21.i.i.i.i.prol.loopexit, label %.lr.ph.i21.i.i.i.i.prol

.lr.ph.i21.i.i.i.i.prol:                          ; preds = %.lr.ph.i21.i.i.i.i.preheader, %.lr.ph.i21.i.i.i.i.prol
  %i.fw = phi i32 [ %i.fy, %.lr.ph.i21.i.i.i.i.prol ], [ %.ph139, %.lr.ph.i21.i.i.i.i.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.fx, %.lr.ph.i21.i.i.i.i.prol ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i21.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.fz, %.lr.ph.i21.i.i.i.i.prol ], [ %storemerge4.i.i.i.i.i.ph, %.lr.ph.i21.i.i.i.i.preheader ] ; 2 uses
  %prol.iter157 = phi i64 [ %prol.iter157.next, %.lr.ph.i21.i.i.i.i.prol ], [ 0, %.lr.ph.i21.i.i.i.i.preheader ]
  %i.fx = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !21
  %i.fy = add i32 %i.fw, -1                       ; 3 uses
  store i32 %i.fy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter157.next = add i64 %prol.iter157, 1   ; 2 uses
  %prol.iter157.cmp.not = icmp eq i64 %prol.iter157.next, %xtraiter155
  br i1 %prol.iter157.cmp.not, label %.lr.ph.i21.i.i.i.i.prol.loopexit, label %.lr.ph.i21.i.i.i.i.prol, !llvm.loop !5929

.lr.ph.i21.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i21.i.i.i.i.prol, %.lr.ph.i21.i.i.i.i.preheader
  %.unr = phi i32 [ %.ph139, %.lr.ph.i21.i.i.i.i.preheader ], [ %i.fy, %.lr.ph.i21.i.i.i.i.prol ]
  %.05.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.ph, %.lr.ph.i21.i.i.i.i.preheader ], [ %i.fx, %.lr.ph.i21.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %storemerge4.i.i.i.i.i.ph, %.lr.ph.i21.i.i.i.i.preheader ], [ %i.fz, %.lr.ph.i21.i.i.i.i.prol ]
  %i.ga = icmp ult i64 %i.fv, 3
  br i1 %i.ga, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.i21.i.i.i.i

.lr.ph.i21.i.i.i.i:                               ; preds = %.lr.ph.i21.i.i.i.i.prol.loopexit, %.lr.ph.i21.i.i.i.i
  %i.gb = phi i32 [ %i.gj, %.lr.ph.i21.i.i.i.i ], [ %.unr, %.lr.ph.i21.i.i.i.i.prol.loopexit ] ; 4 uses
  %.05.i.i.i.i.i = phi i64 [ %i.gi, %.lr.ph.i21.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i21.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.gk, %.lr.ph.i21.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i21.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !21
  %i.gc = add i32 %i.gb, -1
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.gd, align 4, !tbaa !21
  %i.ge = add i32 %i.gb, -2
  store i32 %i.ge, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.gf, align 4, !tbaa !21
  %i.gg = add i32 %i.gb, -3
  store i32 %i.gg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.gh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.gi = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.gh, align 4, !tbaa !21
  %i.gj = add i32 %i.gb, -4                       ; 2 uses
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i22.i.i.i.i.3 = icmp eq i64 %i.gi, 0
  br i1 %.not.i22.i.i.i.i.3, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.i21.i.i.i.i, !llvm.loop !5930

_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i: ; preds = %.lr.ph.i21.i.i.i.i.prol.loopexit, %.lr.ph.i21.i.i.i.i, %.lr.ph.i14.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i, %middle.block56, %middle.block115, %_ZN5boost9container6move_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !5269
  %i.gl = load i64, ptr %i.m, align 8, !tbaa !5272 ; 7 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %min.iters.check123 = icmp ult i64 %i.gl, 8
  br i1 %min.iters.check123, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph.i.preheader.i.i.i.i.i
  %n.vec125 = and i64 %i.gl, -8                   ; 3 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = shl i64 %n.vec125, 2
  %i.go = getelementptr i8, ptr %1, i64 %i.gn
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next129, %vector.body126 ] ; 2 uses
  %i.gp = shl i64 %index127, 2
  %next.gep128 = getelementptr i8, ptr %1, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep128, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep128, align 8, !tbaa !21
  store <4 x i32> splat (i32 -2147483648), ptr %i.gq, align 8, !tbaa !21
  %index.next129 = add nuw i64 %index127, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next129, %n.vec125
  br i1 %i.gr, label %middle.block130, label %vector.body126, !llvm.loop !5931

middle.block130:                                  ; preds = %vector.body126
  %cmp.n131 = icmp eq i64 %i.gl, %n.vec125
  br i1 %cmp.n131, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.preheader.i.i.i.i.i, %middle.block130
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.gl, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.gm, %middle.block130 ]
  %storemerge4.i.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.go, %middle.block130 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gs = add i64 %.05.i.i.i.i.i.i, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i, align 4, !tbaa !21
  %i.gt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5932

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block130
  %i.gu = trunc i64 %i.gl to i32
  %i.gv = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.gu
  store i32 %i.gv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i, %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EEvRT_T0_mT1_m.exit.i.i.i
  store i64 0, ptr %i.m, align 8, !tbaa !5272
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEaSEOS4_.exit

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEaSEOS4_.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE16priv_move_assignIS6_EEvONS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSC_13enable_if_natEE4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE21adopt_sequence_uniqueEOSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_NSA_5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_NSA_5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !5272 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit, label %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit

_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.e = lshr i64 %i.b, 1
  %i.f = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 false)
  %i.g = sub nuw nsw i64 64, %i.f
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_NS0_9iter_sizeISF_E4typeEb(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef %i.g, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !5272, !noalias !5933 ; 4 uses
  %.idx18 = shl i64 %.pre, 2                      ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.idx18 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr i8, ptr %1, i64 %.idx18
  %scevgep = getelementptr i8, ptr %i.i, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.j = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.ai, %bb.f ] ; 7 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21, !noalias !5936
  %i.l = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !21, !noalias !5936
  %.not9.i = icmp slt i32 %i.k, %i.l
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 4 ; 4 uses
  %.not1018.i = icmp eq ptr %i.m, %i.h
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph19.i.preheader

.lr.ph19.i.preheader:                             ; preds = %.preheader.i
  %i.n = add i64 %.idx18, -12                     ; 2 uses
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.o = sub i64 %i.n, %2
  %i.p = and i64 %i.o, 4
  %lcmp.mod.not.not = icmp eq i64 %i.p, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph19.i.prol, label %.lr.ph19.i.prol.loopexit

.lr.ph19.i.prol:                                  ; preds = %.lr.ph19.i.preheader
  %i.q = load i32, ptr %i.j, align 4, !tbaa !21, !noalias !5936
  %i.r = load i32, ptr %i.m, align 4, !tbaa !21, !noalias !5936 ; 2 uses
  %.not11.i.prol = icmp slt i32 %i.q, %i.r
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph19.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph19.i.prol
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store i32 %i.r, ptr %i.s, align 4, !tbaa !21, !noalias !5936
  store i32 0, ptr %i.m, align 4, !tbaa !21, !noalias !5936
  br label %.lr.ph19.i.prol.loopexit.unr-lcssa

.lr.ph19.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph19.i.prol
  %i.t = phi ptr [ %i.s, %bb.b ], [ %i.j, %.lr.ph19.i.prol ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8
  br label %.lr.ph19.i.prol.loopexit

.lr.ph19.i.prol.loopexit:                         ; preds = %.lr.ph19.i.prol.loopexit.unr-lcssa, %.lr.ph19.i.preheader
  %.lcssa178.unr = phi ptr [ poison, %.lr.ph19.i.preheader ], [ %i.t, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.j, %.lr.ph19.i.preheader ], [ %i.t, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %.unr184 = phi ptr [ %i.m, %.lr.ph19.i.preheader ], [ %i.u, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %i.v = icmp eq i64 %i.n, %2
  br i1 %i.v, label %.loopexit.i, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.prol.loopexit, %bb.e
  %i.w = phi ptr [ %i.ag, %bb.e ], [ %.unr, %.lr.ph19.i.prol.loopexit ] ; 3 uses
  %i.x = phi ptr [ %i.ah, %bb.e ], [ %.unr184, %.lr.ph19.i.prol.loopexit ] ; 4 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !21, !noalias !5936
  %i.z = load i32, ptr %i.x, align 4, !tbaa !21, !noalias !5936 ; 2 uses
  %.not11.i = icmp slt i32 %i.y, %i.z
  br i1 %.not11.i, label %bb.c, label %.lr.ph19.i.1

bb.c:                                             ; preds = %.lr.ph19.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !21, !noalias !5936
  store i32 0, ptr %i.x, align 4, !tbaa !21, !noalias !5936
  br label %.lr.ph19.i.1

.lr.ph19.i.1:                                     ; preds = %bb.c, %.lr.ph19.i
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ %i.w, %.lr.ph19.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !21, !noalias !5936
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !21, !noalias !5936 ; 2 uses
  %.not11.i.1 = icmp slt i32 %i.ad, %i.ae
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph19.i.1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !21, !noalias !5936
  store i32 0, ptr %i.ac, align 4, !tbaa !21, !noalias !5936
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph19.i.1
  %i.ag = phi ptr [ %i.af, %bb.d ], [ %i.ab, %.lr.ph19.i.1 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ah, %i.h
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph19.i, !llvm.loop !3264

bb.f:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 4 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.h
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3265

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph19.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit, %.preheader.i
  %i.aj = phi ptr [ %i.ag, %bb.e ], [ %i.j, %.preheader.i ], [ %1, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit ], [ %.lcssa178.unr, %.lr.ph19.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit, %.loopexit.i
  %i.al = phi ptr [ %i.ak, %.loopexit.i ], [ %1, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit ] ; 4 uses
  %.not.i10 = icmp eq ptr %i.al, %i.h
  br i1 %.not.i10, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit
  %i.am = ptrtoint ptr %i.h to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 2                 ; 5 uses
  %xtraiter185 = and i64 %i.ap, 3                 ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph.i8.i.prol
  %.05.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i8.i.prol ], [ %i.ap, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.at, %.lr.ph.i8.i.prol ], [ %i.al, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.i.prol ], [ 0, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %i.aq = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !21, !noalias !5939
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !5939
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !5939
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter185
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !5942

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.ap, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.aq, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.al, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.at, %.lr.ph.i8.i.prol ]
  %i.au = icmp ult i64 %i.ap, 4
  br i1 %i.au, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.bc, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.be, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !21, !noalias !5939
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !5939 ; 4 uses
  %i.aw = add i32 %i.av, -1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !5939
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ax, align 4, !tbaa !21, !noalias !5939
  %i.ay = add i32 %i.av, -2
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !5939
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !21, !noalias !5939
  %i.ba = add i32 %i.av, -3
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !5939
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.bc = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !21, !noalias !5939
  %i.bd = add i32 %i.av, -4
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !5939
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !5692

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bf = sub i64 %.pre, %i.ap                    ; 2 uses
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !5269, !noalias !5939
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit: ; preds = %bb.a, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.bg = phi i64 [ %.pre, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit ], [ %i.bf, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ] ; 14 uses
  %.not.i.i11 = icmp eq ptr %1, %0
  br i1 %.not.i.i11, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEaSEOS4_.exit, label %bb.g, !prof !18

bb.g:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !5272 ; 13 uses
  %i.bj = icmp ult i64 %i.bi, %i.bg
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN5boost9container18move_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h
  %min.iters.check100 = icmp ult i64 %i.bi, 8
  br i1 %min.iters.check100, label %.lr.ph.i.i.i.i.i.preheader168, label %vector.memcheck93

vector.memcheck93:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bk = shl i64 %i.bi, 2                        ; 2 uses
  %scevgep94 = getelementptr i8, ptr %0, i64 %i.bk
  %scevgep95 = getelementptr i8, ptr %1, i64 %i.bk
  %bound096 = icmp ult ptr %0, %scevgep95
  %bound197 = icmp ult ptr %1, %scevgep94
  %found.conflict98 = and i1 %bound096, %bound197
  br i1 %found.conflict98, label %.lr.ph.i.i.i.i.i.preheader168, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck93
  %n.vec102 = and i64 %i.bi, -8                   ; 3 uses
  %i.bl = shl i64 %n.vec102, 2                    ; 2 uses
  %i.bm = getelementptr i8, ptr %1, i64 %i.bl     ; 2 uses
  %i.bn = and i64 %i.bi, 7
  %i.bo = getelementptr i8, ptr %0, i64 %i.bl     ; 2 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %i.bp = shl i64 %index104, 2                    ; 2 uses
  %next.gep105 = getelementptr i8, ptr %1, i64 %i.bp ; 3 uses
  %next.gep106 = getelementptr i8, ptr %0, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep105, i64 16 ; 2 uses
  %wide.load107 = load <4 x i32>, ptr %next.gep105, align 8, !tbaa !21, !alias.scope !5943
  %wide.load108 = load <4 x i32>, ptr %i.bq, align 8, !tbaa !21, !alias.scope !5943
  %i.br = getelementptr i8, ptr %next.gep106, i64 16
  store <4 x i32> %wide.load107, ptr %next.gep106, align 8, !tbaa !21, !alias.scope !5946, !noalias !5943
  store <4 x i32> %wide.load108, ptr %i.br, align 8, !tbaa !21, !alias.scope !5946, !noalias !5943
  store <4 x i32> zeroinitializer, ptr %next.gep105, align 8, !tbaa !21, !alias.scope !5943
  store <4 x i32> zeroinitializer, ptr %i.bq, align 8, !tbaa !21, !alias.scope !5943
  %index.next109 = add nuw i64 %index104, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.bs, label %middle.block110, label %vector.body103, !llvm.loop !5948

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %i.bi, %n.vec102
  br i1 %cmp.n111, label %_ZN5boost9container18move_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader168

.lr.ph.i.i.i.i.i.preheader168:                    ; preds = %vector.memcheck93, %.lr.ph.i.i.i.i.i.preheader, %middle.block110
  %.09.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck93 ], [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bm, %middle.block110 ] ; 2 uses
  %.068.i.i.i.i.i.ph = phi i64 [ %i.bi, %vector.memcheck93 ], [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bn, %middle.block110 ] ; 4 uses
  %.ph169 = phi ptr [ %0, %vector.memcheck93 ], [ %0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block110 ] ; 2 uses
  %i.bt = add i64 %.068.i.i.i.i.i.ph, -1
  %xtraiter194 = and i64 %.068.i.i.i.i.i.ph, 3    ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader168, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader168 ] ; 3 uses
  %.068.i.i.i.i.i.prol = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.prol ], [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader168 ]
  %i.bu = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.prol ], [ %.ph169, %.lr.ph.i.i.i.i.i.preheader168 ] ; 2 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader168 ]
  %i.bv = add i64 %.068.i.i.i.i.i.prol, -1        ; 2 uses
  %i.bw = load i32, ptr %.09.i.i.i.i.i.prol, align 4, !tbaa !21
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !21
  store i32 0, ptr %.09.i.i.i.i.i.prol, align 4, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 4 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 3 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !5949

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader168
  %.lcssa171.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader168 ], [ %i.bx, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa170.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader168 ], [ %i.by, %.lr.ph.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.unr = phi ptr [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader168 ], [ %i.bx, %.lr.ph.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.unr = phi i64 [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader168 ], [ %i.bv, %.lr.ph.i.i.i.i.i.prol ]
  %.unr197 = phi ptr [ %.ph169, %.lr.ph.i.i.i.i.i.preheader168 ], [ %i.by, %.lr.ph.i.i.i.i.i.prol ]
  %i.bz = icmp ult i64 %i.bt, 3
  br i1 %i.bz, label %_ZN5boost9container18move_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEENS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEESB_SB_SB_SJ_NS0_7move_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_:bb.a
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !21, !noalias !6546
  store i32 0, ptr %i.cw, align 4, !tbaa !21, !noalias !6546
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !21, !noalias !6546
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !21, !noalias !6546
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !21, !noalias !6546
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i28, !llvm.loop !6549

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_SB_NS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !21, !noalias !6550
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !21, !noalias !6550
  store i32 0, ptr %i.dc, align 4, !tbaa !21, !noalias !6550
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !21, !noalias !6550
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !21, !noalias !6550
  store i32 0, ptr %i.df, align 4, !tbaa !21, !noalias !6550
  %i.di = load i32, ptr %i.db, align 4, !tbaa !21, !noalias !6550
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !21, !noalias !6550
  store i32 0, ptr %i.db, align 4, !tbaa !21, !noalias !6550
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21, !noalias !6550
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !21, !noalias !6550
  store i32 0, ptr %i.dj, align 4, !tbaa !21, !noalias !6550
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i29, !llvm.loop !6553

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !21, !noalias !6554
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !21, !noalias !6554
  store i32 0, ptr %i.dm, align 4, !tbaa !21, !noalias !6554
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !21, !noalias !6554
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !21, !noalias !6554
  store i32 0, ptr %i.dp, align 4, !tbaa !21, !noalias !6554
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i.i, !llvm.loop !6559

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.dn, %.lr.ph.i.i ], [ %i.cp, %bb.t ], [ %i.ct, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !6416
  %i.ds = load ptr, ptr %1, align 8, !tbaa !6416  ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 %.neg98 ; 4 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EEvT_SC_RSC_T0_SE_SE_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.dx = load <2 x i32>, ptr %i.du, align 4, !tbaa !21
  store i32 0, ptr %i.du, align 4, !tbaa !21
  store i32 0, ptr %i.dw, align 4, !tbaa !21
  %i.dy = load <2 x i32>, ptr %i.dv, align 4, !tbaa !21
  store <2 x i32> %i.dy, ptr %i.du, align 4, !tbaa !21
  store <2 x i32> %i.dx, ptr %i.dv, align 4, !tbaa !21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i
  %i.dz = load ptr, ptr %2, align 8, !tbaa !6416  ; 2 uses
  %i.ea = icmp eq ptr %i.dt, %i.dz
  br i1 %i.ea, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = icmp eq ptr %i.dz, %i.ds
  br i1 %i.eb, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EEvT_SC_RSC_T0_SE_SE_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.ds, %bb.y ], [ %i.dt, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !6416
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EEvT_SC_RSC_T0_SE_SE_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EEvT_SC_RSC_T0_SE_SE_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, %bb.z, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !6416
  %i.ec = load ptr, ptr %1, align 8, !tbaa !6416
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -8 ; 2 uses
  store ptr %i.ed, ptr %1, align 8, !tbaa !6416
  %i.ee = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ee to i64
  %i.ef = add i64 %.0140, %.neg
  %i.eg = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.eg to i64
  %i.eh = add i64 %.sroa.speculated, %.neg24
  %i.ei = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ei, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6560

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EEvT_SC_RSC_T0_SE_SE_.exit, %bb.a
  %i.ej = load ptr, ptr %6, align 8, !tbaa !6416
  store ptr %i.ej, ptr %0, align 8, !tbaa !6416
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store ptr %4, ptr %i.b, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.e = load ptr, ptr %5, align 8, !tbaa !48     ; 3 uses
  %i.f = load ptr, ptr %6, align 8, !tbaa !48     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.g = load ptr, ptr %2, align 8, !tbaa !48     ; 8 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !48
  %.not = icmp eq ptr %i.g, %4                    ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.f
  br i1 %i.h, label %bb.b, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = load i32, ptr %4, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %.07.i, align 4, !tbaa !21
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.c, !llvm.loop !6561

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.l, %bb.d ] ; 10 uses
  %i.m = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
  %i.n = ptrtoint ptr %0 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.o ; 9 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !48
  br i1 %.not, label %bb.e, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47: ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.q = call noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_(ptr noundef %.0.lcssa.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !48
  %.pre82 = load ptr, ptr %i.d, align 8, !tbaa !48
  br label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %.not.i30 = icmp eq ptr %.0.lcssa.i, %1
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i = or i1 %.not.i30, %.not40.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = load i32, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 %i.s, ptr %i.p, align 4, !tbaa !21
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !21
  store i32 %i.v, ptr %i.u, align 4, !tbaa !21
  store i32 0, ptr %i.t, align 4, !tbaa !21
  %i.w = load i32, ptr %i.g, align 4, !tbaa !21
  store i32 %i.w, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 0, ptr %i.g, align 4, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  store i32 %i.y, ptr %i.t, align 4, !tbaa !21
  store i32 0, ptr %i.x, align 4, !tbaa !21
  %.03049.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.03450.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.z = icmp eq ptr %.03450.i, %1
  br i1 %i.z, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %.03456.i = phi ptr [ %.034.i, %bb.g ], [ %.03450.i, %bb.f ] ; 11 uses
  %.03055.i = phi ptr [ %.030.i, %bb.g ], [ %.03049.i, %bb.f ] ; 3 uses
  %.054.i = phi ptr [ %.1.i, %bb.g ], [ %i.r, %bb.f ] ; 6 uses
  %.pn4153.i = phi ptr [ %.03055.i, %bb.g ], [ %i.p, %bb.f ]
  %.03252.i = phi ptr [ %.133.i, %bb.g ], [ %i.p, %bb.f ] ; 12 uses
  %.pn51.i = phi ptr [ %.03456.i, %bb.g ], [ %.0.lcssa.i, %bb.f ]
  %i.aa = icmp eq ptr %.054.i, %3
  br i1 %i.aa, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.ab = add i64 %i.a, -16
  %7 = shl i64 %indvar, 3
  %8 = add i64 %7, %i.m
  %9 = sub i64 %i.ab, %8                          ; 2 uses
  %10 = lshr i64 %9, 3
  %i.ac = add nuw nsw i64 %10, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %9, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.03252.i, i64 8
  %i.ad = add i64 %i.a, -16
  %11 = shl i64 %indvar, 3
  %12 = add i64 %11, %i.m
  %i.ae = sub i64 %i.ad, %12
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %i.af
  %i.ag = shl i64 %indvar, 3
  %i.ah = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ag
  %scevgep148 = getelementptr i8, ptr %i.ah, i64 16
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.af
  %bound0 = icmp ult ptr %.03252.i, %scevgep149
  %bound1 = icmp ult ptr %.03456.i, %scevgep147
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %.03252.i, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %.03456.i, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.03252.i, i64 %i.al
  %next.gep150.a = getelementptr i8, ptr %.03252.i, i64 %i.am
  %next.gep151 = getelementptr i8, ptr %.03456.i, i64 %i.al ; 2 uses
  %next.gep152 = getelementptr i8, ptr %.03456.i, i64 %i.am ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !21, !alias.scope !6562
  %wide.vec154 = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !21, !alias.scope !6562
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21, !alias.scope !6565, !noalias !6562
  store <4 x i32> %wide.vec154, ptr %next.gep150.a, align 4, !tbaa !21, !alias.scope !6565, !noalias !6562
  store <4 x i32> zeroinitializer, ptr %next.gep151, align 4, !tbaa !21, !alias.scope !6562
  store <4 x i32> zeroinitializer, ptr %next.gep152, align 4, !tbaa !21, !alias.scope !6562
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !6567

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i.i.i.preheader181

.lr.ph.i.i.i.preheader181:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03252.i, %vector.memcheck ], [ %.03252.i, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.03456.i, %vector.memcheck ], [ %.03456.i, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader181, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader181 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader181 ] ; 4 uses
  %i.ao = load i32, ptr %.079.i.i.i, align 4, !tbaa !21
  store i32 %i.ao, ptr %.010.i.i.i, align 4, !tbaa !21
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !21
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !21
  store i32 0, ptr %i.ap, align 4, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !6568

bb.g:                                             ; preds = %.lr.ph.i31
  %i.au = load i32, ptr %.054.i, align 4, !tbaa !21
  %i.av = load i32, ptr %.03252.i, align 4, !tbaa !21
  %i.aw = icmp slt i32 %i.au, %i.av               ; 3 uses
  %i.ax = load i32, ptr %.03456.i, align 4, !tbaa !21
  store i32 %i.ax, ptr %.03055.i, align 4, !tbaa !21
  store i32 0, ptr %.03456.i, align 4, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn51.i, i64 12 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pn4153.i, i64 12
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !21
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !21
  store i32 0, ptr %i.ay, align 4, !tbaa !21
  %.03252.sink73.i = select i1 %i.aw, ptr %.054.i, ptr %.03252.i ; 3 uses
  %.133.idx.i = select i1 %i.aw, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03252.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.aw, i64 8, i64 0
  %.1.i = getelementptr inbounds nuw i8, ptr %.054.i, i64 %.1.idx.i ; 2 uses
  %i.bb = load i32, ptr %.03252.sink73.i, align 4, !tbaa !21
  store i32 %i.bb, ptr %.03456.i, align 4, !tbaa !21
  store i32 0, ptr %.03252.sink73.i, align 4, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.03252.sink73.i, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !21
  store i32 0, ptr %i.bc, align 4, !tbaa !21
  %.030.i = getelementptr inbounds nuw i8, ptr %.03055.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03456.i, i64 8 ; 2 uses
  %i.be = icmp eq ptr %.034.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.be, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !6569

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %middle.block, %bb.f, %bb.a
  %i.bf = phi ptr [ %i.g, %bb.a ], [ %.054.i, %middle.block ], [ %i.r, %bb.f ], [ %.054.i, %.lr.ph.i.i.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bg = phi ptr [ %i.e, %bb.a ], [ %.03252.i, %middle.block ], [ %i.p, %bb.f ], [ %.03252.i, %.lr.ph.i.i.i ], [ %.133.i, %bb.g ] ; 4 uses
  %.028 = phi ptr [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %bb.f ], [ %1, %.lr.ph.i.i.i ], [ %1, %bb.g ] ; 3 uses
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.aj, %middle.block ], [ %.03049.i, %bb.f ], [ %i.at, %.lr.ph.i.i.i ], [ %.030.i, %bb.g ] ; 6 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit
  %i.bh = phi ptr [ %.pre82, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47 ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit ] ; 3 uses
  %i.bi = phi ptr [ %.pre, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47 ], [ %i.bg, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit ] ; 3 uses
  %.051 = phi ptr [ %i.q, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47 ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit ] ; 5 uses
  %.02850 = phi ptr [ %1, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47 ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit ] ; 2 uses
  %.not.i32 = icmp eq ptr %i.bh, %3
  %.not36.i = icmp eq ptr %.051, %i.bi
  %or.cond.i33 = select i1 %.not.i32, i1 true, i1 %.not36.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !48
  br label %.outer.i

.outer.i:                                         ; preds = %bb.k, %bb.i
  %.030.ph.i = phi ptr [ %.131.i, %bb.k ], [ %.02850, %bb.i ]
  %.028.ph.i = phi ptr [ %i.bv, %bb.k ], [ %i.bi, %bb.i ] ; 5 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.k ], [ %i.bh, %bb.i ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.k ], [ %i.bj, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i, %.outer.i
  %.030.i34 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.bn, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 6 uses
  %.025.i = phi ptr [ %i.bo, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 6 uses
  %i.bk = load i32, ptr %.025.i, align 4, !tbaa !21 ; 2 uses
  %i.bl = load i32, ptr %.028.ph.i, align 4, !tbaa !21 ; 2 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i32 %i.bk, ptr %.030.i34, align 4, !tbaa !21
  store i32 0, ptr %.025.i, align 4, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !21
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !21
  store i32 0, ptr %i.bp, align 4, !tbaa !21
  %i.bs = load i32, ptr %.026.i, align 4, !tbaa !21
  store i32 %i.bs, ptr %.025.i, align 4, !tbaa !21
  store i32 0, ptr %.026.i, align 4, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !21
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !21
  store i32 0, ptr %i.bt, align 4, !tbaa !21
  %.not43.i = icmp eq ptr %i.bn, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.j, !llvm.loop !6570

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i32 %i.bl, ptr %.030.i34, align 4, !tbaa !21
  store i32 0, ptr %.028.ph.i, align 4, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !21
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !21
  store i32 0, ptr %i.bw, align 4, !tbaa !21
  %.not42.i = icmp eq ptr %i.bv, %.051
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.outer.i, !llvm.loop !6570

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread: ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit
  %.not.i36 = icmp eq ptr %i.bf, %3
  %.not36.i37 = icmp eq ptr %.0, %i.bg
  %or.cond.i38 = select i1 %.not.i36, i1 true, i1 %.not36.i37
  br i1 %or.cond.i38, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread, %bb.m
  %.024.i.ph = phi ptr [ %i.cc, %bb.m ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.ci, %bb.m ], [ %i.bg, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.m ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.l
  %.024.i = phi ptr [ %i.cc, %bb.l ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.ce, %bb.l ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.bz = load i32, ptr %.0.i, align 4, !tbaa !21 ; 2 uses
  %i.ca = load i32, ptr %.021.i.ph, align 4, !tbaa !21 ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i32 %i.bz, ptr %.024.i, align 4, !tbaa !21
  store i32 0, ptr %.0.i, align 4, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !21
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !21
  store i32 0, ptr %i.cf, align 4, !tbaa !21
  %i.ch = icmp eq ptr %i.ce, %3
  br i1 %i.ch, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !6571

bb.m:                                             ; preds = %.preheader.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.ca, ptr %.024.i, align 4, !tbaa !21
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !21
  store i32 %i.ck, ptr %i.cd, align 4, !tbaa !21
  store i32 0, ptr %i.cj, align 4, !tbaa !21
  %i.cl = icmp eq ptr %i.ci, %.0
  br i1 %i.cl, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !6571

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit: ; preds = %bb.k, %.split.i, %bb.l, %bb.m, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread, %bb.e, %bb.h
  %i.cm = phi ptr [ %.0.i, %bb.m ], [ %i.bh, %bb.h ], [ %i.bn, %.split.i ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %i.g, %bb.e ], [ %i.ce, %bb.l ], [ %.026.i, %bb.k ]
  %i.cn = phi ptr [ %i.ci, %bb.m ], [ %i.bi, %bb.h ], [ %.028.ph.i, %.split.i ], [ %i.bg, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %i.p, %bb.e ], [ %.021.i.ph, %bb.l ], [ %i.bv, %bb.k ]
  %.045 = phi ptr [ %.0, %bb.l ], [ %.051, %bb.h ], [ %.051, %.split.i ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %i.p, %bb.e ], [ %.0, %bb.m ], [ %.051, %bb.k ]
  %i.co = phi ptr [ %i.cc, %bb.l ], [ %.02850, %bb.h ], [ %.13137.i, %.split.i ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %i.cc, %bb.m ], [ %.131.i, %bb.k ]
  store ptr %i.cn, ptr %5, align 8, !tbaa !48
  store ptr %.045, ptr %6, align 8, !tbaa !48
  store ptr %i.cm, ptr %2, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret ptr %i.co
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  store ptr %4, ptr %i.b, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.e = load ptr, ptr %5, align 8, !tbaa !48     ; 3 uses
  %i.f = load ptr, ptr %6, align 8, !tbaa !48     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.g = load ptr, ptr %2, align 8, !tbaa !48     ; 8 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !48
  %.not = icmp eq ptr %i.g, %4                    ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.f
  br i1 %i.h, label %bb.b, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = load i32, ptr %4, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %.08.i, align 4, !tbaa !21
  %.not6.i = icmp slt i32 %i.j, %i.i
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.k, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %bb.c, !llvm.loop !6572

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.k, %bb.d ] ; 10 uses
  %i.l = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
  %i.m = ptrtoint ptr %0 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 %i.n ; 9 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !48
  br i1 %.not, label %bb.e, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51: ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit
  %i.p = load ptr, ptr %7, align 8, !tbaa !6573, !nonnull !6525
  store ptr %i.p, ptr %8, align 8, !tbaa !6389
  %i.q = call noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_(ptr noundef %.0.lcssa.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %8)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !48
  %.pre86 = load ptr, ptr %i.d, align 8, !tbaa !48
  br label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit
  %.not.i30 = icmp eq ptr %.0.lcssa.i, %1
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i = or i1 %.not.i30, %.not40.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = load i32, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 %i.s, ptr %i.o, align 4, !tbaa !21
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !21
  store i32 %i.v, ptr %i.u, align 4, !tbaa !21
  store i32 0, ptr %i.t, align 4, !tbaa !21
  %i.w = load i32, ptr %i.g, align 4, !tbaa !21
  store i32 %i.w, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 0, ptr %i.g, align 4, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  store i32 %i.y, ptr %i.t, align 4, !tbaa !21
  store i32 0, ptr %i.x, align 4, !tbaa !21
  %.03050.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.03451.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.z = icmp eq ptr %.03451.i, %1
  br i1 %i.z, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %.03457.i = phi ptr [ %.034.i, %bb.g ], [ %.03451.i, %bb.f ] ; 11 uses
  %.03056.i = phi ptr [ %.030.i, %bb.g ], [ %.03050.i, %bb.f ] ; 3 uses
  %.055.i = phi ptr [ %.1.i, %bb.g ], [ %i.r, %bb.f ] ; 6 uses
  %.pn4154.i = phi ptr [ %.03056.i, %bb.g ], [ %i.o, %bb.f ]
  %.03253.i = phi ptr [ %.133.i, %bb.g ], [ %i.o, %bb.f ] ; 12 uses
  %.pn52.i = phi ptr [ %.03457.i, %bb.g ], [ %.0.lcssa.i, %bb.f ]
  %i.aa = icmp eq ptr %.055.i, %3
  br i1 %i.aa, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.ab = add i64 %i.a, -16
  %9 = shl i64 %indvar, 3
  %10 = add i64 %9, %i.l
  %11 = sub i64 %i.ab, %10                        ; 2 uses
  %12 = lshr i64 %11, 3
  %i.ac = add nuw nsw i64 %12, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %11, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader185, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.03253.i, i64 8
  %i.ad = add i64 %i.a, -16
  %13 = shl i64 %indvar, 3
  %14 = add i64 %13, %i.l
  %i.ae = sub i64 %i.ad, %14
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %scevgep151 = getelementptr i8, ptr %scevgep, i64 %i.af
  %i.ag = shl i64 %indvar, 3
  %i.ah = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ag
  %scevgep152 = getelementptr i8, ptr %i.ah, i64 16
  %scevgep153 = getelementptr i8, ptr %scevgep152, i64 %i.af
  %bound0 = icmp ult ptr %.03253.i, %scevgep153
  %bound1 = icmp ult ptr %.03457.i, %scevgep151
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader185, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %.03253.i, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %.03457.i, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.03253.i, i64 %i.al
  %next.gep154.a = getelementptr i8, ptr %.03253.i, i64 %i.am
  %next.gep155 = getelementptr i8, ptr %.03457.i, i64 %i.al ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.03457.i, i64 %i.am ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep155, align 4, !tbaa !21, !alias.scope !6575
  %wide.vec158 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !21, !alias.scope !6575
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21, !alias.scope !6578, !noalias !6575
  store <4 x i32> %wide.vec158, ptr %next.gep154.a, align 4, !tbaa !21, !alias.scope !6578, !noalias !6575
  store <4 x i32> zeroinitializer, ptr %next.gep155, align 4, !tbaa !21, !alias.scope !6575
  store <4 x i32> zeroinitializer, ptr %next.gep156, align 4, !tbaa !21, !alias.scope !6575
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !6580

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i.i.i.preheader185

.lr.ph.i.i.i.preheader185:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03253.i, %vector.memcheck ], [ %.03253.i, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.03457.i, %vector.memcheck ], [ %.03457.i, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader185, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader185 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader185 ] ; 4 uses
  %i.ao = load i32, ptr %.079.i.i.i, align 4, !tbaa !21
  store i32 %i.ao, ptr %.010.i.i.i, align 4, !tbaa !21
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !21
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !21
  store i32 0, ptr %i.ap, align 4, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !6581

bb.g:                                             ; preds = %.lr.ph.i31
  %i.au = load i32, ptr %.03253.i, align 4, !tbaa !21
  %i.av = load i32, ptr %.055.i, align 4, !tbaa !21
  %.not42.i = icmp slt i32 %i.au, %i.av           ; 3 uses
  %i.aw = load i32, ptr %.03457.i, align 4, !tbaa !21
  store i32 %i.aw, ptr %.03056.i, align 4, !tbaa !21
  store i32 0, ptr %.03457.i, align 4, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn52.i, i64 12 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn4154.i, i64 12
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !21
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !21
  store i32 0, ptr %i.ax, align 4, !tbaa !21
  %.03253.sink74.i = select i1 %.not42.i, ptr %.03253.i, ptr %.055.i ; 3 uses
  %.133.idx.i = select i1 %.not42.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03253.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 8
  %.1.i = getelementptr inbounds nuw i8, ptr %.055.i, i64 %.1.idx.i ; 2 uses
  %i.ba = load i32, ptr %.03253.sink74.i, align 4, !tbaa !21
  store i32 %i.ba, ptr %.03457.i, align 4, !tbaa !21
  store i32 0, ptr %.03253.sink74.i, align 4, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.03253.sink74.i, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !21
  store i32 0, ptr %i.bb, align 4, !tbaa !21
  %.030.i = getelementptr inbounds nuw i8, ptr %.03056.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03457.i, i64 8 ; 2 uses
  %i.bd = icmp eq ptr %.034.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !6582

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %middle.block, %bb.f, %bb.a
  %i.be = phi ptr [ %i.g, %bb.a ], [ %.055.i, %middle.block ], [ %i.r, %bb.f ], [ %.055.i, %.lr.ph.i.i.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bf = phi ptr [ %i.e, %bb.a ], [ %.03253.i, %middle.block ], [ %i.o, %bb.f ], [ %.03253.i, %.lr.ph.i.i.i ], [ %.133.i, %bb.g ] ; 4 uses
  %.028 = phi ptr [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %bb.f ], [ %1, %.lr.ph.i.i.i ], [ %1, %bb.g ] ; 3 uses
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.aj, %middle.block ], [ %.03050.i, %bb.f ], [ %i.at, %.lr.ph.i.i.i ], [ %.030.i, %bb.g ] ; 6 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit
  %i.bg = phi ptr [ %.pre86, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51 ], [ %i.be, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit ] ; 3 uses
  %i.bh = phi ptr [ %.pre, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51 ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit ] ; 3 uses
  %.055 = phi ptr [ %i.q, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51 ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit ] ; 5 uses
  %.02854 = phi ptr [ %1, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51 ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit ] ; 2 uses
  %.not.i32 = icmp eq ptr %i.bg, %3
  %.not36.i = icmp eq ptr %.055, %i.bh
  %or.cond.i33 = select i1 %.not.i32, i1 true, i1 %.not36.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !48
  br label %.outer.i

.outer.i:                                         ; preds = %bb.k, %bb.i
  %.030.ph.i = phi ptr [ %.131.i, %bb.k ], [ %.02854, %bb.i ]
  %.028.ph.i = phi ptr [ %i.bt, %bb.k ], [ %i.bh, %bb.i ] ; 5 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.k ], [ %i.bg, %bb.i ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.k ], [ %i.bi, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i, %.outer.i
  %.030.i34 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.bl, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 6 uses
  %.025.i = phi ptr [ %i.bm, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 6 uses
  %i.bj = load i32, ptr %.028.ph.i, align 4, !tbaa !21 ; 2 uses
  %i.bk = load i32, ptr %.025.i, align 4, !tbaa !21 ; 2 uses
  %.not42.i35 = icmp slt i32 %i.bj, %i.bk
  br i1 %.not42.i35, label %bb.k, label %.split.i

.split.i:                                         ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i32 %i.bk, ptr %.030.i34, align 4, !tbaa !21
  store i32 0, ptr %.025.i, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !21
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !21
  store i32 0, ptr %i.bn, align 4, !tbaa !21
  %i.bq = load i32, ptr %.026.i, align 4, !tbaa !21
  store i32 %i.bq, ptr %.025.i, align 4, !tbaa !21
  store i32 0, ptr %.026.i, align 4, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !21
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !21
  store i32 0, ptr %i.br, align 4, !tbaa !21
  %.not44.i = icmp eq ptr %i.bl, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.j, !llvm.loop !6583

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i32 %i.bj, ptr %.030.i34, align 4, !tbaa !21
  store i32 0, ptr %.028.ph.i, align 4, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !21
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !21
  store i32 0, ptr %i.bu, align 4, !tbaa !21
  %.not43.i = icmp eq ptr %i.bt, %.055
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.outer.i, !llvm.loop !6583

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread: ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit
  %.not.i37 = icmp eq ptr %i.be, %3
  %.not36.i38 = icmp eq ptr %.0, %i.bf
  %or.cond.i39 = select i1 %.not.i37, i1 true, i1 %.not36.i38
  br i1 %or.cond.i39, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread, %bb.m
  %.024.i.ph = phi ptr [ %i.bz, %bb.m ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cf, %bb.m ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.m ], [ %i.be, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.l
  %.024.i = phi ptr [ %i.bz, %bb.l ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.cb, %bb.l ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.bx = load i32, ptr %.021.i.ph, align 4, !tbaa !21 ; 2 uses
  %i.by = load i32, ptr %.0.i, align 4, !tbaa !21 ; 2 uses
  %.not37.i = icmp slt i32 %i.bx, %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %.not37.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i32 %i.by, ptr %.024.i, align 4, !tbaa !21
  store i32 0, ptr %.0.i, align 4, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !21
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !21
  store i32 0, ptr %i.cc, align 4, !tbaa !21
  %i.ce = icmp eq ptr %i.cb, %3
  br i1 %i.ce, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i, !llvm.loop !6584

bb.m:                                             ; preds = %.preheader.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.bx, ptr %.024.i, align 4, !tbaa !21
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !21
  store i32 %i.ch, ptr %i.ca, align 4, !tbaa !21
  store i32 0, ptr %i.cg, align 4, !tbaa !21
  %i.ci = icmp eq ptr %i.cf, %.0
  br i1 %i.ci, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !6584

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit: ; preds = %bb.k, %.split.i, %bb.l, %bb.m, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread, %bb.e, %bb.h
  %i.cj = phi ptr [ %.0.i, %bb.m ], [ %i.bg, %bb.h ], [ %i.bl, %.split.i ], [ %i.be, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %i.g, %bb.e ], [ %i.cb, %bb.l ], [ %.026.i, %bb.k ]
  %i.ck = phi ptr [ %i.cf, %bb.m ], [ %i.bh, %bb.h ], [ %.028.ph.i, %.split.i ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %i.o, %bb.e ], [ %.021.i.ph, %bb.l ], [ %i.bt, %bb.k ]
  %.049 = phi ptr [ %.0, %bb.l ], [ %.055, %bb.h ], [ %.055, %.split.i ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %i.o, %bb.e ], [ %.0, %bb.m ], [ %.055, %bb.k ]
  %i.cl = phi ptr [ %i.bz, %bb.l ], [ %.02854, %bb.h ], [ %.13137.i, %.split.i ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %i.bz, %bb.m ], [ %.131.i, %bb.k ]
  store ptr %i.ck, ptr %5, align 8, !tbaa !48
  store ptr %.049, ptr %6, align 8, !tbaa !48
  store ptr %i.cj, ptr %2, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret ptr %i.cl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !48     ; 7 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !48     ; 5 uses
  %.not = icmp eq ptr %0, %1
  %.not47 = icmp eq ptr %i.d, %3
  %or.cond = select i1 %.not, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !48     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !21
  store i32 %i.h, ptr %i.c, align 4, !tbaa !21
  store i32 0, ptr %0, align 4, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.i, align 4, !tbaa !21
  store i32 %i.k, ptr %i.j, align 4, !tbaa !21
  store i32 0, ptr %i.i, align 4, !tbaa !21
  %i.l = load i32, ptr %i.e, align 4, !tbaa !21
  store i32 %i.l, ptr %0, align 4, !tbaa !21
  store i32 0, ptr %i.e, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21
  store i32 %i.n, ptr %i.i, align 4, !tbaa !21
  store i32 0, ptr %i.m, align 4, !tbaa !21
  %i.o = load i32, ptr %i.d, align 4, !tbaa !21
  store i32 %i.o, ptr %i.e, align 4, !tbaa !21
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  store i32 %i.q, ptr %i.m, align 4, !tbaa !21
  store i32 0, ptr %i.p, align 4, !tbaa !21
  %.03759 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.04160 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not4861 = icmp eq ptr %.04160, %1
  br i1 %.not4861, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %.04168 = phi ptr [ %.041, %bb.f ], [ %.04160, %bb.b ] ; 14 uses
  %.03767 = phi ptr [ %.037, %bb.f ], [ %.03759, %bb.b ] ; 4 uses
  %.066 = phi ptr [ %.1, %bb.f ], [ %i.g, %bb.b ] ; 9 uses
  %.03565 = phi ptr [ %.136, %bb.f ], [ %i.f, %bb.b ] ; 8 uses
  %.pn4964 = phi ptr [ %.03767, %bb.f ], [ %i.c, %bb.b ] ; 2 uses
  %.03963 = phi ptr [ %.140, %bb.f ], [ %i.c, %bb.b ] ; 15 uses
  %.pn62 = phi ptr [ %.04168, %bb.f ], [ %0, %bb.b ] ; 2 uses
  %i.r = icmp eq ptr %.03565, %3
  br i1 %i.r, label %.lr.ph.i.i.preheader, label %bb.c

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.s = add i64 %i.b, -16
  %6 = shl i64 %indvar, 3
  %7 = add i64 %6, %i.a
  %8 = sub i64 %i.s, %7                           ; 2 uses
  %9 = lshr i64 %8, 3
  %i.t = add nuw nsw i64 %9, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %8, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader102, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.03963, i64 8
  %i.u = add i64 %i.b, -16
  %10 = shl i64 %indvar, 3
  %11 = add i64 %10, %i.a
  %i.v = sub i64 %i.u, %11
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %scevgep90 = getelementptr i8, ptr %scevgep, i64 %i.w
  %i.x = shl i64 %indvar, 3
  %i.y = getelementptr i8, ptr %0, i64 %i.x
  %scevgep91 = getelementptr i8, ptr %i.y, i64 16
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %i.w
  %bound0 = icmp ult ptr %.03963, %scevgep92
  %bound1 = icmp ult ptr %.04168, %scevgep90
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03963, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.04168, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.03963, i64 %i.ac
  %next.gep93.a = getelementptr i8, ptr %.03963, i64 %i.ad
  %next.gep94 = getelementptr i8, ptr %.04168, i64 %i.ac ; 2 uses
  %next.gep95 = getelementptr i8, ptr %.04168, i64 %i.ad ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep94, align 4, !tbaa !21, !alias.scope !6585
  %wide.vec97 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !21, !alias.scope !6585
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21, !alias.scope !6588, !noalias !6585
  store <4 x i32> %wide.vec97, ptr %next.gep93.a, align 4, !tbaa !21, !alias.scope !6588, !noalias !6585
  store <4 x i32> zeroinitializer, ptr %next.gep94, align 4, !tbaa !21, !alias.scope !6585
  store <4 x i32> zeroinitializer, ptr %next.gep95, align 4, !tbaa !21, !alias.scope !6585
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !6590

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph.i.i.preheader102

.lr.ph.i.i.preheader102:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03963, %vector.memcheck ], [ %.03963, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04168, %vector.memcheck ], [ %.04168, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader102, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader102 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader102 ] ; 4 uses
  %i.af = load i32, ptr %.079.i.i, align 4, !tbaa !21
  store i32 %i.af, ptr %.010.i.i, align 4, !tbaa !21
  store i32 0, ptr %.079.i.i, align 4, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !21
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !21
  store i32 0, ptr %i.ag, align 4, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph.i.i, !llvm.loop !6591

bb.c:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %.066, align 4, !tbaa !21
  %i.am = load i32, ptr %.03963, align 4, !tbaa !21
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.03565, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.066, i64 8
  %i.aq = load i32, ptr %.04168, align 4, !tbaa !21
  store i32 %i.aq, ptr %.03767, align 4, !tbaa !21
  store i32 0, ptr %.04168, align 4, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn62, i64 12 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn4964, i64 12
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !21
  store i32 %i.at, ptr %i.as, align 4, !tbaa !21
  store i32 0, ptr %i.ar, align 4, !tbaa !21
  %i.au = load i32, ptr %.066, align 4, !tbaa !21
  store i32 %i.au, ptr %.04168, align 4, !tbaa !21
  store i32 0, ptr %.066, align 4, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %.066, i64 4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !21
  store i32 0, ptr %i.av, align 4, !tbaa !21
  %i.ax = load i32, ptr %.03565, align 4, !tbaa !21
  store i32 %i.ax, ptr %.066, align 4, !tbaa !21
  store i32 0, ptr %.03565, align 4, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.03565, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21
  store i32 %i.az, ptr %i.av, align 4, !tbaa !21
  store i32 0, ptr %i.ay, align 4, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.03963, i64 8
  %i.bb = load i32, ptr %.04168, align 4, !tbaa !21
  store i32 %i.bb, ptr %.03767, align 4, !tbaa !21
  store i32 0, ptr %.04168, align 4, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn62, i64 12 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn4964, i64 12
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !21
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !21
  store i32 0, ptr %i.bc, align 4, !tbaa !21
  %i.bf = load i32, ptr %.03963, align 4, !tbaa !21
  store i32 %i.bf, ptr %.04168, align 4, !tbaa !21
  store i32 0, ptr %.03963, align 4, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %.03963, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  store i32 %i.bh, ptr %i.bc, align 4, !tbaa !21
  store i32 0, ptr %i.bg, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.140 = phi ptr [ %.03963, %bb.d ], [ %i.ba, %bb.e ] ; 2 uses
  %.136 = phi ptr [ %i.ao, %bb.d ], [ %.03565, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.ap, %bb.d ], [ %.066, %bb.e ] ; 2 uses
  %.037 = getelementptr inbounds nuw i8, ptr %.03767, i64 8 ; 2 uses
  %.041 = getelementptr inbounds nuw i8, ptr %.04168, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %.041, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph, !llvm.loop !6592

_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit: ; preds = %bb.f, %.lr.ph.i.i, %middle.block, %bb.b
  %.03958 = phi ptr [ %.03963, %middle.block ], [ %i.c, %bb.b ], [ %.03963, %.lr.ph.i.i ], [ %.140, %bb.f ]
  %.03556 = phi ptr [ %.03565, %middle.block ], [ %i.f, %bb.b ], [ %.03565, %.lr.ph.i.i ], [ %.136, %bb.f ]
  %.054 = phi ptr [ %.066, %middle.block ], [ %i.g, %bb.b ], [ %.066, %.lr.ph.i.i ], [ %.1, %bb.f ]
  %.2 = phi ptr [ %i.aa, %middle.block ], [ %.03759, %bb.b ], [ %i.ak, %.lr.ph.i.i ], [ %.037, %bb.f ]
  store ptr %.03556, ptr %2, align 8, !tbaa !48
  store ptr %.03958, ptr %5, align 8, !tbaa !48
  store ptr %.054, ptr %4, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, %bb.a
  %.3 = phi ptr [ %.2, %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit ], [ %i.c, %bb.a ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_10antistableINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef align 8 dead_on_return %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !48     ; 7 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !48     ; 5 uses
  %.not = icmp eq ptr %0, %1
  %.not47 = icmp eq ptr %i.d, %3
  %or.cond = select i1 %.not, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !48     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !21
  store i32 %i.h, ptr %i.c, align 4, !tbaa !21
  store i32 0, ptr %0, align 4, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.i, align 4, !tbaa !21
  store i32 %i.k, ptr %i.j, align 4, !tbaa !21
  store i32 0, ptr %i.i, align 4, !tbaa !21
  %i.l = load i32, ptr %i.e, align 4, !tbaa !21
  store i32 %i.l, ptr %0, align 4, !tbaa !21
  store i32 0, ptr %i.e, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21
  store i32 %i.n, ptr %i.i, align 4, !tbaa !21
  store i32 0, ptr %i.m, align 4, !tbaa !21
  %i.o = load i32, ptr %i.d, align 4, !tbaa !21
  store i32 %i.o, ptr %i.e, align 4, !tbaa !21
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  store i32 %i.q, ptr %i.m, align 4, !tbaa !21
  store i32 0, ptr %i.p, align 4, !tbaa !21
  %.03760 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.04161 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not4862 = icmp eq ptr %.04161, %1
  br i1 %.not4862, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %.04169 = phi ptr [ %.041, %bb.f ], [ %.04161, %bb.b ] ; 14 uses
  %.03768 = phi ptr [ %.037, %bb.f ], [ %.03760, %bb.b ] ; 4 uses
  %.067 = phi ptr [ %.1, %bb.f ], [ %i.g, %bb.b ] ; 9 uses
  %.03566 = phi ptr [ %.136, %bb.f ], [ %i.f, %bb.b ] ; 8 uses
  %.pn4965 = phi ptr [ %.03768, %bb.f ], [ %i.c, %bb.b ] ; 2 uses
  %.03964 = phi ptr [ %.140, %bb.f ], [ %i.c, %bb.b ] ; 15 uses
  %.pn63 = phi ptr [ %.04169, %bb.f ], [ %0, %bb.b ] ; 2 uses
  %i.r = icmp eq ptr %.03566, %3
  br i1 %i.r, label %.lr.ph.i.i.preheader, label %bb.c

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.s = add i64 %i.b, -16
  %7 = shl i64 %indvar, 3
  %8 = add i64 %7, %i.a
  %9 = sub i64 %i.s, %8                           ; 2 uses
  %10 = lshr i64 %9, 3
  %i.t = add nuw nsw i64 %10, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %9, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.03964, i64 8
  %i.u = add i64 %i.b, -16
  %11 = shl i64 %indvar, 3
  %12 = add i64 %11, %i.a
  %i.v = sub i64 %i.u, %12
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %scevgep91 = getelementptr i8, ptr %scevgep, i64 %i.w
  %i.x = shl i64 %indvar, 3
  %i.y = getelementptr i8, ptr %0, i64 %i.x
  %scevgep92 = getelementptr i8, ptr %i.y, i64 16
  %scevgep93 = getelementptr i8, ptr %scevgep92, i64 %i.w
  %bound0 = icmp ult ptr %.03964, %scevgep93
  %bound1 = icmp ult ptr %.04169, %scevgep91
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03964, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.04169, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.03964, i64 %i.ac
  %next.gep94.a = getelementptr i8, ptr %.03964, i64 %i.ad
  %next.gep95 = getelementptr i8, ptr %.04169, i64 %i.ac ; 2 uses
  %next.gep96 = getelementptr i8, ptr %.04169, i64 %i.ad ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !21, !alias.scope !6593
  %wide.vec98 = load <4 x i32>, ptr %next.gep96, align 4, !tbaa !21, !alias.scope !6593
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21, !alias.scope !6596, !noalias !6593
  store <4 x i32> %wide.vec98, ptr %next.gep94.a, align 4, !tbaa !21, !alias.scope !6596, !noalias !6593
  store <4 x i32> zeroinitializer, ptr %next.gep95, align 4, !tbaa !21, !alias.scope !6593
  store <4 x i32> zeroinitializer, ptr %next.gep96, align 4, !tbaa !21, !alias.scope !6593
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !6598

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph.i.i.preheader103

.lr.ph.i.i.preheader103:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03964, %vector.memcheck ], [ %.03964, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04169, %vector.memcheck ], [ %.04169, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader103, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader103 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader103 ] ; 4 uses
  %i.af = load i32, ptr %.079.i.i, align 4, !tbaa !21
  store i32 %i.af, ptr %.010.i.i, align 4, !tbaa !21
  store i32 0, ptr %.079.i.i, align 4, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !21
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !21
  store i32 0, ptr %i.ag, align 4, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph.i.i, !llvm.loop !6599

bb.c:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %.03964, align 4, !tbaa !21
  %i.am = load i32, ptr %.067, align 4, !tbaa !21
  %.not50 = icmp slt i32 %i.al, %i.am
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.03566, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.ap = load i32, ptr %.04169, align 4, !tbaa !21
  store i32 %i.ap, ptr %.03768, align 4, !tbaa !21
  store i32 0, ptr %.04169, align 4, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn63, i64 12 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn4965, i64 12
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !21
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !21
  store i32 0, ptr %i.aq, align 4, !tbaa !21
  %i.at = load i32, ptr %.067, align 4, !tbaa !21
  store i32 %i.at, ptr %.04169, align 4, !tbaa !21
  store i32 0, ptr %.067, align 4, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %.067, i64 4 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !21
  store i32 %i.av, ptr %i.aq, align 4, !tbaa !21
  store i32 0, ptr %i.au, align 4, !tbaa !21
  %i.aw = load i32, ptr %.03566, align 4, !tbaa !21
  store i32 %i.aw, ptr %.067, align 4, !tbaa !21
  store i32 0, ptr %.03566, align 4, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.03566, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !21
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !21
  store i32 0, ptr %i.ax, align 4, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.03964, i64 8
  %i.ba = load i32, ptr %.04169, align 4, !tbaa !21
  store i32 %i.ba, ptr %.03768, align 4, !tbaa !21
  store i32 0, ptr %.04169, align 4, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn63, i64 12 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn4965, i64 12
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !21
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !21
  store i32 0, ptr %i.bb, align 4, !tbaa !21
  %i.be = load i32, ptr %.03964, align 4, !tbaa !21
  store i32 %i.be, ptr %.04169, align 4, !tbaa !21
  store i32 0, ptr %.03964, align 4, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %.03964, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !21
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !21
  store i32 0, ptr %i.bf, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.140 = phi ptr [ %.03964, %bb.d ], [ %i.az, %bb.e ] ; 2 uses
  %.136 = phi ptr [ %i.an, %bb.d ], [ %.03566, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.ao, %bb.d ], [ %.067, %bb.e ] ; 2 uses
  %.037 = getelementptr inbounds nuw i8, ptr %.03768, i64 8 ; 2 uses
  %.041 = getelementptr inbounds nuw i8, ptr %.04169, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %.041, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph, !llvm.loop !6600

_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit: ; preds = %bb.f, %.lr.ph.i.i, %middle.block, %bb.b
  %.03959 = phi ptr [ %.03964, %middle.block ], [ %i.c, %bb.b ], [ %.03964, %.lr.ph.i.i ], [ %.140, %bb.f ]
  %.03557 = phi ptr [ %.03566, %middle.block ], [ %i.f, %bb.b ], [ %.03566, %.lr.ph.i.i ], [ %.136, %bb.f ]
  %.055 = phi ptr [ %.067, %middle.block ], [ %i.g, %bb.b ], [ %.067, %.lr.ph.i.i ], [ %.1, %bb.f ]
  %.2 = phi ptr [ %i.aa, %middle.block ], [ %.03760, %bb.b ], [ %i.ak, %.lr.ph.i.i ], [ %.037, %bb.f ]
  store ptr %.03557, ptr %2, align 8, !tbaa !48
  store ptr %.03959, ptr %5, align 8, !tbaa !48
  store ptr %.055, ptr %4, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, %bb.a
  %.3 = phi ptr [ %.2, %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit ], [ %i.c, %bb.a ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEENS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEESB_SB_SB_SJ_NS0_7swap_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.129") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 2 uses
  %.not98 = icmp eq i64 %8, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 3
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !6416
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EEvT_SC_RSC_T0_SE_SE_.exit
  %i.b = phi ptr [ %.pre, %.lr.ph ], [ %i.dt, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EEvT_SC_RSC_T0_SE_SE_.exit ] ; 2 uses
  %.0 = phi i64 [ %10, %.lr.ph ], [ %i.dx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EEvT_SC_RSC_T0_SE_SE_.exit ] ; 3 uses
  %.0100 = phi i64 [ %9, %.lr.ph ], [ %i.dv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EEvT_SC_RSC_T0_SE_SE_.exit ] ; 4 uses
  %.08299 = phi i64 [ %8, %.lr.ph ], [ %i.dy, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EEvT_SC_RSC_T0_SE_SE_.exit ] ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !6416   ; 8 uses
  %i.d = icmp ult i64 %.0100, %.0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEENS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEESB_SJ_EENS0_9iter_sizeIT1_E4typeET_T0_SL_SN_SN_SN_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.w, %.thread20.i ], [ %.0100, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.v, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.e = mul i64 %.01822.i, %7
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = mul i64 %.023.i, %7
  %i.i = xor i64 %i.h, -1
  %i.j = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.i
  %i.k = xor i64 %.01822.i, -1
  %i.l = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.k
  %i.m = xor i64 %.023.i, -1
  %i.n = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.m
  %i.o = load i32, ptr %i.g, align 4, !tbaa !21   ; 2 uses
  %i.p = load i32, ptr %i.j, align 4, !tbaa !21   ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = icmp slt i32 %i.p, %i.o
  br i1 %i.r, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.l, align 4, !tbaa !21
  %i.t = load i32, ptr %i.n, align 4, !tbaa !21
  %i.u = icmp slt i32 %i.s, %i.t
  %cond.fr.i = freeze i1 %i.u
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.v = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.w = add nuw i64 %.023.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEENS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEESB_SJ_EENS0_9iter_sizeIT1_E4typeET_T0_SL_SN_SN_SN_T2_.exit, label %.lr.ph.i, !llvm.loop !6524

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEENS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEESB_SJ_EENS0_9iter_sizeIT1_E4typeET_T0_SL_SN_SN_SN_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.v, %.thread20.i ] ; 4 uses
  %i.x = add i64 %.018.lcssa.i, 2
  %i.y = call i64 @llvm.umax.i64(i64 %.0, i64 %i.x) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.y, i64 %.08299)
  %i.z = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.aa = mul i64 %7, %.018.lcssa.i
  %i.ab = sub i64 0, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ab ; 5 uses
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7move_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_:bb.a
  %.not.i30 = icmp eq ptr %i.cy, %i.af
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !13597

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %.reass456 = add i64 %i.bw, %invariant.op455
  %i.dd = sub i64 %.reass456, %i.i                ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dd, 44
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader348, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.064.0, i64 -4
  %i.dg = add i64 %i.c, %i.bw
  %i.dh = sub i64 %i.dg, %i.i
  %i.di = lshr i64 %i.dh, 2
  %i.dj = mul i64 %i.di, -4                       ; 2 uses
  %scevgep307 = getelementptr i8, ptr %scevgep, i64 %i.dj
  %scevgep308 = getelementptr i8, ptr %i.bv, i64 -4
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.dj
  %bound0 = icmp ult ptr %scevgep307, %i.bv
  %bound1 = icmp ult ptr %scevgep309, %.sroa.064.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader348, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.df, 9223372036854775800     ; 3 uses
  %i.dk = mul i64 %n.vec, -4                      ; 2 uses
  %i.dl = getelementptr i8, ptr %.sroa.064.0, i64 %i.dk ; 2 uses
  %i.dm = getelementptr i8, ptr %i.bv, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.dn ; 2 uses
  %next.gep310 = getelementptr i8, ptr %i.bv, i64 %i.dn ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %next.gep310, i64 -16 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep310, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.do, align 4, !tbaa !21, !alias.scope !13598, !noalias !13601
  %wide.load311 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !21, !alias.scope !13598, !noalias !13601
  %i.dq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.dq, align 4, !tbaa !21, !alias.scope !13606, !noalias !13608
  store <4 x i32> %wide.load311, ptr %i.dr, align 4, !tbaa !21, !alias.scope !13606, !noalias !13608
  store <4 x i32> zeroinitializer, ptr %i.do, align 4, !tbaa !21, !alias.scope !13598, !noalias !13601
  store <4 x i32> zeroinitializer, ptr %i.dp, align 4, !tbaa !21, !alias.scope !13598, !noalias !13601
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !13609

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader348

.lr.ph.i.i.preheader348:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dl, %middle.block ]
  %.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader348, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader348 ]
  %i.dt = phi ptr [ %i.du, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader348 ]
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -4 ; 4 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !21, !noalias !13601
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !21, !noalias !13601
  store i32 0, ptr %i.du, align 4, !tbaa !21, !noalias !13601
  %.not.i.i31 = icmp eq ptr %i.du, %i.af
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !13610

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block342, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.af, %bb.s ], [ %i.dv, %.lr.ph.i.i ], [ %i.bv, %bb.t ], [ %i.ca, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dl, %middle.block ], [ %i.cq, %middle.block342 ], [ %i.da, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !13442
  %i.dx = load ptr, ptr %1, align 8, !tbaa !13442 ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -4             ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.af, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 2 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !21
  store i32 0, ptr %i.dz, align 4, !tbaa !21
  %i.ec = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ee = load i32, ptr %i.ea, align 4, !tbaa !21
  store i32 %i.ee, ptr %i.dz, align 4, !tbaa !21
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !21
  %i.ef = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.eg = add i32 %i.ef, -1
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.eh = load ptr, ptr %2, align 8, !tbaa !13442 ; 2 uses
  %i.ei = icmp eq ptr %i.dy, %i.eh
  br i1 %i.ei, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = icmp eq ptr %i.eh, %i.dx
  br i1 %i.ej, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.dx, %bb.y ], [ %i.dy, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !13442
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  store ptr %i.af, ptr %3, align 8, !tbaa !13442
  %i.ek = load ptr, ptr %1, align 8, !tbaa !13442
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -4 ; 2 uses
  store ptr %i.el, ptr %1, align 8, !tbaa !13442
  %i.em = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.em to i64
  %i.en = add i64 %.0140, %.neg
  %i.eo = icmp ne i64 %i.ae, 0
  %.neg24 = sext i1 %i.eo to i64
  %i.ep = add i64 %.sroa.speculated, %.neg24
  %i.eq = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13611

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, %bb.a
  %i.er = load ptr, ptr %6, align 8, !tbaa !13442
  store ptr %i.er, ptr %0, align 8, !tbaa !13442
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !2648   ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !2648   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !2648   ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.07.i, align 4, !tbaa !21
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.c, !llvm.loop !13612

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 12 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 12 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.p = load i32, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 %i.p, ptr %i.m, align 4, !tbaa !21
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !21
  %i.q = load i32, ptr %4, align 4, !tbaa !21
  store i32 %i.q, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 0, ptr %4, align 4, !tbaa !21
  %i.r = load i32, ptr %i.d, align 4, !tbaa !21
  store i32 %i.r, ptr %4, align 4, !tbaa !21
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %.03759.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %.04160.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %.not4861.i = icmp eq ptr %.04160.i, %1
  br i1 %.not4861.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 4 uses
  %.04166.i = phi ptr [ %.041.i, %bb.j ], [ %.04160.i, %bb.f ] ; 10 uses
  %.03765.i = phi ptr [ %.037.i, %bb.j ], [ %.03759.i, %bb.f ] ; 3 uses
  %.064.i = phi ptr [ %.1.i, %bb.j ], [ %i.o, %bb.f ] ; 6 uses
  %.03563.i = phi ptr [ %.136.i, %bb.j ], [ %i.n, %bb.f ] ; 6 uses
  %.03962.i = phi ptr [ %.140.i, %bb.j ], [ %i.m, %bb.f ] ; 12 uses
  %i.s = icmp eq ptr %.03563.i, %3
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.t = add i64 %i.a, -8
  %7 = shl i64 %indvar, 2
  %8 = add i64 %7, %i.j
  %9 = sub i64 %i.t, %8                           ; 2 uses
  %10 = lshr i64 %9, 2
  %i.u = add nuw nsw i64 %10, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %9, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader291, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.03962.i, i64 4
  %i.v = add i64 %i.a, -8
  %11 = shl i64 %indvar, 2
  %12 = add i64 %11, %i.j
  %i.w = sub i64 %i.v, %12
  %i.x = and i64 %i.w, -4                         ; 2 uses
  %scevgep234 = getelementptr i8, ptr %scevgep, i64 %i.x
  %i.y = shl i64 %indvar, 2
  %i.z = getelementptr i8, ptr %.0.lcssa.i, i64 %i.y
  %scevgep235 = getelementptr i8, ptr %i.z, i64 8
  %scevgep236 = getelementptr i8, ptr %scevgep235, i64 %i.x
  %bound0 = icmp ult ptr %.03962.i, %scevgep236
  %bound1 = icmp ult ptr %.04166.i, %scevgep234
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader291, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.03962.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %.04166.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03962.i, i64 %i.ad ; 2 uses
  %next.gep237 = getelementptr i8, ptr %.04166.i, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep237, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep237, align 4, !tbaa !21, !alias.scope !13613
  %wide.load238 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !21, !alias.scope !13613
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !21, !alias.scope !13616, !noalias !13613
  store <4 x i32> %wide.load238, ptr %i.af, align 4, !tbaa !21, !alias.scope !13616, !noalias !13613
  store <4 x i32> zeroinitializer, ptr %next.gep237, align 4, !tbaa !21, !alias.scope !13613
  store <4 x i32> zeroinitializer, ptr %i.ae, align 4, !tbaa !21, !alias.scope !13613
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !13618

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i.preheader291

.lr.ph.i.i.i.preheader291:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03962.i, %vector.memcheck ], [ %.03962.i, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.04166.i, %vector.memcheck ], [ %.04166.i, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader291, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader291 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader291 ] ; 3 uses
  %i.ah = load i32, ptr %.079.i.i.i, align 4, !tbaa !21
  store i32 %i.ah, ptr %.010.i.i.i, align 4, !tbaa !21
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !13619

bb.g:                                             ; preds = %.lr.ph.i31
  %i.ak = load i32, ptr %.064.i, align 4, !tbaa !21
  %i.al = load i32, ptr %.03962.i, align 4, !tbaa !21
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.03563.i, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.064.i, i64 4
  %i.ap = load i32, ptr %.04166.i, align 4, !tbaa !21
  store i32 %i.ap, ptr %.03765.i, align 4, !tbaa !21
  store i32 0, ptr %.04166.i, align 4, !tbaa !21
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.03962.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.04166.sink87.i = phi ptr [ %.04166.i, %bb.i ], [ %.064.i, %bb.h ] ; 3 uses
  %.03765.sink.i = phi ptr [ %.03765.i, %bb.i ], [ %.04166.i, %bb.h ]
  %.03962.sink85.i = phi ptr [ %.03962.i, %bb.i ], [ %.03563.i, %bb.h ] ; 2 uses
  %.140.i = phi ptr [ %i.aq, %bb.i ], [ %.03962.i, %bb.h ] ; 2 uses
  %.136.i = phi ptr [ %.03563.i, %bb.i ], [ %i.an, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %.064.i, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ar = load i32, ptr %.04166.sink87.i, align 4, !tbaa !21
  store i32 %i.ar, ptr %.03765.sink.i, align 4, !tbaa !21
  store i32 0, ptr %.04166.sink87.i, align 4, !tbaa !21
  %i.as = load i32, ptr %.03962.sink85.i, align 4, !tbaa !21
  store i32 %i.as, ptr %.04166.sink87.i, align 4, !tbaa !21
  store i32 0, ptr %.03962.sink85.i, align 4, !tbaa !21
  %.037.i = getelementptr inbounds nuw i8, ptr %.03765.i, i64 4 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04166.i, i64 4 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !13620

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.au = load i32, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 %i.au, ptr %i.m, align 4, !tbaa !21
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !21
  %i.av = load i32, ptr %i.d, align 4, !tbaa !21
  store i32 %i.av, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %.03049.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %.03450.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.aw = icmp eq ptr %.03450.i, %1
  br i1 %i.aw, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar242 = phi i64 [ %indvar.next243, %bb.m ], [ 0, %bb.l ] ; 4 uses
  %.03454.i = phi ptr [ %.034.i, %bb.m ], [ %.03450.i, %bb.l ] ; 9 uses
  %.03053.i = phi ptr [ %.030.i, %bb.m ], [ %.03049.i, %bb.l ] ; 2 uses
  %.052.i = phi ptr [ %.1.i35, %bb.m ], [ %i.at, %bb.l ] ; 6 uses
  %.03251.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 11 uses
  %i.ax = icmp eq ptr %.052.i, %3
  br i1 %i.ax, label %.lr.ph.i.i.i40.preheader, label %bb.m

.lr.ph.i.i.i40.preheader:                         ; preds = %.lr.ph.i34
  %i.ay = add i64 %i.a, -8
  %13 = shl i64 %indvar242, 2
  %14 = add i64 %13, %i.j
  %15 = sub i64 %i.ay, %14                        ; 2 uses
  %16 = lshr i64 %15, 2
  %i.az = add nuw nsw i64 %16, 1                  ; 2 uses
  %min.iters.check251 = icmp ult i64 %15, 108
  br i1 %min.iters.check251, label %.lr.ph.i.i.i40.preheader284, label %vector.memcheck240

vector.memcheck240:                               ; preds = %.lr.ph.i.i.i40.preheader
  %scevgep241 = getelementptr i8, ptr %.03251.i, i64 4
  %i.ba = add i64 %i.a, -8
  %17 = shl i64 %indvar242, 2
  %18 = add i64 %17, %i.j
  %i.bb = sub i64 %i.ba, %18
  %i.bc = and i64 %i.bb, -4                       ; 2 uses
  %scevgep244 = getelementptr i8, ptr %scevgep241, i64 %i.bc
  %i.bd = shl i64 %indvar242, 2
  %i.be = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bd
  %scevgep245 = getelementptr i8, ptr %i.be, i64 8
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.bc
  %bound0247 = icmp ult ptr %.03251.i, %scevgep246
  %bound1248 = icmp ult ptr %.03454.i, %scevgep244
  %found.conflict249 = and i1 %bound0247, %bound1248
  br i1 %found.conflict249, label %.lr.ph.i.i.i40.preheader284, label %vector.ph252

vector.ph252:                                     ; preds = %vector.memcheck240
  %n.vec253 = and i64 %i.az, 9223372036854775800  ; 3 uses
  %i.bf = shl i64 %n.vec253, 2                    ; 2 uses
  %i.bg = getelementptr i8, ptr %.03251.i, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %.03454.i, i64 %i.bf
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %i.bi = shl i64 %index255, 2                    ; 2 uses
  %next.gep256 = getelementptr i8, ptr %.03251.i, i64 %i.bi ; 2 uses
  %next.gep257 = getelementptr i8, ptr %.03454.i, i64 %i.bi ; 3 uses
  %i.bj = getelementptr i8, ptr %next.gep257, i64 16 ; 2 uses
  %wide.load258 = load <4 x i32>, ptr %next.gep257, align 4, !tbaa !21, !alias.scope !13621
  %wide.load259 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !21, !alias.scope !13621
  %i.bk = getelementptr i8, ptr %next.gep256, i64 16
  store <4 x i32> %wide.load258, ptr %next.gep256, align 4, !tbaa !21, !alias.scope !13624, !noalias !13621
  store <4 x i32> %wide.load259, ptr %i.bk, align 4, !tbaa !21, !alias.scope !13624, !noalias !13621
  store <4 x i32> zeroinitializer, ptr %next.gep257, align 4, !tbaa !21, !alias.scope !13621
  store <4 x i32> zeroinitializer, ptr %i.bj, align 4, !tbaa !21, !alias.scope !13621
  %index.next260 = add nuw i64 %index255, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.bl, label %middle.block261, label %vector.body254, !llvm.loop !13626

middle.block261:                                  ; preds = %vector.body254
  %cmp.n262 = icmp eq i64 %i.az, %n.vec253
  br i1 %cmp.n262, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i40.preheader284

.lr.ph.i.i.i40.preheader284:                      ; preds = %vector.memcheck240, %.lr.ph.i.i.i40.preheader, %middle.block261
  %.010.i.i.i41.ph = phi ptr [ %.03251.i, %vector.memcheck240 ], [ %.03251.i, %.lr.ph.i.i.i40.preheader ], [ %i.bg, %middle.block261 ]
  %.079.i.i.i42.ph = phi ptr [ %.03454.i, %vector.memcheck240 ], [ %.03454.i, %.lr.ph.i.i.i40.preheader ], [ %i.bh, %middle.block261 ]
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.preheader284, %.lr.ph.i.i.i40
  %.010.i.i.i41 = phi ptr [ %i.bo, %.lr.ph.i.i.i40 ], [ %.010.i.i.i41.ph, %.lr.ph.i.i.i40.preheader284 ] ; 2 uses
  %.079.i.i.i42 = phi ptr [ %i.bn, %.lr.ph.i.i.i40 ], [ %.079.i.i.i42.ph, %.lr.ph.i.i.i40.preheader284 ] ; 3 uses
  %i.bm = load i32, ptr %.079.i.i.i42, align 4, !tbaa !21
  store i32 %i.bm, ptr %.010.i.i.i41, align 4, !tbaa !21
  store i32 0, ptr %.079.i.i.i42, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i.i.i42, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i41, i64 4 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bn, %1
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i40, !llvm.loop !13627

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bp = load i32, ptr %.052.i, align 4, !tbaa !21
  %i.bq = load i32, ptr %.03251.i, align 4, !tbaa !21
  %i.br = icmp slt i32 %i.bp, %i.bq               ; 3 uses
  %i.bs = load i32, ptr %.03454.i, align 4, !tbaa !21
  store i32 %i.bs, ptr %.03053.i, align 4, !tbaa !21
  store i32 0, ptr %.03454.i, align 4, !tbaa !21
  %.03251.sink70.i = select i1 %i.br, ptr %.052.i, ptr %.03251.i ; 2 uses
  %.133.idx.i = select i1 %i.br, i64 0, i64 4
  %.133.i = getelementptr inbounds nuw i8, ptr %.03251.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.br, i64 4, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.052.i, i64 %.1.idx.i ; 2 uses
  %i.bt = load i32, ptr %.03251.sink70.i, align 4, !tbaa !21
  store i32 %i.bt, ptr %.03454.i, align 4, !tbaa !21
  store i32 0, ptr %.03251.sink70.i, align 4, !tbaa !21
  %.030.i = getelementptr inbounds nuw i8, ptr %.03053.i, i64 4 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03454.i, i64 4 ; 2 uses
  %i.bu = icmp eq ptr %.034.i, %1
  %indvar.next243 = add i64 %indvar242, 1
  br i1 %i.bu, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !13628

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i40, %middle.block, %middle.block261, %bb.a
  %.075 = phi ptr [ %.064.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.064.i, %middle.block ], [ %4, %middle.block261 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i40 ], [ %.1.i, %bb.j ]
  %.070 = phi ptr [ %.03962.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03962.i, %middle.block ], [ %.03251.i, %middle.block261 ], [ %.133.i, %bb.m ], [ %.03251.i, %.lr.ph.i.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.069 = phi ptr [ %.03563.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03563.i, %middle.block ], [ %.052.i, %middle.block261 ], [ %.1.i35, %bb.m ], [ %.052.i, %.lr.ph.i.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block261 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.ab, %middle.block ], [ %i.bg, %middle.block261 ], [ %.030.i, %bb.m ], [ %i.bo, %.lr.ph.i.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit
  %.0100 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %.03759.i, %bb.f ] ; 5 uses
  %.02899 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.06998 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.n, %bb.f ] ; 3 uses
  %.07097 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.07596 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.o, %bb.f ]
  %.not.i44 = icmp eq ptr %.06998, %3
  %.not36.i = icmp eq ptr %.0100, %.07097
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ]
  %.028.ph.i = phi ptr [ %i.cb, %bb.o ], [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07596, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.by, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.bz, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 5 uses
  %i.bv = load i32, ptr %.025.i, align 4, !tbaa !21 ; 2 uses
  %i.bw = load i32, ptr %.028.ph.i, align 4, !tbaa !21 ; 2 uses
  %i.bx = icmp slt i32 %i.bv, %i.bw
  br i1 %i.bx, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  store i32 %i.bv, ptr %.030.i46, align 4, !tbaa !21
  store i32 0, ptr %.025.i, align 4, !tbaa !21
  %i.ca = load i32, ptr %.026.i, align 4, !tbaa !21
  store i32 %i.ca, ptr %.025.i, align 4, !tbaa !21
  store i32 0, ptr %.026.i, align 4, !tbaa !21
  %.not43.i = icmp eq ptr %i.by, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.n, !llvm.loop !13629

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 3 uses
  store i32 %i.bw, ptr %.030.i46, align 4, !tbaa !21
  store i32 0, ptr %.028.ph.i, align 4, !tbaa !21
  %.not42.i = icmp eq ptr %i.cb, %.0100
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.outer.i, !llvm.loop !13629

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit
  %.086 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %.03049.i, %bb.l ] ; 5 uses
  %.02884 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.06983 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.at, %bb.l ] ; 3 uses
  %.07082 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.06983, %3
  %.not36.i50 = icmp eq ptr %.086, %.07082
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.cf, %bb.q ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.ci, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.cf, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.cg, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.cc = load i32, ptr %.0.i, align 4, !tbaa !21 ; 2 uses
  %i.cd = load i32, ptr %.021.i.ph, align 4, !tbaa !21 ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 3 uses
  store i32 %i.cc, ptr %.024.i, align 4, !tbaa !21
  store i32 0, ptr %.0.i, align 4, !tbaa !21
  %i.ch = icmp eq ptr %i.cg, %3
  br i1 %i.ch, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !13630

bb.q:                                             ; preds = %.preheader.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.cd, ptr %.024.i, align 4, !tbaa !21
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !21
  %i.cj = icmp eq ptr %i.ci, %.086
  br i1 %i.cj, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !13630

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90
  %.085 = phi ptr [ %.0100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ], [ %.0100, %.split.i ], [ %.086, %bb.p ], [ %.086, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.086, %bb.q ], [ %.0100, %bb.o ]
  %.171 = phi ptr [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ], [ %.028.ph.i, %.split.i ], [ %i.ci, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cb, %bb.o ]
  %.1 = phi ptr [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ], [ %i.by, %.split.i ], [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cg, %bb.p ], [ %.026.i, %bb.o ]
  %i.ck = phi ptr [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ], [ %.13137.i, %.split.i ], [ %i.cf, %bb.p ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.cf, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.171, ptr %5, align 8, !tbaa !2648
  store ptr %.085, ptr %6, align 8, !tbaa !2648
  store ptr %.1, ptr %2, align 8, !tbaa !2648
  ret ptr %i.ck
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !2648   ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !2648   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !2648   ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.08.i, align 4, !tbaa !21
  %.not6.i = icmp slt i32 %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.c, !llvm.loop !13631

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 12 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k ; 12 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = load i32, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !21
  %i.p = load i32, ptr %4, align 4, !tbaa !21
  store i32 %i.p, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 0, ptr %4, align 4, !tbaa !21
  %i.q = load i32, ptr %i.d, align 4, !tbaa !21
  store i32 %i.q, ptr %4, align 4, !tbaa !21
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %.03760.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.04161.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %.not4862.i = icmp eq ptr %.04161.i, %1
  br i1 %.not4862.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 4 uses
  %.04167.i = phi ptr [ %.041.i, %bb.j ], [ %.04161.i, %bb.f ] ; 10 uses
  %.03766.i = phi ptr [ %.037.i, %bb.j ], [ %.03760.i, %bb.f ] ; 3 uses
  %.065.i = phi ptr [ %.1.i, %bb.j ], [ %i.n, %bb.f ] ; 6 uses
  %.03564.i = phi ptr [ %.136.i, %bb.j ], [ %i.m, %bb.f ] ; 6 uses
  %.03963.i = phi ptr [ %.140.i, %bb.j ], [ %i.l, %bb.f ] ; 12 uses
  %i.r = icmp eq ptr %.03564.i, %3
  br i1 %i.r, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.s = add i64 %i.a, -8
  %8 = shl i64 %indvar, 2
  %9 = add i64 %8, %i.i
  %10 = sub i64 %i.s, %9                          ; 2 uses
  %11 = lshr i64 %10, 2
  %i.t = add nuw nsw i64 %11, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %10, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader295, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.03963.i, i64 4
  %i.u = add i64 %i.a, -8
  %12 = shl i64 %indvar, 2
  %13 = add i64 %12, %i.i
  %i.v = sub i64 %i.u, %13
  %i.w = and i64 %i.v, -4                         ; 2 uses
  %scevgep238 = getelementptr i8, ptr %scevgep, i64 %i.w
  %i.x = shl i64 %indvar, 2
  %i.y = getelementptr i8, ptr %.0.lcssa.i, i64 %i.x
  %scevgep239 = getelementptr i8, ptr %i.y, i64 8
  %scevgep240 = getelementptr i8, ptr %scevgep239, i64 %i.w
  %bound0 = icmp ult ptr %.03963.i, %scevgep240
  %bound1 = icmp ult ptr %.04167.i, %scevgep238
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader295, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03963.i, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.04167.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03963.i, i64 %i.ac ; 2 uses
  %next.gep241 = getelementptr i8, ptr %.04167.i, i64 %i.ac ; 3 uses
  %i.ad = getelementptr i8, ptr %next.gep241, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep241, align 4, !tbaa !21, !alias.scope !13632
  %wide.load242 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !21, !alias.scope !13632
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !21, !alias.scope !13635, !noalias !13632
  store <4 x i32> %wide.load242, ptr %i.ae, align 4, !tbaa !21, !alias.scope !13635, !noalias !13632
  store <4 x i32> zeroinitializer, ptr %next.gep241, align 4, !tbaa !21, !alias.scope !13632
  store <4 x i32> zeroinitializer, ptr %i.ad, align 4, !tbaa !21, !alias.scope !13632
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !13637

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i.preheader295

.lr.ph.i.i.i.preheader295:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03963.i, %vector.memcheck ], [ %.03963.i, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.04167.i, %vector.memcheck ], [ %.04167.i, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader295, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader295 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader295 ] ; 3 uses
  %i.ag = load i32, ptr %.079.i.i.i, align 4, !tbaa !21
  store i32 %i.ag, ptr %.010.i.i.i, align 4, !tbaa !21
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !13638

bb.g:                                             ; preds = %.lr.ph.i31
  %i.aj = load i32, ptr %.03963.i, align 4, !tbaa !21
  %i.ak = load i32, ptr %.065.i, align 4, !tbaa !21
  %.not50.i = icmp slt i32 %i.aj, %i.ak
  br i1 %.not50.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.03564.i, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %.065.i, i64 4
  %i.an = load i32, ptr %.04167.i, align 4, !tbaa !21
  store i32 %i.an, ptr %.03766.i, align 4, !tbaa !21
  store i32 0, ptr %.04167.i, align 4, !tbaa !21
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.03963.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.04167.sink88.i = phi ptr [ %.04167.i, %bb.i ], [ %.065.i, %bb.h ] ; 3 uses
  %.03766.sink.i = phi ptr [ %.03766.i, %bb.i ], [ %.04167.i, %bb.h ]
  %.03963.sink86.i = phi ptr [ %.03963.i, %bb.i ], [ %.03564.i, %bb.h ] ; 2 uses
  %.140.i = phi ptr [ %i.ao, %bb.i ], [ %.03963.i, %bb.h ] ; 2 uses
  %.136.i = phi ptr [ %.03564.i, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %.065.i, %bb.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.ap = load i32, ptr %.04167.sink88.i, align 4, !tbaa !21
  store i32 %i.ap, ptr %.03766.sink.i, align 4, !tbaa !21
  store i32 0, ptr %.04167.sink88.i, align 4, !tbaa !21
  %i.aq = load i32, ptr %.03963.sink86.i, align 4, !tbaa !21
  store i32 %i.aq, ptr %.04167.sink88.i, align 4, !tbaa !21
  store i32 0, ptr %.03963.sink86.i, align 4, !tbaa !21
  %.037.i = getelementptr inbounds nuw i8, ptr %.03766.i, i64 4 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04167.i, i64 4 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !13639

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.as = load i32, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 %i.as, ptr %i.l, align 4, !tbaa !21
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !21
  %i.at = load i32, ptr %i.d, align 4, !tbaa !21
  store i32 %i.at, ptr %.0.lcssa.i, align 4, !tbaa !21
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %.03050.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.03451.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.au = icmp eq ptr %.03451.i, %1
  br i1 %i.au, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar246 = phi i64 [ %indvar.next247, %bb.m ], [ 0, %bb.l ] ; 4 uses
  %.03455.i = phi ptr [ %.034.i, %bb.m ], [ %.03451.i, %bb.l ] ; 9 uses
  %.03054.i = phi ptr [ %.030.i, %bb.m ], [ %.03050.i, %bb.l ] ; 2 uses
  %.053.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ar, %bb.l ] ; 6 uses
  %.03252.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 11 uses
  %i.av = icmp eq ptr %.053.i, %3
  br i1 %i.av, label %.lr.ph.i.i.i40.preheader, label %bb.m

.lr.ph.i.i.i40.preheader:                         ; preds = %.lr.ph.i34
  %i.aw = add i64 %i.a, -8
  %14 = shl i64 %indvar246, 2
  %15 = add i64 %14, %i.i
  %16 = sub i64 %i.aw, %15                        ; 2 uses
  %17 = lshr i64 %16, 2
  %i.ax = add nuw nsw i64 %17, 1                  ; 2 uses
  %min.iters.check255 = icmp ult i64 %16, 108
  br i1 %min.iters.check255, label %.lr.ph.i.i.i40.preheader288, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.lr.ph.i.i.i40.preheader
  %scevgep245 = getelementptr i8, ptr %.03252.i, i64 4
  %i.ay = add i64 %i.a, -8
  %18 = shl i64 %indvar246, 2
  %19 = add i64 %18, %i.i
  %i.az = sub i64 %i.ay, %19
  %i.ba = and i64 %i.az, -4                       ; 2 uses
  %scevgep248 = getelementptr i8, ptr %scevgep245, i64 %i.ba
  %i.bb = shl i64 %indvar246, 2
  %i.bc = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bb
  %scevgep249 = getelementptr i8, ptr %i.bc, i64 8
  %scevgep250 = getelementptr i8, ptr %scevgep249, i64 %i.ba
  %bound0251 = icmp ult ptr %.03252.i, %scevgep250
  %bound1252 = icmp ult ptr %.03455.i, %scevgep248
  %found.conflict253 = and i1 %bound0251, %bound1252
  br i1 %found.conflict253, label %.lr.ph.i.i.i40.preheader288, label %vector.ph256

vector.ph256:                                     ; preds = %vector.memcheck244
  %n.vec257 = and i64 %i.ax, 9223372036854775800  ; 3 uses
  %i.bd = shl i64 %n.vec257, 2                    ; 2 uses
  %i.be = getelementptr i8, ptr %.03252.i, i64 %i.bd ; 2 uses
  %i.bf = getelementptr i8, ptr %.03455.i, i64 %i.bd
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body258 ] ; 2 uses
  %i.bg = shl i64 %index259, 2                    ; 2 uses
  %next.gep260 = getelementptr i8, ptr %.03252.i, i64 %i.bg ; 2 uses
  %next.gep261 = getelementptr i8, ptr %.03455.i, i64 %i.bg ; 3 uses
  %i.bh = getelementptr i8, ptr %next.gep261, i64 16 ; 2 uses
  %wide.load262 = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !21, !alias.scope !13640
  %wide.load263 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !21, !alias.scope !13640
  %i.bi = getelementptr i8, ptr %next.gep260, i64 16
  store <4 x i32> %wide.load262, ptr %next.gep260, align 4, !tbaa !21, !alias.scope !13643, !noalias !13640
  store <4 x i32> %wide.load263, ptr %i.bi, align 4, !tbaa !21, !alias.scope !13643, !noalias !13640
  store <4 x i32> zeroinitializer, ptr %next.gep261, align 4, !tbaa !21, !alias.scope !13640
  store <4 x i32> zeroinitializer, ptr %i.bh, align 4, !tbaa !21, !alias.scope !13640
  %index.next264 = add nuw i64 %index259, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.bj, label %middle.block265, label %vector.body258, !llvm.loop !13645

middle.block265:                                  ; preds = %vector.body258
  %cmp.n266 = icmp eq i64 %i.ax, %n.vec257
  br i1 %cmp.n266, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i40.preheader288

.lr.ph.i.i.i40.preheader288:                      ; preds = %vector.memcheck244, %.lr.ph.i.i.i40.preheader, %middle.block265
  %.010.i.i.i41.ph = phi ptr [ %.03252.i, %vector.memcheck244 ], [ %.03252.i, %.lr.ph.i.i.i40.preheader ], [ %i.be, %middle.block265 ]
  %.079.i.i.i42.ph = phi ptr [ %.03455.i, %vector.memcheck244 ], [ %.03455.i, %.lr.ph.i.i.i40.preheader ], [ %i.bf, %middle.block265 ]
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.preheader288, %.lr.ph.i.i.i40
  %.010.i.i.i41 = phi ptr [ %i.bm, %.lr.ph.i.i.i40 ], [ %.010.i.i.i41.ph, %.lr.ph.i.i.i40.preheader288 ] ; 2 uses
  %.079.i.i.i42 = phi ptr [ %i.bl, %.lr.ph.i.i.i40 ], [ %.079.i.i.i42.ph, %.lr.ph.i.i.i40.preheader288 ] ; 3 uses
  %i.bk = load i32, ptr %.079.i.i.i42, align 4, !tbaa !21
  store i32 %i.bk, ptr %.010.i.i.i41, align 4, !tbaa !21
  store i32 0, ptr %.079.i.i.i42, align 4, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %.079.i.i.i42, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i41, i64 4 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bl, %1
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i40, !llvm.loop !13646

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bn = load i32, ptr %.03252.i, align 4, !tbaa !21
  %i.bo = load i32, ptr %.053.i, align 4, !tbaa !21
  %.not42.i = icmp slt i32 %i.bn, %i.bo           ; 3 uses
  %i.bp = load i32, ptr %.03455.i, align 4, !tbaa !21
  store i32 %i.bp, ptr %.03054.i, align 4, !tbaa !21
  store i32 0, ptr %.03455.i, align 4, !tbaa !21
  %.03252.sink71.i = select i1 %.not42.i, ptr %.03252.i, ptr %.053.i ; 2 uses
  %.133.idx.i = select i1 %.not42.i, i64 4, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03252.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 4
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.053.i, i64 %.1.idx.i ; 2 uses
  %i.bq = load i32, ptr %.03252.sink71.i, align 4, !tbaa !21
  store i32 %i.bq, ptr %.03455.i, align 4, !tbaa !21
  store i32 0, ptr %.03252.sink71.i, align 4, !tbaa !21
  %.030.i = getelementptr inbounds nuw i8, ptr %.03054.i, i64 4 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03455.i, i64 4 ; 2 uses
  %i.br = icmp eq ptr %.034.i, %1
  %indvar.next247 = add i64 %indvar246, 1
  br i1 %i.br, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !13647

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i40, %middle.block, %middle.block265, %bb.a
  %.077 = phi ptr [ %.03564.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03564.i, %middle.block ], [ %.053.i, %middle.block265 ], [ %.1.i35, %bb.m ], [ %.053.i, %.lr.ph.i.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03963.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03963.i, %middle.block ], [ %.03252.i, %middle.block265 ], [ %.133.i, %bb.m ], [ %.03252.i, %.lr.ph.i.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.065.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.065.i, %middle.block ], [ %4, %middle.block265 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block265 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.aa, %middle.block ], [ %i.be, %middle.block265 ], [ %.030.i, %bb.m ], [ %i.bm, %.lr.ph.i.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit
  %.0105 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %.03760.i, %bb.f ] ; 5 uses
  %.028104 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.074103 = phi ptr [ %.074, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.n, %bb.f ]
  %.075102 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.077101 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i44 = icmp eq ptr %.077101, %3
  %.not36.i = icmp eq ptr %.0105, %.075102
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ]
  %.028.ph.i = phi ptr [ %i.bx, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.bu, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.bv, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 5 uses
  %i.bs = load i32, ptr %.028.ph.i, align 4, !tbaa !21 ; 2 uses
  %i.bt = load i32, ptr %.025.i, align 4, !tbaa !21 ; 2 uses
  %.not42.i47 = icmp slt i32 %i.bs, %i.bt
  br i1 %.not42.i47, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  store i32 %i.bt, ptr %.030.i46, align 4, !tbaa !21
  store i32 0, ptr %.025.i, align 4, !tbaa !21
  %i.bw = load i32, ptr %.026.i, align 4, !tbaa !21
  store i32 %i.bw, ptr %.025.i, align 4, !tbaa !21
  store i32 0, ptr %.026.i, align 4, !tbaa !21
  %.not44.i = icmp eq ptr %i.bu, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %bb.n, !llvm.loop !13648

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 3 uses
  store i32 %i.bs, ptr %.030.i46, align 4, !tbaa !21
  store i32 0, ptr %.028.ph.i, align 4, !tbaa !21
  %.not43.i = icmp eq ptr %i.bx, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.outer.i, !llvm.loop !13648

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %.03050.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.ar, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.ca, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cd, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.ca, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.cb, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.by = load i32, ptr %.021.i.ph, align 4, !tbaa !21 ; 2 uses
  %i.bz = load i32, ptr %.0.i, align 4, !tbaa !21 ; 2 uses
  %.not37.i = icmp slt i32 %i.by, %i.bz
  %i.ca = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 3 uses
  store i32 %i.bz, ptr %.024.i, align 4, !tbaa !21
  store i32 0, ptr %.0.i, align 4, !tbaa !21
  %i.cc = icmp eq ptr %i.cb, %3
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i, !llvm.loop !13649

bb.q:                                             ; preds = %.preheader.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.by, ptr %.024.i, align 4, !tbaa !21
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !21
  %i.ce = icmp eq ptr %i.cd, %.091
  br i1 %i.ce, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !13649

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ], [ %i.bu, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cb, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.cd, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.bx, %bb.o ]
  %i.cf = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ], [ %.13137.i, %.split.i ], [ %i.ca, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.ca, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !2648
  store ptr %.090, ptr %6, align 8, !tbaa !2648
  store ptr %.178, ptr %2, align 8, !tbaa !2648
  ret ptr %i.cf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.179") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #2 comdat {
bb.a:
  %12 = alloca %"class.boost::movelib::reverse_iterator.179", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.179", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.179", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.179", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.179", align 8 ; 2 uses
  %.not98 = icmp eq i64 %8, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !13442
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %i.b = phi ptr [ %.pre, %.lr.ph ], [ %i.dp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.0 = phi i64 [ %10, %.lr.ph ], [ %i.dt, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 3 uses
  %.0100 = phi i64 [ %9, %.lr.ph ], [ %i.dr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.08299 = phi i64 [ %8, %.lr.ph ], [ %i.du, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !13442  ; 8 uses
  %i.d = icmp ult i64 %.0100, %.0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.w, %.thread20.i ], [ %.0100, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.v, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.e = mul i64 %.01822.i, %7
  %i.f = xor i64 %i.e, -1
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_:bb.a
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit

bb.ac:                                            ; preds = %bb.s
  %.idx104 = shl nuw nsw i64 %4, 2                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %.idx104 ; 2 uses
  %gepdiff105 = sub nsw i64 %.idx104, %.idx
  %i.et = ashr exact i64 %gepdiff105, 2
  %.sroa.speculated.i76 = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.et)
  %.not.i77 = icmp ult i64 %i.co, %.sroa.speculated.i76
  br i1 %.not.i77, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opENS0_13adaptive_xbufIS4_S5_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %1, ptr noundef nonnull %i.ci, ptr noundef %i.es, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !3248 ; 4 uses
  %.not.i.i78 = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i78, label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit, label %.preheader.i.i.i79

.preheader.i.i.i79:                               ; preds = %bb.ad
  %i.ev = load ptr, ptr %5, align 8, !tbaa !3250  ; 5 uses
  %xtraiter144 = and i64 %i.eu, 3                 ; 3 uses
  %i.ew = icmp ult i64 %i.eu, 4
  br i1 %i.ew, label %.epil.preheader143, label %.preheader.i.i.i79.new

.preheader.i.i.i79.new:                           ; preds = %.preheader.i.i.i79
  %unroll_iter149 = and i64 %i.eu, -4
  br label %bb.af

.unr-lcssa142:                                    ; preds = %bb.af
  %lcmp.mod146.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod146.not, label %.epilog-lcssa147, label %.epil.preheader143

.epil.preheader143:                               ; preds = %.unr-lcssa142, %.preheader.i.i.i79
  %.07.i.i.i80.epil.init = phi i64 [ 0, %.preheader.i.i.i79 ], [ %i.fq, %.unr-lcssa142 ]
  %lcmp.mod148 = icmp ne i64 %xtraiter144, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader143
  %.07.i.i.i80.epil = phi i64 [ %.07.i.i.i80.epil.init, %.epil.preheader143 ], [ %i.fa, %bb.ae ] ; 2 uses
  %epil.iter145 = phi i64 [ 0, %.epil.preheader143 ], [ %epil.iter145.next, %bb.ae ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80.epil
  store i32 -2147483648, ptr %i.ex, align 4, !tbaa !21
  %i.ey = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ez = add i32 %i.ey, -1
  store i32 %i.ez, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.fa = add nuw i64 %.07.i.i.i80.epil, 1
  %epil.iter145.next = add i64 %epil.iter145, 1   ; 2 uses
  %epil.iter145.cmp.not = icmp eq i64 %epil.iter145.next, %xtraiter144
  br i1 %epil.iter145.cmp.not, label %.epilog-lcssa147, label %bb.ae, !llvm.loop !13937

.epilog-lcssa147:                                 ; preds = %bb.ae, %.unr-lcssa142
  store i64 0, ptr %i.a, align 8, !tbaa !3248
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit

bb.af:                                            ; preds = %bb.af, %.preheader.i.i.i79.new
  %.07.i.i.i80 = phi i64 [ 0, %.preheader.i.i.i79.new ], [ %i.fq, %bb.af ] ; 5 uses
  %niter150 = phi i64 [ 0, %.preheader.i.i.i79.new ], [ %niter150.next.3, %bb.af ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80
  store i32 -2147483648, ptr %i.fb, align 4, !tbaa !21
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.fd = add i32 %i.fc, -1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 -2147483648, ptr %i.ff, align 4, !tbaa !21
  %i.fg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.fh = add i32 %i.fg, -1
  store i32 %i.fh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 -2147483648, ptr %i.fj, align 4, !tbaa !21
  %i.fk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.fl = add i32 %i.fk, -1
  store i32 %i.fl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 -2147483648, ptr %i.fn, align 4, !tbaa !21
  %i.fo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.fp = add i32 %i.fo, -1
  store i32 %i.fp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.fq = add nuw i64 %.07.i.i.i80, 4             ; 2 uses
  %niter150.next.3 = add nuw i64 %niter150, 4     ; 2 uses
  %niter150.ncmp.3 = icmp eq i64 %niter150.next.3, %unroll_iter149
  br i1 %niter150.ncmp.3, label %.unr-lcssa142, label %bb.af, !llvm.loop !3251

bb.ag:                                            ; preds = %bb.ac
  %i.fr = load ptr, ptr %5, align 8, !tbaa !3250
  tail call void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEES5_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef %1, ptr noundef nonnull %i.ci, ptr noundef %i.es, ptr noundef %i.fr, i64 noundef %i.co)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit: ; preds = %bb.ag, %.epilog-lcssa147, %bb.ad, %bb.ab, %.epilog-lcssa138, %bb.y, %bb.n, %.epilog-lcssa165, %bb.k, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 4, !tbaa !21
  store i32 %i.f, ptr %2, align 4, !tbaa !21
  store i32 0, ptr %0, align 4, !tbaa !21
  %i.g = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not2251.i = icmp eq ptr %i.i, %1
  br i1 %.not2251.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.c, %bb.g
  %i.j = phi ptr [ %i.v, %bb.g ], [ %i.i, %bb.c ] ; 6 uses
  %.04352.i = phi ptr [ %storemerge53.i, %bb.g ], [ %2, %bb.c ] ; 5 uses
  %storemerge53.i = getelementptr inbounds nuw i8, ptr %.04352.i, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 2 uses
  %i.l = load i32, ptr %.04352.i, align 4, !tbaa !21 ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph54.i
  store i32 %i.l, ptr %storemerge53.i, align 4, !tbaa !21
  store i32 0, ptr %.04352.i, align 4, !tbaa !21
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.not2445.i = icmp eq ptr %.04352.i, %2
  br i1 %.not2445.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %storemerge2347.i = phi ptr [ %storemerge23.i, %bb.e ], [ %.04352.i, %bb.d ] ; 3 uses
  %storemerge23.i = getelementptr i8, ptr %storemerge2347.i, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.j, align 4, !tbaa !21
  %i.q = load i32, ptr %storemerge23.i, align 4, !tbaa !21 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  store i32 %i.q, ptr %storemerge2347.i, align 4, !tbaa !21
  store i32 0, ptr %storemerge23.i, align 4, !tbaa !21
  %.not24.i = icmp eq ptr %storemerge23.i, %2
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !13938

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %storemerge23.lcssa.i = phi ptr [ %2, %bb.d ], [ %storemerge2347.i, %.lr.ph.i ], [ %2, %bb.e ]
  %i.s = load i32, ptr %i.j, align 4, !tbaa !21
  store i32 %i.s, ptr %storemerge23.lcssa.i, align 4, !tbaa !21
  store i32 0, ptr %i.j, align 4, !tbaa !21
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph54.i
  store i32 %i.k, ptr %storemerge53.i, align 4, !tbaa !21
  store i32 0, ptr %i.j, align 4, !tbaa !21
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %.not22.i = icmp eq ptr %i.v, %1
  br i1 %.not22.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph54.i, !llvm.loop !13939

bb.h:                                             ; preds = %bb.a
  %i.w = lshr i64 %i.d, 1                         ; 9 uses
  %.idx = shl nuw nsw i64 %i.w, 2                 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 17 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %i.x, ptr noundef %1, ptr noundef %i.y)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.x, ptr noundef %i.x)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.i, %bb.m
  %indvar137 = phi i64 [ %indvar.next138, %bb.m ], [ 0, %bb.i ] ; 2 uses
  %.058.i = phi ptr [ %.2.i, %bb.m ], [ %i.x, %bb.i ] ; 7 uses
  %.02457.i = phi ptr [ %.125.i, %bb.m ], [ %i.y, %bb.i ] ; 5 uses
  %.04756.i = phi ptr [ %i.ce, %bb.m ], [ %2, %bb.i ] ; 6 uses
  %i.ab = icmp eq ptr %.02457.i, %i.aa
  br i1 %i.ab, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %.lr.ph.i32
  %.not60.i = icmp eq ptr %.04756.i, %i.y
  br i1 %.not60.i, label %._crit_edge64.i, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %.preheader.i
  %i.ac = add nsw i64 %.idx, -4
  %3 = shl i64 %indvar137, 2
  %4 = sub i64 %i.ac, %3                          ; 2 uses
  %5 = lshr exact i64 %4, 2
  %i.ad = add nuw nsw i64 %5, 1
  %xtraiter140 = and i64 %i.ad, 3                 ; 2 uses
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod141.not, label %.lr.ph63.i.prol.loopexit, label %.lr.ph63.i.prol

.lr.ph63.i.prol:                                  ; preds = %.lr.ph63.i.preheader, %.lr.ph63.i.prol
  %.162.i.prol = phi ptr [ %i.ai, %.lr.ph63.i.prol ], [ %.058.i, %.lr.ph63.i.preheader ] ; 3 uses
  %.14861.i.prol = phi ptr [ %i.ah, %.lr.ph63.i.prol ], [ %.04756.i, %.lr.ph63.i.preheader ] ; 2 uses
  %prol.iter142 = phi i64 [ %prol.iter142.next, %.lr.ph63.i.prol ], [ 0, %.lr.ph63.i.preheader ]
  %i.ae = load i32, ptr %.162.i.prol, align 4, !tbaa !21
  store i32 %i.ae, ptr %.14861.i.prol, align 4, !tbaa !21
  store i32 0, ptr %.162.i.prol, align 4, !tbaa !21
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %.14861.i.prol, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.162.i.prol, i64 4 ; 3 uses
  %prol.iter142.next = add i64 %prol.iter142, 1   ; 2 uses
  %prol.iter142.cmp.not = icmp eq i64 %prol.iter142.next, %xtraiter140
  br i1 %prol.iter142.cmp.not, label %.lr.ph63.i.prol.loopexit, label %.lr.ph63.i.prol, !llvm.loop !13940

.lr.ph63.i.prol.loopexit:                         ; preds = %.lr.ph63.i.prol, %.lr.ph63.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph63.i.preheader ], [ %i.ai, %.lr.ph63.i.prol ]
  %.162.i.unr = phi ptr [ %.058.i, %.lr.ph63.i.preheader ], [ %i.ai, %.lr.ph63.i.prol ]
  %.14861.i.unr = phi ptr [ %.04756.i, %.lr.ph63.i.preheader ], [ %i.ah, %.lr.ph63.i.prol ]
  %i.aj = icmp ult i64 %4, 12
  br i1 %i.aj, label %._crit_edge64.i, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i
  %.162.i = phi ptr [ %i.ba, %.lr.ph63.i ], [ %.162.i.unr, %.lr.ph63.i.prol.loopexit ] ; 6 uses
  %.14861.i = phi ptr [ %i.az, %.lr.ph63.i ], [ %.14861.i.unr, %.lr.ph63.i.prol.loopexit ] ; 5 uses
  %i.ak = load i32, ptr %.162.i, align 4, !tbaa !21
  store i32 %i.ak, ptr %.14861.i, align 4, !tbaa !21
  store i32 0, ptr %.162.i, align 4, !tbaa !21
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %.14861.i, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.162.i, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !21
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !21
  store i32 0, ptr %i.ao, align 4, !tbaa !21
  %i.aq = add i32 %i.al, 2
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %.14861.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.162.i, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !21
  store i32 0, ptr %i.as, align 4, !tbaa !21
  %i.au = add i32 %i.al, 3
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %.14861.i, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %.162.i, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !21
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !21
  store i32 0, ptr %i.aw, align 4, !tbaa !21
  %i.ay = add i32 %i.al, 4
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %.14861.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.162.i, i64 16 ; 2 uses
  %.not.i33.3 = icmp eq ptr %i.az, %i.y
  br i1 %.not.i33.3, label %._crit_edge64.i, label %.lr.ph63.i, !llvm.loop !13941

._crit_edge64.i:                                  ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.058.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph63.i.prol.loopexit ], [ %i.ba, %.lr.ph63.i ] ; 8 uses
  %.1.lcssa.i97 = ptrtoaddr ptr %.1.lcssa.i to i64 ; 2 uses
  %.not8.i.i = icmp eq ptr %.1.lcssa.i, %i.z
  br i1 %.not8.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %._crit_edge64.i
  %i.bb = shl i64 %i.w, 3
  %i.bc = add i64 %i.bb, %i.b
  %i.bd = add i64 %i.bc, -4
  %i.be = sub i64 %i.bd, %.1.lcssa.i97            ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 108
  br i1 %min.iters.check, label %.lr.ph.i28.i.preheader133, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.i.preheader
  %i.bh = shl i64 %i.w, 3
  %i.bi = add i64 %i.bh, %i.b
  %i.bj = add i64 %i.bi, -4
  %i.bk = sub i64 %i.bj, %.1.lcssa.i97
  %i.bl = and i64 %i.bk, -4                       ; 2 uses
  %i.bm = getelementptr i8, ptr %2, i64 %.idx
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.bn, i64 4
  %i.bo = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bl
  %scevgep98 = getelementptr i8, ptr %i.bo, i64 4
  %bound0 = icmp ult ptr %i.y, %scevgep98
  %bound1 = icmp ult ptr %.1.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i.preheader133, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bp = shl i64 %n.vec, 2                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.y, i64 %i.bp
  %i.br = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.bs ; 2 uses
  %next.gep99 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bs ; 3 uses
  %i.bt = getelementptr i8, ptr %next.gep99, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !21, !alias.scope !13942
  %wide.load100 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !21, !alias.scope !13942
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !21, !alias.scope !13945, !noalias !13942
  store <4 x i32> %wide.load100, ptr %i.bu, align 4, !tbaa !21, !alias.scope !13945, !noalias !13942
  store <4 x i32> zeroinitializer, ptr %next.gep99, align 4, !tbaa !21, !alias.scope !13942
  store <4 x i32> zeroinitializer, ptr %i.bt, align 4, !tbaa !21, !alias.scope !13942
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !13947

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i28.i.preheader133

.lr.ph.i28.i.preheader133:                        ; preds = %vector.memcheck, %.lr.ph.i28.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i28.i.preheader ], [ %i.bq, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.1.lcssa.i, %vector.memcheck ], [ %.1.lcssa.i, %.lr.ph.i28.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i.preheader133, %.lr.ph.i28.i
  %.010.i.i = phi ptr [ %i.by, %.lr.ph.i28.i ], [ %.010.i.i.ph, %.lr.ph.i28.i.preheader133 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bx, %.lr.ph.i28.i ], [ %.079.i.i.ph, %.lr.ph.i28.i.preheader133 ] ; 3 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !21
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !21
  store i32 0, ptr %.079.i.i, align 4, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i29.i = icmp eq ptr %i.bx, %i.z
  br i1 %.not.i29.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i28.i, !llvm.loop !13948

bb.j:                                             ; preds = %.lr.ph.i32
  %i.bz = load i32, ptr %.02457.i, align 4, !tbaa !21 ; 2 uses
  %i.ca = load i32, ptr %.058.i, align 4, !tbaa !21 ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bz, ptr %.04756.i, align 4, !tbaa !21
  store i32 0, ptr %.02457.i, align 4, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.02457.i, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 %i.ca, ptr %.04756.i, align 4, !tbaa !21
  store i32 0, ptr %.058.i, align 4, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.125.i = phi ptr [ %i.cc, %bb.k ], [ %.02457.i, %bb.l ] ; 2 uses
  %.2.i = phi ptr [ %.058.i, %bb.k ], [ %i.cd, %bb.l ] ; 3 uses
  %.sink.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.sink.i = add i32 %.sink.in.i, 1
  store i32 %.sink.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %.04756.i, i64 4 ; 2 uses
  %i.cf = icmp ne ptr %.2.i, %i.z
  %i.cg = icmp ne ptr %i.ce, %i.y
  %i.ch = select i1 %i.cf, i1 %i.cg, i1 false
  %indvar.next138 = add i64 %indvar137, 1
  br i1 %i.ch, label %.lr.ph.i32, label %._crit_edge.i, !llvm.loop !13949

._crit_edge.i:                                    ; preds = %bb.m, %bb.i
  %.024.lcssa.i = phi ptr [ %i.y, %bb.i ], [ %.125.i, %bb.m ]
  %.0.lcssa.i = phi ptr [ %i.x, %bb.i ], [ %.2.i, %bb.m ] ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.0.lcssa.i, %i.z
  br i1 %.not23.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %bb.q
  %indvar = phi i64 [ %indvar.next, %bb.q ], [ 0, %._crit_edge.i ] ; 2 uses
  %.026.i.i.i = phi ptr [ %.1.i.i.i, %bb.q ], [ %.0.lcssa.i, %._crit_edge.i ] ; 11 uses
  %.01625.i.i.i = phi ptr [ %.117.i.i.i, %bb.q ], [ %.024.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.01824.i.i.i = phi ptr [ %i.dm, %bb.q ], [ %i.y, %._crit_edge.i ] ; 8 uses
  %i.ci = icmp eq ptr %.01625.i.i.i, %i.aa
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.preheader, label %bb.n

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i
  %.026.i.i.i104.le = ptrtoaddr ptr %.026.i.i.i to i64 ; 2 uses
  %i.cj = shl i64 %i.w, 3
  %i.ck = add i64 %i.cj, %i.b
  %i.cl = add i64 %i.ck, -4
  %i.cm = sub i64 %i.cl, %.026.i.i.i104.le        ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.cm, 108
  br i1 %min.iters.check112, label %.lr.ph.i.i.i.i.i.preheader126, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.cp = shl i64 %indvar, 2
  %i.cq = getelementptr i8, ptr %2, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 %.idx
  %scevgep103 = getelementptr i8, ptr %i.cr, i64 4
  %i.cs = shl i64 %i.w, 3
  %i.ct = add i64 %i.cs, %i.b
  %i.cu = add i64 %i.ct, -4
  %i.cv = sub i64 %i.cu, %.026.i.i.i104.le
  %i.cw = and i64 %i.cv, -4                       ; 2 uses
  %scevgep105 = getelementptr i8, ptr %scevgep103, i64 %i.cw
  %scevgep106 = getelementptr i8, ptr %.026.i.i.i, i64 4
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.cw
  %bound0108 = icmp ult ptr %.01824.i.i.i, %scevgep107
  %bound1109 = icmp ult ptr %.026.i.i.i, %scevgep105
  %found.conflict110 = and i1 %bound0108, %bound1109
  br i1 %found.conflict110, label %.lr.ph.i.i.i.i.i.preheader126, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck102
  %n.vec114 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cx = shl i64 %n.vec114, 2                    ; 2 uses
  %i.cy = getelementptr i8, ptr %.01824.i.i.i, i64 %i.cx
  %i.cz = getelementptr i8, ptr %.026.i.i.i, i64 %i.cx
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.da = shl i64 %index116, 2                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %.01824.i.i.i, i64 %i.da ; 2 uses
  %next.gep118 = getelementptr i8, ptr %.026.i.i.i, i64 %i.da ; 3 uses
  %i.db = getelementptr i8, ptr %next.gep118, i64 16 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_:bb.a

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.c, !llvm.loop !14179

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 6 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.r ; 10 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !13442
  %i.t = load ptr, ptr %2, align 8, !tbaa !13442  ; 14 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 4 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !13442  ; 3 uses
  %.not.i18 = icmp eq ptr %.lcssa.i, %i.t
  %.not27.i = icmp eq ptr %i.c, %i.v
  %or.cond79 = select i1 %.not.i18, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %5, align 8, !tbaa !13442, !noalias !14282
  %i.x = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !21, !noalias !14282
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !21, !noalias !14282
  store i32 0, ptr %i.z, align 4, !tbaa !21, !noalias !14282
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !21, !noalias !14282
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !21, !noalias !14282
  store i32 0, ptr %i.y, align 4, !tbaa !21, !noalias !14282
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !21, !noalias !14282
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !21, !noalias !14282
  store i32 0, ptr %i.x, align 4, !tbaa !21, !noalias !14282
  %.not3548.i = icmp eq ptr %i.z, %i.t
  br i1 %.not3548.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.f, %bb.j
  %i.ae = phi ptr [ %.sink.i, %bb.j ], [ %i.z, %bb.f ] ; 9 uses
  %.sroa.029.051.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.s, %bb.f ] ; 10 uses
  %.sroa.024.050.i = phi ptr [ %.sroa.024.1.i, %bb.j ], [ %i.x, %bb.f ] ; 5 uses
  %.sroa.020.049.i = phi ptr [ %.sroa.020.1.i, %bb.j ], [ %i.y, %bb.f ] ; 4 uses
  %i.af = phi ptr [ %i.br, %bb.j ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.024.050.i, %i.v
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i17
  %i.ah = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ai = add i64 %i.ah, -4
  %i.aj = sub i64 %i.ai, %i.u                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader304, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.029.051.i, i64 -4
  %reass.sub = sub i64 %i.ah, %i.u
  %i.am = add i64 %reass.sub, -4
  %i.an = lshr i64 %i.am, 2
  %i.ao = mul i64 %i.an, -4                       ; 2 uses
  %scevgep242 = getelementptr i8, ptr %scevgep, i64 %i.ao
  %scevgep243 = getelementptr i8, ptr %i.ae, i64 -4
  %scevgep244 = getelementptr i8, ptr %scevgep243, i64 %i.ao
  %bound0 = icmp ult ptr %scevgep242, %i.ae
  %bound1 = icmp ult ptr %scevgep244, %.sroa.029.051.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader304, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775800     ; 3 uses
  %i.ap = mul i64 %n.vec, -4                      ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.029.051.i, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ae, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.051.i, i64 %i.as ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.ae, i64 %i.as ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %next.gep245, i64 -16 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %next.gep245, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !21, !alias.scope !14285, !noalias !14288
  %wide.load246 = load <4 x i32>, ptr %i.au, align 4, !tbaa !21, !alias.scope !14285, !noalias !14288
  %i.av = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.aw = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.av, align 4, !tbaa !21, !alias.scope !14293, !noalias !14295
  store <4 x i32> %wide.load246, ptr %i.aw, align 4, !tbaa !21, !alias.scope !14293, !noalias !14295
  store <4 x i32> zeroinitializer, ptr %i.at, align 4, !tbaa !21, !alias.scope !14285, !noalias !14288
  store <4 x i32> zeroinitializer, ptr %i.au, align 4, !tbaa !21, !alias.scope !14285, !noalias !14288
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !14296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i.preheader304

.lr.ph.i.i.i.preheader304:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.029.051.i, %vector.memcheck ], [ %.sroa.029.051.i, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.ph305 = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader304, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader304 ]
  %i.ay = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.ph305, %.lr.ph.i.i.i.preheader304 ]
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 3 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !21, !noalias !14288
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !21, !noalias !14288
  store i32 0, ptr %i.az, align 4, !tbaa !21, !noalias !14288
  %.not.i.i.i = icmp eq ptr %i.az, %i.t
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !14297

bb.g:                                             ; preds = %.lr.ph.i17
  %i.bc = getelementptr inbounds i8, ptr %.sroa.020.049.i, i64 -4 ; 5 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.029.051.i, i64 -4 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !21, !noalias !14282
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !21, !noalias !14282
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds i8, ptr %.sroa.024.050.i, i64 -4 ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !21, !noalias !14282
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !21, !noalias !14282
  store i32 0, ptr %i.bi, align 4, !tbaa !21, !noalias !14282
  %i.bl = load i32, ptr %i.bc, align 4, !tbaa !21, !noalias !14282
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !21, !noalias !14282
  store i32 0, ptr %i.bc, align 4, !tbaa !21, !noalias !14282
  %i.bm = load i32, ptr %i.bh, align 4, !tbaa !21, !noalias !14282
  store i32 %i.bm, ptr %i.bc, align 4, !tbaa !21, !noalias !14282
  store i32 0, ptr %i.bh, align 4, !tbaa !21, !noalias !14282
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !21, !noalias !14282
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !21, !noalias !14282
  store i32 0, ptr %i.bn, align 4, !tbaa !21, !noalias !14282
  %i.bq = load i32, ptr %i.bd, align 4, !tbaa !21, !noalias !14282
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !21, !noalias !14282
  store i32 0, ptr %i.bd, align 4, !tbaa !21, !noalias !14282
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi ptr [ %i.bi, %bb.h ], [ %i.bn, %bb.i ] ; 2 uses
  %i.br = phi ptr [ %i.bj, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %.sroa.020.1.i = phi ptr [ %i.bc, %bb.h ], [ %.sroa.020.049.i, %bb.i ] ; 2 uses
  %.sroa.024.1.i = phi ptr [ %i.bh, %bb.h ], [ %.sroa.024.050.i, %bb.i ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %.sroa.029.051.i, %bb.h ], [ %i.bd, %bb.i ] ; 2 uses
  %.not35.i = icmp eq ptr %.sink.i, %i.t
  br i1 %.not35.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i17, !llvm.loop !14298

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i: ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.056.1 = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %i.aa, %bb.f ], [ %i.aq, %middle.block ], [ %i.br, %bb.j ]
  %.sroa.020.045.i = phi ptr [ %.sroa.020.049.i, %.lr.ph.i.i.i ], [ %i.y, %bb.f ], [ %.sroa.020.049.i, %middle.block ], [ %.sroa.020.1.i, %bb.j ]
  %.sroa.024.043.i = phi ptr [ %.sroa.024.050.i, %.lr.ph.i.i.i ], [ %i.x, %bb.f ], [ %.sroa.024.050.i, %middle.block ], [ %.sroa.024.1.i, %bb.j ]
  %.sroa.029.041.i = phi ptr [ %.sroa.029.051.i, %.lr.ph.i.i.i ], [ %i.s, %bb.f ], [ %.sroa.029.051.i, %middle.block ], [ %.sroa.029.1.i, %bb.j ]
  store ptr %.sroa.020.045.i, ptr %5, align 8, !tbaa !13442, !noalias !14282
  %.pre = load ptr, ptr %2, align 8, !tbaa !13442
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.bu = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !21, !noalias !14299
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !21, !noalias !14299
  store i32 0, ptr %i.bt, align 4, !tbaa !21, !noalias !14299
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !21, !noalias !14299
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !21, !noalias !14299
  store i32 0, ptr %i.bs, align 4, !tbaa !21, !noalias !14299
  %i.bx = icmp eq ptr %i.bt, %i.t
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.l, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %bb.l ] ; 3 uses
  %i.by = phi ptr [ %i.cy, %bb.p ], [ %i.bt, %bb.l ] ; 6 uses
  %.sroa.022.039.i = phi ptr [ %.sroa.022.1.i, %bb.p ], [ %i.s, %bb.l ] ; 10 uses
  %.sroa.016.038.i = phi ptr [ %.sroa.016.1.i, %bb.p ], [ %i.bs, %bb.l ] ; 5 uses
  %i.bz = phi ptr [ %i.cz, %bb.p ], [ %i.bu, %bb.l ]
  %i.ca = icmp eq ptr %.sroa.016.038.i, %i.v
  br i1 %i.ca, label %.lr.ph.i.i.i22.preheader, label %bb.m

.lr.ph.i.i.i22.preheader:                         ; preds = %.lr.ph.i19
  %i.cb = add i64 %i.o, -8
  %8 = shl i64 %indvar, 2
  %9 = add i64 %8, %i.u
  %10 = sub i64 %i.cb, %9                         ; 2 uses
  %11 = lshr i64 %10, 2
  %i.cc = add nuw nsw i64 %11, 1                  ; 2 uses
  %min.iters.check257 = icmp ult i64 %10, 124
  br i1 %min.iters.check257, label %.lr.ph.i.i.i22.preheader295, label %vector.memcheck248

vector.memcheck248:                               ; preds = %.lr.ph.i.i.i22.preheader
  %scevgep249 = getelementptr i8, ptr %.sroa.022.039.i, i64 -4
  %i.cd = add i64 %i.o, -8
  %i.ce = sub i64 %i.cd, %i.u
  %12 = mul i64 %indvar, -4                       ; 2 uses
  %13 = add i64 %12, %i.ce
  %14 = lshr i64 %13, 2
  %15 = mul i64 %14, -4                           ; 2 uses
  %scevgep250 = getelementptr i8, ptr %scevgep249, i64 %15
  %i.cf = getelementptr i8, ptr %.lcssa.i, i64 %12
  %scevgep251 = getelementptr i8, ptr %i.cf, i64 -8
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 %15
  %bound0253 = icmp ult ptr %scevgep250, %i.by
  %bound1254 = icmp ult ptr %scevgep252, %.sroa.022.039.i
  %found.conflict255 = and i1 %bound0253, %bound1254
  br i1 %found.conflict255, label %.lr.ph.i.i.i22.preheader295, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck248
  %n.vec259 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cg = mul i64 %n.vec259, -4                   ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.022.039.i, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.by, i64 %i.cg
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next266, %vector.body260 ] ; 2 uses
  %i.cj = mul i64 %index261, -4                   ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.sroa.022.039.i, i64 %i.cj ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.by, i64 %i.cj ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %next.gep263, i64 -16 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %next.gep263, i64 -32 ; 2 uses
  %wide.load264 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !21, !alias.scope !14302, !noalias !14305
  %wide.load265 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !21, !alias.scope !14302, !noalias !14305
  %i.cm = getelementptr inbounds i8, ptr %next.gep262, i64 -16
  %i.cn = getelementptr inbounds i8, ptr %next.gep262, i64 -32
  store <4 x i32> %wide.load264, ptr %i.cm, align 4, !tbaa !21, !alias.scope !14310, !noalias !14312
  store <4 x i32> %wide.load265, ptr %i.cn, align 4, !tbaa !21, !alias.scope !14310, !noalias !14312
  store <4 x i32> zeroinitializer, ptr %i.ck, align 4, !tbaa !21, !alias.scope !14302, !noalias !14305
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !21, !alias.scope !14302, !noalias !14305
  %index.next266 = add nuw i64 %index261, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next266, %n.vec259
  br i1 %i.co, label %middle.block267, label %vector.body260, !llvm.loop !14313

middle.block267:                                  ; preds = %vector.body260
  %cmp.n268 = icmp eq i64 %i.cc, %n.vec259
  br i1 %cmp.n268, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i.i.i22.preheader295

.lr.ph.i.i.i22.preheader295:                      ; preds = %vector.memcheck248, %.lr.ph.i.i.i22.preheader, %middle.block267
  %.sroa.0.0.i.i23.ph = phi ptr [ %.sroa.022.039.i, %vector.memcheck248 ], [ %.sroa.022.039.i, %.lr.ph.i.i.i22.preheader ], [ %i.ch, %middle.block267 ]
  %.ph = phi ptr [ %i.by, %vector.memcheck248 ], [ %i.by, %.lr.ph.i.i.i22.preheader ], [ %i.ci, %middle.block267 ]
  br label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %.lr.ph.i.i.i22.preheader295, %.lr.ph.i.i.i22
  %.sroa.0.0.i.i23 = phi ptr [ %i.cr, %.lr.ph.i.i.i22 ], [ %.sroa.0.0.i.i23.ph, %.lr.ph.i.i.i22.preheader295 ]
  %i.cp = phi ptr [ %i.cq, %.lr.ph.i.i.i22 ], [ %.ph, %.lr.ph.i.i.i22.preheader295 ]
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -4 ; 4 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.i.i23, i64 -4 ; 3 uses
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !21, !noalias !14305
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !21, !noalias !14305
  store i32 0, ptr %i.cq, align 4, !tbaa !21, !noalias !14305
  %.not.i.i.i24 = icmp eq ptr %i.cq, %i.t
  br i1 %.not.i.i.i24, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i.i.i22, !llvm.loop !14314

bb.m:                                             ; preds = %.lr.ph.i19
  %i.ct = getelementptr inbounds i8, ptr %.sroa.016.038.i, i64 -4 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.022.039.i, i64 -4 ; 4 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !21, !noalias !14299
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !21, !noalias !14299
  %i.cx = icmp slt i32 %i.cv, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 6 uses
  %i.cz = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 3 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !21, !noalias !14299
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !21, !noalias !14299
  store i32 0, ptr %i.cy, align 4, !tbaa !21, !noalias !14299
  br i1 %i.cx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.db = load i32, ptr %i.ct, align 4, !tbaa !21, !noalias !14299
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !21, !noalias !14299
  store i32 0, ptr %i.ct, align 4, !tbaa !21, !noalias !14299
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dc = load i32, ptr %i.cu, align 4, !tbaa !21, !noalias !14299
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !21, !noalias !14299
  store i32 0, ptr %i.cu, align 4, !tbaa !21, !noalias !14299
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.016.1.i = phi ptr [ %i.ct, %bb.n ], [ %.sroa.016.038.i, %bb.o ] ; 2 uses
  %.sroa.022.1.i = phi ptr [ %.sroa.022.039.i, %bb.n ], [ %i.cu, %bb.o ] ; 2 uses
  %i.dd = icmp eq ptr %i.cy, %i.t
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dd, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i19, !llvm.loop !14315

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit: ; preds = %bb.p, %.lr.ph.i.i.i22, %middle.block267, %bb.k, %bb.l, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, %bb.e
  %i.de = phi ptr [ %.pre, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.t, %bb.e ], [ %i.t, %middle.block267 ], [ %i.t, %bb.k ], [ %i.t, %bb.l ], [ %i.t, %.lr.ph.i.i.i22 ], [ %i.t, %bb.p ]
  %.sroa.056.0 = phi ptr [ %.sroa.056.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.s, %bb.e ], [ %i.ch, %middle.block267 ], [ %i.s, %bb.k ], [ %i.bu, %bb.l ], [ %i.cr, %.lr.ph.i.i.i22 ], [ %i.cz, %bb.p ]
  %.sroa.062.0 = phi ptr [ %.sroa.024.043.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.c, %bb.e ], [ %.sroa.016.038.i, %middle.block267 ], [ %i.c, %bb.k ], [ %i.bs, %bb.l ], [ %.sroa.016.038.i, %.lr.ph.i.i.i22 ], [ %.sroa.016.1.i, %bb.p ]
  %.sroa.072.0 = phi ptr [ %.sroa.029.041.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.s, %bb.e ], [ %.sroa.022.039.i, %middle.block267 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %.sroa.022.039.i, %.lr.ph.i.i.i22 ], [ %.sroa.022.1.i, %bb.p ]
  store ptr %i.de, ptr %1, align 8, !tbaa !13442
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit
  %.sroa.062.1 = phi ptr [ %.sroa.062.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.068.0 = phi ptr [ %.sroa.056.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.072.1 = phi ptr [ %.sroa.072.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.df = load ptr, ptr %4, align 8, !tbaa !13442 ; 3 uses
  %i.dg = load ptr, ptr %1, align 8, !tbaa !13442 ; 4 uses
  %.not.i29 = icmp eq ptr %.sroa.062.1, %i.df
  %.not17.i = icmp eq ptr %.sroa.068.0, %.sroa.072.1
  %or.cond81 = select i1 %.not.i29, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond81, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %5, align 8, !tbaa !13442, !noalias !14316
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.s
  %.sroa.036.0 = phi ptr [ %i.dg, %bb.s ], [ %i.do, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.dh, %bb.s ], [ %i.di, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %.sroa.062.1, %bb.s ], [ %i.dn, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %.sroa.072.1, %bb.s ], [ %.sroa.017.0.i, %.split.i ]
  %i.di = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 5 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.outer.i
  %.sroa.036.1 = phi ptr [ %.sroa.036.0, %.outer.i ], [ %i.dq, %bb.u ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.dj, %bb.u ] ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 5 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21, !noalias !14316 ; 2 uses
  %i.dl = load i32, ptr %i.di, align 4, !tbaa !21, !noalias !14316 ; 2 uses
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %.split.i, label %bb.u

.split.i:                                         ; preds = %bb.t
  %i.dn = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 5 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.036.1, i64 -4 ; 3 uses
  store i32 %i.dl, ptr %i.do, align 4, !tbaa !21, !noalias !14316
  store i32 0, ptr %i.di, align 4, !tbaa !21, !noalias !14316
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !21, !noalias !14316
  store i32 %i.dp, ptr %i.di, align 4, !tbaa !21, !noalias !14316
  store i32 0, ptr %i.dn, align 4, !tbaa !21, !noalias !14316
  %.not27.i28 = icmp eq ptr %i.dn, %i.df
  br i1 %.not27.i28, label %.loopexit.i27, label %.outer.i, !llvm.loop !13565

bb.u:                                             ; preds = %bb.t
  %i.dq = getelementptr inbounds i8, ptr %.sroa.036.1, i64 -4 ; 3 uses
  store i32 %i.dk, ptr %i.dq, align 4, !tbaa !21, !noalias !14316
  store i32 0, ptr %i.dj, align 4, !tbaa !21, !noalias !14316
  %.not26.i = icmp eq ptr %i.dj, %.sroa.068.0
  br i1 %.not26.i, label %.loopexit.i27, label %bb.t, !llvm.loop !13565

.loopexit.i27:                                    ; preds = %.split.i, %bb.u
  %.sroa.036.2 = phi ptr [ %i.dq, %bb.u ], [ %i.do, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.dj, %bb.u ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.u ], [ %i.dn, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.u ], [ %i.di, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !13442, !noalias !14316
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit

bb.v:                                             ; preds = %bb.q
  br i1 %or.cond81, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.v, %bb.w
  %.sroa.0.0.ph = phi ptr [ %i.dw, %bb.w ], [ %i.dg, %bb.v ]
  %.sroa.07.0.i.ph = phi ptr [ %i.dx, %bb.w ], [ %.sroa.062.1, %bb.v ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.w ], [ %.sroa.072.1, %bb.v ]
  %i.dr = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.x
  %.sroa.0.0 = phi ptr [ %i.dw, %bb.x ], [ %.sroa.0.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.ds, %bb.x ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.ds = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 5 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !21, !noalias !14319 ; 2 uses
  %i.du = load i32, ptr %i.dr, align 4, !tbaa !21, !noalias !14319 ; 2 uses
  %i.dv = icmp slt i32 %i.dt, %i.du
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4 ; 6 uses
  br i1 %i.dv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader.i
  %i.dx = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 4 uses
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !21, !noalias !14319
  store i32 0, ptr %i.dx, align 4, !tbaa !21, !noalias !14319
  %i.dy = icmp eq ptr %i.dx, %i.df
  br i1 %i.dy, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !13575

bb.x:                                             ; preds = %.preheader.i
  store i32 %i.dt, ptr %i.dw, align 4, !tbaa !21, !noalias !14319
  store i32 0, ptr %i.ds, align 4, !tbaa !21, !noalias !14319
  %i.dz = icmp eq ptr %i.ds, %.sroa.068.0
  br i1 %i.dz, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !13575

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit: ; preds = %bb.x, %bb.w, %bb.v, %.loopexit.i27, %bb.r
  %.sroa.043.0 = phi ptr [ %.sroa.036.2, %.loopexit.i27 ], [ %i.dg, %bb.r ], [ %i.dg, %bb.v ], [ %i.dw, %bb.w ], [ %i.dw, %bb.x ]
  %.sroa.062.2 = phi ptr [ %.sroa.013.123.i, %.loopexit.i27 ], [ %.sroa.062.1, %bb.r ], [ %.sroa.062.1, %bb.v ], [ %.sroa.07.0.i.ph, %bb.x ], [ %i.dx, %bb.w ]
  %.sroa.072.2 = phi ptr [ %.sroa.017.124.i, %.loopexit.i27 ], [ %.sroa.072.1, %bb.r ], [ %.sroa.072.1, %bb.v ], [ %i.ds, %bb.x ], [ %.sroa.012.0.i, %bb.w ]
  store ptr %.sroa.043.0, ptr %1, align 8, !tbaa !13442
  store ptr %.sroa.072.2, ptr %6, align 8, !tbaa !13442
  store ptr %.sroa.068.0, ptr %7, align 8, !tbaa !13442
  store ptr %.sroa.062.2, ptr %3, align 8, !tbaa !13442
  %i.ea = load ptr, ptr %1, align 8, !tbaa !13442
  store ptr %i.ea, ptr %0, align 8, !tbaa !13442
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET_SM_SM_RSM_SM_SM_RT0_SP_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.179") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef align 8 dead_on_return %8) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !13442  ; 3 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !13442  ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !13442  ; 7 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !13442  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET_SM_SM_RSM_SM_SM_RT0_SP_T1_T2_:bb.a

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit, label %bb.c, !llvm.loop !14325

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 6 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.q ; 10 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !13442
  %i.s = load ptr, ptr %2, align 8, !tbaa !13442  ; 14 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 4 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !13442  ; 3 uses
  %.not.i9 = icmp eq ptr %.lcssa.i, %i.s
  %.not27.i = icmp eq ptr %i.c, %i.u
  %or.cond76 = select i1 %.not.i9, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit
  br i1 %or.cond76, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %5, align 8, !tbaa !13442, !noalias !14326
  %i.w = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !21, !noalias !14326
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !21, !noalias !14326
  store i32 0, ptr %i.y, align 4, !tbaa !21, !noalias !14326
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !21, !noalias !14326
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !21, !noalias !14326
  store i32 0, ptr %i.x, align 4, !tbaa !21, !noalias !14326
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !21, !noalias !14326
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !21, !noalias !14326
  store i32 0, ptr %i.w, align 4, !tbaa !21, !noalias !14326
  %.not3549.i = icmp eq ptr %i.y, %i.s
  br i1 %.not3549.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.f, %bb.j
  %i.ad = phi ptr [ %.sink.i, %bb.j ], [ %i.y, %bb.f ] ; 9 uses
  %.sroa.029.052.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.r, %bb.f ] ; 10 uses
  %.sroa.024.051.i = phi ptr [ %.sroa.024.1.i, %bb.j ], [ %i.w, %bb.f ] ; 5 uses
  %.sroa.020.050.i = phi ptr [ %.sroa.020.1.i, %bb.j ], [ %i.x, %bb.f ] ; 4 uses
  %i.ae = phi ptr [ %i.bp, %bb.j ], [ %i.z, %bb.f ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.024.051.i, %i.u
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i8
  %i.ag = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.ah = add i64 %i.ag, -4
  %i.ai = sub i64 %i.ah, %i.t                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader301, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.029.052.i, i64 -4
  %reass.sub = sub i64 %i.ag, %i.t
  %i.al = add i64 %reass.sub, -4
  %i.am = lshr i64 %i.al, 2
  %i.an = mul i64 %i.am, -4                       ; 2 uses
  %scevgep239 = getelementptr i8, ptr %scevgep, i64 %i.an
  %scevgep240 = getelementptr i8, ptr %i.ad, i64 -4
  %scevgep241 = getelementptr i8, ptr %scevgep240, i64 %i.an
  %bound0 = icmp ult ptr %scevgep239, %i.ad
  %bound1 = icmp ult ptr %scevgep241, %.sroa.029.052.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader301, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 3 uses
  %i.ao = mul i64 %n.vec, -4                      ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.029.052.i, i64 %i.ao ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ad, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.052.i, i64 %i.ar ; 2 uses
  %next.gep242 = getelementptr i8, ptr %i.ad, i64 %i.ar ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %next.gep242, i64 -16 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %next.gep242, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !21, !alias.scope !14329, !noalias !14332
  %wide.load243 = load <4 x i32>, ptr %i.at, align 4, !tbaa !21, !alias.scope !14329, !noalias !14332
  %i.au = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.av = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.au, align 4, !tbaa !21, !alias.scope !14337, !noalias !14339
  store <4 x i32> %wide.load243, ptr %i.av, align 4, !tbaa !21, !alias.scope !14337, !noalias !14339
  store <4 x i32> zeroinitializer, ptr %i.as, align 4, !tbaa !21, !alias.scope !14329, !noalias !14332
  store <4 x i32> zeroinitializer, ptr %i.at, align 4, !tbaa !21, !alias.scope !14329, !noalias !14332
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !14340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i.preheader301

.lr.ph.i.i.i.preheader301:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.029.052.i, %vector.memcheck ], [ %.sroa.029.052.i, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.ph302 = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader301, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader301 ]
  %i.ax = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.ph302, %.lr.ph.i.i.i.preheader301 ]
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 3 uses
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !21, !noalias !14332
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !21, !noalias !14332
  store i32 0, ptr %i.ay, align 4, !tbaa !21, !noalias !14332
  %.not.i.i.i = icmp eq ptr %i.ay, %i.s
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !14341

bb.g:                                             ; preds = %.lr.ph.i8
  %i.bb = getelementptr inbounds i8, ptr %.sroa.020.050.i, i64 -4 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.029.052.i, i64 -4 ; 4 uses
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !21, !noalias !14326
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !21, !noalias !14326
  %.not36.i = icmp slt i32 %i.bd, %i.be
  br i1 %.not36.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds i8, ptr %.sroa.024.051.i, i64 -4 ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !21, !noalias !14326
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !21, !noalias !14326
  store i32 0, ptr %i.bg, align 4, !tbaa !21, !noalias !14326
  %i.bj = load i32, ptr %i.bb, align 4, !tbaa !21, !noalias !14326
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !21, !noalias !14326
  store i32 0, ptr %i.bb, align 4, !tbaa !21, !noalias !14326
  %i.bk = load i32, ptr %i.bf, align 4, !tbaa !21, !noalias !14326
  store i32 %i.bk, ptr %i.bb, align 4, !tbaa !21, !noalias !14326
  store i32 0, ptr %i.bf, align 4, !tbaa !21, !noalias !14326
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !21, !noalias !14326
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !21, !noalias !14326
  store i32 0, ptr %i.bl, align 4, !tbaa !21, !noalias !14326
  %i.bo = load i32, ptr %i.bc, align 4, !tbaa !21, !noalias !14326
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !21, !noalias !14326
  store i32 0, ptr %i.bc, align 4, !tbaa !21, !noalias !14326
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi ptr [ %i.bl, %bb.i ], [ %i.bg, %bb.h ] ; 2 uses
  %i.bp = phi ptr [ %i.bm, %bb.i ], [ %i.bh, %bb.h ] ; 2 uses
  %.sroa.020.1.i = phi ptr [ %.sroa.020.050.i, %bb.i ], [ %i.bb, %bb.h ] ; 2 uses
  %.sroa.024.1.i = phi ptr [ %.sroa.024.051.i, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %i.bc, %bb.i ], [ %.sroa.029.052.i, %bb.h ] ; 2 uses
  %.not35.i = icmp eq ptr %.sink.i, %i.s
  br i1 %.not35.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i8, !llvm.loop !14342

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i: ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.052.1 = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.z, %bb.f ], [ %i.ap, %middle.block ], [ %i.bp, %bb.j ]
  %.sroa.020.046.i = phi ptr [ %.sroa.020.050.i, %.lr.ph.i.i.i ], [ %i.x, %bb.f ], [ %.sroa.020.050.i, %middle.block ], [ %.sroa.020.1.i, %bb.j ]
  %.sroa.024.044.i = phi ptr [ %.sroa.024.051.i, %.lr.ph.i.i.i ], [ %i.w, %bb.f ], [ %.sroa.024.051.i, %middle.block ], [ %.sroa.024.1.i, %bb.j ]
  %.sroa.029.042.i = phi ptr [ %.sroa.029.052.i, %.lr.ph.i.i.i ], [ %i.r, %bb.f ], [ %.sroa.029.052.i, %middle.block ], [ %.sroa.029.1.i, %bb.j ]
  store ptr %.sroa.020.046.i, ptr %5, align 8, !tbaa !13442, !noalias !14326
  %.pre = load ptr, ptr %2, align 8, !tbaa !13442
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit
  br i1 %or.cond76, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.bs = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !21, !noalias !14343
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !21, !noalias !14343
  store i32 0, ptr %i.br, align 4, !tbaa !21, !noalias !14343
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !21, !noalias !14343
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !21, !noalias !14343
  store i32 0, ptr %i.bq, align 4, !tbaa !21, !noalias !14343
  %i.bv = icmp eq ptr %i.br, %i.s
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.l, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %bb.l ] ; 3 uses
  %i.bw = phi ptr [ %i.cv, %bb.p ], [ %i.br, %bb.l ] ; 6 uses
  %.sroa.022.040.i = phi ptr [ %.sroa.022.1.i, %bb.p ], [ %i.r, %bb.l ] ; 10 uses
  %.sroa.016.039.i = phi ptr [ %.sroa.016.1.i, %bb.p ], [ %i.bq, %bb.l ] ; 5 uses
  %i.bx = phi ptr [ %i.cw, %bb.p ], [ %i.bs, %bb.l ]
  %i.by = icmp eq ptr %.sroa.016.039.i, %i.u
  br i1 %i.by, label %.lr.ph.i.i.i13.preheader, label %bb.m

.lr.ph.i.i.i13.preheader:                         ; preds = %.lr.ph.i10
  %i.bz = add i64 %i.n, -8
  %9 = shl i64 %indvar, 2
  %10 = add i64 %9, %i.t
  %11 = sub i64 %i.bz, %10                        ; 2 uses
  %12 = lshr i64 %11, 2
  %i.ca = add nuw nsw i64 %12, 1                  ; 2 uses
  %min.iters.check254 = icmp ult i64 %11, 124
  br i1 %min.iters.check254, label %.lr.ph.i.i.i13.preheader292, label %vector.memcheck245

vector.memcheck245:                               ; preds = %.lr.ph.i.i.i13.preheader
  %scevgep246 = getelementptr i8, ptr %.sroa.022.040.i, i64 -4
  %i.cb = add i64 %i.n, -8
  %i.cc = sub i64 %i.cb, %i.t
  %13 = mul i64 %indvar, -4                       ; 2 uses
  %14 = add i64 %13, %i.cc
  %15 = lshr i64 %14, 2
  %16 = mul i64 %15, -4                           ; 2 uses
  %scevgep247 = getelementptr i8, ptr %scevgep246, i64 %16
  %i.cd = getelementptr i8, ptr %.lcssa.i, i64 %13
  %scevgep248 = getelementptr i8, ptr %i.cd, i64 -8
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 %16
  %bound0250 = icmp ult ptr %scevgep247, %i.bw
  %bound1251 = icmp ult ptr %scevgep249, %.sroa.022.040.i
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %.lr.ph.i.i.i13.preheader292, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck245
  %n.vec256 = and i64 %i.ca, 9223372036854775800  ; 3 uses
  %i.ce = mul i64 %n.vec256, -4                   ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.022.040.i, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bw, i64 %i.ce
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next263, %vector.body257 ] ; 2 uses
  %i.ch = mul i64 %index258, -4                   ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.sroa.022.040.i, i64 %i.ch ; 2 uses
  %next.gep260 = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %next.gep260, i64 -16 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %next.gep260, i64 -32 ; 2 uses
  %wide.load261 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !21, !alias.scope !14346, !noalias !14349
  %wide.load262 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !21, !alias.scope !14346, !noalias !14349
  %i.ck = getelementptr inbounds i8, ptr %next.gep259, i64 -16
  %i.cl = getelementptr inbounds i8, ptr %next.gep259, i64 -32
  store <4 x i32> %wide.load261, ptr %i.ck, align 4, !tbaa !21, !alias.scope !14354, !noalias !14356
  store <4 x i32> %wide.load262, ptr %i.cl, align 4, !tbaa !21, !alias.scope !14354, !noalias !14356
  store <4 x i32> zeroinitializer, ptr %i.ci, align 4, !tbaa !21, !alias.scope !14346, !noalias !14349
  store <4 x i32> zeroinitializer, ptr %i.cj, align 4, !tbaa !21, !alias.scope !14346, !noalias !14349
  %index.next263 = add nuw i64 %index258, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next263, %n.vec256
  br i1 %i.cm, label %middle.block264, label %vector.body257, !llvm.loop !14357

middle.block264:                                  ; preds = %vector.body257
  %cmp.n265 = icmp eq i64 %i.ca, %n.vec256
  br i1 %cmp.n265, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %.lr.ph.i.i.i13.preheader292

.lr.ph.i.i.i13.preheader292:                      ; preds = %vector.memcheck245, %.lr.ph.i.i.i13.preheader, %middle.block264
  %.sroa.0.0.i.i14.ph = phi ptr [ %.sroa.022.040.i, %vector.memcheck245 ], [ %.sroa.022.040.i, %.lr.ph.i.i.i13.preheader ], [ %i.cf, %middle.block264 ]
  %.ph = phi ptr [ %i.bw, %vector.memcheck245 ], [ %i.bw, %.lr.ph.i.i.i13.preheader ], [ %i.cg, %middle.block264 ]
  br label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %.lr.ph.i.i.i13.preheader292, %.lr.ph.i.i.i13
  %.sroa.0.0.i.i14 = phi ptr [ %i.cp, %.lr.ph.i.i.i13 ], [ %.sroa.0.0.i.i14.ph, %.lr.ph.i.i.i13.preheader292 ]
  %i.cn = phi ptr [ %i.co, %.lr.ph.i.i.i13 ], [ %.ph, %.lr.ph.i.i.i13.preheader292 ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.i.i14, i64 -4 ; 3 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !21, !noalias !14349
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !21, !noalias !14349
  store i32 0, ptr %i.co, align 4, !tbaa !21, !noalias !14349
  %.not.i.i.i15 = icmp eq ptr %i.co, %i.s
  br i1 %.not.i.i.i15, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %.lr.ph.i.i.i13, !llvm.loop !14358

bb.m:                                             ; preds = %.lr.ph.i10
  %i.cr = getelementptr inbounds i8, ptr %.sroa.016.039.i, i64 -4 ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %.sroa.022.040.i, i64 -4 ; 4 uses
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !21, !noalias !14343
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !21, !noalias !14343
  %.not28.i = icmp slt i32 %i.ct, %i.cu
  %i.cv = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 6 uses
  %i.cw = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !21, !noalias !14343
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !21, !noalias !14343
  store i32 0, ptr %i.cv, align 4, !tbaa !21, !noalias !14343
  br i1 %.not28.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = load i32, ptr %i.cr, align 4, !tbaa !21, !noalias !14343
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !21, !noalias !14343
  store i32 0, ptr %i.cr, align 4, !tbaa !21, !noalias !14343
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cz = load i32, ptr %i.cs, align 4, !tbaa !21, !noalias !14343
  store i32 %i.cz, ptr %i.cv, align 4, !tbaa !21, !noalias !14343
  store i32 0, ptr %i.cs, align 4, !tbaa !21, !noalias !14343
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.016.1.i = phi ptr [ %.sroa.016.039.i, %bb.o ], [ %i.cr, %bb.n ] ; 2 uses
  %.sroa.022.1.i = phi ptr [ %i.cs, %bb.o ], [ %.sroa.022.040.i, %bb.n ] ; 2 uses
  %i.da = icmp eq ptr %i.cv, %i.s
  %indvar.next = add i64 %indvar, 1
  br i1 %i.da, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %.lr.ph.i10, !llvm.loop !14359

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit: ; preds = %bb.p, %.lr.ph.i.i.i13, %middle.block264, %bb.k, %bb.l, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, %bb.e
  %i.db = phi ptr [ %.pre, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.s, %bb.e ], [ %i.s, %middle.block264 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %i.s, %.lr.ph.i.i.i13 ], [ %i.s, %bb.p ]
  %.sroa.052.0 = phi ptr [ %.sroa.052.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.r, %bb.e ], [ %i.cf, %middle.block264 ], [ %i.r, %bb.k ], [ %i.bs, %bb.l ], [ %i.cp, %.lr.ph.i.i.i13 ], [ %i.cw, %bb.p ]
  %.sroa.059.0 = phi ptr [ %.sroa.024.044.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.c, %bb.e ], [ %.sroa.016.039.i, %middle.block264 ], [ %i.c, %bb.k ], [ %i.bq, %bb.l ], [ %.sroa.016.039.i, %.lr.ph.i.i.i13 ], [ %.sroa.016.1.i, %bb.p ]
  %.sroa.069.0 = phi ptr [ %.sroa.029.042.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.r, %bb.e ], [ %.sroa.022.040.i, %middle.block264 ], [ %i.r, %bb.k ], [ %i.r, %bb.l ], [ %.sroa.022.040.i, %.lr.ph.i.i.i13 ], [ %.sroa.022.1.i, %bb.p ]
  store ptr %i.db, ptr %1, align 8, !tbaa !13442
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit
  %.sroa.059.1 = phi ptr [ %.sroa.059.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.065.0 = phi ptr [ %.sroa.052.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.069.1 = phi ptr [ %.sroa.069.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.dc = load ptr, ptr %4, align 8, !tbaa !13442 ; 3 uses
  %i.dd = load ptr, ptr %1, align 8, !tbaa !13442 ; 4 uses
  %.not.i21 = icmp eq ptr %.sroa.059.1, %i.dc
  %.not17.i = icmp eq ptr %.sroa.065.0, %.sroa.069.1
  %or.cond78 = select i1 %.not.i21, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond78, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = load ptr, ptr %5, align 8, !tbaa !13442, !noalias !14360
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.s
  %.sroa.030.0 = phi ptr [ %i.dd, %bb.s ], [ %i.dk, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.de, %bb.s ], [ %i.df, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %.sroa.059.1, %bb.s ], [ %i.dj, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %.sroa.069.1, %bb.s ], [ %.sroa.017.0.i, %.split.i ]
  %i.df = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 5 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.outer.i
  %.sroa.030.1 = phi ptr [ %.sroa.030.0, %.outer.i ], [ %i.dm, %bb.u ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.dg, %bb.u ] ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 5 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !21, !noalias !14360 ; 2 uses
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !21, !noalias !14360 ; 2 uses
  %.not26.i = icmp slt i32 %i.dh, %i.di
  br i1 %.not26.i, label %bb.u, label %.split.i

.split.i:                                         ; preds = %bb.t
  %i.dj = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 5 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.030.1, i64 -4 ; 3 uses
  store i32 %i.dh, ptr %i.dk, align 4, !tbaa !21, !noalias !14360
  store i32 0, ptr %i.df, align 4, !tbaa !21, !noalias !14360
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !21, !noalias !14360
  store i32 %i.dl, ptr %i.df, align 4, !tbaa !21, !noalias !14360
  store i32 0, ptr %i.dj, align 4, !tbaa !21, !noalias !14360
  %.not28.i18 = icmp eq ptr %i.dj, %i.dc
  br i1 %.not28.i18, label %.loopexit.i19, label %.outer.i, !llvm.loop !13569

bb.u:                                             ; preds = %bb.t
  %i.dm = getelementptr inbounds i8, ptr %.sroa.030.1, i64 -4 ; 3 uses
  store i32 %i.di, ptr %i.dm, align 4, !tbaa !21, !noalias !14360
  store i32 0, ptr %i.dg, align 4, !tbaa !21, !noalias !14360
  %.not27.i20 = icmp eq ptr %i.dg, %.sroa.065.0
  br i1 %.not27.i20, label %.loopexit.i19, label %bb.t, !llvm.loop !13569

.loopexit.i19:                                    ; preds = %.split.i, %bb.u
  %.sroa.030.2 = phi ptr [ %i.dm, %bb.u ], [ %i.dk, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.dg, %bb.u ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.u ], [ %i.dj, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.u ], [ %i.df, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !13442, !noalias !14360
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit

bb.v:                                             ; preds = %bb.q
  br i1 %or.cond78, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.v, %bb.w
  %.sroa.023.0.ph = phi ptr [ %i.dr, %bb.w ], [ %i.dd, %bb.v ]
  %.sroa.07.0.i.ph = phi ptr [ %i.ds, %bb.w ], [ %.sroa.059.1, %bb.v ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.w ], [ %.sroa.069.1, %bb.v ]
  %i.dn = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.x
  %.sroa.023.0 = phi ptr [ %i.dr, %bb.x ], [ %.sroa.023.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.do, %bb.x ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 5 uses
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !21, !noalias !14363 ; 2 uses
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !21, !noalias !14363 ; 2 uses
  %.not18.i = icmp slt i32 %i.dp, %i.dq
  %i.dr = getelementptr inbounds i8, ptr %.sroa.023.0, i64 -4 ; 6 uses
  br i1 %.not18.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.i
  %i.ds = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 4 uses
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !21, !noalias !14363
  store i32 0, ptr %i.ds, align 4, !tbaa !21, !noalias !14363
  %i.dt = icmp eq ptr %i.ds, %i.dc
  br i1 %i.dt, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !13579

bb.x:                                             ; preds = %.preheader.i
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !21, !noalias !14363
  store i32 0, ptr %i.do, align 4, !tbaa !21, !noalias !14363
  %i.du = icmp eq ptr %i.do, %.sroa.065.0
  br i1 %i.du, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %.preheader.i, !llvm.loop !13579

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit: ; preds = %bb.x, %bb.w, %bb.v, %.loopexit.i19, %bb.r
  %.sroa.037.0 = phi ptr [ %.sroa.030.2, %.loopexit.i19 ], [ %i.dd, %bb.r ], [ %i.dd, %bb.v ], [ %i.dr, %bb.w ], [ %i.dr, %bb.x ]
  %.sroa.059.2 = phi ptr [ %.sroa.013.123.i, %.loopexit.i19 ], [ %.sroa.059.1, %bb.r ], [ %.sroa.059.1, %bb.v ], [ %.sroa.07.0.i.ph, %bb.x ], [ %i.ds, %bb.w ]
  %.sroa.069.2 = phi ptr [ %.sroa.017.124.i, %.loopexit.i19 ], [ %.sroa.069.1, %bb.r ], [ %.sroa.069.1, %bb.v ], [ %i.do, %bb.x ], [ %.sroa.012.0.i, %bb.w ]
  store ptr %.sroa.037.0, ptr %1, align 8, !tbaa !13442
  store ptr %.sroa.069.2, ptr %6, align 8, !tbaa !13442
  store ptr %.sroa.065.0, ptr %7, align 8, !tbaa !13442
  store ptr %.sroa.059.2, ptr %3, align 8, !tbaa !13442
  %i.dv = load ptr, ptr %1, align 8, !tbaa !13442
  store ptr %i.dv, ptr %0, align 8, !tbaa !13442
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.179") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %"class.boost::movelib::reverse_iterator.179", align 8 ; 7 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.179", align 8 ; 6 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.179", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.179", align 8 ; 2 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.179", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.179", align 8 ; 2 uses
end_hunk_11
