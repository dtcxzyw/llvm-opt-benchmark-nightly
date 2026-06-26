inline.NumInlined: 1308
inline.NumDeleted: 507
begin_hunk_0_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.iu:                                            ; preds = %bb.is, %bb.ir
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 3176
  store ptr %.val.i.i, ptr %i.adw, align 8, !noalias !2587
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 3184
  store ptr %i.ads, ptr %i.adx, align 8, !noalias !2587
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3656
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !2587
  br label %bb.ix

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit44.i.i: ; preds = %bb.kg, %bb.kf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit48.i.i, %bb.jv
  %.pn26.i.i = phi { ptr, i32 } [ %i.afh, %bb.jv ], [ %.pn22.pn.pn.i.i, %bb.kf ], [ %.pn22.pn.pn.i.i, %bb.kg ], [ %.pn22.pn.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit48.i.i ]
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 2984
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ady)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_config7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.kc, !noalias !2591

bb.iv:                                            ; preds = %bb.iq
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #26
          to label %.noexc.i unwind label %bb.kj, !noalias !2592

.noexc.i:                                         ; preds = %bb.iv
  unreachable

bb.iw:                                            ; preds = %bb.iq
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #26
          to label %.noexc8.i unwind label %bb.kj, !noalias !2592

.noexc8.i:                                        ; preds = %bb.iw
  unreachable

bb.ix:                                            ; preds = %bb.iu, %bb.iq
  %i.adz = phi ptr [ %i.ado, %bb.iu ], [ %i.adh, %bb.iq ] ; 5 uses
  %i.aea = phi ptr [ %i.adp, %bb.iu ], [ %i.adg, %bb.iq ] ; 3 uses
  %i.aeb = phi ptr [ %i.adq, %bb.iu ], [ %.phi.trans.insert.i, %bb.iq ] ; 3 uses
  %i.aec = phi ptr [ %i.adr, %bb.iu ], [ %i.adn, %bb.iq ] ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %i.aee = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.aed, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.iz unwind label %bb.iy, !noalias !2591 ; 2 uses

bb.iy:                                            ; preds = %bb.ix
  %i.aef = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 3656
  %i.aeh = load i8, ptr %i.aeg, align 8, !range !102, !noalias !2587, !noundef !4
  %cond.i45.i.i = icmp eq i8 %i.aeh, 3
  br i1 %cond.i45.i.i, label %bb.kh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit48.i.i

bb.iz:                                            ; preds = %bb.ix
  %i.aei = extractvalue { i64, ptr } %i.aee, 0
  %i.aej = extractvalue { i64, ptr } %i.aee, 1    ; 2 uses
  %i.aek = trunc nuw i64 %i.aei to i1
  br i1 %i.aek, label %.thread.i, label %bb.ja

.thread.i:                                        ; preds = %bb.iz
  store i8 3, ptr %i.aeb, align 8, !noalias !2587
  br label %.thread1047

bb.ja:                                            ; preds = %bb.iz
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 3656
  %i.aem = load i8, ptr %i.ael, align 8, !range !102, !noalias !2587, !noundef !4
  %cond.i.i.i337 = icmp eq i8 %i.aem, 3
  br i1 %cond.i.i.i337, label %bb.jb, label %bb.je

bb.jb:                                            ; preds = %bb.ja
  %i.aen = getelementptr inbounds nuw i8, ptr %1, i64 3648
  %i.aeo = load i8, ptr %i.aen, align 8, !range !102, !noalias !2587, !noundef !4
  %cond.i.i.i.i = icmp eq i8 %i.aeo, 3
  br i1 %cond.i.i.i.i, label %bb.jc, label %bb.je

bb.jc:                                            ; preds = %bb.jb
  %i.aep = getelementptr inbounds nuw i8, ptr %1, i64 3200
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.aep)
          to label %bb.je unwind label %bb.jd, !noalias !2591

bb.jd:                                            ; preds = %bb.jc
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit48.i.i

