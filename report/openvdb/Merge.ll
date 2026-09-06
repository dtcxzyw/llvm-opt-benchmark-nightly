Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Merge?download=true
inline.NumInlined: 29141
inline.NumDeleted: 10217
loop-unroll.NumCompletelyUnrolled: 85
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 346
begin_hunk_0_@_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE11MaskUnionOpclERNS5_INS6_INS6_INS7_INS0_9ValueMaskELj3EEELj4EEELj5EEEEEm:bb.a
_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS4_INS3_8LeafNodeINS2_9ValueMaskELj3EEELj4EEELj5EEESt14default_deleteIS9_EESaISC_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS4_INS3_8LeafNodeINS2_9ValueMaskELj3EEELj4EEELj5EEESt14default_deleteIS9_EESC_EvT_SE_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 true

bb.f:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.lr.ph:                                           ; preds = %.loopexit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit
  %.030 = phi i64 [ %i.ar, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit ], [ 0, %.loopexit ] ; 2 uses
  %.sroa.6.029 = phi ptr [ %.sroa.6.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit ], [ %.sroa.2.1.i, %.loopexit ] ; 2 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !389
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.030 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !369
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.6.029, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2223
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 532480
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 270336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false), !tbaa.struct !402
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !369
  store ptr null, ptr %i.aj, align 8, !tbaa !369
  %i.aq = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE8addChildEPS8_(ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef %i.ap)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.h:                                             ; preds = %.lr.ph
  %i.ar = add i64 %.030, 1
  %i.as = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.6.029) #28 ; 3 uses
  %.not2.i.i.i16 = icmp eq ptr %i.as, %i.t
  br i1 %.not2.i.i.i16, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %bb.h, %bb.i
  %.sroa.6.2 = phi ptr [ %i.av, %bb.i ], [ %i.as, %bb.h ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.6.2, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !555
  %.not1.i.i.i18 = icmp eq ptr %i.au, null
  br i1 %.not1.i.i.i18, label %bb.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.6.2) #28 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.av, %i.t
  br i1 %.not.i.i.i19, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit, label %.lr.ph.i.i.i17, !llvm.loop !15

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EppEv.exit: ; preds = %.lr.ph.i.i.i17, %bb.i, %bb.h
  %.sroa.6.3 = phi ptr [ %i.as, %bb.h ], [ %.sroa.6.2, %.lr.ph.i.i.i17 ], [ %i.av, %bb.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.6.3, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ag, %bb.f ]
  call void @_ZNSt6vectorISt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS4_INS3_8LeafNodeINS2_9ValueMaskELj3EEELj4EEELj5EEESt14default_deleteIS9_EESaISC_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !558    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !559  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #22, !inline_history !2224
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !300
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2225
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2225
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !269
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !248
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !301

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !16

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !558
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !560
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESF_EvT_SH_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISD_EESaISH_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISD_EESaISH_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !559  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !558    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !558
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !559
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !560
  %i.m = load ptr, ptr %1, align 8, !tbaa !561
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !561
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt6vectorISH_SaISH_EEEEPSH_ET0_T_SQ_SP_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EEC2ERKSH_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !558    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !560
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EEC2ERKSH_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !559
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !566
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISD_EESaISH_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISD_EESaISH_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.276", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !561, !noalias !2230
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !561, !alias.scope !2230
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2230
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !561, !noalias !2231
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !561, !alias.scope !2231
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2231
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2231
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EEC2ISt15_Deque_iteratorISF_RKSF_PSK_EvEET_SO_RKSG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !566
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EEC2ISt15_Deque_iteratorISF_RKSF_PSK_EvEET_SO_RKSG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !561
  %i.b = load ptr, ptr %1, align 8, !tbaa !570
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !571  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !572  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !570    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !561
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !573
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !572  ; 3 uses
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE17_S_check_init_lenEmRKSG_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE17_S_check_init_lenEmRKSG_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE17_S_check_init_lenEmRKSG_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE17_S_check_init_lenEmRKSG_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !558
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !560
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !561
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !571
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !572
  store ptr %i.g, ptr %5, align 8, !tbaa !570
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !561
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !572
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS2_9ValueMaskELj3EEELj4EEELj5EEEEEEEEERKSG_PSH_EPSG_ET0_T_SN_SM_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !559
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !558   ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !560
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESaISF_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !561
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !561
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !559
  %i.c = load ptr, ptr %0, align 8, !tbaa !558
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14probeConstNodeIS6_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !248
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !386 ; 3 uses
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
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !595
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !269 ; 2 uses
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
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !595
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !269
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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !600    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !601  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #22, !inline_history !2235
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !300
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2236
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2236
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !269
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !248
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !301

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !23

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !600
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !602
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !601  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !600    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !600
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !601
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !602
  %i.m = load ptr, ptr %1, align 8, !tbaa !603
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !603
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !600    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !602
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !601
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !608
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.297", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.297", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.294", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !603, !noalias !2241
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !603, !alias.scope !2241
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2241
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2241
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !603, !noalias !2242
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !603, !alias.scope !2242
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2242
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2242
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !608
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.297", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.297", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !603
  %i.b = load ptr, ptr %1, align 8, !tbaa !611
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !612  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !613  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !611    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !603
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !614
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !613  ; 3 uses
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !600
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !602
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !603
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !612
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !613
  store ptr %i.g, ptr %5, align 8, !tbaa !611
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !603
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !613
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEERKSF_PSG_EPSF_ET0_T_SM_SL_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !601
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !600   ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !602
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !603
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !603
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !601
  %i.c = load ptr, ptr %0, align 8, !tbaa !600
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE14probeConstNodeIS5_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !248
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !421 ; 3 uses
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
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !595
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !269 ; 2 uses
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
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !595
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !269
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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !628    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !629  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #22, !inline_history !2246
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !300
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2247
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2247
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !269
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !248
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !301

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !26

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !628
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !630
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !629  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !628    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !628
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !629
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !630
  %i.m = load ptr, ptr %1, align 8, !tbaa !631
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !631
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !628    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !630
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !629
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !637
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.318", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !631, !noalias !2252
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !631, !alias.scope !2252
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2252
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !631, !noalias !2253
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !631, !alias.scope !2253
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2253
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2253
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !637
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.321", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !631
  %i.b = load ptr, ptr %1, align 8, !tbaa !640
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !641  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !642  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !640    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !631
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !643
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !642  ; 3 uses
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !628
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !630
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !631
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !641
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !642
  store ptr %i.g, ptr %5, align 8, !tbaa !640
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !631
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !642
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEERKSF_PSG_EPSF_ET0_T_SM_SL_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !629
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !628   ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !630
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !631
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !631
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !629
  %i.c = load ptr, ptr %0, align 8, !tbaa !628
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE14probeConstNodeIS5_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !248
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !440 ; 3 uses
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
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !595
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !269 ; 2 uses
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
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !595
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !269
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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !659    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !660  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #22, !inline_history !2264
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !300
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2265
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2265
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !269
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !248
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !301

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !32

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !659
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !661
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !660  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !659    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !659
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !660
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !661
  %i.m = load ptr, ptr %1, align 8, !tbaa !662
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !662
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !659    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !661
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !660
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !668
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.348", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2270)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !662, !noalias !2270
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !662, !alias.scope !2270
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2270
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !662, !noalias !2271
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !662, !alias.scope !2271
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2271
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2271
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !668
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.351", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !662
  %i.b = load ptr, ptr %1, align 8, !tbaa !671
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !672  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !673  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !671    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !662
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !674
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !673  ; 3 uses
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !659
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !661
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !662
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !672
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !673
  store ptr %i.g, ptr %5, align 8, !tbaa !671
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !662
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !673
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEERKSF_PSG_EPSF_ET0_T_SM_SL_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !660
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !659   ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !661
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !662
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !662
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !660
  %i.c = load ptr, ptr %0, align 8, !tbaa !659
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_3
begin_hunk_4_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE14probeConstNodeIS5_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !248
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !459 ; 3 uses
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
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !595
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !269 ; 2 uses
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
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !595
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !269
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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !689    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !690  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #22, !inline_history !2282
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !300
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2283
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2283
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !269
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !248
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !301

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !36

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !689
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !691
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !690  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !689    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !689
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !690
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !691
  %i.m = load ptr, ptr %1, align 8, !tbaa !692
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !692
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !689    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !691
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !690
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !697
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.379", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.379", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.376", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !692, !noalias !2288
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !692, !alias.scope !2288
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2288
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !692, !noalias !2289
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !692, !alias.scope !2289
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2289
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2289
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !697
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.379", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.379", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !692
  %i.b = load ptr, ptr %1, align 8, !tbaa !700
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !701  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !702  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !700    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !692
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !703
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !702  ; 3 uses
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !689
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !691
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !692
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !701
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !702
  store ptr %i.g, ptr %5, align 8, !tbaa !700
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !692
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !702
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEERKSF_PSG_EPSF_ET0_T_SM_SL_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !690
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !689   ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !691
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !692
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !692
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !690
  %i.c = load ptr, ptr %0, align 8, !tbaa !689
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_4
begin_hunk_5_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE14probeConstNodeIS5_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !248
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !477 ; 3 uses
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
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !595
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !269 ; 2 uses
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
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !595
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !269
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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !717    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !718  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #22, !inline_history !2301
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !300
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2302
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2302
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !269
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !248
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !301

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !39

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !717
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !719
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESE_EvT_SG_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !718  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !717    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !717
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !718
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !719
  %i.m = load ptr, ptr %1, align 8, !tbaa !720
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !720
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !717    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !719
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !718
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !726
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.407", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.407", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.404", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !720, !noalias !2307
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !720, !alias.scope !2307
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2307
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2307
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !720, !noalias !2308
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !720, !alias.scope !2308
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2308
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2308
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !726
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.407", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.407", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !720
  %i.b = load ptr, ptr %1, align 8, !tbaa !729
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !730  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !731  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !729    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !720
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !732
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !731  ; 3 uses
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE17_S_check_init_lenEmRKSF_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !717
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !719
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !720
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !730
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !731
  store ptr %i.g, ptr %5, align 8, !tbaa !729
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !720
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !731
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEERKSF_PSG_EPSF_ET0_T_SM_SL_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !718
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !717   ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !719
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !720
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !720
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !718
  %i.c = load ptr, ptr %0, align 8, !tbaa !717
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_5
begin_hunk_6_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE14probeConstNodeIS5_EEPKT_RKNS0_4math5CoordE:bb.a
_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !248
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !495 ; 3 uses
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
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !595
  %i.bi = and i32 %i.bc, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bh
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !269 ; 2 uses
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
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !595
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !269
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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !746    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !747  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #22, !inline_history !2320
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !300
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2321
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2321
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !269
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !248
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !301

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !42

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !746
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !748
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !747  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !746    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !746
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !747
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !748
  %i.m = load ptr, ptr %1, align 8, !tbaa !749
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !749
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !746    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !748
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !747
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !755
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.435", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.435", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.432", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2326)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !749, !noalias !2326
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !749, !alias.scope !2326
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2326
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2326
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !749, !noalias !2327
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !749, !alias.scope !2327
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2327
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2327
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !755
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.435", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.435", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !749
  %i.b = load ptr, ptr %1, align 8, !tbaa !758
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !759  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !760  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !758    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !749
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !761
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !760  ; 3 uses
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !746
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !748
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !749
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !759
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !760
  store ptr %i.g, ptr %5, align 8, !tbaa !758
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !749
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !760
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS2_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEERKSI_PSJ_EPSI_ET0_T_SP_SO_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !747
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !746   ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !748
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !749
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !749
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !747
  %i.c = load ptr, ptr %0, align 8, !tbaa !746
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
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !595
  %i.az = and i64 %i.ay, %i.as
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !269 ; 4 uses
  %i.bb = load atomic i8, ptr @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero acquire, align 8
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %bb.h, !prof !766

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) #22
  %.not.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <2 x float> zeroinitializer, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, align 4
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, i64 8), align 4
  %i.be = tail call ptr @llvm.invariant.start.p0(i64 12, ptr nonnull @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) #22
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
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !269 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bo, null
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.bp
  %.0.i.i.i.i.i = select i1 %.not5.i.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, ptr %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i.i.i.i, i64 12, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bs = lshr exact i32 %i.bk, 6
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !595
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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !769    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !770  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #22, !inline_history !2339
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !300
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2340
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2340
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !269
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !248
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !301

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !45

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !769
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !771
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !770  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !769    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !769
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !770
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !771
  %i.m = load ptr, ptr %1, align 8, !tbaa !772
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !772
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !769    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !771
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !770
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !778
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.463", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.463", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.460", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !772, !noalias !2345
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !772, !alias.scope !2345
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2345
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !772, !noalias !2346
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !772, !alias.scope !2346
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2346
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2346
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !778
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.463", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.463", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !772
  %i.b = load ptr, ptr %1, align 8, !tbaa !781
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !782  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !783  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !781    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !772
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !784
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !783  ; 3 uses
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !769
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !771
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !772
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !782
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !783
  store ptr %i.g, ptr %5, align 8, !tbaa !781
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !772
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !783
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS2_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEERKSI_PSJ_EPSI_ET0_T_SP_SO_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !770
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !769   ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !771
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !772
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !772
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !770
  %i.c = load ptr, ptr %0, align 8, !tbaa !769
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
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !595
  %i.az = and i64 %i.ay, %i.as
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !269 ; 4 uses
  %i.bb = load atomic i8, ptr @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero acquire, align 8
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %bb.h, !prof !766

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero) #22
  %.not.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero, i8 0, i64 24, i1 false), !alias.scope !2367
  %i.be = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero) #22
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
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !269 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bo, null
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bp
  %.0.i.i.i.i.i = select i1 %.not5.i.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE2atEjE5sZero, ptr %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i.i.i.i, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bs = lshr exact i32 %i.bk, 6
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !595
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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !790    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !791  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1232) %i.e) #22, !inline_history !2368
  br label %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i

