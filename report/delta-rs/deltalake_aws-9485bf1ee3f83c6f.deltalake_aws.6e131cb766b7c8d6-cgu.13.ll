inline.NumInlined: 1308
inline.NumDeleted: 507
begin_hunk_0_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.cmw = icmp ult i64 %i.cmv, 6
  call void @llvm.assume(i1 %i.cmw)
  %i.cmx = icmp samesign ugt i64 %i.cmv, 1
  br i1 %i.cmx, label %bb.aon, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.aon:                                           ; preds = %bb.aom
  %i.cmy = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider0010___CALLSITE, align 8, !noalias !3381, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmy, i64 32
  %i.cna = load ptr, ptr %i.cmz, align 8, !noalias !3385, !nonnull !4, !noundef !4
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.cmy, i64 40
  %i.cnc = load i64, ptr %i.cnb, align 8, !noalias !3385, !noundef !4
  store i64 2, ptr %i.g, align 8, !noalias !3381
  %.sroa.3.0..sroa_idx.i.i.i725 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.cna, ptr %.sroa.3.0..sroa_idx.i.i.i725, align 8, !noalias !3381
  %.sroa.513.0..sroa_idx.i.i.i726 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.cnc, ptr %.sroa.513.0..sroa_idx.i.i.i726, align 8, !noalias !3381
  %i.cnd = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.aoo unwind label %bb.aoa, !noalias !3385 ; 2 uses

bb.aoo:                                           ; preds = %bb.aon
  %i.cne = extractvalue { ptr, ptr } %i.cnd, 0    ; 2 uses
  %i.cnf = extractvalue { ptr, ptr } %i.cnd, 1    ; 2 uses
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cnf, i64 24
  %i.cnh = load ptr, ptr %i.cng, align 8, !invariant.load !4, !noalias !3385, !nonnull !4
  %i.cni = invoke noundef zeroext i1 %i.cnh(ptr noundef %i.cne, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.aop unwind label %bb.aoa, !noalias !3385

bb.aop:                                           ; preds = %bb.aoo
  br i1 %i.cni, label %bb.aoq, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.aoq:                                           ; preds = %bb.aop
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3381
  %i.cnj = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider0010___CALLSITE, align 8, !noalias !3381, !nonnull !4, !align !19, !noundef !4
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cnj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3381
  store ptr @16, ptr %i.d, align 8, !noalias !3381
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 81 to ptr), ptr %i.cnl, align 8, !noalias !3381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3381
  store ptr %i.m, ptr %i.b, align 8, !noalias !3381
  store ptr %i.b, ptr %i.c, align 8, !noalias !3381
  store ptr %i.d, ptr %i.e, align 8, !noalias !3381
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @7, ptr %i.cnm, align 8, !noalias !3381
  %i.cnn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.c, ptr %i.cnn, align 8, !noalias !3381
  %i.cno = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @17, ptr %i.cno, align 8, !noalias !3381
  store i64 1, ptr %i.f, align 8, !noalias !3381
  %.sroa.415.0..sroa_idx.i.i.i727 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %.sroa.415.0..sroa_idx.i.i.i727, align 8, !noalias !3381
  %.sroa.516.0..sroa_idx.i.i.i728 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i728, align 8, !noalias !3381
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.cnk, ptr %i.cnp, align 8, !noalias !3381
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cmy, ptr noundef nonnull %i.cne, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cnf, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.aor unwind label %bb.aoa, !noalias !3384

bb.aor:                                           ; preds = %bb.aoq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3381
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.aos:                                           ; preds = %bb.aoa
  %i.cnq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !3384
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.aor, %bb.aop, %bb.aom, %bb.aol, %bb.aok
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i unwind label %bb.aot, !noalias !3339

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i: ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3335
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.aot:                                           ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.cnr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aox

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.any
  %i.cns = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.034.0.copyload.i = load i64, ptr %i.cns, align 8, !alias.scope !3390, !noalias !3335 ; 2 uses
  %.sroa.10.0..sroa_idx.i738 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i738, i64 16, i1 false), !alias.scope !3390, !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3335
  %i.cnt = icmp eq i64 %.sroa.034.0.copyload.i, -9223372036854775807
  br i1 %i.cnt, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.aou

bb.aou:                                           ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i713, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !alias.scope !3391, !noalias !3395
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.aou, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i
  %.sroa.037.0.i = phi i64 [ %.sroa.034.0.copyload.i, %bb.aou ], [ -9223372036854775808, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i ], [ -9223372036854775808, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3397)
  call void @llvm.experimental.noalias.scope.decl(metadata !3400)
  %i.cnu = load ptr, ptr %i.clm, align 8, !alias.scope !3403, !noalias !3335, !noundef !4 ; 2 uses
  %i.cnv = icmp eq ptr %i.cnu, null
  br i1 %i.cnv, label %bb.aph, label %bb.aov

bb.aov:                                           ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.cnw = atomicrmw sub ptr %i.cnu, i64 1 release, align 8, !noalias !3404
  %i.cnx = icmp eq i64 %i.cnw, 1
  br i1 %i.cnx, label %bb.aow, label %bb.aph

bb.aow:                                           ; preds = %bb.aov
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.clm) #24
          to label %bb.aph unwind label %bb.and, !noalias !3339

bb.aox:                                           ; preds = %bb.aot, %bb.aoa, %bb.anx
  %.pn8.i721 = phi { ptr, i32 } [ %i.cln, %bb.anx ], [ %i.cnr, %bb.aot ], [ %i.clr, %bb.aoa ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3409)
  call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  %i.cny = load ptr, ptr %i.clm, align 8, !alias.scope !3415, !noalias !3335, !noundef !4 ; 2 uses
  %i.cnz = icmp eq ptr %i.cny, null
  br i1 %i.cnz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717, label %bb.aoy

bb.aoy:                                           ; preds = %bb.aox
  %i.coa = atomicrmw sub ptr %i.cny, i64 1 release, align 8, !noalias !3416
  %i.cob = icmp eq i64 %i.coa, 1
  br i1 %i.cob, label %bb.aoz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717

bb.aoz:                                           ; preds = %bb.aoy
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.clm) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717 unwind label %bb.apa, !noalias !3339

bb.apa:                                           ; preds = %bb.ape, %bb.apc, %bb.aoz, %bb.anv, %bb.anr
  %i.coc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !3339
  unreachable

bb.apb:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i715
  %i.cod = atomicrmw sub ptr %i.ckg, i64 1 release, align 8, !noalias !3421
  %i.coe = icmp eq i64 %i.cod, 1
  br i1 %i.coe, label %bb.apc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717

bb.apc:                                           ; preds = %bb.apb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ckf) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717 unwind label %bb.apa, !noalias !3339

bb.apd:                                           ; preds = %bb.ani
  %i.cof = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.cog = load i8, ptr %i.cof, align 8, !range !102, !noalias !3335, !noundef !4
  %cond.i.i29.i719 = icmp eq i8 %i.cog, 3
  br i1 %cond.i.i29.i719, label %bb.ape, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i715

bb.ape:                                           ; preds = %bb.apd
  %i.coh = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.coh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i715 unwind label %bb.apa, !noalias !3339

bb.apf:                                           ; preds = %bb.ang, %bb.anf
  %i.coi = landingpad { ptr, i32 }
          cleanup
  br label %.body743

bb.apg:                                           ; preds = %bb.anj
  store i8 3, ptr %i.cki, align 8, !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i713)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8990)
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm)
  br label %common.ret

bb.aph:                                           ; preds = %bb.aow, %bb.aov, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEuE9unwrap_orCs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8990, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i713, i64 16, i1 false), !noalias !3426
  store i8 1, ptr %i.cki, align 8, !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i713)
  %.sroa.4992.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4992.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8990, i64 16, i1 false)
  store i64 %.sroa.037.0.i, ptr %i.hm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8990)
  br label %bb.api

bb.api:                                           ; preds = %bb.aph, %bb.amw
  %i.coj = getelementptr inbounds nuw i8, ptr %1, i64 2104 ; 6 uses
  %i.cok = getelementptr inbounds nuw i8, ptr %1, i64 2564
  %i.col = load i8, ptr %i.cok, align 4, !range !2407, !noundef !4
  %i.com = getelementptr inbounds nuw i8, ptr %1, i64 2515
  store i8 %i.col, ptr %i.com, align 1, !alias.scope !3427
  %i.con = getelementptr inbounds nuw i8, ptr %1, i64 2565
  %i.coo = load i8, ptr %i.con, align 1, !range !2407, !noundef !4
  %i.cop = getelementptr inbounds nuw i8, ptr %1, i64 2516 ; 2 uses
  store i8 %i.coo, ptr %i.cop, align 4, !alias.scope !3430
  %i.coq = getelementptr inbounds nuw i8, ptr %1, i64 2582 ; 2 uses
  store i8 0, ptr %i.coq, align 2
  %i.cor = getelementptr inbounds nuw i8, ptr %1, i64 2544
  %i.cos = load ptr, ptr %i.cor, align 8, !noundef !4
  %i.cot = getelementptr inbounds nuw i8, ptr %1, i64 2552
  %i.cou = load ptr, ptr %i.cot, align 8
  %i.cov = invoke noundef nonnull align 8 ptr @_RNvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB2_7Builder18set_identity_cache(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.coj, ptr noundef %i.cos, ptr %i.cou)
          to label %bb.apk unwind label %bb.apj   ; 0 uses

bb.apj:                                           ; preds = %bb.api
  %i.cow = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqr

bb.apk:                                           ; preds = %bb.api
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk)
  %i.cox = getelementptr inbounds nuw i8, ptr %1, i64 2586 ; 2 uses
  store i8 0, ptr %i.cox, align 2
  %i.coy = getelementptr inbounds nuw i8, ptr %1, i64 2080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.coy, i64 24, i1 false)
  %i.coz = invoke noundef nonnull align 8 ptr @_RNvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB2_7Builder24set_credentials_provider(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.coj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hk)
          to label %bb.apm unwind label %bb.apl   ; 0 uses