bb.je:                                            ; preds = %bb.jc, %bb.jb, %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !noalias !2587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !noalias !2587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !noalias !2587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !noalias !2587
  store i64 -9223372036854775807, ptr %i.fp, align 8, !alias.scope !2593, !noalias !2587
  %i.aer = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i64 -9223372036854775807, ptr %i.aer, align 8, !alias.scope !2593, !noalias !2587
  %i.aes = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  store i64 -9223372036854775807, ptr %i.aes, align 8, !alias.scope !2593, !noalias !2587
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.fq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.fp, ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 16)
          to label %bb.jg unwind label %bb.jf, !noalias !2591

bb.jf:                                            ; preds = %bb.je
  %i.aet = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !noalias !2587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !2587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !2587
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionmEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.jg:                                            ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !noalias !2587
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.fr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.fq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 12)
          to label %bb.ji unwind label %bb.jh, !noalias !2591

bb.jh:                                            ; preds = %bb.jg
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !2587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !2587
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionmEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ji:                                            ; preds = %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !2587
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 3176 ; 6 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validatemNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorNvNtNtB1m_16default_provider12retry_config21validate_max_attemptsECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.fr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.aej)
          to label %bb.jk unwind label %bb.jj, !noalias !2591

bb.jj:                                            ; preds = %bb.ji
  %i.aew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !2587
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionmEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.jk:                                            ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !2587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !noalias !2587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !noalias !2587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !noalias !2587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl), !noalias !2587
  store i64 -9223372036854775807, ptr %i.fl, align 8, !alias.scope !2596, !noalias !2587
  %i.aex = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store i64 -9223372036854775807, ptr %i.aex, align 8, !alias.scope !2596, !noalias !2587
  %i.aey = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  store i64 -9223372036854775807, ptr %i.aey, align 8, !alias.scope !2596, !noalias !2587
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.fl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 14)
          to label %bb.jm unwind label %bb.jl, !noalias !2591

bb.jl:                                            ; preds = %bb.jk
  %i.aez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !2587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !2587
  br label %bb.kd

bb.jm:                                            ; preds = %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !2587
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.fn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.fm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 10)
          to label %bb.jo unwind label %bb.jn, !noalias !2591

bb.jn:                                            ; preds = %bb.jm
  %i.afa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !2587
  br label %bb.kd

bb.jo:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !2587
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validateNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry9RetryModeNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorNCNCNvMNtNtB2b_16default_provider12retry_configNtB3c_7Builder16try_retry_config00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.fn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.aej)
          to label %bb.jq unwind label %bb.jp, !noalias !2591

bb.jp:                                            ; preds = %bb.jo
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.jq:                                            ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !noalias !2587
  %.sroa.0150.0.copyload.i.i = load i64, ptr %i.fs, align 8, !noalias !2587 ; 3 uses
  %.sroa.6151.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.6151.0.copyload.i.i = load i32, ptr %.sroa.6151.0..sroa_idx.i.i, align 8, !noalias !2587 ; 3 uses
  %.sroa.8152.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %.sroa.8152.0.copyload.i.i = load i32, ptr %.sroa.8152.0..sroa_idx.i.i, align 4, !noalias !2587 ; 3 uses
  %.sroa.10153.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %.sroa.10153.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.10153.0..sroa_idx.i.i, align 8, !noalias !2587 ; 2 uses
  %.sroa.10153.sroa.5.0..sroa.10153.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %.sroa.10153.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.10153.sroa.5.0..sroa.10153.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2587 ; 2 uses
  %.sroa.10153.sroa.6.0..sroa.10153.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %.sroa.10153.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.10153.sroa.6.0..sroa.10153.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2587 ; 2 uses
  %.sroa.10153.sroa.7.0..sroa.10153.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %.sroa.10153.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.10153.sroa.7.0..sroa.10153.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2587 ; 2 uses
  %.sroa.10153.sroa.8.0..sroa.10153.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 36
  %.sroa.10153.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.10153.sroa.8.0..sroa.10153.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2587 ; 2 uses
  %.sroa.10153.sroa.9.0..sroa.10153.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %.sroa.10153.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.10153.sroa.9.0..sroa.10153.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2587 ; 2 uses
  %.sroa.10153.sroa.10.0..sroa.10153.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 44
  %.sroa.10153.sroa.10.0.copyload.i.i = load i8, ptr %.sroa.10153.sroa.10.0..sroa.10153.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2587 ; 2 uses
  %.sroa.10153.sroa.11.0..sroa.10153.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 45
  %.sroa.10153.sroa.11.0.copyload.i.i = load i8, ptr %.sroa.10153.sroa.11.0..sroa.10153.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !2587 ; 2 uses
  %.sroa.10153.sroa.12.0..sroa.10153.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 46
  %.sroa.10153.sroa.12.0.copyload.i.i = load i8, ptr %.sroa.10153.sroa.12.0..sroa.10153.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !2587 ; 2 uses
  %.sroa.10153.sroa.13.0..sroa.10153.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 47
  %.sroa.10153.sroa.13.0.copyload.i.i = load i8, ptr %.sroa.10153.sroa.13.0..sroa.10153.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !2587 ; 2 uses
  %.not.i30.i.i = icmp eq i64 %.sroa.0150.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i30.i.i, label %bb.jr, label %bb.jz

