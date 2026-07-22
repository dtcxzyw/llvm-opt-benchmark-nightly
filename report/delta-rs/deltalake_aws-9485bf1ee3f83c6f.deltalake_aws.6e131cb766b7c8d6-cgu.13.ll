inline.NumInlined: 1308
inline.NumDeleted: 507
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.1 = phi i1 [ %i.f, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7displayINtB2_19DisplayErrorContextRDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1n_6marker4SyncNtB1U_4SendEL_ENtNtB1n_3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call noundef zeroext i1 @_RNvNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display9write_err(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @136)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRDNtNtB8_5error5ErrorNtNtB8_6marker4SyncNtBS_4SendEL_NtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !19, !noundef !4
  %i.f = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @134, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.1 = phi i1 [ %i.f, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtNtB9_6stream8buffered8BufferedINtNtB1w_3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterINtNtNtB2I_3ops5range5RangeyEEEENCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EEINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEENtNtNtB2I_6future6future6Future4pollB4B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(136) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.9.sroa.12.sroa.12 = alloca [24 x i8], align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterINtNtNtB2u_3ops5range5RangeyEEEENCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EENtB5_9TryStream13try_poll_nextB4n_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.e = load i64, ptr %i.b, align 8, !range !3877, !noundef !4 ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 -9223372036854775788, label %bb.c
    i64 -9223372036854775789, label %bb.d
    i64 -9223372036854775790, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 0, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  store i64 -9223372036854775790, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  ret void

bb.f:                                             ; preds = %bb.b
  %.sroa.7.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.740.0..sroa_idx, align 8
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.753.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.652.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, i64 24, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %.sroa.551.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %.sroa.039.0.copyload = load ptr, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3878
  store ptr %.sroa.039.0.copyload, ptr %i.a, align 8, !alias.scope !3882, !noalias !3886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.355.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, i64 24, i1 false)
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !3887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3878
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  br label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtNtB9_6stream8buffered8BufferedINtNtB1w_3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterINtNtNtB2I_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB4B_11ObjectStore10get_ranges00EEINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEENtNtNtB2I_6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(136) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.9.sroa.12.sroa.12 = alloca [24 x i8], align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterINtNtNtB2u_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB4n_11ObjectStore10get_ranges00EENtB5_9TryStream13try_poll_nextCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.e = load i64, ptr %i.b, align 8, !range !3877, !noundef !4 ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 -9223372036854775788, label %bb.c
    i64 -9223372036854775789, label %bb.d
    i64 -9223372036854775790, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 0, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  store i64 -9223372036854775790, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  ret void

bb.f:                                             ; preds = %bb.b
  %.sroa.7.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.740.0..sroa_idx, align 8
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.753.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.652.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, i64 24, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %.sroa.551.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %.sroa.039.0.copyload = load ptr, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3888
  store ptr %.sroa.039.0.copyload, ptr %i.a, align 8, !alias.scope !3892, !noalias !3896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.355.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, i64 24, i1 false)
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !3897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3888
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  br label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtCsaB04DkjCm5a_10aws_config15provider_configNtB5_14ProviderConfigNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.n, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !noundef !4 ; 4 uses
  %.not12 = icmp eq ptr %i.r, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  store ptr %i.r, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.y = atomicrmw add ptr %i.v, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  store ptr %i.v, ptr %i.j, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.x, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8, !noundef !4 ; 4 uses
  %.not13 = icmp eq ptr %i.ac, null
  br i1 %.not13, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.af = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.h
  store ptr null, ptr %i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %2 = phi ptr [ %i.ae, %bb.m ], [ undef, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8, !noundef !4 ; 5 uses
  %.not14 = icmp eq ptr %i.aj, null
  br i1 %.not14, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.j
  store ptr %i.ac, ptr %i.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ae, ptr %i.ak, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.an = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.l
  store ptr null, ptr %i.g, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %3 = phi ptr [ %i.am, %bb.r ], [ undef, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !6, !noundef !4
  %.not15 = icmp eq i64 %i.aq, -9223372036854775807
  br i1 %.not15, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.o
  store ptr %i.aj, ptr %i.g, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.am, ptr %i.ar, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs0_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %bb.aa unwind label %bb.z

bb.u:                                             ; preds = %bb.q
  store i64 -9223372036854775807, ptr %i.f, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.at = load i8, ptr %i.as, align 8, !range !2407, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.av = load i8, ptr %i.au, align 1, !range !2407, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ay = atomicrmw add ptr %i.ax, i64 1 monotonic, align 8
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.ac, label %bb.ab

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync9once_cell8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB2t_5error22EnvConfigFileLoadErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge, %bb.z
  %i.ba = phi ptr [ %.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync9once_cell8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB2t_5error22EnvConfigFileLoadErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge ], [ %i.aj, %bb.z ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync9once_cell8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB2t_5error22EnvConfigFileLoadErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge ], [ %i.be, %bb.z ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3898)
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !3901
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.al

bb.z:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.aa:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

bb.ab:                                            ; preds = %bb.v
  store ptr %i.ax, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.ag unwind label %bb.af

bb.ac:                                            ; preds = %bb.v
  tail call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.aj, %bb.af
  %.pn = phi { ptr, i32 } [ %i.by, %bb.aj ], [ %i.bh, %bb.af ]
  %i.bf = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !3908
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync9once_cell8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB2t_5error22EnvConfigFileLoadErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync9once_cell8OnceCellINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB2b_5error22EnvConfigFileLoadErrorEEE9drop_slowCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync9once_cell8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB2t_5error22EnvConfigFileLoadErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.al

bb.af:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !range !6, !noundef !4
  %.not16 = icmp eq i64 %i.bj, -9223372036854775807
  br i1 %.not16, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs0_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi)
          to label %bb.ak unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.ak
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.ak ], [ -9223372036854775807, %bb.ag ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.n, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.r, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.v, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.x, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ac, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %2, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.aj, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %3, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.at, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.av, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ax, ptr %i.bw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0, ptr %i.bx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.aj:                                            ; preds = %bb.ah
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file14EnvConfigFilesECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.d) #22
          to label %bb.ad unwind label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ai

