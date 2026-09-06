Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 280
loop-unroll.NumUnrolled: 953
begin_hunk_0_@_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE11MaskUnionOpclERNS5_INS6_INS6_INS7_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEm:bb.a
_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS4_INS3_8LeafNodeINS2_9ValueMaskELj3EEELj4EEELj5EEESt14default_deleteIS9_EESaISC_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS4_INS3_8LeafNodeINS2_9ValueMaskELj3EEELj4EEELj5EEESt14default_deleteIS9_EESC_EvT_SE_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i1 true

bb.f:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.lr.ph:                                           ; preds = %.loopexit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit
  %.030 = phi i64 [ %i.ar, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit ], [ 0, %.loopexit ] ; 2 uses
  %.sroa.6.029 = phi ptr [ %.sroa.6.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit ], [ %.sroa.2.1.i, %.loopexit ] ; 2 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !888
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.030 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !868
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.6.029, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1072
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 532480
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 270336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false), !tbaa.struct !901
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !868
  store ptr null, ptr %i.aj, align 8, !tbaa !868
  %i.aq = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE8addChildEPS8_(ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef %i.ap)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.h:                                             ; preds = %.lr.ph
  %i.ar = add i64 %.030, 1
  %i.as = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.6.029) #32 ; 3 uses
  %.not2.i.i.i16 = icmp eq ptr %i.as, %i.t
  br i1 %.not2.i.i.i16, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %bb.h, %bb.i
  %.sroa.6.2 = phi ptr [ %i.av, %bb.i ], [ %i.as, %bb.h ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1070
  %.not1.i.i.i18 = icmp eq ptr %i.au, null
  br i1 %.not1.i.i.i18, label %bb.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.6.2) #32 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.av, %i.t
  br i1 %.not.i.i.i19, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit, label %.lr.ph.i.i.i17, !llvm.loop !24

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit: ; preds = %.lr.ph.i.i.i17, %bb.i, %bb.h
  %.sroa.6.3 = phi ptr [ %i.as, %bb.h ], [ %.sroa.6.2, %.lr.ph.i.i.i17 ], [ %i.av, %bb.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.6.3, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ag, %bb.f ]
  call void @_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS4_INS3_8LeafNodeINS2_9ValueMaskELj3EEELj4EEELj5EEESt14default_deleteIS9_EESaISC_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE11MaskUnionOpclERNS7_INS0_9ValueMaskELj3EEEm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEC2ERKSD_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEC5ERKSD_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE17_M_realloc_insertIJRKSE_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE12emplace_backIJRKSE_RNS1_8DeepCopyEEEERSF_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE12emplace_backIJRKSE_RNS1_8DeepCopyEEEERSF_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1075   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1076 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !787  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !743
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #24, !inline_history !5711
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !786  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !798
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !799
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5712
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5712
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !800

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !25

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1075
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1077
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISD_EESaISH_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISD_EESaISH_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1076 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1075   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1075
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1076
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1077
  %i.m = load ptr, ptr %1, align 8, !tbaa !1078
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1078
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt6vectorISH_SaISH_EEEEPSH_ET0_T_SQ_SP_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EEC2ERKSH_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1075   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1077
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EEC2ERKSH_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1076
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1083
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISD_EESaISH_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISD_EESaISH_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.276", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5717)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1078, !noalias !5717
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1078, !alias.scope !5717
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5717
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5717
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5718)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1078, !noalias !5718
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1078, !alias.scope !5718
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5718
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5718
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EEC2ISt15_Deque_iteratorISF_RKSF_PSK_EvEET_SO_RKSG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1083
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EEC2ISt15_Deque_iteratorISF_RKSF_PSK_EvEET_SO_RKSG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !1078
  %i.b = load ptr, ptr %1, align 8, !tbaa !1087
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1088 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1089 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !1087   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !1078
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1090
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1089 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i.i
  %i.s = mul nsw i64 %i.r, 12
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 230584300921369395
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE17_S_check_init_lenEmRKSG_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE17_S_check_init_lenEmRKSG_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE17_S_check_init_lenEmRKSG_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE17_S_check_init_lenEmRKSG_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE17_S_check_init_lenEmRKSG_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1075
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1077
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !1078
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !1088
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !1089
  store ptr %i.g, ptr %5, align 8, !tbaa !1087
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !1078
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !1089
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS2_9ValueMaskELj3EEELj4EEELj5EEEEEEEEERKSG_PSH_EPSG_ET0_T_SN_SM_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1076
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1075  ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1077
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1078
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1078
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1076
  %i.c = load ptr, ptr %0, align 8, !tbaa !1075
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14probeConstNodeIS6_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !741
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !885 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %i.av = shl i32 %i.p, 3
  %i.aw = and i32 %i.av, 31744
  %i.ax = lshr i32 %i.b, 2
  %i.ay = and i32 %i.ax, 992
  %i.az = or disjoint i32 %i.aw, %i.ay            ; 2 uses
  %i.ba = lshr i32 %i.g, 7
  %i.bb = and i32 %i.ba, 31
  %i.bc = or disjoint i32 %i.az, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 262144
  %i.be = lshr i32 %i.az, 6
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1112
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !768 ; 2 uses
  %i.bp = shl i32 %i.p, 5
  %i.bq = and i32 %i.bp, 3840
  %i.br = shl i32 %i.b, 1
  %i.bs = and i32 %i.br, 240
  %i.bt = or disjoint i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = lshr i32 %i.g, 3
  %i.bv = and i32 %i.bu, 15
  %i.bw = or disjoint i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32768
  %i.by = lshr i32 %i.bt, 6
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1112
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !768
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISG_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a, %bb.l, %bb.k, %bb.j, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit ], [ null, %bb.k ], [ null, %bb.j ], [ %i.ci, %bb.l ], [ null, %bb.a ], [ null, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISG_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ null, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEC2ERKSC_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEC5ERKSC_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_M_realloc_insertIJRKSD_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1117   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1118 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !787  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !743
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #24, !inline_history !5722
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !786  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !798
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !799
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5723
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5723
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !800

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !32

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1117
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1119
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1118 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1117   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1117
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1118
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1119
  %i.m = load ptr, ptr %1, align 8, !tbaa !1120
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1120
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1117   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1119
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1118
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1125
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.297", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.297", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.294", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5728)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1120, !noalias !5728
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1120, !alias.scope !5728
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5728
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5729)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1120, !noalias !5729
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1120, !alias.scope !5729
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5729
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5729
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1125
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.297", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.297", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !1120
  %i.b = load ptr, ptr %1, align 8, !tbaa !1128
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1129 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1130 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !1128   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !1120
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1131
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1130 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i.i
  %i.s = mul nsw i64 %i.r, 12
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 230584300921369395
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1117
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1119
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !1120
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !1129
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !1130
  store ptr %i.g, ptr %5, align 8, !tbaa !1128
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !1120
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !1130
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEERKSF_PSG_EPSF_ET0_T_SM_SL_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1118
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1117  ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1119
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1120
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1118
  %i.c = load ptr, ptr %0, align 8, !tbaa !1117
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE14probeConstNodeIS5_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !741
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !920 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %i.av = shl i32 %i.p, 3
  %i.aw = and i32 %i.av, 31744
  %i.ax = lshr i32 %i.b, 2
  %i.ay = and i32 %i.ax, 992
  %i.az = or disjoint i32 %i.aw, %i.ay            ; 2 uses
  %i.ba = lshr i32 %i.g, 7
  %i.bb = and i32 %i.ba, 31
  %i.bc = or disjoint i32 %i.az, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 262144
  %i.be = lshr i32 %i.az, 6
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1112
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !768 ; 2 uses
  %i.bp = shl i32 %i.p, 5
  %i.bq = and i32 %i.bp, 3840
  %i.br = shl i32 %i.b, 1
  %i.bs = and i32 %i.br, 240
  %i.bt = or disjoint i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = lshr i32 %i.g, 3
  %i.bv = and i32 %i.bu, 15
  %i.bw = or disjoint i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32768
  %i.by = lshr i32 %i.bt, 6
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1112
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !768
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a, %bb.l, %bb.k, %bb.j, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit ], [ null, %bb.k ], [ null, %bb.j ], [ %i.ci, %bb.l ], [ null, %bb.a ], [ null, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ null, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEC2ERKSC_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEC5ERKSC_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_M_realloc_insertIJRKSD_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1145   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1146 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !787  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !743
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #24, !inline_history !5733
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !786  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !798
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !799
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5734
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5734
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !800

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !35

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1145
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1146 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1145   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1145
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1146
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1147
  %i.m = load ptr, ptr %1, align 8, !tbaa !1148
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1148
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1145   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1147
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1146
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1154
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.318", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5739)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1148, !noalias !5739
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1148, !alias.scope !5739
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5739
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5739
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5740)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1148, !noalias !5740
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1148, !alias.scope !5740
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5740
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5740
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1154
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.321", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !1148
  %i.b = load ptr, ptr %1, align 8, !tbaa !1157
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1158 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1159 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !1157   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !1148
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1160
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1159 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i.i
  %i.s = mul nsw i64 %i.r, 12
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 230584300921369395
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1145
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !1148
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !1158
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !1159
  store ptr %i.g, ptr %5, align 8, !tbaa !1157
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !1148
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !1159
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEERKSF_PSG_EPSF_ET0_T_SM_SL_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1146
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1145  ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1147
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1148
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1148
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1146
  %i.c = load ptr, ptr %0, align 8, !tbaa !1145
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE14probeConstNodeIS5_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !741
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !942 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %i.av = shl i32 %i.p, 3
  %i.aw = and i32 %i.av, 31744
  %i.ax = lshr i32 %i.b, 2
  %i.ay = and i32 %i.ax, 992
  %i.az = or disjoint i32 %i.aw, %i.ay            ; 2 uses
  %i.ba = lshr i32 %i.g, 7
  %i.bb = and i32 %i.ba, 31
  %i.bc = or disjoint i32 %i.az, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 262144
  %i.be = lshr i32 %i.az, 6
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1112
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !768 ; 2 uses
  %i.bp = shl i32 %i.p, 5
  %i.bq = and i32 %i.bp, 3840
  %i.br = shl i32 %i.b, 1
  %i.bs = and i32 %i.br, 240
  %i.bt = or disjoint i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = lshr i32 %i.g, 3
  %i.bv = and i32 %i.bu, 15
  %i.bw = or disjoint i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32768
  %i.by = lshr i32 %i.bt, 6
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1112
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !768
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a, %bb.l, %bb.k, %bb.j, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit ], [ null, %bb.k ], [ null, %bb.j ], [ %i.ci, %bb.l ], [ null, %bb.a ], [ null, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ null, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEC2ERKSC_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEC5ERKSC_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_M_realloc_insertIJRKSD_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1176   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1177 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !787  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !743
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #24, !inline_history !5751
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !786  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !798
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !799
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5752
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5752
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !800

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !41

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1176
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1178
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1177 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1176   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1177
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1178
  %i.m = load ptr, ptr %1, align 8, !tbaa !1179
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1179
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1176   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1178
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1177
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1185
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.348", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5757)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1179, !noalias !5757
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1179, !alias.scope !5757
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5757
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5758)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1179, !noalias !5758
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1179, !alias.scope !5758
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5758
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5758
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1185
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.351", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !1179
  %i.b = load ptr, ptr %1, align 8, !tbaa !1188
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1189 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1190 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !1188   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !1179
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1191
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1190 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i.i
  %i.s = mul nsw i64 %i.r, 12
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 230584300921369395
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1176
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1178
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !1179
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !1189
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !1190
  store ptr %i.g, ptr %5, align 8, !tbaa !1188
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !1179
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !1190
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEERKSF_PSG_EPSF_ET0_T_SM_SL_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1177
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1176  ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1178
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1179
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1179
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1177
  %i.c = load ptr, ptr %0, align 8, !tbaa !1176
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_3
begin_hunk_4_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE14probeConstNodeIS5_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !741
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !964 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %i.av = shl i32 %i.p, 3
  %i.aw = and i32 %i.av, 31744
  %i.ax = lshr i32 %i.b, 2
  %i.ay = and i32 %i.ax, 992
  %i.az = or disjoint i32 %i.aw, %i.ay            ; 2 uses
  %i.ba = lshr i32 %i.g, 7
  %i.bb = and i32 %i.ba, 31
  %i.bc = or disjoint i32 %i.az, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 262144
  %i.be = lshr i32 %i.az, 6
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1112
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !768 ; 2 uses
  %i.bp = shl i32 %i.p, 5
  %i.bq = and i32 %i.bp, 3840
  %i.br = shl i32 %i.b, 1
  %i.bs = and i32 %i.br, 240
  %i.bt = or disjoint i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = lshr i32 %i.g, 3
  %i.bv = and i32 %i.bu, 15
  %i.bw = or disjoint i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32768
  %i.by = lshr i32 %i.bt, 6
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1112
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !768
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a, %bb.l, %bb.k, %bb.j, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit ], [ null, %bb.k ], [ null, %bb.j ], [ %i.ci, %bb.l ], [ null, %bb.a ], [ null, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ null, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEC2ERKSC_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEC5ERKSC_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_M_realloc_insertIJRKSD_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1206   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1207 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !787  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !743
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #24, !inline_history !5769
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !786  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !798
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !799
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5770
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5770
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !800

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !45

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1206
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1208
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1207 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1206   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1206
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1207
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1208
  %i.m = load ptr, ptr %1, align 8, !tbaa !1209
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1209
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1206   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1208
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1207
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1214
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.379", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.379", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.376", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5775)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1209, !noalias !5775
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1209, !alias.scope !5775
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5775
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5776)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1209, !noalias !5776
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1209, !alias.scope !5776
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5776
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5776
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1214
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.379", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.379", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !1209
  %i.b = load ptr, ptr %1, align 8, !tbaa !1217
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1218 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1219 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !1217   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !1209
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1220
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1219 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i.i
  %i.s = mul nsw i64 %i.r, 12
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 230584300921369395
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1206
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1208
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !1209
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !1218
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !1219
  store ptr %i.g, ptr %5, align 8, !tbaa !1217
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !1209
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !1219
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEERKSF_PSG_EPSF_ET0_T_SM_SL_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1207
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1206  ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1208
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1209
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1209
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1207
  %i.c = load ptr, ptr %0, align 8, !tbaa !1206
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_4
begin_hunk_5_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE14probeConstNodeIS5_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !741
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !984 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %i.av = shl i32 %i.p, 3
  %i.aw = and i32 %i.av, 31744
  %i.ax = lshr i32 %i.b, 2
  %i.ay = and i32 %i.ax, 992
  %i.az = or disjoint i32 %i.aw, %i.ay            ; 2 uses
  %i.ba = lshr i32 %i.g, 7
  %i.bb = and i32 %i.ba, 31
  %i.bc = or disjoint i32 %i.az, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 262144
  %i.be = lshr i32 %i.az, 6
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1112
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !768 ; 2 uses
  %i.bp = shl i32 %i.p, 5
  %i.bq = and i32 %i.bp, 3840
  %i.br = shl i32 %i.b, 1
  %i.bs = and i32 %i.br, 240
  %i.bt = or disjoint i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = lshr i32 %i.g, 3
  %i.bv = and i32 %i.bu, 15
  %i.bw = or disjoint i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32768
  %i.by = lshr i32 %i.bt, 6
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1112
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !768
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a, %bb.l, %bb.k, %bb.j, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit ], [ null, %bb.k ], [ null, %bb.j ], [ %i.ci, %bb.l ], [ null, %bb.a ], [ null, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ null, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEC2ERKSC_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEC5ERKSC_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_M_realloc_insertIJRKSD_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1234   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1235 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !787  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !743
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #24, !inline_history !5788
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !786  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !798
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !799
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5789
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5789
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !800

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !48

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1234
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1236
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1235 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1234   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1234
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1235
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1236
  %i.m = load ptr, ptr %1, align 8, !tbaa !1237
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1237
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1234   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1236
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1235
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1243
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.407", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.407", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.404", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5794)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1237, !noalias !5794
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1237, !alias.scope !5794
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5794
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5794
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5795)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1237, !noalias !5795
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1237, !alias.scope !5795
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5795
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5795
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1243
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.407", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.407", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !1237
  %i.b = load ptr, ptr %1, align 8, !tbaa !1246
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1247 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1248 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !1246   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !1237
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1249
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1248 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i.i
  %i.s = mul nsw i64 %i.r, 12
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 230584300921369395
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1234
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !1237
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !1247
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !1248
  store ptr %i.g, ptr %5, align 8, !tbaa !1246
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !1237
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !1248
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEERKSF_PSG_EPSF_ET0_T_SM_SL_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1235
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1234  ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1236
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1237
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1237
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1235
  %i.c = load ptr, ptr %0, align 8, !tbaa !1234
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_5
begin_hunk_6_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE14probeConstNodeIS5_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !741
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1004 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %i.av = shl i32 %i.p, 3
  %i.aw = and i32 %i.av, 31744
  %i.ax = lshr i32 %i.b, 2
  %i.ay = and i32 %i.ax, 992
  %i.az = or disjoint i32 %i.aw, %i.ay            ; 2 uses
  %i.ba = lshr i32 %i.g, 7
  %i.bb = and i32 %i.ba, 31
  %i.bc = or disjoint i32 %i.az, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 262144
  %i.be = lshr i32 %i.az, 6
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1112
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !768 ; 2 uses
  %i.bp = shl i32 %i.p, 5
  %i.bq = and i32 %i.bp, 3840
  %i.br = shl i32 %i.b, 1
  %i.bs = and i32 %i.br, 240
  %i.bt = or disjoint i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = lshr i32 %i.g, 3
  %i.bv = and i32 %i.bu, 15
  %i.bw = or disjoint i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32768
  %i.by = lshr i32 %i.bt, 6
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1112
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !768
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a, %bb.l, %bb.k, %bb.j, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit ], [ null, %bb.k ], [ null, %bb.j ], [ %i.ci, %bb.l ], [ null, %bb.a ], [ null, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ null, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEC2ERKSF_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1240) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEC5ERKSF_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_M_realloc_insertIJRKSG_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE12emplace_backIJRKSG_RNS1_8DeepCopyEEEERSH_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE12emplace_backIJRKSG_RNS1_8DeepCopyEEEERSH_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1263   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1264 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !787  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !743
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #24, !inline_history !5807
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !786  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !798
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !799
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5808
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5808
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !800

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !51

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1263
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1265
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1264 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1263   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1263
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1264
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1265
  %i.m = load ptr, ptr %1, align 8, !tbaa !1266
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1266
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1263   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1265
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1264
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1272
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.435", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.435", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.432", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5813)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1266, !noalias !5813
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1266, !alias.scope !5813
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5813
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5814)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1266, !noalias !5814
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1266, !alias.scope !5814
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5814
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5814
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1272
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.435", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.435", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !1266
  %i.b = load ptr, ptr %1, align 8, !tbaa !1275
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1276 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1277 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !1275   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !1266
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1278
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1277 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i.i
  %i.s = mul nsw i64 %i.r, 12
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 230584300921369395
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1263
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1265
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !1266
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !1276
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !1277
  store ptr %i.g, ptr %5, align 8, !tbaa !1275
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !1266
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !1277
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS2_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEERKSI_PSJ_EPSI_ET0_T_SP_SO_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1264
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1263  ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1265
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1266
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1266
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1264
  %i.c = load ptr, ptr %0, align 8, !tbaa !1263
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_6
begin_hunk_7_@_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE10probeValueERKNS4_5CoordERS6_:bb.a
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 66048
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.an
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !1112
  %i.az = and i64 %i.ay, %i.as
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !768 ; 4 uses
  %i.bb = load atomic i8, ptr @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero acquire, align 8
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %bb.h, !prof !1283

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) #24
  %.not.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <2 x float> zeroinitializer, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, align 4
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, i64 8), align 4
  %i.be = tail call ptr @llvm.invariant.start.p0(i64 12, ptr nonnull @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load atomic i32, ptr %i.bf seq_cst, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ba)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i