bb.jr:                                            ; preds = %bb.jq
  %i.afc = trunc nuw i32 %.sroa.6151.0.copyload.i.i to i1
  %spec.select.i.i = select i1 %i.afc, i32 %.sroa.8152.0.copyload.i.i, i32 3
  %.sroa.0169.0.copyload.i.i = load i64, ptr %i.fo, align 8, !noalias !2587 ; 2 uses
  %.sroa.6170.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.6170.0.copyload.i.i = load i8, ptr %.sroa.6170.0..sroa_idx.i.i, align 8, !noalias !2587 ; 3 uses
  %.not.i31.i.i = icmp eq i64 %.sroa.0169.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i31.i.i, label %bb.js, label %.thread.i.i

bb.js:                                            ; preds = %bb.jr
  %.not16.i.i = icmp eq i8 %.sroa.6170.0.copyload.i.i, 2
  %spec.select260.i.i = select i1 %.not16.i.i, i8 0, i8 %.sroa.6170.0.copyload.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !2587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !2587
  call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.afd = load ptr, ptr %i.aev, align 8, !alias.scope !2605, !noalias !2587, !noundef !4 ; 2 uses
  %i.afe = icmp eq ptr %i.afd, null
  br i1 %i.afe, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.aff = atomicrmw sub ptr %i.afd, i64 1 release, align 8, !noalias !2606
  %i.afg = icmp eq i64 %i.aff, 1
  br i1 %i.afg, label %bb.ju, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ju:                                            ; preds = %bb.jt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aev) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.jv, !noalias !2591

bb.jv:                                            ; preds = %bb.jy, %bb.ju
  %i.afh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit44.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.ju, %bb.jt, %bb.js
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 2984
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.afi)
          to label %bb.kk unwind label %bb.jw, !noalias !2591

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_config7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.jw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit44.i.i
  %.pn28.i.i = phi { ptr, i32 } [ %i.afj, %bb.jw ], [ %.pn26.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit44.i.i ]
  store i8 2, ptr %i.aeb, align 8, !noalias !2587
  br label %.body.i335