_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclEPSC_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !300
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2369
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22, !inline_history !2369
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !269
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !248
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.g, label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i, !prof !301

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7MaskPtrD2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !48

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !790
  br label %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit

_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !792
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESH_EvT_SJ_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEC2ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEC5ERKSt6vectorINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !791  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !790    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !790
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !791
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !792
  %i.m = load ptr, ptr %1, align 8, !tbaa !793
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !793
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !790    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !792
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ERKSJ_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !791
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !799
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEC2ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEC5ERKSt5dequeINS1_11TreeToMergeISF_EESaISJ_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.491", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.491", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.488", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2374)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !793, !noalias !2374
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !793, !alias.scope !2374
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2374
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !793, !noalias !2375
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !793, !alias.scope !2375
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2375
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2375
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !799
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EEC2ISt15_Deque_iteratorISH_RKSH_PSM_EvEET_SQ_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.491", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.491", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !793
  %i.b = load ptr, ptr %1, align 8, !tbaa !802
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !803  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !804  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !802    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !793
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !805
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !804  ; 3 uses
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ae = mul nuw nsw i64 %i.ac, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26
          to label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i unwind label %bb.d

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i
  %i.ag = phi ptr [ null, %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i ], [ %i.af, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !790
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !792
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !793
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.aj, align 16, !tbaa !803
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !804
  store ptr %i.g, ptr %5, align 8, !tbaa !802
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.i, ptr %i.al, align 8, !tbaa !793
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.l, ptr %i.am, align 8, !tbaa !804
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN7openvdb5v13_05tools11TreeToMergeINS2_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS2_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEERKSI_PSJ_EPSI_ET0_T_SP_SO_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %5, ptr noundef %i.ag)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !791
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !790   ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !792
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEESaISH_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !793
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !793
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !791
  %i.c = load ptr, ptr %0, align 8, !tbaa !790
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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !269 ; 2 uses
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
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !595
  %i.cc = and i32 %i.bw, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !269
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a, %bb.l, %bb.k, %bb.j, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit ], [ null, %bb.k ], [ null, %bb.j ], [ %i.ci, %bb.l ], [ null, %bb.a ], [ null, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ null, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE10probeValueERKNS4_5CoordERS6_(ptr noundef nonnull align 8 dereferenceable(532496) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !248    ; 3 uses
  %i.b = shl i32 %i.a, 3
  %i.c = and i32 %i.b, 31744
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !248  ; 3 uses
  %i.f = lshr i32 %i.e, 2
  %i.g = and i32 %i.f, 992
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !248  ; 3 uses
  %i.k = lshr i32 %i.j, 7
  %i.l = and i32 %i.k, 31
  %i.m = or disjoint i32 %i.h, %i.l               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 524288
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !595
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !595
  %i.ab = and i64 %i.aa, %i.u
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !269 ; 3 uses
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
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !595
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
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !595
  %i.az = and i64 %i.ay, %i.as
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE10probeValueERKNS4_5CoordERS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !269 ; 4 uses
  %i.bb = load atomic i8, ptr @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero acquire, align 8
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %bb.h, !prof !766

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero) #22
  %.not.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero, i64 8), align 4
  %i.be = tail call ptr @llvm.invariant.start.p0(i64 12, ptr nonnull @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero) #22
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
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !269 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bo, null
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.bp
  %.0.i.i.i.i.i = select i1 %.not5.i.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE2atEjE5sZero, ptr %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i.i.i.i, i64 12, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bs = lshr exact i32 %i.bk, 6
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !595
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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !629  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !628    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !628
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !629
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !630
  %i.m = load ptr, ptr %1, align 8, !tbaa !631
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !631
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !628    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !630
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !629
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !811
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !812
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.318", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !631, !noalias !2385
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !631, !alias.scope !2385
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2385
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !631, !noalias !2386
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !631, !alias.scope !2386
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2386
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2386
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !811
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !812
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !631
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !631
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !629
  %i.c = load ptr, ptr %0, align 8, !tbaa !628
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
  store i8 %i.a, ptr %i.b, align 8, !tbaa !812
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
  %10 = alloca %"class.std::unique_ptr.329", align 8 ; 11 uses
  %11 = alloca %"struct.std::pair.287", align 4   ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !631
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !631
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.ee, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !811
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.i, ptr %i.g, align 8, !tbaa !811
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(68) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !811
  %i.l = load float, ptr %i.k, align 4, !tbaa !644 ; 2 uses
  %i.m = fneg float %i.l
  store float %i.m, ptr %i.a, align 4, !tbaa !644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store float %i.l, ptr %i.b, align 4, !tbaa !644
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !579
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 1, ptr %i.o, align 8, !tbaa !580
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !581
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !317
  %i.u = and i64 %i.t, 4294967295
  %.not100 = icmp eq i64 %i.u, 0
  br i1 %.not100, label %.loopexit421, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !315  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.not1.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not1.i.i.i, label %.loopexit422, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.ab, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !440
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.loopexit422, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.x
  br i1 %.not.i.i.i, label %.loopexit422, label %.lr.ph.i.i.i, !llvm.loop !27