_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i: ; preds = %bb.i, %bb.h
  %i.bh = shl i32 %i.e, 3
  %i.bi = and i32 %i.bh, 56
  %i.bj = shl i32 %i.a, 6
  %i.bk = and i32 %i.bj, 448                      ; 2 uses
  %i.bl = and i32 %i.j, 7
  %i.bm = or disjoint i32 %i.bi, %i.bl            ; 2 uses
  %i.bn = or disjoint i32 %i.bm, %i.bk
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !768 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bo, null
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.bp
  %.0.i.i.i.i.i = select i1 %.not5.i.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, ptr %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i.i.i.i, i64 12, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bs = lshr exact i32 %i.bk, 6
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !1112
  %i.bw = zext nneg i32 %i.bm to i64
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i, %bb.d, %bb.b
  %.0.in = phi i64 [ %i.ab, %bb.b ], [ %i.az, %bb.d ], [ %i.by, %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i ]
  %.0 = icmp ne i64 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEC2ERKSF_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1248) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEC5ERKSF_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_M_realloc_insertIJRKSG_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1248) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE12emplace_backIJRKSG_RNS1_8DeepCopyEEEERSH_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE12emplace_backIJRKSG_RNS1_8DeepCopyEEEERSH_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1286   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1287 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !787  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !743
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #24, !inline_history !5826
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !786  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !798
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !799
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5827
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5827
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !800

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !54

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1286
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1288
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1287 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1286   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1286
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1287
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1288
  %i.m = load ptr, ptr %1, align 8, !tbaa !1289
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1289
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1286   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1288
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1287
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1295
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.463", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.463", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.460", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5832)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1289, !noalias !5832
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1289, !alias.scope !5832
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5832
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5832
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5833)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1289, !noalias !5833
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1289, !alias.scope !5833
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5833
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5833
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1295
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.463", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.463", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !1289
  %i.b = load ptr, ptr %1, align 8, !tbaa !1298
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1299 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1300 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !1298   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !1289
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1301
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1300 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i.i
  %i.s = mul nsw i64 %i.r, 12
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 230584300921369395
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1286
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !1289
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !1299
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !1300
  store ptr %i.g, ptr %5, align 8, !tbaa !1298
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !1289
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !1300
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS2_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEERKSI_PSJ_EPSI_ET0_T_SP_SO_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1287
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1286  ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1288
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1289
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1289
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1287
  %i.c = load ptr, ptr %0, align 8, !tbaa !1286
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_7
begin_hunk_8_@_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE10probeValueERKNS4_5CoordERS6_:bb.a
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.au ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 98816
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.an
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !1112
  %i.az = and i64 %i.ay, %i.as
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !768 ; 4 uses
  %i.bb = load atomic i8, ptr @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero acquire, align 8
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %bb.h, !prof !1283

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero) #24
  %.not.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero, i8 0, i64 24, i1 false), !alias.scope !5854
  %i.be = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load atomic i32, ptr %i.bf seq_cst, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IdEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ba)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IdEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i