bb.jw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.afj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_config7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.thread.i.i:                                      ; preds = %bb.jr
  %.sroa.8171.sroa.15.0..sroa.8171.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 47
  %.sroa.8171.sroa.15.0.copyload.i.i = load i8, ptr %.sroa.8171.sroa.15.0..sroa.8171.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !2587
  %.sroa.8171.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 9
  %.sroa.8171.sroa.14.0..sroa.8171.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 46
  %.sroa.8171.sroa.14.0.copyload.i.i = load i8, ptr %.sroa.8171.sroa.14.0..sroa.8171.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !2587
  %.sroa.8171.sroa.13.0..sroa.8171.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 45
  %.sroa.8171.sroa.13.0.copyload.i.i = load i8, ptr %.sroa.8171.sroa.13.0..sroa.8171.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !2587
  %.sroa.8171.sroa.12.0..sroa.8171.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 44
  %.sroa.8171.sroa.12.0.copyload.i.i = load i8, ptr %.sroa.8171.sroa.12.0..sroa.8171.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2587
  %.sroa.8171.sroa.11.0..sroa.8171.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %.sroa.8171.sroa.11.0.copyload.i.i = load i32, ptr %.sroa.8171.sroa.11.0..sroa.8171.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2587
  %.sroa.8171.sroa.10.0..sroa.8171.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 36
  %.sroa.8171.sroa.10.0.copyload.i.i = load i32, ptr %.sroa.8171.sroa.10.0..sroa.8171.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2587
  %.sroa.8171.sroa.9.0..sroa.8171.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %.sroa.8171.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.8171.sroa.9.0..sroa.8171.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2587
  %.sroa.8171.sroa.8.0..sroa.8171.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %.sroa.8171.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8171.sroa.8.0..sroa.8171.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2587
  %.sroa.8171.sroa.7.0..sroa.8171.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 20
  %.sroa.8171.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.8171.sroa.7.0..sroa.8171.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2587
  %.sroa.8171.sroa.6.0..sroa.8171.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %.sroa.8171.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.8171.sroa.6.0..sroa.8171.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2587
  %.sroa.8171.sroa.5.0..sroa.8171.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %.sroa.8171.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.8171.sroa.5.0..sroa.8171.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2587
  %.sroa.8171.sroa.0.0.copyload.i.i = load i24, ptr %.sroa.8171.0..sroa_idx.i.i, align 1, !noalias !2587
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry9RetryModeEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry9RetryModeEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.ka, %bb.jz, %.thread.i.i
  %.sroa.4187.sroa.0.sroa.4.sroa.0.1255.i.i = phi i24 [ %.sroa.8171.sroa.0.0.copyload.i.i, %.thread.i.i ], [ %.sroa.4187.sroa.0.sroa.4.0.extract.trunc.i.i, %bb.ka ], [ %.sroa.4187.sroa.0.sroa.4.0.extract.trunc.i.i, %bb.jz ]
  %.sroa.4187.sroa.0.sroa.0.1254.i.i = phi i8 [ %.sroa.6170.0.copyload.i.i, %.thread.i.i ], [ %.sroa.4187.sroa.0.sroa.0.0.extract.trunc.i.i, %bb.ka ], [ %.sroa.4187.sroa.0.sroa.0.0.extract.trunc.i.i, %bb.jz ]
  %.sroa.4187.sroa.5.1253.i.i = phi i32 [ %.sroa.8171.sroa.5.0.copyload.i.i, %.thread.i.i ], [ %.sroa.8152.0.copyload.i.i, %bb.ka ], [ %.sroa.8152.0.copyload.i.i, %bb.jz ]
  %.sroa.19195.1252.i.i = phi i8 [ %.sroa.8171.sroa.15.0.copyload.i.i, %.thread.i.i ], [ %.sroa.10153.sroa.13.0.copyload.i.i, %bb.ka ], [ %.sroa.10153.sroa.13.0.copyload.i.i, %bb.jz ]
  %.sroa.18.1251.i.i = phi i8 [ %.sroa.8171.sroa.14.0.copyload.i.i, %.thread.i.i ], [ %.sroa.10153.sroa.12.0.copyload.i.i, %bb.ka ], [ %.sroa.10153.sroa.12.0.copyload.i.i, %bb.jz ]
  %.sroa.17194.1250.i.i = phi i8 [ %.sroa.8171.sroa.13.0.copyload.i.i, %.thread.i.i ], [ %.sroa.10153.sroa.11.0.copyload.i.i, %bb.ka ], [ %.sroa.10153.sroa.11.0.copyload.i.i, %bb.jz ]
  %.sroa.16.1249.i.i = phi i8 [ %.sroa.8171.sroa.12.0.copyload.i.i, %.thread.i.i ], [ %.sroa.10153.sroa.10.0.copyload.i.i, %bb.ka ], [ %.sroa.10153.sroa.10.0.copyload.i.i, %bb.jz ]
  %.sroa.15193.1248.i.i = phi i32 [ %.sroa.8171.sroa.11.0.copyload.i.i, %.thread.i.i ], [ %.sroa.10153.sroa.9.0.copyload.i.i, %bb.ka ], [ %.sroa.10153.sroa.9.0.copyload.i.i, %bb.jz ]
  %.sroa.14192.1247.i.i = phi i32 [ %.sroa.8171.sroa.10.0.copyload.i.i, %.thread.i.i ], [ %.sroa.10153.sroa.8.0.copyload.i.i, %bb.ka ], [ %.sroa.10153.sroa.8.0.copyload.i.i, %bb.jz ]
  %.sroa.13191.1246.i.i = phi i32 [ %.sroa.8171.sroa.9.0.copyload.i.i, %.thread.i.i ], [ %.sroa.10153.sroa.7.0.copyload.i.i, %bb.ka ], [ %.sroa.10153.sroa.7.0.copyload.i.i, %bb.jz ]
  %.sroa.12190.1245.i.i = phi i64 [ %.sroa.8171.sroa.8.0.copyload.i.i, %.thread.i.i ], [ %.sroa.10153.sroa.6.0.copyload.i.i, %bb.ka ], [ %.sroa.10153.sroa.6.0.copyload.i.i, %bb.jz ]
  %.sroa.11189.1244.i.i = phi i32 [ %.sroa.8171.sroa.7.0.copyload.i.i, %.thread.i.i ], [ %.sroa.10153.sroa.5.0.copyload.i.i, %bb.ka ], [ %.sroa.10153.sroa.5.0.copyload.i.i, %bb.jz ]
  %.sroa.9188.1243.i.i = phi i32 [ %.sroa.8171.sroa.6.0.copyload.i.i, %.thread.i.i ], [ %.sroa.10153.sroa.0.0.copyload.i.i, %bb.ka ], [ %.sroa.10153.sroa.0.0.copyload.i.i, %bb.jz ]
  %.sroa.0186.1242.i.i = phi i64 [ %.sroa.0169.0.copyload.i.i, %.thread.i.i ], [ %.sroa.0150.0.copyload.i.i, %bb.ka ], [ %.sroa.0150.0.copyload.i.i, %bb.jz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !2587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !2587
  call void @llvm.experimental.noalias.scope.decl(metadata !2611)
  call void @llvm.experimental.noalias.scope.decl(metadata !2614)
  %i.afk = load ptr, ptr %i.aev, align 8, !alias.scope !2617, !noalias !2587, !noundef !4 ; 2 uses
  %i.afl = icmp eq ptr %i.afk, null
  br i1 %i.afl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i, label %bb.jx

bb.jx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry9RetryModeEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.afm = atomicrmw sub ptr %i.afk, i64 1 release, align 8, !noalias !2618
  %i.afn = icmp eq i64 %i.afm, 1
  br i1 %i.afn, label %bb.jy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i

bb.jy:                                            ; preds = %bb.jx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aev) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i unwind label %bb.jv, !noalias !2591

