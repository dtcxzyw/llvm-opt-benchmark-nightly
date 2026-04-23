inline.NumInlined: 177
inline.NumDeleted: 86
begin_hunk_0_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1
  %i.dl = load ptr, ptr %0, align 8, !alias.scope !24, !noalias !25, !nonnull !8, !noundef !8
  %4 = shl i64 %i.cc, 5
  %5 = sub nuw nsw i64 -32, %4
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %5
  %6 = shl i64 %.sroa.0.0.i5.i, 5
  %7 = sub nuw nsw i64 -32, %6
  %i.dn = getelementptr inbounds i8, ptr %i.an, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dn, ptr noundef nonnull align 1 dereferenceable(32) %i.dm, i64 32, i1 false)
  %i.do = icmp eq i64 %i.cd, 0
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsa5Qem16B4JI_15deltalake_azure:bb.a
  br i1 %i.ft, label %bb.u, label %bb.t, !prof !72

bb.t:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %8 = shl i64 %.sroa.0.0.i5.i.i, 5
  %9 = sub nuw nsw i64 -32, %8
  %i.fu = getelementptr inbounds i8, ptr %.val.i13, i64 %9 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !noundef !8
end_hunk_1
begin_hunk_2_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a

bb.g:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !221, !nonnull !8, !noundef !8
  %1 = sub nuw nsw i64 -32, %i.ac
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !221
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB2j_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure.exit
end_hunk_2
begin_hunk_3_@_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsa5Qem16B4JI_15deltalake_azure:bb.a
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp ult i64 %i.l, 9223372036854775793
  tail call void @llvm.assume(i1 %i.n)
  %2 = sub nuw nsw i64 -32, %i.i
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %2
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE15into_allocationCsa5Qem16B4JI_15deltalake_azure.exit

end_hunk_3