_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IdEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i: ; preds = %bb.i, %bb.h
  %i.bh = shl i32 %i.e, 3
  %i.bi = and i32 %i.bh, 56
  %i.bj = shl i32 %i.a, 6
  %i.bk = and i32 %i.bj, 448                      ; 2 uses
  %i.bl = and i32 %i.j, 7
  %i.bm = or disjoint i32 %i.bi, %i.bl            ; 2 uses
  %i.bn = or disjoint i32 %i.bm, %i.bk
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !768 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bo, null
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bp
  %.0.i.i.i.i.i = select i1 %.not5.i.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero, ptr %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i.i.i.i, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bs = lshr exact i32 %i.bk, 6
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !1112
  %i.bw = zext nneg i32 %i.bm to i64
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IdEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i, %bb.d, %bb.b
  %.0.in = phi i64 [ %i.ab, %bb.b ], [ %i.az, %bb.d ], [ %i.by, %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IdEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i ]
  %.0 = icmp ne i64 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEC2ERKSF_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1240) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEC5ERKSF_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_M_realloc_insertIJRKSG_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE12emplace_backIJRKSG_RNS1_8DeepCopyEEEERSH_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE12emplace_backIJRKSG_RNS1_8DeepCopyEEEERSH_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1307   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1308 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !787  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !743
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #24, !inline_history !5855
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !786  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !798
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !799
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5856
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !743
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !5856
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !800

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !57

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1307
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1309
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1308 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1307   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1307
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1308
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1309
  %i.m = load ptr, ptr %1, align 8, !tbaa !1310
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1310
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1307   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1309
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1308
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1316
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.491", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.491", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.488", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5861)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1310, !noalias !5861
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1310, !alias.scope !5861
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5861
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5862)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1310, !noalias !5862
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1310, !alias.scope !5862
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5862
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5862
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1316
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.491", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.491", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !1310
  %i.b = load ptr, ptr %1, align 8, !tbaa !1319
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1320 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1321 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !1319   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !1310
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1322
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1321 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i.i
  %i.s = mul nsw i64 %i.r, 12
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 230584300921369395
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !1307
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !1310
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !1320
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !1321
  store ptr %i.g, ptr %5, align 8, !tbaa !1319
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !1310
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !1321
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS2_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEERKSI_PSJ_EPSI_ET0_T_SP_SO_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1308
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1307  ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1309
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1310
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1308
  %i.c = load ptr, ptr %0, align 8, !tbaa !1307
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_8
begin_hunk_9_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeIS8_EEPKT_RKNS5_5CoordE:bb.a
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !768 ; 2 uses
  %i.bp = shl i32 %i.p, 5
  %i.bq = and i32 %i.bp, 3840
  %i.br = shl i32 %i.b, 1
  %i.bs = and i32 %i.br, 240
  %i.bt = or disjoint i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = lshr i32 %i.g, 3
  %i.bv = and i32 %i.bu, 15
  %i.bw = or disjoint i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 65536
  %i.by = lshr i32 %i.bt, 6
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1112
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !768
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a, %bb.l, %bb.k, %bb.j, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit ], [ null, %bb.k ], [ null, %bb.j ], [ %i.ci, %bb.l ], [ null, %bb.a ], [ null, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ null, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE10probeValueERKNS4_5CoordERS6_(ptr noundef nonnull align 8 dereferenceable(532496) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !741    ; 3 uses
  %i.b = shl i32 %i.a, 3
  %i.c = and i32 %i.b, 31744
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !741  ; 3 uses
  %i.f = lshr i32 %i.e, 2
  %i.g = and i32 %i.f, 992
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !741  ; 3 uses
  %i.k = lshr i32 %i.j, 7
  %i.l = and i32 %i.k, 31
  %i.m = or disjoint i32 %i.h, %i.l               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 524288
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1112
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 2 uses
  %i.v = and i64 %i.u, %i.r
  %.not.i.i = icmp eq i64 %i.v, 0
  %i.w = zext nneg i32 %i.m to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.w ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.x, i64 12, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 528384
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.p
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1112
  %i.ab = and i64 %i.aa, %i.u
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !768 ; 3 uses
  %i.ad = shl i32 %i.a, 5
  %i.ae = and i32 %i.ad, 3840
  %i.af = shl i32 %i.e, 1
  %i.ag = and i32 %i.af, 240
  %i.ah = or disjoint i32 %i.ag, %i.ae            ; 2 uses
  %i.ai = lshr i32 %i.j, 3
  %i.aj = and i32 %i.ai, 15
  %i.ak = or disjoint i32 %i.ah, %i.aj            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 65536
  %i.am = lshr i32 %i.ah, 6
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1112
  %i.aq = and i32 %i.ak, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw i64 1, %i.ar                    ; 2 uses
  %i.at = and i64 %i.ap, %i.as
  %.not.i.i.i = icmp eq i64 %i.at, 0
  %i.au = zext nneg i32 %i.ak to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.au ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 66048
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.an
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !1112
  %i.az = and i64 %i.ay, %i.as
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !768 ; 4 uses
  %i.bb = load atomic i8, ptr @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero acquire, align 8
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %bb.h, !prof !1283

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero) #24
  %.not.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero, i64 8), align 4
  %i.be = tail call ptr @llvm.invariant.start.p0(i64 12, ptr nonnull @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load atomic i32, ptr %i.bf seq_cst, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IiEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ba)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IiEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i

_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IiEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i: ; preds = %bb.i, %bb.h
  %i.bh = shl i32 %i.e, 3
  %i.bi = and i32 %i.bh, 56
  %i.bj = shl i32 %i.a, 6
  %i.bk = and i32 %i.bj, 448                      ; 2 uses
  %i.bl = and i32 %i.j, 7
  %i.bm = or disjoint i32 %i.bi, %i.bl            ; 2 uses
  %i.bn = or disjoint i32 %i.bm, %i.bk
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !768 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bo, null
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.bp
  %.0.i.i.i.i.i = select i1 %.not5.i.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero, ptr %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i.i.i.i, i64 12, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bs = lshr exact i32 %i.bk, 6
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !1112
  %i.bw = zext nneg i32 %i.bm to i64
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IiEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i, %bb.d, %bb.b
  %.0.in = phi i64 [ %i.ab, %bb.b ], [ %i.az, %bb.d ], [ %i.by, %_ZNK7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IiEELj3EE10probeValueERKNS3_5CoordERS5_.exit.i ]
  %.0 = icmp ne i64 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEC2ERKSC_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEC5ERKSC_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %0, i8 0, i64 33, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_M_realloc_insertIJRKSD_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1146 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1145   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1145
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1146
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1147
  %i.m = load ptr, ptr %1, align 8, !tbaa !1148
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1148
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1145   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1147
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1146
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1328
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !1329
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.318", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5872)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1148, !noalias !5872
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1148, !alias.scope !5872
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5872
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5872
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5873)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1148, !noalias !5873
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1148, !alias.scope !5873
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5873
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5873
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1328
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !1329
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1148
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1148
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1146
  %i.c = load ptr, ptr %0, align 8, !tbaa !1145
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EE22setPruneCancelledTilesEb(ptr noundef nonnull align 8 dereferenceable(33) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.a, ptr %i.b, align 8, !tbaa !1329
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEclERSB_m(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %4 = alloca %"class.std::unordered_map", align 8 ; 21 uses
  %5 = alloca %"struct.std::pair.287", align 8    ; 7 uses
  %6 = alloca %"struct.std::pair.287", align 4    ; 6 uses
  %7 = alloca %"class.std::unordered_set", align 8 ; 20 uses
  %8 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %10 = alloca %"class.std::unique_ptr.329", align 8 ; 9 uses
  %11 = alloca %"struct.std::pair.287", align 4   ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1148
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1148
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.ed, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1328
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.i, ptr %i.g, align 8, !tbaa !1328
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(68) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !1328
  %i.l = load float, ptr %i.k, align 4, !tbaa !1161 ; 2 uses
  %i.m = fneg float %i.l
  store float %i.m, ptr %i.a, align 4, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store float %i.l, ptr %i.b, align 4, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !1096
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 1, ptr %i.o, align 8, !tbaa !1097
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !1098
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !816
  %i.u = and i64 %i.t, 4294967295
  %.not100 = icmp eq i64 %i.u, 0
  br i1 %.not100, label %.loopexit419, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !814  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.not1.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not1.i.i.i, label %.loopexit420, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.ab, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !942
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.loopexit420, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.x
  br i1 %.not.i.i.i, label %.loopexit420, label %.lr.ph.i.i.i, !llvm.loop !36

.loopexit420:                                     ; preds = %bb.f, %.lr.ph.i.i.i, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.f ] ; 2 uses
  %.not382446 = icmp eq ptr %.sroa.2.1.i, %i.x
  br i1 %.not382446, label %.loopexit419, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit420
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.g

end_hunk_9
begin_hunk_10_@_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEclERS8_m:bb.a
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1112
  %i.bs = and i64 %indvars.iv97, 63
  %i.bt = shl nuw i64 1, %i.bs                    ; 3 uses
  %i.bu = and i64 %i.br, %i.bt
  %.not89 = icmp eq i64 %i.bu, 0
  br i1 %.not89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bp ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1112
  %i.bx = or i64 %i.bw, %i.bt
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit
  %i.by = xor i64 %i.bt, -1
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bp ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !1112
  %i.cb = and i64 %i.ca, %i.by
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit: ; preds = %bb.p, %bb.o, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit57
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next98, 512
  br i1 %exitcond99.not, label %bb.i, label %.preheader, !llvm.loop !5880

bb.q:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !1328
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !1161
  %i.ce = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %1) ; 0 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !768   ; 5 uses
  %.not.i.i60 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i60, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKfb.exit, label %vector.ph107

vector.ph107:                                     ; preds = %bb.q
  %i.cg = fneg float %i.cd
  %broadcast.splatinsert108 = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat109 = shufflevector <4 x float> %broadcast.splatinsert108, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next113.3, %vector.body110 ] ; 5 uses
  %i.ch = shl nuw nsw i64 %index111, 2
  %next.gep112 = getelementptr i8, ptr %i.cf, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep112, i64 16
  store <4 x float> %broadcast.splat109, ptr %next.gep112, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat109, ptr %i.ci, align 4, !tbaa !1161
  %index.next113 = shl i64 %index111, 2
  %i.cj = getelementptr i8, ptr %i.cf, i64 %index.next113 ; 2 uses
  %next.gep112.1 = getelementptr i8, ptr %i.cj, i64 32
  %i.ck = getelementptr i8, ptr %i.cj, i64 48
  store <4 x float> %broadcast.splat109, ptr %next.gep112.1, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat109, ptr %i.ck, align 4, !tbaa !1161
  %index.next113.1 = shl i64 %index111, 2
  %i.cl = getelementptr i8, ptr %i.cf, i64 %index.next113.1 ; 2 uses
  %next.gep112.2 = getelementptr i8, ptr %i.cl, i64 64
  %i.cm = getelementptr i8, ptr %i.cl, i64 80
  store <4 x float> %broadcast.splat109, ptr %next.gep112.2, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat109, ptr %i.cm, align 4, !tbaa !1161
  %index.next113.2 = shl i64 %index111, 2
  %i.cn = getelementptr i8, ptr %i.cf, i64 %index.next113.2 ; 2 uses
  %next.gep112.3 = getelementptr i8, ptr %i.cn, i64 96
  %i.co = getelementptr i8, ptr %i.cn, i64 112
  store <4 x float> %broadcast.splat109, ptr %next.gep112.3, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat109, ptr %i.co, align 4, !tbaa !1161
  %index.next113.3 = add nuw nsw i64 %index111, 32 ; 2 uses
  %i.cp = icmp eq i64 %index.next113.3, 512
  br i1 %i.cp, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKfb.exit, label %vector.body110, !llvm.loop !5881

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKfb.exit: ; preds = %vector.body110, %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false)
  br label %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread

.preheader90:                                     ; preds = %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIfLj3EEEfE22isPartiallyConstructedERKS6_.exit.thread85, %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79 ], [ 0, %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIfLj3EEEfE22isPartiallyConstructedERKS6_.exit.thread85 ] ; 6 uses
  %i.cq = load atomic i32, ptr %i.ar seq_cst, align 4
  %.not.i.i.i.i67 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i67, label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit70, label %bb.r

bb.r:                                             ; preds = %.preheader90
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.aq)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit70

_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit70: ; preds = %.preheader90, %bb.r
  %i.cr = load ptr, ptr %i.aq, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.cr, null
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %.0.i.i.i69 = select i1 %.not.i.i.i68, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cs ; 2 uses
  %i.ct = load atomic i32, ptr %i.ae seq_cst, align 8
  %.not.i.i.i.i71 = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i.i71, label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74, label %bb.s

bb.s:                                             ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit70
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74

_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit70, %bb.s
  %i.cu = load ptr, ptr %1, align 8, !tbaa !768   ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv
  %.0.i.i.i73 = select i1 %.not.i.i.i72, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cv
  %i.cw = load float, ptr %.0.i.i.i69, align 4, !tbaa !1161
  %i.cx = load float, ptr %.0.i.i.i73, align 4, !tbaa !1161
  %i.cy = fcmp olt float %i.cw, %i.cx
  br i1 %i.cy, label %bb.t, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74
  %i.cz = load atomic i32, ptr %i.ae seq_cst, align 8
  %.not.i.i.i75 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i75, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76: ; preds = %bb.u, %bb.t
  %i.da = load ptr, ptr %1, align 8, !tbaa !768   ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.da, null
  br i1 %.not.i.i77, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78, label %bb.v

bb.v:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76
  %i.db = load float, ptr %.0.i.i.i69, align 4, !tbaa !1161
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  store float %i.db, ptr %i.dc, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76, %bb.v
  %i.dd = lshr i64 %indvars.iv, 6
  %i.de = and i64 %i.dd, 67108863                 ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !1112
  %i.dh = and i64 %indvars.iv, 63
  %i.di = shl nuw i64 1, %i.dh                    ; 3 uses
  %i.dj = and i64 %i.dg, %i.di
  %.not88 = icmp eq i64 %i.dj, 0
  br i1 %.not88, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.de ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !1112
  %i.dm = or i64 %i.dl, %i.di
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79