.loopexit422:                                     ; preds = %bb.f, %.lr.ph.i.i.i, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.f ] ; 2 uses
  %.not384448 = icmp eq ptr %.sroa.2.1.i, %i.x
  br i1 %.not384448, label %.loopexit421, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit422
  %.sroa.5363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.g

end_hunk_9
begin_hunk_10_@_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEclERS8_m:bb.a
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !595
  %i.bs = and i64 %indvars.iv97, 63
  %i.bt = shl nuw i64 1, %i.bs                    ; 3 uses
  %i.bu = and i64 %i.br, %i.bt
  %.not89 = icmp eq i64 %i.bu, 0
  br i1 %.not89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bp ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !595
  %i.bx = or i64 %i.bw, %i.bt
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit
  %i.by = xor i64 %i.bt, -1
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bp ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !595
  %i.cb = and i64 %i.ca, %i.by
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit: ; preds = %bb.p, %bb.o, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit57
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next98, 512
  br i1 %exitcond99.not, label %bb.i, label %.preheader, !llvm.loop !2393

bb.q:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !811
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !644
  %i.ce = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %1) ; 0 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !269   ; 5 uses
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
  store <4 x float> %broadcast.splat109, ptr %next.gep112, align 4, !tbaa !644
  store <4 x float> %broadcast.splat109, ptr %i.ci, align 4, !tbaa !644
  %index.next113 = shl i64 %index111, 2
  %i.cj = getelementptr i8, ptr %i.cf, i64 %index.next113 ; 2 uses
  %next.gep112.1 = getelementptr i8, ptr %i.cj, i64 32
  %i.ck = getelementptr i8, ptr %i.cj, i64 48
  store <4 x float> %broadcast.splat109, ptr %next.gep112.1, align 4, !tbaa !644
  store <4 x float> %broadcast.splat109, ptr %i.ck, align 4, !tbaa !644
  %index.next113.1 = shl i64 %index111, 2
  %i.cl = getelementptr i8, ptr %i.cf, i64 %index.next113.1 ; 2 uses
  %next.gep112.2 = getelementptr i8, ptr %i.cl, i64 64
  %i.cm = getelementptr i8, ptr %i.cl, i64 80
  store <4 x float> %broadcast.splat109, ptr %next.gep112.2, align 4, !tbaa !644
  store <4 x float> %broadcast.splat109, ptr %i.cm, align 4, !tbaa !644
  %index.next113.2 = shl i64 %index111, 2
  %i.cn = getelementptr i8, ptr %i.cf, i64 %index.next113.2 ; 2 uses
  %next.gep112.3 = getelementptr i8, ptr %i.cn, i64 96
  %i.co = getelementptr i8, ptr %i.cn, i64 112
  store <4 x float> %broadcast.splat109, ptr %next.gep112.3, align 4, !tbaa !644
  store <4 x float> %broadcast.splat109, ptr %i.co, align 4, !tbaa !644
  %index.next113.3 = add nuw nsw i64 %index111, 32 ; 2 uses
  %i.cp = icmp eq i64 %index.next113.3, 512
  br i1 %i.cp, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKfb.exit, label %vector.body110, !llvm.loop !2394

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
  %i.cr = load ptr, ptr %i.aq, align 8, !tbaa !269 ; 2 uses
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
  %i.cu = load ptr, ptr %1, align 8, !tbaa !269   ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv
  %.0.i.i.i73 = select i1 %.not.i.i.i72, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cv
  %i.cw = load float, ptr %.0.i.i.i69, align 4, !tbaa !644
  %i.cx = load float, ptr %.0.i.i.i73, align 4, !tbaa !644
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
  %i.da = load ptr, ptr %1, align 8, !tbaa !269   ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.da, null
  br i1 %.not.i.i77, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78, label %bb.v