bb.apl:                                           ; preds = %bb.apk
  %i.cpa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  br label %bb.aqr

bb.apm:                                           ; preds = %bb.apk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj)
  %i.cpb = getelementptr inbounds nuw i8, ptr %1, i64 2583
  store i8 0, ptr %i.cpb, align 1
  %i.cpc = getelementptr inbounds nuw i8, ptr %1, i64 2520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noundef nonnull align 8 dereferenceable(24) %i.cpc, i64 24, i1 false)
  %i.cpd = invoke noundef nonnull align 8 ptr @_RNvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB2_7Builder18set_token_provider(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.coj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hj)
          to label %bb.apo unwind label %bb.apn   ; 0 uses

bb.apn:                                           ; preds = %bb.apm
  %i.cpe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj)
  br label %bb.aqr

bb.apo:                                           ; preds = %bb.apm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj)
  %i.cpf = getelementptr inbounds nuw i8, ptr %1, i64 2587 ; 2 uses
  store i8 0, ptr %i.cpf, align 1
  %i.cpg = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.cph = load ptr, ptr %i.cpg, align 8, !noundef !4
  %i.cpi = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %i.cpj = load ptr, ptr %i.cpi, align 8
  %i.cpk = invoke noundef nonnull align 8 ptr @_RNvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB2_7Builder14set_sleep_impl(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.coj, ptr noundef %i.cph, ptr %i.cpj)
          to label %bb.apq unwind label %bb.app   ; 0 uses

bb.app:                                           ; preds = %bb.apo
  %i.cpl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqr

bb.apq:                                           ; preds = %bb.apo
  %i.cpm = getelementptr inbounds nuw i8, ptr %1, i64 2561
  %i.cpn = load i8, ptr %i.cpm, align 1, !range !2407, !noundef !4
  %i.cpo = getelementptr inbounds nuw i8, ptr %1, i64 2512 ; 2 uses
  store i8 %i.cpn, ptr %i.cpo, align 8, !alias.scope !3433
  %i.cpp = getelementptr inbounds nuw i8, ptr %1, i64 2562
  %i.cpq = load i8, ptr %i.cpp, align 2, !range !2407, !noundef !4
  %i.cpr = getelementptr inbounds nuw i8, ptr %1, i64 2513
  store i8 %i.cpq, ptr %i.cpr, align 1, !alias.scope !3436
  %i.cps = getelementptr inbounds nuw i8, ptr %1, i64 2563
  %i.cpt = load i8, ptr %i.cps, align 1, !range !2407, !noundef !4
  %i.cpu = getelementptr inbounds nuw i8, ptr %1, i64 2514
  store i8 %i.cpt, ptr %i.cpu, align 2, !alias.scope !3439
  %i.cpv = getelementptr inbounds nuw i8, ptr %1, i64 1944
  %i.cpw = getelementptr inbounds nuw i8, ptr %1, i64 2200 ; 2 uses
  %i.cpx = load <2 x i32>, ptr %i.cpv, align 8
  store <2 x i32> %i.cpx, ptr %i.cpw, align 8, !alias.scope !3442
  %i.cpy = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.cpz = getelementptr inbounds nuw i8, ptr %1, i64 2248 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cpz, ptr noundef nonnull align 8 dereferenceable(24) %i.cpy, i64 24, i1 false)
  %i.cqa = getelementptr inbounds nuw i8, ptr %1, i64 2566
  %i.cqb = load i8, ptr %i.cqa, align 2, !range !102, !noundef !4
  %i.cqc = getelementptr inbounds nuw i8, ptr %1, i64 2517 ; 2 uses
  store i8 %i.cqb, ptr %i.cqc, align 1, !alias.scope !3445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 24, i1 false)
  %i.cqd = invoke noundef nonnull align 8 ptr @_RINvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB3_7Builder26set_auth_scheme_preferenceNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(416) %i.coj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hi)
          to label %bb.aps unwind label %bb.apr   ; 0 uses

bb.apr:                                           ; preds = %bb.apq
  %i.cqe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi)
  br label %bb.amy

bb.aps:                                           ; preds = %bb.apq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi)
  %i.cqf = load <2 x i32>, ptr %i.cpw, align 8
  %.sroa.10996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.71007, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10996.0..sroa_idx, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81008, ptr noundef nonnull align 8 dereferenceable(24) %i.cpz, i64 24, i1 false)
  %.sroa.12998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.91009, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12998.0..sroa_idx, i64 64, i1 false)
  %.sroa.13999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.101010, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13999.0..sroa_idx, i64 48, i1 false)
  %.sroa.141000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2384
  %i.cqg = load <2 x ptr>, ptr %.sroa.141000.0..sroa_idx, align 8
  %.sroa.161002.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.131013, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.161002.0..sroa_idx, i64 24, i1 false)
  %.sroa.171003.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.141014, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.171003.0..sroa_idx, i64 24, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2448
  %i.cqh = load <2 x ptr>, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2464
  %i.cqi = load <2 x ptr>, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.cqj = load <2 x ptr>, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2496
  %i.cqk = load <2 x ptr>, ptr %.sroa.24.0..sroa_idx, align 8
  %3 = load <4 x i8>, ptr %i.cpo, align 8
  %.sroa.30.0.copyload = load i8, ptr %i.cop, align 4
  %.sroa.31.0.copyload = load i8, ptr %i.cqc, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2518
  %.sroa.32.0.copyload = load i8, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.01004.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01004, i64 48
  %i.cql = getelementptr inbounds nuw i8, ptr %1, i64 2152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01004.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cql, i64 24, i1 false)
  %.sroa.01004.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01004, i64 72
  %i.cqm = getelementptr inbounds nuw i8, ptr %1, i64 2176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01004.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cqm, i64 24, i1 false)
  %.sroa.01004.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01004, i64 24
  %i.cqn = getelementptr inbounds nuw i8, ptr %1, i64 2128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01004.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cqn, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01004, ptr noundef nonnull align 8 dereferenceable(24) %i.coj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm)
  %i.cqo = getelementptr inbounds nuw i8, ptr %1, i64 2571
  store i8 0, ptr %i.cqo, align 1
  store i32 0, ptr %i.coq, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  store i8 0, ptr %i.cox, align 2
  %i.cqp = getelementptr inbounds nuw i8, ptr %1, i64 2572
  store i8 0, ptr %i.cqp, align 4
  %i.cqq = getelementptr inbounds nuw i8, ptr %1, i64 1688
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(192) %i.cqq)
          to label %bb.apu unwind label %bb.apt

bb.apt:                                           ; preds = %bb.aps
  %i.cqr = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.apu:                                           ; preds = %bb.aps
  %i.cqs = getelementptr inbounds nuw i8, ptr %1, i64 2567 ; 2 uses
  %i.cqt = load i8, ptr %i.cqs, align 1, !range !5, !noundef !4
  %i.cqu = trunc nuw i8 %i.cqt to i1
  br i1 %i.cqu, label %bb.apv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.apv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.apu
  store i8 0, ptr %i.cqs, align 1
  %i.cqv = getelementptr inbounds nuw i8, ptr %1, i64 2573
  store i8 0, ptr %i.cqv, align 1
  %i.cqw = getelementptr inbounds nuw i8, ptr %1, i64 2574
  store i8 0, ptr %i.cqw, align 2
  store i8 0, ptr %i.cpf, align 1
  %i.cqx = getelementptr inbounds nuw i8, ptr %1, i64 2575
  store i8 0, ptr %i.cqx, align 1
  %i.cqy = getelementptr inbounds nuw i8, ptr %1, i64 2569 ; 2 uses
  %i.cqz = load i8, ptr %i.cqy, align 1, !range !5, !noundef !4
  %i.cra = trunc nuw i8 %i.cqz to i1
  br i1 %i.cra, label %bb.apz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.apv:                                           ; preds = %bb.apu
  %i.crb = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 4 uses
  %i.crc = load i64, ptr %i.crb, align 8, !range !6, !alias.scope !3448, !noundef !4
  %switch.i = icmp slt i64 %i.crc, -9223372036854775806
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.apw

bb.apw:                                           ; preds = %bb.apv
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  %i.crd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crb)
          to label %.body323 unwind label %bb.apy

bb.apy:                                           ; preds = %bb.apx
  %i.cre = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.apw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.hl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.apz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i760, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.crf = getelementptr inbounds nuw i8, ptr %1, i64 2568 ; 2 uses
  %i.crg = load i8, ptr %i.crf, align 8, !range !5, !noundef !4
  %i.crh = trunc nuw i8 %i.crg to i1
  br i1 %i.crh, label %bb.aqe, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.apz:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cri = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 4 uses
  %i.crj = load i64, ptr %i.cri, align 8, !range !6, !alias.scope !3451, !noundef !4
  %switch.i758 = icmp slt i64 %i.crj, -9223372036854775806
  br i1 %switch.i758, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.aqa

bb.aqa:                                           ; preds = %bb.apz
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cri)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i760 unwind label %bb.aqb

bb.aqb:                                           ; preds = %bb.aqa
  %i.crk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cri)
          to label %.body761 unwind label %bb.aqc

bb.aqc:                                           ; preds = %bb.aqb
  %i.crl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i760: ; preds = %bb.aqa
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cri)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.aqd

bb.aqd:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i760
  %i.crm = landingpad { ptr, i32 }
          cleanup
  br label %.body761

