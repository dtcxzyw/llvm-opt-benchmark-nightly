inline.NumInlined: 1116
inline.NumDeleted: 605
begin_hunk_0_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsaB04DkjCm5a_10aws_config3sso5cache14CachedSsoTokenNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws
define internal noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsaB04DkjCm5a_10aws_config3sso5cache14CachedSsoTokenNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCsaB04DkjCm5a_10aws_config3sso5cacheNtB4_14CachedSsoTokenNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsjyY8HP3IvQ6_12object_store3aws8checksum8ChecksumNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 6)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRRINtNtB8_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsaB04DkjCm5a_10aws_config3sso5token16SsoTokenProviderEINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error10TokenErrorEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12
  %.val = load ptr, ptr %i.c, align 8, !nonnull !12, !align !78, !noundef !12 ; 2 uses
  %i.d = load i64, ptr %.val, align 8, !range !11, !noalias !1655, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1655
  store ptr %i.f, ptr %i.a, align 8, !noalias !1655
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1655
  br label %_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsaB04DkjCm5a_10aws_config3sso5token16SsoTokenProviderEINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error10TokenErrorEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1655
  store ptr %i.f, ptr %i.b, align 8, !noalias !1655
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1655
  br label %_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsaB04DkjCm5a_10aws_config3sso5token16SsoTokenProviderEINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error10TokenErrorEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsaB04DkjCm5a_10aws_config3sso5token16SsoTokenProviderEINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error10TokenErrorEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRRINtNtB8_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsaB04DkjCm5a_10aws_config7profile11credentials13ChainProviderEINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error16CredentialsErrorEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12
  %.val = load ptr, ptr %i.c, align 8, !nonnull !12, !align !78, !noundef !12 ; 2 uses
  %i.d = load i64, ptr %.val, align 8, !range !11, !noalias !1660, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1660
  store ptr %i.f, ptr %i.a, align 8, !noalias !1660
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1660
  br label %_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsaB04DkjCm5a_10aws_config7profile11credentials13ChainProviderEINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error16CredentialsErrorEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1660
  store ptr %i.f, ptr %i.b, align 8, !noalias !1660
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1660
  br label %_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsaB04DkjCm5a_10aws_config7profile11credentials13ChainProviderEINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error16CredentialsErrorEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsaB04DkjCm5a_10aws_config7profile11credentials13ChainProviderEINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error16CredentialsErrorEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRRTNtNtNtCsaB04DkjCm5a_10aws_config3sso5cache14CachedSsoTokenNtNtCs2pqxYH9ZEk8_3std4time10SystemTimeENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12
  %.val = load ptr, ptr %i.d, align 8, !nonnull !12, !align !78, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1665
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !1671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1665
  store ptr %.val, ptr %i.b, align 8, !noalias !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1665
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 176
  store ptr %i.e, ptr %i.a, align 8, !noalias !1665
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83) ; 0 uses
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84) ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1665
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtB5_5AsAny6as_anyBD_(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @85, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtB5_5AsAny7any_refBD_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(920) %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @85, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtB5_5AsAny8into_anyBD_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @85, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtB5_5AsAny9type_nameBD_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @86, i64 62 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_Cs9rVkZwOUgsI_13deltalake_awsNtB5_11CommitEntryINtNtCsbvkFyIu7lgC_4core7convert7TryFromRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 3 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 15 uses
  %i.m = alloca [40 x i8], align 8                ; 11 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 12 uses
  %i.r = alloca [40 x i8], align 8                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [128 x i8], align 8               ; 4 uses
  %i.w = alloca [128 x i8], align 8               ; 4 uses
  %i.x = alloca [256 x i8], align 8               ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 9 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %i.aa = alloca [40 x i8], align 8               ; 8 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call fastcc void @_RNvCs9rVkZwOUgsI_13deltalake_aws29extract_required_string_field(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43)
  %i.ac = load i64, ptr %i.aa, align 8, !range !685, !noundef !12 ; 2 uses
  %.not = icmp eq i64 %i.ac, 9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 12 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7115.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ah, align 8
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %.sroa.2117.0..sroa_idx, align 8
  %.sroa.3118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ag, ptr %.sroa.3118.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.ck

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %i.ae, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ag, ptr %i.ai, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  %i.aj = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9rVkZwOUgsI_13deltalake_aws15DELTA_LOG_REGEX, i64 32) acquire, align 8, !noalias !1672
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d, !prof !47

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1672
  store ptr @_RNvCs9rVkZwOUgsI_13deltalake_aws15DELTA_LOG_REGEX, ptr %i.p, align 8, !noalias !1672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1672
  store ptr %i.p, ptr %i.o, align 8, !noalias !1672
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCs9rVkZwOUgsI_13deltalake_aws15DELTA_LOG_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1672
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1675
  store i32 0, ptr %i.n, align 8, !noalias !1675
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ae, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1675
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.ag, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1675
  %.sroa.7.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx4.i.i, align 8, !noalias !1675
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.ag, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1675
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !1675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1675
  call void @_RNvMs2_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_5Regex15create_captures(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @_RNvCs9rVkZwOUgsI_13deltalake_aws15DELTA_LOG_REGEX), !noalias !1679
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store i32 0, ptr %i.al, align 8, !noalias !1675
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !1675, !nonnull !12, !noundef !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !1675, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1675
  %i.aq = load ptr, ptr @_RNvCs9rVkZwOUgsI_13deltalake_aws15DELTA_LOG_REGEX, align 8, !noalias !1680, !nonnull !12, !noundef !12 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !noalias !1684, !nonnull !12, !noundef !12 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 138
  %i.av = load i8, ptr %i.au, align 2, !range !1208, !noalias !1684, !noundef !12
  %cond.i.i.i = icmp eq i8 %i.av, 2
  br i1 %cond.i.i.i, label %.thread.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 168
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1685 ; 6 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !11, !noalias !1685, !noundef !12
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.e, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !1685
  %i.bc = icmp ult i64 %i.ag, %i.bb
  br i1 %i.bc, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  %i.be = load i32, ptr %i.bd, align 4, !noalias !1685, !noundef !12
  %i.bf = and i32 %i.be, 1
  %.not8.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not8.i.i.i.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bh = load i32, ptr %i.bg, align 8, !noalias !1685, !noundef !12
  %i.bi = and i32 %i.bh, 2
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !11, !noalias !1685, !noundef !12
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i

_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i: ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !1685
  %i.bp = icmp ugt i64 %i.ag, %i.bo
  br i1 %i.bp, label %.thread.i.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i

_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i: ; preds = %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i, %bb.h, %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9rVkZwOUgsI_13deltalake_aws15DELTA_LOG_REGEX, i64 8), align 8, !noalias !1680, !nonnull !12, !noundef !12 ; 4 uses
  %i.br = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4D_10UnwindSafeEL_EE3get0jECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @66)
          to label %.noexc.i.i unwind label %bb.t, !noalias !1679 ; 3 uses

