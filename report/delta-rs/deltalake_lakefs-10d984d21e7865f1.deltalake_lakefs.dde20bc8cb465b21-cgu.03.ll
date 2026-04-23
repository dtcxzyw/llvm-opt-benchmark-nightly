inline.NumInlined: 260
inline.NumDeleted: 121
begin_hunk_0_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1
  %i.dl = load ptr, ptr %0, align 8, !alias.scope !42, !noalias !43, !nonnull !7, !noundef !7
  %4 = xor i64 %i.cc, -1
  %5 = shl i64 %4, 5
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %5
  %6 = xor i64 %.sroa.0.0.i5.i, -1
  %7 = shl i64 %6, 5
  %i.dn = getelementptr inbounds i8, ptr %i.an, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dn, ptr noundef nonnull align 1 dereferenceable(32) %i.dm, i64 32, i1 false)
  %i.do = icmp eq i64 %i.cd, 0
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br i1 %i.ft, label %bb.u, label %bb.t, !prof !90

bb.t:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %8 = xor i64 %.sroa.0.0.i5.i.i, -1
  %9 = shl i64 %8, 5
  %i.fu = getelementptr inbounds i8, ptr %.val.i13, i64 %9 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !noundef !7
end_hunk_1
begin_hunk_2_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br i1 %i.i, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %1 = xor i64 %i.c, -16
  %i.j = getelementptr inbounds i8, ptr %.val, i64 %1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #24
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit
end_hunk_2
begin_hunk_3_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a

bb.h:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.au = load ptr, ptr %0, align 8, !alias.scope !553, !nonnull !7, !noundef !7
  %1 = xor i64 %i.an, -32
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !553
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit
end_hunk_3
begin_hunk_4_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a

bb.i:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.am = load ptr, ptr %0, align 8, !alias.scope !587, !nonnull !7, !noundef !7
  %1 = xor i64 %i.af, -32
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !587
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2k_5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit
end_hunk_4