bb.v:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76
  %i.db = load float, ptr %.0.i.i.i69, align 4, !tbaa !644
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  store float %i.db, ptr %i.dc, align 4, !tbaa !644
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76, %bb.v
  %i.dd = lshr i64 %indvars.iv, 6
  %i.de = and i64 %i.dd, 67108863                 ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !595
  %i.dh = and i64 %indvars.iv, 63
  %i.di = shl nuw i64 1, %i.dh                    ; 3 uses
  %i.dj = and i64 %i.dg, %i.di
  %.not88 = icmp eq i64 %i.dj, 0
  br i1 %.not88, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.de ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !595
  %i.dm = or i64 %i.dl, %i.di
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79

bb.x:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78
  %i.dn = xor i64 %i.di, -1
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.de ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !595
  %i.dq = and i64 %i.dp, %i.dn
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79: ; preds = %bb.x, %bb.w, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread, label %.preheader90, !llvm.loop !2395

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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !660  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !659    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !659
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !660
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !661
  %i.m = load ptr, ptr %1, align 8, !tbaa !662
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !662
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !659    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !661
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !660
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !821
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !822
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.348", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !662, !noalias !2400
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !662, !alias.scope !2400
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2400
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !662, !noalias !2401
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !662, !alias.scope !2401
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2401
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2401
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !821
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !822
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !662
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !662
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !660
  %i.c = load ptr, ptr %0, align 8, !tbaa !659
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
  store i8 %i.a, ptr %i.b, align 8, !tbaa !822
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
  %10 = alloca %"class.std::unique_ptr.359", align 8 ; 11 uses
  %11 = alloca %"struct.std::pair.287", align 4   ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !662
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !662
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.ee, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !821
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.i, ptr %i.g, align 8, !tbaa !821
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !821
  %i.l = load double, ptr %i.k, align 8, !tbaa !675 ; 2 uses
  %i.m = fneg double %i.l
  store double %i.m, ptr %i.a, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store double %i.l, ptr %i.b, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !579
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 1, ptr %i.o, align 8, !tbaa !580
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !581
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !317
  %i.u = and i64 %i.t, 4294967295
  %.not100 = icmp eq i64 %i.u, 0
  br i1 %.not100, label %.loopexit421, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !315  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.not1.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not1.i.i.i, label %.loopexit422, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.ab, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !459
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.loopexit422, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.x
  br i1 %.not.i.i.i, label %.loopexit422, label %.lr.ph.i.i.i, !llvm.loop !33

