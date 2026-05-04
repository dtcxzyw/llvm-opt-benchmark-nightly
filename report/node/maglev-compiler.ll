inline.NumInlined: 45856
inline.NumDeleted: 12053
begin_hunk_0
@_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::container_internal::PolicyFunctions" { i32 4, i32 40, i32 40, i16 8, i8 0, i8 1, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIjEEjLb1EEEmPKvPvm, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE19transfer_n_slots_fnEPvSJ_SJ_m, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8ESaIcEEEPvS3_m, ptr @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSO_PFvSO_hmmE }, comdat, align 8
@.str.41 = private unnamed_addr constant [11 x i8] c"operator->\00", align 1
@.str.42 = private unnamed_addr constant [76 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/container/internal/raw_hash_set.h\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"%s called on end() iterator.\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"%s called on default-constructed iterator.\00", align 1
@.str.45 = private unnamed_addr constant [166 x i8] c"%s called on invalid iterator. The element might have been erased or the table might have rehashed. Consider running with --config=asan to diagnose rehashing issues.\00", align 1
@_ZN4absl18container_internal19kDefaultIterControlE = external global i8, align 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev28LiveRangeAndNextUseProcessor13MarkInputUsesEPNS1_8JumpLoopERKNS1_15ProcessingStateE:bb.a

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE22find_or_prepare_insertIjEESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !2574 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !2574
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !2574
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev28LiveRangeAndNextUseProcessor13MarkInputUsesEPNS1_8JumpLoopERKNS1_15ProcessingStateE:bb.a
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !2574
  %i.dm = icmp eq i32 %i.dl, %i.bz
  br i1 %i.dm, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit, label %.critedge.i, !prof !75

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.dn = add i16 %.sroa.035.065.i, -1
end_hunk_2
begin_hunk_3_@_ZN2v88internal6maglev28LiveRangeAndNextUseProcessor13MarkInputUsesEPNS1_8JumpLoopERKNS1_15ProcessingStateE:bb.a
  %i.ds = add i64 %i.dr, %.sroa.7.0.i
  br label %bb.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE22find_or_prepare_insertIjEESE_INSI_8iteratorEbERKT_.exit.i._crit_edge.i.i.i.i.i: ; preds = %.critedge19.i
  %i.dt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dq, i1 true)
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = add i64 %.sroa.7.0.i, %i.du
  %i.dw = and i64 %i.dv, %i.ca
  %i.dx = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.cv, i64 %i.dw, i64 %.sroa.15.0.i) #25, !noalias !2574 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.cl, align 8, !noalias !2574, !nonnull !7, !noundef !7
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.dx
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.cy, align 8, !noalias !2574
  %i.dz = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.dx
  br label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE22find_or_prepare_insertIjEESE_INSI_8iteratorEbERKT_.exit.i._crit_edge.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE22find_or_prepare_insertIjEESE_INSI_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal6maglev28LiveRangeAndNextUseProcessor13MarkInputUsesEPNS1_8JumpLoopERKNS1_15ProcessingStateE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i8 0, i64 32, i1 false)
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit.a

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit: ; preds = %.lr.ph.i
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.dj
  %6 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %6, label %7, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit.a, !prof !2578

7:                                                ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41) #25
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit.a: ; preds = %bb.k, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit
  %.sroa.062.1 = phi ptr [ %i.dk, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit ], [ %.sroa.6.0, %bb.k ]
  %.sroa.6.1 = phi ptr [ %5, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit ], [ %.sroa.062.0, %bb.k ] ; 2 uses
  %i.ec = icmp eq ptr %.sroa.6.1, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.ec, label %bb.l, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit.thread, !prof !2579

bb.l:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit.a
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41) #25
end_hunk_4
begin_hunk_5_@_ZN2v88internal6maglev28LiveRangeAndNextUseProcessor13MarkInputUsesEPNS1_8JumpLoopERKNS1_15ProcessingStateE:bb.a
  unreachable

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit.thread: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit.a
  %.sroa.6.179 = phi ptr [ %.sroa.6.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit.a ], [ @_ZN4absl18container_internal11kSooControlE, %bb.h ]
  %.sroa.062.178 = phi ptr [ %.sroa.062.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit.a ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ] ; 6 uses
  %i.ed = load i8, ptr %.sroa.6.179, align 1
  %i.ee = icmp sgt i8 %i.ed, -1
  br i1 %i.ee, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit, label %bb.m, !prof !75