.noexc.i.i:                                       ; preds = %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40 ; 2 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8, !noalias !1689 ; 2 uses
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.thread.i.i, label %bb.i, !prof !47

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE8get_slowCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noundef nonnull align 8 %i.bq, i64 noundef %i.br, i64 noundef %i.bt)
          to label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.t, !noalias !1679

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.thread.i.i: ; preds = %.noexc.i.i
  store atomic i64 1, ptr %i.bs release, align 8, !noalias !1689
  %i.bv = inttoptr i64 %i.br to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.bq, ptr %i.bw, align 8, !noalias !1680
  store i64 1, ptr %i.l, align 8, !noalias !1680
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bv, ptr %i.bx, align 8, !noalias !1680
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i8 0, ptr %i.by, align 8, !noalias !1680
  %i.bz = load ptr, ptr %i.ar, align 8, !noalias !1684, !nonnull !12, !noundef !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !1684, !nonnull !12, !align !78, !noundef !12 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !range !80, !invariant.load !12, !noalias !1684
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = and i64 %i.ce, -16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  br label %bb.j

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.i
  %.pre.i.i = load i64, ptr %i.l, align 8, !range !11, !noalias !1680
  %i.ci = trunc nuw i64 %.pre.i.i to i1
  %i.cj = load ptr, ptr %i.ar, align 8, !noalias !1684, !nonnull !12, !noundef !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !1684, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !range !80, !invariant.load !12, !noalias !1684
  %i.co = add nsw i64 %i.cn, -1
  %i.cp = and i64 %i.co, -16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  br i1 %i.ci, label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.i._crit_edge.i, label %bb.k

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.i._crit_edge.i: ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !1680
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.i._crit_edge.i, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.thread.i.i
  %i.cs = phi ptr [ %i.bq, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.thread.i.i ], [ %.pre.i, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.i._crit_edge.i ]
  %i.ct = phi ptr [ %i.ch, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.thread.i.i ], [ %i.cr, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.i._crit_edge.i ]
  %i.cu = phi ptr [ %i.cb, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.thread.i.i ], [ %i.cl, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.i._crit_edge.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !1680, !nonnull !12, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cy = phi ptr [ %i.ct, %bb.j ], [ %i.cr, %bb.k ]
  %i.cz = phi ptr [ %i.cu, %bb.j ], [ %i.cl, %bb.k ]
  %i.da = phi i1 [ true, %bb.j ], [ false, %bb.k ]
  %.sroa.01.0.i.i.i = phi ptr [ %i.cv, %bb.j ], [ %i.cx, %bb.k ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  %i.dc = load ptr, ptr %i.db, align 8, !invariant.load !12, !noalias !1684, !nonnull !12
  %i.dd = invoke { i32, i32 } %i.dc(ptr noundef nonnull %i.cy, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.01.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull align 8 %i.an, i64 noundef range(i64 0, 1152921504606846976) %i.ap)
          to label %bb.m unwind label %bb.r, !noalias !1679 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !1680 ; 5 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !1680 ; 4 uses
  %.sroa.46.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.46.0.copyload.i.i.i = load i8, ptr %.sroa.46.0..sroa_idx.i9.i.i, align 8, !noalias !1680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1680
  %i.de = ptrtoint ptr %.sroa.2.0.copyload.i.i.i to i64 ; 2 uses
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.de, ptr %i.k, align 8, !noalias !1692
  %i.df = icmp eq ptr %.sroa.2.0.copyload.i.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.df, label %.noexc10.i.i.i, label %.noexc11.i.i.i, !prof !14

bb.o:                                             ; preds = %bb.m
  %i.dg = trunc nuw i8 %.sroa.46.0.copyload.i.i.i to i1
  br i1 %i.dg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  invoke fastcc void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE9put_valueCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %.sroa.3.0.copyload.i.i.i, ptr noalias noundef nonnull align 8 %.sroa.2.0.copyload.i.i.i) #37
          to label %bb.u unwind label %bb.t, !noalias !1679

bb.q:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.sroa.2.0.copyload.i.i.i)
          to label %bb.u unwind label %bb.t, !noalias !1679

.noexc10.i.i.i:                                   ; preds = %bb.n
  invoke void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #35
          to label %.noexc13.i.i unwind label %bb.t, !noalias !1679

.noexc13.i.i:                                     ; preds = %.noexc10.i.i.i
  unreachable

.noexc11.i.i.i:                                   ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i, i64 40
  store atomic i64 %i.de, ptr %i.dh release, align 8, !noalias !1679
  br label %bb.u

bb.r:                                             ; preds = %bb.l
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata4util4pool9PoolGuardNtNtNtBN_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1B_NtNtB4_6marker4SyncNtB3h_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3L_10UnwindSafeEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.l) #36
          to label %.body.i.i unwind label %bb.s, !noalias !1679

end_hunk_0
begin_hunk_1_@_RNvXs2_Cs9rVkZwOUgsI_13deltalake_awsNtB5_11CommitEntryINtNtCsbvkFyIu7lgC_4core7convert7TryFromRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE8try_from:bb.a

bb.av:                                            ; preds = %bb.at
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.fe ; 2 uses
  %i.gc = add nsw i64 %i.fv, -1                   ; 3 uses
  %i.gd = icmp samesign ult i64 %i.fv, 17
  br i1 %i.gd, label %.preheader114.i.i.i, label %.lr.ph.i.i.i

.preheader114.i.i.i:                              ; preds = %bb.av
  %.not103137.i.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not103137.i.i.i, label %.loopexit227, label %.lr.ph141.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.av, %bb.ay
  %.sroa.0.1136.i.i.i = phi ptr [ %i.ge, %bb.ay ], [ %i.gb, %bb.av ] ; 3 uses
  %.sroa.26.1135.i.i.i = phi i64 [ %i.gf, %bb.ay ], [ %i.gc, %bb.av ]
  %.sroa.084.0134.i.i.i = phi i64 [ %i.gq, %bb.ay ], [ 0, %bb.av ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i, i64 1
  %i.gf = add nsw i64 %.sroa.26.1135.i.i.i, -1    ; 2 uses
  %i.gg = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i, i64 10) ; 2 uses
  %i.gh = extractvalue { i64, i1 } %i.gg, 0
  %i.gi = extractvalue { i64, i1 } %i.gg, 1
  br i1 %i.gi, label %.loopexit.sink.split.i.i, label %bb.aw, !prof !14

bb.aw:                                            ; preds = %.lr.ph.i.i.i
  %i.gj = load i8, ptr %.sroa.0.1136.i.i.i, align 1, !alias.scope !1709, !noalias !1712, !noundef !12
  %i.gk = zext i8 %i.gj to i32
  %i.gl = add nsw i32 %i.gk, -48                  ; 2 uses
  %i.gm = icmp ult i32 %i.gl, 10
  br i1 %i.gm, label %bb.ax, label %.loopexit.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.gn = zext nneg i32 %i.gl to i64
  %i.go = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.gh, i64 %i.gn) ; 2 uses
  %i.gp = extractvalue { i64, i1 } %i.go, 1
  br i1 %i.gp, label %.loopexit.i.i, label %bb.ay, !prof !14

bb.ay:                                            ; preds = %bb.ax
  %i.gq = extractvalue { i64, i1 } %i.go, 0       ; 2 uses
  %.not102.i.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not102.i.i.i, label %.loopexit227, label %.lr.ph.i.i.i