bb.jz:                                            ; preds = %bb.jq
  %.sroa.4187.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.6151.0.copyload.i.i to i8 ; 2 uses
  %.sroa.4187.sroa.0.sroa.4.0.extract.shift.i.i = lshr i32 %.sroa.6151.0.copyload.i.i, 8
  %.sroa.4187.sroa.0.sroa.4.0.extract.trunc.i.i = trunc nuw i32 %.sroa.4187.sroa.0.sroa.4.0.extract.shift.i.i to i24 ; 2 uses
  %i.afo = load i64, ptr %i.fo, align 8, !range !20, !alias.scope !2623, !noalias !2587, !noundef !4
  %i.afp = icmp eq i64 %i.afo, -9223372036854775808
  br i1 %i.afp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry9RetryModeEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry9RetryModeEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.kb, !noalias !2591

bb.kb:                                            ; preds = %bb.ka
  %i.afq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !2587
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionmEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i: ; preds = %bb.jy, %bb.jx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry9RetryModeEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 2984
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.afr)
          to label %bb.kk unwind label %bb.jw, !noalias !2591

bb.kc:                                            ; preds = %bb.ki, %bb.kg, %bb.ke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit44.i.i
  %i.afs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2591
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionmEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.ke, %bb.kd, %bb.kb, %bb.jj, %bb.jh, %bb.jf
  %.pn22.pn.i.i = phi { ptr, i32 } [ %.pn22.ph.i.i, %bb.kd ], [ %i.afq, %bb.kb ], [ %i.aew, %bb.jj ], [ %i.aeu, %bb.jh ], [ %i.aet, %bb.jf ], [ %.pn22.ph.i.i, %bb.ke ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !2587
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit48.i.i

bb.kd:                                            ; preds = %bb.jp, %bb.jn, %bb.jl
  %.pn22.ph.i.i = phi { ptr, i32 } [ %i.afb, %bb.jp ], [ %i.aez, %bb.jl ], [ %i.afa, %bb.jn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !noalias !2587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !2587
  %i.aft = load i64, ptr %i.fs, align 8, !range !20, !alias.scope !2626, !noalias !2587, !noundef !4
  %i.afu = icmp eq i64 %i.aft, -9223372036854775808
  br i1 %i.afu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionmEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionmEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.kc, !noalias !2591

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit48.i.i: ; preds = %bb.ki, %bb.kh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionmEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.jd, %bb.iy
  %.pn22.pn.pn.i.i = phi { ptr, i32 } [ %.pn22.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionmEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.aeq, %bb.jd ], [ %i.aef, %bb.kh ], [ %i.aef, %bb.ki ], [ %i.aef, %bb.iy ] ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 3176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  call void @llvm.experimental.noalias.scope.decl(metadata !2632)
  %i.afw = load ptr, ptr %i.afv, align 8, !alias.scope !2635, !noalias !2587, !noundef !4 ; 2 uses
  %i.afx = icmp eq ptr %i.afw, null
  br i1 %i.afx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit44.i.i, label %bb.kf

bb.kf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit48.i.i
  %i.afy = atomicrmw sub ptr %i.afw, i64 1 release, align 8, !noalias !2636
  %i.afz = icmp eq i64 %i.afy, 1
  br i1 %i.afz, label %bb.kg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit44.i.i

bb.kg:                                            ; preds = %bb.kf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.afv) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit44.i.i unwind label %bb.kc, !noalias !2591

bb.kh:                                            ; preds = %bb.iy
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 3648
  %i.agb = load i8, ptr %i.aga, align 8, !range !102, !noalias !2587, !noundef !4
  %cond.i.i46.i.i = icmp eq i8 %i.agb, 3
  br i1 %cond.i.i46.i.i, label %bb.ki, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit48.i.i

bb.ki:                                            ; preds = %bb.kh
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 3200
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.agc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit48.i.i unwind label %bb.kc, !noalias !2591

bb.kj:                                            ; preds = %bb.iw, %bb.iv
  %i.agd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i335

bb.kk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.sroa.0186.0.i.i = phi i64 [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.0186.1242.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ] ; 3 uses
  %.sroa.9188.0.i.i = phi i32 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.9188.1243.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ] ; 3 uses
  %.sroa.11189.0.i.i = phi i32 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.11189.1244.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ] ; 2 uses
  %.sroa.12190.0.i.i = phi i64 [ 20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.12190.1245.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ] ; 2 uses
  %.sroa.13191.0.i.i = phi i32 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.13191.1246.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ] ; 2 uses
  %.sroa.14192.0.i.i = phi i32 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.14192.1247.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ] ; 2 uses
  %.sroa.15193.0.i.i = phi i32 [ %spec.select.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.15193.1248.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ] ; 2 uses
  %.sroa.16.0.i.i = phi i8 [ %spec.select260.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.16.1249.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ] ; 2 uses
  %.sroa.17194.0.i.i = phi i8 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.17194.1250.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ] ; 2 uses
  %.sroa.18.0.i.i = phi i8 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.18.1251.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ] ; 2 uses
  %.sroa.19195.0.i.i = phi i8 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.19195.1252.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ] ; 2 uses
  %.sroa.4187.sroa.5.0.i.i = phi i32 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.4187.sroa.5.1253.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ]
  %.sroa.4187.sroa.0.sroa.0.0.i.i = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.4187.sroa.0.sroa.0.1254.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ]
  %.sroa.4187.sroa.0.sroa.4.sroa.0.0.i.i = phi i24 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.4187.sroa.0.sroa.4.sroa.0.1255.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit36.i.i ]
  %.sroa.4187.sroa.0.sroa.4.0.insert.ext.i.i = zext i24 %.sroa.4187.sroa.0.sroa.4.sroa.0.0.i.i to i64
  %.sroa.4187.sroa.0.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4187.sroa.0.sroa.4.0.insert.ext.i.i, 8
  %.sroa.4187.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.4187.sroa.0.sroa.0.0.i.i to i64
  %.sroa.4187.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4187.sroa.0.sroa.4.0.insert.shift.i.i, %.sroa.4187.sroa.0.sroa.0.0.insert.ext.i.i
  %.sroa.4187.sroa.5.0.insert.ext.i.i = zext i32 %.sroa.4187.sroa.5.0.i.i to i64
  %.sroa.4187.sroa.5.0.insert.shift.i.i = shl nuw i64 %.sroa.4187.sroa.5.0.insert.ext.i.i, 32
  %.sroa.4187.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4187.sroa.0.sroa.0.0.insert.insert.i.i, %.sroa.4187.sroa.5.0.insert.shift.i.i ; 2 uses
  store i8 1, ptr %i.aeb, align 8, !noalias !2587
  %i.age = icmp eq i64 %.sroa.0186.0.i.i, -9223372036854775807
  br i1 %i.age, label %.thread1047, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_configNtBL_7Builder16try_retry_config0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.aec)
          to label %bb.kn unwind label %bb.km, !noalias !2592

