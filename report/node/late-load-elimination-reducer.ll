inline.NumInlined: 4977
inline.NumDeleted: 2626
begin_hunk_0
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.723" = type { i8 }
%"class.v8::internal::compiler::turboshaft::OpIndex" = type { i32 }
%"struct.v8::internal::compiler::turboshaft::MapMaskAndOr" = type { i64, i64 }
%"class.v8::internal::compiler::MapRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::HeapObjectRef" = type { %"class.v8::internal::compiler::ObjectRef" }
%"class.v8::internal::compiler::ObjectRef" = type { ptr }
end_hunk_0
begin_hunk_1
%"struct.std::pair.251" = type { %"class.v8::internal::compiler::turboshaft::OpIndex", %"class.v8::internal::compiler::turboshaft::SnapshotTableKey.192" }
%"class.v8::internal::compiler::turboshaft::SnapshotTableKey.192" = type { ptr }
%"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.679" = type { %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", i32, i32 }
%"struct.std::pair.649" = type { %"class.v8::internal::compiler::turboshaft::OpIndex", %"class.v8::internal::compiler::turboshaft::SnapshotTableKey.165" }
%"class.v8::internal::compiler::turboshaft::SnapshotTableKey.165" = type { ptr }

end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer11ProcessLoadENS2_7OpIndexERKNS2_6LoadOpE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer12ProcessStoreENS2_7OpIndexERKNS2_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.4.i = alloca %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = trunc i8 %i.b to i1
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer12ProcessStoreENS2_7OpIndexERKNS2_7StoreOpE:bb.a
  br i1 %.not10.i, label %bb.p, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i

bb.p:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0.copyload, i64 16, i1 false)
  %i.by = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bz = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.ca = icmp ult ptr %i.by, %i.bz
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer12ProcessStoreENS2_7OpIndexERKNS2_7StoreOpE:bb.a
  store ptr %i.ci, ptr %i.bj, align 8
  store ptr %.sroa.3.0.copyload, ptr %i.ch, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i64 -1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i64 0, ptr %.sroa.3.0.copyload, align 8
  store i64 -1, ptr %i.bv, align 8
  %.pre = load i8, ptr %.sroa.019.0, align 1
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer11ProcessCallENS2_7OpIndexERKNS2_6CallOpE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer16ProcessAssumeMapENS2_7OpIndexERKNS2_11AssumeMapOpE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.4.i.i = alloca %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer16ProcessAssumeMapENS2_7OpIndexERKNS2_11AssumeMapOpE:bb.a
  br i1 %.not10.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_7OpIndexES4_.exit

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 728
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer16ProcessAssumeMapENS2_7OpIndexERKNS2_11AssumeMapOpE:bb.a
  store ptr %i.bl, ptr %i.ax, align 8
  store ptr %i.ar, ptr %i.bk, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i64 %.sroa.010.0.lcssa.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i64 %.sroa.412.0.lcssa.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  store i64 %.sroa.010.0.lcssa.i, ptr %i.ar, align 8
  store i64 %.sroa.412.0.lcssa.i, ptr %i.au, align 8
  br label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_7OpIndexES4_.exit
end_hunk_7
begin_hunk_8_@_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE12TryGetKeyForENS2_7OpIndexE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateAllMapsEv(ptr noundef nonnull align 8 dereferenceable(1512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.4.i = alloca %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable18InvalidateAtOffsetEiNS2_15OptionalOpIndexE(ptr noundef nonnull align 8 dereferenceable(496) %i.a, i32 noundef 0, i32 -1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 856
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateAllMapsEv:bb.a
  br i1 %.not10.i, label %bb.j, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i

bb.j:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0.copyload, i64 16, i1 false)
  %i.af = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ag = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ah = icmp ult ptr %i.af, %i.ag
end_hunk_9
begin_hunk_10_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateAllMapsEv:bb.a
  store ptr %i.ap, ptr %i.q, align 8
  store ptr %.sroa.3.0.copyload, ptr %i.ao, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 -1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i64 0, ptr %.sroa.3.0.copyload, align 8
  store i64 -1, ptr %i.ac, align 8
  %.pre = load i8, ptr %.sroa.05.0, align 1
end_hunk_10
begin_hunk_11_@_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE4GrowEm:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.4.i = alloca %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", align 8 ; 4 uses
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

end_hunk_11
begin_hunk_12_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_:bb.a
  br i1 %.not10.i, label %bb.v, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.v:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false)
  %i.dq = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dr = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ds = icmp ult ptr %i.dq, %i.dr
end_hunk_12
begin_hunk_13_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_:bb.a
  store ptr %i.ea, ptr %i.q, align 8
  store ptr %i.cy, ptr %i.dz, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i64 %.sroa.016.3.i, ptr %.sroa.5.0..sroa_idx.i42, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i64 %.sroa.3.3.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i64 %.sroa.016.3.i, ptr %i.cy, align 8
  store i64 %.sroa.3.3.i, ptr %i.dn, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
end_hunk_13
begin_hunk_14_@_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIbS4_EENS_4base6VectorIKbEEE_NS2_16NoChangeCallbackEEEvNSF_IKNS5_8SnapshotEEERKT_RKT0_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.4.i = alloca %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", align 8 ; 4 uses
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

end_hunk_14
begin_hunk_15_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_:bb.a
  br i1 %.not10.i, label %bb.v, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.v:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false)
  %i.dq = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dr = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ds = icmp ult ptr %i.dq, %i.dr
end_hunk_15
begin_hunk_16_@_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_:bb.a
  store ptr %i.ea, ptr %i.q, align 8
  store ptr %i.cy, ptr %i.dz, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i64 %.sroa.016.3.i, ptr %.sroa.5.0..sroa_idx.i42, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i64 %.sroa.3.3.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i64 %.sroa.016.3.i, ptr %i.cy, align 8
  store i64 %.sroa.3.3.i, ptr %i.dn, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
end_hunk_16