.lr.ph141.i.i.i:                                  ; preds = %.preheader114.i.i.i, %bb.az
  %.sroa.0.2140.i.i.i = phi ptr [ %i.gx, %bb.az ], [ %i.gb, %.preheader114.i.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i = phi i64 [ %i.gw, %bb.az ], [ %i.gc, %.preheader114.i.i.i ]
  %.sroa.084.2138.i.i.i = phi i64 [ %i.gz, %bb.az ], [ 0, %.preheader114.i.i.i ]
  %i.gr = load i8, ptr %.sroa.0.2140.i.i.i, align 1, !alias.scope !1709, !noalias !1712, !noundef !12
  %i.gs = zext i8 %i.gr to i32
  %i.gt = add nsw i32 %i.gs, -48                  ; 2 uses
  %i.gu = icmp ult i32 %i.gt, 10
  br i1 %i.gu, label %bb.az, label %.loopexit.i.i

bb.az:                                            ; preds = %.lr.ph141.i.i.i
  %i.gv = mul i64 %.sroa.084.2138.i.i.i, 10
  %i.gw = add nsw i64 %.sroa.26.2139.i.i.i, -1    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i, i64 1
  %i.gy = zext nneg i32 %i.gt to i64
  %i.gz = sub i64 %i.gv, %i.gy                    ; 2 uses
  %.not103.i.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not103.i.i.i, label %.loopexit227, label %.lr.ph141.i.i.i

bb.ba:                                            ; preds = %bb.au, %bb.at
  %.sroa.26.0.i.i.i = phi i64 [ %i.ga, %bb.au ], [ %i.fv, %bb.at ] ; 4 uses
  %.sroa.0.0.i14.i.i = phi ptr [ %i.fz, %bb.au ], [ %i.fw, %bb.at ] ; 2 uses
  %i.ha = icmp samesign ult i64 %.sroa.26.0.i.i.i, 16
  br i1 %i.ha, label %.preheader.i.i.i, label %.preheader111.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ba
  %.not105146.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 0
  br i1 %.not105146.i.i.i, label %.loopexit227, label %.lr.ph150.i.i.i

.preheader111.i.i.i:                              ; preds = %bb.ba, %bb.bd
  %.sroa.0.3145.i.i.i = phi ptr [ %i.hb, %bb.bd ], [ %.sroa.0.0.i14.i.i, %bb.ba ] ; 3 uses
  %.sroa.26.3144.i.i.i = phi i64 [ %i.hc, %bb.bd ], [ %.sroa.26.0.i.i.i, %bb.ba ]
  %.sroa.084.3143.i.i.i = phi i64 [ %i.hn, %bb.bd ], [ 0, %bb.ba ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i, i64 1
  %i.hc = add nsw i64 %.sroa.26.3144.i.i.i, -1    ; 2 uses
  %i.hd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i, i64 10) ; 2 uses
  %i.he = extractvalue { i64, i1 } %i.hd, 0
  %i.hf = extractvalue { i64, i1 } %i.hd, 1
  br i1 %i.hf, label %.loopexit.sink.split.i.i, label %bb.bb, !prof !14

bb.bb:                                            ; preds = %.preheader111.i.i.i
  %i.hg = load i8, ptr %.sroa.0.3145.i.i.i, align 1, !alias.scope !1709, !noalias !1712, !noundef !12
  %i.hh = zext i8 %i.hg to i32
  %i.hi = add nsw i32 %i.hh, -48                  ; 2 uses
  %i.hj = icmp ult i32 %i.hi, 10
  br i1 %i.hj, label %bb.bc, label %.loopexit.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.hk = zext nneg i32 %i.hi to i64
  %i.hl = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.he, i64 %i.hk) ; 2 uses
  %i.hm = extractvalue { i64, i1 } %i.hl, 1
  br i1 %i.hm, label %.loopexit.i.i, label %bb.bd, !prof !14

bb.bd:                                            ; preds = %bb.bc
  %i.hn = extractvalue { i64, i1 } %i.hl, 0       ; 2 uses
  %.not104.i.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not104.i.i.i, label %.loopexit227, label %.preheader111.i.i.i

.lr.ph150.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.be
  %.sroa.0.4149.i.i.i = phi ptr [ %i.hu, %bb.be ], [ %.sroa.0.0.i14.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i = phi i64 [ %i.ht, %bb.be ], [ %.sroa.26.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.084.4147.i.i.i = phi i64 [ %i.hw, %bb.be ], [ 0, %.preheader.i.i.i ]
  %i.ho = load i8, ptr %.sroa.0.4149.i.i.i, align 1, !alias.scope !1709, !noalias !1712, !noundef !12
  %i.hp = zext i8 %i.ho to i32
  %i.hq = add nsw i32 %i.hp, -48                  ; 2 uses
  %i.hr = icmp ult i32 %i.hq, 10
  br i1 %i.hr, label %bb.be, label %.loopexit.i.i

bb.be:                                            ; preds = %.lr.ph150.i.i.i
  %i.hs = mul i64 %.sroa.084.4147.i.i.i, 10
  %i.ht = add nsw i64 %.sroa.26.4148.i.i.i, -1    ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i, i64 1
  %i.hv = zext nneg i32 %i.hq to i64
  %i.hw = add i64 %i.hs, %i.hv                    ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.ht, 0
  br i1 %.not105.i.i.i, label %.loopexit227, label %.lr.ph150.i.i.i

bb.bf:                                            ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ag
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag, i64 noundef %i.fj, i64 noundef %i.fk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #31
          to label %bb.aq unwind label %bb.af, !noalias !1695

.loopexit.sink.split.i.i:                         ; preds = %.lr.ph.i.i.i, %.preheader111.i.i.i
  %.sroa.0.3145.i.lcssa.sink.i.i = phi ptr [ %.sroa.0.3145.i.i.i, %.preheader111.i.i.i ], [ %.sroa.0.1136.i.i.i, %.lr.ph.i.i.i ]
  %.sink87.i.i = phi i8 [ 2, %.preheader111.i.i.i ], [ 3, %.lr.ph.i.i.i ]
  %i.hx = load i8, ptr %.sroa.0.3145.i.lcssa.sink.i.i, align 1, !alias.scope !1709, !noalias !1712, !noundef !12
  %i.hy = add i8 %i.hx, -48
  %i.hz = icmp ult i8 %i.hy, 10
  %spec.select27.i.i = select i1 %i.hz, i8 %.sink87.i.i, i8 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ax, %bb.aw, %.lr.ph141.i.i.i, %bb.bc, %bb.bb, %.lr.ph150.i.i.i, %.loopexit.sink.split.i.i, %bb.as, %bb.as, %bb.ar
  %.sroa.4.0.ph.i.i = phi i8 [ 1, %.lr.ph150.i.i.i ], [ %spec.select27.i.i, %.loopexit.sink.split.i.i ], [ 1, %.lr.ph141.i.i.i ], [ 1, %bb.as ], [ 0, %bb.ar ], [ 2, %bb.bc ], [ 1, %bb.as ], [ 1, %bb.bb ], [ 3, %bb.ax ], [ 1, %bb.aw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1714
  store i8 %.sroa.4.0.ph.i.i, ptr %i.j, align 1, !noalias !1714
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31
          to label %.noexc.i1.i unwind label %bb.af, !noalias !1695

.noexc.i1.i:                                      ; preds = %.loopexit.i.i
  unreachable

bb.bg:                                            ; preds = %bb.af
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

.loopexit227:                                     ; preds = %bb.ay, %bb.az, %bb.bd, %bb.be, %.preheader114.i.i.i, %.preheader.i.i.i
  %.sroa.1515.0.i.i = phi i64 [ %i.hw, %bb.be ], [ %i.gz, %bb.az ], [ %i.hn, %bb.bd ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader114.i.i.i ], [ %i.gq, %bb.ay ]
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call fastcc void @_RNvCs9rVkZwOUgsI_13deltalake_aws29extract_required_string_field(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45)
  %i.ib = load i64, ptr %i.z, align 8, !range !685, !noundef !12 ; 2 uses
  %.not186 = icmp eq i64 %i.ib, 9
  %i.ic = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.if = load i64, ptr %i.ie, align 8            ; 2 uses
  br i1 %.not186, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %bb.u, %.thread.i.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.m), !noalias !1679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1717
  store ptr %i.ab, ptr %i.i, align 8, !noalias !1717
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1717
  %i.ig = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ig, ptr noundef nonnull @33, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1717
  %.sroa.617.0.copyload = load i64, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ih, align 8
  %.sroa.2127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.617.0.copyload, ptr %.sroa.2127.0..sroa_idx, align 8
  %.sroa.3128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3128.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.ck

bb.bi:                                            ; preds = %.loopexit227
  %.sroa.7136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4140.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7136.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ib, ptr %i.ii, align 8
  %.sroa.2138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.id, ptr %.sroa.2138.0..sroa_idx, align 8
  %.sroa.3139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.if, ptr %.sroa.3139.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.ck

bb.bj:                                            ; preds = %.loopexit227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ij = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs9rVkZwOUgsI_13deltalake_aws14DELTA_LOG_PATH, i64 24) acquire, align 8
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bk, !prof !47

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvCs9rVkZwOUgsI_13deltalake_aws14DELTA_LOG_PATH, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCs9rVkZwOUgsI_13deltalake_aws14DELTA_LOG_PATH, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.bj, %bb.bk
  call void @_RNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB2_4Path5parts(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvCs9rVkZwOUgsI_13deltalake_aws14DELTA_LOG_PATH)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.id, i64 noundef %i.if)
  invoke void @_RNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB2_4Path5parts(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #36
          to label %common.resume unwind label %bb.co

bb.bm:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.w, i64 128, i1 false), !alias.scope !1726, !noalias !1724
  %i.im = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.im, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.v, i64 128, i1 false), !alias.scope !1728, !noalias !1721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RINvXs4_NtCsjyY8HP3IvQ6_12object_store4pathNtB6_4PathINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorNtNtB6_5parts8PathPartE9from_iterINtNtNtBW_8adapters5chain5ChainINtNtB2r_3map3MapINtNtNtBY_3str4iter15SplitTerminatorReENCNvMB6_BF_5parts0EB2R_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.x)
          to label %bb.bn unwind label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %.loopexit.split-lp