bb.x:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78
  %i.dn = xor i64 %i.di, -1
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.de ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !1112
  %i.dq = and i64 %i.dp, %i.dn
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79: ; preds = %bb.x, %bb.w, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread, label %.preheader90, !llvm.loop !5882

_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread: ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79, %bb.h, %bb.f, %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKfb.exit, %bb.i, %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIfLj3EEEfE22isPartiallyConstructedERKS6_.exit, %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.080.095, i64 40 ; 2 uses
  %.not86 = icmp eq ptr %i.dr, %i.ab
  br i1 %.not86, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread, %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIfLj3EEEfE15allocateAndFillERS6_RKf.exit, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEC2ERKSC_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEC5ERKSC_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %0, i8 0, i64 33, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_M_realloc_insertIJRKSD_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1177 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1176   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1177
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1178
  %i.m = load ptr, ptr %1, align 8, !tbaa !1179
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1179
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1176   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1178
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1177
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1338
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !1339
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.348", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5887)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1179, !noalias !5887
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1179, !alias.scope !5887
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5887
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5887
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5888)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1179, !noalias !5888
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1179, !alias.scope !5888
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5888
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5888
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1338
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !1339
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1179
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1179
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1177
  %i.c = load ptr, ptr %0, align 8, !tbaa !1176
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EE22setPruneCancelledTilesEb(ptr noundef nonnull align 8 dereferenceable(33) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.a, ptr %i.b, align 8, !tbaa !1339
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEclERSB_m(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %4 = alloca %"class.std::unordered_map", align 8 ; 21 uses
  %5 = alloca %"struct.std::pair.287", align 8    ; 7 uses
  %6 = alloca %"struct.std::pair.287", align 4    ; 6 uses
  %7 = alloca %"class.std::unordered_set", align 8 ; 20 uses
  %8 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 10 uses
  %10 = alloca %"class.std::unique_ptr.359", align 8 ; 9 uses
  %11 = alloca %"struct.std::pair.287", align 4   ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1179
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1179
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.ed, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1338
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.i, ptr %i.g, align 8, !tbaa !1338
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !1338
  %i.l = load double, ptr %i.k, align 8, !tbaa !1192 ; 2 uses
  %i.m = fneg double %i.l
  store double %i.m, ptr %i.a, align 8, !tbaa !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store double %i.l, ptr %i.b, align 8, !tbaa !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !1096
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 1, ptr %i.o, align 8, !tbaa !1097
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !1098
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !816
  %i.u = and i64 %i.t, 4294967295
  %.not100 = icmp eq i64 %i.u, 0
  br i1 %.not100, label %.loopexit419, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !814  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.not1.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not1.i.i.i, label %.loopexit420, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.ab, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !964
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.loopexit420, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.x
  br i1 %.not.i.i.i, label %.loopexit420, label %.lr.ph.i.i.i, !llvm.loop !42

.loopexit420:                                     ; preds = %bb.f, %.lr.ph.i.i.i, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.f ] ; 2 uses
  %.not382446 = icmp eq ptr %.sroa.2.1.i, %i.x
  br i1 %.not382446, label %.loopexit419, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit420
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.g

end_hunk_10
begin_hunk_11_@_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEclERS8_m:bb.a
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1112
  %i.bs = and i64 %indvars.iv97, 63
  %i.bt = shl nuw i64 1, %i.bs                    ; 3 uses
  %i.bu = and i64 %i.br, %i.bt
  %.not89 = icmp eq i64 %i.bu, 0
  br i1 %.not89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bp ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1112
  %i.bx = or i64 %i.bw, %i.bt
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit
  %i.by = xor i64 %i.bt, -1
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bp ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !1112
  %i.cb = and i64 %i.ca, %i.by
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit: ; preds = %bb.p, %bb.o, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit57
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next98, 512
  br i1 %exitcond99.not, label %bb.i, label %.preheader, !llvm.loop !5895

bb.q:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !1338
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !1192
  %i.ce = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %1) ; 0 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !768   ; 5 uses
  %.not.i.i60 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i60, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE4fillERKdb.exit, label %vector.ph107

vector.ph107:                                     ; preds = %bb.q
  %i.cg = fneg double %i.cd
  %broadcast.splatinsert108 = insertelement <2 x double> poison, double %i.cg, i64 0
  %broadcast.splat109 = shufflevector <2 x double> %broadcast.splatinsert108, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next113.3, %vector.body110 ] ; 5 uses
  %i.ch = shl nuw nsw i64 %index111, 3
  %next.gep112 = getelementptr i8, ptr %i.cf, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep112, i64 16
  store <2 x double> %broadcast.splat109, ptr %next.gep112, align 8, !tbaa !1192
  store <2 x double> %broadcast.splat109, ptr %i.ci, align 8, !tbaa !1192
  %index.next113 = shl i64 %index111, 3
  %i.cj = getelementptr i8, ptr %i.cf, i64 %index.next113 ; 2 uses
  %next.gep112.1 = getelementptr i8, ptr %i.cj, i64 32
  %i.ck = getelementptr i8, ptr %i.cj, i64 48
  store <2 x double> %broadcast.splat109, ptr %next.gep112.1, align 8, !tbaa !1192
  store <2 x double> %broadcast.splat109, ptr %i.ck, align 8, !tbaa !1192
  %index.next113.1 = shl i64 %index111, 3
  %i.cl = getelementptr i8, ptr %i.cf, i64 %index.next113.1 ; 2 uses
  %next.gep112.2 = getelementptr i8, ptr %i.cl, i64 64
  %i.cm = getelementptr i8, ptr %i.cl, i64 80
  store <2 x double> %broadcast.splat109, ptr %next.gep112.2, align 8, !tbaa !1192
  store <2 x double> %broadcast.splat109, ptr %i.cm, align 8, !tbaa !1192
  %index.next113.2 = shl i64 %index111, 3
  %i.cn = getelementptr i8, ptr %i.cf, i64 %index.next113.2 ; 2 uses
  %next.gep112.3 = getelementptr i8, ptr %i.cn, i64 96
  %i.co = getelementptr i8, ptr %i.cn, i64 112
  store <2 x double> %broadcast.splat109, ptr %next.gep112.3, align 8, !tbaa !1192
  store <2 x double> %broadcast.splat109, ptr %i.co, align 8, !tbaa !1192
  %index.next113.3 = add nuw nsw i64 %index111, 16 ; 2 uses
  %i.cp = icmp eq i64 %index.next113.3, 512
  br i1 %i.cp, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE4fillERKdb.exit, label %vector.body110, !llvm.loop !5896

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE4fillERKdb.exit: ; preds = %vector.body110, %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false)
  br label %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread

.preheader90:                                     ; preds = %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIdLj3EEEdE22isPartiallyConstructedERKS6_.exit.thread85, %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit79
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit79 ], [ 0, %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIdLj3EEEdE22isPartiallyConstructedERKS6_.exit.thread85 ] ; 6 uses
  %i.cq = load atomic i32, ptr %i.ar seq_cst, align 4
  %.not.i.i.i.i67 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i67, label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit70, label %bb.r

bb.r:                                             ; preds = %.preheader90
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.aq)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit70

_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit70: ; preds = %.preheader90, %bb.r
  %i.cr = load ptr, ptr %i.aq, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.cr, null
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  %.0.i.i.i69 = select i1 %.not.i.i.i68, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.cs ; 2 uses
  %i.ct = load atomic i32, ptr %i.ae seq_cst, align 8
  %.not.i.i.i.i71 = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i.i71, label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit74, label %bb.s

bb.s:                                             ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit70
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit74

_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit74: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit70, %bb.s
  %i.cu = load ptr, ptr %1, align 8, !tbaa !768   ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  %.0.i.i.i73 = select i1 %.not.i.i.i72, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.cv
  %i.cw = load double, ptr %.0.i.i.i69, align 8, !tbaa !1192
  %i.cx = load double, ptr %.0.i.i.i73, align 8, !tbaa !1192
  %i.cy = fcmp olt double %i.cw, %i.cx
  br i1 %i.cy, label %bb.t, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit79

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit74
  %i.cz = load atomic i32, ptr %i.ae seq_cst, align 8
  %.not.i.i.i75 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i75, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i76, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i76

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i76: ; preds = %bb.u, %bb.t
  %i.da = load ptr, ptr %1, align 8, !tbaa !768   ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.da, null
  br i1 %.not.i.i77, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit78, label %bb.v

bb.v:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i76
  %i.db = load double, ptr %.0.i.i.i69, align 8, !tbaa !1192
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv
  store double %i.db, ptr %i.dc, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit78

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit78: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i76, %bb.v
  %i.dd = lshr i64 %indvars.iv, 6
  %i.de = and i64 %i.dd, 67108863                 ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !1112
  %i.dh = and i64 %indvars.iv, 63
  %i.di = shl nuw i64 1, %i.dh                    ; 3 uses
  %i.dj = and i64 %i.dg, %i.di
  %.not88 = icmp eq i64 %i.dj, 0
  br i1 %.not88, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit78
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.de ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !1112
  %i.dm = or i64 %i.dl, %i.di
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit79

bb.x:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit78
  %i.dn = xor i64 %i.di, -1
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.de ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !1112
  %i.dq = and i64 %i.dp, %i.dn
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit79

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit79: ; preds = %bb.x, %bb.w, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread, label %.preheader90, !llvm.loop !5897