bb.km:                                            ; preds = %bb.kl
  %i.agf = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.kn:                                            ; preds = %bb.kl
  %.not.i338 = icmp eq i64 %.sroa.0186.0.i.i, -9223372036854775808
  br i1 %.not.i338, label %bb.kt, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !noalias !2583
  store i64 %.sroa.0186.0.i.i, ptr %i.ft, align 8, !noalias !2583
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %.sroa.4187.sroa.0.0.insert.insert.i.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !2583
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i32 %.sroa.9188.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !2583
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  store i32 %.sroa.11189.0.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i, align 4, !noalias !2583
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i64 %.sroa.12190.0.i.i, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !2583
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  store i32 %.sroa.13191.0.i.i, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !2583
  %.sroa.2.sroa.6.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 36
  store i32 %.sroa.14192.0.i.i, ptr %.sroa.2.sroa.6.0..sroa.2.0..sroa_idx.sroa_idx.i, align 4, !noalias !2583
  %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  store i32 %.sroa.15193.0.i.i, ptr %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !2583
  %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 44
  store i8 %.sroa.16.0.i.i, ptr %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx.i, align 4, !noalias !2583
  %.sroa.2.sroa.9.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 45
  store i8 %.sroa.17194.0.i.i, ptr %.sroa.2.sroa.9.0..sroa.2.0..sroa_idx.sroa_idx.i, align 1, !noalias !2583
  %.sroa.2.sroa.10.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 46
  store i8 %.sroa.18.0.i.i, ptr %.sroa.2.sroa.10.0..sroa.2.0..sroa_idx.sroa_idx.i, align 2, !noalias !2583
  %.sroa.2.sroa.11.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 47
  store i8 %.sroa.19195.0.i.i, ptr %.sroa.2.sroa.11.0..sroa.2.0..sroa_idx.sroa_idx.i, align 1, !noalias !2583
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core9panicking13panic_displayINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ft) #21
          to label %bb.kq unwind label %bb.kp, !noalias !2592