.loopexit225:                                     ; preds = %.lr.ph.i.i.i193
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.bq, %bb.bu, %.loopexit.i, %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit225, %.loopexit.split-lp, %bb.bo
  %eh.lpad-body = phi { ptr, i32 } [ %i.in, %bb.bo ], [ %lpad.loopexit, %.loopexit225 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #36
          to label %common.resume unwind label %bb.co

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @23, ptr %i.f, align 8, !noalias !1732
  %i.iq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 10, ptr %i.iq, align 8, !noalias !1732
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !1734, !noalias !1737, !noundef !12
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %.loopexit226, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.iv = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.iu, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 10)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  %i.iw = lshr i64 %i.iv, 57
  %i.ix = trunc nuw nsw i64 %i.iw to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !alias.scope !1745, !noalias !1746, !noundef !12 ; 2 uses
  %i.ja = load ptr, ptr %1, align 8, !alias.scope !1745, !noalias !1746, !nonnull !12, !noundef !12 ; 2 uses
  %i.jb = insertelement <16 x i8> poison, i8 %i.ix, i64 0
  %i.jc = shufflevector <16 x i8> %i.jb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %.noexc
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.jt, %bb.bt ]
  %.pn.i.i.i.i = phi i64 [ %i.iv, %.noexc ], [ %i.ju, %bb.bt ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.iz ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i21.i.i.i = load <16 x i8>, ptr %i.jd, align 1, !noalias !1749 ; 2 uses
  %i.je = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i, %i.jc
  %i.jf = bitcast <16 x i1> %i.je to i16          ; 2 uses
  %.not.i.not27.i.i.i = icmp eq i16 %i.jf, 0
  br i1 %.not.i.not27.i.i.i, label %._crit_edge.i.i.i194, label %.lr.ph.i.i.i193

.lr.ph.i.i.i193:                                  ; preds = %bb.br, %bb.bs
  %.sroa.06.0.i28.i.i.i = phi i16 [ %i.js, %bb.bs ], [ %i.jf, %bb.br ] ; 3 uses
  %i.jg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i.i, i1 true)
  %i.jh = zext nneg i16 %i.jg to i64
  %i.ji = add i64 %.sroa.01.0.i.i.i.i, %i.jh
  %i.jj = and i64 %i.ji, %i.iz
  %i.jk = sub nsw i64 0, %i.jj
  %i.jl = getelementptr inbounds [80 x i8], ptr %i.ja, i64 %i.jk ; 4 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -80
  %i.jn = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef range(i64 8, 11) 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.jm)
          to label %.noexc196 unwind label %.loopexit225

.noexc196:                                        ; preds = %.lr.ph.i.i.i193
  br i1 %i.jn, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.bs, !prof !47

._crit_edge.i.i.i194:                             ; preds = %bb.bs, %bb.br
  %i.jo = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i, splat (i8 -1)
  %i.jp = bitcast <16 x i1> %i.jo to i16
  %i.jq = icmp eq i16 %i.jp, 0
  br i1 %i.jq, label %bb.bt, label %.loopexit226, !prof !14

bb.bs:                                            ; preds = %.noexc196
  %i.jr = add i16 %.sroa.06.0.i28.i.i.i, -1
  %i.js = and i16 %i.jr, %.sroa.06.0.i28.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.js, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i194, label %.lr.ph.i.i.i193

bb.bt:                                            ; preds = %._crit_edge.i.i.i194
  %i.jt = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ju = add i64 %.sroa.01.0.i.i.i.i, %i.jt
  br label %bb.br

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.noexc196
  %i.jv = getelementptr inbounds i8, ptr %i.jl, i64 -56
  %i.jw = load i8, ptr %i.jv, align 8, !range !526, !noalias !1752, !noundef !12
  %i.jx = icmp eq i8 %i.jw, 5
  br i1 %i.jx, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1753
  store ptr %i.f, ptr %i.d, align 8, !noalias !1753
  %.sroa.42.0..sroa_idx.i.i195 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.42.0..sroa_idx.i.i195, align 8, !noalias !1753
  %i.jy = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.jy, ptr noundef nonnull @18, ptr noundef nonnull %i.d)
          to label %bb.bv unwind label %.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1753
  %.sroa.7.0.copyload.i = load ptr, ptr %i.jy, align 8, !noalias !1732
  %.sroa.3149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3149.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ip, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jz, align 8
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.copyload.i, ptr %.sroa.2148.0..sroa_idx, align 8
  br label %bb.cl

bb.bw:                                            ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ka = getelementptr i8, ptr %i.jl, i64 -40
  %.val = load ptr, ptr %i.ka, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.kb = getelementptr i8, ptr %i.jl, i64 -32
  %.val192 = load i64, ptr %i.kb, align 8, !noundef !12 ; 2 uses
  switch i64 %.val192, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.i
    i64 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.kc = load i8, ptr %.val, align 1, !alias.scope !1757, !noalias !1760, !noundef !12 ; 2 uses
  switch i8 %i.kc, label %bb.by [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i.i:                             ; preds = %bb.bw
  %.pr.i.i = load i8, ptr %.val, align 1, !alias.scope !1757, !noalias !1760
  br label %bb.by

bb.by:                                            ; preds = %thread-pre-split.i.i, %bb.bx
  %i.kd = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.kc, %bb.bx ]
  %cond.i.i = icmp eq i8 %i.kd, 43                ; 2 uses
  %i.ke = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %.val192, %i.ke   ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i199 = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.kf = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.kf, label %.preheader.i.i, label %.preheader56.i.i.preheader

end_hunk_1
begin_hunk_2_@_RNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB4_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options:bb.a
  br i1 %min.iters.check301, label %vec.epilog.ph317, label %vector.ph302

