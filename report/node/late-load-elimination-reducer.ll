begin_hunk_0
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.723" = type { i8 }
%"class.v8::internal::compiler::turboshaft::OpIndex" = type { i32 }
%"class.v8::internal::compiler::MapRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::HeapObjectRef" = type { %"class.v8::internal::compiler::ObjectRef" }
%"class.v8::internal::compiler::ObjectRef" = type { ptr }
end_hunk_0
begin_hunk_1
%"struct.std::pair.251" = type { %"class.v8::internal::compiler::turboshaft::OpIndex", %"class.v8::internal::compiler::turboshaft::SnapshotTableKey.192" }
%"class.v8::internal::compiler::turboshaft::SnapshotTableKey.192" = type { ptr }
%"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.679" = type { %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", i32, i32 }
%"struct.v8::internal::compiler::turboshaft::MapMaskAndOr" = type { i64, i64 }
%"struct.std::pair.649" = type { %"class.v8::internal::compiler::turboshaft::OpIndex", %"class.v8::internal::compiler::turboshaft::SnapshotTableKey.165" }
%"class.v8::internal::compiler::turboshaft::SnapshotTableKey.165" = type { ptr }

end_hunk_1
begin_hunk_2
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer12ProcessStoreENS2_7OpIndexERKNS2_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = trunc i8 %i.b to i1
end_hunk_2
begin_hunk_3
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %i.bt = load i64, ptr %.sroa.3.0.copyload, align 8
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = icmp ne i64 %i.bw, -1
  %.not10.i = select i1 %i.bu, i1 true, i1 %i.bx
  br i1 %.not10.i, label %bb.p, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i

bb.p:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit
  %.sroa.4.8.copyload.i = load <2 x i64>, ptr %.sroa.3.0.copyload, align 8
  %i.by = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bz = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.ca = icmp ult ptr %i.by, %i.bz
end_hunk_3
begin_hunk_4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %bb.p, %bb.q
  %i.ch = phi ptr [ %i.by, %bb.p ], [ %.pre.i.i.i, %bb.q ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store ptr %i.ci, ptr %i.bj, align 8
  store ptr %.sroa.3.0.copyload, ptr %i.ch, align 8
  %.sroa.5.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store <2 x i64> %.sroa.4.8.copyload.i, ptr %.sroa.5.0..sroa_idx.i.a, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store <2 x i64> <i64 0, i64 -1>, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  store <2 x i64> <i64 0, i64 -1>, ptr %.sroa.3.0.copyload, align 8
  %.pre = load i8, ptr %.sroa.019.0, align 1
  %i.cj = icmp sgt i8 %.pre, -1
  br i1 %i.cj, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i, label %bb.r, !prof !22
end_hunk_4
begin_hunk_5
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer16ProcessAssumeMapENS2_7OpIndexERKNS2_11AssumeMapOpE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_5
begin_hunk_6
  br label %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit

_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit.loopexit, %bb.a, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i
  %.sroa.010.0.lcssa.i = phi i64 [ %i.d, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i ], [ %i.d, %bb.a ], [ %i.ap, %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit.loopexit ] ; 2 uses
  %.sroa.412.0.lcssa.i = phi i64 [ %i.e, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i ], [ %i.e, %bb.a ], [ %i.aq, %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ar = call ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.b, i32 %.sroa.0.0.copyload.i.i) ; 5 uses
  %.sroa.05.0.vec.insert.i.i = insertelement <2 x i64> poison, i64 %.sroa.010.0.lcssa.i, i64 0
  %.sroa.05.8.vec.insert.i.i = insertelement <2 x i64> %.sroa.05.0.vec.insert.i.i, i64 %.sroa.412.0.lcssa.i, i64 1 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp ne i64 %i.as, %.sroa.010.0.lcssa.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = icmp ne i64 %i.av, %.sroa.412.0.lcssa.i
  %.not10.i.i = select i1 %i.at, i1 true, i1 %i.aw
  br i1 %.not10.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_7OpIndexES4_.exit

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit
  %.sroa.4.8.copyload.i.i = load <2 x i64>, ptr %i.ar, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 728
end_hunk_6
begin_hunk_7
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE9push_backEOS8_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE9push_backEOS8_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.bk = phi ptr [ %i.ay, %bb.c ], [ %.pre.i.i.i.i, %bb.d ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %i.bl, ptr %i.ax, align 8
  store ptr %i.ar, ptr %i.bk, align 8
  %.sroa.5.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store <2 x i64> %.sroa.4.8.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.a, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x i64> %.sroa.05.8.vec.insert.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store <2 x i64> %.sroa.05.8.vec.insert.i.i, ptr %i.ar, align 8
  br label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_7OpIndexES4_.exit

_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_7OpIndexES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE9push_backEOS8_.exit.i.i
end_hunk_7
begin_hunk_8
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateAllMapsEv(ptr noundef nonnull align 8 dereferenceable(1512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable18InvalidateAtOffsetEiNS2_15OptionalOpIndexE(ptr noundef nonnull align 8 dereferenceable(496) %i.a, i32 noundef 0, i32 -1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 856
end_hunk_8
begin_hunk_9
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %i.aa = load i64, ptr %.sroa.3.0.copyload, align 8
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp ne i64 %i.ad, -1
  %.not10.i = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %.not10.i, label %bb.j, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i

bb.j:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit
  %.sroa.4.8.copyload.i = load <2 x i64>, ptr %.sroa.3.0.copyload, align 8
  %i.af = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ag = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ah = icmp ult ptr %i.af, %i.ag
end_hunk_9
begin_hunk_10
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %bb.j, %bb.k
  %i.ao = phi ptr [ %i.af, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.ap, ptr %i.q, align 8
  store ptr %.sroa.3.0.copyload, ptr %i.ao, align 8
  %.sroa.5.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store <2 x i64> %.sroa.4.8.copyload.i, ptr %.sroa.5.0..sroa_idx.i.a, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store <2 x i64> <i64 0, i64 -1>, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  store <2 x i64> <i64 0, i64 -1>, ptr %.sroa.3.0.copyload, align 8
  %.pre = load i8, ptr %.sroa.05.0, align 1
  %i.aq = icmp sgt i8 %.pre, -1
  br i1 %i.aq, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i, label %bb.l, !prof !22
end_hunk_10
begin_hunk_11
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

end_hunk_11
begin_hunk_12
  br i1 %.not.i, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, label %.lr.ph.i

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit: ; preds = %.lr.ph.i, %bb.u
  %.sroa.016.3.i = phi i64 [ 0, %.lr.ph.i ], [ %i.di, %bb.u ] ; 2 uses
  %.sroa.3.3.i = phi i64 [ -1, %.lr.ph.i ], [ %i.dj, %bb.u ] ; 2 uses
  %.sroa.05.0.vec.insert.i = insertelement <2 x i64> poison, i64 %.sroa.016.3.i, i64 0
  %.sroa.05.8.vec.insert.i = insertelement <2 x i64> %.sroa.05.0.vec.insert.i, i64 %.sroa.3.3.i, i64 1 ; 2 uses
  %i.dl = load i64, ptr %i.cy, align 8
  %i.dm = icmp ne i64 %i.dl, %.sroa.016.3.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = icmp ne i64 %i.do, %.sroa.3.3.i
  %.not10.i = select i1 %i.dm, i1 true, i1 %i.dp
  br i1 %.not10.i, label %bb.v, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.v:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit
  %.sroa.4.8.copyload.i = load <2 x i64>, ptr %i.cy, align 8
  %i.dq = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dr = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ds = icmp ult ptr %i.dq, %i.dr
end_hunk_12
begin_hunk_13
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.dz = phi ptr [ %i.dq, %bb.v ], [ %.pre.i.i.i41, %bb.w ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  store ptr %i.ea, ptr %i.q, align 8
  store ptr %i.cy, ptr %i.dz, align 8
  %.sroa.5.0..sroa_idx.i42.a = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store <2 x i64> %.sroa.4.8.copyload.i, ptr %.sroa.5.0..sroa_idx.i42.a, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store <2 x i64> %.sroa.05.8.vec.insert.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  store <2 x i64> %.sroa.05.8.vec.insert.i, ptr %i.cy, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, %bb.x
end_hunk_13
begin_hunk_14
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

end_hunk_14
begin_hunk_15
  br i1 %.not.i, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, label %.lr.ph.i

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit: ; preds = %.lr.ph.i, %bb.u
  %.sroa.016.3.i = phi i64 [ 0, %.lr.ph.i ], [ %i.di, %bb.u ] ; 2 uses
  %.sroa.3.3.i = phi i64 [ -1, %.lr.ph.i ], [ %i.dj, %bb.u ] ; 2 uses
  %.sroa.05.0.vec.insert.i = insertelement <2 x i64> poison, i64 %.sroa.016.3.i, i64 0
  %.sroa.05.8.vec.insert.i = insertelement <2 x i64> %.sroa.05.0.vec.insert.i, i64 %.sroa.3.3.i, i64 1 ; 2 uses
  %i.dl = load i64, ptr %i.cy, align 8
  %i.dm = icmp ne i64 %i.dl, %.sroa.016.3.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = icmp ne i64 %i.do, %.sroa.3.3.i
  %.not10.i = select i1 %i.dm, i1 true, i1 %i.dp
  br i1 %.not10.i, label %bb.v, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.v:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit
  %.sroa.4.8.copyload.i = load <2 x i64>, ptr %i.cy, align 8
  %i.dq = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dr = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ds = icmp ult ptr %i.dq, %i.dr
end_hunk_15
begin_hunk_16
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.dz = phi ptr [ %i.dq, %bb.v ], [ %.pre.i.i.i41, %bb.w ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  store ptr %i.ea, ptr %i.q, align 8
  store ptr %i.cy, ptr %i.dz, align 8
  %.sroa.5.0..sroa_idx.i42.a = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store <2 x i64> %.sroa.4.8.copyload.i, ptr %.sroa.5.0..sroa_idx.i42.a, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store <2 x i64> %.sroa.05.8.vec.insert.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  store <2 x i64> %.sroa.05.8.vec.insert.i, ptr %i.cy, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, %bb.x
end_hunk_16
