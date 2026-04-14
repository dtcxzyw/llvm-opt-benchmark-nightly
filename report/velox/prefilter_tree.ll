inline.NumInlined: 1854
inline.NumDeleted: 788
begin_hunk_0_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE6resizeEm:bb.a
  %i.dy = getelementptr inbounds i8, ptr %i.du, i64 %.neg.i
  %i.dz = add i64 %i.ds, 23
  %i.ea = add i64 %i.dz, %i.dx
  %i.eb = shl i64 %i.ds, 3
  %i.ec = add i64 %i.ea, %i.eb
  %4 = and i64 %i.ec, -8
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %4) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper15InitializeSlotsISaIcELm8ELb1ELm8EEEbRNS1_12CommonFieldsEPvT_:bb.a
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %.neg.i
  %i.af = add i64 %i.y, 23
  %i.ag = add i64 %i.af, %i.ad
  %4 = shl i64 %i.y, 3
  %5 = add i64 %i.ag, %4
  %6 = and i64 %5, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %6) #31
  %.pre = load i64, ptr %i.n, align 8, !tbaa !60
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31
  ret void
end_hunk_2