vector.ph302:                                     ; preds = %vector.main.loop.iter.check300
  %n.mod.vf303 = and i64 %.val6.i, 24
  %n.vec304 = and i64 %.val6.i, -32               ; 4 uses
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph302
  %index306 = phi i64 [ 0, %vector.ph302 ], [ %index.next309, %vector.body305 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 %index306 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %wide.load307 = load <16 x i8>, ptr %i.jz, align 1, !alias.scope !2024, !noalias !2027 ; 2 uses
  %wide.load308 = load <16 x i8>, ptr %i.ka, align 1, !alias.scope !2024, !noalias !2027 ; 2 uses
  %i.kb = add <16 x i8> %wide.load307, splat (i8 -65)
  %i.kc = add <16 x i8> %wide.load308, splat (i8 -65)
  %i.kd = icmp ult <16 x i8> %i.kb, splat (i8 26)
  %i.ke = icmp ult <16 x i8> %i.kc, splat (i8 26)
  %i.kf = select <16 x i1> %i.kd, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.kg = select <16 x i1> %i.ke, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.kh = or <16 x i8> %i.kf, %wide.load307
  %i.ki = or <16 x i8> %i.kg, %wide.load308
  store <16 x i8> %i.kh, ptr %i.jz, align 1, !alias.scope !2024, !noalias !2027
  store <16 x i8> %i.ki, ptr %i.ka, align 1, !alias.scope !2024, !noalias !2027
  %index.next309 = add nuw i64 %index306, 32      ; 2 uses
  %i.kj = icmp eq i64 %index.next309, %n.vec304
  br i1 %i.kj, label %middle.block310, label %vector.body305, !llvm.loop !2028

middle.block310:                                  ; preds = %vector.body305
  %cmp.n311 = icmp eq i64 %.val6.i, %n.vec304
  br i1 %cmp.n311, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i, label %vec.epilog.iter.check315

vec.epilog.iter.check315:                         ; preds = %middle.block310
  %min.epilog.iters.check316 = icmp eq i64 %n.mod.vf303, 0
  br i1 %min.epilog.iters.check316, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph317, !prof !745

vec.epilog.ph317:                                 ; preds = %vector.main.loop.iter.check300, %vec.epilog.iter.check315
  %vec.epilog.resume.val312 = phi i64 [ %n.vec304, %vec.epilog.iter.check315 ], [ 0, %vector.main.loop.iter.check300 ]
  %n.vec319 = and i64 %.val6.i, -8                ; 3 uses
  br label %vec.epilog.vector.body320

vec.epilog.vector.body320:                        ; preds = %vec.epilog.vector.body320, %vec.epilog.ph317
  %index321 = phi i64 [ %vec.epilog.resume.val312, %vec.epilog.ph317 ], [ %index.next323, %vec.epilog.vector.body320 ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jx, i64 %index321 ; 2 uses
  %wide.load322 = load <8 x i8>, ptr %i.kk, align 1, !alias.scope !2024, !noalias !2027 ; 2 uses
  %i.kl = add <8 x i8> %wide.load322, splat (i8 -65)
  %i.km = icmp ult <8 x i8> %i.kl, splat (i8 26)
  %i.kn = select <8 x i1> %i.km, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.ko = or <8 x i8> %i.kn, %wide.load322
  store <8 x i8> %i.ko, ptr %i.kk, align 1, !alias.scope !2024, !noalias !2027
  %index.next323 = add nuw i64 %index321, 8       ; 2 uses
  %i.kp = icmp eq i64 %index.next323, %n.vec319
  br i1 %i.kp, label %vec.epilog.middle.block324, label %vec.epilog.vector.body320, !llvm.loop !2029

vec.epilog.middle.block324:                       ; preds = %vec.epilog.vector.body320
  %cmp.n325 = icmp eq i64 %.val6.i, %n.vec319
  br i1 %cmp.n325, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check313, %vec.epilog.iter.check315, %vec.epilog.middle.block324
  %.sroa.0.05.i.i.i.i.i.ph = phi i64 [ 0, %iter.check313 ], [ %n.vec304, %vec.epilog.iter.check315 ], [ %n.vec319, %vec.epilog.middle.block324 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi i64 [ %i.kv, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.sroa.0.05.i.i.i.i.i ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !alias.scope !2024, !noalias !2027, !noundef !12 ; 2 uses
  %i.ks = add i8 %i.kr, -65
  %i.kt = icmp ult i8 %i.ks, 26
  %i.ku = select i1 %i.kt, i8 32, i8 0
  %.sroa.03.0.i.i.i.i.i = or i8 %i.ku, %i.kr
  store i8 %.sroa.03.0.i.i.i.i.i, ptr %i.kq, align 1, !alias.scope !2024, !noalias !2027
  %i.kv = add nuw i64 %.sroa.0.05.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.kv, %.val6.i
  br i1 %exitcond.not.i.i.i.i.i, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2030

_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block310, %vec.epilog.middle.block324, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i
  store i64 %i.jv, ptr %i.f, align 8, !alias.scope !2015, !noalias !2031
  store ptr %i.jx, ptr %.sroa.5.0..sroa_idx6.i.i.i.i, align 8, !alias.scope !2015, !noalias !2031
  store i64 %.val6.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2015, !noalias !2031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2012
  %i.kw = invoke { ptr, i64 } @_RNvXs_NtNtCsjyY8HP3IvQ6_12object_store3aws7builderNtB4_17AmazonS3ConfigKeyINtNtCsbvkFyIu7lgC_4core7convert5AsRefeE6as_ref(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2) @34)
          to label %bb.cj unwind label %bb.ci     ; 2 uses

bb.ci:                                            ; preds = %bb.cj, %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #36
          to label %.body104 unwind label %bb.cn

bb.cj:                                            ; preds = %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i
  %i.ky = extractvalue { ptr, i64 } %i.kw, 0
  %i.kz = extractvalue { ptr, i64 } %i.kw, 1
  store ptr %i.ky, ptr %i.e, align 8, !noalias !2012
  store i64 %i.kz, ptr %i.jl, align 8, !noalias !2012
  store ptr @35, ptr %i.jm, align 8, !noalias !2012
  store i64 18, ptr %i.jn, align 8, !noalias !2012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2012
  store ptr %i.jx, ptr %i.d, align 8, !noalias !2012
  store i64 %.val6.i, ptr %i.jo, align 8, !noalias !2012
  %i.la = invoke noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef 2)
          to label %bb.ck unwind label %bb.ci

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2012
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB1V_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options0E0B1V_.exit.i unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body104 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.cn:                                            ; preds = %bb.ci
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB1V_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options0E0B1V_.exit.i: ; preds = %bb.ck
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc106 unwind label %.loopexit

.noexc106:                                        ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB1V_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options0E0B1V_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2012
  br i1 %i.la, label %bb.dz, label %bb.cf

bb.co:                                            ; preds = %.noexc101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB5_16S3StorageOptions8from_map(ptr noalias noundef nonnull sret([656 x i8]) align 16 captures(none) dereferenceable(656) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bu)
          to label %bb.cp unwind label %.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  %i.le = load i64, ptr %i.as, align 16, !range !63, !noundef !12 ; 3 uses
  %i.lf = icmp eq i64 %i.le, -9223372036854775807
  br i1 %i.lf, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.lg = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.lg, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit108 unwind label %.thread206

bb.cr:                                            ; preds = %bb.cp
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.564.0..sroa_idx, i64 104, i1 false)
  store i64 %i.le, ptr %i.bd, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(544) %.sroa.665.0..sroa_idx, i64 544, i1 false)
  %.not = icmp ne i64 %i.le, -9223372036854775808
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.li = load i64, ptr %i.lh, align 8
  %i.lj = icmp eq i64 %i.li, 8
  %or.cond = select i1 %.not, i1 %i.lj, i1 false
  br i1 %or.cond, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.lk = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %i.ll = load i64, ptr %i.lk, align 1
  %i.lm = icmp ne i64 %i.ll, 7089914228964751716
  %i.ln = zext i1 %i.lm to i32
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.lp = load ptr, ptr %i.bw, align 8, !nonnull !12, !noundef !12
  %i.lq = load ptr, ptr %i.bx, align 8, !nonnull !12, !align !78, !noundef !12
  %i.lr = load ptr, ptr %i.bv, align 8, !nonnull !12, !noundef !12
  %i.ls = load ptr, ptr %i.by, align 8, !nonnull !12, !align !78, !noundef !12
  %i.lt = invoke { ptr, ptr } @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore(ptr noundef nonnull %i.lp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.lq, ptr noundef nonnull %i.lr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.ls, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %7)
          to label %bb.dv unwind label %bb.cu     ; 2 uses

