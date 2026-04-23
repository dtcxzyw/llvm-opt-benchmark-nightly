inline.NumInlined: 819
inline.NumDeleted: 323
begin_hunk_0_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1
  %i.dl = load ptr, ptr %0, align 8, !alias.scope !24, !noalias !25, !nonnull !3, !noundef !3
  %4 = shl i64 %i.cc, 5
  %5 = sub nuw nsw i64 -32, %4
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %5
  %6 = shl i64 %.sroa.0.0.i5.i, 5
  %7 = sub nuw nsw i64 -32, %6
  %i.dn = getelementptr inbounds i8, ptr %i.an, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dn, ptr noundef nonnull align 1 dereferenceable(32) %i.dm, i64 32, i1 false)
  %i.do = icmp eq i64 %i.cd, 0
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  br i1 %i.ft, label %bb.u, label %bb.t, !prof !72

bb.t:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %8 = shl i64 %.sroa.0.0.i5.i.i, 5
  %9 = sub nuw nsw i64 -32, %8
  %i.fu = getelementptr inbounds i8, ptr %.val.i13, i64 %9 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !noundef !3
end_hunk_1
begin_hunk_2_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws:bb.a
  br i1 %i.i, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %1 = sub nuw nsw i64 -16, %i.c
  %i.j = getelementptr inbounds i8, ptr %.val, i64 %1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #30
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit
end_hunk_2
begin_hunk_3_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.h:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.au = load ptr, ptr %0, align 8, !alias.scope !2205, !nonnull !3, !noundef !3
  %1 = sub nuw nsw i64 -32, %i.an
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !2205
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2x_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit
end_hunk_3
begin_hunk_4_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.h:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.au = load ptr, ptr %0, align 8, !alias.scope !2222, !nonnull !3, !noundef !3
  %1 = sub nuw nsw i64 -32, %i.an
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !2222
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit
end_hunk_4
begin_hunk_5_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.p:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.bo = load ptr, ptr %0, align 8, !alias.scope !2239, !nonnull !3, !noundef !3
  %1 = sub nuw nsw i64 -64, %i.bh
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !2239
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit
end_hunk_5
begin_hunk_6_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBT_18runtime_components7TrackedNtNtBT_8identity22SharedIdentityResolverEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.m:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1e_18runtime_components7TrackedNtNtB1e_8identity22SharedIdentityResolverEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !2422, !nonnull !3, !noundef !3
  %1 = sub nuw nsw i64 -64, %i.aq
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !2422
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1h_18runtime_components7TrackedNtNtB1h_8identity22SharedIdentityResolverEENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit
end_hunk_6
begin_hunk_7_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.j:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !2488, !nonnull !3, !noundef !3
  %1 = sub nuw nsw i64 -32, %i.ah
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !2488
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit
end_hunk_7
begin_hunk_8_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.i:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.am = load ptr, ptr %0, align 8, !alias.scope !2543, !nonnull !3, !noundef !3
  %1 = sub nuw nsw i64 -32, %i.af
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !2543
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2k_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit
end_hunk_8