.body761:                                         ; preds = %bb.aqb, %bb.aqd
  %eh.lpad-body762 = phi { ptr, i32 } [ %i.crm, %bb.aqd ], [ %i.crk, %bb.aqb ] ; 2 uses
  %i.crn = getelementptr inbounds nuw i8, ptr %1, i64 2568
  %i.cro = load i8, ptr %i.crn, align 8, !range !5, !noundef !4
  %i.crp = trunc nuw i8 %i.cro to i1
  br i1 %i.crp, label %bb.aqn, label %.body764

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.aqe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.crq = getelementptr inbounds nuw i8, ptr %1, i64 2570 ; 2 uses
  %i.crr = load i8, ptr %i.crq, align 2, !range !5, !noundef !4
  %i.crs = trunc nuw i8 %i.crr to i1
  br i1 %i.crs, label %bb.aqj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit768

bb.aqe:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.crt = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 4 uses
  %i.cru = load i64, ptr %i.crt, align 8, !range !20, !alias.scope !3454, !noundef !4
  %i.crv = icmp eq i64 %i.cru, -9223372036854775808
  br i1 %i.crv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.aqf

bb.aqf:                                           ; preds = %bb.aqe
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.aqg

bb.aqg:                                           ; preds = %bb.aqf
  %i.crw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crt)
          to label %.body764 unwind label %bb.aqh

bb.aqh:                                           ; preds = %bb.aqg
  %i.crx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.aqf
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.crt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.aqi

.body764:                                         ; preds = %bb.aqi, %bb.aqg, %bb.aqn, %.body761
  %.pn215 = phi { ptr, i32 } [ %eh.lpad-body762, %.body761 ], [ %eh.lpad-body762, %bb.aqn ], [ %i.csb, %bb.aqi ], [ %i.crw, %bb.aqg ] ; 4 uses
  %i.cry = getelementptr inbounds nuw i8, ptr %1, i64 2570
  %i.crz = load i8, ptr %i.cry, align 2, !range !5, !noundef !4
  %i.csa = trunc nuw i8 %i.crz to i1
  br i1 %i.csa, label %bb.aqo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770

bb.aqi:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.csb = landingpad { ptr, i32 }
          cleanup
  br label %.body764

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit768: ; preds = %bb.aqk, %bb.aqj, %bb.aql, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.csc = getelementptr inbounds nuw i8, ptr %1, i64 2576
  store i8 0, ptr %i.crf, align 8
  store i8 0, ptr %i.cqy, align 1
  %i.csd = getelementptr inbounds nuw i8, ptr %1, i64 2588
  store i8 0, ptr %i.crq, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.csc, i8 0, i64 6, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.csd, i8 0, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01004, i64 96, i1 false)
  %.sroa.51005.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i32> %i.cqf, ptr %.sroa.51005.0..sroa_idx, align 8
  %.sroa.71007.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.71007.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.71007, i64 40, i1 false)
  %.sroa.81008.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81008.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81008, i64 24, i1 false)
  %.sroa.91009.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.91009.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.91009, i64 64, i1 false)
  %.sroa.101010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.101010.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.101010, i64 48, i1 false)
  %.sroa.111011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <2 x ptr> %i.cqg, ptr %.sroa.111011.0..sroa_idx, align 8
  %.sroa.131013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.131013.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.131013, i64 24, i1 false)
  %.sroa.141014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.141014.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.141014, i64 24, i1 false)
  %.sroa.151015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <2 x ptr> %i.cqh, ptr %.sroa.151015.0..sroa_idx, align 8
  %.sroa.171017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store <2 x ptr> %i.cqi, ptr %.sroa.171017.0..sroa_idx, align 8
  %.sroa.191019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store <2 x ptr> %i.cqj, ptr %.sroa.191019.0..sroa_idx, align 8
  %.sroa.211021.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store <2 x ptr> %i.cqk, ptr %.sroa.211021.0..sroa_idx, align 8
  %.sroa.231023.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store <4 x i8> %3, ptr %.sroa.231023.0..sroa_idx, align 8
  %.sroa.271027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i8 %.sroa.30.0.copyload, ptr %.sroa.271027.0..sroa_idx, align 4
  %.sroa.281028.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 413
  store i8 %.sroa.31.0.copyload, ptr %.sroa.281028.0..sroa_idx, align 1
  %.sroa.291029.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 414
  store i8 %.sroa.32.0.copyload, ptr %.sroa.291029.0..sroa_idx, align 2
  br label %common.ret

bb.aqj:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cse = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3457)
  %i.csf = load ptr, ptr %i.cse, align 8, !alias.scope !3457, !noundef !4 ; 2 uses
  %i.csg = icmp eq ptr %i.csf, null
  br i1 %i.csg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit768, label %bb.aqk

bb.aqk:                                           ; preds = %bb.aqj
  %i.csh = atomicrmw sub ptr %i.csf, i64 1 release, align 8, !noalias !3460
  %i.csi = icmp eq i64 %i.csh, 1
  br i1 %i.csi, label %bb.aql, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit768

bb.aql:                                           ; preds = %bb.aqk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cse) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit768 unwind label %bb.aqm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770: ; preds = %bb.aqp, %bb.aqo, %bb.aqq, %bb.asu, %bb.ass, %bb.aqm, %.body764
  %.pn217 = phi { ptr, i32 } [ %i.cso, %bb.aqm ], [ %.pn204.pn.pn.pn.pn.pn, %bb.ass ], [ %.pn215, %.body764 ], [ %.pn204.pn.pn.pn.pn.pn, %bb.asu ], [ %.pn215, %bb.aqq ], [ %.pn215, %bb.aqo ], [ %.pn215, %bb.aqp ]
  %i.csj = getelementptr inbounds nuw i8, ptr %1, i64 2576
  %i.csk = getelementptr inbounds nuw i8, ptr %1, i64 2568
  store i8 0, ptr %i.csk, align 8
  %i.csl = getelementptr inbounds nuw i8, ptr %1, i64 2569
  store i8 0, ptr %i.csl, align 1
  %i.csm = getelementptr inbounds nuw i8, ptr %1, i64 2588
  %i.csn = getelementptr inbounds nuw i8, ptr %1, i64 2570
  store i8 0, ptr %i.csn, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.csj, i8 0, i64 6, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.csm, i8 0, i64 5, i1 false)
  store i8 2, ptr %i.jt, align 8
  resume { ptr, i32 } %.pn217

bb.aqm:                                           ; preds = %bb.aql
  %i.cso = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770

bb.aqn:                                           ; preds = %.body761
  %i.csp = getelementptr inbounds nuw i8, ptr %1, i64 712
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.csp) #22
          to label %.body764 unwind label %bb.bk

bb.aqo:                                           ; preds = %.body764
  %i.csq = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3467)
  %i.csr = load ptr, ptr %i.csq, align 8, !alias.scope !3467, !noundef !4 ; 2 uses
  %i.css = icmp eq ptr %i.csr, null
  br i1 %i.css, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770, label %bb.aqp

bb.aqp:                                           ; preds = %bb.aqo
  %i.cst = atomicrmw sub ptr %i.csr, i64 1 release, align 8, !noalias !3470
  %i.csu = icmp eq i64 %i.cst, 1
  br i1 %i.csu, label %bb.aqq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770

bb.aqq:                                           ; preds = %bb.aqp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.csq) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit770 unwind label %bb.bk

bb.aqr:                                           ; preds = %bb.app, %bb.apn, %bb.apl, %bb.apj
  %.pn187.ph = phi { ptr, i32 } [ %i.cpe, %bb.apn ], [ %i.cpl, %bb.app ], [ %i.cow, %bb.apj ], [ %i.cpa, %bb.apl ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.hm) #22
          to label %bb.amy unwind label %bb.bk

.body743:                                         ; preds = %bb.apf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717
  %i.csv = phi ptr [ %i.ckj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717 ], [ %i.cju, %bb.apf ]
  %.pn183 = phi { ptr, i32 } [ %.pn12.i718, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717 ], [ %i.coi, %bb.apf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8990)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.csv) #22
          to label %bb.amy unwind label %bb.bk

bb.aqs:                                           ; preds = %bb.aif
  %i.csw = getelementptr inbounds nuw i8, ptr %1, i64 2544 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3477)
  %i.csx = load ptr, ptr %i.csw, align 8, !alias.scope !3477, !noundef !4 ; 2 uses
  %i.csy = icmp eq ptr %i.csx, null
  br i1 %i.csy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.aqt

bb.aqt:                                           ; preds = %bb.aqs
  %i.csz = atomicrmw sub ptr %i.csx, i64 1 release, align 8, !noalias !3480
  %i.cta = icmp eq i64 %i.csz, 1
  br i1 %i.cta, label %bb.aqu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aqu:                                           ; preds = %bb.aqt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity21ResolveCachedIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.csw) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bk

bb.aqv:                                           ; preds = %bb.afz
  %i.ctb = getelementptr inbounds nuw i8, ptr %1, i64 2520 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3487)
  %i.ctc = load ptr, ptr %i.ctb, align 8, !alias.scope !3487, !noundef !4 ; 2 uses
  %i.ctd = icmp eq ptr %i.ctc, null
  br i1 %i.ctd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.aqw

bb.aqw:                                           ; preds = %bb.aqv
  %i.cte = atomicrmw sub ptr %i.ctc, i64 1 release, align 8, !noalias !3490
  %i.ctf = icmp eq i64 %i.cte, 1
  br i1 %i.ctf, label %bb.aqx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aqx:                                           ; preds = %bb.aqw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ctb) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bk

bb.aqy:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ctg = getelementptr inbounds nuw i8, ptr %1, i64 2600
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ctg) #22
          to label %bb.acs unwind label %bb.bk

bb.aqz:                                           ; preds = %bb.acs
  %i.cth = getelementptr inbounds nuw i8, ptr %1, i64 2104
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types10sdk_config7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(416) %i.cth) #22
          to label %bb.wm unwind label %bb.bk