bb.kp:                                            ; preds = %bb.ko
  %i.agg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ft)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.kr, !noalias !2592

bb.kq:                                            ; preds = %bb.ko
  unreachable

bb.kr:                                            ; preds = %.body.i335, %bb.kp
  %i.agh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2592
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error7display19DisplayErrorContextINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !noalias !2583
  br label %bb.in

.body.i335:                                       ; preds = %bb.kj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_config7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.agi = phi ptr [ %i.adz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_config7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.adh, %bb.kj ]
  %i.agj = phi ptr [ %i.aea, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_config7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.adg, %bb.kj ]
  %i.agk = phi ptr [ %i.aec, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_config7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.adn, %bb.kj ]
  %.pn.i = phi { ptr, i32 } [ %.pn28.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_config7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.agd, %bb.kj ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_configNtBL_7Builder16try_retry_config0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.agk) #22
          to label %bb.in unwind label %bb.kr, !noalias !2592

bb.ks:                                            ; preds = %bb.ip, %bb.io
  %i.agl = landingpad { ptr, i32 }
          cleanup
  br label %.body341

.thread1047:                                      ; preds = %.thread.i, %bb.kk
  store i8 3, ptr %i.adz, align 8, !noalias !2583
  br label %bb.ku

bb.kt:                                            ; preds = %bb.kn
  store i8 1, ptr %i.adz, align 8, !noalias !2583
  %i.agm = icmp eq i32 %.sroa.9188.0.i.i, 1000000000
  br i1 %i.agm, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %.thread1047, %bb.kt
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0833)
  br label %common.ret

