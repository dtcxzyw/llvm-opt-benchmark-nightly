begin_hunk_0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtB3K_3gcp18GoogleCloudStorageNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.q = load i64, ptr %i.b, align 8, !range !165, !noundef !3
  %3 = and i64 %i.q, 1
  %or.cond.not = icmp eq i64 %3, 0
  br i1 %or.cond.not, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB1w_11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextB57_(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.q = load i64, ptr %i.b, align 8, !range !165, !noundef !3
  %3 = and i64 %i.q, 1
  %or.cond.not = icmp eq i64 %3, 0
  br i1 %or.cond.not, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
end_hunk_1