bb.ara:                                           ; preds = %bb.wm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config18env_service_config16EnvServiceConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(176) %i.io) #22
          to label %bb.wn unwind label %bb.bk

bb.arb:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit481
  %i.cti = getelementptr inbounds nuw i8, ptr %1, i64 2080 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3497)
  %i.ctj = load ptr, ptr %i.cti, align 8, !alias.scope !3497, !noundef !4 ; 2 uses
  %i.ctk = icmp eq ptr %i.ctj, null
  br i1 %i.ctk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.arc

bb.arc:                                           ; preds = %bb.arb
  %i.ctl = atomicrmw sub ptr %i.ctj, i64 1 release, align 8, !noalias !3500
  %i.ctm = icmp eq i64 %i.ctl, 1
  br i1 %i.ctm, label %bb.ard, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ard:                                           ; preds = %bb.arc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cti) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bk

bb.are:                                           ; preds = %.body456
  %i.ctn = getelementptr inbounds nuw i8, ptr %1, i64 1920
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ctn) #22
          to label %bb.pc unwind label %bb.bk

bb.arf:                                           ; preds = %bb.il
  %i.cto = getelementptr inbounds nuw i8, ptr %1, i64 1664
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.cto) #22
          to label %.body323 unwind label %bb.bk

bb.arg:                                           ; preds = %.body323
  %i.ctp = getelementptr inbounds nuw i8, ptr %1, i64 1472
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(192) %i.ctp) #22
          to label %bb.gy unwind label %bb.bk

bb.arh:                                           ; preds = %bb.ed
  %i.ctq = getelementptr inbounds nuw i8, ptr %1, i64 1280
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(192) %i.ctq) #22
          to label %bb.bq unwind label %bb.bk

bb.ari:                                           ; preds = %bb.bq
  %i.ctr = getelementptr inbounds nuw i8, ptr %1, i64 1264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3507)
  %i.cts = load ptr, ptr %i.ctr, align 8, !alias.scope !3507, !noundef !4 ; 2 uses
  %i.ctt = icmp eq ptr %i.cts, null
  br i1 %i.ctt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775, label %bb.arj

bb.arj:                                           ; preds = %bb.ari
  %i.ctu = atomicrmw sub ptr %i.cts, i64 1 release, align 8, !noalias !3510
  %i.ctv = icmp eq i64 %i.ctu, 1
  br i1 %i.ctv, label %bb.ark, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775

bb.ark:                                           ; preds = %bb.arj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ctr) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775 unwind label %bb.bk

bb.arl:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit775
  %i.ctw = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3517)
  call void @llvm.experimental.noalias.scope.decl(metadata !3520)
  call void @llvm.experimental.noalias.scope.decl(metadata !3523)
  %i.ctx = load ptr, ptr %i.ctw, align 8, !alias.scope !3526, !nonnull !4, !noundef !4
  %i.cty = atomicrmw sub ptr %i.ctx, i64 1 release, align 8, !noalias !3526
  %i.ctz = icmp eq i64 %i.cty, 1
  br i1 %i.ctz, label %bb.arm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit

bb.arm:                                           ; preds = %bb.arl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs9PsDcNHE0mC_16aws_smithy_async4time10TimeSourceEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ctw) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bk

bb.arn:                                           ; preds = %bb.aro, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cua = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.cub = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.cuc = load i64, ptr %i.cub, align 8, !range !20, !noundef !4
  %.not211 = icmp eq i64 %i.cuc, -9223372036854775808
  br i1 %.not211, label %bb.arq, label %bb.arp

bb.aro:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.cud = getelementptr inbounds nuw i8, ptr %1, i64 976
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.cud) #22
end_hunk_0
begin_hunk_1_@_RNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtB7_7Builder5build0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bx:                                            ; preds = %bb.bo
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cb

bb.by:                                            ; preds = %bb.bl, %bb.bj
  %.pn30 = phi { ptr, i32 } [ %i.dg, %bb.bl ], [ %i.df, %bb.bj ]
  %.sroa.03.3 = phi i1 [ false, %bb.bl ], [ true, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bz

.thread127:                                       ; preds = %bb.bp
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bz:                                            ; preds = %bb.by, %bb.bn
  %.pn32 = phi { ptr, i32 } [ %i.dh, %bb.bn ], [ %.pn30, %bb.by ]
  %.sroa.03.2 = phi i1 [ false, %bb.bn ], [ %.sroa.03.3, %bb.by ]
  %.sroa.02.2 = phi i1 [ false, %bb.bn ], [ true, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs22EcsCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(400) %i.l) #22
          to label %bb.cb unwind label %bb.ab

bb.ca:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %.sroa.02.3.ph, label %bb.cd, label %bb.cc

bb.cb:                                            ; preds = %bb.bz, %bb.bx, %bb.bg
  %.pn36.pn.ph = phi { ptr, i32 } [ %.pn28, %bb.bg ], [ %i.dq, %bb.bx ], [ %.pn32, %bb.bz ] ; 2 uses
  %.sroa.04.0.ph = phi i1 [ true, %bb.bg ], [ false, %bb.bx ], [ false, %bb.bz ] ; 2 uses
  %.sroa.03.4.ph = phi i1 [ true, %bb.bg ], [ false, %bb.bx ], [ %.sroa.03.2, %bb.bz ] ; 2 uses
  %.sroa.02.3.ph = phi i1 [ true, %bb.bg ], [ false, %bb.bx ], [ %.sroa.02.2, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4imds11credentials23ImdsCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(152) %i.o) #22
          to label %bb.ca unwind label %bb.ab

bb.cc:                                            ; preds = %bb.cd, %bb.ca
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn105, %bb.cd ], [ %.pn36.pn.ph, %bb.ca ] ; 2 uses
  %.sroa.04.2 = phi i1 [ %.sroa.04.1106, %bb.cd ], [ %.sroa.04.0.ph, %bb.ca ] ; 2 uses
  %.sroa.03.6 = phi i1 [ %.sroa.03.5107, %bb.cd ], [ %.sroa.03.4.ph, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %.sroa.03.6, label %bb.cf, label %bb.ce

bb.cd:                                            ; preds = %.thread100, %bb.ca
  %.sroa.03.5107 = phi i1 [ true, %.thread100 ], [ %.sroa.03.4.ph, %bb.ca ]
  %.sroa.04.1106 = phi i1 [ true, %.thread100 ], [ %.sroa.04.0.ph, %bb.ca ]
  %.pn36.pn.pn105 = phi { ptr, i32 } [ %.pn26, %.thread100 ], [ %.pn36.pn.ph, %bb.ca ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config18web_identity_token35WebIdentityTokenCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(152) %i.r) #22
          to label %bb.cc unwind label %bb.ab

bb.ce:                                            ; preds = %bb.cf, %bb.cc
  %.pn36.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn117, %bb.cf ], [ %.pn36.pn.pn.pn, %bb.cc ] ; 2 uses
  %.sroa.04.3 = phi i1 [ %.sroa.04.2118, %bb.cf ], [ %.sroa.04.2, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %.sroa.04.3, label %bb.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit

bb.cf:                                            ; preds = %.thread113, %bb.cc
  %.sroa.04.2118 = phi i1 [ true, %.thread113 ], [ %.sroa.04.2, %bb.cc ]
  %.pn36.pn.pn.pn117 = phi { ptr, i32 } [ %.pn24, %.thread113 ], [ %.pn36.pn.pn.pn, %bb.cc ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config7profile11credentials30ProfileFileCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.u) #22
          to label %bb.ce unwind label %bb.ab

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ch, %bb.cg, %bb.ci, %.thread127, %bb.ce
  %.pn36.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dr, %.thread127 ], [ %.pn36.pn.pn.pn.pn, %bb.ce ], [ %.pn36.pn.pn.pn.pn126, %bb.cg ], [ %.pn36.pn.pn.pn.pn126, %bb.ch ], [ %.pn36.pn.pn.pn.pn126, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(192) %i.x) #22
          to label %.thread unwind label %bb.ab

bb.cg:                                            ; preds = %.thread123, %bb.ce
  %.pn36.pn.pn.pn.pn126 = phi { ptr, i32 } [ %.pn22, %.thread123 ], [ %.pn36.pn.pn.pn.pn, %bb.ce ] ; 3 uses
  br i1 %.not.i59, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ds = atomicrmw sub ptr %.val51, i64 1 release, align 8, !noalias !3759
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config11environment11credentials38EnvironmentVariableCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ab

bb.cj:                                            ; preds = %bb.aa
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #22
          to label %.body unwind label %bb.ab

bb.ck:                                            ; preds = %bb.cl, %.body
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 3908
  %i.dw = load i8, ptr %i.dv, align 4, !range !5, !noundef !4
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.cn, label %bb.cm

bb.cl:                                            ; preds = %.body
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 1952
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config7profile11credentials7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(288) %i.dy) #22
          to label %bb.ck unwind label %bb.ab

bb.cm:                                            ; preds = %bb.cn, %bb.ck
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 3907
  %i.ea = load i8, ptr %i.dz, align 1, !range !5, !noundef !4
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.cp, label %bb.co

bb.cn:                                            ; preds = %bb.ck
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 2240
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config18web_identity_token7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(312) %i.ec) #22
          to label %bb.cm unwind label %bb.ab

bb.co:                                            ; preds = %bb.cp, %bb.cm
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 3906
  %i.ee = load i8, ptr %i.ed, align 2, !range !5, !noundef !4
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.cr, label %bb.cq

bb.cp:                                            ; preds = %bb.cm
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 2552
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config4imds11credentials7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(368) %i.eg) #22
          to label %bb.co unwind label %bb.ab