bb.al:                                            ; preds = %bb.as, %bb.aq, %bb.ao, %bb.an, %bb.ae, %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync9once_cell8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB2t_5error22EnvConfigFileLoadErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.aj
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync9once_cell8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB2t_5error22EnvConfigFileLoadErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ad, %bb.ae
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync9once_cell8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB2t_5error22EnvConfigFileLoadErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge unwind label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync9once_cell8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB2t_5error22EnvConfigFileLoadErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync9once_cell8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB2t_5error22EnvConfigFileLoadErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !3898
  br label %bb.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.x, %bb.w, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !3913)
  %i.ca = load ptr, ptr %i.i, align 8, !alias.scope !3913, !noundef !4 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.am

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cc = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !3916
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http10HttpClientEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.am, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !3923)
  call void @llvm.experimental.noalias.scope.decl(metadata !3926)
  call void @llvm.experimental.noalias.scope.decl(metadata !3929)
  %i.ce = load ptr, ptr %i.j, align 8, !alias.scope !3932, !nonnull !4, !noundef !4
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !3932
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs9PsDcNHE0mC_16aws_smithy_async4time10TimeSourceEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !3933)
  call void @llvm.experimental.noalias.scope.decl(metadata !3936)
  %i.ch = load ptr, ptr %i.k, align 8, !alias.scope !3939, !noundef !4 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cj = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !3940
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2fs4FakeE9drop_slowCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ap, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  call void @llvm.experimental.noalias.scope.decl(metadata !3948)
  %i.cl = load ptr, ptr %i.l, align 8, !alias.scope !3951, !noundef !4 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cn = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !3952
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal2FsECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.as
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime14expiring_cache13ExpiringCacheNtNtNtCsaB04DkjCm5a_10aws_config3sso5cache14CachedSsoTokenNtNtB1I_5token21SsoTokenProviderErrorENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3957
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.a, align 8, !noalias !3957
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 11, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @157, ptr noalias noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @158, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @159)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3957
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacity22ReturnConsumedCapacityNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3961)
  %i.c = load i64, ptr %i.b, align 8, !range !2576, !alias.scope !3961, !noalias !3964, !noundef !4 ; 2 uses
  %i.d = xor i64 %i.c, -9223372036854775808
  %i.e = icmp slt i64 %i.c, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 3
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 7), !noalias !3961
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacityNtB5_22ReturnConsumedCapacityNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 4), !noalias !3961
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacityNtB5_22ReturnConsumedCapacityNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 5), !noalias !3961
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacityNtB5_22ReturnConsumedCapacityNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3966
  store ptr %i.b, ptr %i.a, align 8, !noalias !3966
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @186)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3966
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacityNtB5_22ReturnConsumedCapacityNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__return_consumed_capacityNtB5_22ReturnConsumedCapacityNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3967
  store ptr %i.b, ptr %i.a, align 8, !noalias !3967
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 25, ptr noalias noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3967
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section10SsoSessionNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !19, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3971
  store ptr %i.b, ptr %i.a, align 8, !noalias !3971
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @198, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @188)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3971
  ret i1 %i.c
end_hunk_0