bb.cu:                                            ; preds = %bb.db, %bb.dl, %bb.dj, %bb.dh, %bb.dg, %bb.dd, %bb.cy, %bb.cx, %bb.ct
  %.sroa.041.4 = phi i1 [ false, %bb.ct ], [ false, %bb.dl ], [ true, %bb.dd ], [ true, %bb.dj ], [ true, %bb.dh ], [ true, %bb.dg ], [ true, %bb.cy ], [ true, %bb.cx ], [ true, %bb.db ]
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.dq, %bb.cu
  %.sroa.041.4.lpad-body = phi i1 [ %.sroa.041.4, %bb.cu ], [ false, %bb.dq ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.lu, %bb.cu ], [ %i.ob, %bb.dq ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageOptionsEBK_(ptr noalias noundef align 8 dereferenceable(656) %i.bd) #36
          to label %.body104 unwind label %bb.dw

bb.cv:                                            ; preds = %bb.cs
  %i.lv = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.lw = icmp ult i64 %i.lv, 2
  br i1 %i.lw, label %bb.cw, label %bb.de

bb.cw:                                            ; preds = %bb.cv
  %i.lx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss0_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.lx, label %bb.cx [
    i8 0, label %bb.de
    i8 1, label %bb.cy
    i8 2, label %bb.cy
  ], !prof !2032

bb.cx:                                            ; preds = %bb.cw
  %i.ly = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss0_10___CALLSITE)
          to label %bb.cz unwind label %bb.cu     ; 2 uses

bb.cy:                                            ; preds = %bb.cw, %bb.cw, %bb.cz
  %.sroa.034.0 = phi i8 [ %i.ly, %bb.cz ], [ %i.lx, %bb.cw ], [ %i.lx, %bb.cw ]
  %i.lz = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss0_10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12
  %i.ma = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lz, i8 noundef %.sroa.034.0)
          to label %bb.da unwind label %bb.cu

bb.cz:                                            ; preds = %bb.cx
  %i.mb = icmp eq i8 %i.ly, 0
  br i1 %i.mb, label %bb.de, label %bb.cy

bb.da:                                            ; preds = %bb.cy
  br i1 %i.ma, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.mc = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss0_10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr @125, ptr %i.ba, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.me, align 8
  store ptr %i.ba, ptr %i.bb, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @126, ptr %i.mf, align 8
  store i64 1, ptr %i.bc, align 8
  %.sroa.036.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %.sroa.036.sroa.4.0..sroa_idx, align 8
  %.sroa.036.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 1, ptr %.sroa.036.sroa.5.0..sroa_idx, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.md, ptr %.sroa.437.0..sroa_idx, align 8
  invoke fastcc void @_RNCNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss1_0B6_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.bc)
          to label %bb.dc unwind label %bb.cu

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.di, %bb.dk, %bb.df, %bb.de, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %6)
          to label %bb.dl unwind label %bb.cu

bb.de:                                            ; preds = %bb.cz, %bb.cw, %bb.cv, %bb.da
  %i.mg = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.mh = icmp eq i8 %i.mg, 0
  br i1 %i.mh, label %bb.df, label %bb.dd

bb.df:                                            ; preds = %bb.de
  %i.mi = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.mj = icmp ult i64 %i.mi, 6
  call void @llvm.assume(i1 %i.mj)
  %i.mk = icmp samesign ugt i64 %i.mi, 3
  br i1 %i.mk, label %bb.dg, label %bb.dd

bb.dg:                                            ; preds = %bb.df
  %i.ml = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss0_10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !nonnull !12, !noundef !12
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  %i.mp = load i64, ptr %i.mo, align 8, !noundef !12
  store i64 4, ptr %i.az, align 8
  %.sroa.371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.mn, ptr %.sroa.371.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.mp, ptr %.sroa.572.0..sroa_idx, align 8
  %i.mq = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.dh unwind label %bb.cu     ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.mr = extractvalue { ptr, ptr } %i.mq, 0      ; 2 uses
  %i.ms = extractvalue { ptr, ptr } %i.mq, 1      ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8, !invariant.load !12, !nonnull !12
  %i.mv = invoke noundef zeroext i1 %i.mu(ptr noundef %i.mr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.di unwind label %bb.cu

bb.di:                                            ; preds = %bb.dh
  br i1 %i.mv, label %bb.dj, label %bb.dd

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.mw = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss0_10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr @125, ptr %i.aw, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.my, align 8
  store ptr %i.aw, ptr %i.ax, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @126, ptr %i.mz, align 8
  store i64 1, ptr %i.ay, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ax, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 1, ptr %.sroa.575.0..sroa_idx, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.mx, ptr %i.na, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ml, ptr noundef nonnull %i.mr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ms, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay)
          to label %bb.dk unwind label %bb.cu

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.dd

bb.dl:                                            ; preds = %bb.dd
  %i.nb = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.nc = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.nd, ptr noundef nonnull align 8 dereferenceable(17) %i.nc, i64 17, i1 false)
  %i.ne = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.nf = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.ng = load i32, ptr %i.nf, align 4, !noundef !12
  %i.nh = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %i.ni = getelementptr inbounds nuw i8, ptr %i.av, i64 44
  %i.nj = load <4 x i32>, ptr %i.nb, align 4
  store <4 x i32> %i.nj, ptr %i.ni, align 4
  %i.nk = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.nl = load <2 x i16>, ptr %i.ne, align 8
  store <2 x i16> %i.nl, ptr %i.nk, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.av, i64 60
  store i32 %i.ng, ptr %i.nm, align 4
  %i.nn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.no = load <4 x i32>, ptr %i.nh, align 8
  store <4 x i32> %i.no, ptr %i.nn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.np = load ptr, ptr %i.bw, align 8, !nonnull !12, !noundef !12
  %i.nq = load ptr, ptr %i.bx, align 8, !nonnull !12, !align !78, !noundef !12
  %i.nr = load ptr, ptr %i.bv, align 8, !nonnull !12, !noundef !12
  %i.ns = load ptr, ptr %i.by, align 8, !nonnull !12, !align !78, !noundef !12
  invoke void @_RNvMs_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB4_18S3DynamoDbLogStore7try_new(ptr noalias noundef nonnull sret([928 x i8]) align 16 captures(none) dereferenceable(928) %i.aq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.bd, ptr noundef nonnull %i.np, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.nq, ptr noundef nonnull %i.nr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.ns)
          to label %bb.dm unwind label %bb.cu

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.nt = load i64, ptr %i.aq, align 16, !range !11, !noundef !12
  %i.nu = trunc nuw i64 %i.nt to i1
  br i1 %i.nu, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.nv = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.nv, i64 96, i1 false)
  br label %bb.dt