bb.cq:                                            ; preds = %bb.cr, %bb.co
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 3905
  %i.ei = load i8, ptr %i.eh, align 1, !range !5, !noundef !4
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ct, label %bb.cs

bb.cr:                                            ; preds = %bb.co
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 2920
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(240) %i.ek) #22
          to label %bb.cq unwind label %bb.ab

bb.cs:                                            ; preds = %bb.ct, %bb.cq
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 3910
  %i.em = load i8, ptr %i.el, align 2, !range !5, !noundef !4
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ct:                                            ; preds = %bb.cq
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 3160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider6region7BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(536) %i.eo) #22
          to label %bb.cs unwind label %bb.ab

bb.cu:                                            ; preds = %bb.cs
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 3696 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !range !20, !alias.scope !3770, !noundef !4
  %i.er = icmp eq i64 %i.eq, -9223372036854775808
  br i1 %i.er, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ep)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(416) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [624 x i8], align 8               ; 5 uses
  %.sroa.06.i.i = alloca [2560 x i8], align 8     ; 7 uses
  %i.c = alloca [776 x i8], align 8               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [776 x i8], align 8               ; 18 uses
  %i.k = alloca [776 x i8], align 8               ; 5 uses
  %i.l = alloca [776 x i8], align 8               ; 5 uses
  %i.m = alloca [776 x i8], align 8               ; 5 uses
  %i.n = alloca [776 x i8], align 8               ; 5 uses
  %i.o = alloca [776 x i8], align 8               ; 7 uses
  %i.p = alloca [776 x i8], align 8               ; 5 uses
  %i.q = alloca [496 x i8], align 8               ; 5 uses
  %i.r = alloca [504 x i8], align 8               ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 10 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 12 uses
  %i.v = alloca [496 x i8], align 8               ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [416 x i8], align 8               ; 33 uses
  %i.y = alloca [416 x i8], align 8               ; 24 uses
  %.sroa.098.i = alloca [96 x i8], align 8        ; 8 uses
  %i.z = alloca [416 x i8], align 8               ; 25 uses
  %i.aa = alloca [416 x i8], align 8              ; 33 uses
  %.sroa.068.i = alloca [96 x i8], align 8        ; 8 uses
  %i.ab = alloca [416 x i8], align 8              ; 9 uses
  %i.ac = alloca [416 x i8], align 8              ; 42 uses
  %i.ad = alloca [96 x i8], align 8               ; 16 uses
  %i.ae = alloca [416 x i8], align 8              ; 2 uses
  %i.af = alloca [416 x i8], align 8              ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [624 x i8], align 8              ; 5 uses
  %i.ai = alloca [624 x i8], align 8              ; 5 uses
  %.sroa.062 = alloca [2560 x i8], align 8        ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [48 x i8], align 8               ; 5 uses
  %i.al = alloca [48 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %i.ao = alloca [48 x i8], align 8               ; 5 uses
  %i.ap = alloca [48 x i8], align 8               ; 6 uses
  %i.aq = alloca [776 x i8], align 8              ; 3 uses
  %.sroa.857 = alloca [768 x i8], align 8         ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [600 x i8], align 8              ; 6 uses
  %i.au = alloca [600 x i8], align 8              ; 5 uses
  %.sroa.052 = alloca [9816 x i8], align 8        ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 9 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 11 uses
  %i.az = alloca [24 x i8], align 8               ; 3 uses
  %i.ba = alloca [1952 x i8], align 8             ; 5 uses
  %.sroa.041 = alloca [3904 x i8], align 8        ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 43 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !range !101, !noundef !4
  switch i8 %i.bc, label %default.unreachable75 [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.c
    i8 4, label %bb.as
    i8 5, label %bb.d
  ]

default.unreachable75:                            ; preds = %bb.ax, %bb.as, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 41
  store i8 0, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 42
  store i8 0, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !4, !align !19, !noundef !4
  store ptr %i.bh, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  invoke void @_RNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtB2_23DefaultCredentialsChain7builder(ptr noalias noundef nonnull sret([1952 x i8]) align 8 captures(none) dereferenceable(1952) %i.ba)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.041)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.062)
  br label %bb.ew

bb.e:                                             ; preds = %bb.b
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1952) %.sroa.041, ptr noundef nonnull align 8 dereferenceable(1952) %i.ba, i64 1952, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3904) %i.bj, ptr noundef nonnull align 8 dereferenceable(3904) %.sroa.041, i64 3904, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3952
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.o, %bb.j, %bb.e
  %.pn4 = phi { ptr, i32 } [ %i.bq, %bb.o ], [ %i.bk, %bb.j ], [ %i.bi, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.041)
  br label %bb.aq

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #26
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #26
  unreachable

bb.j:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtBO_7Builder5build0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bl) #22
          to label %bb.g unwind label %bb.an

bb.k:                                             ; preds = %bb.c, %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  invoke fastcc void @_RNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtB7_7Builder5build0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.az, ptr noundef nonnull align 8 %i.bl, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.bm = load i64, ptr %i.az, align 8, !range !20, !noundef !4
  %i.bn = icmp eq i64 %i.bm, -9223372036854775808
  br i1 %i.bn, label %bb.m, label %bb.n

common.ret:                                       ; preds = %bb.fb, %bb.ey, %bb.ec, %bb.m
  %.sink = phi i8 [ 1, %bb.fb ], [ 5, %bb.ey ], [ 4, %bb.ec ], [ 3, %bb.m ]
  store i8 %.sink, ptr %i.bb, align 1
  ret void

bb.m:                                             ; preds = %bb.l
  store i64 -9223372036854775806, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.041)
  br label %common.ret

bb.n:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i8 1, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider11credentialsNtBO_7Builder5build0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bl)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.br = load ptr, ptr %1, align 8, !nonnull !4, !align !19, !noundef !4
  invoke void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials15assume_role_arn(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.fc, %bb.et, %bb.er, %bb.ab, %bb.r
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.fc ], [ %.pn30, %bb.er ], [ %.pn21.pn, %bb.et ], [ %.pn8, %bb.ab ], [ %i.bw, %bb.r ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 41
  store i8 0, ptr %i.bs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bu = load i8, ptr %i.bt, align 8, !range !5, !noundef !4
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.fd, label %bb.aq

bb.r:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  %i.bx = load i64, ptr %i.bl, align 8, !range !20, !noundef !4
  %.not = icmp eq i64 %i.bx, -9223372036854775808
  br i1 %.not, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.by = load ptr, ptr %1, align 8, !nonnull !4, !align !19, !noundef !4
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.by)
          to label %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.v

_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke void @_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain9first_tryReNtNtCs9rVkZwOUgsI_13deltalake_aws11credentials26OptionsCredentialsProviderEB1K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 14, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.al)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.u
  %.pn6 = phi { ptr, i32 } [ %i.ca, %bb.w ], [ %i.bz, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ab

bb.w:                                             ; preds = %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i8 0, ptr %i.bo, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  invoke void @_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain7or_elseReNtNtNtBb_16default_provider11credentials23DefaultCredentialsChainECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj)
end_hunk_1
begin_hunk_2_@_RNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0B5_:bb.a
  br i1 %.not.i, label %.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.ac, ptr noundef nonnull align 8 dereferenceable(416) %i.df, i64 416, i1 false), !noalias !3778
  br label %bb.bl

.thread.i:                                        ; preds = %bb.at
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9904
  store i8 4, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3778
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9905 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3778
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 1296
  br label %bb.ay

bb.av:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #26
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #26
          to label %.noexc38 unwind label %bb.ar

.noexc38:                                         ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3778
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 9905 ; 4 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !range !102, !noalias !3782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3778
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 1296 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3786)
  switch i8 %.pre.i, label %default.unreachable75 [
    i8 0, label %._crit_edge
    i8 1, label %bb.bc
    i8 2, label %bb.bd
    i8 3, label %bb.az
  ]

._crit_edge:                                      ; preds = %bb.ax
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %1, i64 9904
  %.pre74 = load i8, ptr %.phi.trans.insert73, align 8, !range !837, !noalias !3782
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge, %.thread.i
  %i.di = phi ptr [ %i.cz, %.thread.i ], [ %i.cy, %._crit_edge ] ; 2 uses
  %i.dj = phi ptr [ %i.da, %.thread.i ], [ %i.cx, %._crit_edge ] ; 2 uses
  %i.dk = phi i8 [ 4, %.thread.i ], [ %.pre74, %._crit_edge ]
  %i.dl = phi ptr [ %.sroa.8.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ] ; 2 uses
  %i.dm = phi ptr [ %i.dg, %.thread.i ], [ %i.dh, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3782
  invoke void @_RNvCsaB04DkjCm5a_10aws_config8defaults(ptr noalias noundef nonnull sret([624 x i8]) align 8 captures(address) dereferenceable(624) %i.b, i8 noundef %i.dk)
          to label %bb.bb unwind label %bb.ba, !noalias !3787

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i)
  br label %bb.be

bb.ba:                                            ; preds = %bb.ay
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3782
  br label %.body.thread.i

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(624) %.sroa.06.i.i, ptr noundef nonnull align 8 dereferenceable(624) %i.b, i64 624, i1 false), !noalias !3782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2560) %i.dm, ptr noundef nonnull align 8 dereferenceable(2560) %.sroa.06.i.i, i64 2560, i1 false), !noalias !3782
  %.sroa.7.0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %1, i64 3856
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i37, align 8, !noalias !3782
  br label %bb.be