_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread: ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit79, %bb.h, %bb.f, %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE4fillERKdb.exit, %bb.i, %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIdLj3EEEdE22isPartiallyConstructedERKS6_.exit, %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.080.095, i64 40 ; 2 uses
  %.not86 = icmp eq ptr %i.dr, %i.ab
  br i1 %.not86, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread, %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIdLj3EEEdE15allocateAndFillERS6_RKd.exit, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEC2ERKSC_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEC5ERKSC_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %0, i8 0, i64 33, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_M_realloc_insertIJRKSD_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1146 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1145   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1145
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1146
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1147
  %i.m = load ptr, ptr %1, align 8, !tbaa !1148
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1148
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1145   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1147
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1146
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1341
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !1342
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.318", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5902)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1148, !noalias !5902
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1148, !alias.scope !5902
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5902
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5902
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5903)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1148, !noalias !5903
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1148, !alias.scope !5903
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5903
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5903
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1341
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !1342
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1148
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1148
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1146
  %i.c = load ptr, ptr %0, align 8, !tbaa !1145
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EE22setPruneCancelledTilesEb(ptr noundef nonnull align 8 dereferenceable(33) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.a, ptr %i.b, align 8, !tbaa !1342
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEclERSB_m(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %5 = alloca %"class.std::unordered_map", align 8 ; 21 uses
  %6 = alloca %"struct.std::pair.287", align 8    ; 7 uses
  %7 = alloca %"struct.std::pair.287", align 4    ; 7 uses
  %8 = alloca %"class.std::unordered_set", align 8 ; 20 uses
  %9 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %10 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 8 uses
  %11 = alloca %"class.std::unique_ptr.329", align 8 ; 9 uses
  %12 = alloca %"struct.std::pair.287", align 4   ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1148
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1148
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.ep, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1341
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.i, ptr %i.g, align 8, !tbaa !1341
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(68) %1) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !814  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 26 uses
  %.not1.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not1.i.i.i, label %.loopexit615, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.2.0.i = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !942
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.loopexit615, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i.i, label %.loopexit615, label %.lr.ph.i.i.i, !llvm.loop !36

.loopexit615:                                     ; preds = %bb.e, %.lr.ph.i.i.i, %bb.d
  %.sroa.2.1.i = phi ptr [ %i.l, %bb.d ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ], [ %i.q, %bb.e ] ; 2 uses
  %.not571651 = icmp eq ptr %.sroa.2.1.i, %i.m
  br i1 %.not571651, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !814
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit615
  %i.r = phi ptr [ %i.l, %.loopexit615 ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0534.0.lcssa = phi ptr [ null, %.loopexit615 ], [ %.sroa.0534.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %.loopexit615 ], [ %.sroa.11.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.20.0.lcssa = phi ptr [ null, %.loopexit615 ], [ %.sroa.20.1, %._crit_edge.loopexit ] ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.m, %i.r
  br i1 %.not2.i.i.i, label %.loopexit609, label %.lr.ph.i.i.i160

.lr.ph.i.i.i160:                                  ; preds = %._crit_edge, %bb.f
  %.sroa.2.0.i161 = phi ptr [ %i.u, %bb.f ], [ %i.r, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i161, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !942
  %.not1.i.i.i162 = icmp eq ptr %i.t, null
  br i1 %.not1.i.i.i162, label %bb.f, label %.loopexit609

bb.f:                                             ; preds = %.lr.ph.i.i.i160
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i161) #32 ; 3 uses
  %.not.i.i.i166 = icmp eq ptr %i.u, %i.m
  br i1 %.not.i.i.i166, label %.loopexit609, label %.lr.ph.i.i.i160, !llvm.loop !12

.lr.ph:                                           ; preds = %.loopexit615, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit
  %.sroa.6531.0655 = phi ptr [ %.sroa.6531.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit ], [ %.sroa.2.1.i, %.loopexit615 ] ; 3 uses
  %.sroa.20.0654 = phi ptr [ %.sroa.20.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit ], [ null, %.loopexit615 ] ; 9 uses
  %.sroa.11.0653 = phi ptr [ %.sroa.11.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit ], [ null, %.loopexit615 ] ; 6 uses
  %.sroa.0534.0652 = phi ptr [ %.sroa.0534.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit ], [ null, %.loopexit615 ] ; 10 uses
end_hunk_11
begin_hunk_12_@_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEclERS8_m:bb.a
  %i.bq = and i64 %i.bp, 67108863                 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1112
  %i.bt = and i64 %indvars.iv97, 63
  %i.bu = shl nuw i64 1, %i.bt                    ; 3 uses
  %i.bv = and i64 %i.bs, %i.bu
  %.not89 = icmp eq i64 %i.bv, 0
  br i1 %.not89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bq ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !1112
  %i.by = or i64 %i.bx, %i.bu
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit
  %i.bz = xor i64 %i.bu, -1
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bq ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1112
  %i.cc = and i64 %i.cb, %i.bz
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit: ; preds = %bb.p, %bb.o, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit57
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next98, 512
  br i1 %exitcond99.not, label %bb.i, label %.preheader, !llvm.loop !5916

bb.q:                                             ; preds = %bb.i
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !1341
  %i.ce = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %1) ; 0 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !768   ; 5 uses
  %.not.i.i60 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i60, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKfb.exit, label %vector.ph107

vector.ph107:                                     ; preds = %bb.q
  %.pre.i.i62 = load float, ptr %i.cd, align 4, !tbaa !1161
  %broadcast.splatinsert108 = insertelement <4 x float> poison, float %.pre.i.i62, i64 0
  %broadcast.splat109 = shufflevector <4 x float> %broadcast.splatinsert108, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next113.3, %vector.body110 ] ; 5 uses
  %i.cg = shl nuw nsw i64 %index111, 2
  %next.gep112 = getelementptr i8, ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep112, i64 16
  store <4 x float> %broadcast.splat109, ptr %next.gep112, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat109, ptr %i.ch, align 4, !tbaa !1161
  %index.next113 = shl i64 %index111, 2
  %i.ci = getelementptr i8, ptr %i.cf, i64 %index.next113 ; 2 uses
  %next.gep112.1 = getelementptr i8, ptr %i.ci, i64 32
  %i.cj = getelementptr i8, ptr %i.ci, i64 48
  store <4 x float> %broadcast.splat109, ptr %next.gep112.1, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat109, ptr %i.cj, align 4, !tbaa !1161
  %index.next113.1 = shl i64 %index111, 2
  %i.ck = getelementptr i8, ptr %i.cf, i64 %index.next113.1 ; 2 uses
  %next.gep112.2 = getelementptr i8, ptr %i.ck, i64 64
  %i.cl = getelementptr i8, ptr %i.ck, i64 80
  store <4 x float> %broadcast.splat109, ptr %next.gep112.2, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat109, ptr %i.cl, align 4, !tbaa !1161
  %index.next113.2 = shl i64 %index111, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %index.next113.2 ; 2 uses
  %next.gep112.3 = getelementptr i8, ptr %i.cm, i64 96
  %i.cn = getelementptr i8, ptr %i.cm, i64 112
  store <4 x float> %broadcast.splat109, ptr %next.gep112.3, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat109, ptr %i.cn, align 4, !tbaa !1161
  %index.next113.3 = add nuw nsw i64 %index111, 32 ; 2 uses
  %i.co = icmp eq i64 %index.next113.3, 512
  br i1 %i.co, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKfb.exit, label %vector.body110, !llvm.loop !5917

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKfb.exit: ; preds = %vector.body110, %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i8 0, i64 64, i1 false)
  br label %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread

.preheader90:                                     ; preds = %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIfLj3EEEfE22isPartiallyConstructedERKS6_.exit.thread85, %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79 ], [ 0, %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIfLj3EEEfE22isPartiallyConstructedERKS6_.exit.thread85 ] ; 6 uses
  %i.cp = load atomic i32, ptr %i.as seq_cst, align 4
  %.not.i.i.i.i67 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i.i67, label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit70, label %bb.r

bb.r:                                             ; preds = %.preheader90
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ar)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit70

_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit70: ; preds = %.preheader90, %bb.r
  %i.cq = load ptr, ptr %i.ar, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.cq, null
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %.0.i.i.i69 = select i1 %.not.i.i.i68, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cr ; 2 uses
  %i.cs = load atomic i32, ptr %i.af seq_cst, align 8
  %.not.i.i.i.i71 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i.i71, label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74, label %bb.s

bb.s:                                             ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit70
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74

_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit70, %bb.s
  %i.ct = load ptr, ptr %1, align 8, !tbaa !768   ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.ct, null
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv
  %.0.i.i.i73 = select i1 %.not.i.i.i72, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cu
  %i.cv = load float, ptr %.0.i.i.i69, align 4, !tbaa !1161
  %i.cw = load float, ptr %.0.i.i.i73, align 4, !tbaa !1161
  %i.cx = fcmp ogt float %i.cv, %i.cw
  br i1 %i.cx, label %bb.t, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74
  %i.cy = load atomic i32, ptr %i.af seq_cst, align 8
  %.not.i.i.i75 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i75, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76: ; preds = %bb.u, %bb.t
  %i.cz = load ptr, ptr %1, align 8, !tbaa !768   ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i77, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78, label %bb.v

bb.v:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76
  %i.da = load float, ptr %.0.i.i.i69, align 4, !tbaa !1161
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv
  store float %i.da, ptr %i.db, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76, %bb.v
  %i.dc = lshr i64 %indvars.iv, 6
  %i.dd = and i64 %i.dc, 67108863                 ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !1112
  %i.dg = and i64 %indvars.iv, 63
  %i.dh = shl nuw i64 1, %i.dg                    ; 3 uses
  %i.di = and i64 %i.df, %i.dh
  %.not88 = icmp eq i64 %i.di, 0
  br i1 %.not88, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dd ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !1112
  %i.dl = or i64 %i.dk, %i.dh
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79

bb.x:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78
  %i.dm = xor i64 %i.dh, -1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dd ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !1112
  %i.dp = and i64 %i.do, %i.dm
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79: ; preds = %bb.x, %bb.w, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread, label %.preheader90, !llvm.loop !5918

_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread: ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79, %bb.h, %bb.f, %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKfb.exit, %bb.i, %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIfLj3EEEfE22isPartiallyConstructedERKS6_.exit, %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.080.095, i64 40 ; 2 uses
  %.not86 = icmp eq ptr %i.dq, %i.ac
  br i1 %.not86, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread, %_ZN7openvdb5v13_05tools14merge_internal17UnallocatedBufferINS0_4tree10LeafBufferIfLj3EEEfE15allocateAndFillERS6_RKf.exit, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EEC2ERKSC_NS0_8DeepCopyE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EEC5ERKSC_NS0_8DeepCopyE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::DeepCopy", align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %0, i8 0, i64 33, i1 false)
  invoke void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_M_realloc_insertIJRKSD_RNS1_8DeepCopyEEEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit unwind label %bb.b

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE12emplace_backIJRKSD_RNS1_8DeepCopyEEEERSE_DpOT_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1177 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1176   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !800

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1177
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1178
  %i.m = load ptr, ptr %1, align 8, !tbaa !1179
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1179
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !1176   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !1178
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1177
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !1344
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !1345
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.348", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5923)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1179, !noalias !5923
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !1179, !alias.scope !5923
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1084, !noalias !5923
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !1084, !alias.scope !5923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5924)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !1179, !noalias !5924
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !1179, !alias.scope !5924
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1084, !noalias !5924
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !1084, !alias.scope !5924
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !1344
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !1345
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1179
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1179
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1177
  %i.c = load ptr, ptr %0, align 8, !tbaa !1176
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EE22setPruneCancelledTilesEb(ptr noundef nonnull align 8 dereferenceable(33) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.a, ptr %i.b, align 8, !tbaa !1345
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EEclERSB_m(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %5 = alloca %"class.std::unordered_map", align 8 ; 21 uses
  %6 = alloca %"struct.std::pair.287", align 8    ; 7 uses
  %7 = alloca %"struct.std::pair.287", align 4    ; 7 uses
  %8 = alloca %"class.std::unordered_set", align 8 ; 20 uses
  %9 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 7 uses
  %10 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 8 uses
  %11 = alloca %"class.std::unique_ptr.359", align 8 ; 9 uses
  %12 = alloca %"struct.std::pair.287", align 4   ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1179
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1179
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.ep, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1344
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.i, ptr %i.g, align 8, !tbaa !1344
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !814  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 26 uses
  %.not1.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not1.i.i.i, label %.loopexit615, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.2.0.i = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !964
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.loopexit615, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i.i, label %.loopexit615, label %.lr.ph.i.i.i, !llvm.loop !42

.loopexit615:                                     ; preds = %bb.e, %.lr.ph.i.i.i, %bb.d
  %.sroa.2.1.i = phi ptr [ %i.l, %bb.d ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ], [ %i.q, %bb.e ] ; 2 uses
  %.not571651 = icmp eq ptr %.sroa.2.1.i, %i.m
  br i1 %.not571651, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !814
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit615
  %i.r = phi ptr [ %i.l, %.loopexit615 ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0534.0.lcssa = phi ptr [ null, %.loopexit615 ], [ %.sroa.0534.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %.loopexit615 ], [ %.sroa.11.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.20.0.lcssa = phi ptr [ null, %.loopexit615 ], [ %.sroa.20.1, %._crit_edge.loopexit ] ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.m, %i.r
  br i1 %.not2.i.i.i, label %.loopexit609, label %.lr.ph.i.i.i160

.lr.ph.i.i.i160:                                  ; preds = %._crit_edge, %bb.f
  %.sroa.2.0.i161 = phi ptr [ %i.u, %bb.f ], [ %i.r, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i161, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !964
  %.not1.i.i.i162 = icmp eq ptr %i.t, null
  br i1 %.not1.i.i.i162, label %bb.f, label %.loopexit609

bb.f:                                             ; preds = %.lr.ph.i.i.i160
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i161) #32 ; 3 uses
  %.not.i.i.i166 = icmp eq ptr %i.u, %i.m
  br i1 %.not.i.i.i166, label %.loopexit609, label %.lr.ph.i.i.i160, !llvm.loop !14

.lr.ph:                                           ; preds = %.loopexit615, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit
  %.sroa.6531.0655 = phi ptr [ %.sroa.6531.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit ], [ %.sroa.2.1.i, %.loopexit615 ] ; 3 uses
  %.sroa.20.0654 = phi ptr [ %.sroa.20.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit ], [ null, %.loopexit615 ] ; 9 uses
  %.sroa.11.0653 = phi ptr [ %.sroa.11.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit ], [ null, %.loopexit615 ] ; 6 uses
  %.sroa.0534.0652 = phi ptr [ %.sroa.0534.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit ], [ null, %.loopexit615 ] ; 10 uses
end_hunk_12
begin_hunk_13_@_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools16PointPartitionerIjLj3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math5CoordEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math5CoordEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #31
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EED2Ev.exit.i.i

_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04math5CoordEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1971 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #31
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1966 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i2.i.i, label %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_sEclIsEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_sEclIsEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #31
  br label %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit.i.i

_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_sEclIsEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !1971 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i3.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools16PointPartitionerIjLj3EEEEvPT_.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i4.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i4.i.i: ; preds = %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #31
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools16PointPartitionerIjLj3EEEEvPT_.exit

_ZSt8_DestroyIN7openvdb5v13_05tools16PointPartitionerIjLj3EEEEvPT_.exit: ; preds = %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit.i.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i4.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools16PointPartitionerIjLj3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools16PointPartitionerIjLj3EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools16PointPartitionerIjLj3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1968 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !768
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_05tools16PointPartitionerIjLj3EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !786  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !798
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !799
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !2
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !2
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !800

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools26point_partitioner_internal9partitionIjsNS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEEEvRKT1_RKNS6_9TransformEjRSt10unique_ptrIA_T_St14default_deleteISI_EESM_RSG_IA_NS6_5CoordESJ_ISO_EERSH_RSG_IA_T0_SJ_ISU_EEbb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %11 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %12 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %13 = alloca %"class.std::vector.545", align 8  ; 12 uses
  %14 = alloca %"class.std::unique_ptr.1096", align 8 ; 10 uses
  %15 = alloca %"class.std::unique_ptr.1096", align 8 ; 10 uses
  %16 = alloca %"class.tbb::detail::d1::blocked_range.803", align 8 ; 9 uses
  %17 = alloca %"class.std::unique_ptr.1104", align 8 ; 10 uses
  %18 = alloca %"class.std::unique_ptr.1104", align 8 ; 7 uses
  %19 = alloca %"struct.openvdb::v13_0::tools::point_partitioner_internal::OrderSegmentsOp", align 8 ; 9 uses
  %20 = alloca %"class.std::vector.1027", align 8 ; 14 uses
  %21 = alloca %class.anon.1125, align 8          ; 10 uses
  %22 = alloca %"struct.openvdb::v13_0::tools::point_partitioner_internal::MoveSegmentDataOp", align 8 ; 6 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !741
  br i1 %8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !2042, !nonnull !789, !align !844 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1854
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1791
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = sdiv exact i64 %i.h, 12
  %i.j = shl nsw i64 %i.i, 1
  %.inv = icmp sgt i64 %i.h, -12
  %i.k = select i1 %.inv, i64 %i.j, i64 -1
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #30
  %i.m = load ptr, ptr %7, align 8, !tbaa !1966   ; 2 uses
  store ptr %i.l, ptr %7, align 8, !tbaa !1966
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EE5resetIPsvEEvT_.exit, label %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EE5resetIPsvEEvT_.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %7, align 8, !tbaa !1966   ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !1966
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EE5resetIPsvEEvT_.exit, label %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EE5resetIPsvEEvT_.exit.sink.split

_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EE5resetIPsvEEvT_.exit.sink.split: ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.m, %bb.b ], [ %i.n, %bb.c ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sink) #31
  br label %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EE5resetIPsvEEvT_.exit

_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EE5resetIPsvEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EE5resetIPsvEEvT_.exit.sink.split, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store ptr null, ptr %14, align 8, !tbaa !6215
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store ptr null, ptr %15, align 8, !tbaa !6215
  %i.o = load ptr, ptr %7, align 8, !tbaa !1966
  invoke void @_ZN7openvdb5v13_05tools26point_partitioner_internal13binAndSegmentIjsNS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEEEvRKT1_RKNS6_9TransformERSt10unique_ptrIA_NS2_5ArrayIT_E3PtrESt14default_deleteISL_EESP_RSt6vectorINS6_5CoordESaISR_EEjjPT0_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 5, i32 noundef %2, ptr noundef %i.o, i1 noundef zeroext %9)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EE5resetIPsvEEvT_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2045 ; 3 uses
  %i.r = load ptr, ptr %13, align 8, !tbaa !2046  ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 12                  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  store i64 %i.v, ptr %16, align 8, !tbaa !1779
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !1780
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 1, ptr %i.x, align 8, !tbaa !1781
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %23 = icmp ugt i64 %i.v, 2305843009213693951    ; 2 uses
  %i.y = shl nsw i64 %i.v, 3                      ; 4 uses
  %i.z = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.y, i64 8) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  %i.ab = or i1 %23, %i.aa
  %i.ac = extractvalue { i64, i1 } %i.z, 0
  %i.ad = select i1 %i.ab, i64 -1, i64 %i.ac      ; 2 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #30
          to label %bb.e unwind label %bb.o       ; 2 uses

bb.e:                                             ; preds = %bb.d
  store i64 %i.v, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 8      ; 2 uses
  %i.ag = icmp eq ptr %i.q, %i.r                  ; 5 uses
  br i1 %i.ag, label %.loopexit163.a, label %.loopexit163.loopexit.a

.loopexit163.loopexit.a:                          ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.y, i1 false), !tbaa !6216
  br label %.loopexit163.a

