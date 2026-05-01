inline.NumInlined: 4138
inline.NumDeleted: 2071
begin_hunk_0_@_ZN5folly22hazptr_obj_base_linkedINS_14UnboundedQueueINS_21CPUThreadPoolExecutor7CPUTaskELb0ELb0ELb0ELm6ELm6ESt6atomicE7SegmentES4_St14default_deleteIS6_EE31release_retire_mutable_childrenERNS_15hazptr_obj_listIS4_EE:bb.a

.loopexit:                                        ; preds = %_ZN5folly17hazptr_obj_linkedISt6atomicE9count_casERmm.exit.i, %_ZNSt5stackIPN5folly22hazptr_obj_base_linkedINS0_14UnboundedQueueINS0_21CPUThreadPoolExecutor7CPUTaskELb0ELb0ELb0ELm6ELm6ESt6atomicE7SegmentES5_St14default_deleteIS7_EEESt5dequeISB_SaISB_EEE3popEv.exit
  store atomic i64 0, ptr %i.aa release, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5602
  %.not.i = icmp eq ptr %i.aj, %i.z
  br i1 %.not.i, label %_ZN5folly10hazptr_objISt6atomicE16pre_retire_checkEv.exit, label %bb.e
end_hunk_0
begin_hunk_1_@_ZN5folly22hazptr_obj_base_linkedINS_14UnboundedQueueINS_21CPUThreadPoolExecutor7CPUTaskELb0ELb0ELb0ELm6ELm6ESt6atomicE7SegmentES4_St14default_deleteIS6_EE31release_retire_mutable_childrenERNS_15hazptr_obj_listIS4_EE:bb.a
  br label %_ZN5folly10hazptr_objISt6atomicE16pre_retire_checkEv.exit

_ZN5folly10hazptr_objISt6atomicE16pre_retire_checkEv.exit: ; preds = %.loopexit, %bb.e
  store ptr @_ZZN5folly22hazptr_obj_base_linkedINS_14UnboundedQueueINS_21CPUThreadPoolExecutor7CPUTaskELb0ELb0ELb0ELm6ELm6ESt6atomicE7SegmentES4_St14default_deleteIS6_EE11set_reclaimEvENUlPNS_10hazptr_objIS4_EERNS_15hazptr_obj_listIS4_EEE_8__invokeESC_SF_, ptr %i.z, align 8, !tbaa !5678
  store ptr null, ptr %i.ai, align 8, !tbaa !5602
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !5702 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i7, label %bb.g, label %bb.f
end_hunk_1
begin_hunk_2_@_ZN5folly22hazptr_obj_base_linkedINS_14UnboundedQueueINS_21CPUThreadPoolExecutor7CPUTaskELb0ELb0ELb1ELm8ELm6ESt6atomicE7SegmentES4_St14default_deleteIS6_EE31release_retire_mutable_childrenERNS_15hazptr_obj_listIS4_EE:bb.a

.loopexit:                                        ; preds = %_ZN5folly17hazptr_obj_linkedISt6atomicE9count_casERmm.exit.i, %_ZNSt5stackIPN5folly22hazptr_obj_base_linkedINS0_14UnboundedQueueINS0_21CPUThreadPoolExecutor7CPUTaskELb0ELb0ELb1ELm8ELm6ESt6atomicE7SegmentES5_St14default_deleteIS7_EEESt5dequeISB_SaISB_EEE3popEv.exit
  store atomic i64 0, ptr %i.aa release, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5602
  %.not.i = icmp eq ptr %i.aj, %i.z
  br i1 %.not.i, label %_ZN5folly10hazptr_objISt6atomicE16pre_retire_checkEv.exit, label %bb.e
end_hunk_2
begin_hunk_3_@_ZN5folly22hazptr_obj_base_linkedINS_14UnboundedQueueINS_21CPUThreadPoolExecutor7CPUTaskELb0ELb0ELb1ELm8ELm6ESt6atomicE7SegmentES4_St14default_deleteIS6_EE31release_retire_mutable_childrenERNS_15hazptr_obj_listIS4_EE:bb.a
  br label %_ZN5folly10hazptr_objISt6atomicE16pre_retire_checkEv.exit

_ZN5folly10hazptr_objISt6atomicE16pre_retire_checkEv.exit: ; preds = %.loopexit, %bb.e
  store ptr @_ZZN5folly22hazptr_obj_base_linkedINS_14UnboundedQueueINS_21CPUThreadPoolExecutor7CPUTaskELb0ELb0ELb1ELm8ELm6ESt6atomicE7SegmentES4_St14default_deleteIS6_EE11set_reclaimEvENUlPNS_10hazptr_objIS4_EERNS_15hazptr_obj_listIS4_EEE_8__invokeESC_SF_, ptr %i.z, align 8, !tbaa !5678
  store ptr null, ptr %i.ai, align 8, !tbaa !5602
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !5702 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i7, label %bb.g, label %bb.f
end_hunk_3
begin_hunk_4_@_ZN5folly25PriorityUnboundedQueueSetINS_21CPUThreadPoolExecutor7CPUTaskELb0ELb0ELb1ELm8ELm6ESt6atomicE11try_dequeueEv:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5folly25PriorityUnboundedQueueSetINS_21CPUThreadPoolExecutor7CPUTaskELb0ELb0ELb1ELm8ELm6ESt6atomicE11try_dequeueEv:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  store ptr null, ptr %4, align 16, !tbaa !55
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 64 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 72 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %i.cq, align 16, !tbaa !58
  store <2 x ptr> %i.cs, ptr %i.g, align 16, !tbaa !58
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.cq, align 16, !tbaa !59
  store ptr null, ptr %i.cr, align 8, !tbaa !56
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !56  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i, label %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit, label %bb.p
end_hunk_5
begin_hunk_6_@_ZN5folly25PriorityUnboundedQueueSetINS_21CPUThreadPoolExecutor7CPUTaskELb0ELb0ELb1ELm8ELm6ESt6atomicE11try_dequeueEv:bb.a
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !56  ; 2 uses
  %i.ed = load <2 x ptr>, ptr %i.g, align 16, !tbaa !58
  store <2 x ptr> %i.ed, ptr %i.o, align 16, !tbaa !58
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.g, align 16, !tbaa !59
  store ptr null, ptr %i.h, align 8, !tbaa !56
  %.not.i.i.i.i.i.i19 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i19, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i28, label %bb.z

end_hunk_6