.body.thread.i:                                   ; preds = %bb.bi, %bb.bf, %bb.ba
  %i.do = phi ptr [ %i.dr, %bb.bi ], [ %i.dr, %bb.bf ], [ %i.di, %bb.ba ]
  %i.dp = phi ptr [ %i.ds, %bb.bi ], [ %i.ds, %bb.bf ], [ %i.dj, %bb.ba ]
  %i.dq = phi ptr [ %i.dt, %bb.bi ], [ %i.dt, %bb.bf ], [ %i.dl, %bb.ba ]
  %.pn4.i.i = phi { ptr, i32 } [ %i.dy, %bb.bi ], [ %i.dv, %bb.bf ], [ %i.dn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i)
  store i8 2, ptr %i.dq, align 1, !noalias !3782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3778
  br label %.thread167.i

bb.bc:                                            ; preds = %bb.ax
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #26
          to label %.noexc.i unwind label %.body.i, !noalias !3788

.noexc.i:                                         ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.ax
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #26
          to label %.noexc50.i unwind label %.body.i, !noalias !3788

.noexc50.i:                                       ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bb, %bb.az
  %i.dr = phi ptr [ %i.di, %bb.bb ], [ %i.cy, %bb.az ] ; 4 uses
  %i.ds = phi ptr [ %i.dj, %bb.bb ], [ %i.cx, %bb.az ] ; 3 uses
  %i.dt = phi ptr [ %i.dl, %bb.bb ], [ %.phi.trans.insert.i, %bb.az ] ; 4 uses
  %i.du = phi ptr [ %i.dm, %bb.bb ], [ %i.dh, %bb.az ] ; 3 uses
  invoke fastcc void @_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(416) %i.ab, ptr noundef nonnull align 8 %i.du, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bg unwind label %bb.bf, !noalias !3788

bb.bf:                                            ; preds = %bb.be
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.du) #22
          to label %.body.thread.i unwind label %bb.bj, !noalias !3789

bb.bg:                                            ; preds = %bb.be
  %i.dw = load i64, ptr %i.ab, align 8, !range !6, !alias.scope !3786, !noalias !3790, !noundef !4
  %i.dx = icmp eq i64 %i.dw, -9223372036854775807
  br i1 %i.dx, label %.thread66, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtBL_12ConfigLoader4load0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.du)
          to label %bb.bk unwind label %bb.bi, !noalias !3789

bb.bi:                                            ; preds = %bb.bh
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.bj:                                            ; preds = %bb.bf
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !3789
  unreachable

.body.i:                                          ; preds = %bb.bd, %bb.bc
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3778
  %cond.i64.i = icmp eq i8 %.pr.i, 3
  br i1 %cond.i64.i, label %bb.dl, label %.thread167.i

.thread66:                                        ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i)
  store i8 3, ptr %i.dt, align 1, !noalias !3782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3778
  store i8 3, ptr %i.dr, align 8, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ec

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i)
  store i8 1, ptr %i.dt, align 1, !noalias !3782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.ac, ptr noundef nonnull align 8 dereferenceable(416) %i.ab, i64 416, i1 false), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3778
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.au
  %i.eb = phi ptr [ %i.dr, %bb.bk ], [ %i.cz, %bb.au ] ; 5 uses
  %i.ec = phi ptr [ %i.ds, %bb.bk ], [ %i.da, %bb.au ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.068.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3778
  %.sroa.872.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 96 ; 3 uses
  %.sroa.973.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  %.sroa.1074.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 104 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1074.0..sroa_idx.i, i64 40, i1 false), !noalias !3778
  %.sroa.1175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 144 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1175.0..sroa_idx.i, i64 24, i1 false), !noalias !3778
  %.sroa.1276.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 168 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ef, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1276.0..sroa_idx.i, i64 64, i1 false), !noalias !3778
  %.sroa.1377.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 232 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1377.0..sroa_idx.i, i64 48, i1 false), !noalias !3778
  %.sroa.1478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 280 ; 3 uses
  %.sroa.1579.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 288
  %.sroa.1680.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 296 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.z, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1680.0..sroa_idx.i, i64 24, i1 false), !noalias !3778
  %.sroa.1781.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 320 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.z, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1781.0..sroa_idx.i, i64 24, i1 false), !noalias !3778
  %.sroa.1882.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 344 ; 3 uses
  %.sroa.1983.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 352
  %.sroa.2084.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 360 ; 4 uses
  %.sroa.2185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 368 ; 2 uses
  %.sroa.2286.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 376 ; 3 uses
  %.sroa.2387.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  %.sroa.2488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 392 ; 3 uses
  %.sroa.2589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 400
  %.sroa.2690.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 408 ; 3 uses
  %.sroa.2791.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 409
  %.sroa.2892.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 410
  %.sroa.2993.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 411
  %.sroa.3094.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 412 ; 3 uses
  %.sroa.3094.0.copyload.i = load i8, ptr %.sroa.3094.0..sroa_idx.i, align 4, !noalias !3778
  %.sroa.3195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 413 ; 3 uses
  %.sroa.3195.0.copyload.i = load i8, ptr %.sroa.3195.0..sroa_idx.i, align 1, !noalias !3778
  %.sroa.3296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 414 ; 3 uses
  %.sroa.3296.0.copyload.i = load i8, ptr %.sroa.3296.0..sroa_idx.i, align 2, !noalias !3778
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 24, i1 false), !noalias !3778
  %i.el = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.em = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false), !noalias !3778
  %i.en = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i64 24, i1 false), !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !3778
  %i.ep = getelementptr inbounds nuw i8, ptr %i.z, i64 280
  %i.eq = load <2 x ptr>, ptr %.sroa.1478.0..sroa_idx.i, align 8, !noalias !3778
  store <2 x ptr> %i.eq, ptr %i.ep, align 8, !alias.scope !3791, !noalias !3794
  %3 = getelementptr inbounds nuw i8, ptr %i.z, i64 413
  store i8 %.sroa.3195.0.copyload.i, ptr %3, align 1, !alias.scope !3791, !noalias !3794
  %i.er = getelementptr inbounds nuw i8, ptr %i.z, i64 344
  %i.es = load <2 x ptr>, ptr %.sroa.1882.0..sroa_idx.i, align 8, !noalias !3778
  store <2 x ptr> %i.es, ptr %i.er, align 8, !alias.scope !3791, !noalias !3794
  %i.et = getelementptr inbounds nuw i8, ptr %i.z, i64 360
  %i.eu = load <2 x ptr>, ptr %.sroa.2084.0..sroa_idx.i, align 8, !noalias !3778
  store <2 x ptr> %i.eu, ptr %i.et, align 8, !alias.scope !3791, !noalias !3794
  %i.ev = getelementptr inbounds nuw i8, ptr %i.z, i64 376
  %i.ew = load <2 x ptr>, ptr %.sroa.2286.0..sroa_idx.i, align 8, !noalias !3778
  store <2 x ptr> %i.ew, ptr %i.ev, align 8, !alias.scope !3791, !noalias !3794
  %i.ex = getelementptr inbounds nuw i8, ptr %i.z, i64 408
  %4 = getelementptr inbounds nuw i8, ptr %i.z, i64 414
  store i8 %.sroa.3296.0.copyload.i, ptr %4, align 2, !alias.scope !3791, !noalias !3794
  %i.ey = getelementptr inbounds nuw i8, ptr %i.z, i64 392
  %i.ez = load <2 x ptr>, ptr %.sroa.2488.0..sroa_idx.i, align 8, !noalias !3778
  store <2 x ptr> %i.ez, ptr %i.ey, align 8, !alias.scope !3791, !noalias !3794
  %i.fa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.fb = load <2 x i32>, ptr %.sroa.872.0..sroa_idx.i, align 8, !noalias !3778
  store <2 x i32> %i.fb, ptr %i.fa, align 8, !alias.scope !3791, !noalias !3794
  %5 = load <4 x i8>, ptr %.sroa.2690.0..sroa_idx.i, align 8, !noalias !3778
  store <4 x i8> %5, ptr %i.ex, align 8, !alias.scope !3791, !noalias !3794
  %6 = getelementptr inbounds nuw i8, ptr %i.z, i64 412
  store i8 %.sroa.3094.0.copyload.i, ptr %6, align 4, !alias.scope !3791, !noalias !3794
  %i.fc = invoke { ptr, ptr } @_RNvMNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client8identity5cacheNtB2_13IdentityCache8no_cache()
          to label %bb.bn unwind label %bb.dj, !noalias !3788 ; 2 uses