.loopexit163.a:                                   ; preds = %.loopexit163.loopexit.a, %bb.e
  store ptr %i.af, ptr %17, align 8, !tbaa !2048
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.ah = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #30
          to label %bb.f unwind label %bb.p       ; 2 uses

bb.f:                                             ; preds = %.loopexit163.a
  store i64 %i.v, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 8      ; 3 uses
  br i1 %i.ag, label %.loopexit162, label %.loopexit162.loopexit

.loopexit162.loopexit:                            ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.y, i1 false), !tbaa !6216
  br label %.loopexit162

.loopexit162:                                     ; preds = %.loopexit162.loopexit, %bb.f
  store ptr %i.ai, ptr %18, align 8, !tbaa !2048
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.aj = load ptr, ptr %14, align 8, !tbaa !2049
  %i.ak = load ptr, ptr %15, align 8, !tbaa !2049
  %i.al = load ptr, ptr %17, align 8, !tbaa !2048
  store ptr %i.aj, ptr %19, align 8, !tbaa !2051
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !2052
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.al, ptr %i.an, align 8, !tbaa !2053
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !2054
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i32 32768, ptr %i.ap, align 8, !tbaa !2055
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools26point_partitioner_internal15OrderSegmentsOpIjEEKNS1_16auto_partitionerEE3runERKS4_RKSA_RSC_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %.loopexit162
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.aq = load ptr, ptr %14, align 8, !tbaa !2049 ; 4 uses
  store ptr null, ptr %14, align 8, !tbaa !2049
  %.not.i.i.i79 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i79, label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetEDn.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %.idx.i.i.i.i = shl i64 %i.as, 3                ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %bb.h
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %.idx.i.i.i.i
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i, %.preheader.preheader.i.i.i.i
  %i.av = phi ptr [ %i.aw, %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i ], [ %i.au, %.preheader.preheader.i.i.i.i ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2057 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1971 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.az) #31
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 16) #31
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i.i, %.preheader.i.i.i.i
  %i.ba = icmp eq ptr %i.aw, %i.aq
  br i1 %i.ba, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i, label %.preheader.i.i.i.i

_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i, %bb.h
  %i.bb = add i64 %.idx.i.i.i.i, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bb) #31
  br label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetEDn.exit

_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetEDn.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  br i1 %23, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetEDn.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #29
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetEDn.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  %.not = icmp eq ptr %i.q, %i.r
  br i1 %.not, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.be = shl nuw nsw i64 %i.v, 2
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #30
          to label %.noexc80 unwind label %bb.r   ; 5 uses

.noexc80:                                         ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.bg = load ptr, ptr %20, align 8, !tbaa !1953 ; 4 uses
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !1955
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.l:                                             ; preds = %.noexc80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr align 4 %i.bg, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.l, %.noexc80
  %.not.i8.i = icmp eq ptr %i.bg, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !1954
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bo) #31
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.bf, ptr %20, align 8, !tbaa !1953
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !1955
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.v ; 2 uses
  store ptr %i.bp, ptr %i.bc, align 8, !tbaa !1954
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.k
  %i.bq = phi ptr [ %i.bp, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.k ]
  %i.br = phi ptr [ %i.bf, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.k ] ; 2 uses
  store i32 0, ptr %6, align 4, !tbaa !741
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  br label %bb.s

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.bt = add i32 %i.dh, %i.dj
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.bw = phi i64 [ %i.bv, %._crit_edge.loopexit ], [ 4, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ]
  %i.bx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bw) #30
          to label %bb.y unwind label %bb.r

bb.n:                                             ; preds = %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EE5resetIPsvEEvT_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.o:                                             ; preds = %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.p:                                             ; preds = %.loopexit163.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.q:                                             ; preds = %.loopexit162
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.bb

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %bb.j, %._crit_edge
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit131