.loopexit422:                                     ; preds = %bb.f, %.lr.ph.i.i.i, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.f ] ; 2 uses
  %.not384448 = icmp eq ptr %.sroa.2.1.i, %i.x
  br i1 %.not384448, label %.loopexit421, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit422
  %.sroa.5363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.g

end_hunk_10
begin_hunk_11_@_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEclERS8_m:bb.a
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !595
  %i.bs = and i64 %indvars.iv97, 63
  %i.bt = shl nuw i64 1, %i.bs                    ; 3 uses
  %i.bu = and i64 %i.br, %i.bt
  %.not89 = icmp eq i64 %i.bu, 0
  br i1 %.not89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bp ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !595
  %i.bx = or i64 %i.bw, %i.bt
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit
  %i.by = xor i64 %i.bt, -1
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bp ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !595
  %i.cb = and i64 %i.ca, %i.by
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit: ; preds = %bb.p, %bb.o, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit57
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next98, 512
  br i1 %exitcond99.not, label %bb.i, label %.preheader, !llvm.loop !2408

bb.q:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !821
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !675
  %i.ce = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %1) ; 0 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !269   ; 5 uses
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
  store <2 x double> %broadcast.splat109, ptr %next.gep112, align 8, !tbaa !675
  store <2 x double> %broadcast.splat109, ptr %i.ci, align 8, !tbaa !675
  %index.next113 = shl i64 %index111, 3
  %i.cj = getelementptr i8, ptr %i.cf, i64 %index.next113 ; 2 uses
  %next.gep112.1 = getelementptr i8, ptr %i.cj, i64 32
  %i.ck = getelementptr i8, ptr %i.cj, i64 48
  store <2 x double> %broadcast.splat109, ptr %next.gep112.1, align 8, !tbaa !675
  store <2 x double> %broadcast.splat109, ptr %i.ck, align 8, !tbaa !675
  %index.next113.1 = shl i64 %index111, 3
  %i.cl = getelementptr i8, ptr %i.cf, i64 %index.next113.1 ; 2 uses
  %next.gep112.2 = getelementptr i8, ptr %i.cl, i64 64
  %i.cm = getelementptr i8, ptr %i.cl, i64 80
  store <2 x double> %broadcast.splat109, ptr %next.gep112.2, align 8, !tbaa !675
  store <2 x double> %broadcast.splat109, ptr %i.cm, align 8, !tbaa !675
  %index.next113.2 = shl i64 %index111, 3
  %i.cn = getelementptr i8, ptr %i.cf, i64 %index.next113.2 ; 2 uses
  %next.gep112.3 = getelementptr i8, ptr %i.cn, i64 96
  %i.co = getelementptr i8, ptr %i.cn, i64 112
  store <2 x double> %broadcast.splat109, ptr %next.gep112.3, align 8, !tbaa !675
  store <2 x double> %broadcast.splat109, ptr %i.co, align 8, !tbaa !675
  %index.next113.3 = add nuw nsw i64 %index111, 16 ; 2 uses
  %i.cp = icmp eq i64 %index.next113.3, 512
  br i1 %i.cp, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE4fillERKdb.exit, label %vector.body110, !llvm.loop !2409

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
  %i.cr = load ptr, ptr %i.aq, align 8, !tbaa !269 ; 2 uses
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
  %i.cu = load ptr, ptr %1, align 8, !tbaa !269   ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  %.0.i.i.i73 = select i1 %.not.i.i.i72, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.cv
  %i.cw = load double, ptr %.0.i.i.i69, align 8, !tbaa !675
  %i.cx = load double, ptr %.0.i.i.i73, align 8, !tbaa !675
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
  %i.da = load ptr, ptr %1, align 8, !tbaa !269   ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.da, null
  br i1 %.not.i.i77, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit78, label %bb.v

