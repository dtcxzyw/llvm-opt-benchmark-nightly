inline.NumInlined: 712
inline.NumDeleted: 410
begin_hunk_0
@_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::container_internal::PolicyFunctions" { i32 4, i32 40, i32 40, i16 8, i8 0, i8 0, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE19transfer_n_slots_fnEPvSM_SM_m, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m, ptr @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSR_PFvSR_hmmE }, comdat, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"operator->\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/container/internal/raw_hash_set.h\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s called on end() iterator.\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"%s called on default-constructed iterator.\00", align 1
@.str.9 = private unnamed_addr constant [166 x i8] c"%s called on invalid iterator. The element might have been erased or the table might have rehashed. Consider running with --config=asan to diagnose rehashing issues.\00", align 1
@_ZN4absl18container_internal19kDefaultIterControlE = external global i8, align 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17RecordAllocateUseENS2_7OpIndexES4_:bb.a

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i.i: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !24 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noalias !24
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17RecordAllocateUseENS2_7OpIndexES4_:bb.a
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noalias !24
  %i.ao = icmp eq i32 %i.an, %1
  br i1 %i.ao, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit, label %.critedge.i, !prof !12

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ap = add i16 %.sroa.035.065.i, -1
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17RecordAllocateUseENS2_7OpIndexES4_:bb.a
  %i.au = add i64 %i.at, %.sroa.7.0.i
  br label %bb.d

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i: ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.c
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.ay, i64 %.sroa.15.0.i) #13, !noalias !24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.n, align 8, !noalias !24, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.az
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !24
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17RecordAllocateUseENS2_7OpIndexES4_:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.a

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit: ; preds = %.lr.ph.i
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  %6 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %6, label %7, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.a, !prof !28

7:                                                ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #13
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.a: ; preds = %bb.f, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit
  %.sroa.0.118 = phi ptr [ %5, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit ], [ %.sroa.0.0, %bb.f ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %i.am, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit ], [ %.sroa.6.0, %bb.f ] ; 6 uses
  %.sroa.11.116 = phi i1 [ false, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit ], [ true, %bb.f ]
  %i.bg = icmp eq ptr %.sroa.0.118, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.bg, label %bb.g, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread, !prof !29

bb.g:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.a
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #13
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17RecordAllocateUseENS2_7OpIndexES4_:bb.a
  unreachable

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread: ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.a
  %i.bh = load i8, ptr %.sroa.0.118, align 1
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit, label %bb.h, !prof !12

end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17RecordAllocateUseENS2_7OpIndexES4_:bb.a

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit: ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.6.1, i64 8 ; 4 uses
  br i1 %.sroa.11.116, label %bb.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit

bb.i:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit
  %i.bn = load ptr, ptr %0, align 8, !nonnull !5, !align !6
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer20AllocationIsEscapingENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer20AllocationIsEscapingENS2_7OpIndexE:bb.a
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !12

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer20AllocationIsEscapingENS2_7OpIndexE:bb.a
bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !30

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit: ; preds = %.thread33.i.i, %bb.c
  %.pn.i = phi ptr [ %i.i, %bb.c ], [ %i.al, %.thread33.i.i ] ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer20AllocationIsEscapingENS2_7OpIndexE:bb.a
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  br i1 %i.at, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit, !prof !31

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #13
end_hunk_10
begin_hunk_11_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer12MarkToRemoveENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.k, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8
end_hunk_11
begin_hunk_12_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer12MarkToRemoveENS2_7OpIndexE:bb.a
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !12

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_12
begin_hunk_13_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer12MarkToRemoveENS2_7OpIndexE:bb.a
bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !30

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit: ; preds = %.thread33.i.i, %bb.c
  %.pn.i = phi ptr [ %i.j, %bb.c ], [ %i.am, %.thread33.i.i ] ; 3 uses