end_hunk_5
begin_hunk_6_@_ZN2v88internal6maglev28LiveRangeAndNextUseProcessor13MarkInputUsesEPNS1_8JumpLoopERKNS1_15ProcessingStateE:bb.a
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE7emplaceIJjPNS4_4ZoneEETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESE_INSI_8iteratorEbEDpOSN_.exit.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.062.178, i64 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN2v88internal6maglev28LiveRangeAndNextUseProcessor13MarkInputUsesEPNS1_8JumpLoopERKNS1_15ProcessingStateE:bb.a

.lr.ph96:                                         ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.062.178, i64 20 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.062.178, i64 16 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.062.178, i64 24 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.062.178, i64 36 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.062.178, i64 32 ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.ao, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE8iteratorptEv.exit
end_hunk_7
begin_hunk_8_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE19transfer_n_slots_fnEPvSJ_SJ_m:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.01012, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2580

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
end_hunk_8
begin_hunk_9_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSO_PFvSO_hmmE:bb.a
._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !2581

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bt, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN2v88internal6maglev19MaglevCodeGeneratorD2Ev:bb.a
_ZN2v88internal18GlobalHandleVectorINS0_3MapEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEEE, i64 16), ptr %i.j, align 8
  tail call void @_ZN2v88internal15IdentityMapBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(66) %i.j) #25, !inline_history !2582
  tail call void @_ZN2v88internal15IdentityMapBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(66) %i.j) #25, !inline_history !2582
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEEE, i64 16), ptr %i.k, align 8
  tail call void @_ZN2v88internal15IdentityMapBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(66) %i.k) #25, !inline_history !2582
  tail call void @_ZN2v88internal15IdentityMapBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(66) %i.k) #25, !inline_history !2582
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(456) %i.l) #25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
end_hunk_10
begin_hunk_11_@_ZN2v88internal9AssemblerD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #28
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.u = icmp ult ptr %.06.i.i.i, %i.p
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, !llvm.loop !2583

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8
end_hunk_11
begin_hunk_12_@_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEED0Ev
define linkonce_odr hidden void @_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEED0Ev(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEEE, i64 16), ptr %0, align 8
  tail call void @_ZN2v88internal15IdentityMapBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(66) %0) #25, !inline_history !2582
  tail call void @_ZN2v88internal15IdentityMapBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(66) %0) #25, !inline_history !2582
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #28
  ret void
}
end_hunk_12
begin_hunk_13_@_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEE15NewPointerArrayEmm:bb.a
  store <2 x i64> %broadcast.splat, ptr %i.k, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !2584

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
end_hunk_13
begin_hunk_14_@_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEE15NewPointerArrayEmm:bb.a
  store i64 %2, ptr %.06.i.i.i.i.i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2587

_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.a
  ret ptr %i.b
end_hunk_14
begin_hunk_15_@_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E:bb.a
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2588

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
end_hunk_15
begin_hunk_16_@llvm.umin.i64
!2575 = distinct !{!2575, !2576, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE28find_or_prepare_insert_largeIjEESE_INSI_8iteratorEbERKT_: argument 0"}
!2576 = distinct !{!2576, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE28find_or_prepare_insert_largeIjEESE_INSI_8iteratorEbERKT_"}
!2577 = !{!2563, !2565, !2567, !2569}
!2578 = !{!"branch_weights", !"expected", i32 3433666, i32 2144049982}
!2579 = !{!"branch_weights", !"expected", i32 1226607, i32 2146257041}
!2580 = distinct !{!2580, !12}
!2581 = distinct !{!2581, !12}
!2582 = !{ptr @_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEED2Ev}
!2583 = distinct !{!2583, !12}
!2584 = distinct !{!2584, !12, !2585, !2586}
!2585 = !{!"llvm.loop.isvectorized", i32 1}
!2586 = !{!"llvm.loop.unroll.runtime.disable"}
!2587 = distinct !{!2587, !12, !2586, !2585}
!2588 = distinct !{!2588, !12}
end_hunk_16