bb.bm:                                            ; preds = %bb.bn
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.bn:                                            ; preds = %bb.bl
  %i.fe = extractvalue { ptr, ptr } %i.fc, 0
  %i.ff = extractvalue { ptr, ptr } %i.fc, 1
  invoke void @_RINvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB3_7Builder14identity_cacheNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([416 x i8]) align 8 captures(none) dereferenceable(416) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(416) %i.z, ptr noundef nonnull %i.fe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ff)
          to label %bb.bo unwind label %bb.bm, !noalias !3788

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3778
  call void @llvm.experimental.noalias.scope.decl(metadata !3796)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.068.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.068.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 24, i1 false), !alias.scope !3799, !noalias !3778
  %i.fh = getelementptr inbounds nuw i8, ptr %i.aa, i64 280
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !3801, !noalias !3802 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aa, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1680.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 24, i1 false), !noalias !3778
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aa, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1781.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i64 24, i1 false), !noalias !3778
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %.sroa.068.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.068.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.72..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i64 24, i1 false), !alias.scope !3799, !noalias !3778
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aa, i64 413
  %i.fp = load i8, ptr %i.fo, align 1, !range !102, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.068.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.068.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i64 24, i1 false), !alias.scope !3799, !noalias !3778
  %i.fr = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1074.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.fr, i64 40, i1 false), !noalias !3778
  %i.fs = getelementptr inbounds nuw i8, ptr %i.aa, i64 344
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aa, i64 352
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !3801, !noalias !3802 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1276.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.fw, i64 64, i1 false), !noalias !3778
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aa, i64 376
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.aa, i64 384
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !3801, !noalias !3802 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aa, i64 408
  %i.gc = load i8, ptr %i.gb, align 8, !range !2407, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.aa, i64 409
  %i.ge = load i8, ptr %i.gd, align 1, !range !2407, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.aa, i64 360
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aa, i64 368
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !3801, !noalias !3802 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.aa, i64 414
  %i.gk = load i8, ptr %i.gj, align 2, !range !101, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1175.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i64 24, i1 false), !noalias !3778
  %i.gm = getelementptr inbounds nuw i8, ptr %i.aa, i64 392
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.aa, i64 400
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !3801, !noalias !3802 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1377.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.gq, i64 48, i1 false), !noalias !3778
  %i.gr = getelementptr inbounds nuw i8, ptr %i.aa, i64 410
  %i.gs = load i8, ptr %i.gr, align 2, !range !2407, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.gu = load i32, ptr %i.gt, align 8, !range !2823, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.aa, i64 100
  %i.gw = load i32, ptr %i.gv, align 4, !alias.scope !3801, !noalias !3802 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aa, i64 411
  %i.gy = load i8, ptr %i.gx, align 1, !range !2407, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.aa, i64 412
  %i.ha = load i8, ptr %i.gz, align 4, !range !2407, !alias.scope !3801, !noalias !3802, !noundef !4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !alias.scope !3799, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.068.i, i64 96, i1 false), !noalias !3778
  store i32 %i.gu, ptr %.sroa.872.0..sroa_idx.i, align 8, !noalias !3778
  store i32 %i.gw, ptr %.sroa.973.0..sroa_idx.i, align 4, !noalias !3778
  store ptr %i.fi, ptr %.sroa.1478.0..sroa_idx.i, align 8, !noalias !3778
  store ptr %i.fk, ptr %.sroa.1579.0..sroa_idx.i, align 8, !noalias !3778
  store ptr %i.ft, ptr %.sroa.1882.0..sroa_idx.i, align 8, !noalias !3778
  store ptr %i.fv, ptr %.sroa.1983.0..sroa_idx.i, align 8, !noalias !3778
  store ptr %i.gg, ptr %.sroa.2084.0..sroa_idx.i, align 8, !noalias !3778
  store ptr %i.gi, ptr %.sroa.2185.0..sroa_idx.i, align 8, !noalias !3778
  store ptr %i.fy, ptr %.sroa.2286.0..sroa_idx.i, align 8, !noalias !3778
  store ptr %i.ga, ptr %.sroa.2387.0..sroa_idx.i, align 8, !noalias !3778
  store ptr %i.gn, ptr %.sroa.2488.0..sroa_idx.i, align 8, !noalias !3778
  store ptr %i.gp, ptr %.sroa.2589.0..sroa_idx.i, align 8, !noalias !3778
  store i8 %i.gc, ptr %.sroa.2690.0..sroa_idx.i, align 8, !noalias !3778
  store i8 %i.ge, ptr %.sroa.2791.0..sroa_idx.i, align 1, !noalias !3778
  store i8 %i.gs, ptr %.sroa.2892.0..sroa_idx.i, align 2, !noalias !3778
  store i8 %i.gy, ptr %.sroa.2993.0..sroa_idx.i, align 1, !noalias !3778
  store i8 %i.ha, ptr %.sroa.3094.0..sroa_idx.i, align 4, !noalias !3778
  store i8 %i.fp, ptr %.sroa.3195.0..sroa_idx.i, align 1, !noalias !3778
  store i8 %i.gk, ptr %.sroa.3296.0..sroa_idx.i, align 2, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.068.i)
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !range !6, !noalias !3778, !noundef !4
  %.not16.i = icmp eq i64 %i.hd, -9223372036854775807
  br i1 %.not16.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bs, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3778
  invoke void @_RNvXs5_NtCs9hC3HWJ95bf_11aws_sdk_sts6configNtB5_7BuilderINtNtCsbvkFyIu7lgC_4core7convert4FromRNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigE4from(ptr noalias noundef nonnull sret([496 x i8]) align 8 captures(none) dereferenceable(496) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ac)
          to label %bb.bv unwind label %bb.bu, !noalias !3788

bb.bq:                                            ; preds = %bb.bo
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 9919
  store i8 0, ptr %i.he, align 1, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i64 24, i1 false), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.098.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3778
  %i.hf = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1074.0..sroa_idx.i, i64 40, i1 false), !noalias !3778
  %i.hg = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1175.0..sroa_idx.i, i64 24, i1 false), !noalias !3778
  %i.hh = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hh, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1276.0..sroa_idx.i, i64 64, i1 false), !noalias !3778
  %i.hi = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hi, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1377.0..sroa_idx.i, i64 48, i1 false), !noalias !3778
  %i.hj = getelementptr inbounds nuw i8, ptr %i.x, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1680.0..sroa_idx.i, i64 24, i1 false), !noalias !3778
  %i.hk = getelementptr inbounds nuw i8, ptr %i.x, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1781.0..sroa_idx.i, i64 24, i1 false), !noalias !3778
  %i.hl = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 24, i1 false), !noalias !3778
  %i.hm = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false), !noalias !3778
  %i.hn = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i64 24, i1 false), !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !3778
  %i.ho = getelementptr inbounds nuw i8, ptr %i.x, i64 280
  store ptr %i.fi, ptr %i.ho, align 8, !alias.scope !3803, !noalias !3806
  %i.hp = getelementptr inbounds nuw i8, ptr %i.x, i64 288
  store ptr %i.fk, ptr %i.hp, align 8, !alias.scope !3803, !noalias !3806
  %i.hq = getelementptr inbounds nuw i8, ptr %i.x, i64 413
  store i8 %i.fp, ptr %i.hq, align 1, !alias.scope !3803, !noalias !3806
  %i.hr = getelementptr inbounds nuw i8, ptr %i.x, i64 344
  store ptr %i.ft, ptr %i.hr, align 8, !alias.scope !3803, !noalias !3806
  %i.hs = getelementptr inbounds nuw i8, ptr %i.x, i64 352
  store ptr %i.fv, ptr %i.hs, align 8, !alias.scope !3803, !noalias !3806
  %i.ht = getelementptr inbounds nuw i8, ptr %i.x, i64 360
  store ptr %i.gg, ptr %i.ht, align 8, !alias.scope !3803, !noalias !3806
  %i.hu = getelementptr inbounds nuw i8, ptr %i.x, i64 368
  store ptr %i.gi, ptr %i.hu, align 8, !alias.scope !3803, !noalias !3806
  %i.hv = getelementptr inbounds nuw i8, ptr %i.x, i64 376
  store ptr %i.fy, ptr %i.hv, align 8, !alias.scope !3803, !noalias !3806
  %i.hw = getelementptr inbounds nuw i8, ptr %i.x, i64 384
  store ptr %i.ga, ptr %i.hw, align 8, !alias.scope !3803, !noalias !3806
  %i.hx = getelementptr inbounds nuw i8, ptr %i.x, i64 408
  store i8 %i.gc, ptr %i.hx, align 8, !alias.scope !3803, !noalias !3806
  %i.hy = getelementptr inbounds nuw i8, ptr %i.x, i64 409
  store i8 %i.ge, ptr %i.hy, align 1, !alias.scope !3803, !noalias !3806
  %i.hz = getelementptr inbounds nuw i8, ptr %i.x, i64 414
  store i8 %i.gk, ptr %i.hz, align 2, !alias.scope !3803, !noalias !3806
  %i.ia = getelementptr inbounds nuw i8, ptr %i.x, i64 392
  store ptr %i.gn, ptr %i.ia, align 8, !alias.scope !3803, !noalias !3806
  %i.ib = getelementptr inbounds nuw i8, ptr %i.x, i64 400
  store ptr %i.gp, ptr %i.ib, align 8, !alias.scope !3803, !noalias !3806
  %i.ic = getelementptr inbounds nuw i8, ptr %i.x, i64 410
  store i8 %i.gs, ptr %i.ic, align 2, !alias.scope !3803, !noalias !3806
  %i.id = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store i32 %i.gu, ptr %i.id, align 8, !alias.scope !3803, !noalias !3806
  %i.ie = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  store i32 %i.gw, ptr %i.ie, align 4, !alias.scope !3803, !noalias !3806
  %i.if = getelementptr inbounds nuw i8, ptr %i.x, i64 411
  store i8 %i.gy, ptr %i.if, align 1, !alias.scope !3803, !noalias !3806
  %i.ig = getelementptr inbounds nuw i8, ptr %i.x, i64 412
  store i8 %i.ha, ptr %i.ig, align 4, !alias.scope !3803, !noalias !3806
  invoke void @_RINvMNtCsjPG5xYjJYir_9aws_types10sdk_configNtB3_7Builder6regionNtNtB5_6region6RegionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([416 x i8]) align 8 captures(none) dereferenceable(416) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(416) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.bs unwind label %bb.br, !noalias !3788

