inline.NumInlined: 4409
inline.NumDeleted: 2144
begin_hunk_0_@_ZN2v88internal8compiler33TurboshaftStateObjectDeduplicator11GetObjectIdEjNS1_10ObjectTypeE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.k = load i64, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler33TurboshaftStateObjectDeduplicator11GetObjectIdEjNS1_10ObjectTypeE:bb.a

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE10find_largeIjEENSG_8iteratorERSD_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE22find_or_prepare_insertIjEESC_INSG_8iteratorEbERKT_:bb.a
  store ptr %2, ptr %i.j, align 8, !noalias !250
  %i.k = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIjEEjLb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #29, !noalias !250 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !250
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !250, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load ptr, ptr %i.m, align 8, !noalias !250
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i, i64 %i.k
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE28find_or_prepare_insert_smallIjEESC_INSG_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE22find_or_prepare_insertIjEESC_INSG_8iteratorEbERKT_:bb.a
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.a
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i64 %i.ay, i64 %.sroa.15.0.i) #29, !noalias !255 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.o, align 8, !noalias !255, !nonnull !10, !noundef !10
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.az
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ac, align 8, !noalias !255
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE28find_or_prepare_insert_smallIjEESC_INSG_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.bc = add i64 %.sroa.15.0.i, 16               ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE22find_or_prepare_insertIjEESC_INSG_8iteratorEbERKT_:bb.a
.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.an
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.an
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE28find_or_prepare_insert_smallIjEESC_INSG_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorISt4pairIKjjEEEE28find_or_prepare_insert_smallIjEESC_INSG_8iteratorEbERKT_.exit: ; preds = %.critedge21.i, %.thread.i, %bb.e, %bb.d, %bb.c
  %.sink82.i.sink = phi ptr [ @_ZN4absl18container_internal11kSooControlE, %bb.d ], [ %i.l, %bb.e ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ %i.ba, %.thread.i ], [ %i.bf, %.critedge21.i ]
  %.sink81.i.sink = phi ptr [ %i.f, %bb.d ], [ %i.n, %bb.e ], [ %i.e, %bb.c ], [ %i.bb, %.thread.i ], [ %i.be, %.critedge21.i ]
  %.sink.i.sink = phi i8 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  store ptr %.sink82.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_4
