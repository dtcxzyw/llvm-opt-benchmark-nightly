inline.NumInlined: 1926
inline.NumDeleted: 800
begin_hunk_0_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6resizeEm:bb.a
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %.neg.i
  %i.cd = add i64 %i.bw, 23
  %i.ce = add i64 %i.cd, %i.cb
  %4 = and i64 %i.ce, -8
  %i.cf = shl i64 %i.bw, 3
  %i.cg = add i64 %4, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper15InitializeSlotsISaIcELm8ELb1ELm8EEEbRNS1_12CommonFieldsEPvT_:bb.a
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %.neg.i
  %i.af = add i64 %i.y, 23
  %i.ag = add i64 %i.af, %i.ad
  %4 = and i64 %i.ag, -8
  %5 = shl i64 %i.y, 3
  %6 = add i64 %4, %5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %6) #29
  %.pre = load i64, ptr %i.n, align 8, !tbaa !96
  br label %bb.e
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011618container_internal18DeallocateStandardILm8EEEvRNS1_12CommonFieldsERKNS1_15PolicyFunctionsE:bb.a
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  %i.j = add i64 %i.c, 31
  %i.k = add i64 %i.j, %i.g
  %2 = and i64 %i.k, -8
  %i.l = mul i64 %i.c, %i.a
  %3 = add i64 %i.l, 7
  %i.m = add i64 %3, %2
  %i.n = and i64 %i.m, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #29
  ret void
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE6resizeEm:bb.a
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %.neg.i
  %i.bv = add i64 %i.bo, 23
  %i.bw = add i64 %i.bv, %i.bt
  %4 = and i64 %i.bw, -8
  %i.bx = shl i64 %i.bo, 4
  %i.by = add i64 %4, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper15InitializeSlotsISaIcELm16ELb1ELm8EEEbRNS1_12CommonFieldsEPvT_:bb.a
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %.neg.i
  %i.af = add i64 %i.y, 23
  %i.ag = add i64 %i.af, %i.ad
  %4 = and i64 %i.ag, -8
  %5 = shl i64 %i.y, 4
  %6 = add i64 %4, %5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %6) #29
  %.pre = load i64, ptr %i.n, align 8, !tbaa !96
  br label %bb.e
end_hunk_4