bb.s:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.cd = phi ptr [ %i.br, %.lr.ph ], [ %i.db, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 5 uses
  %i.ce = phi i32 [ 0, %.lr.ph ], [ %i.dk, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %i.cf = phi ptr [ %i.bq, %.lr.ph ], [ %i.dc, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %i.cg = phi ptr [ %i.br, %.lr.ph ], [ %i.dd, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.055172 = phi i64 [ 0, %.lr.ph ], [ %i.dl, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %.not.i = icmp eq ptr %i.cg, %i.cf
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !741
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  store ptr %i.ch, ptr %i.bs, align 8, !tbaa !1955
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.u:                                             ; preds = %bb.s
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 5 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775804
  br i1 %i.cl, label %bb.v, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #29
          to label %.noexc82 unwind label %.loopexit.split-lp158

.noexc82:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.cm = ashr exact i64 %i.ck, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = call i64 @llvm.umin.i64(i64 %i.cn, i64 2305843009213693951)
  %i.cq = select i1 %i.co, i64 2305843009213693951, i64 %i.cp ; 3 uses
  %.not.i.i.i81 = icmp ne i64 %i.cq, 0
  call void @llvm.assume(i1 %.not.i.i.i81)
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #30
          to label %.noexc83 unwind label %.loopexit157.a ; 5 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.ck ; 2 uses
  %i.cu = load i32, ptr %6, align 4, !tbaa !741
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !741
  %i.cv = icmp sgt i64 %i.ck, 0
  br i1 %i.cv, label %bb.w, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %.noexc83
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr align 4 %i.cd, i64 %i.ck, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %.noexc83
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.cx = load ptr, ptr %i.bc, align 8, !tbaa !1954
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cz) #31
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.cs, ptr %20, align 8, !tbaa !1953
  store ptr %i.cw, ptr %i.bs, align 8, !tbaa !1955
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cq ; 2 uses
  store ptr %i.da, ptr %i.bc, align 8, !tbaa !1954
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.t
  %i.db = phi ptr [ %i.cs, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.cd, %bb.t ]
  %i.dc = phi ptr [ %i.da, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.cf, %bb.t ]
  %i.dd = phi ptr [ %i.cw, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.ch, %bb.t ]
  %i.de = load ptr, ptr %17, align 8, !tbaa !2048
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.055172
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1971
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !741 ; 2 uses
  %i.di = add i32 %i.dh, -1
  %i.dj = load i32, ptr %6, align 4, !tbaa !741   ; 2 uses
  %i.dk = add i32 %i.di, %i.dj                    ; 2 uses
  store i32 %i.dk, ptr %6, align 4, !tbaa !741
  %i.dl = add nuw i64 %.055172, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %i.v
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.s, !llvm.loop !6209

.loopexit157.a:                                   ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit159 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit131

.loopexit.split-lp158:                            ; preds = %bb.v
  %lpad.loopexit.split-lp160 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit131

bb.y:                                             ; preds = %._crit_edge
  %i.dm = load ptr, ptr %4, align 8, !tbaa !1971  ; 2 uses
  store ptr %i.bx, ptr %4, align 8, !tbaa !1971
  %.not.i.i84 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i84, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.dm) #31
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit: ; preds = %bb.y, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  br i1 %i.ag, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit
  %i.dn = load ptr, ptr %17, align 8, !tbaa !2048
  br label %bb.z

._crit_edge184:                                   ; preds = %._crit_edge178, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit
  %.053.lcssa = phi i32 [ 0, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit ], [ %.154.lcssa, %._crit_edge178 ]
  %i.do = load i32, ptr %6, align 4, !tbaa !741
  %i.dp = zext i32 %i.do to i64
  %i.dq = load ptr, ptr %4, align 8, !tbaa !1971
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dp
  store i32 %.053.lcssa, ptr %i.dr, align 4, !tbaa !741
  %i.ds = load ptr, ptr %0, align 8, !tbaa !2042, !nonnull !789, !align !844 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1854
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !1791
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = sdiv exact i64 %i.dy, 12                ; 2 uses
  %24 = icmp ugt i64 %i.dz, 4611686018427387903
  %25 = shl nsw i64 %i.dz, 2
  %i.ea = select i1 %24, i64 -1, i64 %25
  %i.eb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ea) #30
          to label %bb.ac unwind label %bb.ad

bb.z:                                             ; preds = %.lr.ph183, %._crit_edge178
  %.051182 = phi i64 [ 0, %.lr.ph183 ], [ %.1.lcssa, %._crit_edge178 ] ; 3 uses
  %.052181 = phi i64 [ 0, %.lr.ph183 ], [ %i.er, %._crit_edge178 ] ; 2 uses
  %.053180 = phi i32 [ 0, %.lr.ph183 ], [ %.154.lcssa, %._crit_edge178 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.052181
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1971 ; 6 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !741 ; 3 uses
  %i.ef = icmp ugt i32 %i.ee, 1
  br i1 %i.ef, label %.lr.ph177, label %._crit_edge178

.lr.ph177:                                        ; preds = %bb.z
  %i.eg = zext i32 %i.ee to i64
  %i.eh = load ptr, ptr %4, align 8, !tbaa !1971  ; 5 uses
  %i.ei = add nsw i64 %i.eg, -1                   ; 2 uses
  %xtraiter = and i64 %i.ei, 3                    ; 3 uses
  %i.ej = add i32 %i.ee, -2
  %i.ek = icmp ult i32 %i.ej, 3
  br i1 %i.ek, label %.epil.preheader, label %.lr.ph177.new

.lr.ph177.new:                                    ; preds = %.lr.ph177
  %unroll_iter = and i64 %i.ei, -4
  br label %bb.ab

._crit_edge178.loopexit.unr-lcssa:                ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge178, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge178.loopexit.unr-lcssa, %.lr.ph177
  %.050175.epil.init = phi i64 [ 1, %.lr.ph177 ], [ %i.fp, %._crit_edge178.loopexit.unr-lcssa ]
  %.1174.epil.init = phi i64 [ %.051182, %.lr.ph177 ], [ %i.fi, %._crit_edge178.loopexit.unr-lcssa ]
  %.154173.epil.init = phi i32 [ %.053180, %.lr.ph177 ], [ %i.fo, %._crit_edge178.loopexit.unr-lcssa ]
  %lcmp.mod270 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod270)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader
  %.050175.epil = phi i64 [ %.050175.epil.init, %.epil.preheader ], [ %i.eq, %bb.aa ] ; 2 uses
  %.1174.epil = phi i64 [ %.1174.epil.init, %.epil.preheader ], [ %i.el, %bb.aa ] ; 2 uses
  %.154173.epil = phi i32 [ %.154173.epil.init, %.epil.preheader ], [ %i.ep, %bb.aa ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %i.el = add i64 %.1174.epil, 1                  ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.1174.epil
  store i32 %.154173.epil, ptr %i.em, align 4, !tbaa !741
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.050175.epil
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !741
  %i.ep = add i32 %i.eo, %.154173.epil            ; 2 uses
  %i.eq = add nuw nsw i64 %.050175.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge178, label %bb.aa, !llvm.loop !6210

._crit_edge178:                                   ; preds = %._crit_edge178.loopexit.unr-lcssa, %bb.aa, %bb.z
  %.154.lcssa = phi i32 [ %.053180, %bb.z ], [ %i.fo, %._crit_edge178.loopexit.unr-lcssa ], [ %i.ep, %bb.aa ] ; 2 uses
  %.1.lcssa = phi i64 [ %.051182, %bb.z ], [ %i.fi, %._crit_edge178.loopexit.unr-lcssa ], [ %i.el, %bb.aa ]
  %i.er = add nuw i64 %.052181, 1                 ; 2 uses
  %exitcond205.not = icmp eq i64 %i.er, %i.v
  br i1 %exitcond205.not, label %._crit_edge184, label %bb.z, !llvm.loop !6211

bb.ab:                                            ; preds = %bb.ab, %.lr.ph177.new
  %.050175 = phi i64 [ 1, %.lr.ph177.new ], [ %i.fp, %bb.ab ] ; 5 uses
  %.1174 = phi i64 [ %.051182, %.lr.ph177.new ], [ %i.fi, %bb.ab ] ; 5 uses
  %.154173 = phi i32 [ %.053180, %.lr.ph177.new ], [ %i.fo, %bb.ab ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph177.new ], [ %niter.next.3, %bb.ab ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.1174
  store i32 %.154173, ptr %i.es, align 4, !tbaa !741
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.050175
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !741
  %i.ev = add i32 %i.eu, %.154173                 ; 2 uses
  %i.ew = getelementptr [4 x i8], ptr %i.eh, i64 %.1174
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  store i32 %i.ev, ptr %i.ex, align 4, !tbaa !741
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.050175
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !741
  %i.fb = add i32 %i.fa, %i.ev                    ; 2 uses
  %i.fc = getelementptr [4 x i8], ptr %i.eh, i64 %.1174
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  store i32 %i.fb, ptr %i.fd, align 4, !tbaa !741
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.050175
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !741
  %i.fh = add i32 %i.fg, %i.fb                    ; 2 uses
  %i.fi = add i64 %.1174, 4                       ; 3 uses
  %i.fj = getelementptr [4 x i8], ptr %i.eh, i64 %.1174
  %i.fk = getelementptr i8, ptr %i.fj, i64 12
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !741
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.050175
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !741
  %i.fo = add i32 %i.fn, %i.fh                    ; 3 uses
  %i.fp = add nuw nsw i64 %.050175, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge178.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !6212

bb.ac:                                            ; preds = %._crit_edge184
  %i.fq = load ptr, ptr %3, align 8, !tbaa !1971  ; 2 uses
  store ptr %i.eb, ptr %3, align 8, !tbaa !1971
  %.not.i.i85 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i85, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i86

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i86: ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #31
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i86, %bb.ac
  br i1 %i.ag, label %._crit_edge192, label %_ZNSt12_Vector_baseIPjSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPjSaIS0_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87
  %i.fr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #30
          to label %.lr.ph191.preheader unwind label %.thread ; 3 uses

.lr.ph191.preheader:                              ; preds = %_ZNSt12_Vector_baseIPjSaIS0_EE11_M_allocateEm.exit.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.v
  %i.ft = load ptr, ptr %3, align 8, !tbaa !1971
  br label %.lr.ph191

._crit_edge192:                                   ; preds = %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87 ], [ %.sroa.0.3, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ] ; 7 uses
  %.sroa.18.0.lcssa = phi ptr [ null, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87 ], [ %.sroa.18.3, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %i.fu = load i32, ptr %6, align 4, !tbaa !741   ; 2 uses
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul nuw nsw i64 %i.fv, 12               ; 2 uses
  %i.fx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fw) #30
          to label %bb.aj unwind label %bb.av     ; 2 uses

bb.ad:                                            ; preds = %._crit_edge184
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit131

.thread:                                          ; preds = %_ZNSt12_Vector_baseIPjSaIS0_EE11_M_allocateEm.exit.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit131

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit
  %.0190 = phi i64 [ %i.gt, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ], [ 0, %.lr.ph191.preheader ] ; 2 uses
  %.0150189 = phi ptr [ %i.gs, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ], [ %i.ft, %.lr.ph191.preheader ] ; 3 uses
  %.sroa.18.0188 = phi ptr [ %.sroa.18.3, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ], [ %i.fs, %.lr.ph191.preheader ] ; 5 uses
  %.sroa.12.0187 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ], [ %i.fr, %.lr.ph191.preheader ] ; 3 uses
  %.sroa.0.0186 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ], [ %i.fr, %.lr.ph191.preheader ] ; 7 uses
  %.not.i91 = icmp eq ptr %.sroa.12.0187, %.sroa.18.0188
  br i1 %.not.i91, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph191
  store ptr %.0150189, ptr %.sroa.12.0187, align 8, !tbaa !1971
  br label %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit

bb.af:                                            ; preds = %.lr.ph191
  %i.ga = ptrtoint ptr %.sroa.18.0188 to i64
  %i.gb = ptrtoint ptr %.sroa.0.0186 to i64
  %i.gc = sub i64 %i.ga, %i.gb                    ; 6 uses
  %i.gd = icmp eq i64 %i.gc, 9223372036854775800
  br i1 %i.gd, label %bb.ag, label %_ZNKSt6vectorIPjSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #29
          to label %.noexc95 unwind label %.loopexit.split-lp

.noexc95:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIPjSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.af
  %i.ge = ashr exact i64 %i.gc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i92 = call i64 @llvm.umax.i64(i64 %i.ge, i64 1)
  %i.gf = add nsw i64 %.sroa.speculated.i.i.i92, %i.ge ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.ge
  %i.gh = call i64 @llvm.umin.i64(i64 %i.gf, i64 1152921504606846975)
  %i.gi = select i1 %i.gg, i64 1152921504606846975, i64 %i.gh ; 3 uses
  %.not.i.i.i93 = icmp ne i64 %i.gi, 0
  call void @llvm.assume(i1 %.not.i.i.i93)
  %i.gj = shl nuw nsw i64 %i.gi, 3
  %i.gk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #30
          to label %.noexc96 unwind label %.loopexit156 ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIPjSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 %i.gc ; 2 uses
  store ptr %.0150189, ptr %i.gl, align 8, !tbaa !1971
  %i.gm = icmp sgt i64 %i.gc, 0
  br i1 %i.gm, label %bb.ah, label %_ZNSt6vectorIPjSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.ah:                                            ; preds = %.noexc96
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gk, ptr align 8 %.sroa.0.0186, i64 %i.gc, i1 false)
  br label %_ZNSt6vectorIPjSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPjSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.ah, %.noexc96
  %.not.i17.i.i94 = icmp eq ptr %.sroa.0.0186, null
  br i1 %.not.i17.i.i94, label %_ZNSt6vectorIPjSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPjSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0186, i64 noundef %i.gc) #31
  br label %_ZNSt6vectorIPjSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPjSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIPjSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gi
  br label %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit
end_hunk_13
begin_hunk_14_@_ZN7openvdb5v13_05tools26point_partitioner_internal13binAndSegmentIjsNS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEEEvRKT1_RKNS6_9TransformERSt10unique_ptrIA_NS2_5ArrayIT_E3PtrESt14default_deleteISL_EESP_RSt6vectorINS6_5CoordESaISR_EEjjPT0_b:bb.a
  %.040101 = phi i64 [ %i.by, %._crit_edge ], [ 0, %_ZN7openvdb5v13_05tools26point_partitioner_internal17BinPointIndicesOpINS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEjsED2Ev.exit ] ; 2 uses
  %i.bs = load ptr, ptr %12, align 8, !tbaa !2074
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.040101
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2090 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !814 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %.not98 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not98, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.af, %.lr.ph102
  %i.by = add nuw i64 %.040101, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %.09194
  br i1 %exitcond.not, label %._crit_edge103.loopexit, label %.lr.ph102, !llvm.loop !6217

.lr.ph:                                           ; preds = %.lr.ph102, %bb.af
  %.sroa.086.099 = phi ptr [ %i.eg, %bb.af ], [ %i.bw, %.lr.ph102 ] ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 32 ; 4 uses
  %.02126.i.i = load ptr, ptr %i.bl, align 8, !tbaa !902 ; 2 uses
  %.not27.i.i = icmp eq ptr %.02126.i.i, null
  br i1 %.not27.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !741 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 36
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 40
  %i.ce = load i32, ptr %i.cd, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.lr.ph.i.i
  %.02128.i.i = phi ptr [ %.02126.i.i, %.lr.ph.i.i ], [ %.02128.i.i.be, %.backedge.i.backedge ] ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02128.i.i, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !741 ; 3 uses
  %i.ch = icmp slt i32 %i.ca, %i.cg
  br i1 %i.ch, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i, label %bb.s

