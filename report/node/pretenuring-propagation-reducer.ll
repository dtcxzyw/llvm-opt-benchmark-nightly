inline.NumInlined: 917
inline.NumDeleted: 493
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer7TryFindENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer7TryFindENS2_7OpIndexE:bb.a
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !7

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer12FindOrCreateENS2_7OpIndexE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer12FindOrCreateENS2_7OpIndexE:bb.a
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !7

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer6CreateENS2_7OpIndexE:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.g:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEJRPS1_EEEPT_DpOT0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !34 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !34
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer6CreateENS2_7OpIndexE:bb.a
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = add i64 %.sroa.7.0.i, %i.bh
  %i.bj = and i64 %i.bi, %i.o
  %i.bk = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ak, i64 %i.bj, i64 %.sroa.15.0.i) #15, !noalias !34 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.aa, align 8, !noalias !34
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.bk
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.an, align 8, !noalias !34
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.i:                                             ; preds = %.critedge19.i
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer6CreateENS2_7OpIndexE:bb.a
  %i.bn = add i64 %i.bm, %.sroa.7.0.i
  br label %bb.h

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.d, %bb.f, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread7
  %i.bo = phi i32 [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread7 ], [ %1, %bb.d ], [ %.pre, %bb.f ]
  %.sroa.4.04 = phi ptr [ %i.bl, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexEPNS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE22find_or_prepare_insertIS7_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread7 ], [ %i.s, %bb.d ], [ %i.z, %bb.f ] ; 2 uses
  store i32 %i.bo, ptr %.sroa.4.04, align 8
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer14OldifySubgraphENS2_7OpIndexE:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE4findIS7_EENSG_8iteratorERKS7_.exit

bb.m:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ac, align 8 ; 3 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.bt = load i64, ptr %i.ad, align 8
  %sext.i = shl i64 %i.bt, 48
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft30PretenuringPropagationAnalyzer14OldifySubgraphENS2_7OpIndexE:bb.a
  br i1 %i.cq, label %.thread33.i.i, label %bb.o, !prof !7

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.cn ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE4findIS7_EENSG_8iteratorERKS7_.exit

bb.o:                                             ; preds = %.lr.ph.i.i
end_hunk_8
begin_hunk_9_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE22find_or_prepare_insertIS7_EESt4pairINSG_8iteratorEbERKT_:bb.a
  store ptr %2, ptr %i.i, align 8, !noalias !63
  %i.j = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #15, !noalias !63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !63
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !63
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load ptr, ptr %i.l, align 8, !noalias !63
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i, i64 %i.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_smallIS7_EESt4pairINSG_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
end_hunk_9
begin_hunk_10_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE22find_or_prepare_insertIS7_EESt4pairINSG_8iteratorEbERKT_:bb.a
  %i.av = add i64 %.sroa.7.0.i, %i.au
  %i.aw = and i64 %i.av, %i.a
  %i.ax = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.aw, i64 %.sroa.15.0.i) #15, !noalias !68 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.n, align 8, !noalias !68
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.ax
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !68
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.ax
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.ba = add i64 %.sroa.15.0.i, 16               ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE22find_or_prepare_insertIS7_EESt4pairINSG_8iteratorEbERKT_:bb.a
.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit: ; preds = %.thread.i, %.critedge21.i
  %.sink83.i = phi ptr [ %i.ay, %.thread.i ], [ %i.bd, %.critedge21.i ] ; 2 uses
  %.sink81.i = phi ptr [ %i.az, %.thread.i ], [ %i.bc, %.critedge21.i ]
  %.sink.i = phi i8 [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink83.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_smallIS7_EESt4pairINSG_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_smallIS7_EESt4pairINSG_8iteratorEbERKT_.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit
  %.sink83.i.sink = phi ptr [ %.sink83.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit ], [ %i.k, %bb.e ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ @_ZN4absl18container_internal11kSooControlE, %bb.d ]
  %.sink81.i.sink = phi ptr [ %.sink81.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit ], [ %i.m, %bb.e ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %.sink.i.sink = phi i8 [ %.sink.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft7OpIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorIS7_EEE28find_or_prepare_insert_largeIS7_EESt4pairINSG_8iteratorEbERKT_.exit ], [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store ptr %.sink83.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_11