end_hunk_13
begin_hunk_14_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer12MarkToRemoveENS2_7OpIndexE:bb.a
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit, !prof !31

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #13
end_hunk_14
begin_hunk_15_@_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE2atIS7_SA_EEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERSI_:bb.a

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
end_hunk_15
begin_hunk_16_@_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE2atIS7_SA_EEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERSI_:bb.a
  br i1 %i.ai, label %.thread33.i.i, label %bb.f, !prof !12

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE10find_largeIS7_EENSL_8iteratorERSI_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_16
begin_hunk_17_@_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE2atIS7_SA_EEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERSI_:bb.a
bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ao = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !30

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE10find_largeIS7_EENSL_8iteratorERSI_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.aj, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
end_hunk_17
begin_hunk_18_@_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv:bb.a
  %.not.i1 = icmp eq i8 %i.k, 0
  %spec.select.i2 = select i1 %.not.i1, i8 12, i8 79
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i8, ptr %i.l, align 4, !range !32, !noundef !5 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = shl nuw nsw i8 %i.m, 5
  %spec.select60.i = or disjoint i8 %spec.select.i2, %i.o ; 2 uses
end_hunk_18
begin_hunk_19_@_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv:bb.a

bb.j:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !range !32, !noundef !5 ; 2 uses
  %i.ah = trunc nuw i8 %i.ag to i1
  %spec.select.i6 = select i1 %i.ah, i8 67, i8 3  ; 2 uses
  %spec.select28.i = shl nuw nsw i8 %i.ag, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.aj = load i8, ptr %i.ai, align 1, !range !32, !noundef !5
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  %.sroa.0.0.insert.insert.i17.i.i7 = or disjoint i8 %spec.select.i6, 12
  %.sroa.013.1.i = select i1 %i.ak, i8 %.sroa.0.0.insert.insert.i17.i.i7, i8 %spec.select.i6
end_hunk_19
begin_hunk_20_@_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv:bb.a

bb.k:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i8, ptr %i.ao, align 4, !range !32, !noundef !5
  %i.aq = trunc nuw i8 %i.ap to i1
  %.sroa.09.0.insert.insert.i = select i1 %i.aq, i32 282447, i32 282380
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.l:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !range !32, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  %.sroa.015.0.insert.insert.i9 = select i1 %i.at, i32 282447, i32 282383
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit
end_hunk_20
begin_hunk_21_@_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv:bb.a

bb.n:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = load i8, ptr %i.au, align 4, !range !32, !noundef !5 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  %spec.select17.i = shl nuw nsw i8 %i.av, 2
  %.sroa.512.0.insert.ext.i = zext nneg i8 %spec.select17.i to i32
end_hunk_21
begin_hunk_22_@_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv:bb.a

bb.o:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load i8, ptr %i.ax, align 4, !range !32, !noundef !5
  %i.az = trunc nuw i8 %i.ay to i1
  %.sroa.0.0.insert.insert.i.i = select i1 %i.az, i32 282380, i32 19459 ; 4 uses
  %.sroa.8.0.extract.shift21.i = and i32 %.sroa.0.0.insert.insert.i.i, 262144
end_hunk_22
begin_hunk_23_@_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm:bb.a
  %.0.in = phi i64 [ %i.k, %bb.a ], [ %.0, %bb.b ] ; 3 uses
  %.0 = shl i64 %.0.in, 1                         ; 4 uses
  %i.l = icmp ult i64 %.0, %1
  br i1 %i.l, label %bb.b, label %bb.c, !llvm.loop !33

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.b to i64
end_hunk_23
begin_hunk_24_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE19transfer_n_slots_fnEPvSM_SM_m:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %.01012, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %.0913, i64 80
  %.not.1 = icmp eq i64 %i.at, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
end_hunk_24
begin_hunk_25_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSR_PFvSR_hmmE:bb.a
._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !35

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bm, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
end_hunk_25
begin_hunk_26_@_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !36
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.b, align 4
  %i.c = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.d = xor i64 %1, %i.c
end_hunk_26
begin_hunk_27_@llvm.umax.i64
!25 = distinct !{!25, !26, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_largeIS7_EESH_INSL_8iteratorEbERKT_: argument 0"}
!26 = distinct !{!26, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_largeIS7_EESH_INSL_8iteratorEbERKT_"}
!27 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!28 = !{!"branch_weights", !"expected", i32 3433666, i32 2144049982}
!29 = !{!"branch_weights", !"expected", i32 1226607, i32 2146257041}
!30 = distinct !{!30, !8}
!31 = !{!"branch_weights", !"expected", i32 1907946, i32 2145575702}
!32 = !{i8 0, i8 2}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = !{i64 4}
end_hunk_27
