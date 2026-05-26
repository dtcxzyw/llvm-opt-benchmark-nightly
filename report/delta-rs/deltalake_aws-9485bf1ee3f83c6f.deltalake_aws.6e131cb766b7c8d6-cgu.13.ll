inline.NumInlined: 1308
inline.NumDeleted: 507
begin_hunk_0_@_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types15endpoint_config31AccountIdEndpointModeParseErrorEENtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4027)
  %i.c = tail call noundef zeroext i1 @_RNvNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display9write_err(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @148)
  br i1 %i.c, label %_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types15endpoint_config31AccountIdEndpointModeParseErrorEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4030
  store ptr %i.b, ptr %i.a, align 8, !noalias !4030
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types15endpoint_config31AccountIdEndpointModeParseErrorENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !4030
  %i.d = load ptr, ptr %1, align 8, !alias.scope !4027, !noalias !4032, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4027, !noalias !4032, !nonnull !4, !align !19, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @134, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4030
  br label %_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types15endpoint_config31AccountIdEndpointModeParseErrorEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types15endpoint_config31AccountIdEndpointModeParseErrorEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.1.i = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types8app_name14InvalidAppNameEENtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4033)
  %i.c = tail call noundef zeroext i1 @_RNvNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display9write_err(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @150)
  br i1 %i.c, label %_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types8app_name14InvalidAppNameEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4036
  store ptr %i.b, ptr %i.a, align 8, !noalias !4036
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types8app_name14InvalidAppNameENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !4036
  %i.d = load ptr, ptr %1, align 8, !alias.scope !4033, !noalias !4038, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4033, !noalias !4038, !nonnull !4, !align !19, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @134, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4036
  br label %_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types8app_name14InvalidAppNameEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types8app_name14InvalidAppNameEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.1.i = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEENtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4039)
  %i.c = tail call noundef zeroext i1 @_RNvNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display9write_err(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @152)
  br i1 %i.c, label %_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4042
  store ptr %i.b, ptr %i.a, align 8, !noalias !4042
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !4042
  %i.d = load ptr, ptr %1, align 8, !alias.scope !4039, !noalias !4044, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4039, !noalias !4044, !nonnull !4, !align !19, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @134, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4042
  br label %_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.1.i = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorENtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4045)
  %i.c = tail call noundef zeroext i1 @_RNvNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display9write_err(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @154)
  br i1 %i.c, label %_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4048
  store ptr %i.b, ptr %i.a, align 8, !noalias !4048
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !4048
  %i.d = load ptr, ptr %1, align 8, !alias.scope !4045, !noalias !4050, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4045, !noalias !4050, !nonnull !4, !align !19, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @134, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4048
  br label %_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.1.i = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextRRNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5error22EnvConfigFileLoadErrorENtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4051)
  %i.c = tail call noundef zeroext i1 @_RNvNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display9write_err(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @156)
  br i1 %i.c, label %_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRRNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5error22EnvConfigFileLoadErrorENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4054
  store ptr %i.b, ptr %i.a, align 8, !noalias !4054
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRRNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5error22EnvConfigFileLoadErrorNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !4054
  %i.d = load ptr, ptr %1, align 8, !alias.scope !4051, !noalias !4056, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4051, !noalias !4056, !nonnull !4, !align !19, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @134, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4054
  br label %_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRRNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5error22EnvConfigFileLoadErrorENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRRNtNtNtCsat9blWvDIpa_11aws_runtime10env_config5error22EnvConfigFileLoadErrorENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.1.i = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b, !prof !4057

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #24
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4058)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !4058, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8, !noalias !4058 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.l = lshr i64 %i.j, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = trunc i64 %i.j to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4058
  store i32 %i.m, ptr %i.b, align 4, !noalias !4058
  %i.o = load i32, ptr %i.k, align 8, !noalias !4058, !noundef !4
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.i
  %i.q = phi i32 [ %i.af, %bb.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.r = phi i32 [ %i.ae, %bb.i ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.04.011.i = phi i64 [ %i.ac, %bb.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.s = add i32 %i.q, 1                          ; 4 uses
  store i32 %i.s, ptr %i.a, align 4, !noalias !4058
  %i.t = icmp eq i32 %i.r, %i.q
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = icmp eq i32 %i.s, %i.r
  br i1 %i.u, label %bb.g, label %bb.f, !prof !10

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = zext i32 %i.s to i64
  %i.w = mul nuw i64 %i.v, 4294967297
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.x = zext i32 %i.s to i64
  %i.y = and i64 %.sroa.04.011.i, -4294967296
  %i.z = or disjoint i64 %i.y, %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedmmECs2pqxYH9ZEk8_3std(i8 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #26, !noalias !4058
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.w, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = cmpxchg ptr %i.i, i64 %.sroa.04.011.i, i64 %.sroa.01.0.i acq_rel acquire, align 8, !noalias !4058 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { i64, i1 } %i.aa, 0       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4058
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = trunc nuw i64 %i.ad to i32              ; 2 uses
  %i.af = trunc i64 %i.ac to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4058
  store i32 %i.ae, ptr %i.b, align 4, !noalias !4058
  %i.ag = load i32, ptr %i.k, align 8, !noalias !4058, !noundef !4
  %i.ah = icmp eq i32 %i.ag, %i.af
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.b
  ret void

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4058
  %i.ai = and i64 %.sroa.04.011.i, 255
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !4058, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  %i.am = load ptr, ptr %i.al, align 8, !noalias !4058, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.am, ptr %i.c, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @166, ptr noundef nonnull inttoptr (i64 31 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_Cs574AjYkQ1m0_9http_bodyINtNtCsbvkFyIu7lgC_4core3pin3PinQNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyENtB4_4Body10poll_frameCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !19, !noundef !4
  tail call void @_RNvXs_NtNtCs2DiVQAxFeQE_16aws_smithy_types4body13http_body_1_xNtB6_7SdkBodyNtCs574AjYkQ1m0_9http_body4Body10poll_frame(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(120) %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2t_5ErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !19, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.c(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2t_5ErrorENtNtBK_6marker4SendEL_EEB1L_9size_hintCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !19, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.c(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %.val) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !19, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.c(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !19, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.c(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !19, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.c(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([192 x i8]) align 8 captures(address) dereferenceable(192) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !19, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.c(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !19, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.c(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !19, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.c(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !19, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.c(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EENtB4_6Future4pollB1A_(ptr dead_on_unwind noalias noundef writable writeonly sret([416 x i8]) align 16 captures(none) dereferenceable(416) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_(ptr noalias noundef align 16 captures(none) dereferenceable(416) %0, ptr noundef nonnull align 8 %.val, ptr noalias noundef align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinQIBG_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EEENtB4_6Future4pollB1F_(ptr dead_on_unwind noalias noundef writable writeonly sret([416 x i8]) align 16 captures(none) dereferenceable(416) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !19, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4061)
  %.val.i = load ptr, ptr %.val, align 8, !alias.scope !4061, !noalias !4064, !nonnull !4, !noundef !4
  tail call fastcc void @_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_(ptr noalias noundef align 16 captures(none) dereferenceable(416) %0, ptr noundef nonnull align 8 %.val.i, ptr noalias noundef align 8 dereferenceable(32) %2) #25, !noalias !4061
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinQNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0ENtB4_6Future4pollB12_(ptr dead_on_unwind noalias noundef writable writeonly sret([416 x i8]) align 16 captures(none) dereferenceable(416) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !19, !noundef !4
  tail call fastcc void @_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_(ptr noalias noundef align 16 captures(none) dereferenceable(416) %0, ptr noundef nonnull align 8 %.val, ptr noalias noundef align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCsat9blWvDIpa_11aws_runtime10env_configINtB5_14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 15, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168, ptr noalias noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsb_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEENtNtBV_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 5)
  %i.d = call noundef i8 @_RNvMNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB2_9Semaphore11try_acquire(ptr noundef nonnull align 8 %0, i64 noundef 1)
  %.not = icmp eq i8 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @192, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 17 to ptr), ptr %i.e, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @193) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