bb.v:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i76
  %i.db = load double, ptr %.0.i.i.i69, align 8, !tbaa !675
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv
  store double %i.db, ptr %i.dc, align 8, !tbaa !675
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit78

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit78: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i76, %bb.v
  %i.dd = lshr i64 %indvars.iv, 6
  %i.de = and i64 %i.dd, 67108863                 ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !595
  %i.dh = and i64 %indvars.iv, 63
  %i.di = shl nuw i64 1, %i.dh                    ; 3 uses
  %i.dj = and i64 %i.dg, %i.di
  %.not88 = icmp eq i64 %i.dj, 0
  br i1 %.not88, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit78
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.de ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !595
  %i.dm = or i64 %i.dl, %i.di
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit79

bb.x:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE12setValueOnlyEjRKd.exit78
  %i.dn = xor i64 %i.di, -1
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.de ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !595
  %i.dq = and i64 %i.dp, %i.dn
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit79

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE14setActiveStateEjb.exit79: ; preds = %bb.x, %bb.w, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE8getValueEj.exit74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread, label %.preheader90, !llvm.loop !2410

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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !629  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !628    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !628
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !629
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !630
  %i.m = load ptr, ptr %1, align 8, !tbaa !631
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !631
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !628    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !630
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !629
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !824
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !825
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.321", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.318", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2415)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !631, !noalias !2415
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !631, !alias.scope !2415
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2415
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !631, !noalias !2416
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !631, !alias.scope !2416
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2416
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2416
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !824
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !825
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !631
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !631
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !629
  %i.c = load ptr, ptr %0, align 8, !tbaa !628
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
  store i8 %i.a, ptr %i.b, align 8, !tbaa !825
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
  %11 = alloca %"class.std::unique_ptr.329", align 8 ; 11 uses
  %12 = alloca %"struct.std::pair.287", align 4   ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !631
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !631
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.eq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !824
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.i, ptr %i.g, align 8, !tbaa !824
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(68) %1) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !315  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 26 uses
  %.not1.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not1.i.i.i, label %.loopexit617, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.2.0.i = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !440
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.loopexit617, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i.i, label %.loopexit617, label %.lr.ph.i.i.i, !llvm.loop !27