bb.kv:                                            ; preds = %bb.kt
  %i.agn = getelementptr inbounds nuw i8, ptr %1, i64 1880
  store i64 %.sroa.4187.sroa.0.0.insert.insert.i.i, ptr %i.agn, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1888
  store i32 %.sroa.9188.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1892
  store i32 %.sroa.11189.0.i.i, ptr %.sroa.5840.0..sroa_idx, align 4
  %.sroa.6841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1896
  store i64 %.sroa.12190.0.i.i, ptr %.sroa.6841.0..sroa_idx, align 8
  %.sroa.7842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1904
  store i32 %.sroa.13191.0.i.i, ptr %.sroa.7842.0..sroa_idx, align 8
  %.sroa.8843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1908
  store i32 %.sroa.14192.0.i.i, ptr %.sroa.8843.0..sroa_idx, align 4
  %.sroa.9844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1912
  store i32 %.sroa.15193.0.i.i, ptr %.sroa.9844.0..sroa_idx, align 8
  %.sroa.10845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1916
  store i8 %.sroa.16.0.i.i, ptr %.sroa.10845.0..sroa_idx, align 4
  %.sroa.11846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1917
  store i8 %.sroa.17194.0.i.i, ptr %.sroa.11846.0..sroa_idx, align 1
  %.sroa.12847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1918
  store i8 %.sroa.18.0.i.i, ptr %.sroa.12847.0..sroa_idx, align 2
  %.sroa.13848.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1919
  store i8 %.sroa.19195.0.i.i, ptr %.sroa.13848.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0833)
  br label %bb.kw

bb.kw:                                            ; preds = %bb.id, %bb.kv
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  %.val247 = load i64, ptr %i.ago, align 8, !range !6, !noundef !4
  %.not1134 = icmp eq i64 %.val247, -9223372036854775807
  br i1 %.not1134, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0852)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iv)
  invoke void @_RNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_name16default_provider(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.iv)
          to label %bb.la unwind label %bb.kz

bb.ky:                                            ; preds = %bb.kw
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 2569
  store i8 0, ptr %i.agp, align 1
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 2572
  store i8 1, ptr %i.agq, align 4
  %i.agr = getelementptr inbounds nuw i8, ptr %1, i64 1920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agr, ptr noundef nonnull align 8 dereferenceable(24) %i.ago, i64 24, i1 false)
  br label %bb.pb

bb.kz:                                            ; preds = %bb.kx
  %i.ags = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw)
  br label %bb.lc

bb.la:                                            ; preds = %bb.kx
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 1688
  invoke void @_RNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtB2_7Builder9configure(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.iw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.agt)
          to label %.thread1281 unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.agu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw)
  br label %bb.lc

.thread1281:                                      ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.0852, ptr noundef nonnull align 8 dereferenceable(192) %i.iw, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw)
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 2600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.agv, ptr noundef nonnull align 8 dereferenceable(392) %.sroa.0852, i64 392, i1 false)
  %.sroa.7853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2992
  store i8 0, ptr %.sroa.7853.0..sroa_idx, align 8
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 2600
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.4.i)
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 2992
  br label %bb.lf

bb.lc:                                            ; preds = %.body379, %bb.oz, %bb.lb, %bb.kz
  %.pn91 = phi { ptr, i32 } [ %i.aov, %bb.oz ], [ %.pn89, %.body379 ], [ %i.agu, %bb.lb ], [ %i.ags, %bb.kz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0852)
  br label %bb.pc

.body341:                                         ; preds = %bb.ks, %bb.in
  %i.agy = phi ptr [ %i.adm, %bb.in ], [ %i.adg, %bb.ks ]
  %.pn81 = phi { ptr, i32 } [ %.pn6.i336, %bb.in ], [ %i.agl, %bb.ks ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider12retry_configNtBL_7Builder12retry_config0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.agy) #22
          to label %bb.ii unwind label %bb.bk

bb.ld:                                            ; preds = %bb.pc, %bb.ii
  %.pn187.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn187.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.pc ], [ %.pn83, %bb.ii ]
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 1688
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(192) %i.agz) #22
end_hunk_0