bb.br:                                            ; preds = %bb.bq
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.098.i)
  br label %.thread167.i

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3778
  call void @llvm.experimental.noalias.scope.decl(metadata !3808)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.098.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.098.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.098.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ii, i64 24, i1 false), !alias.scope !3811, !noalias !3778
  %i.ij = getelementptr inbounds nuw i8, ptr %i.y, i64 280
  %i.ik = getelementptr inbounds nuw i8, ptr %i.y, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1680.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i64 24, i1 false), !noalias !3778
  %i.il = getelementptr inbounds nuw i8, ptr %i.y, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1781.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.il, i64 24, i1 false), !noalias !3778
  %i.im = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %.sroa.098.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.098.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.098.72..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.im, i64 24, i1 false), !alias.scope !3811, !noalias !3778
  %7 = getelementptr inbounds nuw i8, ptr %i.y, i64 413
  %8 = load i8, ptr %7, align 1, !range !102, !alias.scope !3813, !noalias !3814, !noundef !4
  %i.in = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.098.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.098.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.098.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.in, i64 24, i1 false), !alias.scope !3811, !noalias !3778
  %i.io = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1074.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.io, i64 40, i1 false), !noalias !3778
  %i.ip = getelementptr inbounds nuw i8, ptr %i.y, i64 344
  %i.iq = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1276.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.iq, i64 64, i1 false), !noalias !3778
  %i.ir = getelementptr inbounds nuw i8, ptr %i.y, i64 376
  %i.is = getelementptr inbounds nuw i8, ptr %i.y, i64 408
  %i.it = getelementptr inbounds nuw i8, ptr %i.y, i64 360
  %9 = getelementptr inbounds nuw i8, ptr %i.y, i64 414
  %10 = load i8, ptr %9, align 2, !range !101, !alias.scope !3813, !noalias !3814, !noundef !4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1175.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i64 24, i1 false), !noalias !3778
  %i.iv = getelementptr inbounds nuw i8, ptr %i.y, i64 392
  %i.iw = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1377.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.iw, i64 48, i1 false), !noalias !3778
  %i.ix = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %11 = getelementptr inbounds nuw i8, ptr %i.y, i64 412
  %12 = load i8, ptr %11, align 4, !range !2407, !alias.scope !3813, !noalias !3814, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.098.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !alias.scope !3811, !noalias !3778
  %13 = load <4 x i8>, ptr %i.is, align 8, !alias.scope !3813, !noalias !3814
  %i.iy = load <2 x i32>, ptr %i.ix, align 8, !alias.scope !3813, !noalias !3814
  %i.iz = load <2 x ptr>, ptr %i.ij, align 8, !alias.scope !3813, !noalias !3814
  %i.ja = load <2 x ptr>, ptr %i.ip, align 8, !alias.scope !3813, !noalias !3814
  %i.jb = load <2 x ptr>, ptr %i.it, align 8, !alias.scope !3813, !noalias !3814
  %i.jc = load <2 x ptr>, ptr %i.ir, align 8, !alias.scope !3813, !noalias !3814
  %i.jd = load <2 x ptr>, ptr %i.iv, align 8, !alias.scope !3813, !noalias !3814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.098.i, i64 96, i1 false), !noalias !3778
  store <2 x i32> %i.iy, ptr %.sroa.872.0..sroa_idx.i, align 8, !noalias !3778
  store <2 x ptr> %i.iz, ptr %.sroa.1478.0..sroa_idx.i, align 8, !noalias !3778
  store <2 x ptr> %i.ja, ptr %.sroa.1882.0..sroa_idx.i, align 8, !noalias !3778
  store <2 x ptr> %i.jb, ptr %.sroa.2084.0..sroa_idx.i, align 8, !noalias !3778
  store <2 x ptr> %i.jc, ptr %.sroa.2286.0..sroa_idx.i, align 8, !noalias !3778
  store <2 x ptr> %i.jd, ptr %.sroa.2488.0..sroa_idx.i, align 8, !noalias !3778
  store <4 x i8> %13, ptr %.sroa.2690.0..sroa_idx.i, align 8, !noalias !3778
  store i8 %12, ptr %.sroa.3094.0..sroa_idx.i, align 4, !noalias !3778
  store i8 %8, ptr %.sroa.3195.0..sroa_idx.i, align 1, !noalias !3778
  store i8 %10, ptr %.sroa.3296.0..sroa_idx.i, align 2, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.098.i)
  br label %bb.bp

bb.bt:                                            ; preds = %bb.ea, %bb.dy, %bb.dv, %bb.dt, %bb.dr, %bb.dp, %bb.dn, %bb.dl, %bb.dk, %bb.dj, %bb.dh, %bb.dg, %bb.df, %bb.cz
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !3788
  unreachable

bb.bu:                                            ; preds = %bb.bp
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.bv:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3778
  %.val.i = load ptr, ptr %.sroa.2084.0..sroa_idx.i, align 8, !noalias !3778, !noundef !4 ; 3 uses
  %.val48.i = load ptr, ptr %.sroa.2185.0..sroa_idx.i, align 8, !noalias !3778 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48.i) ]
  %i.jg = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !3788
  %i.jh = icmp slt i64 %i.jg, 0
  br i1 %i.jh, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.trap()
  unreachable

bb.by:                                            ; preds = %bb.bv
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #26
          to label %.noexc53.i unwind label %.thread179.i, !noalias !3788

.noexc53.i:                                       ; preds = %bb.by
  unreachable

.thread179.i:                                     ; preds = %bb.by
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3778
  br label %bb.dh

bb.bz:                                            ; preds = %bb.bw
  store ptr %.val.i, ptr %i.u, align 8, !noalias !3778
  %i.jj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val48.i, ptr %i.jj, align 8, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3778
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 9918
  store i8 0, ptr %i.jk, align 2, !noalias !3778
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 744
  %.sroa.0152.0.copyload.i = load i64, ptr %i.jl, align 8, !noalias !3778 ; 2 uses
  %.not.i54.i = icmp eq i64 %.sroa.0152.0.copyload.i, -9223372036854775808
  br i1 %.not.i54.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.sroa.6154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 752
  store i64 %.sroa.0152.0.copyload.i, ptr %i.t, align 8, !alias.scope !3815, !noalias !3819
  %.sroa.6154.0..sroa_idx155.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6154.0..sroa_idx155.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6154.0..sroa_idx.i, i64 16, i1 false), !noalias !3778
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unwrap_or_elseNCNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtB1K_25AssumeRoleProviderBuilder5build00ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.jm = invoke { i64, i32 } @_RNvMs4_NtCs9PsDcNHE0mC_16aws_smithy_async4timeNtB5_16SharedTimeSource3now(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u)
          to label %.noexc55.i unwind label %bb.cc, !noalias !3788 ; 2 uses

.noexc55.i:                                       ; preds = %bb.cb
  %i.jn = extractvalue { i64, i32 } %i.jm, 0
  %i.jo = extractvalue { i64, i32 } %i.jm, 1
  invoke void @_RNvNtNtCsaB04DkjCm5a_10aws_config3sts4util20default_session_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 20, i64 noundef %i.jn, i32 noundef %i.jo)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unwrap_or_elseNCNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtB1K_25AssumeRoleProviderBuilder5build00ECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.cc, !noalias !3788

bb.cc:                                            ; preds = %.noexc55.i, %bb.cb
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unwrap_or_elseNCNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtB1K_25AssumeRoleProviderBuilder5build00ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.noexc55.i, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.q, ptr noundef nonnull align 8 dereferenceable(496) %i.v, i64 496, i1 false), !noalias !3778
  invoke void @_RNvMs0_NtCs9hC3HWJ95bf_11aws_sdk_sts6configNtB5_7Builder5build(ptr noalias noundef nonnull sret([504 x i8]) align 8 captures(none) dereferenceable(504) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(496) %i.q)
          to label %bb.ce unwind label %bb.cd, !noalias !3788

bb.cd:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unwrap_or_elseNCNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtB1K_25AssumeRoleProviderBuilder5build00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3778
  br label %.thread171.i

bb.ce:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringE14unwrap_or_elseNCNCNvMs_NtNtCsaB04DkjCm5a_10aws_config3sts11assume_roleNtB1K_25AssumeRoleProviderBuilder5build00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3778
  %i.jr = invoke noundef nonnull ptr @_RNvMNtCs9hC3HWJ95bf_11aws_sdk_sts6clientNtB2_6Client9from_conf(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(504) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
          to label %bb.cg unwind label %bb.cf, !noalias !3788 ; 3 uses

.thread171.i:                                     ; preds = %bb.cf, %bb.cd
  %.pn21.i = phi { ptr, i32 } [ %i.js, %bb.cf ], [ %i.jq, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3778
  br label %bb.dg

bb.cf:                                            ; preds = %bb.ce
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.thread171.i

bb.cg:                                            ; preds = %bb.ce
  store ptr %i.jr, ptr %i.s, align 8, !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3778
  call void @llvm.experimental.noalias.scope.decl(metadata !3821)
  %i.jt = atomicrmw add ptr %i.jr, i64 1 monotonic, align 8, !noalias !3824
  %i.ju = icmp slt i64 %i.jt, 0
  br i1 %i.ju, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.trap()
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.jv = getelementptr inbounds nuw i8, ptr %i.j, i64 768
  store ptr %i.jr, ptr %i.jv, align 8, !alias.scope !3821, !noalias !3778
  store i64 -9223372036854775808, ptr %i.j, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.16.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.18.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.0.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.20.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  store i32 0, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !3821, !noalias !3778
  %i.jw = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  store i64 -9223372036854775808, ptr %i.jw, align 8, !alias.scope !3821, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3778
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 9917
  store i8 0, ptr %i.jx, align 1, !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hb, i64 24, i1 false), !noalias !3778
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder12set_role_arn(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.ck unwind label %bb.cj, !noalias !3788

bb.cj:                                            ; preds = %bb.ci
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3778
  br label %bb.dd

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3778
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 9916
  store i8 0, ptr %i.jz, align 4, !noalias !3778
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.ka, i64 24, i1 false), !noalias !3778
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder15set_external_id(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.cm unwind label %bb.cl, !noalias !3788

bb.cl:                                            ; preds = %bb.ck
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3778
  br label %bb.dd

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !3778
  invoke void @_RNvMs0_NtNtNtCs9hC3HWJ95bf_11aws_sdk_sts9operation11assume_role8buildersNtB5_23AssumeRoleFluentBuilder21set_role_session_name(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.co unwind label %bb.cn, !noalias !3788

bb.cn:                                            ; preds = %bb.cm
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3778
  br label %bb.dc

end_hunk_2