.loopexit617:                                     ; preds = %bb.e, %.lr.ph.i.i.i, %bb.d
  %.sroa.2.1.i = phi ptr [ %i.l, %bb.d ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ], [ %i.q, %bb.e ] ; 2 uses
  %.not573653 = icmp eq ptr %.sroa.2.1.i, %i.m
  br i1 %.not573653, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !315
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit617
  %i.r = phi ptr [ %i.l, %.loopexit617 ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0536.0.lcssa = phi ptr [ null, %.loopexit617 ], [ %.sroa.0536.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %.loopexit617 ], [ %.sroa.11.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.20.0.lcssa = phi ptr [ null, %.loopexit617 ], [ %.sroa.20.1, %._crit_edge.loopexit ] ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.m, %i.r
  br i1 %.not2.i.i.i, label %.loopexit611, label %.lr.ph.i.i.i160

.lr.ph.i.i.i160:                                  ; preds = %._crit_edge, %bb.f
  %.sroa.2.0.i161 = phi ptr [ %i.u, %bb.f ], [ %i.r, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i161, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !440
  %.not1.i.i.i162 = icmp eq ptr %i.t, null
  br i1 %.not1.i.i.i162, label %bb.f, label %.loopexit611

bb.f:                                             ; preds = %.lr.ph.i.i.i160
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i161) #28 ; 3 uses
  %.not.i.i.i166 = icmp eq ptr %i.u, %i.m
  br i1 %.not.i.i.i166, label %.loopexit611, label %.lr.ph.i.i.i160, !llvm.loop !9

.lr.ph:                                           ; preds = %.loopexit617, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit
  %.sroa.6533.0657 = phi ptr [ %.sroa.6533.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit ], [ %.sroa.2.1.i, %.loopexit617 ] ; 3 uses
  %.sroa.20.0656 = phi ptr [ %.sroa.20.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit ], [ null, %.loopexit617 ] ; 9 uses
  %.sroa.11.0655 = phi ptr [ %.sroa.11.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit ], [ null, %.loopexit617 ] ; 6 uses
  %.sroa.0536.0654 = phi ptr [ %.sroa.0536.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKfEppEv.exit ], [ null, %.loopexit617 ] ; 10 uses
end_hunk_11
begin_hunk_12_@_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EEclERS8_m:bb.a
  %i.bq = and i64 %i.bp, 67108863                 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !595
  %i.bt = and i64 %indvars.iv97, 63
  %i.bu = shl nuw i64 1, %i.bt                    ; 3 uses
  %i.bv = and i64 %i.bs, %i.bu
  %.not89 = icmp eq i64 %i.bv, 0
  br i1 %.not89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bq ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !595
  %i.by = or i64 %i.bx, %i.bu
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit
  %i.bz = xor i64 %i.bu, -1
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bq ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !595
  %i.cc = and i64 %i.cb, %i.bz
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit: ; preds = %bb.p, %bb.o, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit57
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next98, 512
  br i1 %exitcond99.not, label %bb.i, label %.preheader, !llvm.loop !2429

bb.q:                                             ; preds = %bb.i
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !824
  %i.ce = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %1) ; 0 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !269   ; 5 uses
  %.not.i.i60 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i60, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKfb.exit, label %vector.ph107

vector.ph107:                                     ; preds = %bb.q
  %.pre.i.i62 = load float, ptr %i.cd, align 4, !tbaa !644
  %broadcast.splatinsert108 = insertelement <4 x float> poison, float %.pre.i.i62, i64 0
  %broadcast.splat109 = shufflevector <4 x float> %broadcast.splatinsert108, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next113.3, %vector.body110 ] ; 5 uses
  %i.cg = shl nuw nsw i64 %index111, 2
  %next.gep112 = getelementptr i8, ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep112, i64 16
  store <4 x float> %broadcast.splat109, ptr %next.gep112, align 4, !tbaa !644
  store <4 x float> %broadcast.splat109, ptr %i.ch, align 4, !tbaa !644
  %index.next113 = shl i64 %index111, 2
  %i.ci = getelementptr i8, ptr %i.cf, i64 %index.next113 ; 2 uses
  %next.gep112.1 = getelementptr i8, ptr %i.ci, i64 32
  %i.cj = getelementptr i8, ptr %i.ci, i64 48
  store <4 x float> %broadcast.splat109, ptr %next.gep112.1, align 4, !tbaa !644
  store <4 x float> %broadcast.splat109, ptr %i.cj, align 4, !tbaa !644
  %index.next113.1 = shl i64 %index111, 2
  %i.ck = getelementptr i8, ptr %i.cf, i64 %index.next113.1 ; 2 uses
  %next.gep112.2 = getelementptr i8, ptr %i.ck, i64 64
  %i.cl = getelementptr i8, ptr %i.ck, i64 80
  store <4 x float> %broadcast.splat109, ptr %next.gep112.2, align 4, !tbaa !644
  store <4 x float> %broadcast.splat109, ptr %i.cl, align 4, !tbaa !644
  %index.next113.2 = shl i64 %index111, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %index.next113.2 ; 2 uses
  %next.gep112.3 = getelementptr i8, ptr %i.cm, i64 96
  %i.cn = getelementptr i8, ptr %i.cm, i64 112
  store <4 x float> %broadcast.splat109, ptr %next.gep112.3, align 4, !tbaa !644
  store <4 x float> %broadcast.splat109, ptr %i.cn, align 4, !tbaa !644
  %index.next113.3 = add nuw nsw i64 %index111, 32 ; 2 uses
  %i.co = icmp eq i64 %index.next113.3, 512
  br i1 %i.co, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKfb.exit, label %vector.body110, !llvm.loop !2430

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
  %i.cq = load ptr, ptr %i.ar, align 8, !tbaa !269 ; 2 uses
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
  %i.ct = load ptr, ptr %1, align 8, !tbaa !269   ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.ct, null
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv
  %.0.i.i.i73 = select i1 %.not.i.i.i72, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cu
  %i.cv = load float, ptr %.0.i.i.i69, align 4, !tbaa !644
  %i.cw = load float, ptr %.0.i.i.i73, align 4, !tbaa !644
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
  %i.cz = load ptr, ptr %1, align 8, !tbaa !269   ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i77, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78, label %bb.v