bb.do:                                            ; preds = %bb.dm
  %i.nw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(920) %i.nx, ptr noundef nonnull align 8 dereferenceable(920) %i.nw, i64 920, i1 false)
  store i64 1, ptr %i.ap, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 1, ptr %i.ny, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2033
  %i.nz = call noundef align 8 dereferenceable_or_null(936) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 937) 936, i64 noundef 8) #32, !noalias !2033 ; 3 uses
  %i.oa = icmp eq ptr %i.nz, null
  br i1 %i.oa, label %bb.dp, label %bb.ds, !prof !14

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 936) #31
          to label %.noexc109 unwind label %bb.dq

.noexc109:                                        ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.dp
  %i.ob = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreEBM_(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.nx)
          to label %.body unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ds:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(936) %i.nz, ptr noundef nonnull align 8 dereferenceable(936) %i.ap, i64 936, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nz, ptr %i.od, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @127, ptr %i.oe, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dn
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageOptionsEBK_(ptr noalias noundef align 8 dereferenceable(656) %i.bd)
          to label %bb.du unwind label %.loopexit.split-lp

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %.critedge

.critedge:                                        ; preds = %bb.fk, %bb.du
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit126

bb.dv:                                            ; preds = %bb.ct
  %i.of = extractvalue { ptr, ptr } %i.lt, 0
  %i.og = extractvalue { ptr, ptr } %i.lt, 1
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.of, ptr %i.oh, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.og, ptr %i.oi, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageOptionsEBK_(ptr noalias noundef align 8 dereferenceable(656) %i.bd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit114 unwind label %.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit114: ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit126

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit126: ; preds = %bb.fl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, %.critedge, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit114
  ret void

bb.dw:                                            ; preds = %bb.fo, %bb.fm, %.body104, %.body93, %.body
  %i.oj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit108: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  call void @llvm.experimental.noalias.scope.decl(metadata !2039)
  %i.ok = load ptr, ptr %i.bv, align 8, !alias.scope !2042, !nonnull !12, !noundef !12
  %i.ol = atomicrmw sub ptr %i.ok, i64 1 release, align 8, !noalias !2042
  %i.om = icmp eq i64 %i.ol, 1
  br i1 %i.om, label %bb.dx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.dx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit108
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bv) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.dz:                                            ; preds = %.noexc106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.oo = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.op = icmp ult i64 %i.oo, 2
  br i1 %i.op, label %bb.ea, label %bb.ek

bb.ea:                                            ; preds = %bb.dz
  %i.oq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.oq, label %bb.eb [
    i8 0, label %bb.ek
    i8 1, label %bb.ec
    i8 2, label %bb.ec
  ], !prof !2032

bb.eb:                                            ; preds = %bb.ea
  %i.or = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE)
          to label %bb.ed unwind label %.loopexit.split-lp ; 2 uses

bb.ec:                                            ; preds = %bb.ea, %bb.ea, %bb.ed
  %.sroa.06.0 = phi i8 [ %i.or, %bb.ed ], [ %i.oq, %bb.ea ], [ %i.oq, %bb.ea ]
  %i.os = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12
  %i.ot = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.os, i8 noundef %.sroa.06.0)
          to label %bb.ee unwind label %.loopexit.split-lp

bb.ed:                                            ; preds = %bb.eb
  %i.ou = icmp eq i8 %i.or, 0
  br i1 %i.ou, label %bb.ek, label %bb.ec

bb.ee:                                            ; preds = %bb.ec
  br i1 %i.ot, label %bb.ef, label %bb.ek

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.ov = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr @128, ptr %i.bp, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr inttoptr (i64 285 to ptr), ptr %i.ox, align 8
  store ptr %i.bp, ptr %i.bq, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @126, ptr %i.oy, align 8
  store i64 1, ptr %i.br, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bq, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.ow, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ov, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br)
          to label %.noexc116 unwind label %.loopexit.split-lp

.noexc116:                                        ; preds = %bb.ef
  %i.oz = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2043
  %i.pa = icmp eq i8 %i.oz, 0
  br i1 %i.pa, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %.noexc116
  %i.pb = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2043 ; 2 uses
  %i.pc = icmp ult i64 %i.pb, 6
  call void @llvm.assume(i1 %i.pc)
  %i.pd = icmp samesign ugt i64 %i.pb, 3
  br i1 %i.pd, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.pe = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, align 8, !noalias !2043, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  %i.pg = load ptr, ptr %i.pf, align 8, !nonnull !12, !noundef !12
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 40
  %i.pi = load i64, ptr %i.ph, align 8, !noundef !12
  store i64 4, ptr %i.b, align 8, !noalias !2043
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.pg, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2043
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.pi, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2043
  %i.pj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc117 unwind label %.loopexit.split-lp ; 2 uses

.noexc117:                                        ; preds = %bb.eh
  %i.pk = extractvalue { ptr, ptr } %i.pj, 0      ; 2 uses
  %i.pl = extractvalue { ptr, ptr } %i.pj, 1      ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.pn = load ptr, ptr %i.pm, align 8, !invariant.load !12, !nonnull !12
  %i.po = invoke noundef zeroext i1 %i.pn(ptr noundef %i.pk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #37
          to label %.noexc118 unwind label %.loopexit.split-lp, !inline_history !2046

.noexc118:                                        ; preds = %.noexc117
  br i1 %i.po, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %.noexc118
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pe, ptr noundef nonnull %i.pk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.ej:                                            ; preds = %.noexc118, %bb.eg, %.noexc116, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.er

bb.ek:                                            ; preds = %bb.ed, %bb.ea, %bb.dz, %bb.ee
  %i.pp = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.pq = icmp eq i8 %i.pp, 0
  br i1 %i.pq, label %bb.el, label %bb.er

bb.el:                                            ; preds = %bb.ek
  %i.pr = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ps = icmp ult i64 %i.pr, 6
  call void @llvm.assume(i1 %i.ps)
  %i.pt = icmp samesign ugt i64 %i.pr, 3
  br i1 %i.pt, label %bb.em, label %bb.er

bb.em:                                            ; preds = %bb.el
  %i.pu = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 32
  %i.pw = load ptr, ptr %i.pv, align 8, !nonnull !12, !noundef !12
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 40
  %i.py = load i64, ptr %i.px, align 8, !noundef !12
  store i64 4, ptr %i.bo, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.pw, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %i.py, ptr %.sroa.549.0..sroa_idx, align 8
  %i.pz = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.en unwind label %.loopexit.split-lp ; 2 uses

bb.en:                                            ; preds = %bb.em
  %i.qa = extractvalue { ptr, ptr } %i.pz, 0      ; 2 uses
  %i.qb = extractvalue { ptr, ptr } %i.pz, 1      ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.qd = load ptr, ptr %i.qc, align 8, !invariant.load !12, !nonnull !12
  %i.qe = invoke noundef zeroext i1 %i.qd(ptr noundef %i.qa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %bb.eo unwind label %.loopexit.split-lp

bb.eo:                                            ; preds = %bb.en
  br i1 %i.qe, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.qf = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store ptr @128, ptr %i.bl, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr inttoptr (i64 285 to ptr), ptr %i.qh, align 8
  store ptr %i.bl, ptr %i.bm, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @126, ptr %i.qi, align 8
  store i64 1, ptr %i.bn, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bm, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 1, ptr %.sroa.552.0..sroa_idx, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.qg, ptr %i.qj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pu, ptr noundef nonnull %i.qa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn)
          to label %bb.eq unwind label %.loopexit.split-lp

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.er

bb.er:                                            ; preds = %bb.ej, %bb.ek, %bb.el, %bb.eq, %bb.eo
  %i.qk = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ql = icmp ult i64 %i.qk, 4
  br i1 %i.ql, label %bb.es, label %bb.fd

bb.es:                                            ; preds = %bb.er
  %i.qm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.qm, label %bb.et [
    i8 0, label %bb.fd
    i8 1, label %bb.eu
    i8 2, label %bb.eu
  ], !prof !2032

bb.et:                                            ; preds = %bb.es
  %i.qn = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE)
          to label %bb.ev unwind label %.loopexit.split-lp ; 2 uses