bb.s:                                             ; preds = %.backedge.i
  %i.ci = icmp sgt i32 %i.ca, %i.cg
  br i1 %i.ci, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %.02128.i.i, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !741 ; 2 uses
  %i.cl = icmp slt i32 %i.cc, %i.ck
  br i1 %i.cl, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = icmp sgt i32 %i.cc, %i.ck
  br i1 %i.cm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.thread.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i: ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %.02128.i.i, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !741
  %i.cp = icmp slt i32 %i.ce, %i.co
  br i1 %i.cp, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.thread.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i, %bb.t, %.backedge.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.02128.i.i, i64 16
  %.021.i.i = load ptr, ptr %i.cq, align 8, !tbaa !902 ; 2 uses
  %.not.i.i84 = icmp eq ptr %.021.i.i, null
  br i1 %.not.i.i84, label %._crit_edge.thread.i.i, label %.backedge.i.backedge

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i, %bb.u, %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %.02128.i.i, i64 24
  %.021.i13.i = load ptr, ptr %i.cr, align 8, !tbaa !902 ; 2 uses
  %.not.i14.i = icmp eq ptr %.021.i13.i, null
  br i1 %.not.i14.i, label %._crit_edge.i.thread.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.thread.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i
  %.02128.i.i.be = phi ptr [ %.021.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i ], [ %.021.i13.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.thread.i ]
  br label %.backedge.i, !llvm.loop !134

._crit_edge.thread.i.i:                           ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i, %.lr.ph
  %.020.lcssa40.i.i = phi ptr [ %i.bk, %.lr.ph ], [ %.02128.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i ] ; 4 uses
  %i.cs = load ptr, ptr %i.bm, align 8, !tbaa !814
  %i.ct = icmp eq ptr %.020.lcssa40.i.i, %i.cs
  br i1 %i.ct, label %bb.z, label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread.i.i
  %i.cu = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa40.i.i) #32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !741
  %.pre24.i = load i32, ptr %i.bz, align 4, !tbaa !741
  br label %._crit_edge.i.thread.i

._crit_edge.i.thread.i:                           ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.thread.i, %bb.v
  %i.cv = phi i32 [ %.pre24.i, %bb.v ], [ %i.ca, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.thread.i ] ; 2 uses
  %i.cw = phi i32 [ %.pre.i, %bb.v ], [ %i.cg, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.thread.i ] ; 2 uses
  %.020.lcssa39.i.i = phi ptr [ %.020.lcssa40.i.i, %bb.v ], [ %.02128.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.thread.i ] ; 3 uses
  %.sroa.06.0.i.i = phi ptr [ %i.cu, %bb.v ], [ %.02128.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.thread.i ] ; 2 uses
  %i.cx = icmp slt i32 %i.cw, %i.cv
  br i1 %i.cx, label %bb.z, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.thread.i
  %i.cy = icmp sgt i32 %i.cw, %i.cv
  br i1 %i.cy, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 36
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !741 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 36
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !741 ; 2 uses
  %i.dd = icmp slt i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = icmp sgt i32 %i.da, %i.dc
  br i1 %i.de, label %bb.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit5.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit5.i.i: ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 40
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !741
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 40
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !741
  %i.dj = icmp slt i32 %i.dg, %i.di
  br i1 %i.dj, label %bb.z, label %bb.af

bb.z:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit5.i.i, %bb.x, %._crit_edge.i.thread.i, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.020.lcssa39.i.i, %bb.x ], [ %.020.lcssa39.i.i, %._crit_edge.i.thread.i ], [ %.020.lcssa39.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit5.i.i ], [ %.020.lcssa40.i.i, %._crit_edge.thread.i.i ] ; 5 uses
  %i.dk = icmp eq ptr %.sroa.4.0.i.ph.i, %i.bk
  br i1 %i.dk, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.dm = load i32, ptr %i.bz, align 4, !tbaa !741 ; 2 uses
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !741 ; 2 uses
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dp = icmp sgt i32 %i.dm, %i.dn
  br i1 %i.dp, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !741 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !741 ; 2 uses
  %i.du = icmp slt i32 %i.dr, %i.dt
  br i1 %i.du, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = icmp sgt i32 %i.dr, %i.dt
  br i1 %i.dv, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 40
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !741
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 40
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !741
  %i.ea = icmp slt i32 %i.dx, %i.dz
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.eb = phi i1 [ false, %bb.ad ], [ true, %bb.z ], [ true, %bb.aa ], [ false, %bb.ab ], [ true, %bb.ac ], [ %i.ea, %bb.ae ]
  %i.ec = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30
          to label %.noexc85 unwind label %bb.ag  ; 2 uses

.noexc85:                                         ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ed, ptr noundef nonnull align 4 dereferenceable(12) %i.bz, i64 12, i1 false), !tbaa.struct !901
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.eb, ptr noundef nonnull %i.ec, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bk) #24
  %i.ee = load i64, ptr %i.bo, align 8, !tbaa !816
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.bo, align 8, !tbaa !816
  br label %bb.af

bb.af:                                            ; preds = %bb.w, %bb.y, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit5.i.i, %.noexc85
  %i.eg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.086.099) #32 ; 2 uses
  %.not = icmp eq ptr %i.eg, %i.bx
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6218

bb.ag:                                            ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNSt6vectorIN7openvdb5v13_04math5CoordESaIS3_EE6assignISt23_Rb_tree_const_iteratorIS3_EvEEvT_S9_.exit: ; preds = %._crit_edge103
  %i.ei = load ptr, ptr %i.bl, align 8, !tbaa !813
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.ei)
          to label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE5clearEv.exit unwind label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04math5CoordESaIS3_EE6assignISt23_Rb_tree_const_iteratorIS3_EvEEvT_S9_.exit
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #33
  unreachable

_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math5CoordESaIS3_EE6assignISt23_Rb_tree_const_iteratorIS3_EvEEvT_S9_.exit
  store ptr null, ptr %i.bl, align 8, !tbaa !813
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !814
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !815
  store i64 0, ptr %i.bo, align 8, !tbaa !816
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !2045 ; 2 uses
  %i.en = load ptr, ptr %4, align 8, !tbaa !2046  ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = sdiv exact i64 %i.eq, 12                ; 5 uses
  %18 = icmp ugt i64 %i.er, 2305843009213693951
  %i.es = shl nsw i64 %i.er, 3                    ; 3 uses
  %i.et = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.es, i64 8) ; 2 uses
  %i.eu = extractvalue { i64, i1 } %i.et, 1
  %i.ev = or i1 %18, %i.eu
  %i.ew = extractvalue { i64, i1 } %i.et, 0
  %i.ex = select i1 %i.ev, i64 -1, i64 %i.ew      ; 2 uses
  %i.ey = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ex) #30
          to label %bb.ai unwind label %bb.bb     ; 2 uses

bb.ai:                                            ; preds = %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE5clearEv.exit
  store i64 %i.er, ptr %i.ey, align 8
  %i.ez = getelementptr i8, ptr %i.ey, i64 8      ; 2 uses
  %i.fa = icmp eq ptr %i.em, %i.en                ; 2 uses
  br i1 %i.fa, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr align 8 %i.ez, i8 0, i64 %i.es, i1 false), !tbaa !6221
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ai
  %i.fb = load ptr, ptr %2, align 8, !tbaa !2049  ; 4 uses
  store ptr %i.ez, ptr %2, align 8, !tbaa !2049
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -8 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8            ; 2 uses
  %.idx.i.i.i = shl i64 %i.fd, 3                  ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.aj
  %i.ff = getelementptr inbounds i8, ptr %i.fb, i64 %.idx.i.i.i
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i, %.preheader.preheader.i.i.i
  %i.fg = phi ptr [ %i.fh, %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i ], [ %i.ff, %.preheader.preheader.i.i.i ]
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -8 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !2057 ; 3 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i56, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.preheader.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1971 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.fk) #31
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 16) #31
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i, %.preheader.i.i.i
  %i.fl = icmp eq ptr %i.fh, %i.fb
  br i1 %i.fl, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i, label %.preheader.i.i.i

_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i, %bb.aj
  %i.fm = add i64 %.idx.i.i.i, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fm) #31
  br label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit

_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i
  %i.fn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ex) #30
          to label %bb.al unwind label %bb.bb     ; 2 uses

bb.al:                                            ; preds = %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit
  store i64 %i.er, ptr %i.fn, align 8
  %i.fo = getelementptr i8, ptr %i.fn, i64 8      ; 3 uses
  br i1 %i.fa, label %.split42, label %.split43

.split42:                                         ; preds = %bb.al
  %i.fp = load ptr, ptr %3, align 8, !tbaa !2049  ; 4 uses
  store ptr %i.fo, ptr %3, align 8, !tbaa !2049
  %.not.i.i57 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i57, label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit67, label %bb.am

bb.am:                                            ; preds = %.split42
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -8 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8            ; 2 uses
  %.idx.i.i.i58 = shl i64 %i.fr, 3                ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i66, label %.preheader.preheader.i.i.i59

.preheader.preheader.i.i.i59:                     ; preds = %bb.am
  %i.ft = getelementptr inbounds i8, ptr %i.fp, i64 %.idx.i.i.i58
  br label %.preheader.i.i.i60

.preheader.i.i.i60:                               ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i65, %.preheader.preheader.i.i.i59
  %i.fu = phi ptr [ %i.fv, %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i65 ], [ %i.ft, %.preheader.preheader.i.i.i59 ]
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -8 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !2057 ; 3 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i61, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i65, label %bb.an

bb.an:                                            ; preds = %.preheader.i.i.i60
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !1971 ; 2 uses
  %.not.i.i.i.i.i.i.i62 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i.i62, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i64, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i63

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i63: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.fy) #31
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i64

_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i64: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i63, %bb.an
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 16) #31
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i65

_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i65: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i64, %.preheader.i.i.i60
  %i.fz = icmp eq ptr %i.fv, %i.fp
  br i1 %i.fz, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i66, label %.preheader.i.i.i60

_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i66: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i65, %bb.am
  %i.ga = add i64 %.idx.i.i.i58, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.fq, i64 noundef %i.ga) #31
  br label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit67

_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit67: ; preds = %.split42, %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i66
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.gb = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.gb, align 8, !tbaa !1781
  br label %bb.aq

.split43:                                         ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr align 8 %i.fo, i8 0, i64 %i.es, i1 false), !tbaa !6221
  %i.gc = load ptr, ptr %3, align 8, !tbaa !2049  ; 4 uses
  store ptr %i.fo, ptr %3, align 8, !tbaa !2049
  %.not.i.i68 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i68, label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit78, label %bb.ao

bb.ao:                                            ; preds = %.split43
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -8 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8            ; 2 uses
  %.idx.i.i.i69 = shl i64 %i.ge, 3                ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i77, label %.preheader.preheader.i.i.i70

.preheader.preheader.i.i.i70:                     ; preds = %bb.ao
  %i.gg = getelementptr inbounds i8, ptr %i.gc, i64 %.idx.i.i.i69
  br label %.preheader.i.i.i71

.preheader.i.i.i71:                               ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i76, %.preheader.preheader.i.i.i70
  %i.gh = phi ptr [ %i.gi, %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i76 ], [ %i.gg, %.preheader.preheader.i.i.i70 ]
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -8 ; 3 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !2057 ; 3 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i72, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i76, label %bb.ap

bb.ap:                                            ; preds = %.preheader.i.i.i71
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !1971 ; 2 uses
  %.not.i.i.i.i.i.i.i73 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i.i.i.i73, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i75, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i74

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i74: ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.gl) #31
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i75

_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i75: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i74, %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 16) #31
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i76

_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i76: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i.i75, %.preheader.i.i.i71
  %i.gm = icmp eq ptr %i.gi, %i.gc
  br i1 %i.gm, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i77, label %.preheader.i.i.i71

_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i77: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i.i76, %bb.ao
  %i.gn = add i64 %.idx.i.i.i69, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gn) #31
  br label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit78

_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit78: ; preds = %.split43, %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i77
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  store i64 %i.er, ptr %16, align 8, !tbaa !1779
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.go, align 8, !tbaa !1780
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 1, ptr %i.gp, align 8, !tbaa !1781
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit78, %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EE5resetIPS8_vEEvT_.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.gq = load ptr, ptr %12, align 8, !tbaa !2074 ; 5 uses
  %i.gr = load ptr, ptr %2, align 8, !tbaa !2049
  %i.gs = load ptr, ptr %3, align 8, !tbaa !2049
  %i.gt = load ptr, ptr %4, align 8, !tbaa !2046
  store ptr %i.gq, ptr %17, align 8, !tbaa !2092
  %i.gu = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.gr, ptr %i.gu, align 8, !tbaa !2093
  %i.gv = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.gs, ptr %i.gv, align 8, !tbaa !2094
  %i.gw = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.gt, ptr %i.gw, align 8, !tbaa !2095
  %i.gx = getelementptr inbounds nuw i8, ptr %17, i64 32
end_hunk_14
