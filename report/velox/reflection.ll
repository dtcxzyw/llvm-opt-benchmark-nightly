inline.NumInlined: 1150
inline.NumDeleted: 569
begin_hunk_0_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE6resizeEm:bb.a
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %.neg.i
  %i.bo = add i64 %i.bh, 23
  %i.bp = add i64 %i.bo, %i.bm
  %i.bq = mul i64 %i.bh, 24
  %i.br = add i64 %i.bp, %i.bq
  %4 = and i64 %i.br, -8
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %4) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper15InitializeSlotsISaIcELm24ELb1ELm8EEEbRNS1_12CommonFieldsEPvT_:bb.a
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %.neg.i
  %i.af = add i64 %i.y, 23
  %i.ag = add i64 %i.af, %i.ad
  %4 = mul i64 %i.y, 24
  %5 = add i64 %i.ag, %4
  %6 = and i64 %5, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %6) #36
  %.pre = load i64, ptr %i.n, align 8, !tbaa !80
  br label %bb.e
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011618container_internal18DeallocateStandardILm8EEEvRNS1_12CommonFieldsERKNS1_15PolicyFunctionsE:bb.a
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  %i.j = add i64 %i.c, 31
  %i.k = add i64 %i.j, %i.g
  %i.l = mul i64 %i.c, %i.a
  %2 = or i64 %i.k, 7
  %i.m = add i64 %i.l, %2
  %i.n = and i64 %i.m, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #36
  ret void
end_hunk_2