bb.v:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76
  %i.da = load float, ptr %.0.i.i.i69, align 4, !tbaa !644
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv
  store float %i.da, ptr %i.db, align 4, !tbaa !644
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i76, %bb.v
  %i.dc = lshr i64 %indvars.iv, 6
  %i.dd = and i64 %i.dc, 67108863                 ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !595
  %i.dg = and i64 %indvars.iv, 63
  %i.dh = shl nuw i64 1, %i.dg                    ; 3 uses
  %i.di = and i64 %i.df, %i.dh
  %.not88 = icmp eq i64 %i.di, 0
  br i1 %.not88, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dd ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !595
  %i.dl = or i64 %i.dk, %i.dh
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79

bb.x:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE12setValueOnlyEjRKf.exit78
  %i.dm = xor i64 %i.dh, -1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dd ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !595
  %i.dp = and i64 %i.do, %i.dm
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE14setActiveStateEjb.exit79: ; preds = %bb.x, %bb.w, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE8getValueEj.exit74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %_ZNK7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14probeConstNodeIS8_EEPKT_RKNS0_4math5CoordE.exit.thread, label %.preheader90, !llvm.loop !2431

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
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EEC2ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EEC5ERKSt6vectorINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !660  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !659    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !301

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !659
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !660
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !661
  %i.m = load ptr, ptr %1, align 8, !tbaa !662
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !662
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7openvdb5v13_05tools11TreeToMergeINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt6vectorISG_SaISG_EEEEPSG_ET0_T_SP_SO_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !659    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !661
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #27
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i

_ZNSt12_Vector_baseIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ERKSG_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !660
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !827
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !828
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EEC2ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #6 comdat($_ZN7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EEC5ERKSt5dequeINS1_11TreeToMergeISC_EESaISG_EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %3 = alloca %"struct.std::_Deque_iterator.351", align 16 ; 3 uses
  %4 = alloca %"class.std::allocator.348", align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !662, !noalias !2436
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !662, !alias.scope !2436
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !567, !noalias !2436
  store <2 x ptr> %i.e, ptr %i.c, align 16, !tbaa !567, !alias.scope !2436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !662, !noalias !2437
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !662, !alias.scope !2437
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !567, !noalias !2437
  store <2 x ptr> %i.j, ptr %i.h, align 16, !tbaa !567, !alias.scope !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN7openvdb5v13_05tools11TreeToMergeINS1_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESaISE_EEC2ISt15_Deque_iteratorISE_RKSE_PSJ_EvEET_SN_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !827
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !828
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !662
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !662
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK7openvdb5v13_05tools24CsgUnionOrIntersectionOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !660
  %i.c = load ptr, ptr %0, align 8, !tbaa !659
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
  store i8 %i.a, ptr %i.b, align 8, !tbaa !828
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
  %11 = alloca %"class.std::unique_ptr.359", align 8 ; 11 uses
  %12 = alloca %"struct.std::pair.287", align 4   ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !662
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !662
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.eq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !827
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.i, ptr %i.g, align 8, !tbaa !827
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !315  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 26 uses
  %.not1.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not1.i.i.i, label %.loopexit617, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.2.0.i = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !459
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.loopexit617, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i.i, label %.loopexit617, label %.lr.ph.i.i.i, !llvm.loop !33

.loopexit617:                                     ; preds = %bb.e, %.lr.ph.i.i.i, %bb.d
  %.sroa.2.1.i = phi ptr [ %i.l, %bb.d ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ], [ %i.q, %bb.e ] ; 2 uses
  %.not573653 = icmp eq ptr %.sroa.2.1.i, %i.m
  br i1 %.not573653, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !315
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit617
  %i.r = phi ptr [ %i.l, %.loopexit617 ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0536.0.lcssa = phi ptr [ null, %.loopexit617 ], [ %.sroa.0536.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %.loopexit617 ], [ %.sroa.11.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.20.0.lcssa = phi ptr [ null, %.loopexit617 ], [ %.sroa.20.1, %._crit_edge.loopexit ] ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.m, %i.r
  br i1 %.not2.i.i.i, label %.loopexit611, label %.lr.ph.i.i.i160

.lr.ph.i.i.i160:                                  ; preds = %._crit_edge, %bb.f
  %.sroa.2.0.i161 = phi ptr [ %i.u, %bb.f ], [ %i.r, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i161, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !459
  %.not1.i.i.i162 = icmp eq ptr %i.t, null
  br i1 %.not1.i.i.i162, label %bb.f, label %.loopexit611

bb.f:                                             ; preds = %.lr.ph.i.i.i160
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i161) #28 ; 3 uses
  %.not.i.i.i166 = icmp eq ptr %i.u, %i.m
  br i1 %.not.i.i.i166, label %.loopexit611, label %.lr.ph.i.i.i160, !llvm.loop !10

.lr.ph:                                           ; preds = %.loopexit617, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit
  %.sroa.6533.0657 = phi ptr [ %.sroa.6533.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit ], [ %.sroa.2.1.i, %.loopexit617 ] ; 3 uses
  %.sroa.20.0656 = phi ptr [ %.sroa.20.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit ], [ null, %.loopexit617 ] ; 9 uses
  %.sroa.11.0655 = phi ptr [ %.sroa.11.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit ], [ null, %.loopexit617 ] ; 6 uses
  %.sroa.0536.0654 = phi ptr [ %.sroa.0536.1, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueAllPredEKdEppEv.exit ], [ null, %.loopexit617 ] ; 10 uses
end_hunk_12