bb.eu:                                            ; preds = %bb.es, %bb.es, %bb.ev
  %.sroa.015.0 = phi i8 [ %i.qn, %bb.ev ], [ %i.qm, %bb.es ], [ %i.qm, %bb.es ]
  %i.qo = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12
  %i.qp = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qo, i8 noundef %.sroa.015.0)
          to label %bb.ew unwind label %.loopexit.split-lp

bb.ev:                                            ; preds = %bb.et
  %i.qq = icmp eq i8 %i.qn, 0
  br i1 %i.qq, label %bb.fd, label %bb.eu

bb.ew:                                            ; preds = %bb.eu
  br i1 %i.qp, label %bb.ex, label %bb.fd

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.qr = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store ptr @129, ptr %i.bi, align 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr inttoptr (i64 247 to ptr), ptr %i.qt, align 8
  store ptr %i.bi, ptr %i.bj, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @126, ptr %i.qu, align 8
  store i64 1, ptr %i.bk, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %.sroa.017.sroa.4.0..sroa_idx, align 8
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 1, ptr %.sroa.017.sroa.5.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.qs, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk)
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %bb.ex
  %i.qv = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2047
  %i.qw = icmp eq i8 %i.qv, 0
  br i1 %i.qw, label %bb.ey, label %bb.fb

bb.ey:                                            ; preds = %.noexc122
  %i.qx = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2047 ; 2 uses
  %i.qy = icmp ult i64 %i.qx, 6
  call void @llvm.assume(i1 %i.qy)
  %i.qz = icmp samesign ugt i64 %i.qx, 1
  br i1 %i.qz, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %i.ra = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE, align 8, !noalias !2047, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 32
  %i.rc = load ptr, ptr %i.rb, align 8, !nonnull !12, !noundef !12
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 40
  %i.re = load i64, ptr %i.rd, align 8, !noundef !12
  store i64 2, ptr %i.a, align 8, !noalias !2047
  %.sroa.3.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.rc, ptr %.sroa.3.0..sroa_idx.i120, align 8, !noalias !2047
  %.sroa.5.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.re, ptr %.sroa.5.0..sroa_idx.i121, align 8, !noalias !2047
  %i.rf = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc123 unwind label %.loopexit.split-lp ; 2 uses

.noexc123:                                        ; preds = %bb.ez
  %i.rg = extractvalue { ptr, ptr } %i.rf, 0      ; 2 uses
  %i.rh = extractvalue { ptr, ptr } %i.rf, 1      ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  %i.rj = load ptr, ptr %i.ri, align 8, !invariant.load !12, !nonnull !12
  %i.rk = invoke noundef zeroext i1 %i.rj(ptr noundef %i.rg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #37
          to label %.noexc124 unwind label %.loopexit.split-lp, !inline_history !2050

.noexc124:                                        ; preds = %.noexc123
  br i1 %i.rk, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %.noexc124
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ra, ptr noundef nonnull %i.rg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk)
          to label %bb.fb unwind label %.loopexit.split-lp

bb.fb:                                            ; preds = %.noexc124, %bb.ey, %.noexc122, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fh, %bb.fj, %bb.fe, %bb.fd, %bb.fb
  %i.rl = load ptr, ptr %i.bw, align 8, !nonnull !12, !noundef !12
  %i.rm = load ptr, ptr %i.bx, align 8, !nonnull !12, !align !78, !noundef !12
  %i.rn = load ptr, ptr %i.bv, align 8, !nonnull !12, !noundef !12
  %i.ro = load ptr, ptr %i.by, align 8, !nonnull !12, !align !78, !noundef !12
  %i.rp = invoke { ptr, ptr } @_RNvNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore19default_s3_logstore(ptr noundef nonnull %i.rl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.rm, ptr noundef nonnull %i.rn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.ro, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %7)
          to label %bb.fk unwind label %.loopexit.split-lp ; 2 uses

bb.fd:                                            ; preds = %bb.ev, %bb.es, %bb.er, %bb.ew
  %i.rq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.rr = icmp eq i8 %i.rq, 0
  br i1 %i.rr, label %bb.fe, label %bb.fc

bb.fe:                                            ; preds = %bb.fd
  %i.rs = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.rt = icmp ult i64 %i.rs, 6
  call void @llvm.assume(i1 %i.rt)
  %i.ru = icmp samesign ugt i64 %i.rs, 1
  br i1 %i.ru, label %bb.ff, label %bb.fc

bb.ff:                                            ; preds = %bb.fe
  %i.rv = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.rx = load ptr, ptr %i.rw, align 8, !nonnull !12, !noundef !12
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  %i.rz = load i64, ptr %i.ry, align 8, !noundef !12
  store i64 2, ptr %i.bh, align 8
  %.sroa.358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.rx, ptr %.sroa.358.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.rz, ptr %.sroa.559.0..sroa_idx, align 8
  %i.sa = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.fg unwind label %.loopexit.split-lp ; 2 uses

bb.fg:                                            ; preds = %bb.ff
  %i.sb = extractvalue { ptr, ptr } %i.sa, 0      ; 2 uses
  %i.sc = extractvalue { ptr, ptr } %i.sa, 1      ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.se = load ptr, ptr %i.sd, align 8, !invariant.load !12, !nonnull !12
  %i.sf = invoke noundef zeroext i1 %i.se(ptr noundef %i.sb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %bb.fh unwind label %.loopexit.split-lp

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.sf, label %bb.fi, label %bb.fc

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.sg = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr @129, ptr %i.be, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr inttoptr (i64 247 to ptr), ptr %i.si, align 8
  store ptr %i.be, ptr %i.bf, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @126, ptr %i.sj, align 8
  store i64 1, ptr %i.bg, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bf, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 1, ptr %.sroa.562.0..sroa_idx, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.sh, ptr %i.sk, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rv, ptr noundef nonnull %i.sb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg)
          to label %bb.fj unwind label %.loopexit.split-lp

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.fc

bb.fk:                                            ; preds = %bb.fc
  %i.sl = extractvalue { ptr, ptr } %i.rp, 0
  %i.sm = extractvalue { ptr, ptr } %i.rp, 1
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.sl, ptr %i.sn, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.sm, ptr %i.so, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  br label %.critedge

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit108, %bb.dx
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  %i.sp = load ptr, ptr %i.bw, align 8, !alias.scope !2057, !nonnull !12, !noundef !12
  %i.sq = atomicrmw sub ptr %i.sp, i64 1 release, align 8, !noalias !2057
  %i.sr = icmp eq i64 %i.sq, 1
  br i1 %i.sr, label %bb.fl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit126

bb.fl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit126

.thread:                                          ; preds = %.thread206, %.body93, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit99
  %.pn84134 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit99 ], [ %eh.lpad-body94, %.body93 ], [ %lpad.thr_comm, %.thread206 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.ss = load ptr, ptr %i.bv, align 8, !alias.scope !2064, !nonnull !12, !noundef !12
  %i.st = atomicrmw sub ptr %i.ss, i64 1 release, align 8, !noalias !2064
  %i.su = icmp eq i64 %i.st, 1
  br i1 %i.su, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.thread
end_hunk_2
